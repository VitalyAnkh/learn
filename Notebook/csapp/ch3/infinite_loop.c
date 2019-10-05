#include <stdio.h>
#include <ctype.h>
int main(int argc, char *argv[])
{
    char b;
    b = fgetc(stdin);
    while (b != EOF)
    {
        if (isalnum(b))
        {
            printf("%c", b);
        }
        else
        {
            b = fgetc(stdin);
        }
    }
    return 0;
}