#include <cuda.h>
#include <cuda_runtime.h>
#include <stdio.h>

// _Float32 f;
__global__ void add_sync() {
    int a = 1;
    int b = 2;
    __reduce_add_sync(0xffffffff, a);
    printf("%d\n", threadIdx.x + b);
    __syncthreads();
    printf("%d\n", b);
}

int main() {
    add_sync<<<1, 64>>>();
    cudaDeviceSynchronize();
}
