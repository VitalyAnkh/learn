#include <stdio.h>
#include "../include/threads.h"
#include "../include/common_threads.h"
void *producer(void *arg)
{
    int loops = (int)arg;
    for (int i = 0; i < loops; i++)
    {
        put(i);
    }
}

void *consumer(void *arg)
{
    while (1)
    {
        int tmp = get();
        printf("consumer received: %d\n", tmp);
    }
}

int main()
{
    pthread_t p, c;
    Pthread_create(&p, NULL, producer, 10);
    Pthread_create(&c, NULL, consumer, NULL);
    Pthread_join(&p, NULL);
    Pthread_join(&c, NULL);
    return 0;
}