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

    float b_float_2 = -1.5;
    printf("original value is %f\n", b_float_2);
    printf("original bit pattern is: ");
    show_bytes((unsigned char *) (&b_float_2), sizeof(float));

    int c_int = __float2int_rn(b_float_2);
    printf("cuda __float2int_rn(): value: %d, ", c_int);
    show_bytes((unsigned char *) (&c_int), sizeof(int));

    c_int = __float2int_ru(b_float_2);
    printf("cuda __float2int_ru(): value: %d, ", c_int);
    show_bytes((unsigned char *) (&c_int), sizeof(int));

    c_int = __float2int_rd(b_float_2);
    printf("cuda __float2int_rd(): value: %d, ", c_int);
    show_bytes((unsigned char *) (&c_int), sizeof(int));

    c_int = __float2int_rz(b_float_2);
    printf("cuda __float2int_rz(): value: %d, ", c_int);
    show_bytes((unsigned char *) (&c_int), sizeof(int));

    int d_longlong = 123456789;
    printf("original value is %lld\n", d_longlong);
    printf("original bit pattern is: ");
    show_bytes((unsigned char *) (&d_longlong), sizeof(long long));
    float e_float = __int2float_rn(d_longlong);
    printf("cuda __int2float_rn(): value: %f, \n", e_float);

    e_float = __int2float_ru(d_longlong);
    printf("cuda __int2float_ru(): value: %f, \n", e_float);

    e_float = __int2float_rd(d_longlong);
    printf("cuda __int2float_rd(): value: %f, \n", e_float);

    e_float = __int2float_rz(d_longlong);
    printf("cuda __int2float_rz(): value: %f, \n", e_float);
    printf("=========================================================\n");

    float sample_nan = 0.0/0.0;
    unsigned long long ull = __float2ull_rn(sample_nan);
    show_bytes((unsigned char *)&ull, sizeof(unsigned long long));
    printf("TEST NAN cuda __float2ull_rn(): value: %llx, \n", ull);
    printf("=========================================================\n");

    unsigned long long ui = __float2uint_rn(sample_nan);
    show_bytes((unsigned char *)&ui, sizeof(unsigned long long));
    printf("TEST NAN cuda __float2uint_rn(): value: %llx, \n", ui);
    printf("=========================================================\n");
}

int main() {
    test_double_type_cast<<<1, 1>>>(0.123456789123456789);
    test_double_type_cast<<<1, 1>>>(123.123456789123456789);
    test_float_type_cast<<<1, 1>>>(0.123456789123456789);
    test_float_type_cast<<<1, 1>>>(123.123456789123456789);
    test_int_type_cast<<<1, 1>>>(2);
    cudaDeviceSynchronize();
    return 0;
}