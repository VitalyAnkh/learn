#include <cstdio>
#include <cstring>
int a[9][9];
int vis[10];

const int dx[9] = {0, 0, 0, 1, 1, 1, 2, 2, 2};
const int dy[9] = {0, 1, 2, 0, 1, 2, 0, 1, 2};
const int sx[9] = {0, 0, 0, 3, 3, 3, 6, 6, 6};
const int sy[9] = {0, 3, 6, 0, 3, 6, 0, 3, 6};

void check(bool &flag)
{
    for (int j = 1; j <= 9; j++)
        if (!vis[j])
            flag = false;
}
int main()
{
    int n;
    scanf("%d", &n);
    while (n--)
    {
        bool flag = true;
        for (int i = 0; i < 9; i++)
            for (int j = 0; j < 9; j++)
                scanf("%d", &a[i][j]);
        for (int i = 0; i < 9; i++)
        {
            memset(vis, 0, sizeof(vis));
            for (int j = 0; j < 9; j++)
                vis[a[i][j]] = 1;
            check(flag);
            memset(vis, 0, sizeof(vis));
            for (int j = 0; j < 9; j++)
                vis[a[j][i]] = 1;
            check(flag);
            memset(vis, 0, sizeof(vis));
            for (int j = 0; j < 9; j++)
                vis[a[sx[i] + dx[j]][sy[i] + dy[j]]] = 1;
            check(flag);
        }
        if (flag)
            puts("Right");
        else
            puts("Wrong");
    }
    return 0;
}