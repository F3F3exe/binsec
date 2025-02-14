; ModuleID = 'hacl-c/hacl-c/Hacl_Chacha20Poly1305.c'
source_filename = "hacl-c/hacl-c/Hacl_Chacha20Poly1305.c"
target datalayout = "e-m:e-p:32:32-p270:32:32-p271:32:32-p272:64:64-f64:32:64-f80:32-n8:16:32-S128"
target triple = "i386-pc-linux-gnu"

%struct.Hacl_Impl_Poly1305_64_State_poly1305_state = type { i64*, i64* }

@Hacl_Chacha20Poly1305_noncelen = dso_local local_unnamed_addr global i32 12, align 4, !dbg !0
@Hacl_Chacha20Poly1305_keylen = dso_local local_unnamed_addr global i32 32, align 4, !dbg !17
@Hacl_Chacha20Poly1305_maclen = dso_local local_unnamed_addr global i32 16, align 4, !dbg !25

; Function Attrs: mustprogress nofree norecurse nosync nounwind uwtable willreturn writeonly
define dso_local void @Hacl_Chacha20Poly1305_encode_length(i8* nocapture noundef writeonly %0, i32 noundef %1, i32 noundef %2) local_unnamed_addr #0 !dbg !35 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !40, metadata !DIExpression()), !dbg !44
  call void @llvm.dbg.value(metadata i32 %1, metadata !41, metadata !DIExpression()), !dbg !44
  call void @llvm.dbg.value(metadata i32 %2, metadata !42, metadata !DIExpression()), !dbg !44
  %4 = zext i32 %1 to i64, !dbg !45
  call void @llvm.dbg.value(metadata i8* %0, metadata !46, metadata !DIExpression()), !dbg !52
  call void @llvm.dbg.value(metadata i64 %4, metadata !51, metadata !DIExpression()), !dbg !52
  %5 = bitcast i8* %0 to i64*, !dbg !54
  store i64 %4, i64* %5, align 1, !dbg !54
  %6 = getelementptr inbounds i8, i8* %0, i32 8, !dbg !55
  call void @llvm.dbg.value(metadata i8* %6, metadata !43, metadata !DIExpression()), !dbg !44
  %7 = zext i32 %2 to i64, !dbg !56
  call void @llvm.dbg.value(metadata i8* %6, metadata !46, metadata !DIExpression()), !dbg !57
  call void @llvm.dbg.value(metadata i64 %7, metadata !51, metadata !DIExpression()), !dbg !57
  %8 = bitcast i8* %6 to i64*, !dbg !59
  store i64 %7, i64* %8, align 1, !dbg !59
  ret void, !dbg !60
}

; Function Attrs: mustprogress nofree nosync nounwind readnone speculatable willreturn
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: argmemonly mustprogress nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0i8(i64 immarg, i8* nocapture) #2

; Function Attrs: argmemonly mustprogress nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0i8(i64 immarg, i8* nocapture) #2

; Function Attrs: nounwind uwtable
define dso_local i32 @Hacl_Chacha20Poly1305_aead_encrypt_(i8* noundef %0, i8* noundef %1, i8* noundef %2, i32 noundef %3, i8* noundef %4, i32 noundef %5, i8* noundef %6, i8* noundef %7) local_unnamed_addr #3 !dbg !61 {
  %9 = alloca [6 x i64], align 8
  %10 = alloca %struct.Hacl_Impl_Poly1305_64_State_poly1305_state, align 4
  %11 = alloca [80 x i8], align 1
  call void @llvm.dbg.value(metadata i8* %0, metadata !65, metadata !DIExpression()), !dbg !79
  call void @llvm.dbg.value(metadata i8* %1, metadata !66, metadata !DIExpression()), !dbg !79
  call void @llvm.dbg.value(metadata i8* %2, metadata !67, metadata !DIExpression()), !dbg !79
  call void @llvm.dbg.value(metadata i32 %3, metadata !68, metadata !DIExpression()), !dbg !79
  call void @llvm.dbg.value(metadata i8* %4, metadata !69, metadata !DIExpression()), !dbg !79
  call void @llvm.dbg.value(metadata i32 %5, metadata !70, metadata !DIExpression()), !dbg !79
  call void @llvm.dbg.value(metadata i8* %6, metadata !71, metadata !DIExpression()), !dbg !79
  call void @llvm.dbg.value(metadata i8* %7, metadata !72, metadata !DIExpression()), !dbg !79
  %12 = getelementptr inbounds [80 x i8], [80 x i8]* %11, i32 0, i32 0, !dbg !80
  call void @llvm.lifetime.start.p0i8(i64 80, i8* nonnull %12) #7, !dbg !80
  call void @llvm.dbg.declare(metadata [80 x i8]* %11, metadata !73, metadata !DIExpression()), !dbg !81
  call void @llvm.memset.p0i8.i32(i8* noundef nonnull align 1 dereferenceable(80) %12, i8 0, i32 80, i1 false), !dbg !81
  call void @llvm.dbg.value(metadata i8* %12, metadata !77, metadata !DIExpression()), !dbg !79
  %13 = getelementptr inbounds [80 x i8], [80 x i8]* %11, i32 0, i32 64, !dbg !82
  call void @llvm.dbg.value(metadata i8* %13, metadata !78, metadata !DIExpression()), !dbg !79
  call void @llvm.dbg.value(metadata i8* %13, metadata !40, metadata !DIExpression()), !dbg !83
  call void @llvm.dbg.value(metadata i32 %5, metadata !41, metadata !DIExpression()), !dbg !83
  call void @llvm.dbg.value(metadata i32 %3, metadata !42, metadata !DIExpression()), !dbg !83
  %14 = zext i32 %5 to i64, !dbg !85
  call void @llvm.dbg.value(metadata i8* %13, metadata !46, metadata !DIExpression()), !dbg !86
  call void @llvm.dbg.value(metadata i64 %14, metadata !51, metadata !DIExpression()), !dbg !86
  %15 = bitcast i8* %13 to i64*, !dbg !88
  store i64 %14, i64* %15, align 1, !dbg !88
  %16 = getelementptr inbounds [80 x i8], [80 x i8]* %11, i32 0, i32 72, !dbg !89
  call void @llvm.dbg.value(metadata i8* %16, metadata !43, metadata !DIExpression()), !dbg !83
  %17 = zext i32 %3 to i64, !dbg !90
  call void @llvm.dbg.value(metadata i8* %16, metadata !46, metadata !DIExpression()), !dbg !91
  call void @llvm.dbg.value(metadata i64 %17, metadata !51, metadata !DIExpression()), !dbg !91
  %18 = bitcast i8* %16 to i64*, !dbg !93
  store i64 %17, i64* %18, align 1, !dbg !93
  call void @Hacl_Chacha20_chacha20(i8* noundef %0, i8* noundef %2, i32 noundef %3, i8* noundef %6, i8* noundef %7, i32 noundef 1) #7, !dbg !94
  call void @Hacl_Chacha20_chacha20_key_block(i8* noundef nonnull %12, i8* noundef %6, i8* noundef %7, i32 noundef 0) #7, !dbg !95
  call void @llvm.dbg.value(metadata i8* %0, metadata !96, metadata !DIExpression()) #7, !dbg !122
  call void @llvm.dbg.value(metadata i32 %3, metadata !101, metadata !DIExpression()) #7, !dbg !122
  call void @llvm.dbg.value(metadata i8* %1, metadata !102, metadata !DIExpression()) #7, !dbg !122
  call void @llvm.dbg.value(metadata i8* %4, metadata !103, metadata !DIExpression()) #7, !dbg !122
  call void @llvm.dbg.value(metadata i32 %5, metadata !104, metadata !DIExpression()) #7, !dbg !122
  call void @llvm.dbg.value(metadata i8* %12, metadata !105, metadata !DIExpression()) #7, !dbg !122
  call void @llvm.dbg.value(metadata i8* %12, metadata !106, metadata !DIExpression()) #7, !dbg !122
  %19 = getelementptr inbounds [80 x i8], [80 x i8]* %11, i32 0, i32 64, !dbg !124
  call void @llvm.dbg.value(metadata i8* %19, metadata !107, metadata !DIExpression()) #7, !dbg !122
  call void @llvm.dbg.value(metadata i8* %12, metadata !108, metadata !DIExpression()) #7, !dbg !122
  %20 = getelementptr inbounds [80 x i8], [80 x i8]* %11, i32 0, i32 16, !dbg !125
  call void @llvm.dbg.value(metadata i8* %20, metadata !109, metadata !DIExpression()) #7, !dbg !122
  %21 = bitcast [6 x i64]* %9 to i8*, !dbg !126
  call void @llvm.lifetime.start.p0i8(i64 48, i8* nonnull %21) #7, !dbg !126
  call void @llvm.dbg.declare(metadata [6 x i64]* %9, metadata !110, metadata !DIExpression()) #7, !dbg !127
  call void @llvm.memset.p0i8.i32(i8* noundef nonnull align 8 dereferenceable(48) %21, i8 0, i32 48, i1 false) #7, !dbg !127
  %22 = bitcast %struct.Hacl_Impl_Poly1305_64_State_poly1305_state* %10 to i8*, !dbg !128
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %22) #7, !dbg !128
  call void @llvm.dbg.declare(metadata %struct.Hacl_Impl_Poly1305_64_State_poly1305_state* %10, metadata !114, metadata !DIExpression()) #7, !dbg !129
  %23 = getelementptr inbounds [6 x i64], [6 x i64]* %9, i32 0, i32 0, !dbg !130
  %24 = getelementptr inbounds [6 x i64], [6 x i64]* %9, i32 0, i32 3, !dbg !131
  call void @AEAD_Poly1305_64_mk_state(%struct.Hacl_Impl_Poly1305_64_State_poly1305_state* nonnull sret(%struct.Hacl_Impl_Poly1305_64_State_poly1305_state) align 4 %10, i64* noundef nonnull %23, i64* noundef nonnull %24) #7, !dbg !132
  %25 = getelementptr inbounds %struct.Hacl_Impl_Poly1305_64_State_poly1305_state, %struct.Hacl_Impl_Poly1305_64_State_poly1305_state* %10, i32 0, i32 0, !dbg !133
  %26 = load i64*, i64** %25, align 4, !dbg !133, !tbaa !134
  %27 = getelementptr inbounds %struct.Hacl_Impl_Poly1305_64_State_poly1305_state, %struct.Hacl_Impl_Poly1305_64_State_poly1305_state* %10, i32 0, i32 1, !dbg !133
  %28 = load i64*, i64** %27, align 4, !dbg !133, !tbaa !139
  call void @AEAD_Poly1305_64_poly1305_blocks_init(i64* %26, i64* %28, i8* noundef %4, i32 noundef %5, i8* noundef nonnull %12) #7, !dbg !133
  %29 = load i64*, i64** %25, align 4, !dbg !140, !tbaa !134
  %30 = load i64*, i64** %27, align 4, !dbg !140, !tbaa !139
  call void @AEAD_Poly1305_64_poly1305_blocks_continue(i64* %29, i64* %30, i8* noundef %0, i32 noundef %3) #7, !dbg !140
  %31 = load i64*, i64** %25, align 4, !dbg !141, !tbaa !134
  %32 = load i64*, i64** %27, align 4, !dbg !141, !tbaa !139
  call void @AEAD_Poly1305_64_poly1305_blocks_finish(i64* %31, i64* %32, i8* noundef nonnull %19, i8* noundef %1, i8* noundef nonnull %20) #7, !dbg !141
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %22) #7, !dbg !142
  call void @llvm.lifetime.end.p0i8(i64 48, i8* nonnull %21) #7, !dbg !142
  call void @llvm.lifetime.end.p0i8(i64 80, i8* nonnull %12) #7, !dbg !143
  ret i32 0, !dbg !144
}

; Function Attrs: argmemonly mustprogress nofree nounwind willreturn writeonly
declare void @llvm.memset.p0i8.i32(i8* nocapture writeonly, i8, i32, i1 immarg) #4

declare !dbg !145 void @Hacl_Chacha20_chacha20(i8* noundef, i8* noundef, i32 noundef, i8* noundef, i8* noundef, i32 noundef) local_unnamed_addr #5

declare !dbg !150 void @Hacl_Chacha20_chacha20_key_block(i8* noundef, i8* noundef, i8* noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: nounwind uwtable
define dso_local i32 @Hacl_Chacha20Poly1305_aead_encrypt(i8* noundef %0, i8* noundef %1, i8* noundef %2, i32 noundef %3, i8* noundef %4, i32 noundef %5, i8* noundef %6, i8* noundef %7) local_unnamed_addr #3 !dbg !153 {
  %9 = alloca [6 x i64], align 8
  %10 = alloca %struct.Hacl_Impl_Poly1305_64_State_poly1305_state, align 4
  %11 = alloca [80 x i8], align 1
  call void @llvm.dbg.value(metadata i8* %0, metadata !155, metadata !DIExpression()), !dbg !164
  call void @llvm.dbg.value(metadata i8* %1, metadata !156, metadata !DIExpression()), !dbg !164
  call void @llvm.dbg.value(metadata i8* %2, metadata !157, metadata !DIExpression()), !dbg !164
  call void @llvm.dbg.value(metadata i32 %3, metadata !158, metadata !DIExpression()), !dbg !164
  call void @llvm.dbg.value(metadata i8* %4, metadata !159, metadata !DIExpression()), !dbg !164
  call void @llvm.dbg.value(metadata i32 %5, metadata !160, metadata !DIExpression()), !dbg !164
  call void @llvm.dbg.value(metadata i8* %6, metadata !161, metadata !DIExpression()), !dbg !164
  call void @llvm.dbg.value(metadata i8* %7, metadata !162, metadata !DIExpression()), !dbg !164
  call void @llvm.dbg.value(metadata i8* %0, metadata !65, metadata !DIExpression()) #7, !dbg !165
  call void @llvm.dbg.value(metadata i8* %1, metadata !66, metadata !DIExpression()) #7, !dbg !165
  call void @llvm.dbg.value(metadata i8* %2, metadata !67, metadata !DIExpression()) #7, !dbg !165
  call void @llvm.dbg.value(metadata i32 %3, metadata !68, metadata !DIExpression()) #7, !dbg !165
  call void @llvm.dbg.value(metadata i8* %4, metadata !69, metadata !DIExpression()) #7, !dbg !165
  call void @llvm.dbg.value(metadata i32 %5, metadata !70, metadata !DIExpression()) #7, !dbg !165
  call void @llvm.dbg.value(metadata i8* %6, metadata !71, metadata !DIExpression()) #7, !dbg !165
  call void @llvm.dbg.value(metadata i8* %7, metadata !72, metadata !DIExpression()) #7, !dbg !165
  %12 = getelementptr inbounds [80 x i8], [80 x i8]* %11, i32 0, i32 0, !dbg !167
  call void @llvm.lifetime.start.p0i8(i64 80, i8* nonnull %12) #7, !dbg !167
  call void @llvm.dbg.declare(metadata [80 x i8]* %11, metadata !73, metadata !DIExpression()) #7, !dbg !168
  call void @llvm.memset.p0i8.i32(i8* noundef nonnull align 1 dereferenceable(80) %12, i8 0, i32 80, i1 false) #7, !dbg !168
  call void @llvm.dbg.value(metadata i8* %12, metadata !77, metadata !DIExpression()) #7, !dbg !165
  %13 = getelementptr inbounds [80 x i8], [80 x i8]* %11, i32 0, i32 64, !dbg !169
  call void @llvm.dbg.value(metadata i8* %13, metadata !78, metadata !DIExpression()) #7, !dbg !165
  call void @llvm.dbg.value(metadata i8* %13, metadata !40, metadata !DIExpression()) #7, !dbg !170
  call void @llvm.dbg.value(metadata i32 %5, metadata !41, metadata !DIExpression()) #7, !dbg !170
  call void @llvm.dbg.value(metadata i32 %3, metadata !42, metadata !DIExpression()) #7, !dbg !170
  %14 = zext i32 %5 to i64, !dbg !172
  call void @llvm.dbg.value(metadata i8* %13, metadata !46, metadata !DIExpression()) #7, !dbg !173
  call void @llvm.dbg.value(metadata i64 %14, metadata !51, metadata !DIExpression()) #7, !dbg !173
  %15 = bitcast i8* %13 to i64*, !dbg !175
  store i64 %14, i64* %15, align 1, !dbg !175
  %16 = getelementptr inbounds [80 x i8], [80 x i8]* %11, i32 0, i32 72, !dbg !176
  call void @llvm.dbg.value(metadata i8* %16, metadata !43, metadata !DIExpression()) #7, !dbg !170
  %17 = zext i32 %3 to i64, !dbg !177
  call void @llvm.dbg.value(metadata i8* %16, metadata !46, metadata !DIExpression()) #7, !dbg !178
  call void @llvm.dbg.value(metadata i64 %17, metadata !51, metadata !DIExpression()) #7, !dbg !178
  %18 = bitcast i8* %16 to i64*, !dbg !180
  store i64 %17, i64* %18, align 1, !dbg !180
  call void @Hacl_Chacha20_chacha20(i8* noundef %0, i8* noundef %2, i32 noundef %3, i8* noundef %6, i8* noundef %7, i32 noundef 1) #7, !dbg !181
  call void @Hacl_Chacha20_chacha20_key_block(i8* noundef nonnull %12, i8* noundef %6, i8* noundef %7, i32 noundef 0) #7, !dbg !182
  call void @llvm.dbg.value(metadata i8* %0, metadata !96, metadata !DIExpression()) #7, !dbg !183
  call void @llvm.dbg.value(metadata i32 %3, metadata !101, metadata !DIExpression()) #7, !dbg !183
  call void @llvm.dbg.value(metadata i8* %1, metadata !102, metadata !DIExpression()) #7, !dbg !183
  call void @llvm.dbg.value(metadata i8* %4, metadata !103, metadata !DIExpression()) #7, !dbg !183
  call void @llvm.dbg.value(metadata i32 %5, metadata !104, metadata !DIExpression()) #7, !dbg !183
  call void @llvm.dbg.value(metadata i8* %12, metadata !105, metadata !DIExpression()) #7, !dbg !183
  call void @llvm.dbg.value(metadata i8* %12, metadata !106, metadata !DIExpression()) #7, !dbg !183
  call void @llvm.dbg.value(metadata i8* %13, metadata !107, metadata !DIExpression()) #7, !dbg !183
  call void @llvm.dbg.value(metadata i8* %12, metadata !108, metadata !DIExpression()) #7, !dbg !183
  %19 = getelementptr inbounds [80 x i8], [80 x i8]* %11, i32 0, i32 16, !dbg !185
  call void @llvm.dbg.value(metadata i8* %19, metadata !109, metadata !DIExpression()) #7, !dbg !183
  %20 = bitcast [6 x i64]* %9 to i8*, !dbg !186
  call void @llvm.lifetime.start.p0i8(i64 48, i8* nonnull %20) #7, !dbg !186
  call void @llvm.dbg.declare(metadata [6 x i64]* %9, metadata !110, metadata !DIExpression()) #7, !dbg !187
  call void @llvm.memset.p0i8.i32(i8* noundef nonnull align 8 dereferenceable(48) %20, i8 0, i32 48, i1 false) #7, !dbg !187
  %21 = bitcast %struct.Hacl_Impl_Poly1305_64_State_poly1305_state* %10 to i8*, !dbg !188
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %21) #7, !dbg !188
  call void @llvm.dbg.declare(metadata %struct.Hacl_Impl_Poly1305_64_State_poly1305_state* %10, metadata !114, metadata !DIExpression()) #7, !dbg !189
  %22 = getelementptr inbounds [6 x i64], [6 x i64]* %9, i32 0, i32 0, !dbg !190
  %23 = getelementptr inbounds [6 x i64], [6 x i64]* %9, i32 0, i32 3, !dbg !191
  call void @AEAD_Poly1305_64_mk_state(%struct.Hacl_Impl_Poly1305_64_State_poly1305_state* nonnull sret(%struct.Hacl_Impl_Poly1305_64_State_poly1305_state) align 4 %10, i64* noundef nonnull %22, i64* noundef nonnull %23) #7, !dbg !192
  %24 = getelementptr inbounds %struct.Hacl_Impl_Poly1305_64_State_poly1305_state, %struct.Hacl_Impl_Poly1305_64_State_poly1305_state* %10, i32 0, i32 0, !dbg !193
  %25 = load i64*, i64** %24, align 4, !dbg !193, !tbaa !134
  %26 = getelementptr inbounds %struct.Hacl_Impl_Poly1305_64_State_poly1305_state, %struct.Hacl_Impl_Poly1305_64_State_poly1305_state* %10, i32 0, i32 1, !dbg !193
  %27 = load i64*, i64** %26, align 4, !dbg !193, !tbaa !139
  call void @AEAD_Poly1305_64_poly1305_blocks_init(i64* %25, i64* %27, i8* noundef %4, i32 noundef %5, i8* noundef nonnull %12) #7, !dbg !193
  %28 = load i64*, i64** %24, align 4, !dbg !194, !tbaa !134
  %29 = load i64*, i64** %26, align 4, !dbg !194, !tbaa !139
  call void @AEAD_Poly1305_64_poly1305_blocks_continue(i64* %28, i64* %29, i8* noundef %0, i32 noundef %3) #7, !dbg !194
  %30 = load i64*, i64** %24, align 4, !dbg !195, !tbaa !134
  %31 = load i64*, i64** %26, align 4, !dbg !195, !tbaa !139
  call void @AEAD_Poly1305_64_poly1305_blocks_finish(i64* %30, i64* %31, i8* noundef nonnull %13, i8* noundef %1, i8* noundef nonnull %19) #7, !dbg !195
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %21) #7, !dbg !196
  call void @llvm.lifetime.end.p0i8(i64 48, i8* nonnull %20) #7, !dbg !196
  call void @llvm.lifetime.end.p0i8(i64 80, i8* nonnull %12) #7, !dbg !197
  call void @llvm.dbg.value(metadata i32 0, metadata !163, metadata !DIExpression()), !dbg !164
  ret i32 0, !dbg !198
}

; Function Attrs: nounwind uwtable
define dso_local i32 @Hacl_Chacha20Poly1305_aead_decrypt(i8* noundef %0, i8* noundef %1, i32 noundef %2, i8* noundef %3, i8* noundef %4, i32 noundef %5, i8* noundef %6, i8* noundef %7) local_unnamed_addr #3 !dbg !199 {
  %9 = alloca [6 x i64], align 8
  %10 = alloca %struct.Hacl_Impl_Poly1305_64_State_poly1305_state, align 4
  %11 = alloca [96 x i8], align 1
  call void @llvm.dbg.value(metadata i8* %0, metadata !203, metadata !DIExpression()), !dbg !221
  call void @llvm.dbg.value(metadata i8* %1, metadata !204, metadata !DIExpression()), !dbg !221
  call void @llvm.dbg.value(metadata i32 %2, metadata !205, metadata !DIExpression()), !dbg !221
  call void @llvm.dbg.value(metadata i8* %3, metadata !206, metadata !DIExpression()), !dbg !221
  call void @llvm.dbg.value(metadata i8* %4, metadata !207, metadata !DIExpression()), !dbg !221
  call void @llvm.dbg.value(metadata i32 %5, metadata !208, metadata !DIExpression()), !dbg !221
  call void @llvm.dbg.value(metadata i8* %6, metadata !209, metadata !DIExpression()), !dbg !221
  call void @llvm.dbg.value(metadata i8* %7, metadata !210, metadata !DIExpression()), !dbg !221
  %12 = getelementptr inbounds [96 x i8], [96 x i8]* %11, i32 0, i32 0, !dbg !222
  call void @llvm.lifetime.start.p0i8(i64 96, i8* nonnull %12) #7, !dbg !222
  call void @llvm.dbg.declare(metadata [96 x i8]* %11, metadata !211, metadata !DIExpression()), !dbg !223
  call void @llvm.memset.p0i8.i32(i8* noundef nonnull align 1 dereferenceable(96) %12, i8 0, i32 96, i1 false), !dbg !223
  call void @llvm.dbg.value(metadata i8* %12, metadata !215, metadata !DIExpression()), !dbg !221
  %13 = getelementptr inbounds [96 x i8], [96 x i8]* %11, i32 0, i32 64, !dbg !224
  call void @llvm.dbg.value(metadata i8* %13, metadata !216, metadata !DIExpression()), !dbg !221
  call void @llvm.dbg.value(metadata i8* %13, metadata !40, metadata !DIExpression()), !dbg !225
  call void @llvm.dbg.value(metadata i32 %5, metadata !41, metadata !DIExpression()), !dbg !225
  call void @llvm.dbg.value(metadata i32 %2, metadata !42, metadata !DIExpression()), !dbg !225
  %14 = zext i32 %5 to i64, !dbg !227
  call void @llvm.dbg.value(metadata i8* %13, metadata !46, metadata !DIExpression()), !dbg !228
  call void @llvm.dbg.value(metadata i64 %14, metadata !51, metadata !DIExpression()), !dbg !228
  %15 = bitcast i8* %13 to i64*, !dbg !230
  store i64 %14, i64* %15, align 1, !dbg !230
  %16 = getelementptr inbounds [96 x i8], [96 x i8]* %11, i32 0, i32 72, !dbg !231
  call void @llvm.dbg.value(metadata i8* %16, metadata !43, metadata !DIExpression()), !dbg !225
  %17 = zext i32 %2 to i64, !dbg !232
  call void @llvm.dbg.value(metadata i8* %16, metadata !46, metadata !DIExpression()), !dbg !233
  call void @llvm.dbg.value(metadata i64 %17, metadata !51, metadata !DIExpression()), !dbg !233
  %18 = bitcast i8* %16 to i64*, !dbg !235
  store i64 %17, i64* %18, align 1, !dbg !235
  %19 = getelementptr inbounds [96 x i8], [96 x i8]* %11, i32 0, i32 80, !dbg !236
  call void @llvm.dbg.value(metadata i8* %19, metadata !217, metadata !DIExpression()), !dbg !221
  call void @Hacl_Chacha20_chacha20_key_block(i8* noundef nonnull %12, i8* noundef %6, i8* noundef %7, i32 noundef 0) #7, !dbg !237
  call void @llvm.dbg.value(metadata i8* %1, metadata !96, metadata !DIExpression()) #7, !dbg !238
  call void @llvm.dbg.value(metadata i32 %2, metadata !101, metadata !DIExpression()) #7, !dbg !238
  call void @llvm.dbg.value(metadata i8* %19, metadata !102, metadata !DIExpression()) #7, !dbg !238
  call void @llvm.dbg.value(metadata i8* %4, metadata !103, metadata !DIExpression()) #7, !dbg !238
  call void @llvm.dbg.value(metadata i32 %5, metadata !104, metadata !DIExpression()) #7, !dbg !238
  call void @llvm.dbg.value(metadata i8* %12, metadata !105, metadata !DIExpression()) #7, !dbg !238
  call void @llvm.dbg.value(metadata i8* %12, metadata !106, metadata !DIExpression()) #7, !dbg !238
  %20 = getelementptr inbounds [96 x i8], [96 x i8]* %11, i32 0, i32 64, !dbg !240
  call void @llvm.dbg.value(metadata i8* %20, metadata !107, metadata !DIExpression()) #7, !dbg !238
  call void @llvm.dbg.value(metadata i8* %12, metadata !108, metadata !DIExpression()) #7, !dbg !238
  %21 = getelementptr inbounds [96 x i8], [96 x i8]* %11, i32 0, i32 16, !dbg !241
  call void @llvm.dbg.value(metadata i8* %21, metadata !109, metadata !DIExpression()) #7, !dbg !238
  %22 = bitcast [6 x i64]* %9 to i8*, !dbg !242
  call void @llvm.lifetime.start.p0i8(i64 48, i8* nonnull %22) #7, !dbg !242
  call void @llvm.dbg.declare(metadata [6 x i64]* %9, metadata !110, metadata !DIExpression()) #7, !dbg !243
  call void @llvm.memset.p0i8.i32(i8* noundef nonnull align 8 dereferenceable(48) %22, i8 0, i32 48, i1 false) #7, !dbg !243
  %23 = bitcast %struct.Hacl_Impl_Poly1305_64_State_poly1305_state* %10 to i8*, !dbg !244
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %23) #7, !dbg !244
  call void @llvm.dbg.declare(metadata %struct.Hacl_Impl_Poly1305_64_State_poly1305_state* %10, metadata !114, metadata !DIExpression()) #7, !dbg !245
  %24 = getelementptr inbounds [6 x i64], [6 x i64]* %9, i32 0, i32 0, !dbg !246
  %25 = getelementptr inbounds [6 x i64], [6 x i64]* %9, i32 0, i32 3, !dbg !247
  call void @AEAD_Poly1305_64_mk_state(%struct.Hacl_Impl_Poly1305_64_State_poly1305_state* nonnull sret(%struct.Hacl_Impl_Poly1305_64_State_poly1305_state) align 4 %10, i64* noundef nonnull %24, i64* noundef nonnull %25) #7, !dbg !248
  %26 = getelementptr inbounds %struct.Hacl_Impl_Poly1305_64_State_poly1305_state, %struct.Hacl_Impl_Poly1305_64_State_poly1305_state* %10, i32 0, i32 0, !dbg !249
  %27 = load i64*, i64** %26, align 4, !dbg !249, !tbaa !134
  %28 = getelementptr inbounds %struct.Hacl_Impl_Poly1305_64_State_poly1305_state, %struct.Hacl_Impl_Poly1305_64_State_poly1305_state* %10, i32 0, i32 1, !dbg !249
  %29 = load i64*, i64** %28, align 4, !dbg !249, !tbaa !139
  call void @AEAD_Poly1305_64_poly1305_blocks_init(i64* %27, i64* %29, i8* noundef %4, i32 noundef %5, i8* noundef nonnull %12) #7, !dbg !249
  %30 = load i64*, i64** %26, align 4, !dbg !250, !tbaa !134
  %31 = load i64*, i64** %28, align 4, !dbg !250, !tbaa !139
  call void @AEAD_Poly1305_64_poly1305_blocks_continue(i64* %30, i64* %31, i8* noundef %1, i32 noundef %2) #7, !dbg !250
  %32 = load i64*, i64** %26, align 4, !dbg !251, !tbaa !134
  %33 = load i64*, i64** %28, align 4, !dbg !251, !tbaa !139
  call void @AEAD_Poly1305_64_poly1305_blocks_finish(i64* %32, i64* %33, i8* noundef nonnull %20, i8* noundef nonnull %19, i8* noundef nonnull %21) #7, !dbg !251
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %23) #7, !dbg !252
  call void @llvm.lifetime.end.p0i8(i64 48, i8* nonnull %22) #7, !dbg !252
  %34 = call zeroext i8 @Hacl_Policies_cmp_bytes(i8* noundef %3, i8* noundef nonnull %19, i32 noundef 16) #7, !dbg !253
  call void @llvm.dbg.value(metadata i8 %34, metadata !218, metadata !DIExpression()), !dbg !221
  call void @llvm.dbg.value(metadata i8 %34, metadata !219, metadata !DIExpression()), !dbg !221
  %35 = icmp eq i8 %34, 0, !dbg !254
  br i1 %35, label %36, label %37, !dbg !256

36:                                               ; preds = %8
  call void @Hacl_Chacha20_chacha20(i8* noundef %0, i8* noundef %1, i32 noundef %2, i8* noundef %6, i8* noundef %7, i32 noundef 1) #7, !dbg !257
  call void @llvm.dbg.value(metadata i32 0, metadata !220, metadata !DIExpression()), !dbg !221
  br label %37, !dbg !259

37:                                               ; preds = %8, %36
  %38 = phi i32 [ 0, %36 ], [ 1, %8 ], !dbg !260
  call void @llvm.dbg.value(metadata i32 %38, metadata !220, metadata !DIExpression()), !dbg !221
  call void @llvm.lifetime.end.p0i8(i64 96, i8* nonnull %12) #7, !dbg !261
  ret i32 %38, !dbg !262
}

declare !dbg !263 zeroext i8 @Hacl_Policies_cmp_bytes(i8* noundef, i8* noundef, i32 noundef) local_unnamed_addr #5

declare !dbg !267 void @AEAD_Poly1305_64_mk_state(%struct.Hacl_Impl_Poly1305_64_State_poly1305_state* sret(%struct.Hacl_Impl_Poly1305_64_State_poly1305_state) align 4, i64* noundef, i64* noundef) local_unnamed_addr #5

declare !dbg !270 void @AEAD_Poly1305_64_poly1305_blocks_init(i64*, i64*, i8* noundef, i32 noundef, i8* noundef) local_unnamed_addr #5

declare !dbg !273 void @AEAD_Poly1305_64_poly1305_blocks_continue(i64*, i64*, i8* noundef, i32 noundef) local_unnamed_addr #5

declare !dbg !276 void @AEAD_Poly1305_64_poly1305_blocks_finish(i64*, i64*, i8* noundef, i8* noundef, i8* noundef) local_unnamed_addr #5

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare void @llvm.dbg.value(metadata, metadata, metadata) #6

attributes #0 = { mustprogress nofree norecurse nosync nounwind uwtable willreturn writeonly "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="i686" "target-features"="+cx8,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nofree nosync nounwind readnone speculatable willreturn }
attributes #2 = { argmemonly mustprogress nofree nosync nounwind willreturn }
attributes #3 = { nounwind uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="i686" "target-features"="+cx8,+x87" "tune-cpu"="generic" }
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
!46 = !DILocalVariable(name: "b", arg: 1, scope: !47, file: !20, line: 357, type: !38)
!47 = distinct !DISubprogram(name: "store64", scope: !20, file: !20, line: 357, type: !48, scopeLine: 357, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !50)
!48 = !DISubroutineType(types: !49)
!49 = !{null, !38, !5}
!50 = !{!46, !51}
!51 = !DILocalVariable(name: "i", arg: 2, scope: !47, file: !20, line: 357, type: !5)
!52 = !DILocation(line: 0, scope: !47, inlinedAt: !53)
!53 = distinct !DILocation(line: 57, column: 3, scope: !35)
!54 = !DILocation(line: 357, column: 54, scope: !47, inlinedAt: !53)
!55 = !DILocation(line: 58, column: 20, scope: !35)
!56 = !DILocation(line: 59, column: 3, scope: !35)
!57 = !DILocation(line: 0, scope: !47, inlinedAt: !58)
!58 = distinct !DILocation(line: 59, column: 3, scope: !35)
!59 = !DILocation(line: 357, column: 54, scope: !47, inlinedAt: !58)
!60 = !DILocation(line: 60, column: 1, scope: !35)
!61 = distinct !DISubprogram(name: "Hacl_Chacha20Poly1305_aead_encrypt_", scope: !3, file: !3, line: 63, type: !62, scopeLine: 73, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !64)
!62 = !DISubroutineType(types: !63)
!63 = !{!10, !38, !38, !38, !10, !38, !10, !38, !38}
!64 = !{!65, !66, !67, !68, !69, !70, !71, !72, !73, !77, !78}
!65 = !DILocalVariable(name: "c", arg: 1, scope: !61, file: !3, line: 64, type: !38)
!66 = !DILocalVariable(name: "mac", arg: 2, scope: !61, file: !3, line: 65, type: !38)
!67 = !DILocalVariable(name: "m", arg: 3, scope: !61, file: !3, line: 66, type: !38)
!68 = !DILocalVariable(name: "mlen", arg: 4, scope: !61, file: !3, line: 67, type: !10)
!69 = !DILocalVariable(name: "aad1", arg: 5, scope: !61, file: !3, line: 68, type: !38)
!70 = !DILocalVariable(name: "aadlen", arg: 6, scope: !61, file: !3, line: 69, type: !10)
!71 = !DILocalVariable(name: "k1", arg: 7, scope: !61, file: !3, line: 70, type: !38)
!72 = !DILocalVariable(name: "n1", arg: 8, scope: !61, file: !3, line: 71, type: !38)
!73 = !DILocalVariable(name: "tmp", scope: !61, file: !3, line: 74, type: !74)
!74 = !DICompositeType(tag: DW_TAG_array_type, baseType: !13, size: 640, elements: !75)
!75 = !{!76}
!76 = !DISubrange(count: 80)
!77 = !DILocalVariable(name: "b", scope: !61, file: !3, line: 75, type: !38)
!78 = !DILocalVariable(name: "lb", scope: !61, file: !3, line: 76, type: !38)
!79 = !DILocation(line: 0, scope: !61)
!80 = !DILocation(line: 74, column: 3, scope: !61)
!81 = !DILocation(line: 74, column: 11, scope: !61)
!82 = !DILocation(line: 76, column: 21, scope: !61)
!83 = !DILocation(line: 0, scope: !35, inlinedAt: !84)
!84 = distinct !DILocation(line: 77, column: 3, scope: !61)
!85 = !DILocation(line: 57, column: 3, scope: !35, inlinedAt: !84)
!86 = !DILocation(line: 0, scope: !47, inlinedAt: !87)
!87 = distinct !DILocation(line: 57, column: 3, scope: !35, inlinedAt: !84)
!88 = !DILocation(line: 357, column: 54, scope: !47, inlinedAt: !87)
!89 = !DILocation(line: 58, column: 20, scope: !35, inlinedAt: !84)
!90 = !DILocation(line: 59, column: 3, scope: !35, inlinedAt: !84)
!91 = !DILocation(line: 0, scope: !47, inlinedAt: !92)
!92 = distinct !DILocation(line: 59, column: 3, scope: !35, inlinedAt: !84)
!93 = !DILocation(line: 357, column: 54, scope: !47, inlinedAt: !92)
!94 = !DILocation(line: 78, column: 3, scope: !61)
!95 = !DILocation(line: 79, column: 3, scope: !61)
!96 = !DILocalVariable(name: "c", arg: 1, scope: !97, file: !3, line: 35, type: !38)
!97 = distinct !DISubprogram(name: "Hacl_Chacha20Poly1305_aead_encrypt_poly", scope: !3, file: !3, line: 34, type: !98, scopeLine: 42, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !100)
!98 = !DISubroutineType(types: !99)
!99 = !{null, !38, !10, !38, !38, !10, !38}
!100 = !{!96, !101, !102, !103, !104, !105, !106, !107, !108, !109, !110, !114}
!101 = !DILocalVariable(name: "mlen", arg: 2, scope: !97, file: !3, line: 36, type: !10)
!102 = !DILocalVariable(name: "mac", arg: 3, scope: !97, file: !3, line: 37, type: !38)
!103 = !DILocalVariable(name: "aad1", arg: 4, scope: !97, file: !3, line: 38, type: !38)
!104 = !DILocalVariable(name: "aadlen", arg: 5, scope: !97, file: !3, line: 39, type: !10)
!105 = !DILocalVariable(name: "tmp", arg: 6, scope: !97, file: !3, line: 40, type: !38)
!106 = !DILocalVariable(name: "b", scope: !97, file: !3, line: 43, type: !38)
!107 = !DILocalVariable(name: "lb", scope: !97, file: !3, line: 44, type: !38)
!108 = !DILocalVariable(name: "mk", scope: !97, file: !3, line: 45, type: !38)
!109 = !DILocalVariable(name: "key_s", scope: !97, file: !3, line: 46, type: !38)
!110 = !DILocalVariable(name: "tmp1", scope: !97, file: !3, line: 47, type: !111)
!111 = !DICompositeType(tag: DW_TAG_array_type, baseType: !5, size: 384, elements: !112)
!112 = !{!113}
!113 = !DISubrange(count: 6)
!114 = !DILocalVariable(name: "st", scope: !97, file: !3, line: 49, type: !115)
!115 = !DIDerivedType(tag: DW_TAG_typedef, name: "Hacl_Impl_Poly1305_64_State_poly1305_state", file: !116, line: 59, baseType: !117)
!116 = !DIFile(filename: "hacl-c/hacl-c/AEAD_Poly1305_64.h", directory: "/mnt/c/Users/fwill/Documents/HS24/semester_project/tools/binsec/binsec/examples/hacl", checksumkind: CSK_MD5, checksum: "0908bb05e3cebcc46278beb5f390625a")
!117 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !116, line: 54, size: 64, elements: !118)
!118 = !{!119, !121}
!119 = !DIDerivedType(tag: DW_TAG_member, name: "r", scope: !117, file: !116, line: 56, baseType: !120, size: 32)
!120 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5, size: 32)
!121 = !DIDerivedType(tag: DW_TAG_member, name: "h", scope: !117, file: !116, line: 57, baseType: !120, size: 32, offset: 32)
!122 = !DILocation(line: 0, scope: !97, inlinedAt: !123)
!123 = distinct !DILocation(line: 80, column: 3, scope: !61)
!124 = !DILocation(line: 44, column: 21, scope: !97, inlinedAt: !123)
!125 = !DILocation(line: 46, column: 23, scope: !97, inlinedAt: !123)
!126 = !DILocation(line: 47, column: 3, scope: !97, inlinedAt: !123)
!127 = !DILocation(line: 47, column: 12, scope: !97, inlinedAt: !123)
!128 = !DILocation(line: 48, column: 3, scope: !97, inlinedAt: !123)
!129 = !DILocation(line: 49, column: 3, scope: !97, inlinedAt: !123)
!130 = !DILocation(line: 49, column: 34, scope: !97, inlinedAt: !123)
!131 = !DILocation(line: 49, column: 45, scope: !97, inlinedAt: !123)
!132 = !DILocation(line: 49, column: 8, scope: !97, inlinedAt: !123)
!133 = !DILocation(line: 50, column: 9, scope: !97, inlinedAt: !123)
!134 = !{!135, !136, i64 0}
!135 = !{!"", !136, i64 0, !136, i64 4}
!136 = !{!"any pointer", !137, i64 0}
!137 = !{!"omnipotent char", !138, i64 0}
!138 = !{!"Simple C/C++ TBAA"}
!139 = !{!135, !136, i64 4}
!140 = !DILocation(line: 51, column: 9, scope: !97, inlinedAt: !123)
!141 = !DILocation(line: 52, column: 3, scope: !97, inlinedAt: !123)
!142 = !DILocation(line: 53, column: 1, scope: !97, inlinedAt: !123)
!143 = !DILocation(line: 82, column: 1, scope: !61)
!144 = !DILocation(line: 81, column: 3, scope: !61)
!145 = !DISubprogram(name: "Hacl_Chacha20_chacha20", scope: !146, file: !146, line: 87, type: !147, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !149)
!146 = !DIFile(filename: "hacl-c/hacl-c/Hacl_Chacha20.h", directory: "/mnt/c/Users/fwill/Documents/HS24/semester_project/tools/binsec/binsec/examples/hacl", checksumkind: CSK_MD5, checksum: "b8e93b3d1bc695311f402d98a2bec733")
!147 = !DISubroutineType(types: !148)
!148 = !{null, !38, !38, !10, !38, !38, !10}
!149 = !{}
!150 = !DISubprogram(name: "Hacl_Chacha20_chacha20_key_block", scope: !146, file: !146, line: 63, type: !151, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !149)
!151 = !DISubroutineType(types: !152)
!152 = !{null, !38, !38, !38, !10}
!153 = distinct !DISubprogram(name: "Hacl_Chacha20Poly1305_aead_encrypt", scope: !3, file: !3, line: 85, type: !62, scopeLine: 95, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !154)
!154 = !{!155, !156, !157, !158, !159, !160, !161, !162, !163}
!155 = !DILocalVariable(name: "c", arg: 1, scope: !153, file: !3, line: 86, type: !38)
!156 = !DILocalVariable(name: "mac", arg: 2, scope: !153, file: !3, line: 87, type: !38)
!157 = !DILocalVariable(name: "m", arg: 3, scope: !153, file: !3, line: 88, type: !38)
!158 = !DILocalVariable(name: "mlen", arg: 4, scope: !153, file: !3, line: 89, type: !10)
!159 = !DILocalVariable(name: "aad1", arg: 5, scope: !153, file: !3, line: 90, type: !38)
!160 = !DILocalVariable(name: "aadlen", arg: 6, scope: !153, file: !3, line: 91, type: !10)
!161 = !DILocalVariable(name: "k1", arg: 7, scope: !153, file: !3, line: 92, type: !38)
!162 = !DILocalVariable(name: "n1", arg: 8, scope: !153, file: !3, line: 93, type: !38)
!163 = !DILocalVariable(name: "z", scope: !153, file: !3, line: 96, type: !10)
!164 = !DILocation(line: 0, scope: !153)
!165 = !DILocation(line: 0, scope: !61, inlinedAt: !166)
!166 = distinct !DILocation(line: 96, column: 16, scope: !153)
!167 = !DILocation(line: 74, column: 3, scope: !61, inlinedAt: !166)
!168 = !DILocation(line: 74, column: 11, scope: !61, inlinedAt: !166)
!169 = !DILocation(line: 76, column: 21, scope: !61, inlinedAt: !166)
!170 = !DILocation(line: 0, scope: !35, inlinedAt: !171)
!171 = distinct !DILocation(line: 77, column: 3, scope: !61, inlinedAt: !166)
!172 = !DILocation(line: 57, column: 3, scope: !35, inlinedAt: !171)
!173 = !DILocation(line: 0, scope: !47, inlinedAt: !174)
!174 = distinct !DILocation(line: 57, column: 3, scope: !35, inlinedAt: !171)
!175 = !DILocation(line: 357, column: 54, scope: !47, inlinedAt: !174)
!176 = !DILocation(line: 58, column: 20, scope: !35, inlinedAt: !171)
!177 = !DILocation(line: 59, column: 3, scope: !35, inlinedAt: !171)
!178 = !DILocation(line: 0, scope: !47, inlinedAt: !179)
!179 = distinct !DILocation(line: 59, column: 3, scope: !35, inlinedAt: !171)
!180 = !DILocation(line: 357, column: 54, scope: !47, inlinedAt: !179)
!181 = !DILocation(line: 78, column: 3, scope: !61, inlinedAt: !166)
!182 = !DILocation(line: 79, column: 3, scope: !61, inlinedAt: !166)
!183 = !DILocation(line: 0, scope: !97, inlinedAt: !184)
!184 = distinct !DILocation(line: 80, column: 3, scope: !61, inlinedAt: !166)
!185 = !DILocation(line: 46, column: 23, scope: !97, inlinedAt: !184)
!186 = !DILocation(line: 47, column: 3, scope: !97, inlinedAt: !184)
!187 = !DILocation(line: 47, column: 12, scope: !97, inlinedAt: !184)
!188 = !DILocation(line: 48, column: 3, scope: !97, inlinedAt: !184)
!189 = !DILocation(line: 49, column: 3, scope: !97, inlinedAt: !184)
!190 = !DILocation(line: 49, column: 34, scope: !97, inlinedAt: !184)
!191 = !DILocation(line: 49, column: 45, scope: !97, inlinedAt: !184)
!192 = !DILocation(line: 49, column: 8, scope: !97, inlinedAt: !184)
!193 = !DILocation(line: 50, column: 9, scope: !97, inlinedAt: !184)
!194 = !DILocation(line: 51, column: 9, scope: !97, inlinedAt: !184)
!195 = !DILocation(line: 52, column: 3, scope: !97, inlinedAt: !184)
!196 = !DILocation(line: 53, column: 1, scope: !97, inlinedAt: !184)
!197 = !DILocation(line: 82, column: 1, scope: !61, inlinedAt: !166)
!198 = !DILocation(line: 97, column: 3, scope: !153)
!199 = distinct !DISubprogram(name: "Hacl_Chacha20Poly1305_aead_decrypt", scope: !3, file: !3, line: 101, type: !200, scopeLine: 111, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !202)
!200 = !DISubroutineType(types: !201)
!201 = !{!10, !38, !38, !10, !38, !38, !10, !38, !38}
!202 = !{!203, !204, !205, !206, !207, !208, !209, !210, !211, !215, !216, !217, !218, !219, !220}
!203 = !DILocalVariable(name: "m", arg: 1, scope: !199, file: !3, line: 102, type: !38)
!204 = !DILocalVariable(name: "c", arg: 2, scope: !199, file: !3, line: 103, type: !38)
!205 = !DILocalVariable(name: "mlen", arg: 3, scope: !199, file: !3, line: 104, type: !10)
!206 = !DILocalVariable(name: "mac", arg: 4, scope: !199, file: !3, line: 105, type: !38)
!207 = !DILocalVariable(name: "aad1", arg: 5, scope: !199, file: !3, line: 106, type: !38)
!208 = !DILocalVariable(name: "aadlen", arg: 6, scope: !199, file: !3, line: 107, type: !10)
!209 = !DILocalVariable(name: "k1", arg: 7, scope: !199, file: !3, line: 108, type: !38)
!210 = !DILocalVariable(name: "n1", arg: 8, scope: !199, file: !3, line: 109, type: !38)
!211 = !DILocalVariable(name: "tmp", scope: !199, file: !3, line: 112, type: !212)
!212 = !DICompositeType(tag: DW_TAG_array_type, baseType: !13, size: 768, elements: !213)
!213 = !{!214}
!214 = !DISubrange(count: 96)
!215 = !DILocalVariable(name: "b", scope: !199, file: !3, line: 113, type: !38)
!216 = !DILocalVariable(name: "lb", scope: !199, file: !3, line: 114, type: !38)
!217 = !DILocalVariable(name: "rmac", scope: !199, file: !3, line: 116, type: !38)
!218 = !DILocalVariable(name: "result", scope: !199, file: !3, line: 119, type: !13)
!219 = !DILocalVariable(name: "verify", scope: !199, file: !3, line: 120, type: !13)
!220 = !DILocalVariable(name: "res", scope: !199, file: !3, line: 121, type: !10)
!221 = !DILocation(line: 0, scope: !199)
!222 = !DILocation(line: 112, column: 3, scope: !199)
!223 = !DILocation(line: 112, column: 11, scope: !199)
!224 = !DILocation(line: 114, column: 21, scope: !199)
!225 = !DILocation(line: 0, scope: !35, inlinedAt: !226)
!226 = distinct !DILocation(line: 115, column: 3, scope: !199)
!227 = !DILocation(line: 57, column: 3, scope: !35, inlinedAt: !226)
!228 = !DILocation(line: 0, scope: !47, inlinedAt: !229)
!229 = distinct !DILocation(line: 57, column: 3, scope: !35, inlinedAt: !226)
!230 = !DILocation(line: 357, column: 54, scope: !47, inlinedAt: !229)
!231 = !DILocation(line: 58, column: 20, scope: !35, inlinedAt: !226)
!232 = !DILocation(line: 59, column: 3, scope: !35, inlinedAt: !226)
!233 = !DILocation(line: 0, scope: !47, inlinedAt: !234)
!234 = distinct !DILocation(line: 59, column: 3, scope: !35, inlinedAt: !226)
!235 = !DILocation(line: 357, column: 54, scope: !47, inlinedAt: !234)
!236 = !DILocation(line: 116, column: 23, scope: !199)
!237 = !DILocation(line: 117, column: 3, scope: !199)
!238 = !DILocation(line: 0, scope: !97, inlinedAt: !239)
!239 = distinct !DILocation(line: 118, column: 3, scope: !199)
!240 = !DILocation(line: 44, column: 21, scope: !97, inlinedAt: !239)
!241 = !DILocation(line: 46, column: 23, scope: !97, inlinedAt: !239)
!242 = !DILocation(line: 47, column: 3, scope: !97, inlinedAt: !239)
!243 = !DILocation(line: 47, column: 12, scope: !97, inlinedAt: !239)
!244 = !DILocation(line: 48, column: 3, scope: !97, inlinedAt: !239)
!245 = !DILocation(line: 49, column: 3, scope: !97, inlinedAt: !239)
!246 = !DILocation(line: 49, column: 34, scope: !97, inlinedAt: !239)
!247 = !DILocation(line: 49, column: 45, scope: !97, inlinedAt: !239)
!248 = !DILocation(line: 49, column: 8, scope: !97, inlinedAt: !239)
!249 = !DILocation(line: 50, column: 9, scope: !97, inlinedAt: !239)
!250 = !DILocation(line: 51, column: 9, scope: !97, inlinedAt: !239)
!251 = !DILocation(line: 52, column: 3, scope: !97, inlinedAt: !239)
!252 = !DILocation(line: 53, column: 1, scope: !97, inlinedAt: !239)
!253 = !DILocation(line: 119, column: 20, scope: !199)
!254 = !DILocation(line: 122, column: 14, scope: !255)
!255 = distinct !DILexicalBlock(scope: !199, file: !3, line: 122, column: 7)
!256 = !DILocation(line: 122, column: 7, scope: !199)
!257 = !DILocation(line: 124, column: 5, scope: !258)
!258 = distinct !DILexicalBlock(scope: !255, file: !3, line: 123, column: 3)
!259 = !DILocation(line: 126, column: 3, scope: !258)
!260 = !DILocation(line: 0, scope: !255)
!261 = !DILocation(line: 130, column: 1, scope: !199)
!262 = !DILocation(line: 129, column: 3, scope: !199)
!263 = !DISubprogram(name: "Hacl_Policies_cmp_bytes", scope: !264, file: !264, line: 42, type: !265, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !149)
!264 = !DIFile(filename: "hacl-c/hacl-c/Hacl_Policies.h", directory: "/mnt/c/Users/fwill/Documents/HS24/semester_project/tools/binsec/binsec/examples/hacl", checksumkind: CSK_MD5, checksum: "a8a37306bf5433ee7d02dfa3ffcf6ed4")
!265 = !DISubroutineType(types: !266)
!266 = !{!13, !38, !38, !10}
!267 = !DISubprogram(name: "AEAD_Poly1305_64_mk_state", scope: !116, file: !116, line: 84, type: !268, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !149)
!268 = !DISubroutineType(types: !269)
!269 = !{!115, !120, !120}
!270 = !DISubprogram(name: "AEAD_Poly1305_64_poly1305_blocks_init", scope: !116, file: !116, line: 96, type: !271, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !149)
!271 = !DISubroutineType(types: !272)
!272 = !{null, !115, !38, !10, !38}
!273 = !DISubprogram(name: "AEAD_Poly1305_64_poly1305_blocks_continue", scope: !116, file: !116, line: 104, type: !274, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !149)
!274 = !DISubroutineType(types: !275)
!275 = !{null, !115, !38, !10}
!276 = !DISubprogram(name: "AEAD_Poly1305_64_poly1305_blocks_finish", scope: !116, file: !116, line: 117, type: !277, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !149)
!277 = !DISubroutineType(types: !278)
!278 = !{null, !115, !38, !38, !38}
