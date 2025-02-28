#!/bin/bash

# Input log file (replace with actual filename or use a variable)
input_file="passes.log"

# Define a mapping from pass names to their actual lowercase pass names
declare -A PASS_MAP=(
    ["Annotation2MetadataPass"]="annotation2metadata"
    ["ForceFunctionAttrsPass"]="forceattrs"
    ["InferFunctionAttrsPass"]="inferattrs"
    ["CoroEarlyPass"]="coro-early"
    ["EntryExitInstrumenterPass"]="ee-instrument"
    ["LowerExpectIntrinsicPass"]="lower-expect"
    ["SimplifyCFGPass"]="simplifycfg"
    ["SROAPass"]="sroa"
    ["EarlyCSEPass"]="early-cse"
    ["OpenMPOptPass"]="openmp-opt"
    ["IPSCCPPass"]="ipsccp"
    ["CalledValuePropagationPass"]="called-value-propagation"
    ["GlobalOptPass"]="globalopt"
    ["PromotePass"]="mem2reg"
    ["InstCombinePass"]="instcombine"
    ["AlwaysInlinerPass"]="always-inline"
    ["ModuleInlinerWrapperPass"]="module-inline"
    ["DevirtSCCRepeatedPass"]="devirt"
    ["InlinerPass"]="inline"
    ["PostOrderFunctionAttrsPass"]="postorder-attrs"
    ["MemCpyOptPass"]="memcpyopt"
    ["SCCPPass"]="sccp"
    ["BDCEPass"]="bdce"
    ["CoroElidePass"]="coro-elide"
    ["ADCEPass"]="adce"
    ["CorolSplitPass"]="coro-split"
    ["DeadArgumentEliminationPass"]="dae"
    ["CoroCleanupPass"]="coro-cleanup"
    ["GlobalDCEPass"]="globaldce"
    ["EliminateAvailableExternallyPass"]="eliminate-extern"
    ["ReversePostOrderFunctionAttrsPass"]="rpo-attrs"
    ["RecomputeGlobalsAAPass"]="globals-aa"
    ["Float2IntPass"]="float2int"
    ["LowerConstantIntrinsicsPass"]="lower-const"
    ["LoopSimplifyPass"]="loop-simplify"
    ["LCSSAPass"]="lcssa"
    ["LoopDistributePass"]="loop-distribute"
    ["LoopVectorizePass"]="loop-vectorize"
    ["InferAlignmentPass"]="infer-align"
    ["LoopLoadEliminationPass"]="loop-loadelim"
    ["VectorCombinePass"]="vectorcombine"
    ["LoopUnrollPass"]="loop-unroll"
    ["WarnMissedTransformationsPass"]="warn-missed"
    ["AlignmentFromAssumptionsPass"]="align-assume"
    ["LoopSinkPass"]="loop-sink"
    ["InstSimplifyPass"]="instsimplify"
    ["DivRemPairsPass"]="divrempairs"
    ["TailCallElimPass"]="tailcallelim"
    ["RelLookupTableConverterPass"]="rellookup"
    ["AnnotationRemarksPass"]="annotation-remarks"
    ["VerifierPass"]="verifier"
    ["PrintModulePass"]="printmodule"
)

# Extract lines that contain "Running pass: ..." and transform them
passes=()
while IFS= read -r line; do
    if [[ $line =~ Running\ pass:\ ([A-Za-z0-9]+) ]]; then
        pass_name="${BASH_REMATCH[1]}"
        short_name="${PASS_MAP[$pass_name]:-$pass_name}"
        passes+=("$short_name")
        
    fi
done < "$input_file"

# Output the comma-separated list
echo "${passes[*]}" | tr ' ' ','
