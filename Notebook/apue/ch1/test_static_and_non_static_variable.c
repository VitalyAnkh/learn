#include <apue.h>
#include <error.c>

static int MY_AGE = 5;
#define N 5

int d1[N];

int main() {
  int d2[N];
  printf("hello world from process ID: %ld", (long)getpid());
  printf("Printing d1:\n");
  for (int i = 0; i < N; i++) {
    printf("%d ", d1[i]);
  }
  printf("\n");
  printf("Printing d2:\n");
  for (int i = 0; i < N; i++) {
    printf("%d ", d2[i]);
  }
  printf("\n");
  MY_AGE = 6;
  printf("my age is %d\n", MY_AGE);
  return 0;
}
