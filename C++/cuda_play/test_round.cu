#include <cstdio>

typedef unsigned char *byte_pointer;

__device__ void show_bytes(unsigned char *start, int len) {
    int i;
    // little endian
    // print the bytes in hex
    printf("Hex: 0x");
    // use int other than size_t to avoid underflow
    // size_t is unsigned and (0u - 1) is very big
    for (i = len - 1; 0 <= i; i--) {
        printf("%.2x ", start[i]);
    }
    printf("\n");
}

__global__ void test_double_type_cast(double a) {
    printf("the number's original value is: %.18f\n", a);
    printf("the number's original bits is: ");
    show_bytes((unsigned char *) (&a), sizeof(double));

    printf("cuda __double2float_rd() is: ");
    float b = __double2float_rd(*((double *) &a));
    show_bytes((unsigned char *) (&b), sizeof(float));

    b = __double2float_rn(*((double *) &a));
    printf("cuda __double2float_rn() is: ");
    show_bytes((unsigned char *) (&b), sizeof(float));

    printf("cuda __double2float_ru() is: ");
    b = __double2float_ru(*((double *) &a));
    show_bytes((unsigned char *) (&b), sizeof(float));

    printf("cuda __double2float_rz() is: ");
    b = __double2float_rz(*((double *) &a));
    show_bytes((unsigned char *) (&b), sizeof(float));

    printf("cuda __double2hiint() is: ");
    int c = __double2hiint(a);
    show_bytes((unsigned char *) (&c), sizeof(int));

    printf("cuda __double2int_rd() is: ");
    c = __double2int_rd(a);
    show_bytes((unsigned char *) (&c), sizeof(int));

    printf("cuda __double2int_rn() is: ");
    c = __double2int_rn(a);
    show_bytes((unsigned char *) (&c), sizeof(int));

    printf("cuda __double2int_ru() is: ");
    c = __double2int_ru(a);
    show_bytes((unsigned char *) (&c), sizeof(int));

    printf("cuda __double2int_rz() is: ");
    c = __double2int_rz(a);
    show_bytes((unsigned char *) (&c), sizeof(int));

    printf("cuda __double2ll_rd() is: ");
    long long d_long_long_1 = __double2ll_rd(a);
    show_bytes((unsigned char *) (&d_long_long_1), sizeof(long long));

    printf("cuda __double2ll_rn() is: ");
    d_long_long_1 = __double2ll_rn(a);
    show_bytes((unsigned char *) (&d_long_long_1), sizeof(long long));

    printf("cuda __double2ll_ru() is: ");
    d_long_long_1 = __double2ll_ru(a);
    show_bytes((unsigned char *) (&d_long_long_1), sizeof(long long));

    printf("cuda __double2ll_rz() is: ");
    d_long_long_1 = __double2ll_rz(a);
    show_bytes((unsigned char *) (&d_long_long_1), sizeof(long long));


    printf("cuda __double2loint() is: ");
    int d_int = __double2loint(a);
    show_bytes((unsigned char *) (&d_int), sizeof(long long));

    printf("cuda __double2ll_rd() is: ");
    long long d_long_long = __double2ll_rd(a);
    show_bytes((unsigned char *) (&d_long_long), sizeof(long long));

    printf("cuda __double2ll_rn() is: ");
    d_long_long = __double2ll_rn(a);
    show_bytes((unsigned char *) (&d_long_long), sizeof(long long));

    printf("cuda __double2ll_ru() is: ");
    d_long_long = __double2ll_ru(a);
    show_bytes((unsigned char *) (&d_long_long), sizeof(long long));

    printf("cuda __double2ll_rz() is: ");
    d_long_long = __double2ll_rz(a);
    show_bytes((unsigned char *) (&d_long_long), sizeof(long long));

    printf("cuda __double2uint_rd() is: ");
    unsigned int d_unsigned_int = __double2uint_rd(a);
    show_bytes((unsigned char *) (&d_unsigned_int), sizeof(unsigned int));

    printf("cuda __double2uint_rn() is: ");
    d_unsigned_int = __double2uint_rn(a);
    show_bytes((unsigned char *) (&d_unsigned_int), sizeof(unsigned int));

    printf("cuda __double2uint_ru() is: ");
    d_unsigned_int = __double2uint_ru(a);
    show_bytes((unsigned char *) (&d_unsigned_int), sizeof(unsigned int));

    printf("cuda __double2uint_rz() is: ");
    d_unsigned_int = __double2uint_rz(a);
    show_bytes((unsigned char *) (&d_unsigned_int), sizeof(unsigned int));

    printf("cuda __double2ull_rd() is: ");
    unsigned long long d_unsigned_long_long = __double2ull_rd(a);
    show_bytes((unsigned char *) (&d_unsigned_long_long), sizeof(unsigned long long));

    printf("cuda __double2ull_rn() is: ");
    d_unsigned_long_long = __double2ull_rn(a);
    show_bytes((unsigned char *) (&d_unsigned_long_long), sizeof(unsigned long long));

    printf("cuda __double2ull_ru() is: ");
    d_unsigned_long_long = __double2ull_ru(a);
    show_bytes((unsigned char *) (&d_unsigned_long_long), sizeof(unsigned long long));

    printf("cuda __double2ull_rz() is: ");
    d_unsigned_long_long = __double2ull_rz(a);
    show_bytes((unsigned char *) (&d_unsigned_long_long), sizeof(unsigned long long));

    printf("===================================================================\n");
}

__global__ void test_float_type_cast(float b) {
    float a = b;
    printf("cuda __float2int_rd() is: ");
    int c = __float2int_rd(b);
    show_bytes((unsigned char *) (&c), sizeof(int));

    printf("cuda __float2int_rn() is: ");
    c = __float2int_rn(b);
    show_bytes((unsigned char *) (&c), sizeof(int));

    printf("cuda __float2int_ru() is: ");
    c = __float2int_ru(b);
    show_bytes((unsigned char *) (&c), sizeof(int));

    printf("cuda __float2int_rz() is: ");
    c = __float2int_rz(b);
    show_bytes((unsigned char *) (&c), sizeof(int));

    printf("cuda __float2uint_rd() is: ");
    unsigned int d = __float2uint_rd(b);
    show_bytes((unsigned char *) (&d), sizeof(unsigned int));

    printf("cuda __float2uint_rn() is: ");
    d = __float2uint_rn(b);
    show_bytes((unsigned char *) (&d), sizeof(unsigned int));

    printf("cuda __float2uint_ru() is: ");
    d = __float2uint_ru(b);
    show_bytes((unsigned char *) (&d), sizeof(unsigned int));

    printf("cuda __float2uint_rz() is: ");
    d = __float2uint_rz(b);
    show_bytes((unsigned char *) (&d), sizeof(unsigned int));

    printf("cuda __float2ll_rd() is: ");
    long long e = __float2ll_rd(b);
    show_bytes((unsigned char *) (&e), sizeof(long long));

    printf("cuda __float2ll_rn() is: ");
    e = __float2ll_rn(b);
    show_bytes((unsigned char *) (&e), sizeof(long long));

    printf("cuda __float2ll_ru() is: ");
    e = __float2ll_ru(b);
    show_bytes((unsigned char *) (&e), sizeof(long long));

    printf("cuda __float2ll_rz() is: ");
    e = __float2ll_rz(b);
    show_bytes((unsigned char *) (&e), sizeof(long long));

    printf("cuda __float2ull_rd() is: ");
    unsigned long long f = __float2ull_rd(b);
    show_bytes((unsigned char *) (&f), sizeof(unsigned long long));

    printf("cuda __float2ull_rn() is: ");
    f = __float2ull_rn(b);
    show_bytes((unsigned char *) (&f), sizeof(unsigned long long));

    printf("cuda __float2ull_ru() is: ");
    f = __float2ull_ru(b);
    show_bytes((unsigned char *) (&f), sizeof(unsigned long long));

    printf("cuda __float2ull_rz() is: ");
    f = __float2ull_rz(b);
    show_bytes((unsigned char *) (&f), sizeof(unsigned long long));

    printf("cuda __float2int_rz() is: ");
    c = __float2int_rz(b);
    show_bytes((unsigned char *) (&c), sizeof(int));

    printf("cuda __float2int_ru() is: ");
    c = __float2int_ru(b);
    show_bytes((unsigned char *) (&c), sizeof(int));

    printf("cuda __float2int_rn() is: ");
    c = __float2int_rn(b);
    show_bytes((unsigned char *) (&c), sizeof(int));

    printf("cuda __float2int_rd() is: ");
    c = __float2int_rd(b);
    show_bytes((unsigned char *) (&c), sizeof(int));

    printf("cuda __float2uint_rz() is: ");
    d = __float2uint_rz(b);
    show_bytes((unsigned char *) (&d), sizeof(unsigned int));

    printf("cuda __float2uint_ru() is: ");
    d = __float2uint_ru(b);
    show_bytes((unsigned char *) (&d), sizeof(unsigned int));

    printf("cuda __float2uint_rn() is: ");
    d = __float2uint_rn(b);
    show_bytes((unsigned char *) (&d), sizeof(unsigned int));

    printf("cuda __float2uint_rd() is: ");
    d = __float2uint_rd(b);
    show_bytes((unsigned char *) (&d), sizeof(unsigned int));

    printf("cuda __float2ll_rz() is: ");
    e = __float2ll_rz(b);
    show_bytes((unsigned char *) (&e), sizeof(long long));

    printf("cuda __float2ll_ru() is: ");
    e = __float2ll_ru(b);
    show_bytes((unsigned char *) (&e), sizeof(long long));

    printf("cuda __float2ll_rn() is: ");
    e = __float2ll_rn(b);
    show_bytes((unsigned char *) (&e), sizeof(long long));

    printf("cuda __float2ll_rd() is: ");
    e = __float2ll_rd(b);
    show_bytes((unsigned char *) (&e), sizeof(long long));

    printf("cuda __float2ull_rz() is: ");
    f = __float2ull_rz(b);
    show_bytes((unsigned char *) (&f), sizeof(unsigned long long));

    printf("cuda __float2ull_ru() is: ");
    f = __float2ull_ru(b);
    show_bytes((unsigned char *) (&f), sizeof(unsigned long long));

    printf("cuda __float2ull_rn() is: ");
    f = __float2ull_rn(b);
    show_bytes((unsigned char *) (&f), sizeof(unsigned long long));

    printf("cuda __float2ull_rd() is: ");
    f = __float2ull_rd(b);
    show_bytes((unsigned char *) (&f), sizeof(unsigned long long));

    printf("cuda __float2int_rz() is: ");
    c = __float2int_rz(b);
    show_bytes((unsigned char *) (&c), sizeof(int));

    printf("cuda __float2int_ru() is: ");
    c = __float2int_ru(b);
    show_bytes((unsigned char *) (&c), sizeof(int));
    printf("===================================================================\n");
}

__global__ void test_int_type_cast(int a) {

    printf("the number's original value is: %d\n", a);
    printf("the number's original bits is: ");
    show_bytes((unsigned char *) (&a), sizeof(int));

    printf("cuda __int2float_rn() is: ");
    float b_float = __int2float_rn(a);
    show_bytes((unsigned char *) (&b_float), sizeof(float));

    printf("cuda __int2float_rd() is: ");
    b_float = __int2float_rd(a);
    show_bytes((unsigned char *) (&b_float), sizeof(float));

    printf("cuda __int2float_ru() is: ");
    b_float = __int2float_ru(a);
    show_bytes((unsigned char *) (&b_float), sizeof(float));

    printf("cuda __int2float_rz() is: ");
    b_float = __int2float_rz(a);
    show_bytes((unsigned char *) (&b_float), sizeof(float));

    printf("cuda __int2double_rn() is: ");
    double b_double = __int2double_rn(a);
    show_bytes((unsigned char *) (&b_double), sizeof(double));

    printf("cuda __int_as_float() is: ");
    b_float = __int_as_float(a);
    show_bytes((unsigned char *) (&b_float), sizeof(float));
    printf("=========================================================\n");
}

int main() {
    test_double_type_cast<<<1, 1>>>(0.123456789123456789);
    test_double_type_cast<<<1,1>>>(123.123456789123456789);
    test_float_type_cast<<<1, 1>>>(0.123456789123456789);
    test_float_type_cast<<<1,1>>>(123.123456789123456789);
    test_int_type_cast<<<1, 1>>>(2);
    cudaDeviceSynchronize();
    return 0;
}