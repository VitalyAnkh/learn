#include <bits/stdc++.h> using namespace std;
typedef long long ll;
const int tmax = 1e5 + 5;
int n, m, f[tmax];
int find(int x) { return f[x] == x ? x : f[x] = find(f[x]); }
int main()
{
    scanf("%d%d", &n, &m);
    int i, a, b;
    for (i = 1; i <= n; i++)
        f[i] = i;
    for (i = 1; i <= m; i++)
    {
        scanf("%d%d", &a, &b);
        f[find(a)] = find(b);
    }
    scanf("%d%d", &a, &b);
    if (find(a) == find(b))
        printf("Yes");
    else
        printf("No");
    return 0;
}
