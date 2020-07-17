#include <apue.h>

int main() {
  printf("hello world from process ID %ld\n", (long)getpid());
  return 0;
}
