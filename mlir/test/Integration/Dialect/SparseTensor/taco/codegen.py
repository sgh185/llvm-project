import sys
import os

_SCRIPT_PATH = os.path.dirname(os.path.abspath(__file__))
sys.path.append(_SCRIPT_PATH)

from typing import List

OUTPUT_DIR = './output'
KERNELS_DIR = './kernels'

DEBUG="[DEBUG]:"
ERROR="[ERROR]:"
COMMAND="[CMD]:"

OPT = 'mlir-opt'
OPT_FLAGS = '-sparse-compiler="parallelization-strategy='
DEFAULT_PAR = 'any-storage-any-loop'
DEFAULT_RUNTIME = 'enable-runtime-library=false'
DEFAULT_OMP = 'enable-openmp'
DEFAULT_DUMP = '-mlir-print-ir-after-all'
DEFAULT_EXTRA = ''

TRANSLATE = 'mlir-translate'
TRANSLATE_FLAGS = '-mlir-to-llvmir'

import argparse
import importlib
import subprocess


def pytaco_to_mlir(args) -> List[str]:
    # Returns a list of function prefixes generated per tensor.
    # E.g. ['SpMV.z.0']

    # Fetch the python function based on the kernel
    try:
        kernel_module = importlib.import_module(args.kernel)
        kernel = getattr(kernel_module, args.kernel)
        assert kernel , f"{ERROR} Can't find {args.kernel}!"
    except:
        assert False, f"{ERROR} Can't find {args.kernel}!!"

    if args.v: print(DEBUG, f'Found kernel in [{KERNELS_DIR}/{args.kernel}.py].')

    # Generate output directory, if necessary
    if not os.path.exists(OUTPUT_DIR):
        if args.v: print(DEBUG, f'mkdir {OUTPUT_DIR}') 
        os.makedirs(OUTPUT_DIR)

    # Process the kernel and fetch the tensor assignments to compile
    if args.v: print(DEBUG, 'Generating tensor assignments ...')
    tensor_assignments = kernel(*args.inps)
    if args.v: print(DEBUG, 'DONE.')

    # For each tensor assignment, generate a MLIR function and 
    # write it to a .mlir file.
    #
    # Function names will be formatted as: '@KERNEL.TENSOR.ID.main'
    # For example: 'SpMV.z.0.main'
    #
    # Output MLIR files will be similarly named: 'OUTPUT_DIR/KERNEL.TENSOR.ID.mlir'
    # For example: ./output/SpMV.z.0.mlir
    assignment_num = 0
    prefixes = []
    for ta, tensor_name in tensor_assignments:
        # Set up prefix
        function_prefix = f'{args.kernel}.{tensor_name}.{assignment_num}'
        prefixes.append(function_prefix)
        if args.v: print(DEBUG, f'Generating MLIR for [{tensor_name}] to @{function_prefix}.main ...')

        # MLIR codegen
        if args.density: mlir_function = ta.emit_mlir(prefix=function_prefix, generate_inputs=True, density=args.density)
        else: mlir_function = ta.emit_mlir(prefix=function_prefix, generate_inputs=args.gen_inputs)
        assignment_num += 1

        # Write to a file
        with open(f'{OUTPUT_DIR}/{function_prefix}.mlir', 'w') as file:
            if args.v: print(DEBUG, f'Outputting @{function_prefix}.main to {OUTPUT_DIR}/{function_prefix}.mlir ...')
            file.write(f'{mlir_function}\n')
        
        if args.v: print(DEBUG, "DONE.")

    return prefixes


def lower_mlir(args, prefixes: List[str]) -> None:
    # Walk through @prefixes and invoke mlir-opt for each
    # .mlir file corresponding to each prefix
    for prefix in prefixes:
        # Sanity check
        mlir_file = f'{OUTPUT_DIR}/{prefix}.mlir'
        assert os.path.isfile(mlir_file) , f"{ERROR} Can't find {mlir_file}!!"

        # Set up file names
        lowered_mlir = f'{OUTPUT_DIR}/{prefix}.lowered.mlir'
        lowered_ll = f'{OUTPUT_DIR}/{prefix}.lowered.ll'

        # Fetch configurations from @args
        par = DEFAULT_PAR if args.par_strategy is None else args.par_strategy
        runtime = DEFAULT_RUNTIME if not args.target_runtime else ''
        omp = DEFAULT_OMP if not args.disable_omp else ''
        dump = DEFAULT_DUMP if not args.disable_dump else ''
        extra = DEFAULT_EXTRA if args.extra is None else args.extra

        # Build mlir-opt command
        dump_fname = f'{OUTPUT_DIR}/{prefix}.lowering.out'
        cmd = f'{OPT} {OPT_FLAGS}{par} {runtime} {omp} {extra}" {dump} {mlir_file} -o {lowered_mlir}'
        print(COMMAND, f"Lowering {mlir_file}:\n{cmd}")

        # Run the command
        dump_file = open(dump_fname, 'w')
        process = subprocess.Popen(cmd, shell=True, stdout=dump_file, stderr=dump_file)
        process.wait()
        dump_file.close()
        if args.v: print(DEBUG, "DONE.")

        # Build mlir-translate command
        cmd = f'{TRANSLATE} {TRANSLATE_FLAGS} {lowered_mlir} -o {lowered_ll}'
        print(COMMAND, f"Lowering {lowered_ll} to LLVM:\n{cmd}")
        process = subprocess.Popen(cmd, shell=True)
        process.wait()
        if args.v: print(DEBUG, "DONE.")

    return


def main(args):
    print(f"================================\n{args.kernel}\n================================")

    # Generate high-level MLIR from PyTaco kernel
    tensor_prefixes = pytaco_to_mlir(args)

    # Lower MLIR to the LLVM dialect
    lower_mlir(args, tensor_prefixes)

    print("================================\n")
    return

if __name__ == "__main__":
    # Invoke the script as:
    # python3 mlir_codegen.py --kernel NAME --inps INT ...
    #
    # Example: python3 mlir_codegen.py --kernel SpMV --inps 16 32
    # This invokes the SpMV PyTaco kernel in SpMV.py and passes
    # inputs 16 and 32 (i.e. matrix dimensions) to the kernel.
    argparser = argparse.ArgumentParser()
    argparser.add_argument(
        '--kernel',
        type=str,
        help='[Required] Name of the kernel ; should be in a file of the same name',
        required=True)
    argparser.add_argument(
        '--inps',
        type=int,
        nargs='*',
        help='[Required] Inputs for the specified kernel',
        required=True)
    argparser.add_argument(
        '--output-dir',
        type=str,
        help='Path to output directory')
    argparser.add_argument(
        '--kernels-dir',
        type=str,
        help='Path to kernels directory')
    argparser.add_argument(
        '--par-strategy',
        type=str,
        help='Option "parallelization-strategy" for "sparse-compiler" ; see mlir-opt --help for more')
    argparser.add_argument(
        '--target-runtime',
        action='store_true',
        help='Lower to sparse-tensor runtime calls')
    argparser.add_argument(
        '--disable-omp',
        action='store_true',
        help='Disable OpenMP parallelization and lowering')
    argparser.add_argument(
        '--gen-inputs',
        action='store_true',
        help='Generate random inputs for target kernel')
    argparser.add_argument(
        '--density',
        type=float,
        nargs='*',
        help='Density level within [0, 1] for each input tensor')
    argparser.add_argument(
        '--disable-dump',
        action='store_true',
        help='Disable printing of IR after each pass')
    argparser.add_argument(
        '--extra',
        type=str,
        help='Extra options to pass to "sparse-compiler" ; see mlir-opt --help')
    argparser.add_argument(
        '--v',
        action='store_true',
        help='Verbose')
    args = argparser.parse_args()

    if args.density and not args.gen_inputs:
        argparser.error("--density requires --gen-inputs.")

    if args.output_dir is not None: OUTPUT_DIR = args.output_dir
    if args.kernels_dir is not None: KERNELS_DIR = args.kernels_dir
    sys.path.append(KERNELS_DIR)

    main(args)