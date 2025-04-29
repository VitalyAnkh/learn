#include <cuda.h>
#include <cuda_runtime.h>
#include <stdio.h>

__global__ void foo_kernel(float *a, float *b, unsigned int N) {
  unsigned int i = blockIdx.x * blockDim.x + threadIdx.x;
  if (i < N) {
    b[i] = 2.7f * a[i] - 4.3f;
  }
  printf("%f\n", b);

  __syncthreads();
}

int main() {
  unsigned int N = 20000;
  cudaDeviceSynchronize();
}
