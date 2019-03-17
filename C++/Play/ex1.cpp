#include <cstring>
void test()
{
    char *str = new char[100];
    strcpy(str, "hello");
    delete[] str;
    if (str != nullptr)
    {
    }
}
