#!/usr/bin/env -S bash -x

# Installs MLIR w/ python bindings + execution engine

cd ${MLIR_LLVM_DIR} ;
git checkout sparse ;
mkdir -p ${MLIR_LLVM_DIR}/build ;
cd ${MLIR_LLVM_DIR}/build ;

cmake -G Ninja ../llvm \
    -DLLVM_ENABLE_PROJECTS="mlir" \
    -DLLVM_ENABLE_RUNTIMES=openmp \
    -DLLVM_BUILD_EXAMPLES=ON \
    -DLLVM_TARGETS_TO_BUILD="Native;NVPTX;AMDGPU" \
    -DCMAKE_BUILD_TYPE=Release \
    -DLLVM_ENABLE_ASSERTIONS=ON \
    -DCMAKE_C_COMPILER=clang \
    -DCMAKE_CXX_COMPILER=clang++ \
    -DLLVM_ENABLE_LLD=ON \
    -DMLIR_ENABLE_BINDINGS_PYTHON=ON \
    -DPython3_EXECUTABLE=${PYTHON3_PATH} \
    -DMLIR_ENABLE_EXECUTION_ENGINE=ON \
    -DMLIR_ENABLE_PYTHON_BENCHMARKS=ON ;

cmake --build . --target check-mlir ;
