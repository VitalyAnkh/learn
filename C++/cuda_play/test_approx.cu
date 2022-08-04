#include <cuda.h>
#include <cuda_runtime.h>
#include <stdio.h>
#include <cuda_bf16.h>

__global__ void test_approx(float f) {

    float sqrt = sqrtf(f);
    float div = f /sqrt;
    float tan_approx = tanf(f);
    double sqrt_d = sqrtf(f);

    // printf("%f\n", sqrt(4.5));
    printf( "div: %f\n", div);
    printf("tan_approx: %f\n", tan_approx);
    printf("sqrt_d: %f\n", sqrt_d);
}

int main(){
  test_approx<<<1,1>>>(4.5);
  cudaDeviceSynchronize();
}
