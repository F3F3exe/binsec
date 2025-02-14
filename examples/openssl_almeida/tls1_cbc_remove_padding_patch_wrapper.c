#include "../../__libsym__/sym.h"
#include "tls1_cbc_remove_padding_patch.c"

#define LEN 63
 
int main(){
unsigned long options;              // public
  long s3_flags;                      // public
  unsigned long flags;                // public
  int slicing_cheat;                  // public                  
  unsigned char data[LEN];            // private (public address)
  unsigned int length = LEN;          // public
  unsigned int block_size;            // public
  unsigned int mac_size;              // public
 

   // Data is private
  HIGH_INPUT(LEN)(data);

  // // these lengths are all public
  LOW_INPUT(4)(&options);
  LOW_INPUT(4)(&s3_flags);
  LOW_INPUT(4)(&flags);
  LOW_INPUT(4)(&slicing_cheat); // stay away from struct hell
  LOW_INPUT(4)(&block_size);
  LOW_INPUT(4)(&mac_size);

  SSL3_STATE s3_obj = { s3_flags };
  EVP_CIPHER cipher = { flags };
  EVP_CIPHER_CTX cipher_ctx = { &cipher };
  char dummy_expand;
  SSL s_obj = { &dummy_expand, options, &s3_obj, &cipher_ctx, slicing_cheat};
  const SSL *s = &s_obj;

  // only the length and data fields are used in the function
  SSL3_RECORD rec_obj = { length, data, 0, NULL };
  SSL3_RECORD *rec = &rec_obj;

  int res = tls1_cbc_remove_padding(s,rec,block_size,mac_size);
  return res;
}

