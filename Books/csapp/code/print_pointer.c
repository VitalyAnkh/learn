#include <stdio.h>

typedef unsigned char *byte_pointer;

void show_bytes(byte_pointer start, size_t len)
{
    size_t i;
    for (i = 0; i <= len; i++)
    {
        printf("%.2x", start[i]);
    }
    printf("\n");
}
void show_int(int x)
{
    show_bytes((byte_pointer)&x, sizeof(int));
}
void show_float(float x)
{
    show_bytes((byte_pointer)&x, sizeof(float));
}
void show_pointer(void *x)
{
    show_bytes((byte_pointer)&x, sizeof(void *));
}
int main()
{
    test_show_bytes(12345);
    printf("%d", sizeof(void *) == sizeof(size_t));
    getchar();
    return 0;
}
void test_show_bytes(int val)
{
    int ival = val;
    float fval = (float)val;
    int *pval = &val;
    show_int(ival);
    show_float(fval);
    show_pointer(pval);
}