#include <stdio.h>

int main() {
    const int n = 9;
    for (int i = 1; i <= n; i++) {
        for (int j = 1; j <= i; j++) {
            printf("%d ", i * j);
        }
        printf(("\n"));
    };
    return 0;
}