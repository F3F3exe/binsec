; ModuleID = 'hacl-c/hacl-c/Hacl_Policies.c'
source_filename = "hacl-c/hacl-c/Hacl_Policies.c"
target datalayout = "e-m:e-p:32:32-p270:32:32-p271:32:32-p272:64:64-f64:32:64-f80:32-n8:16:32-S128"
target triple = "i386-pc-linux-gnu"

%struct.FStar_UInt128_uint128 = type { i64, i64 }

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readnone uwtable willreturn
define dso_local zeroext i8 @Hacl_Policies_declassify_u8(i8 noundef returned zeroext %0) local_unnamed_addr #0 !dbg !23 {
  call void @llvm.dbg.value(metadata i8 %0, metadata !27, metadata !DIExpression()), !dbg !28
  ret i8 %0, !dbg !29
}

; Function Attrs: mustprogress nofree nosync nounwind readnone speculatable willreturn
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readnone uwtable willreturn
define dso_local i32 @Hacl_Policies_declassify_u32(i32 noundef returned %0) local_unnamed_addr #0 !dbg !30 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !34, metadata !DIExpression()), !dbg !35
  ret i32 %0, !dbg !36
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readnone uwtable willreturn
define dso_local i64 @Hacl_Policies_declassify_u64(i64 noundef returned %0) local_unnamed_addr #0 !dbg !37 {
  call void @llvm.dbg.value(metadata i64 %0, metadata !44, metadata !DIExpression()), !dbg !45
  ret i64 %0, !dbg !46
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind uwtable willreturn writeonly
define dso_local void @Hacl_Policies_declassify_u128(%struct.FStar_UInt128_uint128* noalias nocapture writeonly sret(%struct.FStar_UInt128_uint128) align 4 %0, i64 %1, i64 %2) local_unnamed_addr #2 !dbg !47 {
  call void @llvm.dbg.value(metadata i64 %1, metadata !58, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 64)), !dbg !59
  call void @llvm.dbg.value(metadata i64 %2, metadata !58, metadata !DIExpression(DW_OP_LLVM_fragment, 64, 64)), !dbg !59
  %4 = getelementptr inbounds %struct.FStar_UInt128_uint128, %struct.FStar_UInt128_uint128* %0, i32 0, i32 0, !dbg !60
  store i64 %1, i64* %4, align 4, !dbg !60, !tbaa.struct !61
  %5 = getelementptr inbounds %struct.FStar_UInt128_uint128, %struct.FStar_UInt128_uint128* %0, i32 0, i32 1, !dbg !60
  store i64 %2, i64* %5, align 4, !dbg !60, !tbaa.struct !66
  ret void, !dbg !67
}

; Function Attrs: nofree noinline norecurse nosync nounwind uwtable
define dso_local zeroext i8 @Hacl_Policies_cmp_bytes_(i8* nocapture noundef readonly %0, i8* nocapture noundef readonly %1, i32 noundef %2, i8* nocapture noundef %3) local_unnamed_addr #3 !dbg !68 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !73, metadata !DIExpression()), !dbg !84
  call void @llvm.dbg.value(metadata i8* %1, metadata !74, metadata !DIExpression()), !dbg !84
  call void @llvm.dbg.value(metadata i32 %2, metadata !75, metadata !DIExpression()), !dbg !84
  call void @llvm.dbg.value(metadata i8* %3, metadata !76, metadata !DIExpression()), !dbg !84
  call void @llvm.dbg.value(metadata i32 0, metadata !77, metadata !DIExpression()), !dbg !85
  %5 = icmp eq i32 %2, 0, !dbg !86
  br i1 %5, label %6, label %8, !dbg !87

6:                                                ; preds = %8, %4
  %7 = load i8, i8* %3, align 1, !dbg !88, !tbaa !89
  ret i8 %7, !dbg !90

8:                                                ; preds = %4, %8
  %9 = phi i32 [ %17, %8 ], [ 0, %4 ]
  call void @llvm.dbg.value(metadata i32 %9, metadata !77, metadata !DIExpression()), !dbg !85
  %10 = getelementptr inbounds i8, i8* %0, i32 %9, !dbg !91
  %11 = load i8, i8* %10, align 1, !dbg !91, !tbaa !89
  call void @llvm.dbg.value(metadata i8 %11, metadata !79, metadata !DIExpression()), !dbg !92
  %12 = getelementptr inbounds i8, i8* %1, i32 %9, !dbg !93
  %13 = load i8, i8* %12, align 1, !dbg !93, !tbaa !89
  call void @llvm.dbg.value(metadata i8 %13, metadata !82, metadata !DIExpression()), !dbg !92
  %14 = load i8, i8* %3, align 1, !dbg !94, !tbaa !89
  call void @llvm.dbg.value(metadata i8 %14, metadata !83, metadata !DIExpression()), !dbg !92
  %15 = call fastcc zeroext i8 @FStar_UInt8_eq_mask(i8 noundef zeroext %11, i8 noundef zeroext %13), !dbg !95
  %16 = and i8 %15, %14, !dbg !96
  store i8 %16, i8* %3, align 1, !dbg !97, !tbaa !89
  %17 = add nuw i32 %9, 1, !dbg !98
  call void @llvm.dbg.value(metadata i32 %17, metadata !77, metadata !DIExpression()), !dbg !85
  %18 = icmp eq i32 %17, %2, !dbg !86
  br i1 %18, label %6, label %8, !dbg !87, !llvm.loop !99
}

; Function Attrs: argmemonly mustprogress nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0i8(i64 immarg, i8* nocapture) #4

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readnone uwtable willreturn
define internal fastcc zeroext i8 @FStar_UInt8_eq_mask(i8 noundef zeroext %0, i8 noundef zeroext %1) unnamed_addr #0 !dbg !103 {
  call void @llvm.dbg.value(metadata i8 %0, metadata !108, metadata !DIExpression()), !dbg !110
  call void @llvm.dbg.value(metadata i8 %1, metadata !109, metadata !DIExpression()), !dbg !110
  %3 = xor i8 %0, %1, !dbg !111
  %4 = xor i8 %3, -1, !dbg !111
  call void @llvm.dbg.value(metadata i8 %4, metadata !108, metadata !DIExpression()), !dbg !110
  %5 = shl i8 %4, 4, !dbg !112
  %6 = and i8 %5, %4, !dbg !112
  call void @llvm.dbg.value(metadata i8 %6, metadata !108, metadata !DIExpression()), !dbg !110
  %7 = shl i8 %6, 2, !dbg !113
  %8 = and i8 %7, %6, !dbg !113
  call void @llvm.dbg.value(metadata i8 %8, metadata !108, metadata !DIExpression()), !dbg !110
  %9 = shl i8 %8, 1, !dbg !114
  %10 = and i8 %9, %8, !dbg !114
  call void @llvm.dbg.value(metadata i8 %10, metadata !108, metadata !DIExpression()), !dbg !110
  %11 = ashr exact i8 %10, 7, !dbg !115
  ret i8 %11, !dbg !116
}

; Function Attrs: argmemonly mustprogress nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0i8(i64 immarg, i8* nocapture) #4

; Function Attrs: nofree noinline nosync nounwind uwtable
define dso_local zeroext i8 @Hacl_Policies_cmp_bytes(i8* nocapture noundef readonly %0, i8* nocapture noundef readonly %1, i32 noundef %2) local_unnamed_addr #5 !dbg !117 {
  %4 = alloca [1 x i8], align 1
  call void @llvm.dbg.value(metadata i8* %0, metadata !121, metadata !DIExpression()), !dbg !129
  call void @llvm.dbg.value(metadata i8* %1, metadata !122, metadata !DIExpression()), !dbg !129
  call void @llvm.dbg.value(metadata i32 %2, metadata !123, metadata !DIExpression()), !dbg !129
  %5 = getelementptr inbounds [1 x i8], [1 x i8]* %4, i32 0, i32 0, !dbg !130
  call void @llvm.lifetime.start.p0i8(i64 1, i8* nonnull %5) #7, !dbg !130
  call void @llvm.dbg.declare(metadata [1 x i8]* %4, metadata !124, metadata !DIExpression()), !dbg !131
  store i8 -1, i8* %5, align 1, !dbg !132, !tbaa !89
  %6 = call zeroext i8 @Hacl_Policies_cmp_bytes_(i8* noundef %0, i8* noundef %1, i32 noundef %2, i8* noundef nonnull %5), !dbg !133
  call void @llvm.dbg.value(metadata i8 %6, metadata !128, metadata !DIExpression()), !dbg !129
  %7 = xor i8 %6, -1, !dbg !134
  call void @llvm.lifetime.end.p0i8(i64 1, i8* nonnull %5) #7, !dbg !135
  ret i8 %7, !dbg !136
}

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare void @llvm.dbg.value(metadata, metadata, metadata) #6

attributes #0 = { mustprogress nofree noinline norecurse nosync nounwind readnone uwtable willreturn "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="i686" "target-features"="+cx8,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nofree nosync nounwind readnone speculatable willreturn }
attributes #2 = { mustprogress nofree noinline norecurse nosync nounwind uwtable willreturn writeonly "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="i686" "target-features"="+cx8,+x87" "tune-cpu"="generic" }
attributes #3 = { nofree noinline norecurse nosync nounwind uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="i686" "target-features"="+cx8,+x87" "tune-cpu"="generic" }
attributes #4 = { argmemonly mustprogress nofree nosync nounwind willreturn }
attributes #5 = { nofree noinline nosync nounwind uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="i686" "target-features"="+cx8,+x87" "tune-cpu"="generic" }
attributes #6 = { nofree nosync nounwind readnone speculatable willreturn }
attributes #7 = { nounwind }

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!15, !16, !17, !18, !19, !20, !21}
!llvm.ident = !{!22}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "Ubuntu clang version 14.0.0-1ubuntu1.1", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !2, splitDebugInlining: false, nameTableKind: None)
!1 = !DIFile(filename: "hacl-c/hacl-c/Hacl_Policies.c", directory: "/mnt/c/Users/fwill/Documents/HS24/semester_project/tools/binsec/binsec/examples/hacl", checksumkind: CSK_MD5, checksum: "c32c096c79f1b07ee7c518e14d376645")
!2 = !{!3, !8, !11}
!3 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint32_t", file: !4, line: 26, baseType: !5)
!4 = !DIFile(filename: "/usr/include/bits/stdint-uintn.h", directory: "", checksumkind: CSK_MD5, checksum: "2bf2ae53c58c01b1a1b9383b5195125c")
!5 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uint32_t", file: !6, line: 42, baseType: !7)
!6 = !DIFile(filename: "/usr/include/bits/types.h", directory: "", checksumkind: CSK_MD5, checksum: "d108b5f93a74c50510d7d9bc0ab36df9")
!7 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!8 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint8_t", file: !4, line: 24, baseType: !9)
!9 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uint8_t", file: !6, line: 38, baseType: !10)
!10 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!11 = !DIDerivedType(tag: DW_TAG_typedef, name: "int8_t", file: !12, line: 24, baseType: !13)
!12 = !DIFile(filename: "/usr/include/bits/stdint-intn.h", directory: "", checksumkind: CSK_MD5, checksum: "55bcbdc3159515ebd91d351a70d505f4")
!13 = !DIDerivedType(tag: DW_TAG_typedef, name: "__int8_t", file: !6, line: 37, baseType: !14)
!14 = !DIBasicType(name: "signed char", size: 8, encoding: DW_ATE_signed_char)
!15 = !{i32 1, !"NumRegisterParameters", i32 0}
!16 = !{i32 7, !"Dwarf Version", i32 5}
!17 = !{i32 2, !"Debug Info Version", i32 3}
!18 = !{i32 1, !"wchar_size", i32 4}
!19 = !{i32 7, !"PIC Level", i32 2}
!20 = !{i32 7, !"PIE Level", i32 2}
!21 = !{i32 7, !"uwtable", i32 1}
!22 = !{!"Ubuntu clang version 14.0.0-1ubuntu1.1"}
!23 = distinct !DISubprogram(name: "Hacl_Policies_declassify_u8", scope: !1, file: !1, line: 27, type: !24, scopeLine: 28, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !26)
!24 = !DISubroutineType(types: !25)
!25 = !{!8, !8}
!26 = !{!27}
!27 = !DILocalVariable(name: "x", arg: 1, scope: !23, file: !1, line: 27, type: !8)
!28 = !DILocation(line: 0, scope: !23)
!29 = !DILocation(line: 29, column: 3, scope: !23)
!30 = distinct !DISubprogram(name: "Hacl_Policies_declassify_u32", scope: !1, file: !1, line: 32, type: !31, scopeLine: 33, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !33)
!31 = !DISubroutineType(types: !32)
!32 = !{!3, !3}
!33 = !{!34}
!34 = !DILocalVariable(name: "x", arg: 1, scope: !30, file: !1, line: 32, type: !3)
!35 = !DILocation(line: 0, scope: !30)
!36 = !DILocation(line: 34, column: 3, scope: !30)
!37 = distinct !DISubprogram(name: "Hacl_Policies_declassify_u64", scope: !1, file: !1, line: 37, type: !38, scopeLine: 38, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !43)
!38 = !DISubroutineType(types: !39)
!39 = !{!40, !40}
!40 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint64_t", file: !4, line: 27, baseType: !41)
!41 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uint64_t", file: !6, line: 48, baseType: !42)
!42 = !DIBasicType(name: "unsigned long long", size: 64, encoding: DW_ATE_unsigned)
!43 = !{!44}
!44 = !DILocalVariable(name: "x", arg: 1, scope: !37, file: !1, line: 37, type: !40)
!45 = !DILocation(line: 0, scope: !37)
!46 = !DILocation(line: 39, column: 3, scope: !37)
!47 = distinct !DISubprogram(name: "Hacl_Policies_declassify_u128", scope: !1, file: !1, line: 42, type: !48, scopeLine: 43, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !57)
!48 = !DISubroutineType(types: !49)
!49 = !{!50, !50}
!50 = !DIDerivedType(tag: DW_TAG_typedef, name: "FStar_UInt128_t", file: !51, line: 37, baseType: !52)
!51 = !DIFile(filename: "hacl-c/hacl-c/FStar.h", directory: "/mnt/c/Users/fwill/Documents/HS24/semester_project/tools/binsec/binsec/examples/hacl", checksumkind: CSK_MD5, checksum: "f30034e5606e554271b07b1e7e8a42fa")
!52 = !DIDerivedType(tag: DW_TAG_typedef, name: "FStar_UInt128_uint128", file: !51, line: 35, baseType: !53)
!53 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !51, line: 30, size: 128, elements: !54)
!54 = !{!55, !56}
!55 = !DIDerivedType(tag: DW_TAG_member, name: "low", scope: !53, file: !51, line: 32, baseType: !40, size: 64)
!56 = !DIDerivedType(tag: DW_TAG_member, name: "high", scope: !53, file: !51, line: 33, baseType: !40, size: 64, offset: 64)
!57 = !{!58}
!58 = !DILocalVariable(name: "x", arg: 1, scope: !47, file: !1, line: 42, type: !50)
!59 = !DILocation(line: 0, scope: !47)
!60 = !DILocation(line: 44, column: 10, scope: !47)
!61 = !{i64 0, i64 8, !62, i64 8, i64 8, !62}
!62 = !{!63, !63, i64 0}
!63 = !{!"long long", !64, i64 0}
!64 = !{!"omnipotent char", !65, i64 0}
!65 = !{!"Simple C/C++ TBAA"}
!66 = !{i64 0, i64 8, !62}
!67 = !DILocation(line: 44, column: 3, scope: !47)
!68 = distinct !DISubprogram(name: "Hacl_Policies_cmp_bytes_", scope: !1, file: !1, line: 47, type: !69, scopeLine: 48, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !72)
!69 = !DISubroutineType(types: !70)
!70 = !{!8, !71, !71, !3, !71}
!71 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !8, size: 32)
!72 = !{!73, !74, !75, !76, !77, !79, !82, !83}
!73 = !DILocalVariable(name: "b1", arg: 1, scope: !68, file: !1, line: 47, type: !71)
!74 = !DILocalVariable(name: "b2", arg: 2, scope: !68, file: !1, line: 47, type: !71)
!75 = !DILocalVariable(name: "len", arg: 3, scope: !68, file: !1, line: 47, type: !3)
!76 = !DILocalVariable(name: "tmp", arg: 4, scope: !68, file: !1, line: 47, type: !71)
!77 = !DILocalVariable(name: "i", scope: !78, file: !1, line: 49, type: !3)
!78 = distinct !DILexicalBlock(scope: !68, file: !1, line: 49, column: 3)
!79 = !DILocalVariable(name: "bi1", scope: !80, file: !1, line: 51, type: !8)
!80 = distinct !DILexicalBlock(scope: !81, file: !1, line: 50, column: 3)
!81 = distinct !DILexicalBlock(scope: !78, file: !1, line: 49, column: 3)
!82 = !DILocalVariable(name: "bi2", scope: !80, file: !1, line: 52, type: !8)
!83 = !DILocalVariable(name: "z0", scope: !80, file: !1, line: 53, type: !8)
!84 = !DILocation(line: 0, scope: !68)
!85 = !DILocation(line: 0, scope: !78)
!86 = !DILocation(line: 49, column: 37, scope: !81)
!87 = !DILocation(line: 49, column: 3, scope: !78)
!88 = !DILocation(line: 56, column: 10, scope: !68)
!89 = !{!64, !64, i64 0}
!90 = !DILocation(line: 56, column: 3, scope: !68)
!91 = !DILocation(line: 51, column: 19, scope: !80)
!92 = !DILocation(line: 0, scope: !80)
!93 = !DILocation(line: 52, column: 19, scope: !80)
!94 = !DILocation(line: 53, column: 18, scope: !80)
!95 = !DILocation(line: 54, column: 15, scope: !80)
!96 = !DILocation(line: 54, column: 45, scope: !80)
!97 = !DILocation(line: 54, column: 13, scope: !80)
!98 = !DILocation(line: 49, column: 50, scope: !81)
!99 = distinct !{!99, !87, !100, !101, !102}
!100 = !DILocation(line: 55, column: 3, scope: !78)
!101 = !{!"llvm.loop.mustprogress"}
!102 = !{!"llvm.loop.unroll.disable"}
!103 = distinct !DISubprogram(name: "FStar_UInt8_eq_mask", scope: !104, file: !104, line: 118, type: !105, scopeLine: 118, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !107)
!104 = !DIFile(filename: "hacl-c/hacl-c/kremlib_base.h", directory: "/mnt/c/Users/fwill/Documents/HS24/semester_project/tools/binsec/binsec/examples/hacl", checksumkind: CSK_MD5, checksum: "d6560fd4701aab11aac1f04efb4ba74f")
!105 = !DISubroutineType(types: !106)
!106 = !{!8, !8, !8}
!107 = !{!108, !109}
!108 = !DILocalVariable(name: "x", arg: 1, scope: !103, file: !104, line: 118, type: !8)
!109 = !DILocalVariable(name: "y", arg: 2, scope: !103, file: !104, line: 118, type: !8)
!110 = !DILocation(line: 0, scope: !103)
!111 = !DILocation(line: 119, column: 7, scope: !103)
!112 = !DILocation(line: 120, column: 5, scope: !103)
!113 = !DILocation(line: 121, column: 5, scope: !103)
!114 = !DILocation(line: 122, column: 5, scope: !103)
!115 = !DILocation(line: 123, column: 20, scope: !103)
!116 = !DILocation(line: 123, column: 3, scope: !103)
!117 = distinct !DISubprogram(name: "Hacl_Policies_cmp_bytes", scope: !1, file: !1, line: 59, type: !118, scopeLine: 60, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !120)
!118 = !DISubroutineType(types: !119)
!119 = !{!8, !71, !71, !3}
!120 = !{!121, !122, !123, !124, !128}
!121 = !DILocalVariable(name: "b1", arg: 1, scope: !117, file: !1, line: 59, type: !71)
!122 = !DILocalVariable(name: "b2", arg: 2, scope: !117, file: !1, line: 59, type: !71)
!123 = !DILocalVariable(name: "len", arg: 3, scope: !117, file: !1, line: 59, type: !3)
!124 = !DILocalVariable(name: "tmp", scope: !117, file: !1, line: 61, type: !125)
!125 = !DICompositeType(tag: DW_TAG_array_type, baseType: !8, size: 8, elements: !126)
!126 = !{!127}
!127 = !DISubrange(count: 1)
!128 = !DILocalVariable(name: "z", scope: !117, file: !1, line: 63, type: !8)
!129 = !DILocation(line: 0, scope: !117)
!130 = !DILocation(line: 61, column: 3, scope: !117)
!131 = !DILocation(line: 61, column: 11, scope: !117)
!132 = !DILocation(line: 62, column: 11, scope: !117)
!133 = !DILocation(line: 63, column: 15, scope: !117)
!134 = !DILocation(line: 64, column: 10, scope: !117)
!135 = !DILocation(line: 65, column: 1, scope: !117)
!136 = !DILocation(line: 64, column: 3, scope: !117)
