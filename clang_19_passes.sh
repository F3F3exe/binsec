#!/bin/bash

# Input log file (replace with actual filename or use a variable)

# Define a mapping from pass names to their actual lowercase pass names
declare -A PASS_MAP=(
    ["Annotation2MetadataPass"]="annotation2metadata"
    ["ForceFunctionAttrsPass"]="forceattrs"
    ["InferFunctionAttrsPass"]="inferattrs"
    ["CoroEarlyPass"]="coro-early"
    ["ConstantMergePass"]="constmerge"
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
    ["InlinerPass"]="inline"
    ["MemCpyOptPass"]="memcpyopt"
    ["SCCPPass"]="sccp"
    ["BDCEPass"]="bdce"
    ["CoroElidePass"]="coro-elide"
    ["ADCEPass"]="adce"
    ["CorolSplitPass"]="coro-split"
    ["DeadArgumentEliminationPass"]="deadargelim"
    ["CoroCleanupPass"]="coro-cleanup"
    ["GlobalDCEPass"]="globaldce"
    ["EliminateAvailableExternallyPass"]="elim-avail-extern"
    ["RecomputeGlobalsAAPass"]="recompute-globalsaa"
    ["Float2IntPass"]="float2int"
    ["LowerConstantIntrinsicsPass"]="lower-constant-intrinsics"
    ["LoopSimplifyPass"]="loop-simplify"
    ["LCSSAPass"]="lcssa"
    ["LoopDistributePass"]="loop-distribute"
    ["LoopVectorizePass"]="loop-vectorize"
    ["InferAlignmentPass"]="infer-alignment"
    ["LoopLoadEliminationPass"]="loop-loadelim"
    ["VectorCombinePass"]="vector-combine"
    ["LoopUnrollPass"]="loop-unroll"
    ["AlignmentFromAssumptionsPass"]="alignment-from-assumptions"
    ["LoopSinkPass"]="loop-sink"
    ["InstSimplifyPass"]="instsimplify"
    ["DivRemPairsPass"]="div-rem-pairs"
    ["TailCallElimPass"]="tailcallelim"
    ["RelLookupTableConverterPass"]="rel-lookup-table-converter"
    ["AnnotationRemarksPass"]="annotation-remarks"
    ["VerifierPass"]="verify"
    ["PrintModulePass"]="printmodule"
    ["RequireAnalysisPass"]=" "
    ["InvalidateAnalysisPass"]=" "
    ["CGProfilePass"]=" "
    ["InjectTLIMappings"]=" "
    ["CoroSplitPass"]="coro-split"
    ["LibCallsShrinkWrapPass"]=" "
    ["ReassociatePass"]="reassociate"
)
#    ["WarnMissedTransformationsPass"]="warn-missed"

#["PostOrderFunctionAttrsPass"]="postorder-attrs"
#["ReversePostOrderFunctionAttrsPass"]="rpo-attrs"
# Extract lines that contain "Running pass: ..." and transform them
passes=()
while IFS= read -r line; do
    if [[ $line =~ Running\ pass:\ ([A-Za-z0-9]+) ]]; then
        pass_name="${BASH_REMATCH[1]}"
        short_name="${PASS_MAP[$pass_name]:-$pass_name}"
        passes+=("$short_name")
    fi
done < <(opt-19 -S -O1 -debug-pass-manager   04.ll -o 04_opt.ll 2>&1)


# Output the comma-separated list
BLACKLIST=(" ")

OPT_PASSES=()
for pass in "${passes[@]}"; do
    # Check if the pass is in the BLACKLIST or ends with "Pass"
    if [[ ! " ${BLACKLIST[@]} " =~ " $pass " && ! $pass =~ Pass$ ]]; then
        OPT_PASSES+=("$pass")
    fi
done

echo "${OPT_PASSES[*]}" | tr ' ' ','
