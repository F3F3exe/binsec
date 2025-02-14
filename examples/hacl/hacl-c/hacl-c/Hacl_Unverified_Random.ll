; ModuleID = 'hacl-c/hacl-c/Hacl_Unverified_Random.c'
source_filename = "hacl-c/hacl-c/Hacl_Unverified_Random.c"
target datalayout = "e-m:e-p:32:32-p270:32:32-p271:32:32-p272:64:64-f64:32:64-f80:32-n8:16:32-S128"
target triple = "i386-pc-linux-gnu"

@.str = private unnamed_addr constant [13 x i8] c"/dev/urandom\00", align 1
@.str.2 = private unnamed_addr constant [55 x i8] c"Error on reading, expected %llu bytes, got %llu bytes\0A\00", align 1
@.str.3 = private unnamed_addr constant [44 x i8] c"Cannot allocate %llu bytes aligned to %llu\0A\00", align 1
@str = private unnamed_addr constant [25 x i8] c"Cannot open /dev/urandom\00", align 1

; Function Attrs: nounwind uwtable
define dso_local zeroext i1 @read_random_bytes(i64 noundef %0, i8* nocapture noundef %1) local_unnamed_addr #0 !dbg !17 {
  call void @llvm.dbg.value(metadata i64 %0, metadata !26, metadata !DIExpression()), !dbg !32
  call void @llvm.dbg.value(metadata i8* %1, metadata !27, metadata !DIExpression()), !dbg !32
  %3 = call i32 (i8*, i32, ...) @open(i8* noundef getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i32 0, i32 0), i32 noundef 0) #11, !dbg !33
  call void @llvm.dbg.value(metadata i32 %3, metadata !28, metadata !DIExpression()), !dbg !32
  %4 = icmp eq i32 %3, -1, !dbg !34
  br i1 %4, label %5, label %7, !dbg !36

5:                                                ; preds = %2
  %6 = call i32 @puts(i8* nonnull dereferenceable(1) getelementptr inbounds ([25 x i8], [25 x i8]* @str, i32 0, i32 0)), !dbg !37
  br label %16, !dbg !39

7:                                                ; preds = %2
  call void @llvm.dbg.value(metadata i8 1, metadata !30, metadata !DIExpression()), !dbg !32
  %8 = trunc i64 %0 to i32, !dbg !40
  %9 = call i32 @read(i32 noundef %3, i8* noundef %1, i32 noundef %8) #11, !dbg !41
  %10 = sext i32 %9 to i64, !dbg !41
  call void @llvm.dbg.value(metadata i64 %10, metadata !31, metadata !DIExpression()), !dbg !32
  %11 = icmp eq i64 %10, %0, !dbg !42
  br i1 %11, label %14, label %12, !dbg !44

12:                                               ; preds = %7
  %13 = call i32 (i8*, ...) @printf(i8* noundef nonnull dereferenceable(1) getelementptr inbounds ([55 x i8], [55 x i8]* @.str.2, i32 0, i32 0), i64 noundef %0, i64 noundef %10), !dbg !45
  call void @llvm.dbg.value(metadata i8 0, metadata !30, metadata !DIExpression()), !dbg !32
  br label %14, !dbg !47

14:                                               ; preds = %12, %7
  call void @llvm.dbg.value(metadata i8 undef, metadata !30, metadata !DIExpression()), !dbg !32
  %15 = call i32 @close(i32 noundef %3) #11, !dbg !48
  br label %16

16:                                               ; preds = %14, %5
  %17 = phi i1 [ false, %5 ], [ %11, %14 ], !dbg !32
  ret i1 %17, !dbg !49
}

; Function Attrs: argmemonly mustprogress nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0i8(i64 immarg, i8* nocapture) #1

; Function Attrs: nofree
declare !dbg !50 noundef i32 @open(i8* nocapture noundef readonly, i32 noundef, ...) local_unnamed_addr #2

; Function Attrs: nofree nounwind
declare noundef i32 @printf(i8* nocapture noundef readonly, ...) local_unnamed_addr #3

; Function Attrs: nofree
declare !dbg !58 noundef i32 @read(i32 noundef, i8* nocapture noundef, i32 noundef) local_unnamed_addr #2

declare !dbg !68 i32 @close(i32 noundef) local_unnamed_addr #4

; Function Attrs: argmemonly mustprogress nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0i8(i64 immarg, i8* nocapture) #1

; Function Attrs: nofree nounwind uwtable
define dso_local i8* @hacl_aligned_malloc(i32 noundef %0, i32 noundef %1) local_unnamed_addr #5 !dbg !71 {
  %3 = alloca i8*, align 4
  call void @llvm.dbg.value(metadata i32 %0, metadata !75, metadata !DIExpression()), !dbg !78
  call void @llvm.dbg.value(metadata i32 %1, metadata !76, metadata !DIExpression()), !dbg !78
  %4 = bitcast i8** %3 to i8*, !dbg !79
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %4) #11, !dbg !79
  call void @llvm.dbg.value(metadata i8* null, metadata !77, metadata !DIExpression()), !dbg !78
  store i8* null, i8** %3, align 4, !dbg !80, !tbaa !81
  call void @llvm.dbg.value(metadata i8** %3, metadata !77, metadata !DIExpression(DW_OP_deref)), !dbg !78
  %5 = call i32 @posix_memalign(i8** noundef nonnull %3, i32 noundef %0, i32 noundef %1) #11, !dbg !85
  %6 = icmp eq i32 %5, 0, !dbg !85
  br i1 %6, label %11, label %7, !dbg !87

7:                                                ; preds = %2
  %8 = zext i32 %1 to i64, !dbg !88
  %9 = zext i32 %0 to i64, !dbg !90
  %10 = call i32 (i8*, ...) @printf(i8* noundef nonnull dereferenceable(1) getelementptr inbounds ([44 x i8], [44 x i8]* @.str.3, i32 0, i32 0), i64 noundef %8, i64 noundef %9), !dbg !91
  br label %13, !dbg !92

11:                                               ; preds = %2
  %12 = load i8*, i8** %3, align 4, !dbg !93, !tbaa !81
  call void @llvm.dbg.value(metadata i8* %12, metadata !77, metadata !DIExpression()), !dbg !78
  br label %13, !dbg !94

13:                                               ; preds = %11, %7
  %14 = phi i8* [ null, %7 ], [ %12, %11 ], !dbg !78
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %4) #11, !dbg !95
  ret i8* %14, !dbg !95
}

; Function Attrs: nofree nounwind
declare !dbg !96 i32 @posix_memalign(i8** noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nounwind uwtable willreturn
define dso_local void @hacl_aligned_free(i8* nocapture noundef %0) local_unnamed_addr #6 !dbg !101 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !105, metadata !DIExpression()), !dbg !106
  call void @free(i8* noundef %0) #11, !dbg !107
  ret void, !dbg !108
}

; Function Attrs: inaccessiblemem_or_argmemonly mustprogress nounwind willreturn
declare void @free(i8* nocapture noundef) local_unnamed_addr #7

; Function Attrs: nounwind uwtable
define dso_local void @randombytes(i8* nocapture noundef %0, i64 noundef %1) local_unnamed_addr #0 !dbg !109 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !113, metadata !DIExpression()), !dbg !115
  call void @llvm.dbg.value(metadata i64 %1, metadata !114, metadata !DIExpression()), !dbg !115
  call void @llvm.dbg.value(metadata i64 %1, metadata !26, metadata !DIExpression()) #11, !dbg !116
  call void @llvm.dbg.value(metadata i8* %0, metadata !27, metadata !DIExpression()) #11, !dbg !116
  %3 = call i32 (i8*, i32, ...) @open(i8* noundef getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i32 0, i32 0), i32 noundef 0) #11, !dbg !119
  call void @llvm.dbg.value(metadata i32 %3, metadata !28, metadata !DIExpression()) #11, !dbg !116
  %4 = icmp eq i32 %3, -1, !dbg !120
  br i1 %4, label %5, label %7, !dbg !121

5:                                                ; preds = %2
  %6 = call i32 @puts(i8* nonnull dereferenceable(1) getelementptr inbounds ([25 x i8], [25 x i8]* @str, i32 0, i32 0)) #11, !dbg !122
  br label %15, !dbg !123

7:                                                ; preds = %2
  call void @llvm.dbg.value(metadata i8 1, metadata !30, metadata !DIExpression()) #11, !dbg !116
  %8 = trunc i64 %1 to i32, !dbg !124
  %9 = call i32 @read(i32 noundef %3, i8* noundef %0, i32 noundef %8) #11, !dbg !125
  %10 = sext i32 %9 to i64, !dbg !125
  call void @llvm.dbg.value(metadata i64 %10, metadata !31, metadata !DIExpression()) #11, !dbg !116
  %11 = icmp eq i64 %10, %1, !dbg !126
  br i1 %11, label %16, label %12, !dbg !127

12:                                               ; preds = %7
  %13 = call i32 (i8*, ...) @printf(i8* noundef nonnull dereferenceable(1) getelementptr inbounds ([55 x i8], [55 x i8]* @.str.2, i32 0, i32 0), i64 noundef %1, i64 noundef %10) #11, !dbg !128
  call void @llvm.dbg.value(metadata i8 0, metadata !30, metadata !DIExpression()) #11, !dbg !116
  call void @llvm.dbg.value(metadata i8 undef, metadata !30, metadata !DIExpression()) #11, !dbg !116
  %14 = call i32 @close(i32 noundef %3) #11, !dbg !129
  br label %15, !dbg !123

15:                                               ; preds = %12, %5
  call void @exit(i32 noundef 1) #12, !dbg !130
  unreachable, !dbg !130

16:                                               ; preds = %7
  call void @llvm.dbg.value(metadata i8 undef, metadata !30, metadata !DIExpression()) #11, !dbg !116
  %17 = call i32 @close(i32 noundef %3) #11, !dbg !129
  ret void, !dbg !131
}

; Function Attrs: noreturn nounwind
declare void @exit(i32 noundef) local_unnamed_addr #8

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare void @llvm.dbg.value(metadata, metadata, metadata) #9

; Function Attrs: nofree nounwind
declare noundef i32 @puts(i8* nocapture noundef readonly) local_unnamed_addr #10

attributes #0 = { nounwind uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="i686" "target-features"="+cx8,+x87" "tune-cpu"="generic" }
attributes #1 = { argmemonly mustprogress nofree nosync nounwind willreturn }
attributes #2 = { nofree "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="i686" "target-features"="+cx8,+x87" "tune-cpu"="generic" }
attributes #3 = { nofree nounwind "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="i686" "target-features"="+cx8,+x87" "tune-cpu"="generic" }
attributes #4 = { "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="i686" "target-features"="+cx8,+x87" "tune-cpu"="generic" }
attributes #5 = { nofree nounwind uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="i686" "target-features"="+cx8,+x87" "tune-cpu"="generic" }
attributes #6 = { mustprogress nounwind uwtable willreturn "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="i686" "target-features"="+cx8,+x87" "tune-cpu"="generic" }
attributes #7 = { inaccessiblemem_or_argmemonly mustprogress nounwind willreturn "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="i686" "target-features"="+cx8,+x87" "tune-cpu"="generic" }
attributes #8 = { noreturn nounwind "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="i686" "target-features"="+cx8,+x87" "tune-cpu"="generic" }
attributes #9 = { nofree nosync nounwind readnone speculatable willreturn }
attributes #10 = { nofree nounwind }
attributes #11 = { nounwind }
attributes #12 = { noreturn nounwind }

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!9, !10, !11, !12, !13, !14, !15}
!llvm.ident = !{!16}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "Ubuntu clang version 14.0.0-1ubuntu1.1", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !2, splitDebugInlining: false, nameTableKind: None)
!1 = !DIFile(filename: "hacl-c/hacl-c/Hacl_Unverified_Random.c", directory: "/mnt/c/Users/fwill/Documents/HS24/semester_project/tools/binsec/binsec/examples/hacl", checksumkind: CSK_MD5, checksum: "f256dfb5f3d95119a2728871d3a892e8")
!2 = !{!3, !4}
!3 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 32)
!4 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint64_t", file: !5, line: 27, baseType: !6)
!5 = !DIFile(filename: "/usr/include/bits/stdint-uintn.h", directory: "", checksumkind: CSK_MD5, checksum: "2bf2ae53c58c01b1a1b9383b5195125c")
!6 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uint64_t", file: !7, line: 48, baseType: !8)
!7 = !DIFile(filename: "/usr/include/bits/types.h", directory: "", checksumkind: CSK_MD5, checksum: "d108b5f93a74c50510d7d9bc0ab36df9")
!8 = !DIBasicType(name: "unsigned long long", size: 64, encoding: DW_ATE_unsigned)
!9 = !{i32 1, !"NumRegisterParameters", i32 0}
!10 = !{i32 7, !"Dwarf Version", i32 5}
!11 = !{i32 2, !"Debug Info Version", i32 3}
!12 = !{i32 1, !"wchar_size", i32 4}
!13 = !{i32 7, !"PIC Level", i32 2}
!14 = !{i32 7, !"PIE Level", i32 2}
!15 = !{i32 7, !"uwtable", i32 1}
!16 = !{!"Ubuntu clang version 14.0.0-1ubuntu1.1"}
!17 = distinct !DISubprogram(name: "read_random_bytes", scope: !1, file: !1, line: 70, type: !18, scopeLine: 70, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !25)
!18 = !DISubroutineType(types: !19)
!19 = !{!20, !4, !21}
!20 = !DIBasicType(name: "_Bool", size: 8, encoding: DW_ATE_boolean)
!21 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !22, size: 32)
!22 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint8_t", file: !5, line: 24, baseType: !23)
!23 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uint8_t", file: !7, line: 38, baseType: !24)
!24 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!25 = !{!26, !27, !28, !30, !31}
!26 = !DILocalVariable(name: "len", arg: 1, scope: !17, file: !1, line: 70, type: !4)
!27 = !DILocalVariable(name: "buf", arg: 2, scope: !17, file: !1, line: 70, type: !21)
!28 = !DILocalVariable(name: "fd", scope: !17, file: !1, line: 71, type: !29)
!29 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!30 = !DILocalVariable(name: "pass", scope: !17, file: !1, line: 76, type: !20)
!31 = !DILocalVariable(name: "res", scope: !17, file: !1, line: 77, type: !4)
!32 = !DILocation(line: 0, scope: !17)
!33 = !DILocation(line: 71, column: 12, scope: !17)
!34 = !DILocation(line: 72, column: 10, scope: !35)
!35 = distinct !DILexicalBlock(scope: !17, file: !1, line: 72, column: 7)
!36 = !DILocation(line: 72, column: 7, scope: !17)
!37 = !DILocation(line: 73, column: 5, scope: !38)
!38 = distinct !DILexicalBlock(scope: !35, file: !1, line: 72, column: 17)
!39 = !DILocation(line: 74, column: 5, scope: !38)
!40 = !DILocation(line: 77, column: 32, scope: !17)
!41 = !DILocation(line: 77, column: 18, scope: !17)
!42 = !DILocation(line: 78, column: 11, scope: !43)
!43 = distinct !DILexicalBlock(scope: !17, file: !1, line: 78, column: 7)
!44 = !DILocation(line: 78, column: 7, scope: !17)
!45 = !DILocation(line: 79, column: 5, scope: !46)
!46 = distinct !DILexicalBlock(scope: !43, file: !1, line: 78, column: 19)
!47 = !DILocation(line: 81, column: 3, scope: !46)
!48 = !DILocation(line: 82, column: 3, scope: !17)
!49 = !DILocation(line: 84, column: 1, scope: !17)
!50 = !DISubprogram(name: "open", scope: !51, file: !51, line: 181, type: !52, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !57)
!51 = !DIFile(filename: "/usr/include/fcntl.h", directory: "", checksumkind: CSK_MD5, checksum: "1a9bb91818c37dc7bc291ca6e49fc221")
!52 = !DISubroutineType(types: !53)
!53 = !{!29, !54, !29, null}
!54 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !55, size: 32)
!55 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !56)
!56 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!57 = !{}
!58 = !DISubprogram(name: "read", scope: !59, file: !59, line: 371, type: !60, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !57)
!59 = !DIFile(filename: "/usr/include/unistd.h", directory: "", checksumkind: CSK_MD5, checksum: "ed37c2e6f30ba31a8b41e4d70547c39c")
!60 = !DISubroutineType(types: !61)
!61 = !{!62, !29, !3, !65}
!62 = !DIDerivedType(tag: DW_TAG_typedef, name: "ssize_t", file: !63, line: 77, baseType: !64)
!63 = !DIFile(filename: "/usr/include/stdio.h", directory: "", checksumkind: CSK_MD5, checksum: "f31eefcc3f15835fc5a4023a625cf609")
!64 = !DIDerivedType(tag: DW_TAG_typedef, name: "__ssize_t", file: !7, line: 194, baseType: !29)
!65 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !66, line: 46, baseType: !67)
!66 = !DIFile(filename: "/usr/lib/llvm-14/lib/clang/14.0.0/include/stddef.h", directory: "", checksumkind: CSK_MD5, checksum: "2499dd2361b915724b073282bea3a7bc")
!67 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!68 = !DISubprogram(name: "close", scope: !59, file: !59, line: 358, type: !69, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !57)
!69 = !DISubroutineType(types: !70)
!70 = !{!29, !29}
!71 = distinct !DISubprogram(name: "hacl_aligned_malloc", scope: !1, file: !1, line: 86, type: !72, scopeLine: 86, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !74)
!72 = !DISubroutineType(types: !73)
!73 = !{!3, !65, !65}
!74 = !{!75, !76, !77}
!75 = !DILocalVariable(name: "alignment", arg: 1, scope: !71, file: !1, line: 86, type: !65)
!76 = !DILocalVariable(name: "size", arg: 2, scope: !71, file: !1, line: 86, type: !65)
!77 = !DILocalVariable(name: "res", scope: !71, file: !1, line: 87, type: !3)
!78 = !DILocation(line: 0, scope: !71)
!79 = !DILocation(line: 87, column: 3, scope: !71)
!80 = !DILocation(line: 87, column: 10, scope: !71)
!81 = !{!82, !82, i64 0}
!82 = !{!"any pointer", !83, i64 0}
!83 = !{!"omnipotent char", !84, i64 0}
!84 = !{!"Simple C/C++ TBAA"}
!85 = !DILocation(line: 88, column: 7, scope: !86)
!86 = distinct !DILexicalBlock(scope: !71, file: !1, line: 88, column: 7)
!87 = !DILocation(line: 88, column: 7, scope: !71)
!88 = !DILocation(line: 89, column: 74, scope: !89)
!89 = distinct !DILexicalBlock(scope: !86, file: !1, line: 88, column: 46)
!90 = !DILocation(line: 89, column: 91, scope: !89)
!91 = !DILocation(line: 89, column: 5, scope: !89)
!92 = !DILocation(line: 90, column: 5, scope: !89)
!93 = !DILocation(line: 92, column: 10, scope: !71)
!94 = !DILocation(line: 92, column: 3, scope: !71)
!95 = !DILocation(line: 93, column: 1, scope: !71)
!96 = !DISubprogram(name: "posix_memalign", scope: !97, file: !97, line: 586, type: !98, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !57)
!97 = !DIFile(filename: "/usr/include/stdlib.h", directory: "", checksumkind: CSK_MD5, checksum: "02258fad21adf111bb9df9825e61954a")
!98 = !DISubroutineType(types: !99)
!99 = !{!29, !100, !65, !65}
!100 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3, size: 32)
!101 = distinct !DISubprogram(name: "hacl_aligned_free", scope: !1, file: !1, line: 95, type: !102, scopeLine: 95, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !104)
!102 = !DISubroutineType(types: !103)
!103 = !{null, !3}
!104 = !{!105}
!105 = !DILocalVariable(name: "ptr", arg: 1, scope: !101, file: !1, line: 95, type: !3)
!106 = !DILocation(line: 0, scope: !101)
!107 = !DILocation(line: 96, column: 3, scope: !101)
!108 = !DILocation(line: 97, column: 1, scope: !101)
!109 = distinct !DISubprogram(name: "randombytes", scope: !1, file: !1, line: 101, type: !110, scopeLine: 101, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !112)
!110 = !DISubroutineType(types: !111)
!111 = !{null, !21, !4}
!112 = !{!113, !114}
!113 = !DILocalVariable(name: "x", arg: 1, scope: !109, file: !1, line: 101, type: !21)
!114 = !DILocalVariable(name: "len", arg: 2, scope: !109, file: !1, line: 101, type: !4)
!115 = !DILocation(line: 0, scope: !109)
!116 = !DILocation(line: 0, scope: !17, inlinedAt: !117)
!117 = distinct !DILocation(line: 102, column: 10, scope: !118)
!118 = distinct !DILexicalBlock(scope: !109, file: !1, line: 102, column: 7)
!119 = !DILocation(line: 71, column: 12, scope: !17, inlinedAt: !117)
!120 = !DILocation(line: 72, column: 10, scope: !35, inlinedAt: !117)
!121 = !DILocation(line: 72, column: 7, scope: !17, inlinedAt: !117)
!122 = !DILocation(line: 73, column: 5, scope: !38, inlinedAt: !117)
!123 = !DILocation(line: 102, column: 7, scope: !109)
!124 = !DILocation(line: 77, column: 32, scope: !17, inlinedAt: !117)
!125 = !DILocation(line: 77, column: 18, scope: !17, inlinedAt: !117)
!126 = !DILocation(line: 78, column: 11, scope: !43, inlinedAt: !117)
!127 = !DILocation(line: 78, column: 7, scope: !17, inlinedAt: !117)
!128 = !DILocation(line: 79, column: 5, scope: !46, inlinedAt: !117)
!129 = !DILocation(line: 82, column: 3, scope: !17, inlinedAt: !117)
!130 = !DILocation(line: 103, column: 5, scope: !118)
!131 = !DILocation(line: 104, column: 1, scope: !109)
