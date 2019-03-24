#include <cstdio>
#include <cstring>
#include <algorithm>
#define ll long long
using namespace std;

char s[10000];
ll a[1000011];
int top;

bool cmp1(char a, char b)
{
    return a < b;
}
bool cmp2(char a, char b)
{
    return a > b;
}

bool check(ll x)
{
    for (int i = 0; i < top; i++)
        if (a[i] == x)
            return true;
    return false;
}

void toString(ll x)
{
    int len = 0;
    while (x)
    {
        s[len] = x % 10 + '0';
        x /= 10;
        len++;
    }
    s[len] = '\0';
}

ll toLl()
{
    int len = strlen(s);
    ll ans = 0;
    for (int i = len - 1; i >= 0; i--)
        ans = 10 * ans + s[i] - '0';
    return ans;
}

int main()
{
    ll x;
    while (scanf("%lld", &x) != EOF)
    {
        top = 0;
        while (1)
        {
            if (check(x))
                break;
            a[top++] = x;
            toString(x);
            sort(s, s + strlen(s), cmp1);
            long long y = toLl();
            sort(s, s + strlen(s), cmp2);
            long long z = toLl();
            x = abs(y - z);
        }
        for (int i = 0; i < top; i++)
        {
            if (a[i] != x)
                continue;
            for (int j = i; j < top; j++)
                printf("%lld%c", a[j], (j == top - 1 ? '\n' : ' '));
        }
    }
    return 0;
}