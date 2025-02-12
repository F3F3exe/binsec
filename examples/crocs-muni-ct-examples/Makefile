# Compiler flags and libraries
CFLAGS=-m32 -g -static
LIB=-L../../__libsym__/ -lsym

# Optimization levels to build
OPT_LEVELS := O0 O1 O2 O3 Os Oz Ofast # Add optimization levels here

CLANG ?= clang #/usr/bin/llvm-3.9.0/clang+llvm-3.9.0-x86_64-linux-gnu-ubuntu-16.04/bin/clang-3.9

# List of targets
TARGETS = 01 02 03 04 05 07 08 09 10 

# Build all versions of the targets with different optimizations
.PHONY: $(foreach target, $(TARGETS), $(foreach opt, $(OPT_LEVELS), $(target)_$(opt)))
all: $(foreach target, $(TARGETS), $(foreach opt, $(OPT_LEVELS), $(target)_$(opt)))

# Generic rule for compiling each target with different optimization levels
$(TARGETS:%=%_O0): %_O0: %.c
	$(CLANG) $(CFLAGS) -O0 $< -o $@ $(LIB)

$(TARGETS:%=%_O1): %_O1: %.c
	$(CLANG) $(CFLAGS) -O1 $< -o $@ $(LIB)

$(TARGETS:%=%_O2): %_O2: %.c
	$(CLANG) $(CFLAGS) -O2 $< -o $@ $(LIB)

$(TARGETS:%=%_O3): %_O3: %.c
	$(CLANG) $(CFLAGS) -O3 $< -o $@ $(LIB)

$(TARGETS:%=%_Os): %_Os: %.c
	$(CLANG) $(CFLAGS) -Os $< -o $@ $(LIB)

$(TARGETS:%=%_Oz): %_Oz: %.c
	$(CLANG) $(CFLAGS) -Oz $< -o $@ $(LIB)

$(TARGETS:%=%_Ofast): %_Ofast: %.c
	$(CLANG) $(CFLAGS) -Ofast $< -o $@ $(LIB)



clean:
	rm -rf *.o *.csv *.out smtdir/*/*.smt2

mrproper: clean
	find . -type f -executable | xargs rm