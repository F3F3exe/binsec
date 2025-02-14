; ModuleID = 'hacl-c/hacl-c/Hacl_Chacha20Poly1305.c'
source_filename = "hacl-c/hacl-c/Hacl_Chacha20Poly1305.c"
target datalayout = "e-m:e-p:32:32-p270:32:32-p271:32:32-p272:64:64-f64:32:64-f80:32-n8:16:32-S128"
target triple = "i386-pc-linux-gnu"

%struct.Hacl_Impl_Poly1305_64_State_poly1305_state = type { i64*, i64* }

@Hacl_Chacha20Poly1305_noncelen = dso_local local_unnamed_addr global i32 12, align 4, !dbg !0
@Hacl_Chacha20Poly1305_keylen = dso_local local_unnamed_addr global i32 32, align 4, !dbg !17
@Hacl_Chacha20Poly1305_maclen = dso_local local_unnamed_addr global i32 16, align 4, !dbg !25

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind uwtable willreturn writeonly
define dso_local void @Hacl_Chacha20Poly1305_encode_length(i8* nocapture noundef writeonly %0, i32 noundef %1, i32 noundef %2) local_unnamed_addr #0 !dbg !35 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !40, metadata !DIExpression()), !dbg !44
  call void @llvm.dbg.value(metadata i32 %1, metadata !41, metadata !DIExpression()), !dbg !44
  call void @llvm.dbg.value(metadata i32 %2, metadata !42, metadata !DIExpression()), !dbg !44
  %4 = zext i32 %1 to i64, !dbg !45
  call fastcc void @store64(i8* noundef %0, i64 noundef %4), !dbg !45
  %5 = getelementptr inbounds i8, i8* %0, i32 8, !dbg !46
  call void @llvm.dbg.value(metadata i8* %5, metadata !43, metadata !DIExpression()), !dbg !44
  %6 = zext i32 %2 to i64, !dbg !47
  call fastcc void @store64(i8* noundef nonnull %5, i64 noundef %6), !dbg !47
  ret void, !dbg !48
}

; Function Attrs: mustprogress nofree nosync nounwind readnone speculatable willreturn
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind uwtable willreturn writeonly
define internal fastcc void @store64(i8* nocapture noundef writeonly %0, i64 noundef %1) unnamed_addr #0 !dbg !49 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !53, metadata !DIExpression()), !dbg !55
  call void @llvm.dbg.value(metadata i64 %1, metadata !54, metadata !DIExpression()), !dbg !55
  %3 = bitcast i8* %0 to i64*, !dbg !56
  store i64 %1, i64* %3, align 1, !dbg !56
  ret void, !dbg !57
}

; Function Attrs: argmemonly mustprogress nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0i8(i64 immarg, i8* nocapture) #2

; Function Attrs: argmemonly mustprogress nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0i8(i64 immarg, i8* nocapture) #2

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @Hacl_Chacha20Poly1305_aead_encrypt_(i8* noundef %0, i8* noundef %1, i8* noundef %2, i32 noundef %3, i8* noundef %4, i32 noundef %5, i8* noundef %6, i8* noundef %7) local_unnamed_addr #3 !dbg !58 {
  %9 = alloca [80 x i8], align 1
  call void @llvm.dbg.value(metadata i8* %0, metadata !62, metadata !DIExpression()), !dbg !76
  call void @llvm.dbg.value(metadata i8* %1, metadata !63, metadata !DIExpression()), !dbg !76
  call void @llvm.dbg.value(metadata i8* %2, metadata !64, metadata !DIExpression()), !dbg !76
  call void @llvm.dbg.value(metadata i32 %3, metadata !65, metadata !DIExpression()), !dbg !76
  call void @llvm.dbg.value(metadata i8* %4, metadata !66, metadata !DIExpression()), !dbg !76
  call void @llvm.dbg.value(metadata i32 %5, metadata !67, metadata !DIExpression()), !dbg !76
  call void @llvm.dbg.value(metadata i8* %6, metadata !68, metadata !DIExpression()), !dbg !76
  call void @llvm.dbg.value(metadata i8* %7, metadata !69, metadata !DIExpression()), !dbg !76
  %10 = getelementptr inbounds [80 x i8], [80 x i8]* %9, i32 0, i32 0, !dbg !77
  call void @llvm.lifetime.start.p0i8(i64 80, i8* nonnull %10) #7, !dbg !77
  call void @llvm.dbg.declare(metadata [80 x i8]* %9, metadata !70, metadata !DIExpression()), !dbg !78
  call void @llvm.memset.p0i8.i32(i8* noundef nonnull align 1 dereferenceable(80) %10, i8 0, i32 80, i1 false), !dbg !78
  call void @llvm.dbg.value(metadata i8* %10, metadata !74, metadata !DIExpression()), !dbg !76
  %11 = getelementptr inbounds [80 x i8], [80 x i8]* %9, i32 0, i32 64, !dbg !79
  call void @llvm.dbg.value(metadata i8* %11, metadata !75, metadata !DIExpression()), !dbg !76
  call void @Hacl_Chacha20Poly1305_encode_length(i8* noundef nonnull %11, i32 noundef %5, i32 noundef %3), !dbg !80
  call void @Hacl_Chacha20_chacha20(i8* noundef %0, i8* noundef %2, i32 noundef %3, i8* noundef %6, i8* noundef %7, i32 noundef 1) #7, !dbg !81
  call void @Hacl_Chacha20_chacha20_key_block(i8* noundef nonnull %10, i8* noundef %6, i8* noundef %7, i32 noundef 0) #7, !dbg !82
  call fastcc void @Hacl_Chacha20Poly1305_aead_encrypt_poly(i8* noundef %0, i32 noundef %3, i8* noundef %1, i8* noundef %4, i32 noundef %5, i8* noundef nonnull %10), !dbg !83
  call void @llvm.lifetime.end.p0i8(i64 80, i8* nonnull %10) #7, !dbg !84
  ret i32 0, !dbg !85
}

; Function Attrs: argmemonly mustprogress nofree nounwind willreturn writeonly
declare void @llvm.memset.p0i8.i32(i8* nocapture writeonly, i8, i32, i1 immarg) #4

declare !dbg !86 void @Hacl_Chacha20_chacha20(i8* noundef, i8* noundef, i32 noundef, i8* noundef, i8* noundef, i32 noundef) local_unnamed_addr #5

declare !dbg !91 void @Hacl_Chacha20_chacha20_key_block(i8* noundef, i8* noundef, i8* noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: noinline nounwind uwtable
define internal fastcc void @Hacl_Chacha20Poly1305_aead_encrypt_poly(i8* noundef %0, i32 noundef %1, i8* noundef %2, i8* noundef %3, i32 noundef %4, i8* noundef %5) unnamed_addr #3 !dbg !94 {
  %7 = alloca [6 x i64], align 8
  %8 = alloca %struct.Hacl_Impl_Poly1305_64_State_poly1305_state, align 4
  call void @llvm.dbg.value(metadata i8* %0, metadata !98, metadata !DIExpression()), !dbg !120
  call void @llvm.dbg.value(metadata i32 %1, metadata !99, metadata !DIExpression()), !dbg !120
  call void @llvm.dbg.value(metadata i8* %2, metadata !100, metadata !DIExpression()), !dbg !120
  call void @llvm.dbg.value(metadata i8* %3, metadata !101, metadata !DIExpression()), !dbg !120
  call void @llvm.dbg.value(metadata i32 %4, metadata !102, metadata !DIExpression()), !dbg !120
  call void @llvm.dbg.value(metadata i8* %5, metadata !103, metadata !DIExpression()), !dbg !120
  call void @llvm.dbg.value(metadata i8* %5, metadata !104, metadata !DIExpression()), !dbg !120
  %9 = getelementptr inbounds i8, i8* %5, i32 64, !dbg !121
  call void @llvm.dbg.value(metadata i8* %9, metadata !105, metadata !DIExpression()), !dbg !120
  call void @llvm.dbg.value(metadata i8* %5, metadata !106, metadata !DIExpression()), !dbg !120
  %10 = getelementptr inbounds i8, i8* %5, i32 16, !dbg !122
  call void @llvm.dbg.value(metadata i8* %10, metadata !107, metadata !DIExpression()), !dbg !120
  %11 = bitcast [6 x i64]* %7 to i8*, !dbg !123
  call void @llvm.lifetime.start.p0i8(i64 48, i8* nonnull %11) #7, !dbg !123
  call void @llvm.dbg.declare(metadata [6 x i64]* %7, metadata !108, metadata !DIExpression()), !dbg !124
  call void @llvm.memset.p0i8.i32(i8* noundef nonnull align 8 dereferenceable(48) %11, i8 0, i32 48, i1 false), !dbg !124
  %12 = bitcast %struct.Hacl_Impl_Poly1305_64_State_poly1305_state* %8 to i8*, !dbg !125
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %12) #7, !dbg !125
  call void @llvm.dbg.declare(metadata %struct.Hacl_Impl_Poly1305_64_State_poly1305_state* %8, metadata !112, metadata !DIExpression()), !dbg !126
  %13 = getelementptr inbounds [6 x i64], [6 x i64]* %7, i32 0, i32 0, !dbg !127
  %14 = getelementptr inbounds [6 x i64], [6 x i64]* %7, i32 0, i32 3, !dbg !128
  call void @AEAD_Poly1305_64_mk_state(%struct.Hacl_Impl_Poly1305_64_State_poly1305_state* nonnull sret(%struct.Hacl_Impl_Poly1305_64_State_poly1305_state) align 4 %8, i64* noundef nonnull %13, i64* noundef nonnull %14) #7, !dbg !129
  %15 = getelementptr inbounds %struct.Hacl_Impl_Poly1305_64_State_poly1305_state, %struct.Hacl_Impl_Poly1305_64_State_poly1305_state* %8, i32 0, i32 0, !dbg !130
  %16 = load i64*, i64** %15, align 4, !dbg !130, !tbaa !131
  %17 = getelementptr inbounds %struct.Hacl_Impl_Poly1305_64_State_poly1305_state, %struct.Hacl_Impl_Poly1305_64_State_poly1305_state* %8, i32 0, i32 1, !dbg !130
  %18 = load i64*, i64** %17, align 4, !dbg !130, !tbaa !136
  call void @AEAD_Poly1305_64_poly1305_blocks_init(i64* %16, i64* %18, i8* noundef %3, i32 noundef %4, i8* noundef %5) #7, !dbg !130
  %19 = load i64*, i64** %15, align 4, !dbg !137, !tbaa !131
  %20 = load i64*, i64** %17, align 4, !dbg !137, !tbaa !136
  call void @AEAD_Poly1305_64_poly1305_blocks_continue(i64* %19, i64* %20, i8* noundef %0, i32 noundef %1) #7, !dbg !137
  %21 = load i64*, i64** %15, align 4, !dbg !138, !tbaa !131
  %22 = load i64*, i64** %17, align 4, !dbg !138, !tbaa !136
  call void @AEAD_Poly1305_64_poly1305_blocks_finish(i64* %21, i64* %22, i8* noundef nonnull %9, i8* noundef %2, i8* noundef nonnull %10) #7, !dbg !138
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %12) #7, !dbg !139
  call void @llvm.lifetime.end.p0i8(i64 48, i8* nonnull %11) #7, !dbg !139
  ret void, !dbg !139
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @Hacl_Chacha20Poly1305_aead_encrypt(i8* noundef %0, i8* noundef %1, i8* noundef %2, i32 noundef %3, i8* noundef %4, i32 noundef %5, i8* noundef %6, i8* noundef %7) local_unnamed_addr #3 !dbg !140 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !142, metadata !DIExpression()), !dbg !151
  call void @llvm.dbg.value(metadata i8* %1, metadata !143, metadata !DIExpression()), !dbg !151
  call void @llvm.dbg.value(metadata i8* %2, metadata !144, metadata !DIExpression()), !dbg !151
  call void @llvm.dbg.value(metadata i32 %3, metadata !145, metadata !DIExpression()), !dbg !151
  call void @llvm.dbg.value(metadata i8* %4, metadata !146, metadata !DIExpression()), !dbg !151
  call void @llvm.dbg.value(metadata i32 %5, metadata !147, metadata !DIExpression()), !dbg !151
  call void @llvm.dbg.value(metadata i8* %6, metadata !148, metadata !DIExpression()), !dbg !151
  call void @llvm.dbg.value(metadata i8* %7, metadata !149, metadata !DIExpression()), !dbg !151
  %9 = call i32 @Hacl_Chacha20Poly1305_aead_encrypt_(i8* noundef %0, i8* noundef %1, i8* noundef %2, i32 noundef %3, i8* noundef %4, i32 noundef %5, i8* noundef %6, i8* noundef %7), !dbg !152
  call void @llvm.dbg.value(metadata i32 0, metadata !150, metadata !DIExpression()), !dbg !151
  ret i32 0, !dbg !153
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @Hacl_Chacha20Poly1305_aead_decrypt(i8* noundef %0, i8* noundef %1, i32 noundef %2, i8* noundef %3, i8* noundef %4, i32 noundef %5, i8* noundef %6, i8* noundef %7) local_unnamed_addr #3 !dbg !154 {
  %9 = alloca [96 x i8], align 1
  call void @llvm.dbg.value(metadata i8* %0, metadata !158, metadata !DIExpression()), !dbg !176
  call void @llvm.dbg.value(metadata i8* %1, metadata !159, metadata !DIExpression()), !dbg !176
  call void @llvm.dbg.value(metadata i32 %2, metadata !160, metadata !DIExpression()), !dbg !176
  call void @llvm.dbg.value(metadata i8* %3, metadata !161, metadata !DIExpression()), !dbg !176
  call void @llvm.dbg.value(metadata i8* %4, metadata !162, metadata !DIExpression()), !dbg !176
  call void @llvm.dbg.value(metadata i32 %5, metadata !163, metadata !DIExpression()), !dbg !176
  call void @llvm.dbg.value(metadata i8* %6, metadata !164, metadata !DIExpression()), !dbg !176
  call void @llvm.dbg.value(metadata i8* %7, metadata !165, metadata !DIExpression()), !dbg !176
  %10 = getelementptr inbounds [96 x i8], [96 x i8]* %9, i32 0, i32 0, !dbg !177
  call void @llvm.lifetime.start.p0i8(i64 96, i8* nonnull %10) #7, !dbg !177
  call void @llvm.dbg.declare(metadata [96 x i8]* %9, metadata !166, metadata !DIExpression()), !dbg !178
  call void @llvm.memset.p0i8.i32(i8* noundef nonnull align 1 dereferenceable(96) %10, i8 0, i32 96, i1 false), !dbg !178
  call void @llvm.dbg.value(metadata i8* %10, metadata !170, metadata !DIExpression()), !dbg !176
  %11 = getelementptr inbounds [96 x i8], [96 x i8]* %9, i32 0, i32 64, !dbg !179
  call void @llvm.dbg.value(metadata i8* %11, metadata !171, metadata !DIExpression()), !dbg !176
  call void @Hacl_Chacha20Poly1305_encode_length(i8* noundef nonnull %11, i32 noundef %5, i32 noundef %2), !dbg !180
  %12 = getelementptr inbounds [96 x i8], [96 x i8]* %9, i32 0, i32 80, !dbg !181
  call void @llvm.dbg.value(metadata i8* %12, metadata !172, metadata !DIExpression()), !dbg !176
  call void @Hacl_Chacha20_chacha20_key_block(i8* noundef nonnull %10, i8* noundef %6, i8* noundef %7, i32 noundef 0) #7, !dbg !182
  call fastcc void @Hacl_Chacha20Poly1305_aead_encrypt_poly(i8* noundef %1, i32 noundef %2, i8* noundef nonnull %12, i8* noundef %4, i32 noundef %5, i8* noundef nonnull %10), !dbg !183
  %13 = call zeroext i8 @Hacl_Policies_cmp_bytes(i8* noundef %3, i8* noundef nonnull %12, i32 noundef 16) #7, !dbg !184
  call void @llvm.dbg.value(metadata i8 %13, metadata !173, metadata !DIExpression()), !dbg !176
  call void @llvm.dbg.value(metadata i8 %13, metadata !174, metadata !DIExpression()), !dbg !176
  %14 = icmp eq i8 %13, 0, !dbg !185
  br i1 %14, label %15, label %16, !dbg !187

15:                                               ; preds = %8
  call void @Hacl_Chacha20_chacha20(i8* noundef %0, i8* noundef %1, i32 noundef %2, i8* noundef %6, i8* noundef %7, i32 noundef 1) #7, !dbg !188
  call void @llvm.dbg.value(metadata i32 0, metadata !175, metadata !DIExpression()), !dbg !176
  br label %16, !dbg !190

16:                                               ; preds = %8, %15
  %17 = phi i32 [ 0, %15 ], [ 1, %8 ], !dbg !191
  call void @llvm.dbg.value(metadata i32 %17, metadata !175, metadata !DIExpression()), !dbg !176
  call void @llvm.lifetime.end.p0i8(i64 96, i8* nonnull %10) #7, !dbg !192
  ret i32 %17, !dbg !193
}

declare !dbg !194 zeroext i8 @Hacl_Policies_cmp_bytes(i8* noundef, i8* noundef, i32 noundef) local_unnamed_addr #5

declare !dbg !198 void @AEAD_Poly1305_64_mk_state(%struct.Hacl_Impl_Poly1305_64_State_poly1305_state* sret(%struct.Hacl_Impl_Poly1305_64_State_poly1305_state) align 4, i64* noundef, i64* noundef) local_unnamed_addr #5

declare !dbg !201 void @AEAD_Poly1305_64_poly1305_blocks_init(i64*, i64*, i8* noundef, i32 noundef, i8* noundef) local_unnamed_addr #5

declare !dbg !204 void @AEAD_Poly1305_64_poly1305_blocks_continue(i64*, i64*, i8* noundef, i32 noundef) local_unnamed_addr #5

declare !dbg !207 void @AEAD_Poly1305_64_poly1305_blocks_finish(i64*, i64*, i8* noundef, i8* noundef, i8* noundef) local_unnamed_addr #5

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare void @llvm.dbg.value(metadata, metadata, metadata) #6

attributes #0 = { mustprogress nofree noinline norecurse nosync nounwind uwtable willreturn writeonly "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="i686" "target-features"="+cx8,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nofree nosync nounwind readnone speculatable willreturn }
attributes #2 = { argmemonly mustprogress nofree nosync nounwind willreturn }
attributes #3 = { noinline nounwind uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="i686" "target-features"="+cx8,+x87" "tune-cpu"="generic" }
attributes #4 = { argmemonly mustprogress nofree nounwind willreturn writeonly }
attributes #5 = { "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="i686" "target-features"="+cx8,+x87" "tune-cpu"="generic" }
attributes #6 = { nofree nosync nounwind readnone speculatable willreturn }
attributes #7 = { nounwind }

!llvm.dbg.cu = !{!2}
!llvm.module.flags = !{!27, !28, !29, !30, !31, !32, !33}
!llvm.ident = !{!34}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(name: "Hacl_Chacha20Poly1305_noncelen", scope: !2, file: !3, line: 27, type: !19, isLocal: false, isDefinition: true)
!2 = distinct !DICompileUnit(language: DW_LANG_C99, file: !3, producer: "Ubuntu clang version 14.0.0-1ubuntu1.1", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !4, globals: !16, splitDebugInlining: false, nameTableKind: None)
!3 = !DIFile(filename: "hacl-c/hacl-c/Hacl_Chacha20Poly1305.c", directory: "/mnt/c/Users/fwill/Documents/HS24/semester_project/tools/binsec/binsec/examples/hacl", checksumkind: CSK_MD5, checksum: "3d2d4d3c4b4e34f3c717bf77176dd889")
!4 = !{!5, !10, !13}
!5 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint64_t", file: !6, line: 27, baseType: !7)
!6 = !DIFile(filename: "/usr/include/bits/stdint-uintn.h", directory: "", checksumkind: CSK_MD5, checksum: "2bf2ae53c58c01b1a1b9383b5195125c")
!7 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uint64_t", file: !8, line: 48, baseType: !9)
!8 = !DIFile(filename: "/usr/include/bits/types.h", directory: "", checksumkind: CSK_MD5, checksum: "d108b5f93a74c50510d7d9bc0ab36df9")
!9 = !DIBasicType(name: "unsigned long long", size: 64, encoding: DW_ATE_unsigned)
!10 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint32_t", file: !6, line: 26, baseType: !11)
!11 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uint32_t", file: !8, line: 42, baseType: !12)
!12 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!13 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint8_t", file: !6, line: 24, baseType: !14)
!14 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uint8_t", file: !8, line: 38, baseType: !15)
!15 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!16 = !{!0, !17, !25}
!17 = !DIGlobalVariableExpression(var: !18, expr: !DIExpression())
!18 = distinct !DIGlobalVariable(name: "Hacl_Chacha20Poly1305_keylen", scope: !2, file: !3, line: 29, type: !19, isLocal: false, isDefinition: true)
!19 = !DIDerivedType(tag: DW_TAG_typedef, name: "Prims_int", file: !20, line: 378, baseType: !21)
!20 = !DIFile(filename: "hacl-c/hacl-c/kremlib.h", directory: "/mnt/c/Users/fwill/Documents/HS24/semester_project/tools/binsec/binsec/examples/hacl", checksumkind: CSK_MD5, checksum: "cde125f1f98cb7b9ee1f380d4178ebe4")
!21 = !DIDerivedType(tag: DW_TAG_typedef, name: "int32_t", file: !22, line: 26, baseType: !23)
!22 = !DIFile(filename: "/usr/include/bits/stdint-intn.h", directory: "", checksumkind: CSK_MD5, checksum: "55bcbdc3159515ebd91d351a70d505f4")
!23 = !DIDerivedType(tag: DW_TAG_typedef, name: "__int32_t", file: !8, line: 41, baseType: !24)
!24 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!25 = !DIGlobalVariableExpression(var: !26, expr: !DIExpression())
!26 = distinct !DIGlobalVariable(name: "Hacl_Chacha20Poly1305_maclen", scope: !2, file: !3, line: 31, type: !19, isLocal: false, isDefinition: true)
!27 = !{i32 1, !"NumRegisterParameters", i32 0}
!28 = !{i32 7, !"Dwarf Version", i32 5}
!29 = !{i32 2, !"Debug Info Version", i32 3}
!30 = !{i32 1, !"wchar_size", i32 4}
!31 = !{i32 7, !"PIC Level", i32 2}
!32 = !{i32 7, !"PIE Level", i32 2}
!33 = !{i32 7, !"uwtable", i32 1}
!34 = !{!"Ubuntu clang version 14.0.0-1ubuntu1.1"}
!35 = distinct !DISubprogram(name: "Hacl_Chacha20Poly1305_encode_length", scope: !3, file: !3, line: 55, type: !36, scopeLine: 56, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !39)
!36 = !DISubroutineType(types: !37)
!37 = !{null, !38, !10, !10}
!38 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !13, size: 32)
!39 = !{!40, !41, !42, !43}
!40 = !DILocalVariable(name: "lb", arg: 1, scope: !35, file: !3, line: 55, type: !38)
!41 = !DILocalVariable(name: "aad_len", arg: 2, scope: !35, file: !3, line: 55, type: !10)
!42 = !DILocalVariable(name: "mlen", arg: 3, scope: !35, file: !3, line: 55, type: !10)
!43 = !DILocalVariable(name: "x0", scope: !35, file: !3, line: 58, type: !38)
!44 = !DILocation(line: 0, scope: !35)
!45 = !DILocation(line: 57, column: 3, scope: !35)
!46 = !DILocation(line: 58, column: 20, scope: !35)
!47 = !DILocation(line: 59, column: 3, scope: !35)
!48 = !DILocation(line: 60, column: 1, scope: !35)
!49 = distinct !DISubprogram(name: "store64", scope: !20, file: !20, line: 357, type: !50, scopeLine: 357, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !52)
!50 = !DISubroutineType(types: !51)
!51 = !{null, !38, !5}
!52 = !{!53, !54}
!53 = !DILocalVariable(name: "b", arg: 1, scope: !49, file: !20, line: 357, type: !38)
!54 = !DILocalVariable(name: "i", arg: 2, scope: !49, file: !20, line: 357, type: !5)
!55 = !DILocation(line: 0, scope: !49)
!56 = !DILocation(line: 357, column: 54, scope: !49)
!57 = !DILocation(line: 357, column: 72, scope: !49)
!58 = distinct !DISubprogram(name: "Hacl_Chacha20Poly1305_aead_encrypt_", scope: !3, file: !3, line: 63, type: !59, scopeLine: 73, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !61)
!59 = !DISubroutineType(types: !60)
!60 = !{!10, !38, !38, !38, !10, !38, !10, !38, !38}
!61 = !{!62, !63, !64, !65, !66, !67, !68, !69, !70, !74, !75}
!62 = !DILocalVariable(name: "c", arg: 1, scope: !58, file: !3, line: 64, type: !38)
!63 = !DILocalVariable(name: "mac", arg: 2, scope: !58, file: !3, line: 65, type: !38)
!64 = !DILocalVariable(name: "m", arg: 3, scope: !58, file: !3, line: 66, type: !38)
!65 = !DILocalVariable(name: "mlen", arg: 4, scope: !58, file: !3, line: 67, type: !10)
!66 = !DILocalVariable(name: "aad1", arg: 5, scope: !58, file: !3, line: 68, type: !38)
!67 = !DILocalVariable(name: "aadlen", arg: 6, scope: !58, file: !3, line: 69, type: !10)
!68 = !DILocalVariable(name: "k1", arg: 7, scope: !58, file: !3, line: 70, type: !38)
!69 = !DILocalVariable(name: "n1", arg: 8, scope: !58, file: !3, line: 71, type: !38)
!70 = !DILocalVariable(name: "tmp", scope: !58, file: !3, line: 74, type: !71)
!71 = !DICompositeType(tag: DW_TAG_array_type, baseType: !13, size: 640, elements: !72)
!72 = !{!73}
!73 = !DISubrange(count: 80)
!74 = !DILocalVariable(name: "b", scope: !58, file: !3, line: 75, type: !38)
!75 = !DILocalVariable(name: "lb", scope: !58, file: !3, line: 76, type: !38)
!76 = !DILocation(line: 0, scope: !58)
!77 = !DILocation(line: 74, column: 3, scope: !58)
!78 = !DILocation(line: 74, column: 11, scope: !58)
!79 = !DILocation(line: 76, column: 21, scope: !58)
!80 = !DILocation(line: 77, column: 3, scope: !58)
!81 = !DILocation(line: 78, column: 3, scope: !58)
!82 = !DILocation(line: 79, column: 3, scope: !58)
!83 = !DILocation(line: 80, column: 3, scope: !58)
!84 = !DILocation(line: 82, column: 1, scope: !58)
!85 = !DILocation(line: 81, column: 3, scope: !58)
!86 = !DISubprogram(name: "Hacl_Chacha20_chacha20", scope: !87, file: !87, line: 87, type: !88, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !90)
!87 = !DIFile(filename: "hacl-c/hacl-c/Hacl_Chacha20.h", directory: "/mnt/c/Users/fwill/Documents/HS24/semester_project/tools/binsec/binsec/examples/hacl", checksumkind: CSK_MD5, checksum: "b8e93b3d1bc695311f402d98a2bec733")
!88 = !DISubroutineType(types: !89)
!89 = !{null, !38, !38, !10, !38, !38, !10}
!90 = !{}
!91 = !DISubprogram(name: "Hacl_Chacha20_chacha20_key_block", scope: !87, file: !87, line: 63, type: !92, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !90)
!92 = !DISubroutineType(types: !93)
!93 = !{null, !38, !38, !38, !10}
!94 = distinct !DISubprogram(name: "Hacl_Chacha20Poly1305_aead_encrypt_poly", scope: !3, file: !3, line: 34, type: !95, scopeLine: 42, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !97)
!95 = !DISubroutineType(types: !96)
!96 = !{null, !38, !10, !38, !38, !10, !38}
!97 = !{!98, !99, !100, !101, !102, !103, !104, !105, !106, !107, !108, !112}
!98 = !DILocalVariable(name: "c", arg: 1, scope: !94, file: !3, line: 35, type: !38)
!99 = !DILocalVariable(name: "mlen", arg: 2, scope: !94, file: !3, line: 36, type: !10)
!100 = !DILocalVariable(name: "mac", arg: 3, scope: !94, file: !3, line: 37, type: !38)
!101 = !DILocalVariable(name: "aad1", arg: 4, scope: !94, file: !3, line: 38, type: !38)
!102 = !DILocalVariable(name: "aadlen", arg: 5, scope: !94, file: !3, line: 39, type: !10)
!103 = !DILocalVariable(name: "tmp", arg: 6, scope: !94, file: !3, line: 40, type: !38)
!104 = !DILocalVariable(name: "b", scope: !94, file: !3, line: 43, type: !38)
!105 = !DILocalVariable(name: "lb", scope: !94, file: !3, line: 44, type: !38)
!106 = !DILocalVariable(name: "mk", scope: !94, file: !3, line: 45, type: !38)
!107 = !DILocalVariable(name: "key_s", scope: !94, file: !3, line: 46, type: !38)
!108 = !DILocalVariable(name: "tmp1", scope: !94, file: !3, line: 47, type: !109)
!109 = !DICompositeType(tag: DW_TAG_array_type, baseType: !5, size: 384, elements: !110)
!110 = !{!111}
!111 = !DISubrange(count: 6)
!112 = !DILocalVariable(name: "st", scope: !94, file: !3, line: 49, type: !113)
!113 = !DIDerivedType(tag: DW_TAG_typedef, name: "Hacl_Impl_Poly1305_64_State_poly1305_state", file: !114, line: 59, baseType: !115)
!114 = !DIFile(filename: "hacl-c/hacl-c/AEAD_Poly1305_64.h", directory: "/mnt/c/Users/fwill/Documents/HS24/semester_project/tools/binsec/binsec/examples/hacl", checksumkind: CSK_MD5, checksum: "0908bb05e3cebcc46278beb5f390625a")
!115 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !114, line: 54, size: 64, elements: !116)
!116 = !{!117, !119}
!117 = !DIDerivedType(tag: DW_TAG_member, name: "r", scope: !115, file: !114, line: 56, baseType: !118, size: 32)
!118 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5, size: 32)
!119 = !DIDerivedType(tag: DW_TAG_member, name: "h", scope: !115, file: !114, line: 57, baseType: !118, size: 32, offset: 32)
!120 = !DILocation(line: 0, scope: !94)
!121 = !DILocation(line: 44, column: 21, scope: !94)
!122 = !DILocation(line: 46, column: 23, scope: !94)
!123 = !DILocation(line: 47, column: 3, scope: !94)
!124 = !DILocation(line: 47, column: 12, scope: !94)
!125 = !DILocation(line: 48, column: 3, scope: !94)
!126 = !DILocation(line: 49, column: 3, scope: !94)
!127 = !DILocation(line: 49, column: 34, scope: !94)
!128 = !DILocation(line: 49, column: 45, scope: !94)
!129 = !DILocation(line: 49, column: 8, scope: !94)
!130 = !DILocation(line: 50, column: 9, scope: !94)
!131 = !{!132, !133, i64 0}
!132 = !{!"", !133, i64 0, !133, i64 4}
!133 = !{!"any pointer", !134, i64 0}
!134 = !{!"omnipotent char", !135, i64 0}
!135 = !{!"Simple C/C++ TBAA"}
!136 = !{!132, !133, i64 4}
!137 = !DILocation(line: 51, column: 9, scope: !94)
!138 = !DILocation(line: 52, column: 3, scope: !94)
!139 = !DILocation(line: 53, column: 1, scope: !94)
!140 = distinct !DISubprogram(name: "Hacl_Chacha20Poly1305_aead_encrypt", scope: !3, file: !3, line: 85, type: !59, scopeLine: 95, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !141)
!141 = !{!142, !143, !144, !145, !146, !147, !148, !149, !150}
!142 = !DILocalVariable(name: "c", arg: 1, scope: !140, file: !3, line: 86, type: !38)
!143 = !DILocalVariable(name: "mac", arg: 2, scope: !140, file: !3, line: 87, type: !38)
!144 = !DILocalVariable(name: "m", arg: 3, scope: !140, file: !3, line: 88, type: !38)
!145 = !DILocalVariable(name: "mlen", arg: 4, scope: !140, file: !3, line: 89, type: !10)
!146 = !DILocalVariable(name: "aad1", arg: 5, scope: !140, file: !3, line: 90, type: !38)
!147 = !DILocalVariable(name: "aadlen", arg: 6, scope: !140, file: !3, line: 91, type: !10)
!148 = !DILocalVariable(name: "k1", arg: 7, scope: !140, file: !3, line: 92, type: !38)
!149 = !DILocalVariable(name: "n1", arg: 8, scope: !140, file: !3, line: 93, type: !38)
!150 = !DILocalVariable(name: "z", scope: !140, file: !3, line: 96, type: !10)
!151 = !DILocation(line: 0, scope: !140)
!152 = !DILocation(line: 96, column: 16, scope: !140)
!153 = !DILocation(line: 97, column: 3, scope: !140)
!154 = distinct !DISubprogram(name: "Hacl_Chacha20Poly1305_aead_decrypt", scope: !3, file: !3, line: 101, type: !155, scopeLine: 111, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !157)
!155 = !DISubroutineType(types: !156)
!156 = !{!10, !38, !38, !10, !38, !38, !10, !38, !38}
!157 = !{!158, !159, !160, !161, !162, !163, !164, !165, !166, !170, !171, !172, !173, !174, !175}
!158 = !DILocalVariable(name: "m", arg: 1, scope: !154, file: !3, line: 102, type: !38)
!159 = !DILocalVariable(name: "c", arg: 2, scope: !154, file: !3, line: 103, type: !38)
!160 = !DILocalVariable(name: "mlen", arg: 3, scope: !154, file: !3, line: 104, type: !10)
!161 = !DILocalVariable(name: "mac", arg: 4, scope: !154, file: !3, line: 105, type: !38)
!162 = !DILocalVariable(name: "aad1", arg: 5, scope: !154, file: !3, line: 106, type: !38)
!163 = !DILocalVariable(name: "aadlen", arg: 6, scope: !154, file: !3, line: 107, type: !10)
!164 = !DILocalVariable(name: "k1", arg: 7, scope: !154, file: !3, line: 108, type: !38)
!165 = !DILocalVariable(name: "n1", arg: 8, scope: !154, file: !3, line: 109, type: !38)
!166 = !DILocalVariable(name: "tmp", scope: !154, file: !3, line: 112, type: !167)
!167 = !DICompositeType(tag: DW_TAG_array_type, baseType: !13, size: 768, elements: !168)
!168 = !{!169}
!169 = !DISubrange(count: 96)
!170 = !DILocalVariable(name: "b", scope: !154, file: !3, line: 113, type: !38)
!171 = !DILocalVariable(name: "lb", scope: !154, file: !3, line: 114, type: !38)
!172 = !DILocalVariable(name: "rmac", scope: !154, file: !3, line: 116, type: !38)
!173 = !DILocalVariable(name: "result", scope: !154, file: !3, line: 119, type: !13)
!174 = !DILocalVariable(name: "verify", scope: !154, file: !3, line: 120, type: !13)
!175 = !DILocalVariable(name: "res", scope: !154, file: !3, line: 121, type: !10)
!176 = !DILocation(line: 0, scope: !154)
!177 = !DILocation(line: 112, column: 3, scope: !154)
!178 = !DILocation(line: 112, column: 11, scope: !154)
!179 = !DILocation(line: 114, column: 21, scope: !154)
!180 = !DILocation(line: 115, column: 3, scope: !154)
!181 = !DILocation(line: 116, column: 23, scope: !154)
!182 = !DILocation(line: 117, column: 3, scope: !154)
!183 = !DILocation(line: 118, column: 3, scope: !154)
!184 = !DILocation(line: 119, column: 20, scope: !154)
!185 = !DILocation(line: 122, column: 14, scope: !186)
!186 = distinct !DILexicalBlock(scope: !154, file: !3, line: 122, column: 7)
!187 = !DILocation(line: 122, column: 7, scope: !154)
!188 = !DILocation(line: 124, column: 5, scope: !189)
!189 = distinct !DILexicalBlock(scope: !186, file: !3, line: 123, column: 3)
!190 = !DILocation(line: 126, column: 3, scope: !189)
!191 = !DILocation(line: 0, scope: !186)
!192 = !DILocation(line: 130, column: 1, scope: !154)
!193 = !DILocation(line: 129, column: 3, scope: !154)
!194 = !DISubprogram(name: "Hacl_Policies_cmp_bytes", scope: !195, file: !195, line: 42, type: !196, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !90)
!195 = !DIFile(filename: "hacl-c/hacl-c/Hacl_Policies.h", directory: "/mnt/c/Users/fwill/Documents/HS24/semester_project/tools/binsec/binsec/examples/hacl", checksumkind: CSK_MD5, checksum: "a8a37306bf5433ee7d02dfa3ffcf6ed4")
!196 = !DISubroutineType(types: !197)
!197 = !{!13, !38, !38, !10}
!198 = !DISubprogram(name: "AEAD_Poly1305_64_mk_state", scope: !114, file: !114, line: 84, type: !199, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !90)
!199 = !DISubroutineType(types: !200)
!200 = !{!113, !118, !118}
!201 = !DISubprogram(name: "AEAD_Poly1305_64_poly1305_blocks_init", scope: !114, file: !114, line: 96, type: !202, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !90)
!202 = !DISubroutineType(types: !203)
!203 = !{null, !113, !38, !10, !38}
!204 = !DISubprogram(name: "AEAD_Poly1305_64_poly1305_blocks_continue", scope: !114, file: !114, line: 104, type: !205, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !90)
!205 = !DISubroutineType(types: !206)
!206 = !{null, !113, !38, !10}
!207 = !DISubprogram(name: "AEAD_Poly1305_64_poly1305_blocks_finish", scope: !114, file: !114, line: 117, type: !208, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !90)
!208 = !DISubroutineType(types: !209)
!209 = !{null, !113, !38, !38, !38}
