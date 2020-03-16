#include "apue.h"
#include <dirent.h>
int main(int argc, char *argv[])
{
    DIR *dp;
    struct dirent *direntp;

    if (argc != 2)
        err_quit("usage: ls directory_name");
    if ((dp = opendir(argv[1])) == NULL)
        err_sys("can't open %s", argv[1]);

    while ((direntp = readdir(dp)) != NULL)
        printf("%s\n", direntp->d_name);
    closedir(dp);
    return 0;
}