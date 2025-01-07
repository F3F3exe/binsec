CFLAGS=-m32 -g -static 
LIB=
LIBBEARSSL= -I./inc -L./. -lbearssl
WRAPPER=${NAME}_wrapper


.PHONY: aes_big aes_ct des_tab des_ct_cbcenc des_ct_cbcdec aes_ct_cbcdec aes_ct_cbcenc chacha20_ct
all: aes_big aes_ct des_tab des_ct_cbcenc des_ct_cbcdec aes_ct_cbcdec aes_ct_cbcenc chacha20_ct

aes_big:
	clang  $(CFLAGS) $@_wrapper.c -o $@  $(LIB) $(LIBBEARSSL)

aes_ct:
	clang  $(CFLAGS) $@_wrapper.c -o $@  $(LIB) $(LIBBEARSSL)

aes_ct_cbcenc:
	clang  $(CFLAGS) $@_wrapper.c -o $@  $(LIB) $(LIBBEARSSL)

aes_ct_cbcdec:
	clang  $(CFLAGS) $@_wrapper.c -o $@  $(LIB) $(LIBBEARSSL)

des_tab:
	clang  $(CFLAGS) $@_wrapper.c -o $@  $(LIB) $(LIBBEARSSL)

des_ct_cbcenc:
	clang $(CFLAGS) $@_wrapper.c -o $@  $(LIB) $(LIBBEARSSL)

des_ct_cbcdec:
	clang $(CFLAGS) $@_wrapper.c -o $@  $(LIB) $(LIBBEARSSL)

chacha20_ct: 
	clang $(CFLAGS) $@_wrapper.c -o $@  $(LIB) $(LIBBEARSSL)

clean:
	rm -rf *.o *.csv *.out smtdir/*/*.smt2

mrproper: clean
	find . -type f -executable | xargs rm
