#include <assert.h>
#include <pthread.h>
#include <stdio.h>

int main() {
  pthread_mutex_t lock = PTHREAD_MUTEX_INITIALIZER;
  pthread_cond_t cond = PTHREAD_COND_INITIALIZER;

  int rc = pthread_mutex_lock(&lock);
  assert(rc == 0);
}
