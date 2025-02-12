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
#include "aes_ct64_enc.c"

#include <stdio.h>
#include <stdint.h>
#include <string.h>

/* see bearssl_block.h */
void
br_aes_ct64_cbcenc_init(br_aes_ct64_cbcenc_keys *ctx,
	const void *key, size_t len)
{
	ctx->vtable = &br_aes_ct64_cbcenc_vtable;
	ctx->num_rounds = br_aes_ct64_keysched(ctx->skey, key, len);
}

/* see bearssl_block.h */
void
br_aes_ct64_cbcenc_run(const br_aes_ct64_cbcenc_keys *ctx,
	void *iv, void *data, size_t len)
{
	unsigned char *buf;
	uint64_t sk_exp[120];
	uint32_t ivw[4];

	br_aes_ct64_skey_expand(sk_exp, ctx->num_rounds, ctx->skey);
	br_range_dec32le(ivw, 4, iv);
	buf = data;
	while (len > 0) {
		uint32_t w[4];
		uint64_t q[8];

		w[0] = ivw[0] ^ br_dec32le(buf);
		w[1] = ivw[1] ^ br_dec32le(buf + 4);
		w[2] = ivw[2] ^ br_dec32le(buf + 8);
		w[3] = ivw[3] ^ br_dec32le(buf + 12);
		br_aes_ct64_interleave_in(&q[0], &q[4], w);
		br_aes_ct64_ortho(q);
		br_aes_ct64_bitslice_encrypt(ctx->num_rounds, sk_exp, q);
		br_aes_ct64_ortho(q);
		br_aes_ct64_interleave_out(w, q[0], q[4]);
		memcpy(ivw, w, sizeof w);
		br_enc32le(buf, w[0]);
		br_enc32le(buf + 4, w[1]);
		br_enc32le(buf + 8, w[2]);
		br_enc32le(buf + 12, w[3]);
		buf += 16;
		len -= 16;
	}
	br_range_enc32le(iv, ivw, 4);
}

/* see bearssl_block.h */
const br_block_cbcenc_class br_aes_ct64_cbcenc_vtable = {
	sizeof(br_aes_ct64_cbcenc_keys),
	16,
	4,
	(void (*)(const br_block_cbcenc_class **, const void *, size_t))
		&br_aes_ct64_cbcenc_init,
	(void (*)(const br_block_cbcenc_class *const *, void *, void *, size_t))
		&br_aes_ct64_cbcenc_run
};




int main() {
    // Define key, IV, and plaintext
    unsigned char key[16] = { 0x00, 0x01, 0x02, 0x03, 0x04, 0x05, 0x06, 0x07,
                              0x08, 0x09, 0x0A, 0x0B, 0x0C, 0x0D, 0x0E, 0x0F }; // AES-128 key
    unsigned char iv[16] = { 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
                             0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00 }; // Initialization vector
    unsigned char plaintext[32] = { 0x00, 0x11, 0x22, 0x33, 0x44, 0x55, 0x66, 0x77,
                                    0x88, 0x99, 0xAA, 0xBB, 0xCC, 0xDD, 0xEE, 0xFF,
                                    0x10, 0x32, 0x54, 0x76, 0x98, 0xBA, 0xDC, 0xFE,
                                    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00 }; // 32-byte plaintext

    // Initialize AES CBC encryption context
    br_aes_ct64_cbcenc_keys ctx;
    br_aes_ct64_cbcenc_init(&ctx, key, sizeof(key));

    // Display plaintext
    printf("Plaintext:\n");
    for (size_t i = 0; i < sizeof(plaintext); i++) {
        printf("%02X ", plaintext[i]);
    }
    printf("\n");

    // Perform CBC encryption
    br_aes_ct64_cbcenc_run(&ctx, iv, plaintext, sizeof(plaintext));

    // Display ciphertext
    printf("Ciphertext:\n");
    for (size_t i = 0; i < sizeof(plaintext); i++) {
        printf("%02X ", plaintext[i]);
    }
    printf("\n");

    return 0;
}
