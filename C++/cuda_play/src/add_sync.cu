#include <cuda.h>
#include <cuda_runtime.h>
#include <stdio.h>

// _Float32 f;
__global__ void add_sync() {
    int a = 1;
    int b = 2;
    // Use __shfl_down_sync for warp-level reduction
    // or just remove the invalid intrinsic
    int sum = a;
    for (int offset = 16; offset > 0; offset /= 2) {
        sum += __shfl_down_sync(0xffffffff, sum, offset);
    }
    printf("%d\n", threadIdx.x + b);
    __syncthreads();
    printf("%d\n", b);
}

int main() {
    add_sync<<<1, 64>>>();
    cudaDeviceSynchronize();
}
