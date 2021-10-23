/*
 * my more implement
 */

#include <stdio.h>
#include <stdlib.h>
#define PAGELENGTH 24
#define LINELENGTH 512

void do_more(FILE *);

int handle_input();

int main(int argc, char **argv) {
  FILE *fp;
  if (argc == 1) {
    do_more(stdin);
  } else
    while (--argc)
      if ((fp = fopen(*++argv, "r")) != NULL) {
        do_more(fp);
        fclose(fp);
      } else
        exit(1);
  return 0;
}

void do_more(FILE *fp) {
  char line[LINELENGTH];
  int num_of_lines = 0;
  int handle_input(), reply;
  while (fgets(line, LINELENGTH, fp)) {
    if (num_of_lines == PAGELENGTH) {
      reply = handle_input();
      if (reply == 0)
        break;
      num_of_lines -= reply;
    }
    if (fputs(line, stdout) == EOF)
      exit(1);
    num_of_lines++;
  }
}
int handle_input() {
  int c;
  printf("\033[7m more? \033[m");
  while ((c = getchar()) != EOF) {
    if (c == 'q') {
      return 0;
    }
    if (c == ' ') {
      return PAGELENGTH;
    }
    if (c == '\n') {
      return 1;
    }
  }
  return 0;
}
