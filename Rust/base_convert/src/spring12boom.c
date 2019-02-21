#include <stdio.h>
#include <stdlib.h>
int main(void)
{
    int num;
    for (num = 12; num > 0; num--)
    {
        system("clear");
        printf("%d\n", num);
        printf("\a");
        sleep(1);
    }
}