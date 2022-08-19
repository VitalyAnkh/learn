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

// use this function to test nvcc --ftz=true behaviour
__global__ void test_ftz(float f){
    float small = 8.668306183451529e-40 ;
    printf("small: %f\n", small);
    printf("small: %a\n", small);
    f = f + small;
    printf("f: %f\n", f);
    printf("f: %a\n", f);
    printf("f + small: %2a\n", f);
    float a = 0.00000114514;
    a = a + f;
    printf("a + f: %f\n", a);
}

int main(){
  test_approx<<<1,1>>>(4.5);
  test_ftz<<<1,1>>>(4.5);
  cudaDeviceSynchronize();
  float i = INFINITY;
  printf("INFINITY: %f\n", i);
}
