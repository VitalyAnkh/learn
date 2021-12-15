#include <stdio.h>
#include <stdlib.h>
#include <sys/wait.h>
#include <unistd.h>

int main() {
  pid_t pid = fork();
  if (pid > 0) {
    printf("parent: child is %d\n", pid);
    pid = wait((int *)0);
    printf("child %d is done\n", pid);
  } else if (pid == 0) {
    printf("child existing\n");
    exit(0);
  } else {
    printf("fork error\n");
  }
  return 0;
}
