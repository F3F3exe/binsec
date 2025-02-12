#include <stdio.h>
#include <stdint.h>
#include "../../__libsym__/sym.h"


int sodium_is_zero(const unsigned char *n, const size_t nlen)
{
    size_t i;
    volatile unsigned char d = 0U;

    for (i = 0U; i < nlen; i++)
    {
        d |= n[i];
    }
    return 1 & ((d - 1) >> 8);
}

int main()
{
    // Example arrays to test
    unsigned char all_zero[8] = {0, 0, 0, 0, 0, 0, 0, 0}; // All zeros
    unsigned char not_zero[8] = {0, 1, 0, 0, 0, 0, 0, 0}; // Not all zeros

    HIGH_INPUT(8)(all_zero);
    HIGH_INPUT(8)(not_zero);

    
    return sodium_is_zero(not_zero, sizeof(not_zero)) ^ sodium_is_zero(all_zero, sizeof(all_zero));
  
}