# Compiler flags and libraries
CFLAGS=-m32 -g -static
LIB=-L../../__libsym__/ -lsym
LIBBEARSSL= -I./inc -L./. -lbearssl
WRAPPER=${NAME}_wrapper

CLANG ?= clang

# Optimization levels to build
OPT_LEVELS := O0 O1 O2 O3 Os Oz Ofast flto# Add optimization levels here

# List of targets
TARGETS = aes_big  des_tab des_ct_cbcenc des_ct_cbcdec aes_ct_cbcdec aes_ct_cbcenc chacha20_ct aes_ct_ctr aes_ct64_cbcdec aes_ct64_cbcenc aes_ct64_ctr ghash_ctmul

# Build all versions of the targets with different optimizations
.PHONY: $(foreach target, $(TARGETS), $(foreach opt, $(OPT_LEVELS), $(target)_$(opt)))
all: $(foreach target, $(TARGETS), $(foreach opt, $(OPT_LEVELS), $(target)_$(opt)))

# Generic rule for compiling each target with different optimization levels
$(TARGETS:%=%_O0): %_O0: %_wrapper.c
	$(CLANG) $(CFLAGS) -O0 $< -o $@ $(LIB) $(LIBBEARSSL)

$(TARGETS:%=%_O1): %_O1: %_wrapper.c
	$(CLANG) $(CFLAGS) -O1 $< -o $@ $(LIB) $(LIBBEARSSL)

$(TARGETS:%=%_O2): %_O2: %_wrapper.c
	$(CLANG) $(CFLAGS) -O2 $< -o $@ $(LIB) $(LIBBEARSSL)

$(TARGETS:%=%_O3): %_O3: %_wrapper.c
	$(CLANG) $(CFLAGS) -O3 $< -o $@ $(LIB) $(LIBBEARSSL)

$(TARGETS:%=%_Os): %_Os: %_wrapper.c
	$(CLANG) $(CFLAGS) -Os $< -o $@ $(LIB) $(LIBBEARSSL)

$(TARGETS:%=%_Oz): %_Oz: %_wrapper.c
	$(CLANG) $(CFLAGS) -Oz $< -o $@ $(LIB) $(LIBBEARSSL)

$(TARGETS:%=%_Ofast): %_Ofast: %_wrapper.c
	$(CLANG) $(CFLAGS) -Ofast $< -o $@ $(LIB) $(LIBBEARSSL)

$(TARGETS:%=%_flto): %_flto: %_wrapper.c
	$(CLANG) $(CFLAGS) -flto $< -o $@ $(LIB) $(LIBBEARSSL)

clean:
	rm -rf *.o *.csv *.out smtdir/*/*.smt2

mrproper: clean
	find . -type f -executable | xargs rm