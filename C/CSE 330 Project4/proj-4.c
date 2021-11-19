#include "sem.h"
#include <stdio.h>

struct semaphore sem;
struct semaphore sem_reader_id;
struct semaphore sem_writer_id;
queue* ReadyQ;

int i = 0;
int reader_id;
int writer_id;

void reader() {
    P(&sem);
    printf("\n This is the %d th reader reading value i = %d for the first time \n", reader_id, i);
    printf("\n This is the %d th reader reading value i = %d for the second time \n", reader_id, i);
    V(&sem);
}

void writer() {
    P(&sem);
    i += 1;
    printf("\n This is the %d th writer writing value i = %d for the first time \n", writer_id, i);
    printf("\n This is the %d th writer writing value i = %d for the second time \n", writer_id, i);
    V(&sem);
}

int main() {
    int num_writer, num_reader;
    scanf("%d,%d", &num_reader, &num_writer);
    int num_threads = num_reader + num_writer;
    int ready[num_threads];
    for (int j = 0; j < num_threads; j++) {
        scanf("%d", &ready[j]);
    }
    InitSem(&sem, 1);
    InitSem(&sem_reader_id, 1);
    InitSem(&sem_writer_id, 1);
    for (int j = 0; j < num_threads; j++) {
        if (ready[j] > 0) {
            P(&sem_reader_id);
            reader_id = ready[j];
            V(&sem_reader_id);
            start_thread(reader);
        } else {
            P(&sem_writer_id);
            writer_id = ready[j];
            V(&sem_writer_id);
            start_thread(writer);
        }
    }
    return 0;
}