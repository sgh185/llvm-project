#!/usr/bin/env -S bash -x

# Run all kernels and dump output files into "./output"
#
# NOTE: Reduce2D and InnerProd require --par-strategy='none'
# Check kernels for details.
#
# TODO: Simplify

python3 codegen.py --v --kernel SpMVMul --inps 16 32
python3 codegen.py --v --kernel SpMSpMAdd --inps 128 256
python3 codegen.py --v --kernel SpMSpMMul --inps 128 128 128
python3 codegen.py --v --kernel MTTKRP --inps 32 128 128 128
python3 codegen.py --v --kernel SpTVMul --inps 16 32 64
python3 codegen.py --v --kernel SpTMMul --inps 16 32 64 64
python3 codegen.py --v --kernel Reduce1D --inps 128
python3 codegen.py --v --kernel Reduce2D --inps 128 128 --par-strategy='none'
python3 codegen.py --v --kernel InnerProd --inps 128 128 128 --par-strategy='none'



