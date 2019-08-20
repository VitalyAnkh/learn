#include <stdio.h>
#include <stdlib.h>
#include <string.h>
int main()
{
    int i = 0;
    int transaction_table[3][2] = {
        // row=state, column=alphabet
        {0, 1},
        {2, 0},
        {1, 2},
    };
    int starting_state, accepting_state, initial_state;
    starting_state = 0;
    accepting_state = 0;
    initial_state = starting_state;
    char w[100] = "10001011101"; // demo data
    while (i < strlen(w))
    {
        initial_state = transaction_table[initial_state][(w[i] - '0')];
        printf("Initial state: %d, symbol to process: %d, #transaction: %d\n", initial_state, w[i] - '0', i + 1);
        i++;
    }
    if (initial_state == accepting_state)
    {
        printf("'%s' is accepted!", w);
    }
    else
    {
        printf("'%s' is rejected", w);
    }
    return 0;
}