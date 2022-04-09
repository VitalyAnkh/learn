#include <cstdio>

__global__ void test_double_type_cast(double a) {
    printf("cuda __double2float_rd(%.18f) is: %f\n", a, __double2float_rd(a));
    printf("cuda __double2float_rn(%.18f) is: %f\n", a, __double2float_rn(a));
    printf("cuda __double2float_ru(%.18f) is: %f\n", a, __double2float_ru(a));
    printf("cuda __double2float_rz(%.18f) is: %f\n", a, __double2float_rz(a));
    printf("cuda __double2hiint(%e) is: %d\n", a, __double2hiint(a));
    printf("cuda __double2int_rd(%f) is: %d\n", a, __double2int_rd(a));
    printf("cuda __double2int_rn(%f) is: %d\n", a, __double2int_rn(a));
    printf("cuda __double2int_ru(%f) is: %d\n", a, __double2int_ru(a));
    printf("cuda __double2int_rz(%f) is: %d\n", a, __double2int_rz(a));
    printf("cuda __double2ll_rd(%f) is: %lld\n", a, __double2ll_rd(a));
    printf("cuda __double2ll_rn(%f) is: %lld\n", a, __double2ll_rn(a));
    printf("cuda __double2ll_ru(%f) is: %lld\n", a, __double2ll_ru(a));
    printf("cuda __double2ll_rz(%f) is: %lld\n", a, __double2ll_rz(a));
    printf("cuda __double2loint(%f) is: %d\n", a, __double2loint(a));
    printf("cuda __double2uint_rd(%f) is: %d\n", a, __double2uint_rd(a));
    printf("cuda __double2uint_rn(%f) is: %d\n", a, __double2uint_rn(a));
    printf("cuda __double2uint_ru(%f) is: %d\n", a, __double2uint_ru(a));
    printf("cuda __double2uint_rz(%f) is: %d\n", a, __double2uint_rz(a));
    printf("cuda __double2ull_rd(%f) is: %lld\n", a, __double2ull_rd(a));
    printf("cuda __double2ull_rn(%f) is: %lld\n", a, __double2ull_rn(a));
    printf("cuda __double2ull_ru(%f) is: %lld\n", a, __double2ull_ru(a));
    printf("cuda __double2ull_rz(%f) is: %lld\n", a, __double2ull_rz(a));
    printf("cuda __double_as_longlong(%f) is: %lld\n", a, __double_as_longlong(a));
    printf("=================================================================\n");
}

__global__ void test_float_type_cast(float a) {
    printf("cuda __float2int_rd(%f) is: %d\n", a, __float2int_rd(a));
    printf("cuda __float2int_rn(%f) is: %d\n", a, __float2int_rn(a));
    printf("cuda __float2int_ru(%f) is: %d\n", a, __float2int_ru(a));
    printf("cuda __float2int_rz(%f) is: %d\n", a, __float2int_rz(a));
    printf("cuda __float2ll_rd(%f) is: %lld\n", a, __float2ll_rd(a));
    printf("cuda __float2ll_rn(%f) is: %lld\n", a, __float2ll_rn(a));
    printf("cuda __float2ll_ru(%f) is: %lld\n", a, __float2ll_ru(a));
    printf("cuda __float2ll_rz(%f) is: %lld\n", a, __float2ll_rz(a));
    printf("cuda __float2uint_rd(%f) is: %d\n", a, __float2uint_rd(a));
    printf("cuda __float2uint_rn(%f) is: %d\n", a, __float2uint_rn(a));
    printf("===================================================================\n");
}

__global__ void test_int_type_cast(int a) {
    printf("cuda __int2double_rn(%d) is: %f\n", a, __int2double_rn(a));
    printf("cuda __int2float_rd(%d) is: %f\n", a, __int2float_rd(a));
    printf("cuda __int2float_rn(%d) is: %f\n", a, __int2float_rn(a));
    printf("cuda __int2float_ru(%d) is: %f\n", a, __int2float_ru(a));
    printf("cuda __int2float_rz(%d) is: %f\n", a, __int2float_rz(a));
    printf("cuda __int_as_float(%d) is: %f\n", a, __int_as_float(a));
    printf("=========================================================\n");
}

int main() {
    test_double_type_cast<<<1, 1>>>(1.40);
    test_double_type_cast<<<1, 1>>>(0.123456789123456789);
    test_float_type_cast<<<1, 1>>>(0.123456789123456789);
    test_int_type_cast<<<1, 1>>>(2);
    cudaDeviceSynchronize();
    return 0;
}