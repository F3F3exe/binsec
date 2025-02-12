#include <stdint.h>
#include <stdio.h>
#include "../../__libsym__/sym.h"


void
sodium_sub(unsigned char *a, const unsigned char *b, const size_t len)
{
    uint_fast16_t c = 0U;
    size_t        i;

#ifdef HAVE_AMD64_ASM
    uint64_t t64_1, t64_2, t64_3, t64_4;
    uint64_t t64_5, t64_6, t64_7, t64_8;
    uint32_t t32;

    if (len == 64U) {
        __asm__ __volatile__(
            "movq   (%[in]), %[t64_1] \n"
            "movq  8(%[in]), %[t64_2] \n"
            "movq 16(%[in]), %[t64_3] \n"
            "movq 24(%[in]), %[t64_4] \n"
            "movq 32(%[in]), %[t64_5] \n"
            "movq 40(%[in]), %[t64_6] \n"
            "movq 48(%[in]), %[t64_7] \n"
            "movq 56(%[in]), %[t64_8] \n"
            "subq %[t64_1],   (%[out]) \n"
            "sbbq %[t64_2],  8(%[out]) \n"
            "sbbq %[t64_3], 16(%[out]) \n"
            "sbbq %[t64_4], 24(%[out]) \n"
            "sbbq %[t64_5], 32(%[out]) \n"
            "sbbq %[t64_6], 40(%[out]) \n"
            "sbbq %[t64_7], 48(%[out]) \n"
            "sbbq %[t64_8], 56(%[out]) \n"
            : [t64_1] "=&r"(t64_1), [t64_2] "=&r"(t64_2), [t64_3] "=&r"(t64_3), [t64_4] "=&r"(t64_4),
              [t64_5] "=&r"(t64_5), [t64_6] "=&r"(t64_6), [t64_7] "=&r"(t64_7), [t64_8] "=&r"(t64_8)
            : [in] "S"(b), [out] "D"(a)
            : "memory", "flags", "cc");
        return;
    }
#endif
    for (i = 0U; i < len; i++) {
        c = (uint_fast16_t) a[i] - (uint_fast16_t) b[i] - c;
        a[i] = (unsigned char) c;
        c = (c >> 8) & 1U;
    }
}

int main() {
    unsigned char array1[] = {0x01, 0xFF, 0x03, 0x04}; // Initial values for array1
    unsigned char array2[] = {0x02, 0x01, 0x01, 0x02}; // Values to add to array1
    size_t len = sizeof(array1);

    HIGH_INPUT(4)(array1);
    HIGH_INPUT(4)(array2);

    sodium_sub(array1, array2, len);

    return array1[0];
}