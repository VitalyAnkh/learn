#include <stdio.h>
#include <stdlib.h>
const char interp[] __attribute__ ((section(".interp"))) = PT_INTERP;
void hello(){
    printf("Hello!\n");
}

int main(){
    hello();
    hello();
    exit(EXIT_SUCCESS);
}
