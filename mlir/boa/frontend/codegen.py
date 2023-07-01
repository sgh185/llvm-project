# 
# codegen.py
#
# Code generation for Boa frontend. Takes Python AST 
# as input and emits high-level MLIR.
#

import os
import sys
import ast

# Add Boa to path
sys.path.append(os.path.dirname(os.path.abspath(__file__)))

import utils
from utils import settings

def emit(tree: ast.Interactive):
    return