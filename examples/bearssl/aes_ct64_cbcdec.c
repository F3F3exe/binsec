/*
 * Copyright (c) 2016 Thomas Pornin <pornin@bolet.org>
 *
 * Permission is hereby granted, free of charge, to any person obtaining 
 * a copy of this software and associated documentation files (the
 * "Software"), to deal in the Software without restriction, including
 * without limitation the rights to use, copy, modify, merge, publish,
 * distribute, sublicense, and/or sell copies of the Software, and to
 * permit persons to whom the Software is furnished to do so, subject to
 * the following conditions:
 *
 * The above copyright notice and this permission notice shall be 
 * included in all copies or substantial portions of the Software.
 *
 * THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, 
 * EXPRESS OR IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF
 * MERCHANTABILITY, FITNESS FOR A PARTICULAR PURPOSE AND 
 * NONINFRINGEMENT. IN NO EVENT SHALL THE AUTHORS OR COPYRIGHT HOLDERS
 * BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER LIABILITY, WHETHER IN AN
 * ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM, OUT OF OR IN
 * CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE
 * SOFTWARE.
 */

#include "inner.h"
#include "aes_ct64_dec.c"
#include <stdio.h>
#include <stdint.h>
#include <string.h>


/* see bearssl_block.h */
void
br_aes_ct64_cbcdec_init(br_aes_ct64_cbcdec_keys *ctx,
	const void *key, size_t len)
{
	ctx->vtable = &br_aes_ct64_cbcdec_vtable;
	ctx->num_rounds = br_aes_ct64_keysched(ctx->skey, key, len);
}

/* see bearssl_block.h */
void
br_aes_ct64_cbcdec_run(const br_aes_ct64_cbcdec_keys *ctx,
	void *iv, void *data, size_t len)
{
	unsigned char *buf;
	uint64_t sk_exp[120];
	uint32_t ivw[4];

	br_aes_ct64_skey_expand(sk_exp, ctx->num_rounds, ctx->skey);
	br_range_dec32le(ivw, 4, iv);
	buf = data;
	while (len > 0) {
		uint64_t q[8];
		uint32_t w1[16], w2[16];
		int i;

		if (len >= 64) {
			br_range_dec32le(w1, 16, buf);
		} else {
			br_range_dec32le(w1, len >> 2, buf);
		}
		for (i = 0; i < 4; i ++) {
			br_aes_ct64_interleave_in(
				&q[i], &q[i + 4], w1 + (i << 2));
		}
		br_aes_ct64_ortho(q);
		br_aes_ct64_bitslice_decrypt(ctx->num_rounds, sk_exp, q);
		br_aes_ct64_ortho(q);
		for (i = 0; i < 4; i ++) {
			br_aes_ct64_interleave_out(
				w2 + (i << 2), q[i], q[i + 4]);
		}
		for (i = 0; i < 4; i ++) {
			w2[i] ^= ivw[i];
		}
		if (len >= 64) {
			for (i = 4; i < 16; i ++) {
				w2[i] ^= w1[i - 4];
			}
			memcpy(ivw, w1 + 12, sizeof ivw);
			br_range_enc32le(buf, w2, 16);
		} else {
			int j;

			j = (int)(len >> 2);
			for (i = 4; i < j; i ++) {
				w2[i] ^= w1[i - 4];
			}
			memcpy(ivw, w1 + j - 4, sizeof ivw);
			br_range_enc32le(buf, w2, j);
			break;
		}
		buf += 64;
		len -= 64;
	}
	br_range_enc32le(iv, ivw, 4);
}

/* see bearssl_block.h */
const br_block_cbcdec_class br_aes_ct64_cbcdec_vtable = {
	sizeof(br_aes_ct64_cbcdec_keys),
	16,
	4,
	(void (*)(const br_block_cbcdec_class **, const void *, size_t))
		&br_aes_ct64_cbcdec_init,
	(void (*)(const br_block_cbcdec_class *const *, void *, void *, size_t))
		&br_aes_ct64_cbcdec_run
};



int main() {
    // Define key, IV, and encrypted data
    unsigned char key[16] = { 0x00, 0x01, 0x02, 0x03, 0x04, 0x05, 0x06, 0x07,
                              0x08, 0x09, 0x0A, 0x0B, 0x0C, 0x0D, 0x0E, 0x0F }; // AES-128 key
    unsigned char iv[16] = { 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
                             0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00 }; // Initialization vector
    unsigned char encrypted_data[32] = {
        0x69, 0xC4, 0xE0, 0xD8, 0x6A, 0x7B, 0x04, 0x30,
        0xD8, 0xCD, 0xB7, 0x80, 0x70, 0xB4, 0xC5, 0x5A,
        0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
        0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00 }; // Example data (16 bytes encrypted + padding)

    // Initialize AES CBC decryption context
    br_aes_ct64_cbcdec_keys ctx;
    br_aes_ct64_cbcdec_init(&ctx, key, sizeof(key));

    // Display encrypted data
    printf("Encrypted data:\n");
    for (size_t i = 0; i < sizeof(encrypted_data); i++) {
        printf("%02X ", encrypted_data[i]);
    }
    printf("\n");

    // Perform CBC decryption
    br_aes_ct64_cbcdec_run(&ctx, iv, encrypted_data, sizeof(encrypted_data));

    // Display decrypted data
    printf("Decrypted data:\n");
    for (size_t i = 0; i < sizeof(encrypted_data); i++) {
        printf("%02X ", encrypted_data[i]);
    }
    printf("\n");

    return 0;
}
