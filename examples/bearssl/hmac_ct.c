#include "inc/bearssl.h"
#include <stdint.h>
#include "../../__libsym__/sym.h"

#define DATA_LEN 64   /* Input data length */
#define OUT_LEN 64    /* Output buffer length */
#define KEY_LEN 64    /* HMAC key length */
#define MIN_LEN 32    /* Minimum output length */
#define MAX_LEN 64    /* Maximum output length */

int main() {
  br_hmac_context ctx;            /* HMAC computation context */
  uint8_t data[DATA_LEN];         /* Input data */
  uint8_t out[OUT_LEN];           /* Output buffer */
  size_t len = DATA_LEN;          /* Length of input data */
  size_t min_len = MIN_LEN;       /* Minimum output length */
  size_t max_len = MAX_LEN;       /* Maximum output length */

  HIGH_INPUT(KEY_LEN)(&ctx);  /* High-sensitivity HMAC key (in context) */
  HIGH_INPUT(DATA_LEN)(data);          /* High-sensitivity input data */
  LOW_INPUT(OUT_LEN)(out);             /* Low-sensitivity output buffer */

  /* Call the HMAC function */
  br_hmac_outCT(&ctx, data, len, min_len, max_len, out);
  return 0;
}
