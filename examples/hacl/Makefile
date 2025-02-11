# Compiler flags and libraries
CFLAGS=-m32 -g -fno-stack-protector -static -DKRML_NOUINT128 -Wall
LIB=-L../../__libsym__/ -lsym
LIBBEARSSL= -I./inc -L./. -lbearssl
WRAPPER=${NAME}_wrapper
LIBHACL= -I./hacl-c/hacl-c/ -L./hacl-c/hacl-c/ -lhacl32

CLANG ?= clang #/usr/bin/llvm-3.9.0/clang+llvm-3.9.0-x86_64-linux-gnu-ubuntu-16.04/bin/clang-3.9

# Optimization levels to build
OPT_LEVELS := O0 O1 O2 O3 Os Oz Ofast flto# Add optimization levels here

# List of targets
TARGETS = chacha20 curve25519 sha256 sha512 cmp_bytes

# Build all versions of the targets with different optimizations
.PHONY: $(foreach target, $(TARGETS), $(foreach opt, $(OPT_LEVELS), $(target)_$(opt)))
all: $(foreach target, $(TARGETS), $(foreach opt, $(OPT_LEVELS), $(target)_$(opt)))

# Generic rule for compiling each target with different optimization levels
$(TARGETS:%=%_O0): %_O0: %_wrapper.c
	$(CLANG) $(CFLAGS) -O0 $< -o $@ $(LIB)  $(LIBHACL)

$(TARGETS:%=%_O1): %_O1: %_wrapper.c
	$(CLANG) $(CFLAGS) -O1 $< -o $@ $(LIB)  $(LIBHACL)

$(TARGETS:%=%_O2): %_O2: %_wrapper.c
	$(CLANG) $(CFLAGS) -O2 $< -o $@ $(LIB)  $(LIBHACL)

$(TARGETS:%=%_O3): %_O3: %_wrapper.c
	$(CLANG) $(CFLAGS) -O3 $< -o $@ $(LIB)  $(LIBHACL)

$(TARGETS:%=%_Os): %_Os: %_wrapper.c
	$(CLANG) $(CFLAGS) -Os $< -o $@ $(LIB)  $(LIBHACL)

$(TARGETS:%=%_Oz): %_Oz: %_wrapper.c
	$(CLANG) $(CFLAGS) -Oz $< -o $@ $(LIB)  $(LIBHACL)

$(TARGETS:%=%_Ofast): %_Ofast: %_wrapper.c
	$(CLANG) $(CFLAGS) -Ofast $< -o $@ $(LIB)  $(LIBHACL)

$(TARGETS:%=%_flto): %_flto: %_wrapper.c
	$(CLANG) $(CFLAGS) -flto $< -o $@ $(LIB)  $(LIBHACL)

clean:
	rm -rf *.o *.csv *.out smtdir/*/*.smt2

mrproper: clean
	find . -type f -executable | xargs rm
