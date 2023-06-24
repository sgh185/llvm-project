# Custom Sparse Tensor Compilation from PyTACO

This branch features a few modifications to the MLIR sparse tensor compiler (```sparse-compiler```) and the PyTACO frontend to support **separate compilation** of PyTACO code, **configurable MLIR-to-LLVM pipelines** and lowering steps, and **OpenMP parallelization**.

Also see the reference papers, talks, and slides at the bottom for other details.

**TODO**: Add inline cites/footnotes.

## Installation

### Prerequisites

To build the modified compiler and run sparse kernels, you should have:
- ```cmake``` : 3.20+
- ```ninja``` : 1.08+
- ```python``` : 3.7+
- ```clang``` and ```clang++``` : 10.0.0+

### Steps

From the top-level directory, run:
``` bash
source ENV ;
./install.sh ;
```

**TODO**: Build a Docker image instead of this setup.

### Directory Structure

The ```MLIR_LLVM_DIR``` and ```TACO``` environment variables (set earlier) is enough to navigate around.

All PyTACO-related files are in ```${TACO}```. Kernels are located in ```${TACO}/kernels```. The primary code generation script is ```${TACO}/codegen.py```. The modified PyTACO frontend is in ```${TACO}/tools```.

The MLIR sparse tensor compiler source code is in ```${MLIR_LLVM_DIR}/mlir/lib```.

## Compiling Sparse Kernels

### TL;DR

To compile all sparse kernels, run:
```bash
cd ${TACO} ;
./run_kernels.sh ;
```
The output of ```run_kernels.sh``` describes the compilation steps for each kernel. All output files are located in ```${TACO}/output/```.

To compile a specific kernel (e.g. SpMVMul, defined in ```${TACO}/kernels/SpMVMul.py```), invoke ```codegen.py``` directly with the kernel name and inputs corresponding to its definition. For instance:

```bash
python3 codegen.py --kernel SpMVMul --inps 128 128 --v
```

### Sparse Kernels

To get an idea of what a sparse kernel might look like, let's take a look at SpMVMul (sparse matrix-vector multiplication ; ```${TACO}/kernels/SpMVMul.py```).

```python
from tools import mlir_pytaco_api as pt

def SpMVMul(rows: int, cols: int) -> List[Tuple['Tensor', str]]:
    # Set up matrix and vectors. Each tensor is 
    # instantiated with a storage format (e.g. 
    # pt.csr) ; see the API in ${TACO}/tools.
    M = pt.tensor([rows, cols], pt.csr)
    v = pt.tensor([M.shape[1]], pt.dv)
    z = pt.tensor([M.shape[0]], pt.dv)

    # Declare index variables
    i, j = pt.get_index_vars(2)
    
    # Define computation and compile
    z[i] = M[i, j] * v[j]

    # Return the tensor assignments to compile
    return [(z, 'z')]
```

PyTACO directly uses tensor index notation as its primary language feature. Here, the tensor assignemnt to ```z``` represents the entire SpMVMul kernel.

Unlike many tests in PyTACO's suite, the kernels in ```${TACO}/kernels``` do not use PyTACO's I/O API or other features (e.g. JIT). We focus on separate compilation (more on this soon), so it is unnecessary to specify input tensors, dimensions as literals, or output files. Instead, the tensor to compile is simply returned (```z```).

There are 9 kernels added so far (see their [definitions as tensor index notation](https://weiya711.github.io/publications/asplos2023-sam.pdf) on page 10):
1. SpMVMul (i.e. SpMV)
2. SpMSpMAdd (i.e. MMAdd)
3. SpMSpMMul (i.e. SpMSpM)
4. MTTKRP
5. SpTVMul (i.e. TTV)
6. SpTMMul (i.e. TTM)
7. Reduce1D
8. Reduce2D
9. InnerProd

### Separate Compilation

The mainline PyTACO frontend compiles code to MLIR functions as a JIT ; it invokes the built-in execution engine. In this branch, the PyTACO frontend is extended to simply emit the high-level MLIR (in ```linalg```, ```sparse_tensor```, etc.) to a file for each tensor assignment in a kernel. The execution engine is not invoked. 

Separate compilation allows us to invoke pipelines other than ```sparse-compiler``` (e.g. with OpenMP), add specifically configured parallelization options, and debug at each lowering step.

### Code Generation

The primary code generation script is ```${TACO}/codegen.py```. It simply combines several compilation steps: 
1. PyTACO frontend compilation to high-level MLIR.
2. Lowering and parallelization to the ```llvm``` dialect via compiler options and the ```omp``` (OpenMP) dialect.
3. Translation from the ```llvm``` dialect to LLVM-IR.

By default, all output files will reside in ```${TACO}/output```.

```codegen.py``` can be invoked as:
```bash
python3 codegen.py [-h] --kernel KERNEL --inps [INPS [INPS ...]]
```
```kernel``` and ```inps``` correspond to the function name and arguments of the function that defines the kernel.

As an example (with compilation steps shown):
```bash
@user:~/taco$ python3 codegen.py --kernel SpMVMul --inps 128 128 --v
================================
SpMVMul
================================
[DEBUG]: Found kernel in [./kernels/SpMVMul.py].
[DEBUG]: Generating tensor assignments ...
[DEBUG]: DONE.
[DEBUG]: Generating MLIR for [z] to @SpMVMul.z.0.main ...
[DEBUG]: Outputting @SpMVMul.z.0.main to ./output/SpMVMul.z.0.mlir ...
[DEBUG]: DONE.
[CMD]: Lowering ./output/SpMVMul.z.0.mlir:
mlir-opt -sparse-compiler="parallelization-strategy=any-storage-any-loop enable-runtime-library=false enable-openmp " -mlir-print-ir-after-all ./output/SpMVMul.z.0.mlir -o ./output/SpMVMul.z.0.lowered.mlir
[DEBUG]: DONE.
[CMD]: Lowering ./output/SpMVMul.z.0.lowered.ll to LLVM:
mlir-translate -mlir-to-llvmir ./output/SpMVMul.z.0.lowered.mlir -o ./output/SpMVMul.z.0.lowered.ll
[DEBUG]: DONE.
================================
```

Four output files are generated for each tensor assignment in each kernel: 
1. The high-level MLIR (```.mlir```)
2. The lowered MLIR (```.lowered.mlir```)
3. The lowering steps (```.lowering.out```)
4. The LLVM-IR (```.ll```)

As an example, here's the high-level MLIR for SpMVMul:
```llvm
#map = affine_map<(d0, d1) -> (d0, d1)>
#map1 = affine_map<(d0, d1) -> (d1)>
#map2 = affine_map<(d0, d1) -> (d0)>
module {
  func.func @SpMVMul.z.0.main(%arg0: tensor<128x128xf32, #sparse_tensor.encoding<{ lvlTypes = [ "dense", "compressed" ] }>>, %arg1: tensor<128xf32, #sparse_tensor.encoding<{ lvlTypes = [ "dense" ] }>>) -> tensor<128xf32, #sparse_tensor.encoding<{ lvlTypes = [ "dense" ] }>> attributes {llvm.emit_c_interface} {
    %0 = bufferization.alloc_tensor() : tensor<128xf32, #sparse_tensor.encoding<{ lvlTypes = [ "dense" ] }>>
    %1 = linalg.generic {indexing_maps = [#map, #map1, #map2], iterator_types = ["parallel", "reduction"]} ins(%arg0, %arg1 : tensor<128x128xf32, #sparse_tensor.encoding<{ lvlTypes = [ "dense", "compressed" ] }>>, tensor<128xf32, #sparse_tensor.encoding<{ lvlTypes = [ "dense" ] }>>) outs(%0 : tensor<128xf32, #sparse_tensor.encoding<{ lvlTypes = [ "dense" ] }>>) {
    ^bb0(%in: f32, %in_0: f32, %out: f32):
      %2 = arith.mulf %in, %in_0 : f32
      %3 = arith.addf %out, %2 : f32
      linalg.yield %3 : f32
    } -> tensor<128xf32, #sparse_tensor.encoding<{ lvlTypes = [ "dense" ] }>>
    return %1 : tensor<128xf32, #sparse_tensor.encoding<{ lvlTypes = [ "dense" ] }>>
  }
}
```

This is compiled with OpenMP support, generating code in the ```llvm``` and ```omp``` dialects, such as this snippet:
```llvm
  ^bb3:  // pred: ^bb1
    %51 = llvm.insertvalue %29, %46[1, 0] : !llvm.struct<(array<1 x i64>, array<1 x i64>)> 
    omp.parallel   {
      %55 = llvm.alloca %33 x f32 : (i64) -> !llvm.ptr
      omp.wsloop   for  (%arg22) : i64 = (%32) to (%31) step (%30) {
        %56 = llvm.getelementptr %37[%arg22] : (!llvm.ptr, i64) -> !llvm.ptr, f32
        %57 = llvm.load %56 : !llvm.ptr -> f32
        %58 = llvm.extractvalue %5[1] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
        %59 = llvm.getelementptr %58[%arg22] : (!llvm.ptr, i64) -> !llvm.ptr, i64
        %60 = llvm.load %59 : !llvm.ptr -> i64
        %61 = llvm.add %arg22, %30  : i64
        %62 = llvm.extractvalue %5[1] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
        %63 = llvm.getelementptr %62[%61] : (!llvm.ptr, i64) -> !llvm.ptr, i64
        %64 = llvm.load %63 : !llvm.ptr -> i64
        llvm.store %57, %55 : f32, !llvm.ptr
        omp.parallel   {
          omp.wsloop   reduction(@__scf_reduction -> %55 : !llvm.ptr) for  (%arg23) : i64 = (%60) to (%64) step (%30) {
            %67 = llvm.intr.stacksave : !llvm.ptr
            llvm.br ^bb1
          ^bb1:  // pred: ^bb0
            %68 = llvm.extractvalue %11[1] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
            %69 = llvm.getelementptr %68[%arg23] : (!llvm.ptr, i64) -> !llvm.ptr, i64
            %70 = llvm.load %69 : !llvm.ptr -> i64
            %71 = llvm.extractvalue %17[1] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
            %72 = llvm.getelementptr %71[%arg23] : (!llvm.ptr, i64) -> !llvm.ptr, f32
            %73 = llvm.load %72 : !llvm.ptr -> f32
            %74 = llvm.extractvalue %23[1] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
            %75 = llvm.getelementptr %74[%70] : (!llvm.ptr, i64) -> !llvm.ptr, f32
            %76 = llvm.load %75 : !llvm.ptr -> f32
            %77 = llvm.fmul %73, %76  : f32
            omp.reduction %77, %55 : f32, !llvm.ptr
            llvm.intr.stackrestore %67 : !llvm.ptr
            llvm.br ^bb2
          ^bb2:  // pred: ^bb1
            omp.yield
          }
          omp.terminator
        }
        %65 = llvm.load %55 : !llvm.ptr -> f32
        %66 = llvm.getelementptr %37[%arg22] : (!llvm.ptr, i64) -> !llvm.ptr, f32
        llvm.store %65, %66 : f32, !llvm.ptr
        omp.yield
      }
      omp.terminator
    }
```

**No runtime calls or intrinsics are generated other than those relavant to OpenMP**. This should streamline compilation flows through an HLS backend or library-targeting backend. The ```enable-runtime-library=false``` option accomplishes this.

## Next Steps and Potential Issues

### ```sparse-compiler``` Parallelization Strategies
The ```sparse-compiler``` provides several configurable parallelization strategies, but we have not studied these extensively yet. Currently, ```parallelization-strategy='any-storage-any-loop'``` enables the highest degree of paralellelism across all loops for both dense and compressed level-types. There are several other parallelization strategies (see ```mlir-opt --help```) that may be a better match for a specific kernel; we haven't explored this yet. 

MLIR-supported parallelization is sometimes not applicable to certain kernels at all. From testing, we've realized that MLIR doesn't support nested reductions [on purpose](https://github.com/llvm/llvm-project/blob/c0f0d50653e16145beee474a3d0d602596502dde/mlir/lib/Dialect/SparseTensor/Transforms/LoopEmitter.cpp#L1345) in ```scf.parallel``` loop nests, which is a precursor to OpenMP parallelization via the ```omp``` dialect. This disables parallelization completely for Reduce2D and InnerProd.

These kernels should be compatible with ```scf.forall``` instead, but we have not found support for this alternative parallelization approach. Other strategies should also be investigated. 

### Sparse Formats
Code generation and lowering depends on the sparse formats chosen. Sparse tensor formats are chosen (relatively) arbitrarily, and we often opt for common formats like CSR and CSF. We should investigate formats that may generate more performant code.

## Resources
1. TACO (PLDI '17) : https://fredrikbk.com/publications/taco.pdf
2. MLIR-PyTACO (Developers Meeting '22): https://mlir.llvm.org/OpenMeetings/2022-02-10-PyTACO.pdf
3. PyTACO documentation: http://tensor-compiler.org/docs/pytensors.html
4. The Sparse Abstract Machine (ASPLOS '23): https://weiya711.github.io/publications/asplos2023-sam.pdf
5. Currently added sparse kernels: https://github.com/sgh185/llvm-project/tree/sparse/mlir/test/Integration/Dialect/SparseTensor/taco/kernels
