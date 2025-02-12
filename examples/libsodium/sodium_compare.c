#include <stdint.h>
#include <stdio.h>
#include "../../__libsym__/sym.h"


int
sodium_compare(const unsigned char *b1_, const unsigned char *b2_, size_t len)
{
#ifdef HAVE_WEAK_SYMBOLS
    const unsigned char *b1 = b1_;
    const unsigned char *b2 = b2_;
#else
    const volatile unsigned char *volatile b1 =
        (const volatile unsigned char *volatile) b1_;
    const volatile unsigned char *volatile b2 =
        (const volatile unsigned char *volatile) b2_;
#endif
    size_t                 i;
    volatile unsigned char gt = 0U;
    volatile unsigned char eq = 1U;
    uint16_t               x1, x2;

#if HAVE_WEAK_SYMBOLS
    _sodium_dummy_symbol_to_prevent_compare_lto(b1, b2, len);
#endif
    i = len;
    while (i != 0U) {
        i--;
        x1 = b1[i];
        x2 = b2[i];
        gt |= (((unsigned int) x2 - (unsigned int) x1) >> 8) & eq;
        eq &= (((unsigned int) (x2 ^ x1)) - 1) >> 8;
    }
    return (int) (gt + gt + eq) - 1;
}


int main() {
    unsigned char array1[] = {0x01, 0x02, 0x03, 0x04};
    unsigned char array2[] = {0x01, 0x02, 0x03, 0x04};
    size_t len = sizeof(array1);

    HIGH_INPUT(4)(array1);
    HIGH_INPUT(4)(array2);

    int result = sodium_compare(array1, array2, len);
    
    return result;
}