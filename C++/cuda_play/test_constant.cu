#include <cuda.h>
#include <cuda_runtime.h>
#include <stdio.h>
#include <cuda_bf16.h>

__constant__ __nv_bfloat16 a[4];
__constant__ __nv_bfloat16 b[4];

__device__ __nv_bfloat16 test_constant(){
    //a[0]= 2.0;
    // b[0] = {1.0};
    return a[0];
}

__global__ void test_constant_global(){
    test_constant();
    printf("This is arrray a:\n");
    for(int i=0;i<4;i++){
        printf("%f\n",__bfloat162float(a[i]));
    }
    printf("This is array b:\n");
    for(int i=0;i<4;i++){
        printf("%f\n",__bfloat162float(b[i]));
    }
}
int main(){
    __nv_bfloat16* p =(__nv_bfloat16*) malloc(4 *sizeof(__nv_bfloat16));
    for (int i = 0; i < 4; i++)
      p[i] = 2.1;
    cudaMemcpyToSymbol(a, p,  4*sizeof(__nv_bfloat16));
        test_constant_global<<<1,1>>>();
    cudaDeviceSynchronize();

    for (int i = 0; i < 4; i++)
      p[i] = 10.1;

    cudaMemcpyToSymbol(a, p,  4*sizeof(__nv_bfloat16));
    test_constant_global<<<1,1>>>();
    cudaDeviceSynchronize();
}
