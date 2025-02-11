# Compiler flags and libraries
CFLAGS=-m32  -static
LIB=-L../../__libsym__/ -lsym
LIBBEARSSL= -I./inc -L./. -lbearssl
DEPS=Hacl_Policies.c

CLANG ?= clang #/usr/bin/llvm-3.9.0/clang+llvm-3.9.0-x86_64-linux-gnu-ubuntu-16.04/bin/clang-3.9

# Optimization levels to build
OPT_LEVELS := O0 O1 O2 O3 Os Oz Ofast flto# Add optimization levels here

# List of targets
TARGETS = ct_eq_8 ct_eq_int ct_is_zero_8 ct_lt ct_select ct_eq ct_ge_8 ct_is_zero ct_msb ct_eq_int_8 ct_ge ct_lt_8 ct_select_8

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

$(TARGETS:%=%_flto): %_flto: %.c
	$(CLANG) $(CFLAGS) -flto $< -o $@ $(LIB)

clean:
	rm -rf *.o *.csv *.out smtdir/*/*.smt2

mrproper: clean
	find . -type f -executable | xargs rm

