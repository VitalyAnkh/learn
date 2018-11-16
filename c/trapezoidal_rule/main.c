#include <stdio.h>
#include <stdlib.h>
#include <omp.h>

void Trap(double a, double b, int n, double *global_result_p);

void trap_serial(double a,double b,int n,double* result)

double f(double x);

int main(int argc, char *argv[]) {
    double global_result = 0.0;
    double a, b,serial_result=0;
    int n, thread_count;
    thread_count = strtol(argv[1], NULL, 10);
    printf("Enter a, b, and n\n");
    scanf("%lf %lf %d", &a, &b, &n);
    double start_wtime=omp_get_wtime();
#pragma omp parallel num_threads(thread_count)
    Trap(a, b, n, &global_result);

    double end_wtime=omp_get_wtime();
    printf("Duration tested by omp_get_wtime(): %lf\n",end_wtime-start_wtime);

    printf("With n=%d trapezoids ,our estimate\n");
    printf("of the integral from %f to %f = %.14e\n",
           a, b, global_result);

    trap_serial(a,b,n,&serial_result);
    printf("With n=%d trapezoids ,our estimate\n");
    printf("of the integral from %f to %f = %.14e\n",
           a, b, serial_result);
    return 0;
}

void Trap(double a, double b, int n, double *global_result_p) {
    double h, x, my_result;
    double local_a, local_b;
    int i, local_n;
    int my_rank = omp_get_thread_num();
    int thread_count = omp_get_num_threads();

    h = (b - a) / n;
    local_n = n / thread_count;
    local_a = a + my_rank * local_n * h;
    local_b = local_a + local_n * h;
    my_result = (f(local_a) + f(local_b)) / 2.0;
    for (i = 1; i <= local_n - 1; i++) {
        x = local_a + i * h;
        my_result += f(x);
    }
    my_result = my_result * h;
#pragma omp critical
    *global_result_p += my_result;
}

double f(double x) {
    return x * x;
}

void trap_serial(double a,double b,int n,double* result){
    double h, x;
    double local_a, local_b;
    int i, local_n;
    int my_rank = omp_get_thread_num();
    int thread_count = omp_get_num_threads();

    h = (b - a) / n;
    local_n = n / thread_count;
    local_a = a + my_rank * local_n * h;
    local_b = local_a + local_n * h;
    *result = (f(local_a) + f(local_b)) / 2.0;
    for (i = 1; i <= local_n - 1; i++) {
        x = local_a + i * h;
        *result += f(x);
    }
    *result = (*result) * h;
}