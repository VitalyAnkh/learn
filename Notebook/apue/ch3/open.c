#include <apue.h>
#include <error.c>
#include <fcntl.h>

int main() {
  int fd;
  if ((fd = open("./ch3/test.txt", O_RDONLY | O_CREAT | O_DIRECTORY)) < 0)
    err_sys("error");
  else {
    printf("file opened, fd: %d", fd);
  }
  return 0;
}
