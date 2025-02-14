; ModuleID = 'cmp_bytes.ll'
source_filename = "cmp_bytes_wrapper.c"
target datalayout = "e-m:e-p:32:32-p270:32:32-p271:32:32-p272:64:64-f64:32:64-f80:32-n8:16:32-S128"
target triple = "i386-pc-linux-gnu"

@b1 = dso_local global [40 x i8] zeroinitializer, align 1, !dbg !0
@b2 = dso_local global [40 x i8] zeroinitializer, align 1, !dbg !5

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @main() local_unnamed_addr #0 !dbg !23 {
  call void @high_input_40(i8* noundef getelementptr inbounds ([40 x i8], [40 x i8]* @b1, i32 0, i32 0)) #2, !dbg !28
  call void @high_input_40(i8* noundef getelementptr inbounds ([40 x i8], [40 x i8]* @b2, i32 0, i32 0)) #2, !dbg !29
  %1 = call zeroext i8 @Hacl_Policies_cmp_bytes(i8* noundef getelementptr inbounds ([40 x i8], [40 x i8]* @b1, i32 0, i32 0), i8* noundef getelementptr inbounds ([40 x i8], [40 x i8]* @b2, i32 0, i32 0), i32 noundef 40) #2, !dbg !30
  ret i32 0, !dbg !31
}

declare !dbg !32 void @high_input_40(i8* noundef) local_unnamed_addr #1

declare !dbg !37 zeroext i8 @Hacl_Policies_cmp_bytes(i8* noundef, i8* noundef, i32 noundef) local_unnamed_addr #1

attributes #0 = { noinline nounwind uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="i686" "target-features"="+cx8,+x87" "tune-cpu"="generic" }
attributes #1 = { "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="i686" "target-features"="+cx8,+x87" "tune-cpu"="generic" }
attributes #2 = { nounwind }

!llvm.dbg.cu = !{!2}
!llvm.module.flags = !{!15, !16, !17, !18, !19, !20, !21}
!llvm.ident = !{!22}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(name: "b1", scope: !2, file: !3, line: 7, type: !7, isLocal: false, isDefinition: true)
!2 = distinct !DICompileUnit(language: DW_LANG_C99, file: !3, producer: "Ubuntu clang version 14.0.0-1ubuntu1.1", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, globals: !4, splitDebugInlining: false, nameTableKind: None)
!3 = !DIFile(filename: "cmp_bytes_wrapper.c", directory: "/mnt/c/Users/fwill/Documents/HS24/semester_project/tools/binsec/binsec/examples/hacl", checksumkind: CSK_MD5, checksum: "93dbb5a37fc270ea74cffcc0ae38275c")
!4 = !{!0, !5}
!5 = !DIGlobalVariableExpression(var: !6, expr: !DIExpression())
!6 = distinct !DIGlobalVariable(name: "b2", scope: !2, file: !3, line: 8, type: !7, isLocal: false, isDefinition: true)
!7 = !DICompositeType(tag: DW_TAG_array_type, baseType: !8, size: 320, elements: !13)
!8 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint8_t", file: !9, line: 24, baseType: !10)
!9 = !DIFile(filename: "/usr/include/bits/stdint-uintn.h", directory: "", checksumkind: CSK_MD5, checksum: "2bf2ae53c58c01b1a1b9383b5195125c")
!10 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uint8_t", file: !11, line: 38, baseType: !12)
!11 = !DIFile(filename: "/usr/include/bits/types.h", directory: "", checksumkind: CSK_MD5, checksum: "d108b5f93a74c50510d7d9bc0ab36df9")
!12 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!13 = !{!14}
!14 = !DISubrange(count: 40)
!15 = !{i32 1, !"NumRegisterParameters", i32 0}
!16 = !{i32 7, !"Dwarf Version", i32 5}
!17 = !{i32 2, !"Debug Info Version", i32 3}
!18 = !{i32 1, !"wchar_size", i32 4}
!19 = !{i32 7, !"PIC Level", i32 2}
!20 = !{i32 7, !"PIE Level", i32 2}
!21 = !{i32 7, !"uwtable", i32 1}
!22 = !{!"Ubuntu clang version 14.0.0-1ubuntu1.1"}
!23 = distinct !DISubprogram(name: "main", scope: !3, file: !3, line: 9, type: !24, scopeLine: 9, flags: DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !27)
!24 = !DISubroutineType(types: !25)
!25 = !{!26}
!26 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!27 = !{}
!28 = !DILocation(line: 12, column: 3, scope: !23)
!29 = !DILocation(line: 13, column: 3, scope: !23)
!30 = !DILocation(line: 15, column: 3, scope: !23)
!31 = !DILocation(line: 16, column: 3, scope: !23)
!32 = !DISubprogram(name: "high_input_40", scope: !33, file: !33, line: 35, type: !34, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !27)
!33 = !DIFile(filename: "./../../__libsym__/sym.h", directory: "/mnt/c/Users/fwill/Documents/HS24/semester_project/tools/binsec/binsec/examples/hacl", checksumkind: CSK_MD5, checksum: "7ea78e90a9f3dafd377d9f8ffdfcef4f")
!34 = !DISubroutineType(types: !35)
!35 = !{null, !36}
!36 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 32)
!37 = !DISubprogram(name: "Hacl_Policies_cmp_bytes", scope: !38, file: !38, line: 42, type: !39, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !27)
!38 = !DIFile(filename: "./hacl-c/hacl-c/Hacl_Policies.h", directory: "/mnt/c/Users/fwill/Documents/HS24/semester_project/tools/binsec/binsec/examples/hacl", checksumkind: CSK_MD5, checksum: "a8a37306bf5433ee7d02dfa3ffcf6ed4")
!39 = !DISubroutineType(types: !40)
!40 = !{!8, !41, !41, !42}
!41 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !8, size: 32)
!42 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint32_t", file: !9, line: 26, baseType: !43)
!43 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uint32_t", file: !11, line: 42, baseType: !44)
!44 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
