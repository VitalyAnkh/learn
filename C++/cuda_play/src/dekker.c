// dekker_nofence.c
#define _GNU_SOURCE
#include <pthread.h>
#include <stdatomic.h>
#include <stdio.h>
#include <stdlib.h>
#include <unistd.h>

#define ITERS 100000000 // 每线程循环次数 （可调小以便快速复现）

volatile int flag0 = 0;
volatile int flag1 = 0;
volatile unsigned long in_cs = 0; // 统计进入临界区次数（错误检测用）

void *thread0(void *arg) {
    for (unsigned long i = 0; i < ITERS; ++i) {
        flag0 = 1; // ① 先写自己的标志
        /* ★ 本例特意省略 fence ★ */
        if (flag1 == 0) { // ② 再读对方标志
            ++in_cs;      // 临界区
        }
        flag0 = 0;
    }
    return NULL;
}

void *thread1(void *arg) {
    for (unsigned long i = 0; i < ITERS; ++i) {
        flag1 = 1;
        /* ★ 本例特意省略 fence ★ */
        if (flag0 == 0) {
            ++in_cs;
        }
        flag1 = 0;
    }
    return NULL;
}

int main(void) {
    pthread_t t0, t1;
    pthread_setconcurrency(2); // 建议绑定 2 核以提高复现概率
    if (pthread_create(&t0, NULL, thread0, NULL) ||
        pthread_create(&t1, NULL, thread1, NULL)) {
        perror("pthread_create");
        return 1;
    }
    pthread_join(t0, NULL);
    pthread_join(t1, NULL);

    printf("in_cs = %lu (理论上应 ≤ %d)\n", in_cs, ITERS);
    return 0;
}
