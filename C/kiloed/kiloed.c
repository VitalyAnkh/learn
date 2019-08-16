#include <stdlib.h>
#include <unistd.h>
#include <termios.h>
#include <ctype.h>
#include <stdio.h>


struct termios orignal_termios;

void disableRawMode() {
    tcsetattr(STDIN_FILENO, TCSAFLUSH, &orignal_termios);
}

void enableRawMode() {
    tcgetattr(STDIN_FILENO, &orignal_termios);
    atexit(disableRawMode);
    struct termios raw = orignal_termios;
    raw.c_iflag &= ~(BRKINT | ICRNL | INPCK | ISTRIP | IXON);
    raw.c_lflag &= ~(ECHO | ICANON | IEXTEN | ISIG);
    raw.c_oflag &= ~(OPOST);
    raw.c_cflag |= (CS8);
    raw.c_cc[VMIN]=0;
    raw.c_cc[VTIME]=1;
    tcsetattr(STDIN_FILENO, TCSAFLUSH, &raw);
}

int main() {
    enableRawMode();
    while (1) {
        char c;
        read(STDIN_FILENO, &c, 1);
        if (iscntrl(c)) {
            printf("%d is a control character\r\n", c);
        } else {
            printf("%d ('%c')\r\n", c, c);
        }
        if (c=='q') break;
    }
    return 0;
}