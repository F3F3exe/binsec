#include "ssl3_cbc_remove_padding.c"
#include "../../__libsym__/sym.h"

#define LEN 200

/* Here, we have to concretize the length because we cannot work with a symbolic pointer */
/* Solution: malloc stub ? */

int main(){
  unsigned char data[LEN];      /* Private */
  unsigned int length = LEN;    /* Public */
  unsigned int block_size;      /* Public */
  unsigned int mac_size;        /* Public */
  unsigned int rec_type;        /* Public */
  unsigned char input[LEN];     /* Public */

  HIGH_INPUT(LEN)(data);

  // // these lengths are all public
  LOW_INPUT(4)(&length);
  LOW_INPUT(4)(&rec_type);
  LOW_INPUT(LEN)(input);
  LOW_INPUT(4)(&block_size);
  LOW_INPUT(4)(&mac_size);

  // s is actually not used in the function
  SSL s_obj;
  const SSL *s = &s_obj;

  // only the length and data fields are used in the function
  SSL3_RECORD rec_obj = { length, data, rec_type, NULL };

  return ssl3_cbc_remove_padding(s,&rec_obj,block_size,mac_size);

}

