#include <stdio.h>
int main()
{
    printf("%d", test(1));
    return 0;
}

int test(int x)
{
    x++;
    return x;
}