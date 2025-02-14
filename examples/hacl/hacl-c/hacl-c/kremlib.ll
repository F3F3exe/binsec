; ModuleID = 'hacl-c/hacl-c/kremlib.c'
source_filename = "hacl-c/hacl-c/kremlib.c"
target datalayout = "e-m:e-p:32:32-p270:32:32-p271:32:32-p272:64:64-f64:32:64-f80:32-n8:16:32-S128"
target triple = "i386-pc-linux-gnu"

@exit_success = dso_local local_unnamed_addr global i32 0, align 4, !dbg !0
@exit_failure = dso_local local_unnamed_addr global i32 1, align 4, !dbg !5
@.str = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@.str.1 = private unnamed_addr constant [5 x i8] c"%02x\00", align 1

; Function Attrs: nofree noinline nounwind uwtable
define dso_local void @print_string(i8* noundef %0) local_unnamed_addr #0 !dbg !16 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !23, metadata !DIExpression()), !dbg !24
  %2 = call i32 (i8*, ...) @printf(i8* noundef nonnull dereferenceable(1) getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i32 0, i32 0), i8* noundef %0), !dbg !25
  ret void, !dbg !26
}

; Function Attrs: nofree nounwind
declare noundef i32 @printf(i8* nocapture noundef readonly, ...) local_unnamed_addr #1

; Function Attrs: nofree noinline nounwind uwtable
define dso_local void @print_bytes(i8* nocapture noundef readonly %0, i32 noundef %1) local_unnamed_addr #0 !dbg !27 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !40, metadata !DIExpression()), !dbg !43
  call void @llvm.dbg.value(metadata i32 %1, metadata !41, metadata !DIExpression()), !dbg !43
  call void @llvm.dbg.value(metadata i32 0, metadata !42, metadata !DIExpression()), !dbg !43
  %3 = icmp eq i32 %1, 0, !dbg !44
  br i1 %3, label %12, label %4, !dbg !47

4:                                                ; preds = %2, %4
  %5 = phi i32 [ %10, %4 ], [ 0, %2 ]
  call void @llvm.dbg.value(metadata i32 %5, metadata !42, metadata !DIExpression()), !dbg !43
  %6 = getelementptr inbounds i8, i8* %0, i32 %5, !dbg !48
  %7 = load i8, i8* %6, align 1, !dbg !48, !tbaa !50
  %8 = zext i8 %7 to i32, !dbg !48
  %9 = call i32 (i8*, ...) @printf(i8* noundef nonnull dereferenceable(1) getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i32 0, i32 0), i32 noundef %8), !dbg !53
  %10 = add nuw i32 %5, 1, !dbg !54
  call void @llvm.dbg.value(metadata i32 %10, metadata !42, metadata !DIExpression()), !dbg !43
  %11 = icmp eq i32 %10, %1, !dbg !44
  br i1 %11, label %12, label %4, !dbg !47, !llvm.loop !55

12:                                               ; preds = %4, %2
  %13 = call i32 @putchar(i32 10), !dbg !59
  ret void, !dbg !60
}

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare void @llvm.dbg.value(metadata, metadata, metadata) #2

; Function Attrs: nofree nounwind
declare noundef i32 @putchar(i32 noundef) local_unnamed_addr #3

attributes #0 = { nofree noinline nounwind uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="i686" "target-features"="+cx8,+x87" "tune-cpu"="generic" }
attributes #1 = { nofree nounwind "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="i686" "target-features"="+cx8,+x87" "tune-cpu"="generic" }
attributes #2 = { nofree nosync nounwind readnone speculatable willreturn }
attributes #3 = { nofree nounwind }

!llvm.dbg.cu = !{!2}
!llvm.module.flags = !{!8, !9, !10, !11, !12, !13, !14}
!llvm.ident = !{!15}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(name: "exit_success", scope: !2, file: !3, line: 26, type: !7, isLocal: false, isDefinition: true)
!2 = distinct !DICompileUnit(language: DW_LANG_C99, file: !3, producer: "Ubuntu clang version 14.0.0-1ubuntu1.1", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, globals: !4, splitDebugInlining: false, nameTableKind: None)
!3 = !DIFile(filename: "hacl-c/hacl-c/kremlib.c", directory: "/mnt/c/Users/fwill/Documents/HS24/semester_project/tools/binsec/binsec/examples/hacl", checksumkind: CSK_MD5, checksum: "4a8ab9216d6c279c0b97cda2252b6fc0")
!4 = !{!0, !5}
!5 = !DIGlobalVariableExpression(var: !6, expr: !DIExpression())
!6 = distinct !DIGlobalVariable(name: "exit_failure", scope: !2, file: !3, line: 27, type: !7, isLocal: false, isDefinition: true)
!7 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!8 = !{i32 1, !"NumRegisterParameters", i32 0}
!9 = !{i32 7, !"Dwarf Version", i32 5}
!10 = !{i32 2, !"Debug Info Version", i32 3}
!11 = !{i32 1, !"wchar_size", i32 4}
!12 = !{i32 7, !"PIC Level", i32 2}
!13 = !{i32 7, !"PIE Level", i32 2}
!14 = !{i32 7, !"uwtable", i32 1}
!15 = !{!"Ubuntu clang version 14.0.0-1ubuntu1.1"}
!16 = distinct !DISubprogram(name: "print_string", scope: !3, file: !3, line: 29, type: !17, scopeLine: 29, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !22)
!17 = !DISubroutineType(types: !18)
!18 = !{null, !19}
!19 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !20, size: 32)
!20 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !21)
!21 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!22 = !{!23}
!23 = !DILocalVariable(name: "s", arg: 1, scope: !16, file: !3, line: 29, type: !19)
!24 = !DILocation(line: 0, scope: !16)
!25 = !DILocation(line: 30, column: 3, scope: !16)
!26 = !DILocation(line: 31, column: 1, scope: !16)
!27 = distinct !DISubprogram(name: "print_bytes", scope: !3, file: !3, line: 33, type: !28, scopeLine: 33, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !39)
!28 = !DISubroutineType(types: !29)
!29 = !{null, !30, !36}
!30 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !31, size: 32)
!31 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint8_t", file: !32, line: 24, baseType: !33)
!32 = !DIFile(filename: "/usr/include/bits/stdint-uintn.h", directory: "", checksumkind: CSK_MD5, checksum: "2bf2ae53c58c01b1a1b9383b5195125c")
!33 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uint8_t", file: !34, line: 38, baseType: !35)
!34 = !DIFile(filename: "/usr/include/bits/types.h", directory: "", checksumkind: CSK_MD5, checksum: "d108b5f93a74c50510d7d9bc0ab36df9")
!35 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!36 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint32_t", file: !32, line: 26, baseType: !37)
!37 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uint32_t", file: !34, line: 42, baseType: !38)
!38 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!39 = !{!40, !41, !42}
!40 = !DILocalVariable(name: "b", arg: 1, scope: !27, file: !3, line: 33, type: !30)
!41 = !DILocalVariable(name: "len", arg: 2, scope: !27, file: !3, line: 33, type: !36)
!42 = !DILocalVariable(name: "i", scope: !27, file: !3, line: 34, type: !36)
!43 = !DILocation(line: 0, scope: !27)
!44 = !DILocation(line: 35, column: 17, scope: !45)
!45 = distinct !DILexicalBlock(scope: !46, file: !3, line: 35, column: 3)
!46 = distinct !DILexicalBlock(scope: !27, file: !3, line: 35, column: 3)
!47 = !DILocation(line: 35, column: 3, scope: !46)
!48 = !DILocation(line: 36, column: 20, scope: !49)
!49 = distinct !DILexicalBlock(scope: !45, file: !3, line: 35, column: 28)
!50 = !{!51, !51, i64 0}
!51 = !{!"omnipotent char", !52, i64 0}
!52 = !{!"Simple C/C++ TBAA"}
!53 = !DILocation(line: 36, column: 5, scope: !49)
!54 = !DILocation(line: 35, column: 25, scope: !45)
!55 = distinct !{!55, !47, !56, !57, !58}
!56 = !DILocation(line: 37, column: 3, scope: !46)
!57 = !{!"llvm.loop.mustprogress"}
!58 = !{!"llvm.loop.unroll.disable"}
!59 = !DILocation(line: 38, column: 3, scope: !27)
!60 = !DILocation(line: 39, column: 1, scope: !27)
