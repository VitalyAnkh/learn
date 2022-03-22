//
// Created by vitalyr on 2022/3/15.
//
#include<cstdio>
#include<cstring>
#include<algorithm>

using namespace std;

const int maxn = 1010;
const int maxm = 110;
struct word {
    char data[maxm];
} w[maxn];

bool cmp(word a, word b) {
    return strcmp(a.data, b.data) < 0;
}

int main() {
    int i, j;
    char c;
    for (i = 0; i < maxn; i++) {
        j = 0;//每个单词的头
        while (scanf("%c", &c) != EOF) {
            if (c >= 'a' && c <= 'z')
                w[i].data[j++] = c;
            else
                break;//标点符号则跳出循环，一个单词输入完毕
        }

        printf("哈哈，循环结束了\n");
       // if (j == 0) i--;//若连续多个符号，第二个开始j=0,i--使结构只会往后移一位
    }
    sort(w, w + i + 1, cmp);
    printf("%s\n", w[0].data);
    for (int k = 1; k <= i; k++) {
        if (strcmp(w[k].data, w[k - 1].data) == 0)//若单词与前一个相同，则跳过，进入下一轮循环
            continue;
        printf("%s\n", w[k].data);
    }
    return 0;
}
