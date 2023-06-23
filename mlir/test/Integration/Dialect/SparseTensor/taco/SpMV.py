# RUN: python3 codegen.py --kernel SpMV --inps 16 32
# Substitute '16' and '32' for any matrix dimensions

from typing import Tuple, List

from tools import mlir_pytaco_api as pt

def SpMV(rows: int, cols: int) -> List[Tuple['Tensor', str]]:
    # Set up matrix and vectors
    M = pt.tensor([rows, cols], pt.csr)
    v = pt.tensor([M.shape[1]], pt.dv)
    z = pt.tensor([M.shape[0]], pt.dv)

    # Declare index variables
    i, j = pt.get_index_vars(2)

    # Define computation and compile
    z[i] = M[i, j] * v[j]

    # Return the tensor assignments to compile
    return [(z, 'z')]