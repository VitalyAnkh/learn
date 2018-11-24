#include <stdio.h>
#include <string.h>
char str[1000011];
int main()
{
    scanf("%s", str);
    int len = strlen(str);
    int k = 0;
    int a = 0;
    int plus = 1;
    int flag = 1;
    int now = 0;
    char ch = 'a';
    str[len++] = '+';
    str[len] = '\0';
    for (int i = 0; i < len; i++)
    {
        if (str[i] >= '0' && str[i] <= '9')
        {
            now *= 10;
            now += str[i] - '0';
            continue;
        }
        if (str[i] >= 'a' && str[i] <= 'z')
        {
            ch = str[i];
            if (now == 0)
                now++;
            k += now * plus * flag;
            now = 0;
            continue;
        }
        a += now * plus * flag;
        now = 0;
        if (str[i] == '=')
        {
            flag = -1;
            plus = 1;
        }
        else if (str[i] == '+')
            plus = 1;
        else if (str[i] == '-')
            plus = -1;
    }
    double ans = -1.0 * a / k;
    if (a == 0)
        ans = 0;
    printf("%c=%.3f\n", ch, ans);
    return 0;
}