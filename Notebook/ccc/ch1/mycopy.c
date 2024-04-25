//
// Created by vitalyr on 2020/5/25.
//
#include <apue.h>
#include <error.c>

#define BUFFSIZE 4096

int main() {
  int n;
  char buf[BUFFSIZE];
  while ((n = read(STDIN_FILENO, buf, BUFFSIZE)) > 0)
    if (write(STDOUT_FILENO, buf, n) != n)
      err_sys("write error");
  if (n < 0)
    err_sys("read error");
  exit(0);
}
