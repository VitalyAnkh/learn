#include <cstdio>
#include <cinttypes>

int64_t read_int(){
    int64_t result;
    scanf("%" SCNd64, &result);
    return result;
}

int main(){
    int64_t i = read_int();
    printf("%" PRId64, i);
    return 0;
}
