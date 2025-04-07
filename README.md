# Semester Project: Identifying Compiler Optimizations that Break Constant Time Programming Techniques

This repository is a fork from Binsec (https://github.com/binsec/binsec). There have been no changes made to the verification tool. We added the examples/ folder containing the code examples for our analysis. In each of them is a Results/ folder containing the results of our analysis. The code_examples.pdf provides an overview of our curated examples.



## BINSEC 

BINSEC is an open-source toolset to help improve software security at
the binary level. It relies on cutting-edge research in binary code analysis,
at the intersection of formal methods, program analysis, security and software
engineering. It is powered up by state-of-the-art techniques such as
binary-level formal methods, symbolic execution, abstract interpretation,
SMT solving and fuzzing.

## Getting started with Binsec

See [install instructions](./INSTALL.md).  
Then, have a look at [user documentation](doc) for command examples.

# Analysis

Each folder in examples/ contains bash scripts that run the analysis.
The following 4 scripts take as input the Clang optimization level (-O0 to -O3), the code example to analyze, and a Clang version (clang-7.1, clang-12, clang-19).
  - run_clang.sh: analyzes the full Clang compilation for CT violations
  - run_clang_opt.sh: analyzes Clang front-end optimizations for CT violations
  - run_test_opt_passes.sh: analyzes LLVM optimization passes for CT violations (for clang-7.1, clang-12)
  - run_test_opt19_passes.sh: analyzes LLVM optimization passes for CT violations (for clang-19)

The script run_analysis.sh performs the full analysis for optimizations O0 to O3 for clang-7.1, clang-12 and clang-19 with the above scripts.
