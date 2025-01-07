CFLAGS=-Wall -m32 -g -fno-stack-protector -static
LIB=
NAME=donna
WRAPPER=${NAME}_wrapper


.PHONY: all clean

all: donna_O0 donna_O1 donna_O2 donna_O3 donna_Of

%.c:
	clang $(CFLAGS) $@.c -o $@

donna_O0:
	clang $(CFLAGS) ${WRAPPER}.c -O0 -o $@  $(LIB)

donna_O1:
	clang $(CFLAGS) ${WRAPPER}.c -O1 -o $@  $(LIB)

donna_O2:
	clang $(CFLAGS) ${WRAPPER}.c -O2 -o $@  $(LIB)

donna_O3:
	clang $(CFLAGS) ${WRAPPER}.c -O3 -o $@  $(LIB)

donna_Of:
	clang $(CFLAGS) ${WRAPPER}.c -Ofast -o $@  $(LIB)

clean:
	rm -rf *.o *.csv *.out smtdir/*/*.smt2

mrproper: clean
	find . -type f -executable | xargs rm
