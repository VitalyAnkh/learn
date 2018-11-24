#include <bits/stdc++.h>
using namespace std;
typedef long long ll;
const int tmax = 1005;
int n, dx[9] = {0, -1, -1, -1, 0, 0, 1, 1, 1}, dy[9] = {0, -1, 0, 1, -1, 1, -1, 0, 1};
char s[tmax][tmax];
bool v[tmax][tmax];
void dfs(int x, int y)
{
    int i, tx, ty;
    v[x][y] = true;
    for (i = 1; i <= 8; i++)
    {
        tx = x + dx[i];
        ty = y + dy[i];
        if (tx >= 1 && tx <= n && ty >= 1 && ty <= n && !v[tx][ty] && s[tx][ty] == '#')
            dfs(tx, ty);
    }
    return;
}
int main()
{
    scanf("%d", &n);
    int i, j;
    getchar();
    for (i = 1; i <= n; i++)
    {
        for (j = 1; j <= n; j++)
            scanf("%c", &s[i][j]);
        getchar();
    }
    int ans = 0;
    for (i = 1; i <= n; i++)
        for (j = 1; j <= n; j++)
        {
            if (s[i][j] == '*' || v[i][j] == true)
                continue;
            ans++;
            dfs(i, j);
        }
    cout << ans;
    return 0;
}
