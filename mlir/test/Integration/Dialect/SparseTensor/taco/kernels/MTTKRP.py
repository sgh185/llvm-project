# RUN: python3 codegen.py --kernel MTTKRP --inps 32 128 128 128
# Can substitute dimensions

from typing import Tuple, List

from tools import mlir_pytaco_api as pt

def MTTKRP(A1: int, B0: int, B1: int, B2: int) -> List[Tuple['Tensor', str]]:
    # Set up matrices (@A0, @B0, @B1, @B2 are all dimensions)
    B = pt.tensor([B0, B1, B2], pt.csf)
    C = pt.tensor([B.shape[1], A1], pt.dm)
    D = pt.tensor([B.shape[2], A1], pt.dm)
    A = pt.tensor([B.shape[0], A1], pt.dm)

    # Declare index variables
    i, j, k, l = pt.get_index_vars(4)

    # Define computation and compile
    A[i, j] = B[i, k, l] * D[l, j] * C[k, j]

    # Return the tensor assignments to compile
    return [(A, 'A')]