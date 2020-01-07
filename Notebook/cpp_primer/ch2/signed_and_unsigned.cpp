#include <iostream>
int main()
{
    int a = -1, b = 1;
    std::cout << "signed multiply signed is" << a * b << std::endl;
    int a1 = -1;
    unsigned int b1 = 1;
    // Watch out! When unsigned multiply signed, unsigned int will be
    // cast to signed.
    std::cout << "On my machine, signed multiply unsigned is " << a1 * b1 << std::endl;
    return 0;
}