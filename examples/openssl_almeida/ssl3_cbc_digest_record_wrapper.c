#include "ssl3_cbc_digest_record.c"
#include "../../__libsym__/sym.h"

#define LEN 200

int update(EVP_MD_CTX *ctx, const void *data, size_t count)
{
  return 0;
}

//EVP_MAX_MD_SIZE = 64

int main(){
  int type;                                         // public
  unsigned long flags;                              // public
  char md_data[EVP_MAX_MD_SIZE];                    // private
  unsigned char md_out[EVP_MAX_MD_SIZE];            // private
  size_t md_out_size = EVP_MAX_MD_SIZE;             // public (private?)
  unsigned char header[13];                   // private (public)
  unsigned char data[LEN];                    // private
  size_t data_plus_mac_size;                        // private
  size_t data_plus_mac_plus_padding_size;           // public
  unsigned char mac_secret[EVP_MAX_MD_SIZE];  // private
  unsigned mac_secret_length = EVP_MAX_MD_SIZE;     // public
  int is_sslv3;                                     // public


  // HIGH_INPUT(EVP_MAX_MD_SIZE)(md_out);
  // HIGH_INPUT(EVP_MAX_MD_SIZE)(md_data);
  // HIGH_INPUT(LEN)(data);
  // HIGH_INPUT(EVP_MAX_MD_SIZE)(mac_secret);
  // HIGH_INPUT(4)(data_plus_mac_size);

 
  // // these lengths are all public
  // LOW_INPUT(4)(&md_out_size);
  // LOW_INPUT(4)(&flags);
  // LOW_INPUT(4)(&data_plus_mac_plus_padding_size);
  // LOW_INPUT(4)(&mac_secret_length);
  // LOW_INPUT(4)(&is_sslv3);
  LOW_INPUT(4)(type);

  struct env_md_st evp_md_obj = { type };
  ENGINE eng_obj= { 0 };
  EVP_PKEY_CTX pkey_obj = { 0 };
  struct env_md_ctx_st ctx_obj = { &evp_md_obj, &eng_obj, flags, 
                                   md_data, &pkey_obj, update};

  ssl3_cbc_digest_record(&ctx_obj,md_out,&md_out_size,header,data,
                         data_plus_mac_size,data_plus_mac_plus_padding_size,
                         mac_secret,mac_secret_length, is_sslv3);

  return 0;
}
