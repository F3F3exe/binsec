// sodium_memcmp() or crypto_verify_(16|32|64)()
#include <stdio.h>
#include <stdint.h>
#include "../../__libsym__/sym.h"


int sodium_memcmp(const void *const b1_, const void *const b2_, size_t len)
{
#ifdef HAVE_WEAK_SYMBOLS
    const unsigned char *b1 = (const unsigned char *)b1_;
    const unsigned char *b2 = (const unsigned char *)b2_;
#else
    const volatile unsigned char *volatile b1 =
        (const volatile unsigned char *volatile)b1_;
    const volatile unsigned char *volatile b2 =
        (const volatile unsigned char *volatile)b2_;
#endif
    size_t i;
    volatile unsigned char d = 0U;

#if HAVE_WEAK_SYMBOLS
    _sodium_dummy_symbol_to_prevent_memcmp_lto(b1, b2, len);
#endif
    for (i = 0U; i < len; i++)
    {
        d |= b1[i] ^ b2[i];
    }
    return (1 & ((d - 1) >> 8)) - 1;
}

int main() {
    // Example arrays to compare
    unsigned char array1[8] = {0x01, 0x02, 0x03, 0x04, 0x05, 0x06, 0x07, 0x08}; // First array
    unsigned char array2[8] = {0x01, 0x02, 0x03, 0x04, 0x05, 0x06, 0x07, 0x08}; // Same as array1
    unsigned char array3[8] = {0x01, 0x02, 0x03, 0x04, 0x05, 0x06, 0x07, 0x09}; // Different last byte

    HIGH_INPUT(8)(array1);
    HIGH_INPUT(8)(array2);
    HIGH_INPUT(8)(array3);


    // Compare array1 and array2
    return sodium_memcmp(array1, array2, sizeof(array1)) == 0;
}