CFLAGS= -m32 -g -fno-stack-protector -static 
export WD          ?= ${PWD}
export CPATH       += ${PWD}/libsodium/src/libsodium/include:${PWD}/libsodium/src/libsodium/include/sodium
LIBSYM=-L../../__libsym__/ -lsym

LIBDIR             = libsodium/src/libsodium

.PHONY: all clean chacha20 chacha20_O0 chacha20_O1 chacha20_O2 chacha20_O3 chacha20_Os salsa20 salsa20_O0 salsa20_O1 salsa20_O2 salsa20_O3 salsa20_Os \
sha256 sha256_O0 sha256_O1 sha256_O2 sha256_O3 sha256_Os sha512 sha512_O0 sha512_O1 sha512_O2 sha512_O3 sha512_Os \
sodium_add sodium_add_O0 sodium_add_O1 sodium_add_O2 sodium_add_O3 sodium_add_Os sodium_sub sodium_sub_O0 sodium_sub_O1 sodium_sub_O2 sodium_sub_O3 sodium_sub_Os \
sodium_is_zero sodium_is_zero_O0 sodium_is_zero_O1 sodium_is_zero_O2 sodium_is_zero_O3 sodium_is_zero_Os sodium_compare sodium_compare_O0 sodium_compare_O1 sodium_compare_O2 sodium_compare_O3 sodium_compare_Os \
sodium_increment sodium_increment_O0 sodium_increment_O1 sodium_increment_O2 sodium_increment_O3 sodium_increment_Os \
sodium_memcmp sodium_memcmp_O0 sodium_memcmp_O1 sodium_memcmp_O2 sodium_memcmp_O3 sodium_memcmp_Os


all: cchacha20 chacha20_O0 chacha20_O1 chacha20_O2 chacha20_O3 chacha20_Os salsa20 salsa20_O0 salsa20_O1 salsa20_O2 salsa20_O3 salsa20_Os \
sha256 sha256_O0 sha256_O1 sha256_O2 sha256_O3 sha256_Os sha512 sha512_O0 sha512_O1 sha512_O2 sha512_O3 sha512_Os \
sodium_add sodium_add_O0 sodium_add_O1 sodium_add_O2 sodium_add_O3 sodium_add_Os sodium_sub sodium_sub_O0 sodium_sub_O1 sodium_sub_O2 sodium_sub_O3 sodium_sub_Os \
sodium_is_zero sodium_is_zero_O0 sodium_is_zero_O1 sodium_is_zero_O2 sodium_is_zero_O3 sodium_is_zero_Os sodium_compare sodium_compare_O0 sodium_compare_O1 sodium_compare_O2 sodium_compare_O3 sodium_compare_Os \
sodium_increment sodium_increment_O0 sodium_increment_O1 sodium_increment_O2 sodium_increment_O3 sodium_increment_Os \
sodium_memcmp sodium_memcmp_O0 sodium_memcmp_O1 sodium_memcmp_O2 sodium_memcmp_O3 sodium_memcmp_Os

CLANG=clang-19 #/usr/bin/llvm-3.9.0/clang+llvm-3.9.0-x86_64-linux-gnu-ubuntu-16.04/bin/clang-3.9

# CHACHA20
CHACHA20_LIBS = sodium/utils.c																				\
                     randombytes/sysrandom/randombytes_sysrandom.c		\
                     randombytes/randombytes.c												\
                     crypto_stream/chacha20/ref/stream_chacha20_ref.c	\
                     crypto_stream/chacha20/stream_chacha20_api.c

chacha20:
	 $(CLANG) $(CFLAGS) $(patsubst %,$(LIBDIR)/%,$(CHACHA20_LIBS)) $@_wrapper.c -o $@ $(LIBSYM)

chacha20_O0:
	 $(CLANG) $(CFLAGS) -O0 $(patsubst %,$(LIBDIR)/%,$(CHACHA20_LIBS)) chacha20_wrapper.c -o $@ $(LIBSYM)

chacha20_O1:
	 $(CLANG) $(CFLAGS) -O1 $(patsubst %,$(LIBDIR)/%,$(CHACHA20_LIBS)) chacha20_wrapper.c -o $@ $(LIBSYM)

chacha20_O2:
	 $(CLANG) $(CFLAGS) -O2 $(patsubst %,$(LIBDIR)/%,$(CHACHA20_LIBS)) chacha20_wrapper.c -o $@ $(LIBSYM)

chacha20_O3:
	 $(CLANG) $(CFLAGS) -O3 $(patsubst %,$(LIBDIR)/%,$(CHACHA20_LIBS)) chacha20_wrapper.c -o $@ $(LIBSYM)

chacha20_Os:
	 $(CLANG) $(CFLAGS) -Os $(patsubst %,$(LIBDIR)/%,$(CHACHA20_LIBS)) chacha20_wrapper.c -o $@ $(LIBSYM)

# SALSA20
SALSA20_LIBS = sodium/utils.c																			 \
                    randombytes/sysrandom/randombytes_sysrandom.c	 \
                    randombytes/randombytes.c											 \
                    crypto_core/salsa20/ref/core_salsa20.c         \
										crypto_stream/salsa20/stream_salsa20_api.c     \
										crypto_stream/salsa20/ref/xor_salsa20_ref.c

salsa20:
	 $(CLANG)  $(CFLAGS) $(patsubst %,$(LIBDIR)/%,$(SALSA20_LIBS)) salsa20_wrapper.c -o $@ $(LIBSYM)

salsa20_O0:
	 $(CLANG)  $(CFLAGS) -O0 $(patsubst %,$(LIBDIR)/%,$(SALSA20_LIBS)) salsa20_wrapper.c -o $@ $(LIBSYM)

salsa20_O1:
	 $(CLANG)  $(CFLAGS) -O1 $(patsubst %,$(LIBDIR)/%,$(SALSA20_LIBS)) salsa20_wrapper.c -o $@ $(LIBSYM)

salsa20_O2:
	 $(CLANG)  $(CFLAGS) -O2 $(patsubst %,$(LIBDIR)/%,$(SALSA20_LIBS)) salsa20_wrapper.c -o $@ $(LIBSYM)

salsa20_O3:
	 $(CLANG)  $(CFLAGS) -O3 $(patsubst %,$(LIBDIR)/%,$(SALSA20_LIBS)) salsa20_wrapper.c -o $@ $(LIBSYM)

salsa20_Os:
	 $(CLANG)  $(CFLAGS) -Os $(patsubst %,$(LIBDIR)/%,$(SALSA20_LIBS)) salsa20_wrapper.c -o $@ $(LIBSYM)

# SHA256
SHA256_LIBS = sodium/utils.c																			\
                   randombytes/sysrandom/randombytes_sysrandom.c	\
                   randombytes/randombytes.c											\
                   crypto_hash/sha256/cp/hash_sha256.c

sha256:
	 $(CLANG) $(CFLAGS) $(patsubst %,$(LIBDIR)/%,$(SHA256_LIBS)) sha256_wrapper.c -o $@ $(LIBSYM)

sha256_O0:
	 $(CLANG) $(CFLAGS) -O0 $(patsubst %,$(LIBDIR)/%,$(SHA256_LIBS)) sha256_wrapper.c -o $@ $(LIBSYM)

sha256_O1:
	 $(CLANG) $(CFLAGS) -O1 $(patsubst %,$(LIBDIR)/%,$(SHA256_LIBS)) sha256_wrapper.c -o $@ $(LIBSYM)

sha256_O2:
	 $(CLANG) $(CFLAGS) -O2 $(patsubst %,$(LIBDIR)/%,$(SHA256_LIBS)) sha256_wrapper.c -o $@ $(LIBSYM)

sha256_O3:
	 $(CLANG) $(CFLAGS) -O3 $(patsubst %,$(LIBDIR)/%,$(SHA256_LIBS)) sha256_wrapper.c -o $@ $(LIBSYM)

sha256_Os:
	 $(CLANG) $(CFLAGS) -Os $(patsubst %,$(LIBDIR)/%,$(SHA256_LIBS)) sha256_wrapper.c -o $@ $(LIBSYM)


# SHA512
SHA512_LIBS = sodium/utils.c																			\
                   randombytes/sysrandom/randombytes_sysrandom.c	\
                   randombytes/randombytes.c											\
                   crypto_hash/sha512/cp/hash_sha512.c

sha512:
	 $(CLANG) $(CFLAGS) $(patsubst %,$(LIBDIR)/%,$(SHA512_LIBS)) sha512_wrapper.c -o $@ $(LIBSYM)

sha512_O0:
	 $(CLANG) $(CFLAGS) -O0 $(patsubst %,$(LIBDIR)/%,$(SHA512_LIBS)) sha512_wrapper.c -o $@ $(LIBSYM)

sha512_O1:
	 $(CLANG) $(CFLAGS) -O1 $(patsubst %,$(LIBDIR)/%,$(SHA512_LIBS)) sha512_wrapper.c -o $@ $(LIBSYM)

sha512_O2:
	 $(CLANG) $(CFLAGS) -O2 $(patsubst %,$(LIBDIR)/%,$(SHA512_LIBS)) sha512_wrapper.c -o $@ $(LIBSYM)

sha512_O3:
	 $(CLANG) $(CFLAGS) -O3 $(patsubst %,$(LIBDIR)/%,$(SHA512_LIBS)) sha512_wrapper.c -o $@ $(LIBSYM)

sha512_Os:
	 $(CLANG) $(CFLAGS) -Os $(patsubst %,$(LIBDIR)/%,$(SHA512_LIBS)) sha512_wrapper.c -o $@ $(LIBSYM)

sodium_add:
	 $(CLANG) $(CFLAGS) $@.c -o $@ $(LIBSYM)

sodium_add_O0:
	 $(CLANG) $(CFLAGS) -O0 sodium_add.c -o $@ $(LIBSYM)

sodium_add_O1:
	 $(CLANG) $(CFLAGS) -O1 sodium_add.c -o $@ $(LIBSYM)

sodium_add_O2:
	 $(CLANG) $(CFLAGS) -O2 sodium_add.c -o $@ $(LIBSYM)

sodium_add_O3:
	 $(CLANG) $(CFLAGS) -O3 sodium_add.c -o $@ $(LIBSYM)

sodium_add_Os:
	 $(CLANG) $(CFLAGS) -Os sodium_add.c -o $@ $(LIBSYM)

sodium_sub:
	 $(CLANG) $(CFLAGS) sodium_sub.c -o $@ $(LIBSYM)

sodium_sub_O0:
	 $(CLANG) $(CFLAGS) sodium_sub.c -o $@ $(LIBSYM)

sodium_sub_O1:
	 $(CLANG) $(CFLAGS) -O1 sodium_sub.c -o $@ $(LIBSYM)

sodium_sub_O2:
	 $(CLANG) $(CFLAGS) -O2 sodium_sub.c -o $@ $(LIBSYM)

sodium_sub_O3:
	 $(CLANG) $(CFLAGS) -O3 sodium_sub.c -o $@ $(LIBSYM)

sodium_sub_Os:
	 $(CLANG) $(CFLAGS) -Os sodium_sub.c -o $@ $(LIBSYM)

sodium_is_zero:
	 $(CLANG) $(CFLAGS) sodium_is_zero.c -o $@ $(LIBSYM)

sodium_is_zero_O0:
	 $(CLANG) $(CFLAGS) -O0 sodium_is_zero.c -o $@ $(LIBSYM)

sodium_is_zero_O1:
	 $(CLANG) $(CFLAGS) -O1 sodium_is_zero.c -o $@ $(LIBSYM)

sodium_is_zero_O2:
	 $(CLANG) $(CFLAGS) -O2 sodium_is_zero.c -o $@ $(LIBSYM)

sodium_is_zero_O3:
	 $(CLANG) $(CFLAGS) -O3 sodium_is_zero.c -o $@ $(LIBSYM)

sodium_is_zero_Os:
	 $(CLANG) $(CFLAGS) -Os sodium_is_zero.c -o $@ $(LIBSYM)

sodium_compare:
	 $(CLANG) $(CFLAGS) $@.c -o $@ $(LIBSYM)

sodium_compare_O0:
	 $(CLANG) $(CFLAGS) -O0 sodium_compare.c -o $@ $(LIBSYM)

sodium_compare_O1:
	 $(CLANG) $(CFLAGS) -O1 sodium_compare.c -o $@ $(LIBSYM)

sodium_compare_O2:
	 $(CLANG) $(CFLAGS) -O2 sodium_compare.c -o $@ $(LIBSYM)

sodium_compare_O3:
	 $(CLANG) $(CFLAGS) -O3 sodium_compare.c -o $@ $(LIBSYM)

sodium_compare_Os:
	 $(CLANG) $(CFLAGS) -Os sodium_compare.c -o $@ $(LIBSYM)

sodium_increment:
	 $(CLANG) $(CFLAGS) $@.c -o $@ $(LIBSYM)

sodium_increment_O0:
	 $(CLANG) $(CFLAGS) -O0 sodium_increment.c -o $@ $(LIBSYM)

sodium_increment_O1:
	 $(CLANG) $(CFLAGS) -O1 sodium_increment.c -o $@ $(LIBSYM)

sodium_increment_O2:
	 $(CLANG) $(CFLAGS) -O2 sodium_increment.c -o $@ $(LIBSYM)

sodium_increment_O3:
	 $(CLANG) $(CFLAGS) -O3 sodium_increment.c -o $@ $(LIBSYM)

sodium_increment_Os:
	 $(CLANG) $(CFLAGS) -Os sodium_increment.c -o $@ $(LIBSYM)
   
sodium_memcmp:
	 $(CLANG) $(CFLAGS) $@.c -o $@ $(LIBSYM)

sodium_memcmp_O0:
	 $(CLANG) $(CFLAGS) -O0 sodium_memcmp.c -o $@ $(LIBSYM)

sodium_memcmp_O1:
	 $(CLANG) $(CFLAGS) -O1 sodium_memcmp.c -o $@ $(LIBSYM)

sodium_memcmp_O2:
	 $(CLANG) $(CFLAGS) -O2 sodium_memcmp.c -o $@ $(LIBSYM)

sodium_memcmp_O3:
	 $(CLANG) $(CFLAGS) -O3 sodium_memcmp.c -o $@ $(LIBSYM)

sodium_memcmp_Os:
	 $(CLANG) $(CFLAGS) -Os sodium_memcmp.c -o $@ $(LIBSYM)

clean:
	rm -rf *.o *.csv *.out smtdir/*/*.smt2
	rmdir smtdir/binsec_relse smtdir/binsec_sse
	