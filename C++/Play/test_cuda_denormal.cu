// test the behaviour of nvcc's `-ftz=true` option
// compile with: nvcc --std=c++17 --ftz=true -arch=sm_80 test_cuda_denormal.cu
#include<cuda_runtime_api.h>
#include<cuda_fp16.h>
#include<cuda_bf16.h>
#include<stdio.h>
#include<inttypes.h>

typedef unsigned char *byte_pointer;

// auxiliary function to print the bit sequence of datum
__device__ void show_bytes(unsigned char *start, int len) {
    int i;
    // little endian
    // print the bytes in hex
    printf("0x ");
    // use int other than size_t to avoid underflow
    // size_t is unsigned and (0u - 1) is very big
    for (i = len - 1; 0 <= i; i--) {
        printf("%.2x ", start[i]);
    }
    printf("\n");
}

__global__ void test_float_denormal(){
    // float f1 = 0.000000000000000000000000000000000000000000001;
    // float f2 = 0.000000000000000000000000000000000000000000002;
    float f3 = 0.000000000000000000000000000000000000000000003;
    float f4 = 0.000000000000000000000000000000000000000000004;
    float f5 = 0.000000000000000000000000000000000000000000005;

    uint32_t u1 = 0x8000'0001u;
    auto f1 = *(float *)(&u1);

    uint32_t u2 = 0x8000'0001u;
    auto f2 = *(float *)(&u2);

    float f6 = f1 + f2;
    printf("float f1: ");
    show_bytes((byte_pointer)&f1, sizeof(float));

    printf("float f2: ");
    show_bytes((byte_pointer)&f2, sizeof(float));

    printf("float f3: ");
    show_bytes((byte_pointer)&f3, sizeof(float));

    printf("float f4: ");
    show_bytes((byte_pointer)&f4, sizeof(float));

    printf("float f5: ");
    show_bytes((byte_pointer)&f5, sizeof(float));

    printf("float f6: ");
    show_bytes((byte_pointer)&f6, sizeof(float));

    printf("f1 in decimal: %.80f\n", f1);
    printf("f2 in decimal: %.80f\n", f2);
    printf("f6 in decimal: %.80f\n", f6);
}
__global__ void test_double_denormal(){
    uint64_t u1 = 0x0000'0000'0000'0001ull;
    auto f1 = *(double *)(&u1);
    uint64_t u2 = 0x0000'0000'0000'0002ull;
    auto f2 = *(double *)(&u2);
    uint64_t u3 = 0x0000'0000'0000'0003ull;
    auto f3 = *(double *)(&u3);
    uint64_t u4 = 0x0000'0000'0000'0004ull;
    auto f4 = *(double *)(&u4);
    uint64_t u5 = 0x0000'0000'0000'0005ull;
    auto f5 = *(double *)(&u5);

    double f6 = f1 + f2;

    printf("double f1: ");
    show_bytes((byte_pointer)&f1, sizeof(double));

    printf("double f2: ");
    show_bytes((byte_pointer)&f2, sizeof(double));

    printf("double f3: ");
    show_bytes((byte_pointer)&f3, sizeof(double));

    printf("double f4: ");
    show_bytes((byte_pointer)&f4, sizeof(double));

    printf("double f5: ");
    show_bytes((byte_pointer)&f5, sizeof(double));

    printf("double f6: ");
    show_bytes((byte_pointer)&f6, sizeof(double));

    printf("f1 in decimal: %.80lf\n", f1);
    printf("f2 in decimal: %.80lf\n", f2);
    printf("f6 in decimal: %.80lf\n", f6);
}

__global__ void test_half_denormal(){
    uint16_t u1 = 0x0000'0001u;
    auto f1 = *(half*)(&u1);
    uint16_t u2 = 0x0000'0002u;
    auto f2 = *(half*)(&u2);
    uint16_t u3 = 0x0000'0003u;
    auto f3 = *(half*)(&u3);
    uint16_t u4 = 0x0000'0004u;
    auto f4 = *(half*)(&u4);
    uint16_t u5 = 0x0000'0005u;
    auto f5 = *(half*)(&u5);

    half f6 = f1 + f2;
    printf("half f1: ");
    show_bytes((byte_pointer)&f1, sizeof(half));
    printf("half f2: ");
    show_bytes((byte_pointer)&f2, sizeof(half));
    printf("half f3: ");
    show_bytes((byte_pointer)&f3, sizeof(half));
    printf("half f4: ");
    show_bytes((byte_pointer)&f4, sizeof(half));
    printf("half f5: ");
    show_bytes((byte_pointer)&f5, sizeof(half));
    printf("half f6: ");
    show_bytes((byte_pointer)&f6, sizeof(half));
    printf("half f1 in decimal: %.50f\n", f1);
    printf("half f2 in decimal: %.50f\n", f2);
    printf("half f6 in decimal: %.50f\n", f6);
}

__global__ void test_bfloat16_denormal(){
    uint16_t u1 = 0x0000'0001u;
    auto f1 = *(__nv_bfloat16*)(&u1);

    uint16_t u2 = 0x0000'0002u;
    auto f2 = *(__nv_bfloat16*)(&u2);

    __nv_bfloat16 f3 = f1 + f2;

    printf("bfloat16 f1: ");
    show_bytes((byte_pointer)&f1, sizeof(__nv_bfloat16));
    printf("bfloat16 f2: ");
    show_bytes((byte_pointer)&f2, sizeof(__nv_bfloat16));
    printf("bfloat16 f3: ");
    show_bytes((byte_pointer)&f3, sizeof(__nv_bfloat16));
    printf("bfloat16 f1 in decimal: %.50f\n", f1);
    printf("bfloat16 f2 in decimal: %.50f\n", f2);
    printf("bfloat16 f3 in decimal: %.50f\n", f3);
}

int main(){
    test_float_denormal<<<1,1>>>();
    test_double_denormal<<<1,1>>>();
    test_half_denormal<<<1,1>>>();
    test_bfloat16_denormal<<<1,1>>>();
    cudaDeviceSynchronize();
    return 0;
}
