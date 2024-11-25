#!/bin/bash

# This is the script to compile the above code.
    # --linalg-tile-to-parallel-loops="linalg-tile-sizes=4,2" \
    # --test-gpu-greedy-parallel-loop-mapping \

mlir-opt dot.linalg \
    --convert-linalg-to-parallel-loops \
    --convert-parallel-loops-to-gpu \
    --gpu-kernel-outlining \
    --lower-affine \
    --convert-scf-to-cf \
    --convert-cf-to-llvm \
    --canonicalize \
    --gpu-to-llvm 2>&1 > mlir_linalg_optimized.mlir

# mlir-opt mlir_linalg.mlir \
#     --convert-linalg-to-parallel-loops \
#     --convert-parallel-loops-to-gpu \
#     --gpu-kernel-outlining \
#     --lower-affine \
#     --convert-scf-to-cf \
#     --convert-cf-to-llvm \
#     --canonicalize \
#     --pass-pipeline="gpu.module(strip-debuginfo, convert-gpu-to-nvvm, gpu-to-cubin)" \
#     --gpu-to-llvm 2>&1 >matmul-gpu-02.mlir.out

mlir-translate matmul-gpu-02.mlir.out --mlir-to-llvmir | opt -O3 -S | llc -O3 | as - -o matmul-gpu-02.mlir.o

# Works up to this point.

# Then when I try to compile it to executable,

clang++ matmul-gpu-02.mlir.o -lcuda \
    /usr/local/opt/llvm@latest/lib/libmlir_cuda_runtime.so \
    /usr/local/opt/llvm@latest/lib/libmlir_runner_utils.so \
    -o matmul-gpu-02
