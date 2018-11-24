#include <bits/stdc++.h>
using namespace std;
typedef long long ll;
ll n;
int k, x, tx;
int main()
{
    scanf("%lld%d", &n, &k);
    ll ans;
    x = 1;
    for (ans = 1;; ans++)
    {
        if (x == k)
            break;
        if (1ll * (k - x + 1) > n)
            x += (int)n;
        else
        {
            tx = x;
            x = (n - (k - x + 1) + 1) % k;
            if (x == 0)
                x = k;
            n = n - 1 - (n - (k - tx + 1)) / k;
        }
    }
    cout << ans;
    return 0;
}
