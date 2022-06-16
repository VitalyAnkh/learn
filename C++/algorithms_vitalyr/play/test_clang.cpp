//
// Created by vitalyr on 2022/3/2.
//
#include <cstdint>
#include <cstdio>

int double2hiint(double x) {
    union {
        double d;
        struct {
            int32_t hi;
            int32_t lo;
        } tmp;
    } tmp_union;
    tmp_union.d = x;
    return tmp_union.tmp.hi;
}

int double2loint(double x) {
    union {
        double d;
        struct {
            int32_t hi;
            int32_t lo;
        } tmp;
    } tmp_union;
    tmp_union.d = x;
    return tmp_union.tmp.lo;
}

int new_double2hiint(double x) {
    return int32_t((*(int64_t *) &x) >> 32);
//    return (int32_t) (y >> 32);
}

int new_double2loint(double x) {
    return int32_t(*(int64_t *) &x);
}

int float_as_int(float x) {
    return *(int *) &x;
}

int main() {
    double a = 123456789.1122334455;
    float b = 123456789.1122334455;
    int hi = new_double2hiint(a);
    int lo = new_double2loint(a);
    printf("%d\n", double2hiint(a));
    printf("%d\n", double2loint(a));
    printf("===============\n");
    printf("%d\n", new_double2hiint(a));
    printf("%d\n", new_double2loint(a));
    printf("===============\n");
    printf("%d\n", float_as_int(b));
    printf("===============\n");
    int64_t tmp = (int64_t(hi) << 32) | lo;
    printf("%f\n", a);
    printf("%f\n", *(double *) &tmp);
    return 0;
}
