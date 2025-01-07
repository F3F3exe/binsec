CLFLAGS=-m32 -g -static -Wall -O3
CFLAGS=$(CLFLAGS) -fno-stack-protector
LIB= 


.PHONY: tls1_cbc_remove_padding_patch tls1_cbc_remove_padding_lucky13 ssl3_cbc_copy_mac ssl3_cbc_digest_record ssl3_cbc_remove_padding_patch

all: tls1_cbc_remove_padding_patch tls1_cbc_remove_padding_lucky13 ssl3_cbc_copy_mac ssl3_cbc_digest_record ssl3_cbc_remove_padding_patch

tls1_cbc_remove_padding_patch:
	clang $(CFLAGS) -O3 $@_wrapper.c -o $@ $(LIB)

tls1_cbc_remove_padding_lucky13:
	clang $(CFLAGS) -O3 $@_wrapper.c -o $@ $(LIB)

ssl3_cbc_copy_mac:
	clang $(CFLAGS) $@_wrapper.c -O3 -o $@ $(LIB)

ssl3_cbc_remove_padding_patch:
	clang $(CFLAGS) $@_wrapper.c -O3 -o $@ $(LIB)

ssl3_cbc_digest_record:
	clang $(CFLAGS) $@_wrapper.c -O3 -o $@ $(LIB)



clean:
	rm -rf *.o *.csv *.out smtdir/*/*.smt2

mrproper: clean
	find . -type f -executable | xargs rm
