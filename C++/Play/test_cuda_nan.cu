#include<cuda_runtime_api.h>
#include<cuda_fp16.h>
#include<cuda_bf16.h>
#include<stdio.h>

__global__ void test_nan(){
    half _a = -1.0;
    half a = hsqrt(_a);
    __nv_bfloat16 bf = -1.0;
    __nv_bfloat16 bf2 = hsqrt(bf);
    float b = __fsqrt_rn(-1);
    double c = __dsqrt_rn(-1);
    printf("half sqrt(-1): %x\n", a);
    printf("bfloat16 sqrt(-1): %x\n", bf);
    printf("float sqrt(-1): %x\n", *(int*)(&b));
    printf("double sqrt(-1): %lx\n", *(long int*)(&c));
}

int main(){
    test_nan<<<1,1>>>();
    cudaDeviceSynchronize();
}
