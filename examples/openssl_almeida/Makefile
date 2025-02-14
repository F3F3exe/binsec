# Compiler flags and libraries
CLFLAGS=-m32 -g -static -Wall
CFLAGS=$(CLFLAGS) -fno-stack-protector
LIB=-L../../__libsym__/ -lsym
WRAPPER=${NAME}_wrapper

CLANG ?= clang #/usr/bin/llvm-3.9.0/clang+llvm-3.9.0-x86_64-linux-gnu-ubuntu-16.04/bin/clang-3.9

# Optimization levels to build
OPT_LEVELS := O0 O1 O2 O3 Os Oz Ofast # Add optimization levels here

# List of targets
TARGETS = tls1_cbc_remove_padding_patch tls1_cbc_remove_padding_lucky13 ssl3_cbc_copy_mac ssl3_cbc_digest_record ssl3_cbc_remove_padding_patch


# Build all versions of the targets with different optimizations
.PHONY: $(foreach target, $(TARGETS), $(foreach opt, $(OPT_LEVELS), $(target)_$(opt)))
all: $(foreach target, $(TARGETS), $(foreach opt, $(OPT_LEVELS), $(target)_$(opt)))

# Generic rule for compiling each target with different optimization levels
$(TARGETS:%=%_O0): %_O0: %_wrapper.c
	$(CLANG) $(CFLAGS) -O0 $< -o $@ $(LIB)

$(TARGETS:%=%_O1): %_O1: %_wrapper.c
	$(CLANG) $(CFLAGS) -O1 $< -o $@ $(LIB)

$(TARGETS:%=%_O2): %_O2: %_wrapper.c
	$(CLANG) $(CFLAGS) -O2 $< -o $@ $(LIB)

$(TARGETS:%=%_O3): %_O3: %_wrapper.c
	$(CLANG) $(CFLAGS) -O3 $< -o $@ $(LIB)

$(TARGETS:%=%_Os): %_Os: %_wrapper.c
	$(CLANG) $(CFLAGS) -Os $< -o $@ $(LIB)

$(TARGETS:%=%_Oz): %_Oz: %_wrapper.c
	$(CLANG) $(CFLAGS) -Oz $< -o $@ $(LIB)

$(TARGETS:%=%_Ofast): %_Ofast: %_wrapper.c
	$(CLANG) $(CFLAGS) -Ofast $< -o $@ $(LIB)

$(TARGETS:%=%_flto): %_flto: %_wrapper.c
	$(CLANG) $(CFLAGS) -flto $< -o $@ $(LIB)

clean:
	rm -rf *.o *.csv *.out smtdir/*/*.smt2

mrproper: clean
	find . -type f -executable | xargs rm