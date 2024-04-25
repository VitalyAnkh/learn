//
// Created by vitalyr on 2020/6/2.
//

#include <apue.h>
#include <error.c>

int main() {
  int c;
  while ((c = getc(stdin) != EOF)) {
    if (putc(c, stdout) == EOF) {
      err_sys("output error");
    }
  }
  if (ferror(stdin)) {
    err_sys("input error, test 2021-01-10");
  }
  return 0;
}
