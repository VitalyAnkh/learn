//
// Created by vitalyr on 2020/6/4.
//
#include <apue.h>
#include <error.c>

int main() {
  printf("hello world from process ID: %ld", (long)getpid());
  return 0;
}
