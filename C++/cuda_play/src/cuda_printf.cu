#include <cuda.h>
#include <stdio.h>

__global__ void test_printf() {
  printf("%d\n", 1);
  if (threadIdx.x % 2 == 0) {
    printf("%d\n", 2);
  }
  printf("%d\n", 3);
}

int main() {
  test_printf<<<1, 10>>>();
  cudaDeviceSynchronize();
}
