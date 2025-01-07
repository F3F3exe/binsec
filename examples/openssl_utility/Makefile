CFLAGS=-m32 -g -static
LIB=
LOG="./log"

.PHONY: all clean

# List of targets to build
TARGETS=ct_eq_8 ct_eq_int ct_is_zero_8 ct_lt ct_select ct_eq ct_ge_8 ct_is_zero ct_msb ct_eq_int_8 ct_ge ct_lt_8 ct_select_8

all: $(TARGETS)

# Pattern rule to compile each target using clang
%: %.c
	@echo "-------------------"
	@echo " Compiling $@"
	@echo "-------------------"
	clang-19 $(CFLAGS) -O3 $< -o $@ $(LIB)

# Force recompilation
.PHONY: force_rebuild
force_rebuild: clean all

clean:
	rm -f $(TARGETS)

#	$(eval PARAMS := -relse -relse-dedup 1 -relse-fp instr \
	-fml-solver-timeout 0 -relse-timeout 3600 -sse-depth 10000 \
	-relse-paths 50 -sse-memory memory.txt -sse-load-ro-sections \
	-sse-load-sections .got.plt,.data,.plt -fml-solver boolector \
	-relse-store-type sha -relse-memory-type row-map 	\
	-sse-address-trace-file /tmp/SMTDIR/trace/ -sse-smt-dir \
	/tmp/SMTDIR/ -sse-comment  -relse-print-model \
	

