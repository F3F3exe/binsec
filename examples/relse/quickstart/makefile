CFLAGS=-Wall -m32 -g -static 
LIB=-L../../__libsym__/ -lsym


.PHONY: all test_harness_vuln test_harness_vuln_O0 test_harness_vuln_O1 test_harness_vuln_O2 test_harness_vuln_O3 test_harness_vuln_Of test_harness_vuln_Os test_harness_vuln_Oz  test_harness_ct test_harness_ct_O0 test_harness_ct_O1 test_harness_ct_O2 test_harness_ct_O3 test_harness_ct_Of test_harness_ct_Os test_harness_ct_Oz

all: test_harness_vuln test_harness_vuln_O0 test_harness_vuln_O1 test_harness_vuln_O2 test_harness_vuln_O3 test_harness_vuln_Of test_harness_vuln_Os test_harness_vuln_Oz test_harness_ct test_harness_ct_O0 test_harness_ct_O1 test_harness_ct_O2 test_harness_ct_O3 test_harness_ct_Of test_harness_ct_Os test_harness_ct_Oz

CLANG ?= clang #/usr/bin/llvm-3.9.0/clang+llvm-3.9.0-x86_64-linux-gnu-ubuntu-16.04/bin/clang-3.9

test_harness_vuln:
	$(CLANG) $(CFLAGS) test_harness_vuln.c -o $@ 

test_harness_vuln_O0:
	$(CLANG) $(CFLAGS) test_harness_vuln.c -O0 -o $@ 

test_harness_vuln_O1:
	$(CLANG) $(CFLAGS) test_harness_vuln.c -O1 -o $@ 

test_harness_vuln_O2:
	$(CLANG) $(CFLAGS) test_harness_vuln.c -O2 -o $@ 

test_harness_vuln_O3:
	$(CLANG) $(CFLAGS) test_harness_vuln.c -O3 -o $@ 

test_harness_vuln_Os:
	$(CLANG) $(CFLAGS) test_harness_vuln.c -Os -o $@ 

test_harness_vuln_Of:
	$(CLANG) $(CFLAGS) test_harness_vuln.c -Ofast -o $@ 

test_harness_vuln_Oz:
	$(CLANG) $(CFLAGS) test_harness_vuln.c -Oz -o $@ 

test_harness_ct:
	$(CLANG) $(CFLAGS) test_harness_ct.c -o $@ 

test_harness_ct_O0:
	$(CLANG) $(CFLAGS) test_harness_ct.c -O0 -o $@ 

test_harness_ct_O1:
	$(CLANG) $(CFLAGS) test_harness_ct.c -O1 -o $@ 

test_harness_ct_O2:
	$(CLANG) $(CFLAGS) test_harness_ct.c -O2 -o $@ 

test_harness_ct_O3:
	$(CLANG) $(CFLAGS) test_harness_ct.c -O3 -o $@ 

test_harness_ct_Os:
	$(CLANG) $(CFLAGS) test_harness_ct.c -Os -o $@ 

test_harness_ct_Of:
	$(CLANG) $(CFLAGS) test_harness_ct.c -Ofast -o $@ 

test_harness_ct_Oz:
	$(CLANG) $(CFLAGS) test_harness_ct.c -Oz -o $@ 

clean:
	rm -rf *.o *.csv *.out smtdir/*/*.smt2

mrproper: clean
	find . -type f -executable | xargs rm
