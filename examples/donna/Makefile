CFLAGS=-Wall -m32 -g -fno-stack-protector -static
LIB=-L../../__libsym__/ -lsym
NAME=donna
WRAPPER=${NAME}_wrapper

CLANG ?= clang #/usr/bin/llvm-3.9.0/clang+llvm-3.9.0-x86_64-linux-gnu-ubuntu-16.04/bin/clang-3.9

.PHONY: 02 donna_O0 donna_O1 donna_O2 donna_O3 donna_Of donna_Os donna_Oz donna_Ofast

all: donna donna_O0 donna_O1 donna_O2 donna_O3 donna_Of donna_Os donna_Oz donna_Ofast

%.c:
	$(CLANG) $(CFLAGS) $@.c -o $@

donna:
	$(CLANG) $(CFLAGS) ${WRAPPER}.c -o $@  $(LIB)

donna_O0:
	$(CLANG) $(CFLAGS) ${WRAPPER}.c -O0 -o $@  $(LIB)

donna_O1:
	$(CLANG) $(CFLAGS) ${WRAPPER}.c -O1 -o $@  $(LIB)

donna_O2:
	$(CLANG) $(CFLAGS) ${WRAPPER}.c -O2 -o $@  $(LIB)

donna_O3:
	$(CLANG) $(CFLAGS) ${WRAPPER}.c -O3 -o $@  $(LIB)

donna_Of:
	$(CLANG) $(CFLAGS) ${WRAPPER}.c -Ofast -o $@  $(LIB)

donna_Os:
	$(CLANG) $(CFLAGS) ${WRAPPER}.c -Os -o $@  $(LIB)

donna_Oz:
	$(CLANG) $(CFLAGS) ${WRAPPER}.c -Oz -o $@  $(LIB)

donna_Ofast:
	$(CLANG) $(CFLAGS) ${WRAPPER}.c -Ofast -o $@  $(LIB)

clean:
	rm -rf *.o *.csv *.out smtdir/*/*.smt2

mrproper: clean
	find . -type f -executable | xargs rm
