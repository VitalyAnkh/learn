#include <cuda.h>
#include <cuda_runtime.h>
#include <stdio.h>
#include <cuda_bf16.h>

__global__ void test_approx(){
    float f = 4.5;
    float sqrt = sqrt(s);
    float div = f /sqrt;
    printf("%f\n", sqrt(4.5));
}

int main(){
  test_approx<<<1,1>>>();
  cudaDeviceSynchronize();
}
