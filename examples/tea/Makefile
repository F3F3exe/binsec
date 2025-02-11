CFLAGS=-Wall -m32 -g -fno-stack-protector -static -Wno-parentheses
LIB=-L../../__libsym__/ -lsym
ENCR=tea_encrypt
DECR=tea_encrypt
.PHONY: all clean

.PHONY: all tea_decrypt tea_decrypt_O0 tea_decrypt_O1 tea_decrypt_O2 tea_decrypt_O3 tea_decrypt_Of tea_encrypt tea_encrypt_O0 tea_encrypt_O1 tea_encrypt_O2 tea_encrypt_O3 tea_encrypt_Of

all: tea_decrypt tea_decrypt_O0 tea_decrypt_O1 tea_decrypt_O2 tea_decrypt_O3 tea_decrypt_Of tea_encrypt tea_encrypt_O0 tea_encrypt_O1 tea_encrypt_O2 tea_encrypt_O3 tea_encrypt_Of

CLANG ?= clang #/usr/bin/llvm-3.9.0/clang+llvm-3.9.0-x86_64-linux-gnu-ubuntu-16.04/bin/clang-3.9

# TEA Decrypt
WRAPPER=${DECR}_wrapper

tea_decrypt:
	$(CLANG) $(CFLAGS) ${WRAPPER}.c -o $@  $(LIB)

tea_decrypt_O0:
	$(CLANG) $(CFLAGS) ${WRAPPER}.c -O0 -o $@  $(LIB)

tea_decrypt_O1:
	$(CLANG) $(CFLAGS) ${WRAPPER}.c -O1 -o $@  $(LIB)

tea_decrypt_O2:
	$(CLANG) $(CFLAGS) ${WRAPPER}.c -O2 -o $@  $(LIB)

tea_decrypt_O3:
	$(CLANG) $(CFLAGS) ${WRAPPER}.c -O3 -o $@  $(LIB)

tea_decrypt_Of:
	$(CLANG) $(CFLAGS) ${WRAPPER}.c -Ofast -o $@  $(LIB)

tea_decrypt_Os:
	$(CLANG) $(CFLAGS) ${WRAPPER}.c -Os -o $@  $(LIB)

tea_decrypt_Oz:
	$(CLANG) $(CFLAGS) ${WRAPPER}.c -Oz -o $@  $(LIB)



# TEA Encrypt
WRAPPER=${ENCR}_wrapper

tea_encrypt:
	$(CLANG) $(CFLAGS) ${WRAPPER}.c -o $@  $(LIB)

tea_encrypt_O0:
	$(CLANG) $(CFLAGS) ${WRAPPER}.c -O0 -o $@  $(LIB)

tea_encrypt_O1:
	$(CLANG) $(CFLAGS) ${WRAPPER}.c -O1 -o $@  $(LIB)

tea_encrypt_O2:
	$(CLANG) $(CFLAGS) ${WRAPPER}.c -O2 -o $@  $(LIB)

tea_encrypt_O3:
	$(CLANG) $(CFLAGS) ${WRAPPER}.c -O3 -o $@  $(LIB)

tea_encrypt_Of:
	$(CLANG) $(CFLAGS) ${WRAPPER}.c -Ofast -o $@  $(LIB)

tea_encrypt_Os:
	$(CLANG) $(CFLAGS) ${WRAPPER}.c -Os -o $@  $(LIB)

tea_encrypt_Oz:
	$(CLANG) $(CFLAGS) ${WRAPPER}.c -Oz -o $@  $(LIB)

clean:
	rm -rf *.o *.csv *.out smtdir/*/*.smt2

mrproper: clean
	find . -type f -executable | xargs rm
