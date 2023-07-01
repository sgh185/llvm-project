#
# boa.py
#
# Top level driver for Boa frontend. Takes Python code as 
# input, parses the Python AST, and generates high-level MLIR.
#

import os
import sys
import argparse
import ast

# Add Boa to path
sys.path.append(os.path.dirname(os.path.abspath(__file__)))

import utils
from utils import settings

import codegen

def main(args):
    # Step 1: Load python code from file
    source = args.input[0]
    with open(source, 'r') as file:
        code = file.read().rstrip()    

    # Step 2: Parse python code into AST
    tree: ast.Interactive = ast.parse(code, source)
    utils.debug(ast.dump(tree))

    # Step 3: Generate high-level MLIR
    codegen.emit(tree)

    return


# ==============================================


if __name__ == '__main__':
    parser = argparse.ArgumentParser(description='Boa frontend.')
    parser.add_argument(
        'input', 
        metavar='input', 
        type=str, 
        nargs='+',
        help='input file(s)'
    )
    parser.add_argument(
        '--debug',
        action='store_true',
        help='Enable debugging'
    )
    args = parser.parse_args()

    # Set debugging flag
    settings.DEBUG = args.debug
    
    main(args)

