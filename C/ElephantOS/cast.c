#include <stdio.h>
int main()
{
    unsigned int a = 0x12345678;
    printf("int %x, short %x", a, (short)a);
    return 0;
}