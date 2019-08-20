#include <sys/types.h>
#include <stdio.h>
#include <unistd.h>
int value = 5;
int main()
{
    pid_t pid;

    if (pid == 0)
    {
        // child process
        value += 15;
        return 0;
    }
    else if (pid > 0)
    {
        // parent process
        wait(NULL);
        printf("Parent: value = %d", value);
        return 0;
    }
}