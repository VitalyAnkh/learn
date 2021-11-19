#include "../include/common.h"
#include "../include/common_threads.h"
#include <stdio.h>
#include <pthread.h>

static volatile int counter = 0;
// mythread()
// buggy
void *thread_add(void *arg)
{
    printf("%s: begin adding\n", (char *)arg);
    int i;
    for (i = 0; i < 1e7; i++)
    {
        counter = counter + 1;
    }
    printf("%s: done adding\n", (char *)arg);
    return NULL;
}

void *thread_sub(void *arg)
{
    printf("%s: begin subtracting\n", (char *)arg);
    for (int i = 0; i < 1e7; i++)
    {
        counter -= 1;
    }
    printf("%s: done subtracting\n", (char *)arg);
    return NULL;
}

// launch two threads (pthread_create)
// and then waits for them (pthread_join)
int main()
{
    pthread_t p1, p2;
    printf("main: begin (counter = %d)\n", counter);
    Pthread_create(&p1, NULL, thread_add, "A");
    Pthread_create(&p2, NULL, thread_sub, "B");

    // join waits for the threads to finish
    Pthread_join(p1, NULL);
    Pthread_join(p2, NULL);
    printf("main: done with both (counter = %d)\n", counter);
    return 0;
}
