#include <apue.h>
#include <error.c>
#include <fcntl.h>
char buf1[] = "abcdefghij";
char buf2[] = "ABCDEFGHIJ";

int main() {
  int fd;
  if ((fd = creat("file.hole", FILE_MODE)) < 0)
    err_sys("error");

  if (write(fd, buf2, 10) != 10)
    err_sys("buf2 write error");
  return 0;
}
