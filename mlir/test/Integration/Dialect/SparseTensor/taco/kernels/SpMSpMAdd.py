# RUN: python3 codegen.py --kernel SpMSpMAdd --inps 128 256
# Can substitute dimensions

from typing import Tuple, List

from tools import mlir_pytaco_api as pt

def SpMSpMAdd(rows: int, cols: int) -> List[Tuple['Tensor', str]]:
    # Set up matrices
    A = pt.tensor([rows, cols], pt.csr)
    B = pt.tensor([rows, cols], pt.csr)
    Z = pt.tensor([rows, cols], pt.dm)

    # Declare index variables
    i, j = pt.get_index_vars(2)

    # Define computation and compile
    Z[i, j] = A[i, j] + B[i, j]

    # Return the tensor assignments to compile
    return [(Z, 'Z')]