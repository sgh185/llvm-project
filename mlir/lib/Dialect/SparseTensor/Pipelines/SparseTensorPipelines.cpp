//===- SparseTensorPipelines.cpp - Pipelines for sparse tensor code -------===//
//
// Part of the LLVM Project, under the Apache License v2.0 with LLVM Exceptions.
// See https://llvm.org/LICENSE.txt for license information.
// SPDX-License-Identifier: Apache-2.0 WITH LLVM-exception
//
//===----------------------------------------------------------------------===//

#include "mlir/Dialect/SparseTensor/Pipelines/Passes.h"

#include "mlir/Conversion/GPUToNVVM/GPUToNVVMPass.h"
#include "mlir/Conversion/SCFToOpenMP/SCFToOpenMP.h"
#include "mlir/Conversion/Passes.h"
#include "mlir/Dialect/Arith/Transforms/Passes.h"
#include "mlir/Dialect/Bufferization/Transforms/Bufferize.h"
#include "mlir/Dialect/Bufferization/Transforms/OneShotAnalysis.h"
#include "mlir/Dialect/Bufferization/Transforms/Passes.h"
#include "mlir/Dialect/Func/IR/FuncOps.h"
#include "mlir/Dialect/GPU/IR/GPUDialect.h"
#include "mlir/Dialect/GPU/Transforms/Passes.h"
#include "mlir/Dialect/LLVMIR/NVVMDialect.h"
#include "mlir/Dialect/Linalg/Passes.h"
#include "mlir/Dialect/MemRef/Transforms/Passes.h"
#include "mlir/Dialect/SparseTensor/IR/SparseTensor.h"
#include "mlir/Dialect/SparseTensor/Transforms/Passes.h"
#include "mlir/Pass/PassManager.h"
#include "mlir/Transforms/Passes.h"

using namespace mlir;
using namespace mlir::sparse_tensor;

/// Return configuration options for One-Shot Bufferize.
static bufferization::OneShotBufferizationOptions
getBufferizationOptions(bool analysisOnly) {
  using namespace bufferization;
  OneShotBufferizationOptions options;
  options.bufferizeFunctionBoundaries = true;
  // TODO(springerm): To spot memory leaks more easily, returning dense allocs
  // should be disallowed.
  options.allowReturnAllocs = true;
  options.setFunctionBoundaryTypeConversion(LayoutMapOption::IdentityLayoutMap);
  options.unknownTypeConverterFn = [](Value value, Attribute memorySpace,
                                      const BufferizationOptions &options) {
    return getMemRefTypeWithStaticIdentityLayout(
        cast<TensorType>(value.getType()), memorySpace);
  };
  if (analysisOnly) {
    options.testAnalysisOnly = true;
    options.printConflicts = true;
  }
  return options;
}

//===----------------------------------------------------------------------===//
// Pipeline implementation.
//===----------------------------------------------------------------------===//

void mlir::sparse_tensor::buildSparseCompiler(
    OpPassManager &pm, const SparseCompilerOptions &options) {
  pm.addNestedPass<func::FuncOp>(createLinalgGeneralizationPass());
  pm.addPass(createSparsificationAndBufferizationPass(
      getBufferizationOptions(options.testBufferizationAnalysisOnly),
      options.sparsificationOptions(), options.sparseTensorConversionOptions(),
      options.createSparseDeallocs, options.enableRuntimeLibrary,
      options.enableBufferInitialization, options.vectorLength,
      /*enableVLAVectorization=*/options.armSVE,
      /*enableSIMDIndex32=*/options.force32BitVectorIndices,
      options.enableITPrints));
  if (options.testBufferizationAnalysisOnly)
    return;
  pm.addNestedPass<func::FuncOp>(createCanonicalizerPass());
  pm.addNestedPass<func::FuncOp>(
      mlir::bufferization::createFinalizingBufferizePass());

  // GPU code generation.
  const bool gpuCodegen = options.gpuTriple.hasValue();
  if (gpuCodegen) {
    pm.addPass(createSparseGPUCodegenPass());
    pm.addNestedPass<gpu::GPUModuleOp>(createStripDebugInfoPass());
    pm.addNestedPass<gpu::GPUModuleOp>(createConvertSCFToCFPass());
    pm.addNestedPass<gpu::GPUModuleOp>(createLowerGpuOpsToNVVMOpsPass());
  }

  // TODO(springerm): Add sparse support to the BufferDeallocation pass and add
  // it to this pipeline.
  pm.addNestedPass<func::FuncOp>(createConvertLinalgToLoopsPass());
  pm.addNestedPass<func::FuncOp>(createConvertVectorToSCFPass());

  /*
   * NEW -> Adding OpenMP lowering *before* the rest of the SCF-to passes
   * to capture scf.parallel, scf.reduce, etc. before they're lost to the
   * CF and LLVM dialects.
   */
  if (options.enableOpenMP) {
    pm.addPass(createConvertSCFToOpenMPPass());
    pm.addNestedPass<func::FuncOp>(createCanonicalizerPass()); 
  }

  pm.addNestedPass<func::FuncOp>(createConvertSCFToCFPass());
  pm.addPass(memref::createExpandStridedMetadataPass());
  pm.addPass(createLowerAffinePass());
  
  pm.addPass(createConvertVectorToLLVMPass(options.lowerVectorToLLVMOptions()));
  pm.addPass(createFinalizeMemRefToLLVMConversionPass());
  pm.addNestedPass<func::FuncOp>(createConvertComplexToStandardPass());
  pm.addNestedPass<func::FuncOp>(arith::createArithExpandOpsPass());
  pm.addNestedPass<func::FuncOp>(createConvertMathToLLVMPass());
  pm.addPass(createConvertMathToLibmPass());
  pm.addPass(createConvertComplexToLibmPass());

  // Repeat convert-vector-to-llvm.
  pm.addPass(createConvertVectorToLLVMPass(options.lowerVectorToLLVMOptions()));
  pm.addPass(createConvertComplexToLLVMPass());
  pm.addPass(createConvertVectorToLLVMPass(options.lowerVectorToLLVMOptions()));

  /*
   * NEW -> Adding OpenMP lowering *after* the rest of the to-LLVM passes
   * so that all other dialects are not treated as "illegal" by the OpenMP
   * conversion pass. TODO: Confirm.
   */
  if (options.enableOpenMP) {
    pm.addPass(createConvertOpenMPToLLVMPass());
  }

  /*
   * NEW -> Experimental option disables convert-func-to-llvm
   */
  if (!options.experimentalPipeline) {
    /*
     * ** If we want to target runtime calls (e.g. -sparse-tensor-conversion): **
     *
     * -convert-func-to-llvm generates calls to _mi_ciface_* external
     * functions, presumably matching a naming convention of runtime
     * functions to be invoked via shared library objects (e.g. the 
     * c_runner_utils). Function conversion takes a rewriter.
     * 
     * -sparse-compiler="enable-openmp" also internally calls 
     * the driver for convert-func-to-llvm when lowering OpenMP to LLVM
     * (see above in the pipeline).
     * 
     * The fact that function conversion takes a rewriter is a *good sign.*
     * Could possibly pass another rewriter to lower to different library
     * calls or piggy-back on what's already available.
     */
    pm.addPass(createConvertFuncToLLVMPass()); // Originally part of the pipeline, default: ON
  }

  // Finalize GPU code generation.
  if (gpuCodegen) {
#if MLIR_GPU_TO_CUBIN_PASS_ENABLE
    pm.addNestedPass<gpu::GPUModuleOp>(createGpuSerializeToCubinPass(
        options.gpuTriple, options.gpuChip, options.gpuFeatures));
#endif
    pm.addPass(createGpuToLLVMConversionPass());
  }

  pm.addPass(createReconcileUnrealizedCastsPass());
}

//===----------------------------------------------------------------------===//
// Pipeline registration.
//===----------------------------------------------------------------------===//

void mlir::sparse_tensor::registerSparseTensorPipelines() {
  PassPipelineRegistration<SparseCompilerOptions>(
      "sparse-compiler",
      "The standard pipeline for taking sparsity-agnostic IR using the"
      " sparse-tensor type, and lowering it to LLVM IR with concrete"
      " representations and algorithms for sparse tensors.",
      buildSparseCompiler);
}
