; ModuleID = 'hacl-c/hacl-c/Hacl_Ed25519.c'
source_filename = "hacl-c/hacl-c/Hacl_Ed25519.c"
target datalayout = "e-m:e-p:32:32-p270:32:32-p271:32:32-p272:64:64-f64:32:64-f80:32-n8:16:32-S128"
target triple = "i386-pc-linux-gnu"

%struct.FStar_UInt128_uint128 = type { i64, i64 }

; Function Attrs: noinline nounwind uwtable
define dso_local void @Hacl_Ed25519_sign(i8* nocapture noundef writeonly %0, i8* nocapture noundef readonly %1, i8* nocapture noundef readonly %2, i32 noundef %3) local_unnamed_addr #0 !dbg !26 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !31, metadata !DIExpression()), !dbg !35
  call void @llvm.dbg.value(metadata i8* %1, metadata !32, metadata !DIExpression()), !dbg !35
  call void @llvm.dbg.value(metadata i8* %2, metadata !33, metadata !DIExpression()), !dbg !35
  call void @llvm.dbg.value(metadata i32 %3, metadata !34, metadata !DIExpression()), !dbg !35
  call fastcc void @Hacl_Impl_Ed25519_Sign_sign(i8* noundef %0, i8* noundef %1, i8* noundef %2, i32 noundef %3), !dbg !36
  ret void, !dbg !37
}

; Function Attrs: mustprogress nofree nosync nounwind readnone speculatable willreturn
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: noinline nounwind uwtable
define internal fastcc void @Hacl_Impl_Ed25519_Sign_sign(i8* nocapture noundef writeonly %0, i8* nocapture noundef readonly %1, i8* nocapture noundef readonly %2, i32 noundef %3) unnamed_addr #0 !dbg !38 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !40, metadata !DIExpression()), !dbg !44
  call void @llvm.dbg.value(metadata i8* %1, metadata !41, metadata !DIExpression()), !dbg !44
  call void @llvm.dbg.value(metadata i8* %2, metadata !42, metadata !DIExpression()), !dbg !44
  call void @llvm.dbg.value(metadata i32 %3, metadata !43, metadata !DIExpression()), !dbg !44
  call fastcc void @Hacl_Impl_Ed25519_Sign_sign_(i8* noundef %0, i8* noundef %1, i8* noundef %2, i32 noundef %3), !dbg !45
  ret void, !dbg !46
}

; Function Attrs: noinline nounwind uwtable
define dso_local zeroext i1 @Hacl_Ed25519_verify(i8* nocapture noundef readonly %0, i8* nocapture noundef readonly %1, i32 noundef %2, i8* nocapture noundef readonly %3) local_unnamed_addr #0 !dbg !47 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !52, metadata !DIExpression()), !dbg !56
  call void @llvm.dbg.value(metadata i8* %1, metadata !53, metadata !DIExpression()), !dbg !56
  call void @llvm.dbg.value(metadata i32 %2, metadata !54, metadata !DIExpression()), !dbg !56
  call void @llvm.dbg.value(metadata i8* %3, metadata !55, metadata !DIExpression()), !dbg !56
  %5 = call fastcc zeroext i1 @Hacl_Impl_Ed25519_Verify_verify(i8* noundef %0, i8* noundef %1, i32 noundef %2, i8* noundef %3), !dbg !57
  ret i1 %5, !dbg !58
}

; Function Attrs: noinline nounwind uwtable
define internal fastcc zeroext i1 @Hacl_Impl_Ed25519_Verify_verify(i8* nocapture noundef readonly %0, i8* nocapture noundef readonly %1, i32 noundef %2, i8* nocapture noundef readonly %3) unnamed_addr #0 !dbg !59 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !61, metadata !DIExpression()), !dbg !65
  call void @llvm.dbg.value(metadata i8* %1, metadata !62, metadata !DIExpression()), !dbg !65
  call void @llvm.dbg.value(metadata i32 %2, metadata !63, metadata !DIExpression()), !dbg !65
  call void @llvm.dbg.value(metadata i8* %3, metadata !64, metadata !DIExpression()), !dbg !65
  %5 = call fastcc zeroext i1 @Hacl_Impl_Ed25519_Verify_verify_(i8* noundef %0, i8* noundef %1, i32 noundef %2, i8* noundef %3), !dbg !66
  ret i1 %5, !dbg !67
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @Hacl_Ed25519_secret_to_public(i8* nocapture noundef %0, i8* nocapture noundef readonly %1) local_unnamed_addr #0 !dbg !68 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !72, metadata !DIExpression()), !dbg !74
  call void @llvm.dbg.value(metadata i8* %1, metadata !73, metadata !DIExpression()), !dbg !74
  call fastcc void @Hacl_Impl_Ed25519_SecretToPublic_secret_to_public(i8* noundef %0, i8* noundef %1), !dbg !75
  ret void, !dbg !76
}

; Function Attrs: noinline nounwind uwtable
define internal fastcc void @Hacl_Impl_Ed25519_SecretToPublic_secret_to_public(i8* nocapture noundef %0, i8* nocapture noundef readonly %1) unnamed_addr #0 !dbg !77 {
  %3 = alloca [64 x i8], align 1
  call void @llvm.dbg.value(metadata i8* %0, metadata !79, metadata !DIExpression()), !dbg !85
  call void @llvm.dbg.value(metadata i8* %1, metadata !80, metadata !DIExpression()), !dbg !85
  %4 = getelementptr inbounds [64 x i8], [64 x i8]* %3, i32 0, i32 0, !dbg !86
  call void @llvm.lifetime.start.p0i8(i64 64, i8* nonnull %4) #14, !dbg !86
  call void @llvm.dbg.declare(metadata [64 x i8]* %3, metadata !81, metadata !DIExpression()), !dbg !87
  call void @llvm.memset.p0i8.i32(i8* noundef nonnull align 1 dereferenceable(64) %4, i8 0, i32 64, i1 false), !dbg !87
  call fastcc void @Hacl_Impl_Ed25519_SecretExpand_secret_expand(i8* noundef nonnull %4, i8* noundef %1), !dbg !88
  call fastcc void @Hacl_Impl_Ed25519_SecretToPublic_secret_to_public_(i8* noundef %0, i8* noundef nonnull %4), !dbg !89
  call void @llvm.lifetime.end.p0i8(i64 64, i8* nonnull %4) #14, !dbg !90
  ret void, !dbg !90
}

; Function Attrs: noinline nounwind uwtable
define internal fastcc void @Hacl_Impl_Ed25519_Sign_sign_(i8* nocapture noundef writeonly %0, i8* nocapture noundef readonly %1, i8* nocapture noundef readonly %2, i32 noundef %3) unnamed_addr #0 !dbg !91 {
  %5 = alloca [352 x i8], align 1
  %6 = alloca [65 x i64], align 8
  %7 = alloca [32 x i8], align 1
  call void @llvm.dbg.value(metadata i8* %0, metadata !93, metadata !DIExpression()), !dbg !114
  call void @llvm.dbg.value(metadata i8* %1, metadata !94, metadata !DIExpression()), !dbg !114
  call void @llvm.dbg.value(metadata i8* %2, metadata !95, metadata !DIExpression()), !dbg !114
  call void @llvm.dbg.value(metadata i32 %3, metadata !96, metadata !DIExpression()), !dbg !114
  %8 = getelementptr inbounds [352 x i8], [352 x i8]* %5, i32 0, i32 0, !dbg !115
  call void @llvm.lifetime.start.p0i8(i64 352, i8* nonnull %8) #14, !dbg !115
  call void @llvm.dbg.declare(metadata [352 x i8]* %5, metadata !97, metadata !DIExpression()), !dbg !116
  call void @llvm.memset.p0i8.i32(i8* noundef nonnull align 1 dereferenceable(352) %8, i8 0, i32 352, i1 false), !dbg !116
  %9 = bitcast [65 x i64]* %6 to i8*, !dbg !117
  call void @llvm.lifetime.start.p0i8(i64 520, i8* nonnull %9) #14, !dbg !117
  call void @llvm.dbg.declare(metadata [65 x i64]* %6, metadata !101, metadata !DIExpression()), !dbg !118
  call void @llvm.memset.p0i8.i32(i8* noundef nonnull align 8 dereferenceable(520) %9, i8 0, i32 520, i1 false), !dbg !118
  %10 = getelementptr inbounds [352 x i8], [352 x i8]* %5, i32 0, i32 160, !dbg !119
  call void @llvm.dbg.value(metadata i8* %10, metadata !105, metadata !DIExpression()), !dbg !114
  %11 = getelementptr inbounds [352 x i8], [352 x i8]* %5, i32 0, i32 192, !dbg !120
  call void @llvm.dbg.value(metadata i8* %11, metadata !106, metadata !DIExpression()), !dbg !114
  call fastcc void @Hacl_Impl_Ed25519_Sign_Steps_sign_step_1(i8* noundef %1, i8* noundef nonnull %8), !dbg !121
  %12 = getelementptr inbounds [65 x i64], [65 x i64]* %6, i32 0, i32 0, !dbg !122
  call fastcc void @Hacl_Impl_Ed25519_Sign_Steps_sign_step_2(i8* noundef %2, i32 noundef %3, i8* noundef nonnull %8, i64* noundef nonnull %12), !dbg !123
  %13 = getelementptr inbounds [32 x i8], [32 x i8]* %7, i32 0, i32 0, !dbg !124
  call void @llvm.lifetime.start.p0i8(i64 32, i8* nonnull %13) #14, !dbg !124
  call void @llvm.dbg.declare(metadata [32 x i8]* %7, metadata !107, metadata !DIExpression()), !dbg !125
  call void @llvm.memset.p0i8.i32(i8* noundef nonnull align 1 dereferenceable(32) %13, i8 0, i32 32, i1 false), !dbg !125
  %14 = getelementptr inbounds [65 x i64], [65 x i64]* %6, i32 0, i32 20, !dbg !126
  call void @llvm.dbg.value(metadata i64* %14, metadata !111, metadata !DIExpression()), !dbg !114
  call void @llvm.dbg.value(metadata i8* %10, metadata !113, metadata !DIExpression()), !dbg !114
  call fastcc void @Hacl_Impl_Store56_store_56(i8* noundef nonnull %13, i64* noundef nonnull %14), !dbg !127
  call fastcc void @Hacl_Impl_Ed25519_Sign_Steps_point_mul_g_compress(i8* noundef nonnull %10, i8* noundef nonnull %13), !dbg !128
  call fastcc void @Hacl_Impl_Ed25519_Sign_Steps_sign_step_4(i8* noundef %2, i32 noundef %3, i8* noundef nonnull %8, i64* noundef nonnull %12), !dbg !129
  call fastcc void @Hacl_Impl_Ed25519_Sign_Steps_sign_step_5(i8* noundef nonnull %8, i64* noundef nonnull %12), !dbg !130
  call fastcc void @Hacl_Impl_Ed25519_Sign_append_to_sig(i8* noundef %0, i8* noundef nonnull %10, i8* noundef nonnull %11), !dbg !131
  call void @llvm.lifetime.end.p0i8(i64 32, i8* nonnull %13) #14, !dbg !132
  call void @llvm.lifetime.end.p0i8(i64 520, i8* nonnull %9) #14, !dbg !132
  call void @llvm.lifetime.end.p0i8(i64 352, i8* nonnull %8) #14, !dbg !132
  ret void, !dbg !132
}

; Function Attrs: argmemonly mustprogress nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0i8(i64 immarg, i8* nocapture) #2

; Function Attrs: argmemonly mustprogress nofree nounwind willreturn writeonly
declare void @llvm.memset.p0i8.i32(i8* nocapture writeonly, i8, i32, i1 immarg) #3

; Function Attrs: noinline nounwind uwtable
define internal fastcc void @Hacl_Impl_Ed25519_Sign_Steps_sign_step_1(i8* nocapture noundef readonly %0, i8* nocapture noundef %1) unnamed_addr #0 !dbg !133 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !135, metadata !DIExpression()), !dbg !140
  call void @llvm.dbg.value(metadata i8* %1, metadata !136, metadata !DIExpression()), !dbg !140
  %3 = getelementptr inbounds i8, i8* %1, i32 96, !dbg !141
  call void @llvm.dbg.value(metadata i8* %3, metadata !137, metadata !DIExpression()), !dbg !140
  %4 = getelementptr inbounds i8, i8* %1, i32 224, !dbg !142
  call void @llvm.dbg.value(metadata i8* %4, metadata !138, metadata !DIExpression()), !dbg !140
  call void @llvm.dbg.value(metadata i8* %4, metadata !139, metadata !DIExpression()), !dbg !140
  call fastcc void @Hacl_Impl_Ed25519_SecretExpand_secret_expand(i8* noundef nonnull %4, i8* noundef %0), !dbg !143
  call fastcc void @Hacl_Impl_Ed25519_Sign_Steps_point_mul_g_compress(i8* noundef nonnull %3, i8* noundef nonnull %4), !dbg !144
  ret void, !dbg !145
}

; Function Attrs: noinline nounwind uwtable
define internal fastcc void @Hacl_Impl_Ed25519_Sign_Steps_sign_step_2(i8* nocapture noundef readonly %0, i32 noundef %1, i8* nocapture noundef readonly %2, i64* nocapture noundef %3) unnamed_addr #0 !dbg !146 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !150, metadata !DIExpression()), !dbg !157
  call void @llvm.dbg.value(metadata i32 %1, metadata !151, metadata !DIExpression()), !dbg !157
  call void @llvm.dbg.value(metadata i8* %2, metadata !152, metadata !DIExpression()), !dbg !157
  call void @llvm.dbg.value(metadata i64* %3, metadata !153, metadata !DIExpression()), !dbg !157
  %5 = getelementptr inbounds i64, i64* %3, i32 20, !dbg !158
  call void @llvm.dbg.value(metadata i64* %5, metadata !154, metadata !DIExpression()), !dbg !157
  call void @llvm.dbg.value(metadata i8* %2, metadata !155, metadata !DIExpression(DW_OP_plus_uconst, 224, DW_OP_stack_value)), !dbg !157
  %6 = getelementptr inbounds i8, i8* %2, i32 256, !dbg !159
  call void @llvm.dbg.value(metadata i8* %6, metadata !156, metadata !DIExpression()), !dbg !157
  call fastcc void @Hacl_Impl_SHA512_ModQ_sha512_modq_pre(i64* noundef nonnull %5, i8* noundef nonnull %6, i8* noundef %0, i32 noundef %1), !dbg !160
  ret void, !dbg !161
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind uwtable willreturn
define internal fastcc void @Hacl_Impl_Store56_store_56(i8* nocapture noundef writeonly %0, i64* nocapture noundef readonly %1) unnamed_addr #4 !dbg !162 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !166, metadata !DIExpression()), !dbg !179
  call void @llvm.dbg.value(metadata i64* %1, metadata !167, metadata !DIExpression()), !dbg !179
  %3 = load i64, i64* %1, align 4, !dbg !180, !tbaa !181
  call void @llvm.dbg.value(metadata i64 %3, metadata !168, metadata !DIExpression()), !dbg !179
  %4 = getelementptr inbounds i64, i64* %1, i32 1, !dbg !185
  %5 = load i64, i64* %4, align 4, !dbg !185, !tbaa !181
  call void @llvm.dbg.value(metadata i64 %5, metadata !169, metadata !DIExpression()), !dbg !179
  %6 = getelementptr inbounds i64, i64* %1, i32 2, !dbg !186
  %7 = load i64, i64* %6, align 4, !dbg !186, !tbaa !181
  call void @llvm.dbg.value(metadata i64 %7, metadata !170, metadata !DIExpression()), !dbg !179
  %8 = getelementptr inbounds i64, i64* %1, i32 3, !dbg !187
  %9 = load i64, i64* %8, align 4, !dbg !187, !tbaa !181
  call void @llvm.dbg.value(metadata i64 %9, metadata !171, metadata !DIExpression()), !dbg !179
  %10 = getelementptr inbounds i64, i64* %1, i32 4, !dbg !188
  %11 = load i64, i64* %10, align 4, !dbg !188, !tbaa !181
  call void @llvm.dbg.value(metadata i64 %11, metadata !172, metadata !DIExpression()), !dbg !179
  %12 = trunc i64 %11 to i32, !dbg !189
  call void @llvm.dbg.value(metadata i32 %12, metadata !173, metadata !DIExpression()), !dbg !179
  call void @llvm.dbg.value(metadata i8* %0, metadata !174, metadata !DIExpression()), !dbg !179
  call fastcc void @store64(i8* noundef %0, i64 noundef %3), !dbg !190
  %13 = getelementptr inbounds i8, i8* %0, i32 7, !dbg !191
  call void @llvm.dbg.value(metadata i8* %13, metadata !175, metadata !DIExpression()), !dbg !179
  call fastcc void @store64(i8* noundef nonnull %13, i64 noundef %5), !dbg !192
  %14 = getelementptr inbounds i8, i8* %0, i32 14, !dbg !193
  call void @llvm.dbg.value(metadata i8* %14, metadata !176, metadata !DIExpression()), !dbg !179
  call fastcc void @store64(i8* noundef nonnull %14, i64 noundef %7), !dbg !194
  %15 = getelementptr inbounds i8, i8* %0, i32 21, !dbg !195
  call void @llvm.dbg.value(metadata i8* %15, metadata !177, metadata !DIExpression()), !dbg !179
  call fastcc void @store64(i8* noundef nonnull %15, i64 noundef %9), !dbg !196
  %16 = getelementptr inbounds i8, i8* %0, i32 28, !dbg !197
  call void @llvm.dbg.value(metadata i8* %16, metadata !178, metadata !DIExpression()), !dbg !179
  call fastcc void @store32(i8* noundef nonnull %16, i32 noundef %12), !dbg !198
  ret void, !dbg !199
}

; Function Attrs: noinline nounwind uwtable
define internal fastcc void @Hacl_Impl_Ed25519_Sign_Steps_point_mul_g_compress(i8* nocapture noundef %0, i8* nocapture noundef readonly %1) unnamed_addr #0 !dbg !200 {
  %3 = alloca [20 x i64], align 8
  call void @llvm.dbg.value(metadata i8* %0, metadata !202, metadata !DIExpression()), !dbg !208
  call void @llvm.dbg.value(metadata i8* %1, metadata !203, metadata !DIExpression()), !dbg !208
  %4 = bitcast [20 x i64]* %3 to i8*, !dbg !209
  call void @llvm.lifetime.start.p0i8(i64 160, i8* nonnull %4) #14, !dbg !209
  call void @llvm.dbg.declare(metadata [20 x i64]* %3, metadata !204, metadata !DIExpression()), !dbg !210
  call void @llvm.memset.p0i8.i32(i8* noundef nonnull align 8 dereferenceable(160) %4, i8 0, i32 160, i1 false), !dbg !210
  %5 = getelementptr inbounds [20 x i64], [20 x i64]* %3, i32 0, i32 0, !dbg !211
  call fastcc void @Hacl_Impl_Ed25519_Sign_Steps_point_mul_g(i64* noundef nonnull %5, i8* noundef %1), !dbg !212
  call fastcc void @Hacl_Impl_Ed25519_PointCompress_point_compress(i8* noundef %0, i64* noundef nonnull %5), !dbg !213
  call void @llvm.lifetime.end.p0i8(i64 160, i8* nonnull %4) #14, !dbg !214
  ret void, !dbg !214
}

; Function Attrs: noinline nounwind uwtable
define internal fastcc void @Hacl_Impl_Ed25519_Sign_Steps_sign_step_4(i8* nocapture noundef readonly %0, i32 noundef %1, i8* nocapture noundef readonly %2, i64* nocapture noundef %3) unnamed_addr #0 !dbg !215 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !217, metadata !DIExpression()), !dbg !224
  call void @llvm.dbg.value(metadata i32 %1, metadata !218, metadata !DIExpression()), !dbg !224
  call void @llvm.dbg.value(metadata i8* %2, metadata !219, metadata !DIExpression()), !dbg !224
  call void @llvm.dbg.value(metadata i64* %3, metadata !220, metadata !DIExpression()), !dbg !224
  %5 = getelementptr inbounds i64, i64* %3, i32 60, !dbg !225
  call void @llvm.dbg.value(metadata i64* %5, metadata !221, metadata !DIExpression()), !dbg !224
  %6 = getelementptr inbounds i8, i8* %2, i32 96, !dbg !226
  call void @llvm.dbg.value(metadata i8* %6, metadata !222, metadata !DIExpression()), !dbg !224
  %7 = getelementptr inbounds i8, i8* %2, i32 160, !dbg !227
  call void @llvm.dbg.value(metadata i8* %7, metadata !223, metadata !DIExpression()), !dbg !224
  call fastcc void @Hacl_Impl_SHA512_ModQ_sha512_modq_pre_pre2(i64* noundef nonnull %5, i8* noundef nonnull %7, i8* noundef nonnull %6, i8* noundef %0, i32 noundef %1), !dbg !228
  ret void, !dbg !229
}

; Function Attrs: noinline nounwind uwtable
define internal fastcc void @Hacl_Impl_Ed25519_Sign_Steps_sign_step_5(i8* nocapture noundef %0, i64* nocapture noundef %1) unnamed_addr #0 !dbg !230 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !232, metadata !DIExpression()), !dbg !241
  call void @llvm.dbg.value(metadata i64* %1, metadata !233, metadata !DIExpression()), !dbg !241
  %3 = getelementptr inbounds i64, i64* %1, i32 20, !dbg !242
  call void @llvm.dbg.value(metadata i64* %3, metadata !234, metadata !DIExpression()), !dbg !241
  %4 = getelementptr inbounds i64, i64* %1, i32 45, !dbg !243
  call void @llvm.dbg.value(metadata i64* %4, metadata !235, metadata !DIExpression()), !dbg !241
  %5 = getelementptr inbounds i64, i64* %1, i32 50, !dbg !244
  call void @llvm.dbg.value(metadata i64* %5, metadata !236, metadata !DIExpression()), !dbg !241
  %6 = getelementptr inbounds i64, i64* %1, i32 55, !dbg !245
  call void @llvm.dbg.value(metadata i64* %6, metadata !237, metadata !DIExpression()), !dbg !241
  %7 = getelementptr inbounds i64, i64* %1, i32 60, !dbg !246
  call void @llvm.dbg.value(metadata i64* %7, metadata !238, metadata !DIExpression()), !dbg !241
  %8 = getelementptr inbounds i8, i8* %0, i32 192, !dbg !247
  call void @llvm.dbg.value(metadata i8* %8, metadata !239, metadata !DIExpression()), !dbg !241
  %9 = getelementptr inbounds i8, i8* %0, i32 224, !dbg !248
  call void @llvm.dbg.value(metadata i8* %9, metadata !240, metadata !DIExpression()), !dbg !241
  call fastcc void @Hacl_Impl_Load56_load_32_bytes(i64* noundef nonnull %4, i8* noundef nonnull %9), !dbg !249
  call fastcc void @Hacl_Impl_BignumQ_Mul_mul_modq(i64* noundef nonnull %5, i64* noundef nonnull %7, i64* noundef nonnull %4), !dbg !250
  call fastcc void @Hacl_Impl_BignumQ_Mul_add_modq(i64* noundef nonnull %6, i64* noundef nonnull %3, i64* noundef nonnull %5), !dbg !251
  call fastcc void @Hacl_Impl_Store56_store_56(i8* noundef nonnull %8, i64* noundef nonnull %6), !dbg !252
  ret void, !dbg !253
}

; Function Attrs: mustprogress nofree noinline nosync nounwind uwtable willreturn
define internal fastcc void @Hacl_Impl_Ed25519_Sign_append_to_sig(i8* nocapture noundef writeonly %0, i8* nocapture noundef readonly %1, i8* nocapture noundef readonly %2) unnamed_addr #5 !dbg !254 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !258, metadata !DIExpression()), !dbg !261
  call void @llvm.dbg.value(metadata i8* %1, metadata !259, metadata !DIExpression()), !dbg !261
  call void @llvm.dbg.value(metadata i8* %2, metadata !260, metadata !DIExpression()), !dbg !261
  call fastcc void @Hacl_Impl_Ed25519_Sign_Steps_copy_bytes(i8* noundef %0, i8* noundef %1), !dbg !262
  %4 = getelementptr inbounds i8, i8* %0, i32 32, !dbg !263
  call fastcc void @Hacl_Impl_Ed25519_Sign_Steps_copy_bytes(i8* noundef nonnull %4, i8* noundef %2), !dbg !264
  ret void, !dbg !265
}

; Function Attrs: argmemonly mustprogress nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0i8(i64 immarg, i8* nocapture) #2

; Function Attrs: noinline nounwind uwtable
define internal fastcc void @Hacl_Impl_Ed25519_SecretExpand_secret_expand(i8* nocapture noundef %0, i8* nocapture noundef readonly %1) unnamed_addr #0 !dbg !266 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !268, metadata !DIExpression()), !dbg !273
  call void @llvm.dbg.value(metadata i8* %1, metadata !269, metadata !DIExpression()), !dbg !273
  call fastcc void @Hacl_SHA2_512_hash(i8* noundef %0, i8* noundef %1), !dbg !274
  call void @llvm.dbg.value(metadata i8* %0, metadata !270, metadata !DIExpression()), !dbg !273
  %3 = load i8, i8* %0, align 1, !dbg !275, !tbaa !276
  call void @llvm.dbg.value(metadata i8 %3, metadata !271, metadata !DIExpression()), !dbg !273
  %4 = getelementptr inbounds i8, i8* %0, i32 31, !dbg !277
  %5 = load i8, i8* %4, align 1, !dbg !277, !tbaa !276
  call void @llvm.dbg.value(metadata i8 %5, metadata !272, metadata !DIExpression()), !dbg !273
  %6 = and i8 %3, -8, !dbg !278
  store i8 %6, i8* %0, align 1, !dbg !279, !tbaa !276
  %7 = and i8 %5, 63, !dbg !280
  %8 = or i8 %7, 64, !dbg !281
  store i8 %8, i8* %4, align 1, !dbg !282, !tbaa !276
  ret void, !dbg !283
}

; Function Attrs: noinline nounwind uwtable
define internal fastcc void @Hacl_SHA2_512_hash(i8* nocapture noundef writeonly %0, i8* nocapture noundef readonly %1) unnamed_addr #0 !dbg !284 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !288, metadata !DIExpression()), !dbg !291
  call void @llvm.dbg.value(metadata i8* %1, metadata !289, metadata !DIExpression()), !dbg !291
  call void @llvm.dbg.value(metadata i32 32, metadata !290, metadata !DIExpression()), !dbg !291
  call fastcc void @Hacl_Impl_SHA2_512_hash(i8* noundef %0, i8* noundef %1, i32 noundef 32), !dbg !292
  ret void, !dbg !293
}

; Function Attrs: noinline nounwind uwtable
define internal fastcc void @Hacl_Impl_SHA2_512_hash(i8* nocapture noundef writeonly %0, i8* nocapture noundef readonly %1, i32 noundef %2) unnamed_addr #0 !dbg !294 {
  %4 = alloca [169 x i64], align 8
  %5 = bitcast [169 x i64]* %4 to i8*, !dbg !309
  call void @llvm.dbg.value(metadata i8* %0, metadata !296, metadata !DIExpression()), !dbg !309
  call void @llvm.dbg.value(metadata i8* %1, metadata !297, metadata !DIExpression()), !dbg !309
  call void @llvm.dbg.value(metadata i32 %2, metadata !298, metadata !DIExpression()), !dbg !309
  %6 = bitcast [169 x i64]* %4 to i8*, !dbg !310
  call void @llvm.lifetime.start.p0i8(i64 1352, i8* nonnull %6) #14, !dbg !310
  call void @llvm.dbg.declare(metadata [169 x i64]* %4, metadata !299, metadata !DIExpression()), !dbg !311
  call void @llvm.dbg.value(metadata i32 0, metadata !303, metadata !DIExpression()), !dbg !312
  call void @llvm.memset.p0i8.i32(i8* noundef nonnull align 8 dereferenceable(1352) %5, i8 0, i32 1352, i1 false), !dbg !313, !tbaa !181
  call void @llvm.dbg.value(metadata i32 undef, metadata !303, metadata !DIExpression()), !dbg !312
  call void @llvm.dbg.value(metadata i32 undef, metadata !303, metadata !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value)), !dbg !312
  %7 = lshr i32 %2, 7, !dbg !315
  call void @llvm.dbg.value(metadata i32 %7, metadata !305, metadata !DIExpression()), !dbg !309
  %8 = and i32 %2, 127, !dbg !316
  call void @llvm.dbg.value(metadata i32 %8, metadata !306, metadata !DIExpression()), !dbg !309
  call void @llvm.dbg.value(metadata i8* %1, metadata !307, metadata !DIExpression()), !dbg !309
  %9 = and i32 %2, -128, !dbg !317
  %10 = getelementptr inbounds i8, i8* %1, i32 %9, !dbg !318
  call void @llvm.dbg.value(metadata i8* %10, metadata !308, metadata !DIExpression()), !dbg !309
  %11 = getelementptr inbounds [169 x i64], [169 x i64]* %4, i32 0, i32 0, !dbg !319
  call fastcc void @Hacl_Impl_SHA2_512_init(i64* noundef nonnull %11), !dbg !320
  call fastcc void @Hacl_Impl_SHA2_512_update_multi(i64* noundef nonnull %11, i8* noundef %1, i32 noundef %7), !dbg !321
  %12 = zext i32 %8 to i64, !dbg !322
  call fastcc void @Hacl_Impl_SHA2_512_update_last(i64* noundef nonnull %11, i8* noundef %10, i64 noundef %12), !dbg !323
  call fastcc void @Hacl_Impl_SHA2_512_finish(i64* noundef nonnull %11, i8* noundef %0), !dbg !324
  call void @llvm.lifetime.end.p0i8(i64 1352, i8* nonnull %6) #14, !dbg !325
  ret void, !dbg !325
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind uwtable willreturn writeonly
define internal fastcc void @Hacl_Impl_SHA2_512_init(i64* noundef writeonly %0) unnamed_addr #6 !dbg !326 {
  call void @llvm.dbg.value(metadata i64* %0, metadata !330, metadata !DIExpression()), !dbg !371
  %2 = getelementptr inbounds i64, i64* %0, i32 168, !dbg !372
  call void @llvm.dbg.value(metadata i64* %2, metadata !331, metadata !DIExpression()), !dbg !371
  call void @llvm.dbg.value(metadata i64* %0, metadata !332, metadata !DIExpression()), !dbg !371
  %3 = getelementptr inbounds i64, i64* %0, i32 160, !dbg !373
  call void @llvm.dbg.value(metadata i64* %3, metadata !333, metadata !DIExpression()), !dbg !371
  call void @llvm.dbg.value(metadata i64* %0, metadata !334, metadata !DIExpression()), !dbg !371
  %4 = getelementptr inbounds i64, i64* %0, i32 16, !dbg !374
  call void @llvm.dbg.value(metadata i64* %4, metadata !335, metadata !DIExpression()), !dbg !371
  %5 = getelementptr inbounds i64, i64* %0, i32 32, !dbg !375
  call void @llvm.dbg.value(metadata i64* %5, metadata !336, metadata !DIExpression()), !dbg !371
  %6 = getelementptr inbounds i64, i64* %0, i32 48, !dbg !376
  call void @llvm.dbg.value(metadata i64* %6, metadata !337, metadata !DIExpression()), !dbg !371
  %7 = getelementptr inbounds i64, i64* %0, i32 64, !dbg !377
  call void @llvm.dbg.value(metadata i64* %7, metadata !338, metadata !DIExpression()), !dbg !371
  call void @llvm.dbg.value(metadata i64* %0, metadata !339, metadata !DIExpression()), !dbg !371
  %8 = getelementptr inbounds i64, i64* %0, i32 8, !dbg !378
  call void @llvm.dbg.value(metadata i64* %8, metadata !340, metadata !DIExpression()), !dbg !371
  call void @llvm.dbg.value(metadata i64* %0, metadata !341, metadata !DIExpression()), !dbg !371
  %9 = getelementptr inbounds i64, i64* %0, i32 4, !dbg !379
  call void @llvm.dbg.value(metadata i64* %9, metadata !342, metadata !DIExpression()), !dbg !371
  store i64 4794697086780616226, i64* %0, align 4, !dbg !380, !tbaa !181
  %10 = getelementptr inbounds i64, i64* %0, i32 1, !dbg !381
  store i64 8158064640168781261, i64* %10, align 4, !dbg !382, !tbaa !181
  %11 = getelementptr inbounds i64, i64* %0, i32 2, !dbg !383
  store i64 -5349999486874862801, i64* %11, align 4, !dbg !384, !tbaa !181
  %12 = getelementptr inbounds i64, i64* %0, i32 3, !dbg !385
  store i64 -1606136188198331460, i64* %12, align 4, !dbg !386, !tbaa !181
  store i64 4131703408338449720, i64* %9, align 4, !dbg !387, !tbaa !181
  %13 = getelementptr inbounds i64, i64* %0, i32 5, !dbg !388
  store i64 6480981068601479193, i64* %13, align 4, !dbg !389, !tbaa !181
  %14 = getelementptr inbounds i64, i64* %0, i32 6, !dbg !390
  store i64 -7908458776815382629, i64* %14, align 4, !dbg !391, !tbaa !181
  %15 = getelementptr inbounds i64, i64* %0, i32 7, !dbg !392
  store i64 -6116909921290321640, i64* %15, align 4, !dbg !393, !tbaa !181
  call void @llvm.dbg.value(metadata i64* %8, metadata !343, metadata !DIExpression()), !dbg !371
  %16 = getelementptr inbounds i64, i64* %0, i32 12, !dbg !394
  call void @llvm.dbg.value(metadata i64* %16, metadata !344, metadata !DIExpression()), !dbg !371
  store i64 -2880145864133508542, i64* %8, align 4, !dbg !395, !tbaa !181
  %17 = getelementptr inbounds i64, i64* %0, i32 9, !dbg !396
  store i64 1334009975649890238, i64* %17, align 4, !dbg !397, !tbaa !181
  %18 = getelementptr inbounds i64, i64* %0, i32 10, !dbg !398
  store i64 2608012711638119052, i64* %18, align 4, !dbg !399, !tbaa !181
  %19 = getelementptr inbounds i64, i64* %0, i32 11, !dbg !400
  store i64 6128411473006802146, i64* %19, align 4, !dbg !401, !tbaa !181
  store i64 8268148722764581231, i64* %16, align 4, !dbg !402, !tbaa !181
  %20 = getelementptr inbounds i64, i64* %0, i32 13, !dbg !403
  store i64 -9160688886553864527, i64* %20, align 4, !dbg !404, !tbaa !181
  %21 = getelementptr inbounds i64, i64* %0, i32 14, !dbg !405
  store i64 -7215885187991268811, i64* %21, align 4, !dbg !406, !tbaa !181
  %22 = getelementptr inbounds i64, i64* %0, i32 15, !dbg !407
  store i64 -4495734319001033068, i64* %22, align 4, !dbg !408, !tbaa !181
  call void @llvm.dbg.value(metadata i64* %4, metadata !345, metadata !DIExpression()), !dbg !371
  %23 = getelementptr inbounds i64, i64* %0, i32 24, !dbg !409
  call void @llvm.dbg.value(metadata i64* %23, metadata !346, metadata !DIExpression()), !dbg !371
  call void @llvm.dbg.value(metadata i64* %4, metadata !347, metadata !DIExpression()), !dbg !371
  %24 = getelementptr inbounds i64, i64* %0, i32 20, !dbg !410
  call void @llvm.dbg.value(metadata i64* %24, metadata !348, metadata !DIExpression()), !dbg !371
  store i64 -1973867731355612462, i64* %4, align 4, !dbg !411, !tbaa !181
  %25 = getelementptr inbounds i64, i64* %0, i32 17, !dbg !412
  store i64 -1171420211273849373, i64* %25, align 4, !dbg !413, !tbaa !181
  %26 = getelementptr inbounds i64, i64* %0, i32 18, !dbg !414
  store i64 1135362057144423861, i64* %26, align 4, !dbg !415, !tbaa !181
  %27 = getelementptr inbounds i64, i64* %0, i32 19, !dbg !416
  store i64 2597628984639134821, i64* %27, align 4, !dbg !417, !tbaa !181
  store i64 3308224258029322869, i64* %24, align 4, !dbg !418, !tbaa !181
  %28 = getelementptr inbounds i64, i64* %0, i32 21, !dbg !419
  store i64 5365058923640841347, i64* %28, align 4, !dbg !420, !tbaa !181
  %29 = getelementptr inbounds i64, i64* %0, i32 22, !dbg !421
  store i64 6679025012923562964, i64* %29, align 4, !dbg !422, !tbaa !181
  %30 = getelementptr inbounds i64, i64* %0, i32 23, !dbg !423
  store i64 8573033837759648693, i64* %30, align 4, !dbg !424, !tbaa !181
  call void @llvm.dbg.value(metadata i64* %23, metadata !349, metadata !DIExpression()), !dbg !371
  %31 = getelementptr inbounds i64, i64* %0, i32 28, !dbg !425
  call void @llvm.dbg.value(metadata i64* %31, metadata !350, metadata !DIExpression()), !dbg !371
  store i64 -7476448914759557205, i64* %23, align 4, !dbg !426, !tbaa !181
  %32 = getelementptr inbounds i64, i64* %0, i32 25, !dbg !427
  store i64 -6327057829258317296, i64* %32, align 4, !dbg !428, !tbaa !181
  %33 = getelementptr inbounds i64, i64* %0, i32 26, !dbg !429
  store i64 -5763719355590565569, i64* %33, align 4, !dbg !430, !tbaa !181
  %34 = getelementptr inbounds i64, i64* %0, i32 27, !dbg !431
  store i64 -4658551843659510044, i64* %34, align 4, !dbg !432, !tbaa !181
  store i64 -4116276920077217854, i64* %31, align 4, !dbg !433, !tbaa !181
  %35 = getelementptr inbounds i64, i64* %0, i32 29, !dbg !434
  store i64 -3051310485924567259, i64* %35, align 4, !dbg !435, !tbaa !181
  %36 = getelementptr inbounds i64, i64* %0, i32 30, !dbg !436
  store i64 489312712824947311, i64* %36, align 4, !dbg !437, !tbaa !181
  %37 = getelementptr inbounds i64, i64* %0, i32 31, !dbg !438
  store i64 1452737877330783856, i64* %37, align 4, !dbg !439, !tbaa !181
  call void @llvm.dbg.value(metadata i64* %5, metadata !351, metadata !DIExpression()), !dbg !371
  %38 = getelementptr inbounds i64, i64* %0, i32 40, !dbg !440
  call void @llvm.dbg.value(metadata i64* %38, metadata !352, metadata !DIExpression()), !dbg !371
  call void @llvm.dbg.value(metadata i64* %5, metadata !353, metadata !DIExpression()), !dbg !371
  %39 = getelementptr inbounds i64, i64* %0, i32 36, !dbg !441
  call void @llvm.dbg.value(metadata i64* %39, metadata !354, metadata !DIExpression()), !dbg !371
  store i64 2861767655752347644, i64* %5, align 4, !dbg !442, !tbaa !181
  %40 = getelementptr inbounds i64, i64* %0, i32 33, !dbg !443
  store i64 3322285676063803686, i64* %40, align 4, !dbg !444, !tbaa !181
  %41 = getelementptr inbounds i64, i64* %0, i32 34, !dbg !445
  store i64 5560940570517711597, i64* %41, align 4, !dbg !446, !tbaa !181
  %42 = getelementptr inbounds i64, i64* %0, i32 35, !dbg !447
  store i64 5996557281743188959, i64* %42, align 4, !dbg !448, !tbaa !181
  store i64 7280758554555802590, i64* %39, align 4, !dbg !449, !tbaa !181
  %43 = getelementptr inbounds i64, i64* %0, i32 37, !dbg !450
  store i64 8532644243296465576, i64* %43, align 4, !dbg !451, !tbaa !181
  %44 = getelementptr inbounds i64, i64* %0, i32 38, !dbg !452
  store i64 -9096487096722542874, i64* %44, align 4, !dbg !453, !tbaa !181
  %45 = getelementptr inbounds i64, i64* %0, i32 39, !dbg !454
  store i64 -7894198246740708037, i64* %45, align 4, !dbg !455, !tbaa !181
  call void @llvm.dbg.value(metadata i64* %38, metadata !355, metadata !DIExpression()), !dbg !371
  %46 = getelementptr inbounds i64, i64* %0, i32 44, !dbg !456
  call void @llvm.dbg.value(metadata i64* %46, metadata !356, metadata !DIExpression()), !dbg !371
  store i64 -6719396339535248540, i64* %38, align 4, !dbg !457, !tbaa !181
  %47 = getelementptr inbounds i64, i64* %0, i32 41, !dbg !458
  store i64 -6333637450476146687, i64* %47, align 4, !dbg !459, !tbaa !181
  %48 = getelementptr inbounds i64, i64* %0, i32 42, !dbg !460
  store i64 -4446306890439682159, i64* %48, align 4, !dbg !461, !tbaa !181
  %49 = getelementptr inbounds i64, i64* %0, i32 43, !dbg !462
  store i64 -4076793802049405392, i64* %49, align 4, !dbg !463, !tbaa !181
  store i64 -3345356375505022440, i64* %46, align 4, !dbg !464, !tbaa !181
  %50 = getelementptr inbounds i64, i64* %0, i32 45, !dbg !465
  store i64 -2983346525034927856, i64* %50, align 4, !dbg !466, !tbaa !181
  %51 = getelementptr inbounds i64, i64* %0, i32 46, !dbg !467
  store i64 -860691631967231958, i64* %51, align 4, !dbg !468, !tbaa !181
  %52 = getelementptr inbounds i64, i64* %0, i32 47, !dbg !469
  store i64 1182934255886127544, i64* %52, align 4, !dbg !470, !tbaa !181
  call void @llvm.dbg.value(metadata i64* %6, metadata !357, metadata !DIExpression()), !dbg !371
  %53 = getelementptr inbounds i64, i64* %0, i32 56, !dbg !471
  call void @llvm.dbg.value(metadata i64* %53, metadata !358, metadata !DIExpression()), !dbg !371
  call void @llvm.dbg.value(metadata i64* %6, metadata !359, metadata !DIExpression()), !dbg !371
  %54 = getelementptr inbounds i64, i64* %0, i32 52, !dbg !472
  call void @llvm.dbg.value(metadata i64* %54, metadata !360, metadata !DIExpression()), !dbg !371
  store i64 1847814050463011016, i64* %6, align 4, !dbg !473, !tbaa !181
  %55 = getelementptr inbounds i64, i64* %0, i32 49, !dbg !474
  store i64 2177327727835720531, i64* %55, align 4, !dbg !475, !tbaa !181
  %56 = getelementptr inbounds i64, i64* %0, i32 50, !dbg !476
  store i64 2830643537854262169, i64* %56, align 4, !dbg !477, !tbaa !181
  %57 = getelementptr inbounds i64, i64* %0, i32 51, !dbg !478
  store i64 3796741975233480872, i64* %57, align 4, !dbg !479, !tbaa !181
  store i64 4115178125766777443, i64* %54, align 4, !dbg !480, !tbaa !181
  %58 = getelementptr inbounds i64, i64* %0, i32 53, !dbg !481
  store i64 5681478168544905931, i64* %58, align 4, !dbg !482, !tbaa !181
  %59 = getelementptr inbounds i64, i64* %0, i32 54, !dbg !483
  store i64 6601373596472566643, i64* %59, align 4, !dbg !484, !tbaa !181
  %60 = getelementptr inbounds i64, i64* %0, i32 55, !dbg !485
  store i64 7507060721942968483, i64* %60, align 4, !dbg !486, !tbaa !181
  call void @llvm.dbg.value(metadata i64* %53, metadata !361, metadata !DIExpression()), !dbg !371
  %61 = getelementptr inbounds i64, i64* %0, i32 60, !dbg !487
  call void @llvm.dbg.value(metadata i64* %61, metadata !362, metadata !DIExpression()), !dbg !371
  store i64 8399075790359081724, i64* %53, align 4, !dbg !488, !tbaa !181
  %62 = getelementptr inbounds i64, i64* %0, i32 57, !dbg !489
  store i64 8693463985226723168, i64* %62, align 4, !dbg !490, !tbaa !181
  %63 = getelementptr inbounds i64, i64* %0, i32 58, !dbg !491
  store i64 -8878714635349349518, i64* %63, align 4, !dbg !492, !tbaa !181
  %64 = getelementptr inbounds i64, i64* %0, i32 59, !dbg !493
  store i64 -8302665154208450068, i64* %64, align 4, !dbg !494, !tbaa !181
  store i64 -8016688836872298968, i64* %61, align 4, !dbg !495, !tbaa !181
  %65 = getelementptr inbounds i64, i64* %0, i32 61, !dbg !496
  store i64 -6606660893046293015, i64* %65, align 4, !dbg !497, !tbaa !181
  %66 = getelementptr inbounds i64, i64* %0, i32 62, !dbg !498
  store i64 -4685533653050689259, i64* %66, align 4, !dbg !499, !tbaa !181
  %67 = getelementptr inbounds i64, i64* %0, i32 63, !dbg !500
  store i64 -4147400797238176981, i64* %67, align 4, !dbg !501, !tbaa !181
  call void @llvm.dbg.value(metadata i64* %7, metadata !363, metadata !DIExpression()), !dbg !371
  %68 = getelementptr inbounds i64, i64* %0, i32 72, !dbg !502
  call void @llvm.dbg.value(metadata i64* %68, metadata !364, metadata !DIExpression()), !dbg !371
  call void @llvm.dbg.value(metadata i64* %7, metadata !365, metadata !DIExpression()), !dbg !371
  %69 = getelementptr inbounds i64, i64* %0, i32 68, !dbg !503
  call void @llvm.dbg.value(metadata i64* %69, metadata !366, metadata !DIExpression()), !dbg !371
  store i64 -3880063495543823972, i64* %7, align 4, !dbg !504, !tbaa !181
  %70 = getelementptr inbounds i64, i64* %0, i32 65, !dbg !505
  store i64 -3348786107499101689, i64* %70, align 4, !dbg !506, !tbaa !181
  %71 = getelementptr inbounds i64, i64* %0, i32 66, !dbg !507
  store i64 -1523767162380948706, i64* %71, align 4, !dbg !508, !tbaa !181
  %72 = getelementptr inbounds i64, i64* %0, i32 67, !dbg !509
  store i64 -757361751448694408, i64* %72, align 4, !dbg !510, !tbaa !181
  store i64 500013540394364858, i64* %69, align 4, !dbg !511, !tbaa !181
  %73 = getelementptr inbounds i64, i64* %0, i32 69, !dbg !512
  store i64 748580250866718886, i64* %73, align 4, !dbg !513, !tbaa !181
  %74 = getelementptr inbounds i64, i64* %0, i32 70, !dbg !514
  store i64 1242879168328830382, i64* %74, align 4, !dbg !515, !tbaa !181
  %75 = getelementptr inbounds i64, i64* %0, i32 71, !dbg !516
  store i64 1977374033974150939, i64* %75, align 4, !dbg !517, !tbaa !181
  call void @llvm.dbg.value(metadata i64* %68, metadata !367, metadata !DIExpression()), !dbg !371
  %76 = getelementptr inbounds i64, i64* %0, i32 76, !dbg !518
  call void @llvm.dbg.value(metadata i64* %76, metadata !368, metadata !DIExpression()), !dbg !371
  store i64 2944078676154940804, i64* %68, align 4, !dbg !519, !tbaa !181
  %77 = getelementptr inbounds i64, i64* %0, i32 73, !dbg !520
  store i64 3659926193048069267, i64* %77, align 4, !dbg !521, !tbaa !181
  %78 = getelementptr inbounds i64, i64* %0, i32 74, !dbg !522
  store i64 4368137639120453308, i64* %78, align 4, !dbg !523, !tbaa !181
  %79 = getelementptr inbounds i64, i64* %0, i32 75, !dbg !524
  store i64 4836135668995329356, i64* %79, align 4, !dbg !525, !tbaa !181
  store i64 5532061633213252278, i64* %76, align 4, !dbg !526, !tbaa !181
  %80 = getelementptr inbounds i64, i64* %0, i32 77, !dbg !527
  store i64 6448918945643986474, i64* %80, align 4, !dbg !528, !tbaa !181
  %81 = getelementptr inbounds i64, i64* %0, i32 78, !dbg !529
  store i64 6902733635092675308, i64* %81, align 4, !dbg !530, !tbaa !181
  %82 = getelementptr inbounds i64, i64* %0, i32 79, !dbg !531
  store i64 7801388544844847127, i64* %82, align 4, !dbg !532, !tbaa !181
  call void @llvm.dbg.value(metadata i64* %3, metadata !369, metadata !DIExpression()), !dbg !371
  %83 = getelementptr inbounds i64, i64* %0, i32 164, !dbg !533
  call void @llvm.dbg.value(metadata i64* %83, metadata !370, metadata !DIExpression()), !dbg !371
  store i64 7640891576956012808, i64* %3, align 4, !dbg !534, !tbaa !181
  %84 = getelementptr inbounds i64, i64* %0, i32 161, !dbg !535
  store i64 -4942790177534073029, i64* %84, align 4, !dbg !536, !tbaa !181
  %85 = getelementptr inbounds i64, i64* %0, i32 162, !dbg !537
  store i64 4354685564936845355, i64* %85, align 4, !dbg !538, !tbaa !181
  %86 = getelementptr inbounds i64, i64* %0, i32 163, !dbg !539
  store i64 -6534734903238641935, i64* %86, align 4, !dbg !540, !tbaa !181
  store i64 5840696475078001361, i64* %83, align 4, !dbg !541, !tbaa !181
  %87 = getelementptr inbounds i64, i64* %0, i32 165, !dbg !542
  store i64 -7276294671716946913, i64* %87, align 4, !dbg !543, !tbaa !181
  %88 = getelementptr inbounds i64, i64* %0, i32 166, !dbg !544
  store i64 2270897969802886507, i64* %88, align 4, !dbg !545, !tbaa !181
  %89 = getelementptr inbounds i64, i64* %0, i32 167, !dbg !546
  store i64 6620516959819538809, i64* %89, align 4, !dbg !547, !tbaa !181
  store i64 0, i64* %2, align 4, !dbg !548, !tbaa !181
  ret void, !dbg !549
}

; Function Attrs: nofree noinline nosync nounwind uwtable
define internal fastcc void @Hacl_Impl_SHA2_512_update_multi(i64* nocapture noundef %0, i8* nocapture noundef readonly %1, i32 noundef %2) unnamed_addr #7 !dbg !550 {
  call void @llvm.dbg.value(metadata i64* %0, metadata !554, metadata !DIExpression()), !dbg !562
  call void @llvm.dbg.value(metadata i8* %1, metadata !555, metadata !DIExpression()), !dbg !562
  call void @llvm.dbg.value(metadata i32 %2, metadata !556, metadata !DIExpression()), !dbg !562
  call void @llvm.dbg.value(metadata i32 0, metadata !557, metadata !DIExpression()), !dbg !563
  %4 = icmp eq i32 %2, 0, !dbg !564
  br i1 %4, label %5, label %6, !dbg !565

5:                                                ; preds = %6, %3
  ret void, !dbg !566

6:                                                ; preds = %3, %6
  %7 = phi i32 [ %10, %6 ], [ 0, %3 ]
  call void @llvm.dbg.value(metadata i32 %7, metadata !557, metadata !DIExpression()), !dbg !563
  %8 = shl i32 %7, 7, !dbg !567
  %9 = getelementptr inbounds i8, i8* %1, i32 %8, !dbg !568
  call void @llvm.dbg.value(metadata i8* %9, metadata !559, metadata !DIExpression()), !dbg !569
  call fastcc void @Hacl_Impl_SHA2_512_update(i64* noundef %0, i8* noundef %9), !dbg !570
  %10 = add nuw i32 %7, 1, !dbg !571
  call void @llvm.dbg.value(metadata i32 %10, metadata !557, metadata !DIExpression()), !dbg !563
  %11 = icmp eq i32 %10, %2, !dbg !564
  br i1 %11, label %5, label %6, !dbg !565, !llvm.loop !572
}

; Function Attrs: noinline nounwind uwtable
define internal fastcc void @Hacl_Impl_SHA2_512_update_last(i64* nocapture noundef %0, i8* nocapture noundef readonly %1, i64 noundef %2) unnamed_addr #0 !dbg !576 {
  %4 = alloca [256 x i8], align 1
  %5 = alloca %struct.FStar_UInt128_uint128, align 8
  %6 = alloca %struct.FStar_UInt128_uint128, align 8
  %7 = alloca %struct.FStar_UInt128_uint128, align 8
  %8 = alloca %struct.FStar_UInt128_uint128, align 8
  call void @llvm.dbg.value(metadata i64* %0, metadata !580, metadata !DIExpression()), !dbg !602
  call void @llvm.dbg.value(metadata i8* %1, metadata !581, metadata !DIExpression()), !dbg !602
  call void @llvm.dbg.value(metadata i64 %2, metadata !582, metadata !DIExpression()), !dbg !602
  %9 = getelementptr inbounds [256 x i8], [256 x i8]* %4, i32 0, i32 0, !dbg !603
  call void @llvm.lifetime.start.p0i8(i64 256, i8* nonnull %9) #14, !dbg !603
  call void @llvm.dbg.declare(metadata [256 x i8]* %4, metadata !583, metadata !DIExpression()), !dbg !604
  call void @llvm.memset.p0i8.i32(i8* noundef nonnull align 1 dereferenceable(256) %9, i8 0, i32 256, i1 false), !dbg !604
  %10 = icmp ult i64 %2, 112, !dbg !605
  %11 = select i1 %10, i32 1, i32 2
  call void @llvm.dbg.value(metadata i32 %11, metadata !587, metadata !DIExpression()), !dbg !602
  %12 = getelementptr inbounds [256 x i8], [256 x i8]* %4, i32 0, i32 128, !dbg !607
  %13 = select i1 %10, i8* %12, i8* %9, !dbg !607
  call void @llvm.dbg.value(metadata i8* %13, metadata !588, metadata !DIExpression()), !dbg !602
  %14 = trunc i64 %2 to i32, !dbg !608
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* nonnull align 1 %13, i8* align 1 %1, i32 %14, i1 false), !dbg !609
  %15 = getelementptr inbounds i64, i64* %0, i32 168, !dbg !610
  %16 = load i64, i64* %15, align 4, !dbg !610, !tbaa !181
  call void @llvm.dbg.value(metadata i64 %16, metadata !589, metadata !DIExpression()), !dbg !602
  %17 = getelementptr inbounds i8, i8* %13, i32 %14, !dbg !611
  call void @llvm.dbg.value(metadata i8* %17, metadata !590, metadata !DIExpression()), !dbg !602
  %18 = bitcast %struct.FStar_UInt128_uint128* %5 to i8*, !dbg !612
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %18) #14, !dbg !612
  call void @llvm.dbg.declare(metadata %struct.FStar_UInt128_uint128* %5, metadata !591, metadata !DIExpression()), !dbg !613
  call void @FStar_UInt128_mul_wide(%struct.FStar_UInt128_uint128* nonnull sret(%struct.FStar_UInt128_uint128) align 4 %7, i64 noundef %16, i64 noundef 128) #14, !dbg !614
  call void @FStar_UInt128_uint64_to_uint128(%struct.FStar_UInt128_uint128* nonnull sret(%struct.FStar_UInt128_uint128) align 4 %8, i64 noundef %2) #14, !dbg !615
  %19 = getelementptr inbounds %struct.FStar_UInt128_uint128, %struct.FStar_UInt128_uint128* %7, i32 0, i32 0, !dbg !616
  %20 = load i64, i64* %19, align 8, !dbg !616, !tbaa !617
  %21 = getelementptr inbounds %struct.FStar_UInt128_uint128, %struct.FStar_UInt128_uint128* %7, i32 0, i32 1, !dbg !616
  %22 = load i64, i64* %21, align 8, !dbg !616, !tbaa !619
  %23 = getelementptr inbounds %struct.FStar_UInt128_uint128, %struct.FStar_UInt128_uint128* %8, i32 0, i32 0, !dbg !616
  %24 = load i64, i64* %23, align 8, !dbg !616, !tbaa !617
  %25 = getelementptr inbounds %struct.FStar_UInt128_uint128, %struct.FStar_UInt128_uint128* %8, i32 0, i32 1, !dbg !616
  %26 = load i64, i64* %25, align 8, !dbg !616, !tbaa !619
  call void @FStar_UInt128_add(%struct.FStar_UInt128_uint128* nonnull sret(%struct.FStar_UInt128_uint128) align 4 %6, i64 %20, i64 %22, i64 %24, i64 %26) #14, !dbg !616
  %27 = getelementptr inbounds %struct.FStar_UInt128_uint128, %struct.FStar_UInt128_uint128* %6, i32 0, i32 0, !dbg !620
  %28 = load i64, i64* %27, align 8, !dbg !620, !tbaa !617
  %29 = getelementptr inbounds %struct.FStar_UInt128_uint128, %struct.FStar_UInt128_uint128* %6, i32 0, i32 1, !dbg !620
  %30 = load i64, i64* %29, align 8, !dbg !620, !tbaa !619
  call void @FStar_UInt128_shift_left(%struct.FStar_UInt128_uint128* nonnull sret(%struct.FStar_UInt128_uint128) align 4 %5, i64 %28, i64 %30, i32 noundef 3) #14, !dbg !620
  %31 = sub i32 111, %14, !dbg !621
  %32 = and i32 %31, 127, !dbg !622
  call void @llvm.dbg.value(metadata i32 %32, metadata !599, metadata !DIExpression()), !dbg !602
  call void @llvm.dbg.value(metadata i8* %17, metadata !600, metadata !DIExpression()), !dbg !602
  %33 = getelementptr inbounds i8, i8* %17, i32 1, !dbg !623
  %34 = getelementptr inbounds i8, i8* %33, i32 %32, !dbg !624
  call void @llvm.dbg.value(metadata i8* %34, metadata !601, metadata !DIExpression()), !dbg !602
  store i8 -128, i8* %17, align 1, !dbg !625, !tbaa !276
  %35 = getelementptr inbounds %struct.FStar_UInt128_uint128, %struct.FStar_UInt128_uint128* %5, i32 0, i32 0, !dbg !626
  %36 = load i64, i64* %35, align 8, !dbg !626, !tbaa !617
  %37 = getelementptr inbounds %struct.FStar_UInt128_uint128, %struct.FStar_UInt128_uint128* %5, i32 0, i32 1, !dbg !626
  %38 = load i64, i64* %37, align 8, !dbg !626, !tbaa !619
  call fastcc void @store128_be(i8* noundef nonnull %34, i64 %36, i64 %38), !dbg !626
  call fastcc void @Hacl_Impl_SHA2_512_update_multi(i64* noundef %0, i8* noundef nonnull %13, i32 noundef %11), !dbg !627
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %18) #14, !dbg !628
  call void @llvm.lifetime.end.p0i8(i64 256, i8* nonnull %9) #14, !dbg !628
  ret void, !dbg !628
}

; Function Attrs: nofree noinline nosync nounwind uwtable
define internal fastcc void @Hacl_Impl_SHA2_512_finish(i64* nocapture noundef readonly %0, i8* nocapture noundef writeonly %1) unnamed_addr #7 !dbg !629 {
  call void @llvm.dbg.value(metadata i64* %0, metadata !633, metadata !DIExpression()), !dbg !636
  call void @llvm.dbg.value(metadata i8* %1, metadata !634, metadata !DIExpression()), !dbg !636
  %3 = getelementptr inbounds i64, i64* %0, i32 160, !dbg !637
  call void @llvm.dbg.value(metadata i64* %3, metadata !635, metadata !DIExpression()), !dbg !636
  call fastcc void @Hacl_Hash_Lib_LoadStore_uint64s_to_be_bytes(i8* noundef %1, i64* noundef nonnull %3), !dbg !638
  ret void, !dbg !639
}

; Function Attrs: nofree noinline nosync nounwind uwtable
define internal fastcc void @Hacl_Impl_SHA2_512_update(i64* nocapture noundef %0, i8* nocapture noundef readonly %1) unnamed_addr #7 !dbg !640 {
  %3 = alloca [16 x i64], align 8
  %4 = bitcast [16 x i64]* %3 to i8*
  %5 = alloca [8 x i64], align 8
  call void @llvm.dbg.value(metadata i64* %0, metadata !642, metadata !DIExpression()), !dbg !699
  call void @llvm.dbg.value(metadata i8* %1, metadata !643, metadata !DIExpression()), !dbg !699
  %6 = bitcast [16 x i64]* %3 to i8*, !dbg !700
  call void @llvm.lifetime.start.p0i8(i64 128, i8* nonnull %6) #14, !dbg !700
  call void @llvm.dbg.declare(metadata [16 x i64]* %3, metadata !644, metadata !DIExpression()), !dbg !701
  call void @llvm.dbg.value(metadata i32 0, metadata !648, metadata !DIExpression()), !dbg !702
  call void @llvm.memset.p0i8.i32(i8* noundef nonnull align 8 dereferenceable(128) %4, i8 0, i32 128, i1 false), !dbg !703, !tbaa !181
  call void @llvm.dbg.value(metadata i32 undef, metadata !648, metadata !DIExpression()), !dbg !702
  call void @llvm.dbg.value(metadata i32 undef, metadata !648, metadata !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value)), !dbg !702
  %7 = getelementptr inbounds [16 x i64], [16 x i64]* %3, i32 0, i32 0, !dbg !705
  call fastcc void @Hacl_Hash_Lib_LoadStore_uint64s_from_be_bytes(i64* noundef nonnull %7, i8* noundef %1), !dbg !706
  call void @llvm.dbg.value(metadata i64* %10, metadata !650, metadata !DIExpression()), !dbg !699
  %8 = getelementptr inbounds i64, i64* %0, i32 80, !dbg !707
  %9 = bitcast i64* %8 to i8*, !dbg !699
  call void @llvm.dbg.value(metadata i64* %8, metadata !651, metadata !DIExpression()), !dbg !699
  call void @llvm.dbg.value(metadata i64* %0, metadata !652, metadata !DIExpression()), !dbg !699
  call void @llvm.dbg.value(metadata i64* %103, metadata !653, metadata !DIExpression()), !dbg !699
  call void @llvm.dbg.value(metadata i32 0, metadata !654, metadata !DIExpression()), !dbg !708
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* noundef nonnull align 4 dereferenceable(128) %9, i8* noundef nonnull align 8 dereferenceable(128) %4, i32 128, i1 false), !dbg !709, !tbaa !181
  call void @llvm.dbg.value(metadata i32 undef, metadata !654, metadata !DIExpression()), !dbg !708
  call void @llvm.dbg.value(metadata i32 undef, metadata !656, metadata !DIExpression()), !dbg !710
  call void @llvm.dbg.value(metadata i32 undef, metadata !654, metadata !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value)), !dbg !708
  %10 = getelementptr inbounds i64, i64* %0, i32 160, !dbg !711
  br label %30, !dbg !712

11:                                               ; preds = %30
  %12 = bitcast [8 x i64]* %5 to i8*, !dbg !713
  call void @llvm.lifetime.start.p0i8(i64 64, i8* nonnull %12) #14, !dbg !713
  call void @llvm.dbg.declare(metadata [8 x i64]* %5, metadata !667, metadata !DIExpression()), !dbg !714
  %13 = getelementptr inbounds [8 x i64], [8 x i64]* %5, i32 0, i32 0, !dbg !715
  %14 = bitcast i64* %10 to i8*, !dbg !715
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* noundef nonnull align 8 dereferenceable(64) %12, i8* noundef nonnull align 4 dereferenceable(64) %14, i32 64, i1 false), !dbg !715
  call void @llvm.dbg.value(metadata i32 0, metadata !671, metadata !DIExpression()), !dbg !716
  %15 = getelementptr inbounds [8 x i64], [8 x i64]* %5, i32 0, i32 1
  %16 = getelementptr inbounds [8 x i64], [8 x i64]* %5, i32 0, i32 2
  %17 = getelementptr inbounds [8 x i64], [8 x i64]* %5, i32 0, i32 3
  %18 = getelementptr inbounds [8 x i64], [8 x i64]* %5, i32 0, i32 4
  %19 = getelementptr inbounds [8 x i64], [8 x i64]* %5, i32 0, i32 5
  %20 = getelementptr inbounds [8 x i64], [8 x i64]* %5, i32 0, i32 6
  %21 = getelementptr inbounds [8 x i64], [8 x i64]* %5, i32 0, i32 7
  %22 = load i64, i64* %13, align 8, !tbaa !181
  %23 = load i64, i64* %15, align 8, !tbaa !181
  %24 = load i64, i64* %16, align 8, !tbaa !181
  %25 = load i64, i64* %17, align 8, !tbaa !181
  %26 = load i64, i64* %18, align 8, !tbaa !181
  %27 = load i64, i64* %19, align 8, !tbaa !181
  %28 = load i64, i64* %20, align 8, !tbaa !181
  %29 = load i64, i64* %21, align 8, !tbaa !181
  call void @llvm.dbg.value(metadata i32 0, metadata !671, metadata !DIExpression()), !dbg !716
  br label %61, !dbg !717

30:                                               ; preds = %2, %30
  %31 = phi i32 [ %58, %30 ], [ 16, %2 ]
  call void @llvm.dbg.value(metadata i32 %31, metadata !659, metadata !DIExpression()), !dbg !718
  %32 = add nsw i32 %31, -16, !dbg !719
  %33 = getelementptr inbounds i64, i64* %8, i32 %32, !dbg !720
  %34 = load i64, i64* %33, align 4, !dbg !720, !tbaa !181
  call void @llvm.dbg.value(metadata i64 %34, metadata !661, metadata !DIExpression()), !dbg !721
  %35 = add nsw i32 %31, -15, !dbg !722
  %36 = getelementptr inbounds i64, i64* %8, i32 %35, !dbg !723
  %37 = load i64, i64* %36, align 4, !dbg !723, !tbaa !181
  call void @llvm.dbg.value(metadata i64 %37, metadata !664, metadata !DIExpression()), !dbg !721
  %38 = add nsw i32 %31, -7, !dbg !724
  %39 = getelementptr inbounds i64, i64* %8, i32 %38, !dbg !725
  %40 = load i64, i64* %39, align 4, !dbg !725, !tbaa !181
  call void @llvm.dbg.value(metadata i64 %40, metadata !665, metadata !DIExpression()), !dbg !721
  %41 = add nsw i32 %31, -2, !dbg !726
  %42 = getelementptr inbounds i64, i64* %8, i32 %41, !dbg !727
  %43 = load i64, i64* %42, align 4, !dbg !727, !tbaa !181
  call void @llvm.dbg.value(metadata i64 %43, metadata !666, metadata !DIExpression()), !dbg !721
  %44 = call i64 @llvm.fshl.i64(i64 %43, i64 %43, i64 45), !dbg !728
  %45 = call i64 @llvm.fshl.i64(i64 %43, i64 %43, i64 3), !dbg !729
  %46 = lshr i64 %43, 6, !dbg !730
  %47 = xor i64 %45, %46, !dbg !731
  %48 = xor i64 %47, %44, !dbg !732
  %49 = call i64 @llvm.fshl.i64(i64 %37, i64 %37, i64 63), !dbg !733
  %50 = call i64 @llvm.fshl.i64(i64 %37, i64 %37, i64 56), !dbg !734
  %51 = lshr i64 %37, 7, !dbg !735
  %52 = xor i64 %50, %51, !dbg !736
  %53 = xor i64 %52, %49, !dbg !737
  %54 = add i64 %40, %34, !dbg !738
  %55 = add i64 %54, %53, !dbg !739
  %56 = add i64 %55, %48, !dbg !740
  %57 = getelementptr inbounds i64, i64* %8, i32 %31, !dbg !741
  store i64 %56, i64* %57, align 4, !dbg !742, !tbaa !181
  %58 = add nuw nsw i32 %31, 1, !dbg !743
  call void @llvm.dbg.value(metadata i32 %58, metadata !659, metadata !DIExpression()), !dbg !718
  %59 = icmp eq i32 %58, 80, !dbg !744
  br i1 %59, label %11, label %30, !dbg !712, !llvm.loop !745

60:                                               ; preds = %61
  store i64 %98, i64* %13, align 8, !dbg !747, !tbaa !181
  store i64 %63, i64* %15, align 8, !dbg !747, !tbaa !181
  store i64 %64, i64* %16, align 8, !dbg !747, !tbaa !181
  store i64 %65, i64* %17, align 8, !dbg !747, !tbaa !181
  store i64 %99, i64* %18, align 8, !dbg !747, !tbaa !181
  store i64 %67, i64* %19, align 8, !dbg !747, !tbaa !181
  store i64 %68, i64* %20, align 8, !dbg !747, !tbaa !181
  store i64 %69, i64* %21, align 8, !dbg !747, !tbaa !181
  call void @llvm.dbg.value(metadata i32 0, metadata !691, metadata !DIExpression()), !dbg !748
  br label %106, !dbg !749

61:                                               ; preds = %11, %61
  %62 = phi i32 [ 0, %11 ], [ %100, %61 ]
  %63 = phi i64 [ %22, %11 ], [ %98, %61 ]
  %64 = phi i64 [ %23, %11 ], [ %63, %61 ]
  %65 = phi i64 [ %24, %11 ], [ %64, %61 ]
  %66 = phi i64 [ %25, %11 ], [ %65, %61 ]
  %67 = phi i64 [ %26, %11 ], [ %99, %61 ]
  %68 = phi i64 [ %27, %11 ], [ %67, %61 ]
  %69 = phi i64 [ %28, %11 ], [ %68, %61 ]
  %70 = phi i64 [ %29, %11 ], [ %69, %61 ]
  call void @llvm.dbg.value(metadata i32 %62, metadata !671, metadata !DIExpression()), !dbg !716
  call void @llvm.dbg.value(metadata i64 %63, metadata !673, metadata !DIExpression()), !dbg !747
  call void @llvm.dbg.value(metadata i64 %64, metadata !676, metadata !DIExpression()), !dbg !747
  call void @llvm.dbg.value(metadata i64 %65, metadata !677, metadata !DIExpression()), !dbg !747
  call void @llvm.dbg.value(metadata i64 %66, metadata !678, metadata !DIExpression()), !dbg !747
  call void @llvm.dbg.value(metadata i64 %67, metadata !679, metadata !DIExpression()), !dbg !747
  call void @llvm.dbg.value(metadata i64 %68, metadata !680, metadata !DIExpression()), !dbg !747
  call void @llvm.dbg.value(metadata i64 %69, metadata !681, metadata !DIExpression()), !dbg !747
  call void @llvm.dbg.value(metadata i64 %70, metadata !682, metadata !DIExpression()), !dbg !747
  %71 = getelementptr inbounds i64, i64* %0, i32 %62, !dbg !750
  %72 = load i64, i64* %71, align 4, !dbg !750, !tbaa !181
  call void @llvm.dbg.value(metadata i64 %72, metadata !683, metadata !DIExpression()), !dbg !747
  %73 = getelementptr inbounds i64, i64* %8, i32 %62, !dbg !751
  %74 = load i64, i64* %73, align 4, !dbg !751, !tbaa !181
  call void @llvm.dbg.value(metadata i64 %74, metadata !684, metadata !DIExpression()), !dbg !747
  %75 = call i64 @llvm.fshl.i64(i64 %67, i64 %67, i64 50), !dbg !752
  %76 = call i64 @llvm.fshl.i64(i64 %67, i64 %67, i64 46), !dbg !753
  %77 = call i64 @llvm.fshl.i64(i64 %67, i64 %67, i64 23), !dbg !754
  %78 = xor i64 %76, %77, !dbg !755
  %79 = xor i64 %78, %75, !dbg !756
  %80 = and i64 %68, %67, !dbg !757
  %81 = xor i64 %67, -1, !dbg !758
  %82 = and i64 %69, %81, !dbg !759
  %83 = add i64 %79, %80, !dbg !760
  %84 = add i64 %83, %70, !dbg !761
  %85 = add i64 %84, %82, !dbg !762
  %86 = add i64 %85, %72, !dbg !763
  %87 = add i64 %86, %74, !dbg !764
  call void @llvm.dbg.value(metadata i64 %87, metadata !685, metadata !DIExpression()), !dbg !747
  %88 = call i64 @llvm.fshl.i64(i64 %63, i64 %63, i64 36), !dbg !765
  %89 = call i64 @llvm.fshl.i64(i64 %63, i64 %63, i64 30), !dbg !766
  %90 = call i64 @llvm.fshl.i64(i64 %63, i64 %63, i64 25), !dbg !767
  %91 = xor i64 %89, %90, !dbg !768
  %92 = xor i64 %91, %88, !dbg !769
  %93 = and i64 %64, %63, !dbg !770
  %94 = xor i64 %64, %63, !dbg !771
  %95 = and i64 %94, %65, !dbg !771
  %96 = xor i64 %95, %93, !dbg !772
  %97 = add i64 %96, %92, !dbg !773
  call void @llvm.dbg.value(metadata i64 %97, metadata !686, metadata !DIExpression()), !dbg !747
  %98 = add i64 %97, %87, !dbg !774
  call void @llvm.dbg.value(metadata i64 %98, metadata !687, metadata !DIExpression()), !dbg !747
  %99 = add i64 %87, %66, !dbg !775
  call void @llvm.dbg.value(metadata i64 %99, metadata !688, metadata !DIExpression()), !dbg !747
  call void @llvm.dbg.value(metadata i64* %13, metadata !689, metadata !DIExpression()), !dbg !747
  call void @llvm.dbg.value(metadata i64* %18, metadata !690, metadata !DIExpression()), !dbg !747
  %100 = add nuw nsw i32 %62, 1, !dbg !776
  call void @llvm.dbg.value(metadata i32 %100, metadata !671, metadata !DIExpression()), !dbg !716
  %101 = icmp eq i32 %100, 80, !dbg !777
  br i1 %101, label %60, label %61, !dbg !717, !llvm.loop !778

102:                                              ; preds = %106
  %103 = getelementptr inbounds i64, i64* %0, i32 168, !dbg !780
  %104 = load i64, i64* %103, align 4, !dbg !781, !tbaa !181
  call void @llvm.dbg.value(metadata i64 %104, metadata !697, metadata !DIExpression()), !dbg !699
  call void @llvm.dbg.value(metadata i64 1, metadata !698, metadata !DIExpression()), !dbg !699
  %105 = add i64 %104, 1, !dbg !782
  store i64 %105, i64* %103, align 4, !dbg !783, !tbaa !181
  call void @llvm.lifetime.end.p0i8(i64 64, i8* nonnull %12) #14, !dbg !784
  call void @llvm.lifetime.end.p0i8(i64 128, i8* nonnull %6) #14, !dbg !784
  ret void, !dbg !784

106:                                              ; preds = %60, %106
  %107 = phi i32 [ 0, %60 ], [ %113, %106 ]
  call void @llvm.dbg.value(metadata i32 %107, metadata !691, metadata !DIExpression()), !dbg !748
  %108 = getelementptr inbounds i64, i64* %10, i32 %107, !dbg !785
  %109 = load i64, i64* %108, align 4, !dbg !785, !tbaa !181
  call void @llvm.dbg.value(metadata i64 %109, metadata !693, metadata !DIExpression()), !dbg !786
  %110 = getelementptr inbounds [8 x i64], [8 x i64]* %5, i32 0, i32 %107, !dbg !787
  %111 = load i64, i64* %110, align 8, !dbg !787, !tbaa !181
  call void @llvm.dbg.value(metadata i64 %111, metadata !696, metadata !DIExpression()), !dbg !786
  %112 = add i64 %111, %109, !dbg !788
  store i64 %112, i64* %108, align 4, !dbg !789, !tbaa !181
  %113 = add nuw nsw i32 %107, 1, !dbg !790
  call void @llvm.dbg.value(metadata i32 %113, metadata !691, metadata !DIExpression()), !dbg !748
  %114 = icmp eq i32 %113, 8, !dbg !791
  br i1 %114, label %102, label %106, !dbg !749, !llvm.loop !792
}

; Function Attrs: nofree noinline nosync nounwind uwtable
define internal fastcc void @Hacl_Hash_Lib_LoadStore_uint64s_from_be_bytes(i64* nocapture noundef writeonly %0, i8* nocapture noundef readonly %1) unnamed_addr #7 !dbg !794 {
  call void @llvm.dbg.value(metadata i64* %0, metadata !796, metadata !DIExpression()), !dbg !805
  call void @llvm.dbg.value(metadata i8* %1, metadata !797, metadata !DIExpression()), !dbg !805
  call void @llvm.dbg.value(metadata i32 16, metadata !798, metadata !DIExpression()), !dbg !805
  call void @llvm.dbg.value(metadata i32 0, metadata !799, metadata !DIExpression()), !dbg !806
  br label %4, !dbg !807

3:                                                ; preds = %4
  ret void, !dbg !808

4:                                                ; preds = %2, %4
  %5 = phi i32 [ 0, %2 ], [ %11, %4 ]
  call void @llvm.dbg.value(metadata i32 %5, metadata !799, metadata !DIExpression()), !dbg !806
  %6 = shl i32 %5, 3, !dbg !809
  %7 = getelementptr inbounds i8, i8* %1, i32 %6, !dbg !810
  call void @llvm.dbg.value(metadata i8* %7, metadata !801, metadata !DIExpression()), !dbg !811
  %8 = call fastcc i64 @load64(i8* noundef %7), !dbg !812
  %9 = call fastcc i64 @__bswap_64(i64 noundef %8), !dbg !812
  call void @llvm.dbg.value(metadata i64 %9, metadata !804, metadata !DIExpression()), !dbg !811
  %10 = getelementptr inbounds i64, i64* %0, i32 %5, !dbg !813
  store i64 %9, i64* %10, align 4, !dbg !814, !tbaa !181
  %11 = add nuw nsw i32 %5, 1, !dbg !815
  call void @llvm.dbg.value(metadata i32 %11, metadata !799, metadata !DIExpression()), !dbg !806
  %12 = icmp eq i32 %11, 16, !dbg !816
  br i1 %12, label %3, label %4, !dbg !807, !llvm.loop !817
}

; Function Attrs: argmemonly mustprogress nofree nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i32(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i32, i1 immarg) #8

; Function Attrs: mustprogress nofree noinline nosync nounwind readnone uwtable willreturn
define internal fastcc i64 @__bswap_64(i64 noundef %0) unnamed_addr #9 !dbg !819 {
  call void @llvm.dbg.value(metadata i64 %0, metadata !824, metadata !DIExpression()), !dbg !825
  %2 = call i64 @llvm.bswap.i64(i64 %0), !dbg !826
  ret i64 %2, !dbg !827
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readonly uwtable willreturn
define internal fastcc i64 @load64(i8* nocapture noundef readonly %0) unnamed_addr #10 !dbg !828 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !833, metadata !DIExpression()), !dbg !835
  %2 = bitcast i8* %0 to i64*, !dbg !836
  %3 = load i64, i64* %2, align 1, !dbg !836
  call void @llvm.dbg.value(metadata i64 %3, metadata !834, metadata !DIExpression()), !dbg !835
  ret i64 %3, !dbg !837
}

declare !dbg !838 void @FStar_UInt128_shift_left(%struct.FStar_UInt128_uint128* sret(%struct.FStar_UInt128_uint128) align 4, i64, i64, i32 noundef) local_unnamed_addr #11

declare !dbg !842 void @FStar_UInt128_add(%struct.FStar_UInt128_uint128* sret(%struct.FStar_UInt128_uint128) align 4, i64, i64, i64, i64) local_unnamed_addr #11

declare !dbg !845 void @FStar_UInt128_mul_wide(%struct.FStar_UInt128_uint128* sret(%struct.FStar_UInt128_uint128) align 4, i64 noundef, i64 noundef) local_unnamed_addr #11

declare !dbg !848 void @FStar_UInt128_uint64_to_uint128(%struct.FStar_UInt128_uint128* sret(%struct.FStar_UInt128_uint128) align 4, i64 noundef) local_unnamed_addr #11

; Function Attrs: mustprogress nofree noinline nosync nounwind uwtable willreturn
define internal fastcc void @store128_be(i8* nocapture noundef writeonly %0, i64 %1, i64 %2) unnamed_addr #5 !dbg !851 {
  %4 = alloca %struct.FStar_UInt128_uint128, align 8
  %5 = getelementptr inbounds %struct.FStar_UInt128_uint128, %struct.FStar_UInt128_uint128* %4, i32 0, i32 0
  store i64 %1, i64* %5, align 8, !tbaa !617
  %6 = getelementptr inbounds %struct.FStar_UInt128_uint128, %struct.FStar_UInt128_uint128* %4, i32 0, i32 1
  store i64 %2, i64* %6, align 8, !tbaa !619
  call void @llvm.dbg.value(metadata i8* %0, metadata !856, metadata !DIExpression()), !dbg !858
  call void @llvm.dbg.declare(metadata %struct.FStar_UInt128_uint128* %4, metadata !857, metadata !DIExpression()), !dbg !859
  call fastcc void @store128_be_(i8* noundef %0, %struct.FStar_UInt128_uint128* noundef nonnull %4), !dbg !860
  ret void, !dbg !861
}

; Function Attrs: mustprogress nofree noinline nosync nounwind uwtable willreturn
define internal fastcc void @store128_be_(i8* nocapture noundef writeonly %0, %struct.FStar_UInt128_uint128* nocapture noundef readonly %1) unnamed_addr #5 !dbg !862 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !867, metadata !DIExpression()), !dbg !869
  call void @llvm.dbg.value(metadata %struct.FStar_UInt128_uint128* %1, metadata !868, metadata !DIExpression()), !dbg !869
  %3 = getelementptr inbounds %struct.FStar_UInt128_uint128, %struct.FStar_UInt128_uint128* %1, i32 0, i32 1, !dbg !870
  %4 = load i64, i64* %3, align 4, !dbg !870, !tbaa !619
  %5 = call fastcc i64 @__bswap_64(i64 noundef %4), !dbg !870
  call fastcc void @store64(i8* noundef %0, i64 noundef %5), !dbg !870
  %6 = getelementptr inbounds i8, i8* %0, i32 8, !dbg !871
  %7 = getelementptr inbounds %struct.FStar_UInt128_uint128, %struct.FStar_UInt128_uint128* %1, i32 0, i32 0, !dbg !871
  %8 = load i64, i64* %7, align 4, !dbg !871, !tbaa !617
  %9 = call fastcc i64 @__bswap_64(i64 noundef %8), !dbg !871
  call fastcc void @store64(i8* noundef nonnull %6, i64 noundef %9), !dbg !871
  ret void, !dbg !872
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind uwtable willreturn writeonly
define internal fastcc void @store64(i8* nocapture noundef writeonly %0, i64 noundef %1) unnamed_addr #6 !dbg !873 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !877, metadata !DIExpression()), !dbg !879
  call void @llvm.dbg.value(metadata i64 %1, metadata !878, metadata !DIExpression()), !dbg !879
  %3 = bitcast i8* %0 to i64*, !dbg !880
  store i64 %1, i64* %3, align 1, !dbg !880
  ret void, !dbg !881
}

; Function Attrs: nofree noinline nosync nounwind uwtable
define internal fastcc void @Hacl_Hash_Lib_LoadStore_uint64s_to_be_bytes(i8* nocapture noundef writeonly %0, i64* nocapture noundef readonly %1) unnamed_addr #7 !dbg !882 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !886, metadata !DIExpression()), !dbg !895
  call void @llvm.dbg.value(metadata i64* %1, metadata !887, metadata !DIExpression()), !dbg !895
  call void @llvm.dbg.value(metadata i32 8, metadata !888, metadata !DIExpression()), !dbg !895
  call void @llvm.dbg.value(metadata i32 0, metadata !889, metadata !DIExpression()), !dbg !896
  br label %4, !dbg !897

3:                                                ; preds = %4
  ret void, !dbg !898

4:                                                ; preds = %2, %4
  %5 = phi i32 [ 0, %2 ], [ %11, %4 ]
  call void @llvm.dbg.value(metadata i32 %5, metadata !889, metadata !DIExpression()), !dbg !896
  %6 = getelementptr inbounds i64, i64* %1, i32 %5, !dbg !899
  %7 = load i64, i64* %6, align 4, !dbg !899, !tbaa !181
  call void @llvm.dbg.value(metadata i64 %7, metadata !891, metadata !DIExpression()), !dbg !900
  %8 = shl i32 %5, 3, !dbg !901
  %9 = getelementptr inbounds i8, i8* %0, i32 %8, !dbg !902
  call void @llvm.dbg.value(metadata i8* %9, metadata !894, metadata !DIExpression()), !dbg !900
  %10 = call fastcc i64 @__bswap_64(i64 noundef %7), !dbg !903
  call fastcc void @store64(i8* noundef %9, i64 noundef %10), !dbg !903
  %11 = add nuw nsw i32 %5, 1, !dbg !904
  call void @llvm.dbg.value(metadata i32 %11, metadata !889, metadata !DIExpression()), !dbg !896
  %12 = icmp eq i32 %11, 8, !dbg !905
  br i1 %12, label %3, label %4, !dbg !897, !llvm.loop !906
}

; Function Attrs: noinline nounwind uwtable
define internal fastcc void @Hacl_Impl_SHA512_ModQ_sha512_modq_pre(i64* nocapture noundef %0, i8* nocapture noundef readonly %1, i8* nocapture noundef readonly %2, i32 noundef %3) unnamed_addr #0 !dbg !908 {
  %5 = alloca [10 x i64], align 8
  call void @llvm.dbg.value(metadata i64* %0, metadata !912, metadata !DIExpression()), !dbg !920
  call void @llvm.dbg.value(metadata i8* %1, metadata !913, metadata !DIExpression()), !dbg !920
  call void @llvm.dbg.value(metadata i8* %2, metadata !914, metadata !DIExpression()), !dbg !920
  call void @llvm.dbg.value(metadata i32 %3, metadata !915, metadata !DIExpression()), !dbg !920
  %6 = bitcast [10 x i64]* %5 to i8*, !dbg !921
  call void @llvm.lifetime.start.p0i8(i64 80, i8* nonnull %6) #14, !dbg !921
  call void @llvm.dbg.declare(metadata [10 x i64]* %5, metadata !916, metadata !DIExpression()), !dbg !922
  call void @llvm.memset.p0i8.i32(i8* noundef nonnull align 8 dereferenceable(80) %6, i8 0, i32 80, i1 false), !dbg !922
  %7 = getelementptr inbounds [10 x i64], [10 x i64]* %5, i32 0, i32 0, !dbg !923
  call fastcc void @Hacl_Impl_SHA512_ModQ_sha512_modq_pre_(i64* noundef %0, i8* noundef %1, i8* noundef %2, i32 noundef %3, i64* noundef nonnull %7), !dbg !924
  call void @llvm.lifetime.end.p0i8(i64 80, i8* nonnull %6) #14, !dbg !925
  ret void, !dbg !925
}

; Function Attrs: noinline nounwind uwtable
define internal fastcc void @Hacl_Impl_SHA512_ModQ_sha512_modq_pre_(i64* nocapture noundef %0, i8* nocapture noundef readonly %1, i8* nocapture noundef readonly %2, i32 noundef %3, i64* nocapture noundef %4) unnamed_addr #0 !dbg !926 {
  %6 = alloca [64 x i8], align 1
  call void @llvm.dbg.value(metadata i64* %0, metadata !930, metadata !DIExpression()), !dbg !936
  call void @llvm.dbg.value(metadata i8* %1, metadata !931, metadata !DIExpression()), !dbg !936
  call void @llvm.dbg.value(metadata i8* %2, metadata !932, metadata !DIExpression()), !dbg !936
  call void @llvm.dbg.value(metadata i32 %3, metadata !933, metadata !DIExpression()), !dbg !936
  call void @llvm.dbg.value(metadata i64* %4, metadata !934, metadata !DIExpression()), !dbg !936
  %7 = getelementptr inbounds [64 x i8], [64 x i8]* %6, i32 0, i32 0, !dbg !937
  call void @llvm.lifetime.start.p0i8(i64 64, i8* nonnull %7) #14, !dbg !937
  call void @llvm.dbg.declare(metadata [64 x i8]* %6, metadata !935, metadata !DIExpression()), !dbg !938
  call void @llvm.memset.p0i8.i32(i8* noundef nonnull align 1 dereferenceable(64) %7, i8 0, i32 64, i1 false), !dbg !938
  call fastcc void @Hacl_Impl_Sha512_sha512_pre_msg(i8* noundef nonnull %7, i8* noundef %1, i8* noundef %2, i32 noundef %3), !dbg !939
  call fastcc void @Hacl_Impl_Load56_load_64_bytes(i64* noundef %4, i8* noundef nonnull %7), !dbg !940
  call fastcc void @Hacl_Impl_BignumQ_Mul_barrett_reduction(i64* noundef %0, i64* noundef %4), !dbg !941
  call void @llvm.lifetime.end.p0i8(i64 64, i8* nonnull %7) #14, !dbg !942
  ret void, !dbg !942
}

; Function Attrs: noinline nounwind uwtable
define internal fastcc void @Hacl_Impl_Sha512_sha512_pre_msg(i8* nocapture noundef writeonly %0, i8* nocapture noundef readonly %1, i8* nocapture noundef readonly %2, i32 noundef %3) unnamed_addr #0 !dbg !943 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !945, metadata !DIExpression()), !dbg !949
  call void @llvm.dbg.value(metadata i8* %1, metadata !946, metadata !DIExpression()), !dbg !949
  call void @llvm.dbg.value(metadata i8* %2, metadata !947, metadata !DIExpression()), !dbg !949
  call void @llvm.dbg.value(metadata i32 %3, metadata !948, metadata !DIExpression()), !dbg !949
  call fastcc void @Hacl_Impl_SHA512_Ed25519_sha512_pre_msg(i8* noundef %0, i8* noundef %1, i8* noundef %2, i32 noundef %3), !dbg !950
  ret void, !dbg !951
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind uwtable willreturn
define internal fastcc void @Hacl_Impl_Load56_load_64_bytes(i64* nocapture noundef writeonly %0, i8* nocapture noundef readonly %1) unnamed_addr #4 !dbg !952 {
  call void @llvm.dbg.value(metadata i64* %0, metadata !954, metadata !DIExpression()), !dbg !994
  call void @llvm.dbg.value(metadata i8* %1, metadata !955, metadata !DIExpression()), !dbg !994
  call void @llvm.dbg.value(metadata i8* %1, metadata !956, metadata !DIExpression()), !dbg !994
  %3 = call fastcc i64 @load64(i8* noundef %1), !dbg !995
  call void @llvm.dbg.value(metadata i64 %3, metadata !957, metadata !DIExpression()), !dbg !994
  %4 = and i64 %3, 72057594037927935, !dbg !996
  call void @llvm.dbg.value(metadata i64 %4, metadata !958, metadata !DIExpression()), !dbg !994
  call void @llvm.dbg.value(metadata i64 %4, metadata !959, metadata !DIExpression()), !dbg !994
  %5 = getelementptr inbounds i8, i8* %1, i32 7, !dbg !997
  call void @llvm.dbg.value(metadata i8* %5, metadata !960, metadata !DIExpression()), !dbg !994
  %6 = call fastcc i64 @load64(i8* noundef nonnull %5), !dbg !998
  call void @llvm.dbg.value(metadata i64 %6, metadata !961, metadata !DIExpression()), !dbg !994
  %7 = and i64 %6, 72057594037927935, !dbg !999
  call void @llvm.dbg.value(metadata i64 %7, metadata !962, metadata !DIExpression()), !dbg !994
  call void @llvm.dbg.value(metadata i64 %7, metadata !963, metadata !DIExpression()), !dbg !994
  %8 = getelementptr inbounds i8, i8* %1, i32 14, !dbg !1000
  call void @llvm.dbg.value(metadata i8* %8, metadata !964, metadata !DIExpression()), !dbg !994
  %9 = call fastcc i64 @load64(i8* noundef nonnull %8), !dbg !1001
  call void @llvm.dbg.value(metadata i64 %9, metadata !965, metadata !DIExpression()), !dbg !994
  %10 = and i64 %9, 72057594037927935, !dbg !1002
  call void @llvm.dbg.value(metadata i64 %10, metadata !966, metadata !DIExpression()), !dbg !994
  call void @llvm.dbg.value(metadata i64 %10, metadata !967, metadata !DIExpression()), !dbg !994
  %11 = getelementptr inbounds i8, i8* %1, i32 21, !dbg !1003
  call void @llvm.dbg.value(metadata i8* %11, metadata !968, metadata !DIExpression()), !dbg !994
  %12 = call fastcc i64 @load64(i8* noundef nonnull %11), !dbg !1004
  call void @llvm.dbg.value(metadata i64 %12, metadata !969, metadata !DIExpression()), !dbg !994
  %13 = and i64 %12, 72057594037927935, !dbg !1005
  call void @llvm.dbg.value(metadata i64 %13, metadata !970, metadata !DIExpression()), !dbg !994
  call void @llvm.dbg.value(metadata i64 %13, metadata !971, metadata !DIExpression()), !dbg !994
  %14 = getelementptr inbounds i8, i8* %1, i32 28, !dbg !1006
  call void @llvm.dbg.value(metadata i8* %14, metadata !972, metadata !DIExpression()), !dbg !994
  %15 = call fastcc i64 @load64(i8* noundef nonnull %14), !dbg !1007
  call void @llvm.dbg.value(metadata i64 %15, metadata !973, metadata !DIExpression()), !dbg !994
  %16 = and i64 %15, 72057594037927935, !dbg !1008
  call void @llvm.dbg.value(metadata i64 %16, metadata !974, metadata !DIExpression()), !dbg !994
  call void @llvm.dbg.value(metadata i64 %16, metadata !975, metadata !DIExpression()), !dbg !994
  %17 = getelementptr inbounds i8, i8* %1, i32 35, !dbg !1009
  call void @llvm.dbg.value(metadata i8* %17, metadata !976, metadata !DIExpression()), !dbg !994
  %18 = call fastcc i64 @load64(i8* noundef nonnull %17), !dbg !1010
  call void @llvm.dbg.value(metadata i64 %18, metadata !977, metadata !DIExpression()), !dbg !994
  %19 = and i64 %18, 72057594037927935, !dbg !1011
  call void @llvm.dbg.value(metadata i64 %19, metadata !978, metadata !DIExpression()), !dbg !994
  call void @llvm.dbg.value(metadata i64 %19, metadata !979, metadata !DIExpression()), !dbg !994
  %20 = getelementptr inbounds i8, i8* %1, i32 42, !dbg !1012
  call void @llvm.dbg.value(metadata i8* %20, metadata !980, metadata !DIExpression()), !dbg !994
  %21 = call fastcc i64 @load64(i8* noundef nonnull %20), !dbg !1013
  call void @llvm.dbg.value(metadata i64 %21, metadata !981, metadata !DIExpression()), !dbg !994
  %22 = and i64 %21, 72057594037927935, !dbg !1014
  call void @llvm.dbg.value(metadata i64 %22, metadata !982, metadata !DIExpression()), !dbg !994
  call void @llvm.dbg.value(metadata i64 %22, metadata !983, metadata !DIExpression()), !dbg !994
  %23 = getelementptr inbounds i8, i8* %1, i32 49, !dbg !1015
  call void @llvm.dbg.value(metadata i8* %23, metadata !984, metadata !DIExpression()), !dbg !994
  %24 = call fastcc i64 @load64(i8* noundef nonnull %23), !dbg !1016
  call void @llvm.dbg.value(metadata i64 %24, metadata !985, metadata !DIExpression()), !dbg !994
  %25 = and i64 %24, 72057594037927935, !dbg !1017
  call void @llvm.dbg.value(metadata i64 %25, metadata !986, metadata !DIExpression()), !dbg !994
  call void @llvm.dbg.value(metadata i64 %25, metadata !987, metadata !DIExpression()), !dbg !994
  %26 = getelementptr inbounds i8, i8* %1, i32 56, !dbg !1018
  call void @llvm.dbg.value(metadata i8* %26, metadata !988, metadata !DIExpression()), !dbg !994
  %27 = call fastcc i64 @load64(i8* noundef nonnull %26), !dbg !1019
  call void @llvm.dbg.value(metadata i64 %27, metadata !989, metadata !DIExpression()), !dbg !994
  %28 = and i64 %27, 72057594037927935, !dbg !1020
  call void @llvm.dbg.value(metadata i64 %28, metadata !990, metadata !DIExpression()), !dbg !994
  call void @llvm.dbg.value(metadata i64 %28, metadata !991, metadata !DIExpression()), !dbg !994
  %29 = getelementptr inbounds i8, i8* %1, i32 63, !dbg !1021
  %30 = load i8, i8* %29, align 1, !dbg !1021, !tbaa !276
  call void @llvm.dbg.value(metadata i8 %30, metadata !992, metadata !DIExpression()), !dbg !994
  %31 = zext i8 %30 to i64, !dbg !1022
  call void @llvm.dbg.value(metadata i64 %31, metadata !993, metadata !DIExpression()), !dbg !994
  call fastcc void @Hacl_Lib_Create64_make_h64_10(i64* noundef %0, i64 noundef %4, i64 noundef %7, i64 noundef %10, i64 noundef %13, i64 noundef %16, i64 noundef %19, i64 noundef %22, i64 noundef %25, i64 noundef %28, i64 noundef %31), !dbg !1023
  ret void, !dbg !1024
}

; Function Attrs: noinline nounwind uwtable
define internal fastcc void @Hacl_Impl_BignumQ_Mul_barrett_reduction(i64* nocapture noundef %0, i64* nocapture noundef readonly %1) unnamed_addr #0 !dbg !1025 {
  call void @llvm.dbg.value(metadata i64* %0, metadata !1029, metadata !DIExpression()), !dbg !1031
  call void @llvm.dbg.value(metadata i64* %1, metadata !1030, metadata !DIExpression()), !dbg !1031
  call fastcc void @Hacl_Impl_BignumQ_Mul_barrett_reduction_(i64* noundef %0, i64* noundef %1), !dbg !1032
  ret void, !dbg !1033
}

; Function Attrs: noinline nounwind uwtable
define internal fastcc void @Hacl_Impl_SHA512_Ed25519_sha512_pre_msg(i8* nocapture noundef writeonly %0, i8* nocapture noundef readonly %1, i8* nocapture noundef readonly %2, i32 noundef %3) unnamed_addr #0 !dbg !1034 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !1036, metadata !DIExpression()), !dbg !1040
  call void @llvm.dbg.value(metadata i8* %1, metadata !1037, metadata !DIExpression()), !dbg !1040
  call void @llvm.dbg.value(metadata i8* %2, metadata !1038, metadata !DIExpression()), !dbg !1040
  call void @llvm.dbg.value(metadata i32 %3, metadata !1039, metadata !DIExpression()), !dbg !1040
  call fastcc void @Hacl_Impl_SHA512_Ed25519_3_sha512_pre_msg(i8* noundef %0, i8* noundef %1, i8* noundef %2, i32 noundef %3), !dbg !1041
  ret void, !dbg !1042
}

; Function Attrs: noinline nounwind uwtable
define internal fastcc void @Hacl_Impl_SHA512_Ed25519_3_sha512_pre_msg(i8* nocapture noundef writeonly %0, i8* nocapture noundef readonly %1, i8* nocapture noundef readonly %2, i32 noundef %3) unnamed_addr #0 !dbg !1043 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !1045, metadata !DIExpression()), !dbg !1049
  call void @llvm.dbg.value(metadata i8* %1, metadata !1046, metadata !DIExpression()), !dbg !1049
  call void @llvm.dbg.value(metadata i8* %2, metadata !1047, metadata !DIExpression()), !dbg !1049
  call void @llvm.dbg.value(metadata i32 %3, metadata !1048, metadata !DIExpression()), !dbg !1049
  %5 = icmp ult i32 %3, 97, !dbg !1050
  br i1 %5, label %6, label %7, !dbg !1052

6:                                                ; preds = %4
  call fastcc void @Hacl_Impl_SHA512_Ed25519_1_sha512_pre_msg_1(i8* noundef %0, i8* noundef %1, i8* noundef %2, i32 noundef %3), !dbg !1053
  br label %8, !dbg !1053

7:                                                ; preds = %4
  call fastcc void @Hacl_Impl_SHA512_Ed25519_3_sha512_pre_msg_2(i8* noundef %0, i8* noundef %1, i8* noundef %2, i32 noundef %3), !dbg !1054
  br label %8

8:                                                ; preds = %7, %6
  ret void, !dbg !1055
}

; Function Attrs: noinline nounwind uwtable
define internal fastcc void @Hacl_Impl_SHA512_Ed25519_1_sha512_pre_msg_1(i8* nocapture noundef writeonly %0, i8* nocapture noundef readonly %1, i8* nocapture noundef readonly %2, i32 noundef %3) unnamed_addr #0 !dbg !1056 {
  %5 = alloca [128 x i8], align 1
  call void @llvm.dbg.value(metadata i8* %0, metadata !1058, metadata !DIExpression()), !dbg !1067
  call void @llvm.dbg.value(metadata i8* %1, metadata !1059, metadata !DIExpression()), !dbg !1067
  call void @llvm.dbg.value(metadata i8* %2, metadata !1060, metadata !DIExpression()), !dbg !1067
  call void @llvm.dbg.value(metadata i32 %3, metadata !1061, metadata !DIExpression()), !dbg !1067
  %6 = getelementptr inbounds [128 x i8], [128 x i8]* %5, i32 0, i32 0, !dbg !1068
  call void @llvm.lifetime.start.p0i8(i64 128, i8* nonnull %6) #14, !dbg !1068
  call void @llvm.dbg.declare(metadata [128 x i8]* %5, metadata !1062, metadata !DIExpression()), !dbg !1069
  call void @llvm.memset.p0i8.i32(i8* noundef nonnull align 1 dereferenceable(128) %6, i8 0, i32 128, i1 false), !dbg !1069
  call void @llvm.dbg.value(metadata i8* %6, metadata !1066, metadata !DIExpression()), !dbg !1067
  call fastcc void @Hacl_Impl_SHA512_Ed25519_1_concat_2(i8* noundef nonnull %6, i8* noundef %1, i8* noundef %2, i32 noundef %3), !dbg !1070
  %7 = add i32 %3, 32, !dbg !1071
  call fastcc void @Hacl_Impl_SHA2_512_hash(i8* noundef %0, i8* noundef nonnull %6, i32 noundef %7), !dbg !1072
  call void @llvm.lifetime.end.p0i8(i64 128, i8* nonnull %6) #14, !dbg !1073
  ret void, !dbg !1073
}

; Function Attrs: noinline nounwind uwtable
define internal fastcc void @Hacl_Impl_SHA512_Ed25519_3_sha512_pre_msg_2(i8* nocapture noundef writeonly %0, i8* nocapture noundef readonly %1, i8* nocapture noundef readonly %2, i32 noundef %3) unnamed_addr #0 !dbg !1074 {
  %5 = alloca [128 x i8], align 1
  call void @llvm.dbg.value(metadata i8* %0, metadata !1076, metadata !DIExpression()), !dbg !1083
  call void @llvm.dbg.value(metadata i8* %1, metadata !1077, metadata !DIExpression()), !dbg !1083
  call void @llvm.dbg.value(metadata i8* %2, metadata !1078, metadata !DIExpression()), !dbg !1083
  call void @llvm.dbg.value(metadata i32 %3, metadata !1079, metadata !DIExpression()), !dbg !1083
  call void @llvm.dbg.value(metadata i8* %2, metadata !1080, metadata !DIExpression()), !dbg !1083
  %6 = getelementptr inbounds i8, i8* %2, i32 96, !dbg !1084
  call void @llvm.dbg.value(metadata i8* %6, metadata !1081, metadata !DIExpression()), !dbg !1083
  %7 = getelementptr inbounds [128 x i8], [128 x i8]* %5, i32 0, i32 0, !dbg !1085
  call void @llvm.lifetime.start.p0i8(i64 128, i8* nonnull %7) #14, !dbg !1085
  call void @llvm.dbg.declare(metadata [128 x i8]* %5, metadata !1082, metadata !DIExpression()), !dbg !1086
  call void @llvm.memset.p0i8.i32(i8* noundef nonnull align 1 dereferenceable(128) %7, i8 0, i32 128, i1 false), !dbg !1086
  call fastcc void @Hacl_Impl_SHA512_Ed25519_1_concat_2(i8* noundef nonnull %7, i8* noundef %1, i8* noundef %2, i32 noundef 96), !dbg !1087
  %8 = add i32 %3, -96, !dbg !1088
  call fastcc void @Hacl_Impl_SHA512_Ed25519_2_hash_block_and_rest(i8* noundef %0, i8* noundef nonnull %7, i8* noundef nonnull %6, i32 noundef %8), !dbg !1089
  call void @llvm.lifetime.end.p0i8(i64 128, i8* nonnull %7) #14, !dbg !1090
  ret void, !dbg !1090
}

; Function Attrs: mustprogress nofree noinline nosync nounwind uwtable willreturn
define internal fastcc void @Hacl_Impl_SHA512_Ed25519_1_concat_2(i8* nocapture noundef writeonly %0, i8* nocapture noundef readonly %1, i8* nocapture noundef readonly %2, i32 noundef %3) unnamed_addr #5 !dbg !1091 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !1093, metadata !DIExpression()), !dbg !1097
  call void @llvm.dbg.value(metadata i8* %1, metadata !1094, metadata !DIExpression()), !dbg !1097
  call void @llvm.dbg.value(metadata i8* %2, metadata !1095, metadata !DIExpression()), !dbg !1097
  call void @llvm.dbg.value(metadata i32 %3, metadata !1096, metadata !DIExpression()), !dbg !1097
  call fastcc void @Hacl_Impl_SHA512_Ed25519_1_copy_bytes(i8* noundef %0, i8* noundef %1, i32 noundef 32), !dbg !1098
  %5 = getelementptr inbounds i8, i8* %0, i32 32, !dbg !1099
  call fastcc void @Hacl_Impl_SHA512_Ed25519_1_copy_bytes(i8* noundef nonnull %5, i8* noundef %2, i32 noundef %3), !dbg !1100
  ret void, !dbg !1101
}

; Function Attrs: mustprogress nofree noinline nosync nounwind uwtable willreturn
define internal fastcc void @Hacl_Impl_SHA512_Ed25519_1_copy_bytes(i8* nocapture noundef writeonly %0, i8* nocapture noundef readonly %1, i32 noundef %2) unnamed_addr #5 !dbg !1102 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !1104, metadata !DIExpression()), !dbg !1107
  call void @llvm.dbg.value(metadata i8* %1, metadata !1105, metadata !DIExpression()), !dbg !1107
  call void @llvm.dbg.value(metadata i32 %2, metadata !1106, metadata !DIExpression()), !dbg !1107
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* align 1 %0, i8* align 1 %1, i32 %2, i1 false), !dbg !1108
  ret void, !dbg !1109
}

; Function Attrs: noinline nounwind uwtable
define internal fastcc void @Hacl_Impl_SHA512_Ed25519_2_hash_block_and_rest(i8* nocapture noundef writeonly %0, i8* nocapture noundef readonly %1, i8* nocapture noundef readonly %2, i32 noundef %3) unnamed_addr #0 !dbg !1110 {
  %5 = alloca [169 x i64], align 8
  call void @llvm.dbg.value(metadata i8* %0, metadata !1112, metadata !DIExpression()), !dbg !1119
  call void @llvm.dbg.value(metadata i8* %1, metadata !1113, metadata !DIExpression()), !dbg !1119
  call void @llvm.dbg.value(metadata i8* %2, metadata !1114, metadata !DIExpression()), !dbg !1119
  call void @llvm.dbg.value(metadata i32 %3, metadata !1115, metadata !DIExpression()), !dbg !1119
  %6 = lshr i32 %3, 7, !dbg !1120
  call void @llvm.dbg.value(metadata i32 %6, metadata !1116, metadata !DIExpression()), !dbg !1119
  %7 = and i32 %3, 127, !dbg !1121
  %8 = zext i32 %7 to i64, !dbg !1122
  call void @llvm.dbg.value(metadata i64 %8, metadata !1117, metadata !DIExpression()), !dbg !1119
  %9 = bitcast [169 x i64]* %5 to i8*, !dbg !1123
  call void @llvm.lifetime.start.p0i8(i64 1352, i8* nonnull %9) #14, !dbg !1123
  call void @llvm.dbg.declare(metadata [169 x i64]* %5, metadata !1118, metadata !DIExpression()), !dbg !1124
  call void @llvm.memset.p0i8.i32(i8* noundef nonnull align 8 dereferenceable(1352) %9, i8 0, i32 1352, i1 false), !dbg !1124
  %10 = getelementptr inbounds [169 x i64], [169 x i64]* %5, i32 0, i32 0, !dbg !1125
  call fastcc void @Hacl_Impl_SHA2_512_init(i64* noundef nonnull %10), !dbg !1126
  call fastcc void @Hacl_Impl_SHA2_512_update(i64* noundef nonnull %10, i8* noundef %1), !dbg !1127
  call fastcc void @Hacl_Impl_SHA2_512_update_multi(i64* noundef nonnull %10, i8* noundef %2, i32 noundef %6), !dbg !1128
  %11 = and i32 %3, -128, !dbg !1129
  %12 = getelementptr inbounds i8, i8* %2, i32 %11, !dbg !1130
  call fastcc void @Hacl_Impl_SHA2_512_update_last(i64* noundef nonnull %10, i8* noundef %12, i64 noundef %8), !dbg !1131
  call fastcc void @Hacl_Impl_SHA2_512_finish(i64* noundef nonnull %10, i8* noundef %0), !dbg !1132
  call void @llvm.lifetime.end.p0i8(i64 1352, i8* nonnull %9) #14, !dbg !1133
  ret void, !dbg !1133
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind uwtable willreturn writeonly
define internal fastcc void @Hacl_Lib_Create64_make_h64_10(i64* nocapture noundef writeonly %0, i64 noundef %1, i64 noundef %2, i64 noundef %3, i64 noundef %4, i64 noundef %5, i64 noundef %6, i64 noundef %7, i64 noundef %8, i64 noundef %9, i64 noundef %10) unnamed_addr #6 !dbg !1134 {
  call void @llvm.dbg.value(metadata i64* %0, metadata !1138, metadata !DIExpression()), !dbg !1149
  call void @llvm.dbg.value(metadata i64 %1, metadata !1139, metadata !DIExpression()), !dbg !1149
  call void @llvm.dbg.value(metadata i64 %2, metadata !1140, metadata !DIExpression()), !dbg !1149
  call void @llvm.dbg.value(metadata i64 %3, metadata !1141, metadata !DIExpression()), !dbg !1149
  call void @llvm.dbg.value(metadata i64 %4, metadata !1142, metadata !DIExpression()), !dbg !1149
  call void @llvm.dbg.value(metadata i64 %5, metadata !1143, metadata !DIExpression()), !dbg !1149
  call void @llvm.dbg.value(metadata i64 %6, metadata !1144, metadata !DIExpression()), !dbg !1149
  call void @llvm.dbg.value(metadata i64 %7, metadata !1145, metadata !DIExpression()), !dbg !1149
  call void @llvm.dbg.value(metadata i64 %8, metadata !1146, metadata !DIExpression()), !dbg !1149
  call void @llvm.dbg.value(metadata i64 %9, metadata !1147, metadata !DIExpression()), !dbg !1149
  call void @llvm.dbg.value(metadata i64 %10, metadata !1148, metadata !DIExpression()), !dbg !1149
  store i64 %1, i64* %0, align 4, !dbg !1150, !tbaa !181
  %12 = getelementptr inbounds i64, i64* %0, i32 1, !dbg !1151
  store i64 %2, i64* %12, align 4, !dbg !1152, !tbaa !181
  %13 = getelementptr inbounds i64, i64* %0, i32 2, !dbg !1153
  store i64 %3, i64* %13, align 4, !dbg !1154, !tbaa !181
  %14 = getelementptr inbounds i64, i64* %0, i32 3, !dbg !1155
  store i64 %4, i64* %14, align 4, !dbg !1156, !tbaa !181
  %15 = getelementptr inbounds i64, i64* %0, i32 4, !dbg !1157
  store i64 %5, i64* %15, align 4, !dbg !1158, !tbaa !181
  %16 = getelementptr inbounds i64, i64* %0, i32 5, !dbg !1159
  store i64 %6, i64* %16, align 4, !dbg !1160, !tbaa !181
  %17 = getelementptr inbounds i64, i64* %0, i32 6, !dbg !1161
  store i64 %7, i64* %17, align 4, !dbg !1162, !tbaa !181
  %18 = getelementptr inbounds i64, i64* %0, i32 7, !dbg !1163
  store i64 %8, i64* %18, align 4, !dbg !1164, !tbaa !181
  %19 = getelementptr inbounds i64, i64* %0, i32 8, !dbg !1165
  store i64 %9, i64* %19, align 4, !dbg !1166, !tbaa !181
  %20 = getelementptr inbounds i64, i64* %0, i32 9, !dbg !1167
  store i64 %10, i64* %20, align 4, !dbg !1168, !tbaa !181
  ret void, !dbg !1169
}

; Function Attrs: noinline nounwind uwtable
define internal fastcc void @Hacl_Impl_BignumQ_Mul_barrett_reduction_(i64* nocapture noundef %0, i64* nocapture noundef readonly %1) unnamed_addr #0 !dbg !1170 {
  %3 = alloca [40 x i64], align 8
  call void @llvm.dbg.value(metadata i64* %0, metadata !1172, metadata !DIExpression()), !dbg !1181
  call void @llvm.dbg.value(metadata i64* %1, metadata !1173, metadata !DIExpression()), !dbg !1181
  %4 = bitcast [40 x i64]* %3 to i8*, !dbg !1182
  call void @llvm.lifetime.start.p0i8(i64 320, i8* nonnull %4) #14, !dbg !1182
  call void @llvm.dbg.declare(metadata [40 x i64]* %3, metadata !1174, metadata !DIExpression()), !dbg !1183
  call void @llvm.memset.p0i8.i32(i8* noundef nonnull align 8 dereferenceable(320) %4, i8 0, i32 320, i1 false), !dbg !1183
  %5 = getelementptr inbounds [40 x i64], [40 x i64]* %3, i32 0, i32 0, !dbg !1184
  call void @llvm.dbg.value(metadata i64* %5, metadata !1178, metadata !DIExpression()), !dbg !1181
  %6 = getelementptr inbounds [40 x i64], [40 x i64]* %3, i32 0, i32 5, !dbg !1185
  call void @llvm.dbg.value(metadata i64* %6, metadata !1179, metadata !DIExpression()), !dbg !1181
  %7 = getelementptr inbounds [40 x i64], [40 x i64]* %3, i32 0, i32 10, !dbg !1186
  call void @llvm.dbg.value(metadata i64* %7, metadata !1180, metadata !DIExpression()), !dbg !1181
  call fastcc void @Hacl_Impl_BignumQ_Mul_make_m(i64* noundef nonnull %5), !dbg !1187
  call fastcc void @Hacl_Impl_BignumQ_Mul_make_mu(i64* noundef nonnull %6), !dbg !1188
  call fastcc void @Hacl_Impl_BignumQ_Mul_barrett_reduction__(i64* noundef %0, i64* noundef %1, i64* noundef nonnull %5, i64* noundef nonnull %6, i64* noundef nonnull %7), !dbg !1189
  call void @llvm.lifetime.end.p0i8(i64 320, i8* nonnull %4) #14, !dbg !1190
  ret void, !dbg !1190
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind uwtable willreturn writeonly
define internal fastcc void @Hacl_Impl_BignumQ_Mul_make_m(i64* nocapture noundef writeonly %0) unnamed_addr #6 !dbg !1191 {
  call void @llvm.dbg.value(metadata i64* %0, metadata !1193, metadata !DIExpression()), !dbg !1194
  call fastcc void @Hacl_Lib_Create64_make_h64_5(i64* noundef %0, i64 noundef 5175514460705773, i64 noundef 70332060721272408, i64 noundef 5342, i64 noundef 0, i64 noundef 268435456), !dbg !1195
  ret void, !dbg !1196
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind uwtable willreturn writeonly
define internal fastcc void @Hacl_Impl_BignumQ_Mul_make_mu(i64* nocapture noundef writeonly %0) unnamed_addr #6 !dbg !1197 {
  call void @llvm.dbg.value(metadata i64* %0, metadata !1199, metadata !DIExpression()), !dbg !1200
  call fastcc void @Hacl_Lib_Create64_make_h64_5(i64* noundef %0, i64 noundef 44162584779952923, i64 noundef 9390964836247533, i64 noundef 72057594036560134, i64 noundef 72057594037927935, i64 noundef 68719476735), !dbg !1201
  ret void, !dbg !1202
}

; Function Attrs: noinline nounwind uwtable
define internal fastcc void @Hacl_Impl_BignumQ_Mul_barrett_reduction__(i64* nocapture noundef %0, i64* nocapture noundef readonly %1, i64* nocapture noundef readonly %2, i64* nocapture noundef readonly %3, i64* nocapture noundef %4) unnamed_addr #0 !dbg !1203 {
  %6 = alloca [9 x %struct.FStar_UInt128_uint128], align 4
  %7 = alloca %struct.FStar_UInt128_uint128, align 4
  call void @llvm.dbg.value(metadata i64* %0, metadata !1207, metadata !DIExpression()), !dbg !1219
  call void @llvm.dbg.value(metadata i64* %1, metadata !1208, metadata !DIExpression()), !dbg !1219
  call void @llvm.dbg.value(metadata i64* %2, metadata !1209, metadata !DIExpression()), !dbg !1219
  call void @llvm.dbg.value(metadata i64* %3, metadata !1210, metadata !DIExpression()), !dbg !1219
  call void @llvm.dbg.value(metadata i64* %4, metadata !1211, metadata !DIExpression()), !dbg !1219
  call void @llvm.dbg.value(metadata i64* %4, metadata !1212, metadata !DIExpression(DW_OP_plus_uconst, 200, DW_OP_stack_value)), !dbg !1219
  %8 = bitcast [9 x %struct.FStar_UInt128_uint128]* %6 to i8*, !dbg !1220
  call void @llvm.lifetime.start.p0i8(i64 144, i8* nonnull %8) #14, !dbg !1220
  call void @llvm.dbg.declare(metadata [9 x %struct.FStar_UInt128_uint128]* %6, metadata !1213, metadata !DIExpression()), !dbg !1221
  call void @llvm.dbg.value(metadata i32 0, metadata !1217, metadata !DIExpression()), !dbg !1222
  %9 = bitcast %struct.FStar_UInt128_uint128* %7 to i8*
  call void @llvm.dbg.value(metadata i32 0, metadata !1217, metadata !DIExpression()), !dbg !1222
  br label %13, !dbg !1223

10:                                               ; preds = %13
  %11 = getelementptr inbounds i64, i64* %4, i32 25, !dbg !1224
  call void @llvm.dbg.value(metadata i64* %11, metadata !1212, metadata !DIExpression()), !dbg !1219
  %12 = getelementptr inbounds [9 x %struct.FStar_UInt128_uint128], [9 x %struct.FStar_UInt128_uint128]* %6, i32 0, i32 0, !dbg !1225
  call fastcc void @Hacl_Impl_BignumQ_Mul_barrett_reduction__1(%struct.FStar_UInt128_uint128* noundef nonnull %12, i64* noundef %1, i64* noundef %3, i64* noundef %4), !dbg !1226
  call fastcc void @Hacl_Impl_BignumQ_Mul_barrett_reduction__2(i64* noundef %1, i64* noundef %2, i64* noundef %4), !dbg !1227
  call fastcc void @Hacl_Impl_BignumQ_Mul_subm_conditional(i64* noundef %0, i64* noundef nonnull %11), !dbg !1228
  call void @llvm.lifetime.end.p0i8(i64 144, i8* nonnull %8) #14, !dbg !1229
  ret void, !dbg !1229

13:                                               ; preds = %5, %13
  %14 = phi i32 [ 0, %5 ], [ %17, %13 ]
  call void @llvm.dbg.value(metadata i32 %14, metadata !1217, metadata !DIExpression()), !dbg !1222
  %15 = getelementptr inbounds [9 x %struct.FStar_UInt128_uint128], [9 x %struct.FStar_UInt128_uint128]* %6, i32 0, i32 %14, !dbg !1230
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %9) #14, !dbg !1232
  call void @FStar_UInt128_uint64_to_uint128(%struct.FStar_UInt128_uint128* nonnull sret(%struct.FStar_UInt128_uint128) align 4 %7, i64 noundef 0) #14, !dbg !1232
  %16 = bitcast %struct.FStar_UInt128_uint128* %15 to i8*, !dbg !1232
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* noundef nonnull align 4 dereferenceable(16) %16, i8* noundef nonnull align 4 dereferenceable(16) %9, i32 16, i1 false), !dbg !1232, !tbaa.struct !1233
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %9) #14, !dbg !1232
  %17 = add nuw nsw i32 %14, 1, !dbg !1234
  call void @llvm.dbg.value(metadata i32 %17, metadata !1217, metadata !DIExpression()), !dbg !1222
  %18 = icmp eq i32 %17, 9, !dbg !1235
  br i1 %18, label %10, label %13, !dbg !1223, !llvm.loop !1236
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind uwtable willreturn writeonly
define internal fastcc void @Hacl_Lib_Create64_make_h64_5(i64* nocapture noundef writeonly %0, i64 noundef %1, i64 noundef %2, i64 noundef %3, i64 noundef %4, i64 noundef %5) unnamed_addr #6 !dbg !1238 {
  call void @llvm.dbg.value(metadata i64* %0, metadata !1242, metadata !DIExpression()), !dbg !1248
  call void @llvm.dbg.value(metadata i64 %1, metadata !1243, metadata !DIExpression()), !dbg !1248
  call void @llvm.dbg.value(metadata i64 %2, metadata !1244, metadata !DIExpression()), !dbg !1248
  call void @llvm.dbg.value(metadata i64 %3, metadata !1245, metadata !DIExpression()), !dbg !1248
  call void @llvm.dbg.value(metadata i64 %4, metadata !1246, metadata !DIExpression()), !dbg !1248
  call void @llvm.dbg.value(metadata i64 %5, metadata !1247, metadata !DIExpression()), !dbg !1248
  store i64 %1, i64* %0, align 4, !dbg !1249, !tbaa !181
  %7 = getelementptr inbounds i64, i64* %0, i32 1, !dbg !1250
  store i64 %2, i64* %7, align 4, !dbg !1251, !tbaa !181
  %8 = getelementptr inbounds i64, i64* %0, i32 2, !dbg !1252
  store i64 %3, i64* %8, align 4, !dbg !1253, !tbaa !181
  %9 = getelementptr inbounds i64, i64* %0, i32 3, !dbg !1254
  store i64 %4, i64* %9, align 4, !dbg !1255, !tbaa !181
  %10 = getelementptr inbounds i64, i64* %0, i32 4, !dbg !1256
  store i64 %5, i64* %10, align 4, !dbg !1257, !tbaa !181
  ret void, !dbg !1258
}

; Function Attrs: noinline nounwind uwtable
define internal fastcc void @Hacl_Impl_BignumQ_Mul_barrett_reduction__1(%struct.FStar_UInt128_uint128* nocapture noundef %0, i64* nocapture noundef readonly %1, i64* nocapture noundef readonly %2, i64* nocapture noundef %3) unnamed_addr #0 !dbg !1259 {
  call void @llvm.dbg.value(metadata %struct.FStar_UInt128_uint128* %0, metadata !1264, metadata !DIExpression()), !dbg !1271
  call void @llvm.dbg.value(metadata i64* %1, metadata !1265, metadata !DIExpression()), !dbg !1271
  call void @llvm.dbg.value(metadata i64* %2, metadata !1266, metadata !DIExpression()), !dbg !1271
  call void @llvm.dbg.value(metadata i64* %3, metadata !1267, metadata !DIExpression()), !dbg !1271
  call void @llvm.dbg.value(metadata i64* %3, metadata !1268, metadata !DIExpression()), !dbg !1271
  %5 = getelementptr inbounds i64, i64* %3, i32 10, !dbg !1272
  call void @llvm.dbg.value(metadata i64* %5, metadata !1269, metadata !DIExpression()), !dbg !1271
  %6 = getelementptr inbounds i64, i64* %3, i32 20, !dbg !1273
  call void @llvm.dbg.value(metadata i64* %6, metadata !1270, metadata !DIExpression()), !dbg !1271
  call fastcc void @Hacl_Impl_BignumQ_Mul_div_248(i64* noundef %3, i64* noundef %1), !dbg !1274
  call fastcc void @Hacl_Impl_BignumQ_Mul_mul_5(%struct.FStar_UInt128_uint128* noundef %0, i64* noundef %3, i64* noundef %2), !dbg !1275
  call fastcc void @Hacl_Impl_BignumQ_Mul_carry(i64* noundef nonnull %5, %struct.FStar_UInt128_uint128* noundef %0), !dbg !1276
  call fastcc void @Hacl_Impl_BignumQ_Mul_div_264(i64* noundef nonnull %6, i64* noundef nonnull %5), !dbg !1277
  ret void, !dbg !1278
}

; Function Attrs: noinline nounwind uwtable
define internal fastcc void @Hacl_Impl_BignumQ_Mul_barrett_reduction__2(i64* nocapture noundef readonly %0, i64* nocapture noundef readonly %1, i64* nocapture noundef %2) unnamed_addr #0 !dbg !1279 {
  call void @llvm.dbg.value(metadata i64* %0, metadata !1283, metadata !DIExpression()), !dbg !1290
  call void @llvm.dbg.value(metadata i64* %1, metadata !1284, metadata !DIExpression()), !dbg !1290
  call void @llvm.dbg.value(metadata i64* %2, metadata !1285, metadata !DIExpression()), !dbg !1290
  call void @llvm.dbg.value(metadata i64* %2, metadata !1286, metadata !DIExpression()), !dbg !1290
  %4 = getelementptr inbounds i64, i64* %2, i32 5, !dbg !1291
  call void @llvm.dbg.value(metadata i64* %4, metadata !1287, metadata !DIExpression()), !dbg !1290
  %5 = getelementptr inbounds i64, i64* %2, i32 20, !dbg !1292
  call void @llvm.dbg.value(metadata i64* %5, metadata !1288, metadata !DIExpression()), !dbg !1290
  %6 = getelementptr inbounds i64, i64* %2, i32 25, !dbg !1293
  call void @llvm.dbg.value(metadata i64* %6, metadata !1289, metadata !DIExpression()), !dbg !1290
  call fastcc void @Hacl_Impl_BignumQ_Mul_mod_264(i64* noundef nonnull %4, i64* noundef %0), !dbg !1294
  call fastcc void @Hacl_Impl_BignumQ_Mul_low_mul_5(i64* noundef %2, i64* noundef nonnull %5, i64* noundef %1), !dbg !1295
  call fastcc void @Hacl_Impl_BignumQ_Mul_sub_mod_264(i64* noundef nonnull %6, i64* noundef nonnull %4, i64* noundef %2), !dbg !1296
  ret void, !dbg !1297
}

; Function Attrs: mustprogress nofree noinline nosync nounwind uwtable willreturn
define internal fastcc void @Hacl_Impl_BignumQ_Mul_subm_conditional(i64* nocapture noundef %0, i64* nocapture noundef readonly %1) unnamed_addr #5 !dbg !1298 {
  %3 = alloca [5 x i64], align 8
  call void @llvm.dbg.value(metadata i64* %0, metadata !1300, metadata !DIExpression()), !dbg !1330
  call void @llvm.dbg.value(metadata i64* %1, metadata !1301, metadata !DIExpression()), !dbg !1330
  %4 = bitcast [5 x i64]* %3 to i8*, !dbg !1331
  call void @llvm.lifetime.start.p0i8(i64 40, i8* nonnull %4) #14, !dbg !1331
  call void @llvm.dbg.declare(metadata [5 x i64]* %3, metadata !1302, metadata !DIExpression()), !dbg !1332
  call void @llvm.memset.p0i8.i32(i8* noundef nonnull align 8 dereferenceable(40) %4, i8 0, i32 40, i1 false), !dbg !1332
  %5 = load i64, i64* %1, align 4, !dbg !1333, !tbaa !181
  call void @llvm.dbg.value(metadata i64 %5, metadata !1306, metadata !DIExpression()), !dbg !1330
  %6 = getelementptr inbounds i64, i64* %1, i32 1, !dbg !1334
  %7 = load i64, i64* %6, align 4, !dbg !1334, !tbaa !181
  call void @llvm.dbg.value(metadata i64 %7, metadata !1307, metadata !DIExpression()), !dbg !1330
  %8 = getelementptr inbounds i64, i64* %1, i32 2, !dbg !1335
  %9 = load i64, i64* %8, align 4, !dbg !1335, !tbaa !181
  call void @llvm.dbg.value(metadata i64 %9, metadata !1308, metadata !DIExpression()), !dbg !1330
  %10 = getelementptr inbounds i64, i64* %1, i32 3, !dbg !1336
  %11 = load i64, i64* %10, align 4, !dbg !1336, !tbaa !181
  call void @llvm.dbg.value(metadata i64 %11, metadata !1309, metadata !DIExpression()), !dbg !1330
  %12 = getelementptr inbounds i64, i64* %1, i32 4, !dbg !1337
  %13 = load i64, i64* %12, align 4, !dbg !1337, !tbaa !181
  call void @llvm.dbg.value(metadata i64 %13, metadata !1310, metadata !DIExpression()), !dbg !1330
  %14 = getelementptr inbounds [5 x i64], [5 x i64]* %3, i32 0, i32 0, !dbg !1338
  call fastcc void @Hacl_Lib_Create64_make_h64_5(i64* noundef nonnull %14, i64 noundef %5, i64 noundef %7, i64 noundef %9, i64 noundef %11, i64 noundef %13), !dbg !1339
  call void @llvm.dbg.value(metadata i64 5175514460705773, metadata !1311, metadata !DIExpression()), !dbg !1330
  call void @llvm.dbg.value(metadata i64 70332060721272408, metadata !1312, metadata !DIExpression()), !dbg !1330
  call void @llvm.dbg.value(metadata i64 5342, metadata !1313, metadata !DIExpression()), !dbg !1330
  call void @llvm.dbg.value(metadata i64 0, metadata !1314, metadata !DIExpression()), !dbg !1330
  call void @llvm.dbg.value(metadata i64 268435456, metadata !1315, metadata !DIExpression()), !dbg !1330
  %15 = call fastcc i64 @Hacl_Impl_BignumQ_Mul_lt(i64 noundef %5, i64 noundef 5175514460705773), !dbg !1340, !range !1341
  call void @llvm.dbg.value(metadata i64 %15, metadata !1316, metadata !DIExpression()), !dbg !1330
  %16 = call fastcc i64 @Hacl_Impl_BignumQ_Mul_shiftl_56(i64 noundef %15), !dbg !1342
  %17 = add i64 %5, -5175514460705773, !dbg !1343
  %18 = add i64 %17, %16, !dbg !1344
  call void @llvm.dbg.value(metadata i64 %18, metadata !1317, metadata !DIExpression()), !dbg !1330
  %19 = or i64 %15, 70332060721272408, !dbg !1345
  call void @llvm.dbg.value(metadata i64 %19, metadata !1318, metadata !DIExpression()), !dbg !1330
  %20 = call fastcc i64 @Hacl_Impl_BignumQ_Mul_lt(i64 noundef %7, i64 noundef %19), !dbg !1346, !range !1341
  call void @llvm.dbg.value(metadata i64 %20, metadata !1319, metadata !DIExpression()), !dbg !1330
  %21 = call fastcc i64 @Hacl_Impl_BignumQ_Mul_shiftl_56(i64 noundef %20), !dbg !1347
  %22 = sub i64 %7, %19, !dbg !1348
  %23 = add i64 %22, %21, !dbg !1349
  call void @llvm.dbg.value(metadata i64 %23, metadata !1320, metadata !DIExpression()), !dbg !1330
  %24 = or i64 %20, 5342, !dbg !1350
  call void @llvm.dbg.value(metadata i64 %24, metadata !1321, metadata !DIExpression()), !dbg !1330
  %25 = call fastcc i64 @Hacl_Impl_BignumQ_Mul_lt(i64 noundef %9, i64 noundef %24), !dbg !1351, !range !1341
  call void @llvm.dbg.value(metadata i64 %25, metadata !1322, metadata !DIExpression()), !dbg !1330
  %26 = call fastcc i64 @Hacl_Impl_BignumQ_Mul_shiftl_56(i64 noundef %25), !dbg !1352
  %27 = sub i64 %9, %24, !dbg !1353
  %28 = add i64 %27, %26, !dbg !1354
  call void @llvm.dbg.value(metadata i64 %28, metadata !1323, metadata !DIExpression()), !dbg !1330
  call void @llvm.dbg.value(metadata i64 %25, metadata !1324, metadata !DIExpression()), !dbg !1330
  %29 = call fastcc i64 @Hacl_Impl_BignumQ_Mul_lt(i64 noundef %11, i64 noundef %25), !dbg !1355, !range !1341
  call void @llvm.dbg.value(metadata i64 %29, metadata !1325, metadata !DIExpression()), !dbg !1330
  %30 = call fastcc i64 @Hacl_Impl_BignumQ_Mul_shiftl_56(i64 noundef %29), !dbg !1356
  %31 = sub i64 %11, %25, !dbg !1357
  %32 = add i64 %31, %30, !dbg !1358
  call void @llvm.dbg.value(metadata i64 %32, metadata !1326, metadata !DIExpression()), !dbg !1330
  %33 = or i64 %29, 268435456, !dbg !1359
  call void @llvm.dbg.value(metadata i64 %33, metadata !1327, metadata !DIExpression()), !dbg !1330
  %34 = call fastcc i64 @Hacl_Impl_BignumQ_Mul_lt(i64 noundef %13, i64 noundef %33), !dbg !1360, !range !1341
  call void @llvm.dbg.value(metadata i64 %34, metadata !1328, metadata !DIExpression()), !dbg !1330
  %35 = call fastcc i64 @Hacl_Impl_BignumQ_Mul_shiftl_56(i64 noundef %34), !dbg !1361
  %36 = sub i64 %13, %33, !dbg !1362
  %37 = add i64 %36, %35, !dbg !1363
  call void @llvm.dbg.value(metadata i64 %37, metadata !1329, metadata !DIExpression()), !dbg !1330
  call fastcc void @Hacl_Lib_Create64_make_h64_5(i64* noundef %0, i64 noundef %18, i64 noundef %23, i64 noundef %28, i64 noundef %32, i64 noundef %37), !dbg !1364
  call fastcc void @Hacl_Impl_BignumQ_Mul_choose(i64* noundef %0, i64* noundef nonnull %14, i64* noundef %0, i64 noundef %34), !dbg !1365
  call void @llvm.lifetime.end.p0i8(i64 40, i8* nonnull %4) #14, !dbg !1366
  ret void, !dbg !1366
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind uwtable willreturn
define internal fastcc void @Hacl_Impl_BignumQ_Mul_div_248(i64* nocapture noundef writeonly %0, i64* nocapture noundef readonly %1) unnamed_addr #4 !dbg !1367 {
  call void @llvm.dbg.value(metadata i64* %0, metadata !1369, metadata !DIExpression()), !dbg !1382
  call void @llvm.dbg.value(metadata i64* %1, metadata !1370, metadata !DIExpression()), !dbg !1382
  %3 = getelementptr inbounds i64, i64* %1, i32 4, !dbg !1383
  %4 = load i64, i64* %3, align 4, !dbg !1383, !tbaa !181
  call void @llvm.dbg.value(metadata i64 %4, metadata !1371, metadata !DIExpression()), !dbg !1382
  %5 = getelementptr inbounds i64, i64* %1, i32 5, !dbg !1384
  %6 = load i64, i64* %5, align 4, !dbg !1384, !tbaa !181
  call void @llvm.dbg.value(metadata i64 %6, metadata !1372, metadata !DIExpression()), !dbg !1382
  %7 = getelementptr inbounds i64, i64* %1, i32 6, !dbg !1385
  %8 = load i64, i64* %7, align 4, !dbg !1385, !tbaa !181
  call void @llvm.dbg.value(metadata i64 %8, metadata !1373, metadata !DIExpression()), !dbg !1382
  %9 = getelementptr inbounds i64, i64* %1, i32 7, !dbg !1386
  %10 = load i64, i64* %9, align 4, !dbg !1386, !tbaa !181
  call void @llvm.dbg.value(metadata i64 %10, metadata !1374, metadata !DIExpression()), !dbg !1382
  %11 = getelementptr inbounds i64, i64* %1, i32 8, !dbg !1387
  %12 = load i64, i64* %11, align 4, !dbg !1387, !tbaa !181
  call void @llvm.dbg.value(metadata i64 %12, metadata !1375, metadata !DIExpression()), !dbg !1382
  %13 = getelementptr inbounds i64, i64* %1, i32 9, !dbg !1388
  %14 = load i64, i64* %13, align 4, !dbg !1388, !tbaa !181
  call void @llvm.dbg.value(metadata i64 %14, metadata !1376, metadata !DIExpression()), !dbg !1382
  %15 = shl i64 %6, 32, !dbg !1389
  %16 = and i64 %15, 72057589742960640, !dbg !1389
  %17 = lshr i64 %4, 24, !dbg !1390
  %18 = or i64 %16, %17, !dbg !1391
  call void @llvm.dbg.value(metadata i64 %18, metadata !1377, metadata !DIExpression()), !dbg !1382
  %19 = shl i64 %8, 32, !dbg !1392
  %20 = and i64 %19, 72057589742960640, !dbg !1392
  %21 = lshr i64 %6, 24, !dbg !1393
  %22 = or i64 %20, %21, !dbg !1394
  call void @llvm.dbg.value(metadata i64 %22, metadata !1378, metadata !DIExpression()), !dbg !1382
  %23 = shl i64 %10, 32, !dbg !1395
  %24 = and i64 %23, 72057589742960640, !dbg !1395
  %25 = lshr i64 %8, 24, !dbg !1396
  %26 = or i64 %24, %25, !dbg !1397
  call void @llvm.dbg.value(metadata i64 %26, metadata !1379, metadata !DIExpression()), !dbg !1382
  %27 = shl i64 %12, 32, !dbg !1398
  %28 = and i64 %27, 72057589742960640, !dbg !1398
  %29 = lshr i64 %10, 24, !dbg !1399
  %30 = or i64 %28, %29, !dbg !1400
  call void @llvm.dbg.value(metadata i64 %30, metadata !1380, metadata !DIExpression()), !dbg !1382
  %31 = shl i64 %14, 32, !dbg !1401
  %32 = and i64 %31, 72057589742960640, !dbg !1401
  %33 = lshr i64 %12, 24, !dbg !1402
  %34 = or i64 %32, %33, !dbg !1403
  call void @llvm.dbg.value(metadata i64 %34, metadata !1381, metadata !DIExpression()), !dbg !1382
  call fastcc void @Hacl_Lib_Create64_make_h64_5(i64* noundef %0, i64 noundef %18, i64 noundef %22, i64 noundef %26, i64 noundef %30, i64 noundef %34), !dbg !1404
  ret void, !dbg !1405
}

; Function Attrs: noinline nounwind uwtable
define internal fastcc void @Hacl_Impl_BignumQ_Mul_mul_5(%struct.FStar_UInt128_uint128* nocapture noundef writeonly %0, i64* nocapture noundef readonly %1, i64* nocapture noundef readonly %2) unnamed_addr #0 !dbg !1406 {
  %4 = alloca %struct.FStar_UInt128_uint128, align 8
  %5 = alloca %struct.FStar_UInt128_uint128, align 8
  %6 = alloca %struct.FStar_UInt128_uint128, align 8
  %7 = alloca %struct.FStar_UInt128_uint128, align 8
  %8 = alloca %struct.FStar_UInt128_uint128, align 8
  %9 = alloca %struct.FStar_UInt128_uint128, align 8
  %10 = alloca %struct.FStar_UInt128_uint128, align 8
  %11 = alloca %struct.FStar_UInt128_uint128, align 8
  %12 = alloca %struct.FStar_UInt128_uint128, align 8
  %13 = alloca %struct.FStar_UInt128_uint128, align 8
  %14 = alloca %struct.FStar_UInt128_uint128, align 8
  %15 = alloca %struct.FStar_UInt128_uint128, align 8
  %16 = alloca %struct.FStar_UInt128_uint128, align 8
  %17 = alloca %struct.FStar_UInt128_uint128, align 8
  %18 = alloca %struct.FStar_UInt128_uint128, align 8
  %19 = alloca %struct.FStar_UInt128_uint128, align 8
  %20 = alloca %struct.FStar_UInt128_uint128, align 8
  %21 = alloca %struct.FStar_UInt128_uint128, align 8
  %22 = alloca %struct.FStar_UInt128_uint128, align 8
  %23 = alloca %struct.FStar_UInt128_uint128, align 8
  %24 = alloca %struct.FStar_UInt128_uint128, align 8
  %25 = alloca %struct.FStar_UInt128_uint128, align 8
  %26 = alloca %struct.FStar_UInt128_uint128, align 8
  %27 = alloca %struct.FStar_UInt128_uint128, align 8
  %28 = alloca %struct.FStar_UInt128_uint128, align 8
  %29 = alloca %struct.FStar_UInt128_uint128, align 8
  %30 = alloca %struct.FStar_UInt128_uint128, align 8
  %31 = alloca %struct.FStar_UInt128_uint128, align 8
  %32 = alloca %struct.FStar_UInt128_uint128, align 8
  %33 = alloca %struct.FStar_UInt128_uint128, align 8
  %34 = alloca %struct.FStar_UInt128_uint128, align 8
  %35 = alloca %struct.FStar_UInt128_uint128, align 8
  %36 = alloca %struct.FStar_UInt128_uint128, align 8
  %37 = alloca %struct.FStar_UInt128_uint128, align 8
  %38 = alloca %struct.FStar_UInt128_uint128, align 8
  %39 = alloca %struct.FStar_UInt128_uint128, align 8
  %40 = alloca %struct.FStar_UInt128_uint128, align 8
  %41 = alloca %struct.FStar_UInt128_uint128, align 8
  %42 = alloca %struct.FStar_UInt128_uint128, align 8
  %43 = alloca %struct.FStar_UInt128_uint128, align 8
  %44 = alloca %struct.FStar_UInt128_uint128, align 8
  call void @llvm.dbg.value(metadata %struct.FStar_UInt128_uint128* %0, metadata !1410, metadata !DIExpression()), !dbg !1457
  call void @llvm.dbg.value(metadata i64* %1, metadata !1411, metadata !DIExpression()), !dbg !1457
  call void @llvm.dbg.value(metadata i64* %2, metadata !1412, metadata !DIExpression()), !dbg !1457
  %45 = load i64, i64* %1, align 4, !dbg !1458, !tbaa !181
  call void @llvm.dbg.value(metadata i64 %45, metadata !1413, metadata !DIExpression()), !dbg !1457
  %46 = getelementptr inbounds i64, i64* %1, i32 1, !dbg !1459
  %47 = load i64, i64* %46, align 4, !dbg !1459, !tbaa !181
  call void @llvm.dbg.value(metadata i64 %47, metadata !1414, metadata !DIExpression()), !dbg !1457
  %48 = getelementptr inbounds i64, i64* %1, i32 2, !dbg !1460
  %49 = load i64, i64* %48, align 4, !dbg !1460, !tbaa !181
  call void @llvm.dbg.value(metadata i64 %49, metadata !1415, metadata !DIExpression()), !dbg !1457
  %50 = getelementptr inbounds i64, i64* %1, i32 3, !dbg !1461
  %51 = load i64, i64* %50, align 4, !dbg !1461, !tbaa !181
  call void @llvm.dbg.value(metadata i64 %51, metadata !1416, metadata !DIExpression()), !dbg !1457
  %52 = getelementptr inbounds i64, i64* %1, i32 4, !dbg !1462
  %53 = load i64, i64* %52, align 4, !dbg !1462, !tbaa !181
  call void @llvm.dbg.value(metadata i64 %53, metadata !1417, metadata !DIExpression()), !dbg !1457
  %54 = load i64, i64* %2, align 4, !dbg !1463, !tbaa !181
  call void @llvm.dbg.value(metadata i64 %54, metadata !1418, metadata !DIExpression()), !dbg !1457
  %55 = getelementptr inbounds i64, i64* %2, i32 1, !dbg !1464
  %56 = load i64, i64* %55, align 4, !dbg !1464, !tbaa !181
  call void @llvm.dbg.value(metadata i64 %56, metadata !1419, metadata !DIExpression()), !dbg !1457
  %57 = getelementptr inbounds i64, i64* %2, i32 2, !dbg !1465
  %58 = load i64, i64* %57, align 4, !dbg !1465, !tbaa !181
  call void @llvm.dbg.value(metadata i64 %58, metadata !1420, metadata !DIExpression()), !dbg !1457
  %59 = getelementptr inbounds i64, i64* %2, i32 3, !dbg !1466
  %60 = load i64, i64* %59, align 4, !dbg !1466, !tbaa !181
  call void @llvm.dbg.value(metadata i64 %60, metadata !1421, metadata !DIExpression()), !dbg !1457
  %61 = getelementptr inbounds i64, i64* %2, i32 4, !dbg !1467
  %62 = load i64, i64* %61, align 4, !dbg !1467, !tbaa !181
  call void @llvm.dbg.value(metadata i64 %62, metadata !1422, metadata !DIExpression()), !dbg !1457
  %63 = bitcast %struct.FStar_UInt128_uint128* %4 to i8*, !dbg !1468
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %63) #14, !dbg !1468
  call void @llvm.dbg.declare(metadata %struct.FStar_UInt128_uint128* %4, metadata !1423, metadata !DIExpression()), !dbg !1469
  call void @FStar_UInt128_mul_wide(%struct.FStar_UInt128_uint128* nonnull sret(%struct.FStar_UInt128_uint128) align 4 %4, i64 noundef %45, i64 noundef %54) #14, !dbg !1470
  %64 = bitcast %struct.FStar_UInt128_uint128* %5 to i8*, !dbg !1471
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %64) #14, !dbg !1471
  call void @llvm.dbg.declare(metadata %struct.FStar_UInt128_uint128* %5, metadata !1424, metadata !DIExpression()), !dbg !1472
  call void @FStar_UInt128_mul_wide(%struct.FStar_UInt128_uint128* nonnull sret(%struct.FStar_UInt128_uint128) align 4 %5, i64 noundef %45, i64 noundef %56) #14, !dbg !1473
  %65 = bitcast %struct.FStar_UInt128_uint128* %6 to i8*, !dbg !1474
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %65) #14, !dbg !1474
  call void @llvm.dbg.declare(metadata %struct.FStar_UInt128_uint128* %6, metadata !1425, metadata !DIExpression()), !dbg !1475
  call void @FStar_UInt128_mul_wide(%struct.FStar_UInt128_uint128* nonnull sret(%struct.FStar_UInt128_uint128) align 4 %6, i64 noundef %45, i64 noundef %58) #14, !dbg !1476
  %66 = bitcast %struct.FStar_UInt128_uint128* %7 to i8*, !dbg !1477
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %66) #14, !dbg !1477
  call void @llvm.dbg.declare(metadata %struct.FStar_UInt128_uint128* %7, metadata !1426, metadata !DIExpression()), !dbg !1478
  call void @FStar_UInt128_mul_wide(%struct.FStar_UInt128_uint128* nonnull sret(%struct.FStar_UInt128_uint128) align 4 %7, i64 noundef %45, i64 noundef %60) #14, !dbg !1479
  %67 = bitcast %struct.FStar_UInt128_uint128* %8 to i8*, !dbg !1480
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %67) #14, !dbg !1480
  call void @llvm.dbg.declare(metadata %struct.FStar_UInt128_uint128* %8, metadata !1427, metadata !DIExpression()), !dbg !1481
  call void @FStar_UInt128_mul_wide(%struct.FStar_UInt128_uint128* nonnull sret(%struct.FStar_UInt128_uint128) align 4 %8, i64 noundef %45, i64 noundef %62) #14, !dbg !1482
  %68 = bitcast %struct.FStar_UInt128_uint128* %9 to i8*, !dbg !1483
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %68) #14, !dbg !1483
  call void @llvm.dbg.declare(metadata %struct.FStar_UInt128_uint128* %9, metadata !1428, metadata !DIExpression()), !dbg !1484
  call void @FStar_UInt128_mul_wide(%struct.FStar_UInt128_uint128* nonnull sret(%struct.FStar_UInt128_uint128) align 4 %9, i64 noundef %47, i64 noundef %54) #14, !dbg !1485
  %69 = bitcast %struct.FStar_UInt128_uint128* %10 to i8*, !dbg !1486
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %69) #14, !dbg !1486
  call void @llvm.dbg.declare(metadata %struct.FStar_UInt128_uint128* %10, metadata !1429, metadata !DIExpression()), !dbg !1487
  call void @FStar_UInt128_mul_wide(%struct.FStar_UInt128_uint128* nonnull sret(%struct.FStar_UInt128_uint128) align 4 %10, i64 noundef %47, i64 noundef %56) #14, !dbg !1488
  %70 = bitcast %struct.FStar_UInt128_uint128* %11 to i8*, !dbg !1489
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %70) #14, !dbg !1489
  call void @llvm.dbg.declare(metadata %struct.FStar_UInt128_uint128* %11, metadata !1430, metadata !DIExpression()), !dbg !1490
  call void @FStar_UInt128_mul_wide(%struct.FStar_UInt128_uint128* nonnull sret(%struct.FStar_UInt128_uint128) align 4 %11, i64 noundef %47, i64 noundef %58) #14, !dbg !1491
  %71 = bitcast %struct.FStar_UInt128_uint128* %12 to i8*, !dbg !1492
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %71) #14, !dbg !1492
  call void @llvm.dbg.declare(metadata %struct.FStar_UInt128_uint128* %12, metadata !1431, metadata !DIExpression()), !dbg !1493
  call void @FStar_UInt128_mul_wide(%struct.FStar_UInt128_uint128* nonnull sret(%struct.FStar_UInt128_uint128) align 4 %12, i64 noundef %47, i64 noundef %60) #14, !dbg !1494
  %72 = bitcast %struct.FStar_UInt128_uint128* %13 to i8*, !dbg !1495
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %72) #14, !dbg !1495
  call void @llvm.dbg.declare(metadata %struct.FStar_UInt128_uint128* %13, metadata !1432, metadata !DIExpression()), !dbg !1496
  call void @FStar_UInt128_mul_wide(%struct.FStar_UInt128_uint128* nonnull sret(%struct.FStar_UInt128_uint128) align 4 %13, i64 noundef %47, i64 noundef %62) #14, !dbg !1497
  %73 = bitcast %struct.FStar_UInt128_uint128* %14 to i8*, !dbg !1498
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %73) #14, !dbg !1498
  call void @llvm.dbg.declare(metadata %struct.FStar_UInt128_uint128* %14, metadata !1433, metadata !DIExpression()), !dbg !1499
  call void @FStar_UInt128_mul_wide(%struct.FStar_UInt128_uint128* nonnull sret(%struct.FStar_UInt128_uint128) align 4 %14, i64 noundef %49, i64 noundef %54) #14, !dbg !1500
  %74 = bitcast %struct.FStar_UInt128_uint128* %15 to i8*, !dbg !1501
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %74) #14, !dbg !1501
  call void @llvm.dbg.declare(metadata %struct.FStar_UInt128_uint128* %15, metadata !1434, metadata !DIExpression()), !dbg !1502
  call void @FStar_UInt128_mul_wide(%struct.FStar_UInt128_uint128* nonnull sret(%struct.FStar_UInt128_uint128) align 4 %15, i64 noundef %49, i64 noundef %56) #14, !dbg !1503
  %75 = bitcast %struct.FStar_UInt128_uint128* %16 to i8*, !dbg !1504
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %75) #14, !dbg !1504
  call void @llvm.dbg.declare(metadata %struct.FStar_UInt128_uint128* %16, metadata !1435, metadata !DIExpression()), !dbg !1505
  call void @FStar_UInt128_mul_wide(%struct.FStar_UInt128_uint128* nonnull sret(%struct.FStar_UInt128_uint128) align 4 %16, i64 noundef %49, i64 noundef %58) #14, !dbg !1506
  %76 = bitcast %struct.FStar_UInt128_uint128* %17 to i8*, !dbg !1507
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %76) #14, !dbg !1507
  call void @llvm.dbg.declare(metadata %struct.FStar_UInt128_uint128* %17, metadata !1436, metadata !DIExpression()), !dbg !1508
  call void @FStar_UInt128_mul_wide(%struct.FStar_UInt128_uint128* nonnull sret(%struct.FStar_UInt128_uint128) align 4 %17, i64 noundef %49, i64 noundef %60) #14, !dbg !1509
  %77 = bitcast %struct.FStar_UInt128_uint128* %18 to i8*, !dbg !1510
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %77) #14, !dbg !1510
  call void @llvm.dbg.declare(metadata %struct.FStar_UInt128_uint128* %18, metadata !1437, metadata !DIExpression()), !dbg !1511
  call void @FStar_UInt128_mul_wide(%struct.FStar_UInt128_uint128* nonnull sret(%struct.FStar_UInt128_uint128) align 4 %18, i64 noundef %49, i64 noundef %62) #14, !dbg !1512
  %78 = bitcast %struct.FStar_UInt128_uint128* %19 to i8*, !dbg !1513
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %78) #14, !dbg !1513
  call void @llvm.dbg.declare(metadata %struct.FStar_UInt128_uint128* %19, metadata !1438, metadata !DIExpression()), !dbg !1514
  call void @FStar_UInt128_mul_wide(%struct.FStar_UInt128_uint128* nonnull sret(%struct.FStar_UInt128_uint128) align 4 %19, i64 noundef %51, i64 noundef %54) #14, !dbg !1515
  %79 = bitcast %struct.FStar_UInt128_uint128* %20 to i8*, !dbg !1516
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %79) #14, !dbg !1516
  call void @llvm.dbg.declare(metadata %struct.FStar_UInt128_uint128* %20, metadata !1439, metadata !DIExpression()), !dbg !1517
  call void @FStar_UInt128_mul_wide(%struct.FStar_UInt128_uint128* nonnull sret(%struct.FStar_UInt128_uint128) align 4 %20, i64 noundef %51, i64 noundef %56) #14, !dbg !1518
  %80 = bitcast %struct.FStar_UInt128_uint128* %21 to i8*, !dbg !1519
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %80) #14, !dbg !1519
  call void @llvm.dbg.declare(metadata %struct.FStar_UInt128_uint128* %21, metadata !1440, metadata !DIExpression()), !dbg !1520
  call void @FStar_UInt128_mul_wide(%struct.FStar_UInt128_uint128* nonnull sret(%struct.FStar_UInt128_uint128) align 4 %21, i64 noundef %51, i64 noundef %58) #14, !dbg !1521
  %81 = bitcast %struct.FStar_UInt128_uint128* %22 to i8*, !dbg !1522
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %81) #14, !dbg !1522
  call void @llvm.dbg.declare(metadata %struct.FStar_UInt128_uint128* %22, metadata !1441, metadata !DIExpression()), !dbg !1523
  call void @FStar_UInt128_mul_wide(%struct.FStar_UInt128_uint128* nonnull sret(%struct.FStar_UInt128_uint128) align 4 %22, i64 noundef %51, i64 noundef %60) #14, !dbg !1524
  %82 = bitcast %struct.FStar_UInt128_uint128* %23 to i8*, !dbg !1525
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %82) #14, !dbg !1525
  call void @llvm.dbg.declare(metadata %struct.FStar_UInt128_uint128* %23, metadata !1442, metadata !DIExpression()), !dbg !1526
  call void @FStar_UInt128_mul_wide(%struct.FStar_UInt128_uint128* nonnull sret(%struct.FStar_UInt128_uint128) align 4 %23, i64 noundef %51, i64 noundef %62) #14, !dbg !1527
  %83 = bitcast %struct.FStar_UInt128_uint128* %24 to i8*, !dbg !1528
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %83) #14, !dbg !1528
  call void @llvm.dbg.declare(metadata %struct.FStar_UInt128_uint128* %24, metadata !1443, metadata !DIExpression()), !dbg !1529
  call void @FStar_UInt128_mul_wide(%struct.FStar_UInt128_uint128* nonnull sret(%struct.FStar_UInt128_uint128) align 4 %24, i64 noundef %53, i64 noundef %54) #14, !dbg !1530
  %84 = bitcast %struct.FStar_UInt128_uint128* %25 to i8*, !dbg !1531
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %84) #14, !dbg !1531
  call void @llvm.dbg.declare(metadata %struct.FStar_UInt128_uint128* %25, metadata !1444, metadata !DIExpression()), !dbg !1532
  call void @FStar_UInt128_mul_wide(%struct.FStar_UInt128_uint128* nonnull sret(%struct.FStar_UInt128_uint128) align 4 %25, i64 noundef %53, i64 noundef %56) #14, !dbg !1533
  %85 = bitcast %struct.FStar_UInt128_uint128* %26 to i8*, !dbg !1534
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %85) #14, !dbg !1534
  call void @llvm.dbg.declare(metadata %struct.FStar_UInt128_uint128* %26, metadata !1445, metadata !DIExpression()), !dbg !1535
  call void @FStar_UInt128_mul_wide(%struct.FStar_UInt128_uint128* nonnull sret(%struct.FStar_UInt128_uint128) align 4 %26, i64 noundef %53, i64 noundef %58) #14, !dbg !1536
  %86 = bitcast %struct.FStar_UInt128_uint128* %27 to i8*, !dbg !1537
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %86) #14, !dbg !1537
  call void @llvm.dbg.declare(metadata %struct.FStar_UInt128_uint128* %27, metadata !1446, metadata !DIExpression()), !dbg !1538
  call void @FStar_UInt128_mul_wide(%struct.FStar_UInt128_uint128* nonnull sret(%struct.FStar_UInt128_uint128) align 4 %27, i64 noundef %53, i64 noundef %60) #14, !dbg !1539
  %87 = bitcast %struct.FStar_UInt128_uint128* %28 to i8*, !dbg !1540
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %87) #14, !dbg !1540
  call void @llvm.dbg.declare(metadata %struct.FStar_UInt128_uint128* %28, metadata !1447, metadata !DIExpression()), !dbg !1541
  call void @FStar_UInt128_mul_wide(%struct.FStar_UInt128_uint128* nonnull sret(%struct.FStar_UInt128_uint128) align 4 %28, i64 noundef %53, i64 noundef %62) #14, !dbg !1542
  %88 = getelementptr inbounds %struct.FStar_UInt128_uint128, %struct.FStar_UInt128_uint128* %4, i32 0, i32 0, !dbg !1543
  %89 = load i64, i64* %88, align 8, !dbg !1543, !tbaa.struct !1233
  call void @llvm.dbg.value(metadata i64 %89, metadata !1448, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 64)), !dbg !1457
  %90 = getelementptr inbounds %struct.FStar_UInt128_uint128, %struct.FStar_UInt128_uint128* %4, i32 0, i32 1, !dbg !1543
  %91 = load i64, i64* %90, align 8, !dbg !1543, !tbaa.struct !1544
  call void @llvm.dbg.value(metadata i64 %91, metadata !1448, metadata !DIExpression(DW_OP_LLVM_fragment, 64, 64)), !dbg !1457
  %92 = bitcast %struct.FStar_UInt128_uint128* %29 to i8*, !dbg !1545
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %92) #14, !dbg !1545
  call void @llvm.dbg.declare(metadata %struct.FStar_UInt128_uint128* %29, metadata !1449, metadata !DIExpression()), !dbg !1546
  %93 = getelementptr inbounds %struct.FStar_UInt128_uint128, %struct.FStar_UInt128_uint128* %5, i32 0, i32 0, !dbg !1547
  %94 = load i64, i64* %93, align 8, !dbg !1547, !tbaa !617
  %95 = getelementptr inbounds %struct.FStar_UInt128_uint128, %struct.FStar_UInt128_uint128* %5, i32 0, i32 1, !dbg !1547
  %96 = load i64, i64* %95, align 8, !dbg !1547, !tbaa !619
  %97 = getelementptr inbounds %struct.FStar_UInt128_uint128, %struct.FStar_UInt128_uint128* %9, i32 0, i32 0, !dbg !1547
  %98 = load i64, i64* %97, align 8, !dbg !1547, !tbaa !617
  %99 = getelementptr inbounds %struct.FStar_UInt128_uint128, %struct.FStar_UInt128_uint128* %9, i32 0, i32 1, !dbg !1547
  %100 = load i64, i64* %99, align 8, !dbg !1547, !tbaa !619
  call void @FStar_UInt128_add(%struct.FStar_UInt128_uint128* nonnull sret(%struct.FStar_UInt128_uint128) align 4 %29, i64 %94, i64 %96, i64 %98, i64 %100) #14, !dbg !1547
  %101 = bitcast %struct.FStar_UInt128_uint128* %30 to i8*, !dbg !1548
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %101) #14, !dbg !1548
  call void @llvm.dbg.declare(metadata %struct.FStar_UInt128_uint128* %30, metadata !1450, metadata !DIExpression()), !dbg !1549
  %102 = getelementptr inbounds %struct.FStar_UInt128_uint128, %struct.FStar_UInt128_uint128* %6, i32 0, i32 0, !dbg !1550
  %103 = load i64, i64* %102, align 8, !dbg !1550, !tbaa !617
  %104 = getelementptr inbounds %struct.FStar_UInt128_uint128, %struct.FStar_UInt128_uint128* %6, i32 0, i32 1, !dbg !1550
  %105 = load i64, i64* %104, align 8, !dbg !1550, !tbaa !619
  %106 = getelementptr inbounds %struct.FStar_UInt128_uint128, %struct.FStar_UInt128_uint128* %10, i32 0, i32 0, !dbg !1550
  %107 = load i64, i64* %106, align 8, !dbg !1550, !tbaa !617
  %108 = getelementptr inbounds %struct.FStar_UInt128_uint128, %struct.FStar_UInt128_uint128* %10, i32 0, i32 1, !dbg !1550
  %109 = load i64, i64* %108, align 8, !dbg !1550, !tbaa !619
  call void @FStar_UInt128_add(%struct.FStar_UInt128_uint128* nonnull sret(%struct.FStar_UInt128_uint128) align 4 %31, i64 %103, i64 %105, i64 %107, i64 %109) #14, !dbg !1550
  %110 = getelementptr inbounds %struct.FStar_UInt128_uint128, %struct.FStar_UInt128_uint128* %31, i32 0, i32 0, !dbg !1551
  %111 = load i64, i64* %110, align 8, !dbg !1551, !tbaa !617
  %112 = getelementptr inbounds %struct.FStar_UInt128_uint128, %struct.FStar_UInt128_uint128* %31, i32 0, i32 1, !dbg !1551
  %113 = load i64, i64* %112, align 8, !dbg !1551, !tbaa !619
  %114 = getelementptr inbounds %struct.FStar_UInt128_uint128, %struct.FStar_UInt128_uint128* %14, i32 0, i32 0, !dbg !1551
  %115 = load i64, i64* %114, align 8, !dbg !1551, !tbaa !617
  %116 = getelementptr inbounds %struct.FStar_UInt128_uint128, %struct.FStar_UInt128_uint128* %14, i32 0, i32 1, !dbg !1551
  %117 = load i64, i64* %116, align 8, !dbg !1551, !tbaa !619
  call void @FStar_UInt128_add(%struct.FStar_UInt128_uint128* nonnull sret(%struct.FStar_UInt128_uint128) align 4 %30, i64 %111, i64 %113, i64 %115, i64 %117) #14, !dbg !1551
  %118 = bitcast %struct.FStar_UInt128_uint128* %32 to i8*, !dbg !1552
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %118) #14, !dbg !1552
  call void @llvm.dbg.declare(metadata %struct.FStar_UInt128_uint128* %32, metadata !1451, metadata !DIExpression()), !dbg !1553
  %119 = getelementptr inbounds %struct.FStar_UInt128_uint128, %struct.FStar_UInt128_uint128* %7, i32 0, i32 0, !dbg !1554
  %120 = load i64, i64* %119, align 8, !dbg !1554, !tbaa !617
  %121 = getelementptr inbounds %struct.FStar_UInt128_uint128, %struct.FStar_UInt128_uint128* %7, i32 0, i32 1, !dbg !1554
  %122 = load i64, i64* %121, align 8, !dbg !1554, !tbaa !619
  %123 = getelementptr inbounds %struct.FStar_UInt128_uint128, %struct.FStar_UInt128_uint128* %11, i32 0, i32 0, !dbg !1554
  %124 = load i64, i64* %123, align 8, !dbg !1554, !tbaa !617
  %125 = getelementptr inbounds %struct.FStar_UInt128_uint128, %struct.FStar_UInt128_uint128* %11, i32 0, i32 1, !dbg !1554
  %126 = load i64, i64* %125, align 8, !dbg !1554, !tbaa !619
  call void @FStar_UInt128_add(%struct.FStar_UInt128_uint128* nonnull sret(%struct.FStar_UInt128_uint128) align 4 %34, i64 %120, i64 %122, i64 %124, i64 %126) #14, !dbg !1554
  %127 = getelementptr inbounds %struct.FStar_UInt128_uint128, %struct.FStar_UInt128_uint128* %34, i32 0, i32 0, !dbg !1555
  %128 = load i64, i64* %127, align 8, !dbg !1555, !tbaa !617
  %129 = getelementptr inbounds %struct.FStar_UInt128_uint128, %struct.FStar_UInt128_uint128* %34, i32 0, i32 1, !dbg !1555
  %130 = load i64, i64* %129, align 8, !dbg !1555, !tbaa !619
  %131 = getelementptr inbounds %struct.FStar_UInt128_uint128, %struct.FStar_UInt128_uint128* %15, i32 0, i32 0, !dbg !1555
  %132 = load i64, i64* %131, align 8, !dbg !1555, !tbaa !617
  %133 = getelementptr inbounds %struct.FStar_UInt128_uint128, %struct.FStar_UInt128_uint128* %15, i32 0, i32 1, !dbg !1555
  %134 = load i64, i64* %133, align 8, !dbg !1555, !tbaa !619
  call void @FStar_UInt128_add(%struct.FStar_UInt128_uint128* nonnull sret(%struct.FStar_UInt128_uint128) align 4 %33, i64 %128, i64 %130, i64 %132, i64 %134) #14, !dbg !1555
  %135 = getelementptr inbounds %struct.FStar_UInt128_uint128, %struct.FStar_UInt128_uint128* %33, i32 0, i32 0, !dbg !1556
  %136 = load i64, i64* %135, align 8, !dbg !1556, !tbaa !617
  %137 = getelementptr inbounds %struct.FStar_UInt128_uint128, %struct.FStar_UInt128_uint128* %33, i32 0, i32 1, !dbg !1556
  %138 = load i64, i64* %137, align 8, !dbg !1556, !tbaa !619
  %139 = getelementptr inbounds %struct.FStar_UInt128_uint128, %struct.FStar_UInt128_uint128* %19, i32 0, i32 0, !dbg !1556
  %140 = load i64, i64* %139, align 8, !dbg !1556, !tbaa !617
  %141 = getelementptr inbounds %struct.FStar_UInt128_uint128, %struct.FStar_UInt128_uint128* %19, i32 0, i32 1, !dbg !1556
  %142 = load i64, i64* %141, align 8, !dbg !1556, !tbaa !619
  call void @FStar_UInt128_add(%struct.FStar_UInt128_uint128* nonnull sret(%struct.FStar_UInt128_uint128) align 4 %32, i64 %136, i64 %138, i64 %140, i64 %142) #14, !dbg !1556
  %143 = bitcast %struct.FStar_UInt128_uint128* %35 to i8*, !dbg !1557
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %143) #14, !dbg !1557
  call void @llvm.dbg.declare(metadata %struct.FStar_UInt128_uint128* %35, metadata !1452, metadata !DIExpression()), !dbg !1558
  %144 = getelementptr inbounds %struct.FStar_UInt128_uint128, %struct.FStar_UInt128_uint128* %8, i32 0, i32 0, !dbg !1559
  %145 = load i64, i64* %144, align 8, !dbg !1559, !tbaa !617
  %146 = getelementptr inbounds %struct.FStar_UInt128_uint128, %struct.FStar_UInt128_uint128* %8, i32 0, i32 1, !dbg !1559
  %147 = load i64, i64* %146, align 8, !dbg !1559, !tbaa !619
  %148 = getelementptr inbounds %struct.FStar_UInt128_uint128, %struct.FStar_UInt128_uint128* %12, i32 0, i32 0, !dbg !1559
  %149 = load i64, i64* %148, align 8, !dbg !1559, !tbaa !617
  %150 = getelementptr inbounds %struct.FStar_UInt128_uint128, %struct.FStar_UInt128_uint128* %12, i32 0, i32 1, !dbg !1559
  %151 = load i64, i64* %150, align 8, !dbg !1559, !tbaa !619
  call void @FStar_UInt128_add(%struct.FStar_UInt128_uint128* nonnull sret(%struct.FStar_UInt128_uint128) align 4 %38, i64 %145, i64 %147, i64 %149, i64 %151) #14, !dbg !1559
  %152 = getelementptr inbounds %struct.FStar_UInt128_uint128, %struct.FStar_UInt128_uint128* %38, i32 0, i32 0, !dbg !1560
  %153 = load i64, i64* %152, align 8, !dbg !1560, !tbaa !617
  %154 = getelementptr inbounds %struct.FStar_UInt128_uint128, %struct.FStar_UInt128_uint128* %38, i32 0, i32 1, !dbg !1560
  %155 = load i64, i64* %154, align 8, !dbg !1560, !tbaa !619
  %156 = getelementptr inbounds %struct.FStar_UInt128_uint128, %struct.FStar_UInt128_uint128* %16, i32 0, i32 0, !dbg !1560
  %157 = load i64, i64* %156, align 8, !dbg !1560, !tbaa !617
  %158 = getelementptr inbounds %struct.FStar_UInt128_uint128, %struct.FStar_UInt128_uint128* %16, i32 0, i32 1, !dbg !1560
  %159 = load i64, i64* %158, align 8, !dbg !1560, !tbaa !619
  call void @FStar_UInt128_add(%struct.FStar_UInt128_uint128* nonnull sret(%struct.FStar_UInt128_uint128) align 4 %37, i64 %153, i64 %155, i64 %157, i64 %159) #14, !dbg !1560
  %160 = getelementptr inbounds %struct.FStar_UInt128_uint128, %struct.FStar_UInt128_uint128* %37, i32 0, i32 0, !dbg !1561
  %161 = load i64, i64* %160, align 8, !dbg !1561, !tbaa !617
  %162 = getelementptr inbounds %struct.FStar_UInt128_uint128, %struct.FStar_UInt128_uint128* %37, i32 0, i32 1, !dbg !1561
  %163 = load i64, i64* %162, align 8, !dbg !1561, !tbaa !619
  %164 = getelementptr inbounds %struct.FStar_UInt128_uint128, %struct.FStar_UInt128_uint128* %20, i32 0, i32 0, !dbg !1561
  %165 = load i64, i64* %164, align 8, !dbg !1561, !tbaa !617
  %166 = getelementptr inbounds %struct.FStar_UInt128_uint128, %struct.FStar_UInt128_uint128* %20, i32 0, i32 1, !dbg !1561
  %167 = load i64, i64* %166, align 8, !dbg !1561, !tbaa !619
  call void @FStar_UInt128_add(%struct.FStar_UInt128_uint128* nonnull sret(%struct.FStar_UInt128_uint128) align 4 %36, i64 %161, i64 %163, i64 %165, i64 %167) #14, !dbg !1561
  %168 = getelementptr inbounds %struct.FStar_UInt128_uint128, %struct.FStar_UInt128_uint128* %36, i32 0, i32 0, !dbg !1562
  %169 = load i64, i64* %168, align 8, !dbg !1562, !tbaa !617
  %170 = getelementptr inbounds %struct.FStar_UInt128_uint128, %struct.FStar_UInt128_uint128* %36, i32 0, i32 1, !dbg !1562
  %171 = load i64, i64* %170, align 8, !dbg !1562, !tbaa !619
  %172 = getelementptr inbounds %struct.FStar_UInt128_uint128, %struct.FStar_UInt128_uint128* %24, i32 0, i32 0, !dbg !1562
  %173 = load i64, i64* %172, align 8, !dbg !1562, !tbaa !617
  %174 = getelementptr inbounds %struct.FStar_UInt128_uint128, %struct.FStar_UInt128_uint128* %24, i32 0, i32 1, !dbg !1562
  %175 = load i64, i64* %174, align 8, !dbg !1562, !tbaa !619
  call void @FStar_UInt128_add(%struct.FStar_UInt128_uint128* nonnull sret(%struct.FStar_UInt128_uint128) align 4 %35, i64 %169, i64 %171, i64 %173, i64 %175) #14, !dbg !1562
  %176 = bitcast %struct.FStar_UInt128_uint128* %39 to i8*, !dbg !1563
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %176) #14, !dbg !1563
  call void @llvm.dbg.declare(metadata %struct.FStar_UInt128_uint128* %39, metadata !1453, metadata !DIExpression()), !dbg !1564
  %177 = getelementptr inbounds %struct.FStar_UInt128_uint128, %struct.FStar_UInt128_uint128* %13, i32 0, i32 0, !dbg !1565
  %178 = load i64, i64* %177, align 8, !dbg !1565, !tbaa !617
  %179 = getelementptr inbounds %struct.FStar_UInt128_uint128, %struct.FStar_UInt128_uint128* %13, i32 0, i32 1, !dbg !1565
  %180 = load i64, i64* %179, align 8, !dbg !1565, !tbaa !619
  %181 = getelementptr inbounds %struct.FStar_UInt128_uint128, %struct.FStar_UInt128_uint128* %17, i32 0, i32 0, !dbg !1565
  %182 = load i64, i64* %181, align 8, !dbg !1565, !tbaa !617
  %183 = getelementptr inbounds %struct.FStar_UInt128_uint128, %struct.FStar_UInt128_uint128* %17, i32 0, i32 1, !dbg !1565
  %184 = load i64, i64* %183, align 8, !dbg !1565, !tbaa !619
  call void @FStar_UInt128_add(%struct.FStar_UInt128_uint128* nonnull sret(%struct.FStar_UInt128_uint128) align 4 %41, i64 %178, i64 %180, i64 %182, i64 %184) #14, !dbg !1565
  %185 = getelementptr inbounds %struct.FStar_UInt128_uint128, %struct.FStar_UInt128_uint128* %41, i32 0, i32 0, !dbg !1566
  %186 = load i64, i64* %185, align 8, !dbg !1566, !tbaa !617
  %187 = getelementptr inbounds %struct.FStar_UInt128_uint128, %struct.FStar_UInt128_uint128* %41, i32 0, i32 1, !dbg !1566
  %188 = load i64, i64* %187, align 8, !dbg !1566, !tbaa !619
  %189 = getelementptr inbounds %struct.FStar_UInt128_uint128, %struct.FStar_UInt128_uint128* %21, i32 0, i32 0, !dbg !1566
  %190 = load i64, i64* %189, align 8, !dbg !1566, !tbaa !617
  %191 = getelementptr inbounds %struct.FStar_UInt128_uint128, %struct.FStar_UInt128_uint128* %21, i32 0, i32 1, !dbg !1566
  %192 = load i64, i64* %191, align 8, !dbg !1566, !tbaa !619
  call void @FStar_UInt128_add(%struct.FStar_UInt128_uint128* nonnull sret(%struct.FStar_UInt128_uint128) align 4 %40, i64 %186, i64 %188, i64 %190, i64 %192) #14, !dbg !1566
  %193 = getelementptr inbounds %struct.FStar_UInt128_uint128, %struct.FStar_UInt128_uint128* %40, i32 0, i32 0, !dbg !1567
  %194 = load i64, i64* %193, align 8, !dbg !1567, !tbaa !617
  %195 = getelementptr inbounds %struct.FStar_UInt128_uint128, %struct.FStar_UInt128_uint128* %40, i32 0, i32 1, !dbg !1567
  %196 = load i64, i64* %195, align 8, !dbg !1567, !tbaa !619
  %197 = getelementptr inbounds %struct.FStar_UInt128_uint128, %struct.FStar_UInt128_uint128* %25, i32 0, i32 0, !dbg !1567
  %198 = load i64, i64* %197, align 8, !dbg !1567, !tbaa !617
  %199 = getelementptr inbounds %struct.FStar_UInt128_uint128, %struct.FStar_UInt128_uint128* %25, i32 0, i32 1, !dbg !1567
  %200 = load i64, i64* %199, align 8, !dbg !1567, !tbaa !619
  call void @FStar_UInt128_add(%struct.FStar_UInt128_uint128* nonnull sret(%struct.FStar_UInt128_uint128) align 4 %39, i64 %194, i64 %196, i64 %198, i64 %200) #14, !dbg !1567
  %201 = bitcast %struct.FStar_UInt128_uint128* %42 to i8*, !dbg !1568
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %201) #14, !dbg !1568
  call void @llvm.dbg.declare(metadata %struct.FStar_UInt128_uint128* %42, metadata !1454, metadata !DIExpression()), !dbg !1569
  %202 = getelementptr inbounds %struct.FStar_UInt128_uint128, %struct.FStar_UInt128_uint128* %18, i32 0, i32 0, !dbg !1570
  %203 = load i64, i64* %202, align 8, !dbg !1570, !tbaa !617
  %204 = getelementptr inbounds %struct.FStar_UInt128_uint128, %struct.FStar_UInt128_uint128* %18, i32 0, i32 1, !dbg !1570
  %205 = load i64, i64* %204, align 8, !dbg !1570, !tbaa !619
  %206 = getelementptr inbounds %struct.FStar_UInt128_uint128, %struct.FStar_UInt128_uint128* %22, i32 0, i32 0, !dbg !1570
  %207 = load i64, i64* %206, align 8, !dbg !1570, !tbaa !617
  %208 = getelementptr inbounds %struct.FStar_UInt128_uint128, %struct.FStar_UInt128_uint128* %22, i32 0, i32 1, !dbg !1570
  %209 = load i64, i64* %208, align 8, !dbg !1570, !tbaa !619
  call void @FStar_UInt128_add(%struct.FStar_UInt128_uint128* nonnull sret(%struct.FStar_UInt128_uint128) align 4 %43, i64 %203, i64 %205, i64 %207, i64 %209) #14, !dbg !1570
  %210 = getelementptr inbounds %struct.FStar_UInt128_uint128, %struct.FStar_UInt128_uint128* %43, i32 0, i32 0, !dbg !1571
  %211 = load i64, i64* %210, align 8, !dbg !1571, !tbaa !617
  %212 = getelementptr inbounds %struct.FStar_UInt128_uint128, %struct.FStar_UInt128_uint128* %43, i32 0, i32 1, !dbg !1571
  %213 = load i64, i64* %212, align 8, !dbg !1571, !tbaa !619
  %214 = getelementptr inbounds %struct.FStar_UInt128_uint128, %struct.FStar_UInt128_uint128* %26, i32 0, i32 0, !dbg !1571
  %215 = load i64, i64* %214, align 8, !dbg !1571, !tbaa !617
  %216 = getelementptr inbounds %struct.FStar_UInt128_uint128, %struct.FStar_UInt128_uint128* %26, i32 0, i32 1, !dbg !1571
  %217 = load i64, i64* %216, align 8, !dbg !1571, !tbaa !619
  call void @FStar_UInt128_add(%struct.FStar_UInt128_uint128* nonnull sret(%struct.FStar_UInt128_uint128) align 4 %42, i64 %211, i64 %213, i64 %215, i64 %217) #14, !dbg !1571
  %218 = bitcast %struct.FStar_UInt128_uint128* %44 to i8*, !dbg !1572
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %218) #14, !dbg !1572
  call void @llvm.dbg.declare(metadata %struct.FStar_UInt128_uint128* %44, metadata !1455, metadata !DIExpression()), !dbg !1573
  %219 = getelementptr inbounds %struct.FStar_UInt128_uint128, %struct.FStar_UInt128_uint128* %23, i32 0, i32 0, !dbg !1574
  %220 = load i64, i64* %219, align 8, !dbg !1574, !tbaa !617
  %221 = getelementptr inbounds %struct.FStar_UInt128_uint128, %struct.FStar_UInt128_uint128* %23, i32 0, i32 1, !dbg !1574
  %222 = load i64, i64* %221, align 8, !dbg !1574, !tbaa !619
  %223 = getelementptr inbounds %struct.FStar_UInt128_uint128, %struct.FStar_UInt128_uint128* %27, i32 0, i32 0, !dbg !1574
  %224 = load i64, i64* %223, align 8, !dbg !1574, !tbaa !617
  %225 = getelementptr inbounds %struct.FStar_UInt128_uint128, %struct.FStar_UInt128_uint128* %27, i32 0, i32 1, !dbg !1574
  %226 = load i64, i64* %225, align 8, !dbg !1574, !tbaa !619
  call void @FStar_UInt128_add(%struct.FStar_UInt128_uint128* nonnull sret(%struct.FStar_UInt128_uint128) align 4 %44, i64 %220, i64 %222, i64 %224, i64 %226) #14, !dbg !1574
  %227 = getelementptr inbounds %struct.FStar_UInt128_uint128, %struct.FStar_UInt128_uint128* %28, i32 0, i32 0, !dbg !1575
  %228 = load i64, i64* %227, align 8, !dbg !1575, !tbaa.struct !1233
  call void @llvm.dbg.value(metadata i64 %228, metadata !1456, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 64)), !dbg !1457
  %229 = getelementptr inbounds %struct.FStar_UInt128_uint128, %struct.FStar_UInt128_uint128* %28, i32 0, i32 1, !dbg !1575
  %230 = load i64, i64* %229, align 8, !dbg !1575, !tbaa.struct !1544
  call void @llvm.dbg.value(metadata i64 %230, metadata !1456, metadata !DIExpression(DW_OP_LLVM_fragment, 64, 64)), !dbg !1457
  %231 = getelementptr inbounds %struct.FStar_UInt128_uint128, %struct.FStar_UInt128_uint128* %29, i32 0, i32 0, !dbg !1576
  %232 = load i64, i64* %231, align 8, !dbg !1576, !tbaa !617
  %233 = getelementptr inbounds %struct.FStar_UInt128_uint128, %struct.FStar_UInt128_uint128* %29, i32 0, i32 1, !dbg !1576
  %234 = load i64, i64* %233, align 8, !dbg !1576, !tbaa !619
  %235 = getelementptr inbounds %struct.FStar_UInt128_uint128, %struct.FStar_UInt128_uint128* %30, i32 0, i32 0, !dbg !1576
  %236 = load i64, i64* %235, align 8, !dbg !1576, !tbaa !617
  %237 = getelementptr inbounds %struct.FStar_UInt128_uint128, %struct.FStar_UInt128_uint128* %30, i32 0, i32 1, !dbg !1576
  %238 = load i64, i64* %237, align 8, !dbg !1576, !tbaa !619
  %239 = getelementptr inbounds %struct.FStar_UInt128_uint128, %struct.FStar_UInt128_uint128* %32, i32 0, i32 0, !dbg !1576
  %240 = load i64, i64* %239, align 8, !dbg !1576, !tbaa !617
  %241 = getelementptr inbounds %struct.FStar_UInt128_uint128, %struct.FStar_UInt128_uint128* %32, i32 0, i32 1, !dbg !1576
  %242 = load i64, i64* %241, align 8, !dbg !1576, !tbaa !619
  %243 = getelementptr inbounds %struct.FStar_UInt128_uint128, %struct.FStar_UInt128_uint128* %35, i32 0, i32 0, !dbg !1576
  %244 = load i64, i64* %243, align 8, !dbg !1576, !tbaa !617
  %245 = getelementptr inbounds %struct.FStar_UInt128_uint128, %struct.FStar_UInt128_uint128* %35, i32 0, i32 1, !dbg !1576
  %246 = load i64, i64* %245, align 8, !dbg !1576, !tbaa !619
  %247 = getelementptr inbounds %struct.FStar_UInt128_uint128, %struct.FStar_UInt128_uint128* %39, i32 0, i32 0, !dbg !1576
  %248 = load i64, i64* %247, align 8, !dbg !1576, !tbaa !617
  %249 = getelementptr inbounds %struct.FStar_UInt128_uint128, %struct.FStar_UInt128_uint128* %39, i32 0, i32 1, !dbg !1576
  %250 = load i64, i64* %249, align 8, !dbg !1576, !tbaa !619
  %251 = getelementptr inbounds %struct.FStar_UInt128_uint128, %struct.FStar_UInt128_uint128* %42, i32 0, i32 0, !dbg !1576
  %252 = load i64, i64* %251, align 8, !dbg !1576, !tbaa !617
  %253 = getelementptr inbounds %struct.FStar_UInt128_uint128, %struct.FStar_UInt128_uint128* %42, i32 0, i32 1, !dbg !1576
  %254 = load i64, i64* %253, align 8, !dbg !1576, !tbaa !619
  %255 = getelementptr inbounds %struct.FStar_UInt128_uint128, %struct.FStar_UInt128_uint128* %44, i32 0, i32 0, !dbg !1576
  %256 = load i64, i64* %255, align 8, !dbg !1576, !tbaa !617
  %257 = getelementptr inbounds %struct.FStar_UInt128_uint128, %struct.FStar_UInt128_uint128* %44, i32 0, i32 1, !dbg !1576
  %258 = load i64, i64* %257, align 8, !dbg !1576, !tbaa !619
  call fastcc void @Hacl_Lib_Create128_make_h128_9(%struct.FStar_UInt128_uint128* noundef %0, i64 %89, i64 %91, i64 %232, i64 %234, i64 %236, i64 %238, i64 %240, i64 %242, i64 %244, i64 %246, i64 %248, i64 %250, i64 %252, i64 %254, i64 %256, i64 %258, i64 %228, i64 %230), !dbg !1576
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %218) #14, !dbg !1577
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %201) #14, !dbg !1577
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %176) #14, !dbg !1577
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %143) #14, !dbg !1577
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %118) #14, !dbg !1577
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %101) #14, !dbg !1577
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %92) #14, !dbg !1577
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %87) #14, !dbg !1577
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %86) #14, !dbg !1577
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %85) #14, !dbg !1577
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %84) #14, !dbg !1577
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %83) #14, !dbg !1577
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %82) #14, !dbg !1577
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %81) #14, !dbg !1577
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %80) #14, !dbg !1577
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %79) #14, !dbg !1577
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %78) #14, !dbg !1577
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %77) #14, !dbg !1577
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %76) #14, !dbg !1577
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %75) #14, !dbg !1577
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %74) #14, !dbg !1577
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %73) #14, !dbg !1577
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %72) #14, !dbg !1577
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %71) #14, !dbg !1577
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %70) #14, !dbg !1577
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %69) #14, !dbg !1577
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %68) #14, !dbg !1577
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %67) #14, !dbg !1577
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %66) #14, !dbg !1577
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %65) #14, !dbg !1577
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %64) #14, !dbg !1577
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %63) #14, !dbg !1577
  ret void, !dbg !1577
}

; Function Attrs: noinline nounwind uwtable
define internal fastcc void @Hacl_Impl_BignumQ_Mul_carry(i64* nocapture noundef writeonly %0, %struct.FStar_UInt128_uint128* nocapture noundef readonly %1) unnamed_addr #0 !dbg !1578 {
  %3 = alloca %struct.FStar_UInt128_uint128, align 8
  %4 = alloca %struct.FStar_UInt128_uint128, align 8
  %5 = alloca %struct.FStar_UInt128_uint128, align 8
  %6 = alloca %struct.FStar_UInt128_uint128, align 8
  %7 = alloca %struct.FStar_UInt128_uint128, align 8
  %8 = alloca %struct.FStar_UInt128_uint128, align 8
  %9 = alloca %struct.FStar_UInt128_uint128, align 8
  %10 = alloca %struct.FStar_UInt128_uint128, align 8
  %11 = alloca %struct.FStar_UInt128_uint128, align 8
  %12 = alloca %struct.FStar_UInt128_uint128, align 8
  %13 = alloca %struct.FStar_UInt128_uint128, align 8
  %14 = alloca %struct.FStar_UInt128_uint128, align 8
  %15 = alloca %struct.FStar_UInt128_uint128, align 8
  %16 = alloca %struct.FStar_UInt128_uint128, align 8
  %17 = alloca %struct.FStar_UInt128_uint128, align 8
  %18 = alloca %struct.FStar_UInt128_uint128, align 8
  %19 = alloca %struct.FStar_UInt128_uint128, align 8
  %20 = alloca %struct.FStar_UInt128_uint128, align 8
  %21 = alloca %struct.FStar_UInt128_uint128, align 8
  call void @llvm.dbg.value(metadata i64* %0, metadata !1582, metadata !DIExpression()), !dbg !1648
  call void @llvm.dbg.value(metadata %struct.FStar_UInt128_uint128* %1, metadata !1583, metadata !DIExpression()), !dbg !1648
  %22 = getelementptr inbounds %struct.FStar_UInt128_uint128, %struct.FStar_UInt128_uint128* %1, i32 0, i32 0, !dbg !1649
  %23 = load i64, i64* %22, align 4, !dbg !1649, !tbaa.struct !1233
  call void @llvm.dbg.value(metadata i64 %23, metadata !1584, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 64)), !dbg !1648
  %24 = getelementptr inbounds %struct.FStar_UInt128_uint128, %struct.FStar_UInt128_uint128* %1, i32 0, i32 1, !dbg !1649
  %25 = load i64, i64* %24, align 4, !dbg !1649, !tbaa.struct !1544
  call void @llvm.dbg.value(metadata i64 %25, metadata !1584, metadata !DIExpression(DW_OP_LLVM_fragment, 64, 64)), !dbg !1648
  %26 = getelementptr inbounds %struct.FStar_UInt128_uint128, %struct.FStar_UInt128_uint128* %1, i32 1, i32 0, !dbg !1650
  %27 = load i64, i64* %26, align 4, !dbg !1650, !tbaa.struct !1233
  call void @llvm.dbg.value(metadata i64 %27, metadata !1585, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 64)), !dbg !1648
  %28 = getelementptr inbounds %struct.FStar_UInt128_uint128, %struct.FStar_UInt128_uint128* %1, i32 1, i32 1, !dbg !1650
  %29 = load i64, i64* %28, align 4, !dbg !1650, !tbaa.struct !1544
  call void @llvm.dbg.value(metadata i64 %29, metadata !1585, metadata !DIExpression(DW_OP_LLVM_fragment, 64, 64)), !dbg !1648
  %30 = getelementptr inbounds %struct.FStar_UInt128_uint128, %struct.FStar_UInt128_uint128* %1, i32 2, i32 0, !dbg !1651
  %31 = load i64, i64* %30, align 4, !dbg !1651, !tbaa.struct !1233
  call void @llvm.dbg.value(metadata i64 %31, metadata !1586, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 64)), !dbg !1648
  %32 = getelementptr inbounds %struct.FStar_UInt128_uint128, %struct.FStar_UInt128_uint128* %1, i32 2, i32 1, !dbg !1651
  %33 = load i64, i64* %32, align 4, !dbg !1651, !tbaa.struct !1544
  call void @llvm.dbg.value(metadata i64 %33, metadata !1586, metadata !DIExpression(DW_OP_LLVM_fragment, 64, 64)), !dbg !1648
  %34 = getelementptr inbounds %struct.FStar_UInt128_uint128, %struct.FStar_UInt128_uint128* %1, i32 3, i32 0, !dbg !1652
  %35 = load i64, i64* %34, align 4, !dbg !1652, !tbaa.struct !1233
  call void @llvm.dbg.value(metadata i64 %35, metadata !1587, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 64)), !dbg !1648
  %36 = getelementptr inbounds %struct.FStar_UInt128_uint128, %struct.FStar_UInt128_uint128* %1, i32 3, i32 1, !dbg !1652
  %37 = load i64, i64* %36, align 4, !dbg !1652, !tbaa.struct !1544
  call void @llvm.dbg.value(metadata i64 %37, metadata !1587, metadata !DIExpression(DW_OP_LLVM_fragment, 64, 64)), !dbg !1648
  %38 = getelementptr inbounds %struct.FStar_UInt128_uint128, %struct.FStar_UInt128_uint128* %1, i32 4, i32 0, !dbg !1653
  %39 = load i64, i64* %38, align 4, !dbg !1653, !tbaa.struct !1233
  call void @llvm.dbg.value(metadata i64 %39, metadata !1588, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 64)), !dbg !1648
  %40 = getelementptr inbounds %struct.FStar_UInt128_uint128, %struct.FStar_UInt128_uint128* %1, i32 4, i32 1, !dbg !1653
  %41 = load i64, i64* %40, align 4, !dbg !1653, !tbaa.struct !1544
  call void @llvm.dbg.value(metadata i64 %41, metadata !1588, metadata !DIExpression(DW_OP_LLVM_fragment, 64, 64)), !dbg !1648
  %42 = getelementptr inbounds %struct.FStar_UInt128_uint128, %struct.FStar_UInt128_uint128* %1, i32 5, i32 0, !dbg !1654
  %43 = load i64, i64* %42, align 4, !dbg !1654, !tbaa.struct !1233
  call void @llvm.dbg.value(metadata i64 %43, metadata !1589, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 64)), !dbg !1648
  %44 = getelementptr inbounds %struct.FStar_UInt128_uint128, %struct.FStar_UInt128_uint128* %1, i32 5, i32 1, !dbg !1654
  %45 = load i64, i64* %44, align 4, !dbg !1654, !tbaa.struct !1544
  call void @llvm.dbg.value(metadata i64 %45, metadata !1589, metadata !DIExpression(DW_OP_LLVM_fragment, 64, 64)), !dbg !1648
  %46 = getelementptr inbounds %struct.FStar_UInt128_uint128, %struct.FStar_UInt128_uint128* %1, i32 6, i32 0, !dbg !1655
  %47 = load i64, i64* %46, align 4, !dbg !1655, !tbaa.struct !1233
  call void @llvm.dbg.value(metadata i64 %47, metadata !1590, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 64)), !dbg !1648
  %48 = getelementptr inbounds %struct.FStar_UInt128_uint128, %struct.FStar_UInt128_uint128* %1, i32 6, i32 1, !dbg !1655
  %49 = load i64, i64* %48, align 4, !dbg !1655, !tbaa.struct !1544
  call void @llvm.dbg.value(metadata i64 %49, metadata !1590, metadata !DIExpression(DW_OP_LLVM_fragment, 64, 64)), !dbg !1648
  %50 = getelementptr inbounds %struct.FStar_UInt128_uint128, %struct.FStar_UInt128_uint128* %1, i32 7, i32 0, !dbg !1656
  %51 = load i64, i64* %50, align 4, !dbg !1656, !tbaa.struct !1233
  call void @llvm.dbg.value(metadata i64 %51, metadata !1591, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 64)), !dbg !1648
  %52 = getelementptr inbounds %struct.FStar_UInt128_uint128, %struct.FStar_UInt128_uint128* %1, i32 7, i32 1, !dbg !1656
  %53 = load i64, i64* %52, align 4, !dbg !1656, !tbaa.struct !1544
  call void @llvm.dbg.value(metadata i64 %53, metadata !1591, metadata !DIExpression(DW_OP_LLVM_fragment, 64, 64)), !dbg !1648
  %54 = getelementptr inbounds %struct.FStar_UInt128_uint128, %struct.FStar_UInt128_uint128* %1, i32 8, i32 0, !dbg !1657
  %55 = load i64, i64* %54, align 4, !dbg !1657, !tbaa.struct !1233
  call void @llvm.dbg.value(metadata i64 %55, metadata !1592, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 64)), !dbg !1648
  %56 = getelementptr inbounds %struct.FStar_UInt128_uint128, %struct.FStar_UInt128_uint128* %1, i32 8, i32 1, !dbg !1657
  %57 = load i64, i64* %56, align 4, !dbg !1657, !tbaa.struct !1544
  call void @llvm.dbg.value(metadata i64 %57, metadata !1592, metadata !DIExpression(DW_OP_LLVM_fragment, 64, 64)), !dbg !1648
  call void @llvm.dbg.value(metadata i64 %23, metadata !1593, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 64)), !dbg !1648
  call void @llvm.dbg.value(metadata i64 %25, metadata !1593, metadata !DIExpression(DW_OP_LLVM_fragment, 64, 64)), !dbg !1648
  call void @llvm.dbg.value(metadata i64 %27, metadata !1594, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 64)), !dbg !1648
  call void @llvm.dbg.value(metadata i64 %29, metadata !1594, metadata !DIExpression(DW_OP_LLVM_fragment, 64, 64)), !dbg !1648
  %58 = bitcast %struct.FStar_UInt128_uint128* %3 to i8*, !dbg !1658
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %58) #14, !dbg !1658
  call void @llvm.dbg.declare(metadata %struct.FStar_UInt128_uint128* %3, metadata !1595, metadata !DIExpression()), !dbg !1659
  call void @FStar_UInt128_shift_right(%struct.FStar_UInt128_uint128* nonnull sret(%struct.FStar_UInt128_uint128) align 4 %3, i64 %23, i64 %25, i32 noundef 56) #14, !dbg !1660
  %59 = call i64 @FStar_UInt128_uint128_to_uint64(i64 %23, i64 %25) #14, !dbg !1661
  %60 = and i64 %59, 72057594037927935, !dbg !1662
  call void @llvm.dbg.value(metadata i64 %60, metadata !1596, metadata !DIExpression()), !dbg !1648
  call void @llvm.dbg.value(metadata i64 %60, metadata !1597, metadata !DIExpression()), !dbg !1648
  %61 = bitcast %struct.FStar_UInt128_uint128* %4 to i8*, !dbg !1663
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %61) #14, !dbg !1663
  call void @llvm.dbg.declare(metadata %struct.FStar_UInt128_uint128* %4, metadata !1598, metadata !DIExpression()), !dbg !1664
  %62 = getelementptr inbounds %struct.FStar_UInt128_uint128, %struct.FStar_UInt128_uint128* %3, i32 0, i32 0, !dbg !1665
  %63 = load i64, i64* %62, align 8, !dbg !1665, !tbaa !617
  %64 = getelementptr inbounds %struct.FStar_UInt128_uint128, %struct.FStar_UInt128_uint128* %3, i32 0, i32 1, !dbg !1665
  %65 = load i64, i64* %64, align 8, !dbg !1665, !tbaa !619
  call void @FStar_UInt128_add(%struct.FStar_UInt128_uint128* nonnull sret(%struct.FStar_UInt128_uint128) align 4 %4, i64 %27, i64 %29, i64 %63, i64 %65) #14, !dbg !1665
  %66 = getelementptr inbounds %struct.FStar_UInt128_uint128, %struct.FStar_UInt128_uint128* %4, i32 0, i32 0, !dbg !1666
  %67 = load i64, i64* %66, align 8, !dbg !1666, !tbaa.struct !1233
  call void @llvm.dbg.value(metadata i64 %67, metadata !1599, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 64)), !dbg !1648
  %68 = getelementptr inbounds %struct.FStar_UInt128_uint128, %struct.FStar_UInt128_uint128* %4, i32 0, i32 1, !dbg !1666
  %69 = load i64, i64* %68, align 8, !dbg !1666, !tbaa.struct !1544
  call void @llvm.dbg.value(metadata i64 %69, metadata !1599, metadata !DIExpression(DW_OP_LLVM_fragment, 64, 64)), !dbg !1648
  call void @llvm.dbg.value(metadata i64 %31, metadata !1600, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 64)), !dbg !1648
  call void @llvm.dbg.value(metadata i64 %33, metadata !1600, metadata !DIExpression(DW_OP_LLVM_fragment, 64, 64)), !dbg !1648
  %70 = bitcast %struct.FStar_UInt128_uint128* %5 to i8*, !dbg !1667
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %70) #14, !dbg !1667
  call void @llvm.dbg.declare(metadata %struct.FStar_UInt128_uint128* %5, metadata !1601, metadata !DIExpression()), !dbg !1668
  call void @FStar_UInt128_shift_right(%struct.FStar_UInt128_uint128* nonnull sret(%struct.FStar_UInt128_uint128) align 4 %5, i64 %67, i64 %69, i32 noundef 56) #14, !dbg !1669
  %71 = call i64 @FStar_UInt128_uint128_to_uint64(i64 %67, i64 %69) #14, !dbg !1670
  %72 = and i64 %71, 72057594037927935, !dbg !1671
  call void @llvm.dbg.value(metadata i64 %72, metadata !1602, metadata !DIExpression()), !dbg !1648
  call void @llvm.dbg.value(metadata i64 %72, metadata !1603, metadata !DIExpression()), !dbg !1648
  %73 = bitcast %struct.FStar_UInt128_uint128* %6 to i8*, !dbg !1672
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %73) #14, !dbg !1672
  call void @llvm.dbg.declare(metadata %struct.FStar_UInt128_uint128* %6, metadata !1604, metadata !DIExpression()), !dbg !1673
  %74 = getelementptr inbounds %struct.FStar_UInt128_uint128, %struct.FStar_UInt128_uint128* %5, i32 0, i32 0, !dbg !1674
  %75 = load i64, i64* %74, align 8, !dbg !1674, !tbaa !617
  %76 = getelementptr inbounds %struct.FStar_UInt128_uint128, %struct.FStar_UInt128_uint128* %5, i32 0, i32 1, !dbg !1674
  %77 = load i64, i64* %76, align 8, !dbg !1674, !tbaa !619
  call void @FStar_UInt128_add(%struct.FStar_UInt128_uint128* nonnull sret(%struct.FStar_UInt128_uint128) align 4 %6, i64 %31, i64 %33, i64 %75, i64 %77) #14, !dbg !1674
  %78 = getelementptr inbounds %struct.FStar_UInt128_uint128, %struct.FStar_UInt128_uint128* %6, i32 0, i32 0, !dbg !1675
  %79 = load i64, i64* %78, align 8, !dbg !1675, !tbaa.struct !1233
  call void @llvm.dbg.value(metadata i64 %79, metadata !1605, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 64)), !dbg !1648
  %80 = getelementptr inbounds %struct.FStar_UInt128_uint128, %struct.FStar_UInt128_uint128* %6, i32 0, i32 1, !dbg !1675
  %81 = load i64, i64* %80, align 8, !dbg !1675, !tbaa.struct !1544
  call void @llvm.dbg.value(metadata i64 %81, metadata !1605, metadata !DIExpression(DW_OP_LLVM_fragment, 64, 64)), !dbg !1648
  call void @llvm.dbg.value(metadata i64 %35, metadata !1606, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 64)), !dbg !1648
  call void @llvm.dbg.value(metadata i64 %37, metadata !1606, metadata !DIExpression(DW_OP_LLVM_fragment, 64, 64)), !dbg !1648
  %82 = bitcast %struct.FStar_UInt128_uint128* %7 to i8*, !dbg !1676
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %82) #14, !dbg !1676
  call void @llvm.dbg.declare(metadata %struct.FStar_UInt128_uint128* %7, metadata !1607, metadata !DIExpression()), !dbg !1677
  call void @FStar_UInt128_shift_right(%struct.FStar_UInt128_uint128* nonnull sret(%struct.FStar_UInt128_uint128) align 4 %7, i64 %79, i64 %81, i32 noundef 56) #14, !dbg !1678
  %83 = call i64 @FStar_UInt128_uint128_to_uint64(i64 %79, i64 %81) #14, !dbg !1679
  %84 = and i64 %83, 72057594037927935, !dbg !1680
  call void @llvm.dbg.value(metadata i64 %84, metadata !1608, metadata !DIExpression()), !dbg !1648
  call void @llvm.dbg.value(metadata i64 %84, metadata !1609, metadata !DIExpression()), !dbg !1648
  %85 = bitcast %struct.FStar_UInt128_uint128* %8 to i8*, !dbg !1681
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %85) #14, !dbg !1681
  call void @llvm.dbg.declare(metadata %struct.FStar_UInt128_uint128* %8, metadata !1610, metadata !DIExpression()), !dbg !1682
  %86 = getelementptr inbounds %struct.FStar_UInt128_uint128, %struct.FStar_UInt128_uint128* %7, i32 0, i32 0, !dbg !1683
  %87 = load i64, i64* %86, align 8, !dbg !1683, !tbaa !617
  %88 = getelementptr inbounds %struct.FStar_UInt128_uint128, %struct.FStar_UInt128_uint128* %7, i32 0, i32 1, !dbg !1683
  %89 = load i64, i64* %88, align 8, !dbg !1683, !tbaa !619
  call void @FStar_UInt128_add(%struct.FStar_UInt128_uint128* nonnull sret(%struct.FStar_UInt128_uint128) align 4 %8, i64 %35, i64 %37, i64 %87, i64 %89) #14, !dbg !1683
  %90 = getelementptr inbounds %struct.FStar_UInt128_uint128, %struct.FStar_UInt128_uint128* %8, i32 0, i32 0, !dbg !1684
  %91 = load i64, i64* %90, align 8, !dbg !1684, !tbaa.struct !1233
  call void @llvm.dbg.value(metadata i64 %91, metadata !1611, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 64)), !dbg !1648
  %92 = getelementptr inbounds %struct.FStar_UInt128_uint128, %struct.FStar_UInt128_uint128* %8, i32 0, i32 1, !dbg !1684
  %93 = load i64, i64* %92, align 8, !dbg !1684, !tbaa.struct !1544
  call void @llvm.dbg.value(metadata i64 %93, metadata !1611, metadata !DIExpression(DW_OP_LLVM_fragment, 64, 64)), !dbg !1648
  call void @llvm.dbg.value(metadata i64 %39, metadata !1612, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 64)), !dbg !1648
  call void @llvm.dbg.value(metadata i64 %41, metadata !1612, metadata !DIExpression(DW_OP_LLVM_fragment, 64, 64)), !dbg !1648
  %94 = bitcast %struct.FStar_UInt128_uint128* %9 to i8*, !dbg !1685
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %94) #14, !dbg !1685
  call void @llvm.dbg.declare(metadata %struct.FStar_UInt128_uint128* %9, metadata !1613, metadata !DIExpression()), !dbg !1686
  call void @FStar_UInt128_shift_right(%struct.FStar_UInt128_uint128* nonnull sret(%struct.FStar_UInt128_uint128) align 4 %9, i64 %91, i64 %93, i32 noundef 56) #14, !dbg !1687
  %95 = call i64 @FStar_UInt128_uint128_to_uint64(i64 %91, i64 %93) #14, !dbg !1688
  %96 = and i64 %95, 72057594037927935, !dbg !1689
  call void @llvm.dbg.value(metadata i64 %96, metadata !1614, metadata !DIExpression()), !dbg !1648
  call void @llvm.dbg.value(metadata i64 %96, metadata !1615, metadata !DIExpression()), !dbg !1648
  %97 = bitcast %struct.FStar_UInt128_uint128* %10 to i8*, !dbg !1690
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %97) #14, !dbg !1690
  call void @llvm.dbg.declare(metadata %struct.FStar_UInt128_uint128* %10, metadata !1616, metadata !DIExpression()), !dbg !1691
  %98 = getelementptr inbounds %struct.FStar_UInt128_uint128, %struct.FStar_UInt128_uint128* %9, i32 0, i32 0, !dbg !1692
  %99 = load i64, i64* %98, align 8, !dbg !1692, !tbaa !617
  %100 = getelementptr inbounds %struct.FStar_UInt128_uint128, %struct.FStar_UInt128_uint128* %9, i32 0, i32 1, !dbg !1692
  %101 = load i64, i64* %100, align 8, !dbg !1692, !tbaa !619
  call void @FStar_UInt128_add(%struct.FStar_UInt128_uint128* nonnull sret(%struct.FStar_UInt128_uint128) align 4 %10, i64 %39, i64 %41, i64 %99, i64 %101) #14, !dbg !1692
  %102 = getelementptr inbounds %struct.FStar_UInt128_uint128, %struct.FStar_UInt128_uint128* %10, i32 0, i32 0, !dbg !1693
  %103 = load i64, i64* %102, align 8, !dbg !1693, !tbaa.struct !1233
  call void @llvm.dbg.value(metadata i64 %103, metadata !1617, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 64)), !dbg !1648
  %104 = getelementptr inbounds %struct.FStar_UInt128_uint128, %struct.FStar_UInt128_uint128* %10, i32 0, i32 1, !dbg !1693
  %105 = load i64, i64* %104, align 8, !dbg !1693, !tbaa.struct !1544
  call void @llvm.dbg.value(metadata i64 %105, metadata !1617, metadata !DIExpression(DW_OP_LLVM_fragment, 64, 64)), !dbg !1648
  call void @llvm.dbg.value(metadata i64 %43, metadata !1618, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 64)), !dbg !1648
  call void @llvm.dbg.value(metadata i64 %45, metadata !1618, metadata !DIExpression(DW_OP_LLVM_fragment, 64, 64)), !dbg !1648
  %106 = bitcast %struct.FStar_UInt128_uint128* %11 to i8*, !dbg !1694
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %106) #14, !dbg !1694
  call void @llvm.dbg.declare(metadata %struct.FStar_UInt128_uint128* %11, metadata !1619, metadata !DIExpression()), !dbg !1695
  call void @FStar_UInt128_shift_right(%struct.FStar_UInt128_uint128* nonnull sret(%struct.FStar_UInt128_uint128) align 4 %11, i64 %103, i64 %105, i32 noundef 56) #14, !dbg !1696
  %107 = call i64 @FStar_UInt128_uint128_to_uint64(i64 %103, i64 %105) #14, !dbg !1697
  %108 = and i64 %107, 72057594037927935, !dbg !1698
  call void @llvm.dbg.value(metadata i64 %108, metadata !1620, metadata !DIExpression()), !dbg !1648
  call void @llvm.dbg.value(metadata i64 %108, metadata !1621, metadata !DIExpression()), !dbg !1648
  %109 = bitcast %struct.FStar_UInt128_uint128* %12 to i8*, !dbg !1699
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %109) #14, !dbg !1699
  call void @llvm.dbg.declare(metadata %struct.FStar_UInt128_uint128* %12, metadata !1622, metadata !DIExpression()), !dbg !1700
  %110 = getelementptr inbounds %struct.FStar_UInt128_uint128, %struct.FStar_UInt128_uint128* %11, i32 0, i32 0, !dbg !1701
  %111 = load i64, i64* %110, align 8, !dbg !1701, !tbaa !617
  %112 = getelementptr inbounds %struct.FStar_UInt128_uint128, %struct.FStar_UInt128_uint128* %11, i32 0, i32 1, !dbg !1701
  %113 = load i64, i64* %112, align 8, !dbg !1701, !tbaa !619
  call void @FStar_UInt128_add(%struct.FStar_UInt128_uint128* nonnull sret(%struct.FStar_UInt128_uint128) align 4 %12, i64 %43, i64 %45, i64 %111, i64 %113) #14, !dbg !1701
  %114 = getelementptr inbounds %struct.FStar_UInt128_uint128, %struct.FStar_UInt128_uint128* %12, i32 0, i32 0, !dbg !1702
  %115 = load i64, i64* %114, align 8, !dbg !1702, !tbaa.struct !1233
  call void @llvm.dbg.value(metadata i64 %115, metadata !1623, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 64)), !dbg !1648
  %116 = getelementptr inbounds %struct.FStar_UInt128_uint128, %struct.FStar_UInt128_uint128* %12, i32 0, i32 1, !dbg !1702
  %117 = load i64, i64* %116, align 8, !dbg !1702, !tbaa.struct !1544
  call void @llvm.dbg.value(metadata i64 %117, metadata !1623, metadata !DIExpression(DW_OP_LLVM_fragment, 64, 64)), !dbg !1648
  call void @llvm.dbg.value(metadata i64 %47, metadata !1624, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 64)), !dbg !1648
  call void @llvm.dbg.value(metadata i64 %49, metadata !1624, metadata !DIExpression(DW_OP_LLVM_fragment, 64, 64)), !dbg !1648
  %118 = bitcast %struct.FStar_UInt128_uint128* %13 to i8*, !dbg !1703
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %118) #14, !dbg !1703
  call void @llvm.dbg.declare(metadata %struct.FStar_UInt128_uint128* %13, metadata !1625, metadata !DIExpression()), !dbg !1704
  call void @FStar_UInt128_shift_right(%struct.FStar_UInt128_uint128* nonnull sret(%struct.FStar_UInt128_uint128) align 4 %13, i64 %115, i64 %117, i32 noundef 56) #14, !dbg !1705
  %119 = call i64 @FStar_UInt128_uint128_to_uint64(i64 %115, i64 %117) #14, !dbg !1706
  %120 = and i64 %119, 72057594037927935, !dbg !1707
  call void @llvm.dbg.value(metadata i64 %120, metadata !1626, metadata !DIExpression()), !dbg !1648
  call void @llvm.dbg.value(metadata i64 %120, metadata !1627, metadata !DIExpression()), !dbg !1648
  %121 = bitcast %struct.FStar_UInt128_uint128* %14 to i8*, !dbg !1708
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %121) #14, !dbg !1708
  call void @llvm.dbg.declare(metadata %struct.FStar_UInt128_uint128* %14, metadata !1628, metadata !DIExpression()), !dbg !1709
  %122 = getelementptr inbounds %struct.FStar_UInt128_uint128, %struct.FStar_UInt128_uint128* %13, i32 0, i32 0, !dbg !1710
  %123 = load i64, i64* %122, align 8, !dbg !1710, !tbaa !617
  %124 = getelementptr inbounds %struct.FStar_UInt128_uint128, %struct.FStar_UInt128_uint128* %13, i32 0, i32 1, !dbg !1710
  %125 = load i64, i64* %124, align 8, !dbg !1710, !tbaa !619
  call void @FStar_UInt128_add(%struct.FStar_UInt128_uint128* nonnull sret(%struct.FStar_UInt128_uint128) align 4 %14, i64 %47, i64 %49, i64 %123, i64 %125) #14, !dbg !1710
  %126 = getelementptr inbounds %struct.FStar_UInt128_uint128, %struct.FStar_UInt128_uint128* %14, i32 0, i32 0, !dbg !1711
  %127 = load i64, i64* %126, align 8, !dbg !1711, !tbaa.struct !1233
  call void @llvm.dbg.value(metadata i64 %127, metadata !1629, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 64)), !dbg !1648
  %128 = getelementptr inbounds %struct.FStar_UInt128_uint128, %struct.FStar_UInt128_uint128* %14, i32 0, i32 1, !dbg !1711
  %129 = load i64, i64* %128, align 8, !dbg !1711, !tbaa.struct !1544
  call void @llvm.dbg.value(metadata i64 %129, metadata !1629, metadata !DIExpression(DW_OP_LLVM_fragment, 64, 64)), !dbg !1648
  call void @llvm.dbg.value(metadata i64 %51, metadata !1630, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 64)), !dbg !1648
  call void @llvm.dbg.value(metadata i64 %53, metadata !1630, metadata !DIExpression(DW_OP_LLVM_fragment, 64, 64)), !dbg !1648
  %130 = bitcast %struct.FStar_UInt128_uint128* %15 to i8*, !dbg !1712
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %130) #14, !dbg !1712
  call void @llvm.dbg.declare(metadata %struct.FStar_UInt128_uint128* %15, metadata !1631, metadata !DIExpression()), !dbg !1713
  call void @FStar_UInt128_shift_right(%struct.FStar_UInt128_uint128* nonnull sret(%struct.FStar_UInt128_uint128) align 4 %15, i64 %127, i64 %129, i32 noundef 56) #14, !dbg !1714
  %131 = call i64 @FStar_UInt128_uint128_to_uint64(i64 %127, i64 %129) #14, !dbg !1715
  %132 = and i64 %131, 72057594037927935, !dbg !1716
  call void @llvm.dbg.value(metadata i64 %132, metadata !1632, metadata !DIExpression()), !dbg !1648
  call void @llvm.dbg.value(metadata i64 %132, metadata !1633, metadata !DIExpression()), !dbg !1648
  %133 = bitcast %struct.FStar_UInt128_uint128* %16 to i8*, !dbg !1717
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %133) #14, !dbg !1717
  call void @llvm.dbg.declare(metadata %struct.FStar_UInt128_uint128* %16, metadata !1634, metadata !DIExpression()), !dbg !1718
  %134 = getelementptr inbounds %struct.FStar_UInt128_uint128, %struct.FStar_UInt128_uint128* %15, i32 0, i32 0, !dbg !1719
  %135 = load i64, i64* %134, align 8, !dbg !1719, !tbaa !617
  %136 = getelementptr inbounds %struct.FStar_UInt128_uint128, %struct.FStar_UInt128_uint128* %15, i32 0, i32 1, !dbg !1719
  %137 = load i64, i64* %136, align 8, !dbg !1719, !tbaa !619
  call void @FStar_UInt128_add(%struct.FStar_UInt128_uint128* nonnull sret(%struct.FStar_UInt128_uint128) align 4 %16, i64 %51, i64 %53, i64 %135, i64 %137) #14, !dbg !1719
  %138 = getelementptr inbounds %struct.FStar_UInt128_uint128, %struct.FStar_UInt128_uint128* %16, i32 0, i32 0, !dbg !1720
  %139 = load i64, i64* %138, align 8, !dbg !1720, !tbaa.struct !1233
  call void @llvm.dbg.value(metadata i64 %139, metadata !1635, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 64)), !dbg !1648
  %140 = getelementptr inbounds %struct.FStar_UInt128_uint128, %struct.FStar_UInt128_uint128* %16, i32 0, i32 1, !dbg !1720
  %141 = load i64, i64* %140, align 8, !dbg !1720, !tbaa.struct !1544
  call void @llvm.dbg.value(metadata i64 %141, metadata !1635, metadata !DIExpression(DW_OP_LLVM_fragment, 64, 64)), !dbg !1648
  call void @llvm.dbg.value(metadata i64 %55, metadata !1636, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 64)), !dbg !1648
  call void @llvm.dbg.value(metadata i64 %57, metadata !1636, metadata !DIExpression(DW_OP_LLVM_fragment, 64, 64)), !dbg !1648
  %142 = bitcast %struct.FStar_UInt128_uint128* %17 to i8*, !dbg !1721
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %142) #14, !dbg !1721
  call void @llvm.dbg.declare(metadata %struct.FStar_UInt128_uint128* %17, metadata !1637, metadata !DIExpression()), !dbg !1722
  call void @FStar_UInt128_shift_right(%struct.FStar_UInt128_uint128* nonnull sret(%struct.FStar_UInt128_uint128) align 4 %17, i64 %139, i64 %141, i32 noundef 56) #14, !dbg !1723
  %143 = call i64 @FStar_UInt128_uint128_to_uint64(i64 %139, i64 %141) #14, !dbg !1724
  %144 = and i64 %143, 72057594037927935, !dbg !1725
  call void @llvm.dbg.value(metadata i64 %144, metadata !1638, metadata !DIExpression()), !dbg !1648
  call void @llvm.dbg.value(metadata i64 %144, metadata !1639, metadata !DIExpression()), !dbg !1648
  %145 = bitcast %struct.FStar_UInt128_uint128* %18 to i8*, !dbg !1726
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %145) #14, !dbg !1726
  call void @llvm.dbg.declare(metadata %struct.FStar_UInt128_uint128* %18, metadata !1640, metadata !DIExpression()), !dbg !1727
  %146 = getelementptr inbounds %struct.FStar_UInt128_uint128, %struct.FStar_UInt128_uint128* %17, i32 0, i32 0, !dbg !1728
  %147 = load i64, i64* %146, align 8, !dbg !1728, !tbaa !617
  %148 = getelementptr inbounds %struct.FStar_UInt128_uint128, %struct.FStar_UInt128_uint128* %17, i32 0, i32 1, !dbg !1728
  %149 = load i64, i64* %148, align 8, !dbg !1728, !tbaa !619
  call void @FStar_UInt128_add(%struct.FStar_UInt128_uint128* nonnull sret(%struct.FStar_UInt128_uint128) align 4 %18, i64 %55, i64 %57, i64 %147, i64 %149) #14, !dbg !1728
  %150 = getelementptr inbounds %struct.FStar_UInt128_uint128, %struct.FStar_UInt128_uint128* %18, i32 0, i32 0, !dbg !1729
  %151 = load i64, i64* %150, align 8, !dbg !1729, !tbaa.struct !1233
  call void @llvm.dbg.value(metadata i64 %151, metadata !1641, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 64)), !dbg !1648
  %152 = getelementptr inbounds %struct.FStar_UInt128_uint128, %struct.FStar_UInt128_uint128* %18, i32 0, i32 1, !dbg !1729
  %153 = load i64, i64* %152, align 8, !dbg !1729, !tbaa.struct !1544
  call void @llvm.dbg.value(metadata i64 %153, metadata !1641, metadata !DIExpression(DW_OP_LLVM_fragment, 64, 64)), !dbg !1648
  %154 = bitcast %struct.FStar_UInt128_uint128* %19 to i8*, !dbg !1730
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %154) #14, !dbg !1730
  call void @llvm.dbg.declare(metadata %struct.FStar_UInt128_uint128* %19, metadata !1642, metadata !DIExpression()), !dbg !1731
  call void @FStar_UInt128_uint64_to_uint128(%struct.FStar_UInt128_uint128* nonnull sret(%struct.FStar_UInt128_uint128) align 4 %19, i64 noundef 0) #14, !dbg !1732
  %155 = bitcast %struct.FStar_UInt128_uint128* %20 to i8*, !dbg !1733
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %155) #14, !dbg !1733
  call void @llvm.dbg.declare(metadata %struct.FStar_UInt128_uint128* %20, metadata !1643, metadata !DIExpression()), !dbg !1734
  call void @FStar_UInt128_shift_right(%struct.FStar_UInt128_uint128* nonnull sret(%struct.FStar_UInt128_uint128) align 4 %20, i64 %151, i64 %153, i32 noundef 56) #14, !dbg !1735
  %156 = call i64 @FStar_UInt128_uint128_to_uint64(i64 %151, i64 %153) #14, !dbg !1736
  %157 = and i64 %156, 72057594037927935, !dbg !1737
  call void @llvm.dbg.value(metadata i64 %157, metadata !1644, metadata !DIExpression()), !dbg !1648
  call void @llvm.dbg.value(metadata i64 %157, metadata !1645, metadata !DIExpression()), !dbg !1648
  %158 = bitcast %struct.FStar_UInt128_uint128* %21 to i8*, !dbg !1738
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %158) #14, !dbg !1738
  call void @llvm.dbg.declare(metadata %struct.FStar_UInt128_uint128* %21, metadata !1646, metadata !DIExpression()), !dbg !1739
  %159 = getelementptr inbounds %struct.FStar_UInt128_uint128, %struct.FStar_UInt128_uint128* %19, i32 0, i32 0, !dbg !1740
  %160 = load i64, i64* %159, align 8, !dbg !1740, !tbaa !617
  %161 = getelementptr inbounds %struct.FStar_UInt128_uint128, %struct.FStar_UInt128_uint128* %19, i32 0, i32 1, !dbg !1740
  %162 = load i64, i64* %161, align 8, !dbg !1740, !tbaa !619
  %163 = getelementptr inbounds %struct.FStar_UInt128_uint128, %struct.FStar_UInt128_uint128* %20, i32 0, i32 0, !dbg !1740
  %164 = load i64, i64* %163, align 8, !dbg !1740, !tbaa !617
  %165 = getelementptr inbounds %struct.FStar_UInt128_uint128, %struct.FStar_UInt128_uint128* %20, i32 0, i32 1, !dbg !1740
  %166 = load i64, i64* %165, align 8, !dbg !1740, !tbaa !619
  call void @FStar_UInt128_add(%struct.FStar_UInt128_uint128* nonnull sret(%struct.FStar_UInt128_uint128) align 4 %21, i64 %160, i64 %162, i64 %164, i64 %166) #14, !dbg !1740
  %167 = getelementptr inbounds %struct.FStar_UInt128_uint128, %struct.FStar_UInt128_uint128* %21, i32 0, i32 0, !dbg !1741
  %168 = load i64, i64* %167, align 8, !dbg !1741, !tbaa !617
  %169 = getelementptr inbounds %struct.FStar_UInt128_uint128, %struct.FStar_UInt128_uint128* %21, i32 0, i32 1, !dbg !1741
  %170 = load i64, i64* %169, align 8, !dbg !1741, !tbaa !619
  %171 = call i64 @FStar_UInt128_uint128_to_uint64(i64 %168, i64 %170) #14, !dbg !1741
  call void @llvm.dbg.value(metadata i64 %171, metadata !1647, metadata !DIExpression()), !dbg !1648
  call fastcc void @Hacl_Lib_Create64_make_h64_10(i64* noundef %0, i64 noundef %60, i64 noundef %72, i64 noundef %84, i64 noundef %96, i64 noundef %108, i64 noundef %120, i64 noundef %132, i64 noundef %144, i64 noundef %157, i64 noundef %171), !dbg !1742
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %158) #14, !dbg !1743
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %155) #14, !dbg !1743
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %154) #14, !dbg !1743
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %145) #14, !dbg !1743
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %142) #14, !dbg !1743
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %133) #14, !dbg !1743
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %130) #14, !dbg !1743
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %121) #14, !dbg !1743
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %118) #14, !dbg !1743
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %109) #14, !dbg !1743
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %106) #14, !dbg !1743
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %97) #14, !dbg !1743
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %94) #14, !dbg !1743
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %85) #14, !dbg !1743
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %82) #14, !dbg !1743
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %73) #14, !dbg !1743
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %70) #14, !dbg !1743
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %61) #14, !dbg !1743
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %58) #14, !dbg !1743
  ret void, !dbg !1743
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind uwtable willreturn
define internal fastcc void @Hacl_Impl_BignumQ_Mul_div_264(i64* nocapture noundef writeonly %0, i64* nocapture noundef readonly %1) unnamed_addr #4 !dbg !1744 {
  call void @llvm.dbg.value(metadata i64* %0, metadata !1746, metadata !DIExpression()), !dbg !1759
  call void @llvm.dbg.value(metadata i64* %1, metadata !1747, metadata !DIExpression()), !dbg !1759
  %3 = getelementptr inbounds i64, i64* %1, i32 4, !dbg !1760
  %4 = load i64, i64* %3, align 4, !dbg !1760, !tbaa !181
  call void @llvm.dbg.value(metadata i64 %4, metadata !1748, metadata !DIExpression()), !dbg !1759
  %5 = getelementptr inbounds i64, i64* %1, i32 5, !dbg !1761
  %6 = load i64, i64* %5, align 4, !dbg !1761, !tbaa !181
  call void @llvm.dbg.value(metadata i64 %6, metadata !1749, metadata !DIExpression()), !dbg !1759
  %7 = getelementptr inbounds i64, i64* %1, i32 6, !dbg !1762
  %8 = load i64, i64* %7, align 4, !dbg !1762, !tbaa !181
  call void @llvm.dbg.value(metadata i64 %8, metadata !1750, metadata !DIExpression()), !dbg !1759
  %9 = getelementptr inbounds i64, i64* %1, i32 7, !dbg !1763
  %10 = load i64, i64* %9, align 4, !dbg !1763, !tbaa !181
  call void @llvm.dbg.value(metadata i64 %10, metadata !1751, metadata !DIExpression()), !dbg !1759
  %11 = getelementptr inbounds i64, i64* %1, i32 8, !dbg !1764
  %12 = load i64, i64* %11, align 4, !dbg !1764, !tbaa !181
  call void @llvm.dbg.value(metadata i64 %12, metadata !1752, metadata !DIExpression()), !dbg !1759
  %13 = getelementptr inbounds i64, i64* %1, i32 9, !dbg !1765
  %14 = load i64, i64* %13, align 4, !dbg !1765, !tbaa !181
  call void @llvm.dbg.value(metadata i64 %14, metadata !1753, metadata !DIExpression()), !dbg !1759
  %15 = shl i64 %6, 16, !dbg !1766
  %16 = and i64 %15, 72057594037862400, !dbg !1766
  %17 = lshr i64 %4, 40, !dbg !1767
  %18 = or i64 %16, %17, !dbg !1768
  call void @llvm.dbg.value(metadata i64 %18, metadata !1754, metadata !DIExpression()), !dbg !1759
  %19 = shl i64 %8, 16, !dbg !1769
  %20 = and i64 %19, 72057594037862400, !dbg !1769
  %21 = lshr i64 %6, 40, !dbg !1770
  %22 = or i64 %20, %21, !dbg !1771
  call void @llvm.dbg.value(metadata i64 %22, metadata !1755, metadata !DIExpression()), !dbg !1759
  %23 = shl i64 %10, 16, !dbg !1772
  %24 = and i64 %23, 72057594037862400, !dbg !1772
  %25 = lshr i64 %8, 40, !dbg !1773
  %26 = or i64 %24, %25, !dbg !1774
  call void @llvm.dbg.value(metadata i64 %26, metadata !1756, metadata !DIExpression()), !dbg !1759
  %27 = shl i64 %12, 16, !dbg !1775
  %28 = and i64 %27, 72057594037862400, !dbg !1775
  %29 = lshr i64 %10, 40, !dbg !1776
  %30 = or i64 %28, %29, !dbg !1777
  call void @llvm.dbg.value(metadata i64 %30, metadata !1757, metadata !DIExpression()), !dbg !1759
  %31 = shl i64 %14, 16, !dbg !1778
  %32 = and i64 %31, 72057594037862400, !dbg !1778
  %33 = lshr i64 %12, 40, !dbg !1779
  %34 = or i64 %32, %33, !dbg !1780
  call void @llvm.dbg.value(metadata i64 %34, metadata !1758, metadata !DIExpression()), !dbg !1759
  call fastcc void @Hacl_Lib_Create64_make_h64_5(i64* noundef %0, i64 noundef %18, i64 noundef %22, i64 noundef %26, i64 noundef %30, i64 noundef %34), !dbg !1781
  ret void, !dbg !1782
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind uwtable willreturn writeonly
define internal fastcc void @Hacl_Lib_Create128_make_h128_9(%struct.FStar_UInt128_uint128* nocapture noundef writeonly %0, i64 %1, i64 %2, i64 %3, i64 %4, i64 %5, i64 %6, i64 %7, i64 %8, i64 %9, i64 %10, i64 %11, i64 %12, i64 %13, i64 %14, i64 %15, i64 %16, i64 %17, i64 %18) unnamed_addr #6 !dbg !1783 {
  call void @llvm.dbg.value(metadata i64 %1, metadata !1788, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 64)), !dbg !1797
  call void @llvm.dbg.value(metadata i64 %2, metadata !1788, metadata !DIExpression(DW_OP_LLVM_fragment, 64, 64)), !dbg !1797
  call void @llvm.dbg.value(metadata i64 %3, metadata !1789, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 64)), !dbg !1797
  call void @llvm.dbg.value(metadata i64 %4, metadata !1789, metadata !DIExpression(DW_OP_LLVM_fragment, 64, 64)), !dbg !1797
  call void @llvm.dbg.value(metadata i64 %5, metadata !1790, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 64)), !dbg !1797
  call void @llvm.dbg.value(metadata i64 %6, metadata !1790, metadata !DIExpression(DW_OP_LLVM_fragment, 64, 64)), !dbg !1797
  call void @llvm.dbg.value(metadata i64 %7, metadata !1791, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 64)), !dbg !1797
  call void @llvm.dbg.value(metadata i64 %8, metadata !1791, metadata !DIExpression(DW_OP_LLVM_fragment, 64, 64)), !dbg !1797
  call void @llvm.dbg.value(metadata i64 %9, metadata !1792, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 64)), !dbg !1797
  call void @llvm.dbg.value(metadata i64 %10, metadata !1792, metadata !DIExpression(DW_OP_LLVM_fragment, 64, 64)), !dbg !1797
  call void @llvm.dbg.value(metadata i64 %11, metadata !1793, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 64)), !dbg !1797
  call void @llvm.dbg.value(metadata i64 %12, metadata !1793, metadata !DIExpression(DW_OP_LLVM_fragment, 64, 64)), !dbg !1797
  call void @llvm.dbg.value(metadata i64 %13, metadata !1794, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 64)), !dbg !1797
  call void @llvm.dbg.value(metadata i64 %14, metadata !1794, metadata !DIExpression(DW_OP_LLVM_fragment, 64, 64)), !dbg !1797
  call void @llvm.dbg.value(metadata i64 %15, metadata !1795, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 64)), !dbg !1797
  call void @llvm.dbg.value(metadata i64 %16, metadata !1795, metadata !DIExpression(DW_OP_LLVM_fragment, 64, 64)), !dbg !1797
  call void @llvm.dbg.value(metadata i64 %17, metadata !1796, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 64)), !dbg !1797
  call void @llvm.dbg.value(metadata i64 %18, metadata !1796, metadata !DIExpression(DW_OP_LLVM_fragment, 64, 64)), !dbg !1797
  call void @llvm.dbg.value(metadata %struct.FStar_UInt128_uint128* %0, metadata !1787, metadata !DIExpression()), !dbg !1797
  %20 = getelementptr inbounds %struct.FStar_UInt128_uint128, %struct.FStar_UInt128_uint128* %0, i32 0, i32 0, !dbg !1798
  store i64 %1, i64* %20, align 4, !dbg !1798, !tbaa.struct !1233
  %21 = getelementptr inbounds %struct.FStar_UInt128_uint128, %struct.FStar_UInt128_uint128* %0, i32 0, i32 1, !dbg !1798
  store i64 %2, i64* %21, align 4, !dbg !1798, !tbaa.struct !1544
  %22 = getelementptr inbounds %struct.FStar_UInt128_uint128, %struct.FStar_UInt128_uint128* %0, i32 1, i32 0, !dbg !1799
  store i64 %3, i64* %22, align 4, !dbg !1799, !tbaa.struct !1233
  %23 = getelementptr inbounds %struct.FStar_UInt128_uint128, %struct.FStar_UInt128_uint128* %0, i32 1, i32 1, !dbg !1799
  store i64 %4, i64* %23, align 4, !dbg !1799, !tbaa.struct !1544
  %24 = getelementptr inbounds %struct.FStar_UInt128_uint128, %struct.FStar_UInt128_uint128* %0, i32 2, i32 0, !dbg !1800
  store i64 %5, i64* %24, align 4, !dbg !1800, !tbaa.struct !1233
  %25 = getelementptr inbounds %struct.FStar_UInt128_uint128, %struct.FStar_UInt128_uint128* %0, i32 2, i32 1, !dbg !1800
  store i64 %6, i64* %25, align 4, !dbg !1800, !tbaa.struct !1544
  %26 = getelementptr inbounds %struct.FStar_UInt128_uint128, %struct.FStar_UInt128_uint128* %0, i32 3, i32 0, !dbg !1801
  store i64 %7, i64* %26, align 4, !dbg !1801, !tbaa.struct !1233
  %27 = getelementptr inbounds %struct.FStar_UInt128_uint128, %struct.FStar_UInt128_uint128* %0, i32 3, i32 1, !dbg !1801
  store i64 %8, i64* %27, align 4, !dbg !1801, !tbaa.struct !1544
  %28 = getelementptr inbounds %struct.FStar_UInt128_uint128, %struct.FStar_UInt128_uint128* %0, i32 4, i32 0, !dbg !1802
  store i64 %9, i64* %28, align 4, !dbg !1802, !tbaa.struct !1233
  %29 = getelementptr inbounds %struct.FStar_UInt128_uint128, %struct.FStar_UInt128_uint128* %0, i32 4, i32 1, !dbg !1802
  store i64 %10, i64* %29, align 4, !dbg !1802, !tbaa.struct !1544
  %30 = getelementptr inbounds %struct.FStar_UInt128_uint128, %struct.FStar_UInt128_uint128* %0, i32 5, i32 0, !dbg !1803
  store i64 %11, i64* %30, align 4, !dbg !1803, !tbaa.struct !1233
  %31 = getelementptr inbounds %struct.FStar_UInt128_uint128, %struct.FStar_UInt128_uint128* %0, i32 5, i32 1, !dbg !1803
  store i64 %12, i64* %31, align 4, !dbg !1803, !tbaa.struct !1544
  %32 = getelementptr inbounds %struct.FStar_UInt128_uint128, %struct.FStar_UInt128_uint128* %0, i32 6, i32 0, !dbg !1804
  store i64 %13, i64* %32, align 4, !dbg !1804, !tbaa.struct !1233
  %33 = getelementptr inbounds %struct.FStar_UInt128_uint128, %struct.FStar_UInt128_uint128* %0, i32 6, i32 1, !dbg !1804
  store i64 %14, i64* %33, align 4, !dbg !1804, !tbaa.struct !1544
  %34 = getelementptr inbounds %struct.FStar_UInt128_uint128, %struct.FStar_UInt128_uint128* %0, i32 7, i32 0, !dbg !1805
  store i64 %15, i64* %34, align 4, !dbg !1805, !tbaa.struct !1233
  %35 = getelementptr inbounds %struct.FStar_UInt128_uint128, %struct.FStar_UInt128_uint128* %0, i32 7, i32 1, !dbg !1805
  store i64 %16, i64* %35, align 4, !dbg !1805, !tbaa.struct !1544
  %36 = getelementptr inbounds %struct.FStar_UInt128_uint128, %struct.FStar_UInt128_uint128* %0, i32 8, i32 0, !dbg !1806
  store i64 %17, i64* %36, align 4, !dbg !1806, !tbaa.struct !1233
  %37 = getelementptr inbounds %struct.FStar_UInt128_uint128, %struct.FStar_UInt128_uint128* %0, i32 8, i32 1, !dbg !1806
  store i64 %18, i64* %37, align 4, !dbg !1806, !tbaa.struct !1544
  ret void, !dbg !1807
}

declare !dbg !1808 void @FStar_UInt128_shift_right(%struct.FStar_UInt128_uint128* sret(%struct.FStar_UInt128_uint128) align 4, i64, i64, i32 noundef) local_unnamed_addr #11

declare !dbg !1809 i64 @FStar_UInt128_uint128_to_uint64(i64, i64) local_unnamed_addr #11

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind uwtable willreturn
define internal fastcc void @Hacl_Impl_BignumQ_Mul_mod_264(i64* nocapture noundef writeonly %0, i64* nocapture noundef readonly %1) unnamed_addr #4 !dbg !1812 {
  call void @llvm.dbg.value(metadata i64* %0, metadata !1814, metadata !DIExpression()), !dbg !1822
  call void @llvm.dbg.value(metadata i64* %1, metadata !1815, metadata !DIExpression()), !dbg !1822
  %3 = load i64, i64* %1, align 4, !dbg !1823, !tbaa !181
  call void @llvm.dbg.value(metadata i64 %3, metadata !1816, metadata !DIExpression()), !dbg !1822
  %4 = getelementptr inbounds i64, i64* %1, i32 1, !dbg !1824
  %5 = load i64, i64* %4, align 4, !dbg !1824, !tbaa !181
  call void @llvm.dbg.value(metadata i64 %5, metadata !1817, metadata !DIExpression()), !dbg !1822
  %6 = getelementptr inbounds i64, i64* %1, i32 2, !dbg !1825
  %7 = load i64, i64* %6, align 4, !dbg !1825, !tbaa !181
  call void @llvm.dbg.value(metadata i64 %7, metadata !1818, metadata !DIExpression()), !dbg !1822
  %8 = getelementptr inbounds i64, i64* %1, i32 3, !dbg !1826
  %9 = load i64, i64* %8, align 4, !dbg !1826, !tbaa !181
  call void @llvm.dbg.value(metadata i64 %9, metadata !1819, metadata !DIExpression()), !dbg !1822
  %10 = getelementptr inbounds i64, i64* %1, i32 4, !dbg !1827
  %11 = load i64, i64* %10, align 4, !dbg !1827, !tbaa !181
  call void @llvm.dbg.value(metadata i64 %11, metadata !1820, metadata !DIExpression()), !dbg !1822
  %12 = and i64 %11, 1099511627775, !dbg !1828
  call void @llvm.dbg.value(metadata i64 %12, metadata !1821, metadata !DIExpression()), !dbg !1822
  call fastcc void @Hacl_Lib_Create64_make_h64_5(i64* noundef %0, i64 noundef %3, i64 noundef %5, i64 noundef %7, i64 noundef %9, i64 noundef %12), !dbg !1829
  ret void, !dbg !1830
}

; Function Attrs: noinline nounwind uwtable
define internal fastcc void @Hacl_Impl_BignumQ_Mul_low_mul_5(i64* nocapture noundef writeonly %0, i64* nocapture noundef readonly %1, i64* nocapture noundef readonly %2) unnamed_addr #0 !dbg !1831 {
  %4 = alloca %struct.FStar_UInt128_uint128, align 8
  %5 = alloca %struct.FStar_UInt128_uint128, align 8
  %6 = alloca %struct.FStar_UInt128_uint128, align 8
  %7 = alloca %struct.FStar_UInt128_uint128, align 8
  %8 = alloca %struct.FStar_UInt128_uint128, align 8
  %9 = alloca %struct.FStar_UInt128_uint128, align 8
  %10 = alloca %struct.FStar_UInt128_uint128, align 8
  %11 = alloca %struct.FStar_UInt128_uint128, align 8
  %12 = alloca %struct.FStar_UInt128_uint128, align 8
  %13 = alloca %struct.FStar_UInt128_uint128, align 8
  %14 = alloca %struct.FStar_UInt128_uint128, align 8
  %15 = alloca %struct.FStar_UInt128_uint128, align 8
  %16 = alloca %struct.FStar_UInt128_uint128, align 8
  %17 = alloca %struct.FStar_UInt128_uint128, align 8
  %18 = alloca %struct.FStar_UInt128_uint128, align 8
  %19 = alloca %struct.FStar_UInt128_uint128, align 8
  %20 = alloca %struct.FStar_UInt128_uint128, align 8
  %21 = alloca %struct.FStar_UInt128_uint128, align 8
  %22 = alloca %struct.FStar_UInt128_uint128, align 8
  %23 = alloca %struct.FStar_UInt128_uint128, align 8
  %24 = alloca %struct.FStar_UInt128_uint128, align 8
  %25 = alloca %struct.FStar_UInt128_uint128, align 8
  %26 = alloca %struct.FStar_UInt128_uint128, align 8
  %27 = alloca %struct.FStar_UInt128_uint128, align 8
  %28 = alloca %struct.FStar_UInt128_uint128, align 8
  %29 = alloca %struct.FStar_UInt128_uint128, align 8
  %30 = alloca %struct.FStar_UInt128_uint128, align 8
  %31 = alloca %struct.FStar_UInt128_uint128, align 8
  %32 = alloca %struct.FStar_UInt128_uint128, align 8
  %33 = alloca %struct.FStar_UInt128_uint128, align 8
  %34 = alloca %struct.FStar_UInt128_uint128, align 8
  %35 = alloca %struct.FStar_UInt128_uint128, align 8
  %36 = alloca %struct.FStar_UInt128_uint128, align 8
  call void @llvm.dbg.value(metadata i64* %0, metadata !1833, metadata !DIExpression()), !dbg !1878
  call void @llvm.dbg.value(metadata i64* %1, metadata !1834, metadata !DIExpression()), !dbg !1878
  call void @llvm.dbg.value(metadata i64* %2, metadata !1835, metadata !DIExpression()), !dbg !1878
  %37 = load i64, i64* %1, align 4, !dbg !1879, !tbaa !181
  call void @llvm.dbg.value(metadata i64 %37, metadata !1836, metadata !DIExpression()), !dbg !1878
  %38 = getelementptr inbounds i64, i64* %1, i32 1, !dbg !1880
  %39 = load i64, i64* %38, align 4, !dbg !1880, !tbaa !181
  call void @llvm.dbg.value(metadata i64 %39, metadata !1837, metadata !DIExpression()), !dbg !1878
  %40 = getelementptr inbounds i64, i64* %1, i32 2, !dbg !1881
  %41 = load i64, i64* %40, align 4, !dbg !1881, !tbaa !181
  call void @llvm.dbg.value(metadata i64 %41, metadata !1838, metadata !DIExpression()), !dbg !1878
  %42 = getelementptr inbounds i64, i64* %1, i32 3, !dbg !1882
  %43 = load i64, i64* %42, align 4, !dbg !1882, !tbaa !181
  call void @llvm.dbg.value(metadata i64 %43, metadata !1839, metadata !DIExpression()), !dbg !1878
  %44 = getelementptr inbounds i64, i64* %1, i32 4, !dbg !1883
  %45 = load i64, i64* %44, align 4, !dbg !1883, !tbaa !181
  call void @llvm.dbg.value(metadata i64 %45, metadata !1840, metadata !DIExpression()), !dbg !1878
  %46 = load i64, i64* %2, align 4, !dbg !1884, !tbaa !181
  call void @llvm.dbg.value(metadata i64 %46, metadata !1841, metadata !DIExpression()), !dbg !1878
  %47 = getelementptr inbounds i64, i64* %2, i32 1, !dbg !1885
  %48 = load i64, i64* %47, align 4, !dbg !1885, !tbaa !181
  call void @llvm.dbg.value(metadata i64 %48, metadata !1842, metadata !DIExpression()), !dbg !1878
  %49 = getelementptr inbounds i64, i64* %2, i32 2, !dbg !1886
  %50 = load i64, i64* %49, align 4, !dbg !1886, !tbaa !181
  call void @llvm.dbg.value(metadata i64 %50, metadata !1843, metadata !DIExpression()), !dbg !1878
  %51 = getelementptr inbounds i64, i64* %2, i32 3, !dbg !1887
  %52 = load i64, i64* %51, align 4, !dbg !1887, !tbaa !181
  call void @llvm.dbg.value(metadata i64 %52, metadata !1844, metadata !DIExpression()), !dbg !1878
  %53 = getelementptr inbounds i64, i64* %2, i32 4, !dbg !1888
  %54 = load i64, i64* %53, align 4, !dbg !1888, !tbaa !181
  call void @llvm.dbg.value(metadata i64 %54, metadata !1845, metadata !DIExpression()), !dbg !1878
  %55 = bitcast %struct.FStar_UInt128_uint128* %4 to i8*, !dbg !1889
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %55) #14, !dbg !1889
  call void @llvm.dbg.declare(metadata %struct.FStar_UInt128_uint128* %4, metadata !1846, metadata !DIExpression()), !dbg !1890
  call void @FStar_UInt128_mul_wide(%struct.FStar_UInt128_uint128* nonnull sret(%struct.FStar_UInt128_uint128) align 4 %4, i64 noundef %37, i64 noundef %46) #14, !dbg !1891
  %56 = bitcast %struct.FStar_UInt128_uint128* %5 to i8*, !dbg !1892
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %56) #14, !dbg !1892
  call void @llvm.dbg.declare(metadata %struct.FStar_UInt128_uint128* %5, metadata !1847, metadata !DIExpression()), !dbg !1893
  call void @FStar_UInt128_mul_wide(%struct.FStar_UInt128_uint128* nonnull sret(%struct.FStar_UInt128_uint128) align 4 %5, i64 noundef %37, i64 noundef %48) #14, !dbg !1894
  %57 = bitcast %struct.FStar_UInt128_uint128* %6 to i8*, !dbg !1895
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %57) #14, !dbg !1895
  call void @llvm.dbg.declare(metadata %struct.FStar_UInt128_uint128* %6, metadata !1848, metadata !DIExpression()), !dbg !1896
  call void @FStar_UInt128_mul_wide(%struct.FStar_UInt128_uint128* nonnull sret(%struct.FStar_UInt128_uint128) align 4 %6, i64 noundef %37, i64 noundef %50) #14, !dbg !1897
  %58 = bitcast %struct.FStar_UInt128_uint128* %7 to i8*, !dbg !1898
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %58) #14, !dbg !1898
  call void @llvm.dbg.declare(metadata %struct.FStar_UInt128_uint128* %7, metadata !1849, metadata !DIExpression()), !dbg !1899
  call void @FStar_UInt128_mul_wide(%struct.FStar_UInt128_uint128* nonnull sret(%struct.FStar_UInt128_uint128) align 4 %7, i64 noundef %37, i64 noundef %52) #14, !dbg !1900
  %59 = bitcast %struct.FStar_UInt128_uint128* %8 to i8*, !dbg !1901
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %59) #14, !dbg !1901
  call void @llvm.dbg.declare(metadata %struct.FStar_UInt128_uint128* %8, metadata !1850, metadata !DIExpression()), !dbg !1902
  call void @FStar_UInt128_mul_wide(%struct.FStar_UInt128_uint128* nonnull sret(%struct.FStar_UInt128_uint128) align 4 %8, i64 noundef %37, i64 noundef %54) #14, !dbg !1903
  %60 = bitcast %struct.FStar_UInt128_uint128* %9 to i8*, !dbg !1904
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %60) #14, !dbg !1904
  call void @llvm.dbg.declare(metadata %struct.FStar_UInt128_uint128* %9, metadata !1851, metadata !DIExpression()), !dbg !1905
  call void @FStar_UInt128_mul_wide(%struct.FStar_UInt128_uint128* nonnull sret(%struct.FStar_UInt128_uint128) align 4 %9, i64 noundef %39, i64 noundef %46) #14, !dbg !1906
  %61 = bitcast %struct.FStar_UInt128_uint128* %10 to i8*, !dbg !1907
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %61) #14, !dbg !1907
  call void @llvm.dbg.declare(metadata %struct.FStar_UInt128_uint128* %10, metadata !1852, metadata !DIExpression()), !dbg !1908
  call void @FStar_UInt128_mul_wide(%struct.FStar_UInt128_uint128* nonnull sret(%struct.FStar_UInt128_uint128) align 4 %10, i64 noundef %39, i64 noundef %48) #14, !dbg !1909
  %62 = bitcast %struct.FStar_UInt128_uint128* %11 to i8*, !dbg !1910
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %62) #14, !dbg !1910
  call void @llvm.dbg.declare(metadata %struct.FStar_UInt128_uint128* %11, metadata !1853, metadata !DIExpression()), !dbg !1911
  call void @FStar_UInt128_mul_wide(%struct.FStar_UInt128_uint128* nonnull sret(%struct.FStar_UInt128_uint128) align 4 %11, i64 noundef %39, i64 noundef %50) #14, !dbg !1912
  %63 = bitcast %struct.FStar_UInt128_uint128* %12 to i8*, !dbg !1913
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %63) #14, !dbg !1913
  call void @llvm.dbg.declare(metadata %struct.FStar_UInt128_uint128* %12, metadata !1854, metadata !DIExpression()), !dbg !1914
  call void @FStar_UInt128_mul_wide(%struct.FStar_UInt128_uint128* nonnull sret(%struct.FStar_UInt128_uint128) align 4 %12, i64 noundef %39, i64 noundef %52) #14, !dbg !1915
  %64 = bitcast %struct.FStar_UInt128_uint128* %13 to i8*, !dbg !1916
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %64) #14, !dbg !1916
  call void @llvm.dbg.declare(metadata %struct.FStar_UInt128_uint128* %13, metadata !1855, metadata !DIExpression()), !dbg !1917
  call void @FStar_UInt128_mul_wide(%struct.FStar_UInt128_uint128* nonnull sret(%struct.FStar_UInt128_uint128) align 4 %13, i64 noundef %41, i64 noundef %46) #14, !dbg !1918
  %65 = bitcast %struct.FStar_UInt128_uint128* %14 to i8*, !dbg !1919
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %65) #14, !dbg !1919
  call void @llvm.dbg.declare(metadata %struct.FStar_UInt128_uint128* %14, metadata !1856, metadata !DIExpression()), !dbg !1920
  call void @FStar_UInt128_mul_wide(%struct.FStar_UInt128_uint128* nonnull sret(%struct.FStar_UInt128_uint128) align 4 %14, i64 noundef %41, i64 noundef %48) #14, !dbg !1921
  %66 = bitcast %struct.FStar_UInt128_uint128* %15 to i8*, !dbg !1922
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %66) #14, !dbg !1922
  call void @llvm.dbg.declare(metadata %struct.FStar_UInt128_uint128* %15, metadata !1857, metadata !DIExpression()), !dbg !1923
  call void @FStar_UInt128_mul_wide(%struct.FStar_UInt128_uint128* nonnull sret(%struct.FStar_UInt128_uint128) align 4 %15, i64 noundef %41, i64 noundef %50) #14, !dbg !1924
  %67 = bitcast %struct.FStar_UInt128_uint128* %16 to i8*, !dbg !1925
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %67) #14, !dbg !1925
  call void @llvm.dbg.declare(metadata %struct.FStar_UInt128_uint128* %16, metadata !1858, metadata !DIExpression()), !dbg !1926
  call void @FStar_UInt128_mul_wide(%struct.FStar_UInt128_uint128* nonnull sret(%struct.FStar_UInt128_uint128) align 4 %16, i64 noundef %43, i64 noundef %46) #14, !dbg !1927
  %68 = bitcast %struct.FStar_UInt128_uint128* %17 to i8*, !dbg !1928
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %68) #14, !dbg !1928
  call void @llvm.dbg.declare(metadata %struct.FStar_UInt128_uint128* %17, metadata !1859, metadata !DIExpression()), !dbg !1929
  call void @FStar_UInt128_mul_wide(%struct.FStar_UInt128_uint128* nonnull sret(%struct.FStar_UInt128_uint128) align 4 %17, i64 noundef %43, i64 noundef %48) #14, !dbg !1930
  %69 = bitcast %struct.FStar_UInt128_uint128* %18 to i8*, !dbg !1931
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %69) #14, !dbg !1931
  call void @llvm.dbg.declare(metadata %struct.FStar_UInt128_uint128* %18, metadata !1860, metadata !DIExpression()), !dbg !1932
  call void @FStar_UInt128_mul_wide(%struct.FStar_UInt128_uint128* nonnull sret(%struct.FStar_UInt128_uint128) align 4 %18, i64 noundef %45, i64 noundef %46) #14, !dbg !1933
  %70 = getelementptr inbounds %struct.FStar_UInt128_uint128, %struct.FStar_UInt128_uint128* %4, i32 0, i32 0, !dbg !1934
  %71 = load i64, i64* %70, align 8, !dbg !1934, !tbaa.struct !1233
  call void @llvm.dbg.value(metadata i64 %71, metadata !1861, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 64)), !dbg !1878
  %72 = getelementptr inbounds %struct.FStar_UInt128_uint128, %struct.FStar_UInt128_uint128* %4, i32 0, i32 1, !dbg !1934
  %73 = load i64, i64* %72, align 8, !dbg !1934, !tbaa.struct !1544
  call void @llvm.dbg.value(metadata i64 %73, metadata !1861, metadata !DIExpression(DW_OP_LLVM_fragment, 64, 64)), !dbg !1878
  %74 = bitcast %struct.FStar_UInt128_uint128* %19 to i8*, !dbg !1935
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %74) #14, !dbg !1935
  call void @llvm.dbg.declare(metadata %struct.FStar_UInt128_uint128* %19, metadata !1862, metadata !DIExpression()), !dbg !1936
  call void @FStar_UInt128_shift_right(%struct.FStar_UInt128_uint128* nonnull sret(%struct.FStar_UInt128_uint128) align 4 %19, i64 %71, i64 %73, i32 noundef 56) #14, !dbg !1937
  %75 = call i64 @FStar_UInt128_uint128_to_uint64(i64 %71, i64 %73) #14, !dbg !1938
  %76 = and i64 %75, 72057594037927935, !dbg !1939
  call void @llvm.dbg.value(metadata i64 %76, metadata !1863, metadata !DIExpression()), !dbg !1878
  call void @llvm.dbg.value(metadata i64 %76, metadata !1864, metadata !DIExpression()), !dbg !1878
  %77 = bitcast %struct.FStar_UInt128_uint128* %20 to i8*, !dbg !1940
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %77) #14, !dbg !1940
  call void @llvm.dbg.declare(metadata %struct.FStar_UInt128_uint128* %20, metadata !1865, metadata !DIExpression()), !dbg !1941
  %78 = getelementptr inbounds %struct.FStar_UInt128_uint128, %struct.FStar_UInt128_uint128* %5, i32 0, i32 0, !dbg !1942
  %79 = load i64, i64* %78, align 8, !dbg !1942, !tbaa !617
  %80 = getelementptr inbounds %struct.FStar_UInt128_uint128, %struct.FStar_UInt128_uint128* %5, i32 0, i32 1, !dbg !1942
  %81 = load i64, i64* %80, align 8, !dbg !1942, !tbaa !619
  %82 = getelementptr inbounds %struct.FStar_UInt128_uint128, %struct.FStar_UInt128_uint128* %9, i32 0, i32 0, !dbg !1942
  %83 = load i64, i64* %82, align 8, !dbg !1942, !tbaa !617
  %84 = getelementptr inbounds %struct.FStar_UInt128_uint128, %struct.FStar_UInt128_uint128* %9, i32 0, i32 1, !dbg !1942
  %85 = load i64, i64* %84, align 8, !dbg !1942, !tbaa !619
  call void @FStar_UInt128_add(%struct.FStar_UInt128_uint128* nonnull sret(%struct.FStar_UInt128_uint128) align 4 %21, i64 %79, i64 %81, i64 %83, i64 %85) #14, !dbg !1942
  %86 = getelementptr inbounds %struct.FStar_UInt128_uint128, %struct.FStar_UInt128_uint128* %21, i32 0, i32 0, !dbg !1943
  %87 = load i64, i64* %86, align 8, !dbg !1943, !tbaa !617
  %88 = getelementptr inbounds %struct.FStar_UInt128_uint128, %struct.FStar_UInt128_uint128* %21, i32 0, i32 1, !dbg !1943
  %89 = load i64, i64* %88, align 8, !dbg !1943, !tbaa !619
  %90 = getelementptr inbounds %struct.FStar_UInt128_uint128, %struct.FStar_UInt128_uint128* %19, i32 0, i32 0, !dbg !1943
  %91 = load i64, i64* %90, align 8, !dbg !1943, !tbaa !617
  %92 = getelementptr inbounds %struct.FStar_UInt128_uint128, %struct.FStar_UInt128_uint128* %19, i32 0, i32 1, !dbg !1943
  %93 = load i64, i64* %92, align 8, !dbg !1943, !tbaa !619
  call void @FStar_UInt128_add(%struct.FStar_UInt128_uint128* nonnull sret(%struct.FStar_UInt128_uint128) align 4 %20, i64 %87, i64 %89, i64 %91, i64 %93) #14, !dbg !1943
  %94 = bitcast %struct.FStar_UInt128_uint128* %22 to i8*, !dbg !1944
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %94) #14, !dbg !1944
  call void @llvm.dbg.declare(metadata %struct.FStar_UInt128_uint128* %22, metadata !1866, metadata !DIExpression()), !dbg !1945
  %95 = getelementptr inbounds %struct.FStar_UInt128_uint128, %struct.FStar_UInt128_uint128* %20, i32 0, i32 0, !dbg !1946
  %96 = load i64, i64* %95, align 8, !dbg !1946, !tbaa !617
  %97 = getelementptr inbounds %struct.FStar_UInt128_uint128, %struct.FStar_UInt128_uint128* %20, i32 0, i32 1, !dbg !1946
  %98 = load i64, i64* %97, align 8, !dbg !1946, !tbaa !619
  call void @FStar_UInt128_shift_right(%struct.FStar_UInt128_uint128* nonnull sret(%struct.FStar_UInt128_uint128) align 4 %22, i64 %96, i64 %98, i32 noundef 56) #14, !dbg !1946
  %99 = load i64, i64* %95, align 8, !dbg !1947, !tbaa !617
  %100 = load i64, i64* %97, align 8, !dbg !1947, !tbaa !619
  %101 = call i64 @FStar_UInt128_uint128_to_uint64(i64 %99, i64 %100) #14, !dbg !1947
  %102 = and i64 %101, 72057594037927935, !dbg !1948
  call void @llvm.dbg.value(metadata i64 %102, metadata !1867, metadata !DIExpression()), !dbg !1878
  call void @llvm.dbg.value(metadata i64 %102, metadata !1868, metadata !DIExpression()), !dbg !1878
  %103 = bitcast %struct.FStar_UInt128_uint128* %23 to i8*, !dbg !1949
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %103) #14, !dbg !1949
  call void @llvm.dbg.declare(metadata %struct.FStar_UInt128_uint128* %23, metadata !1869, metadata !DIExpression()), !dbg !1950
  %104 = getelementptr inbounds %struct.FStar_UInt128_uint128, %struct.FStar_UInt128_uint128* %6, i32 0, i32 0, !dbg !1951
  %105 = load i64, i64* %104, align 8, !dbg !1951, !tbaa !617
  %106 = getelementptr inbounds %struct.FStar_UInt128_uint128, %struct.FStar_UInt128_uint128* %6, i32 0, i32 1, !dbg !1951
  %107 = load i64, i64* %106, align 8, !dbg !1951, !tbaa !619
  %108 = getelementptr inbounds %struct.FStar_UInt128_uint128, %struct.FStar_UInt128_uint128* %10, i32 0, i32 0, !dbg !1951
  %109 = load i64, i64* %108, align 8, !dbg !1951, !tbaa !617
  %110 = getelementptr inbounds %struct.FStar_UInt128_uint128, %struct.FStar_UInt128_uint128* %10, i32 0, i32 1, !dbg !1951
  %111 = load i64, i64* %110, align 8, !dbg !1951, !tbaa !619
  call void @FStar_UInt128_add(%struct.FStar_UInt128_uint128* nonnull sret(%struct.FStar_UInt128_uint128) align 4 %25, i64 %105, i64 %107, i64 %109, i64 %111) #14, !dbg !1951
  %112 = getelementptr inbounds %struct.FStar_UInt128_uint128, %struct.FStar_UInt128_uint128* %25, i32 0, i32 0, !dbg !1952
  %113 = load i64, i64* %112, align 8, !dbg !1952, !tbaa !617
  %114 = getelementptr inbounds %struct.FStar_UInt128_uint128, %struct.FStar_UInt128_uint128* %25, i32 0, i32 1, !dbg !1952
  %115 = load i64, i64* %114, align 8, !dbg !1952, !tbaa !619
  %116 = getelementptr inbounds %struct.FStar_UInt128_uint128, %struct.FStar_UInt128_uint128* %13, i32 0, i32 0, !dbg !1952
  %117 = load i64, i64* %116, align 8, !dbg !1952, !tbaa !617
  %118 = getelementptr inbounds %struct.FStar_UInt128_uint128, %struct.FStar_UInt128_uint128* %13, i32 0, i32 1, !dbg !1952
  %119 = load i64, i64* %118, align 8, !dbg !1952, !tbaa !619
  call void @FStar_UInt128_add(%struct.FStar_UInt128_uint128* nonnull sret(%struct.FStar_UInt128_uint128) align 4 %24, i64 %113, i64 %115, i64 %117, i64 %119) #14, !dbg !1952
  %120 = getelementptr inbounds %struct.FStar_UInt128_uint128, %struct.FStar_UInt128_uint128* %24, i32 0, i32 0, !dbg !1953
  %121 = load i64, i64* %120, align 8, !dbg !1953, !tbaa !617
  %122 = getelementptr inbounds %struct.FStar_UInt128_uint128, %struct.FStar_UInt128_uint128* %24, i32 0, i32 1, !dbg !1953
  %123 = load i64, i64* %122, align 8, !dbg !1953, !tbaa !619
  %124 = getelementptr inbounds %struct.FStar_UInt128_uint128, %struct.FStar_UInt128_uint128* %22, i32 0, i32 0, !dbg !1953
  %125 = load i64, i64* %124, align 8, !dbg !1953, !tbaa !617
  %126 = getelementptr inbounds %struct.FStar_UInt128_uint128, %struct.FStar_UInt128_uint128* %22, i32 0, i32 1, !dbg !1953
  %127 = load i64, i64* %126, align 8, !dbg !1953, !tbaa !619
  call void @FStar_UInt128_add(%struct.FStar_UInt128_uint128* nonnull sret(%struct.FStar_UInt128_uint128) align 4 %23, i64 %121, i64 %123, i64 %125, i64 %127) #14, !dbg !1953
  %128 = bitcast %struct.FStar_UInt128_uint128* %26 to i8*, !dbg !1954
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %128) #14, !dbg !1954
  call void @llvm.dbg.declare(metadata %struct.FStar_UInt128_uint128* %26, metadata !1870, metadata !DIExpression()), !dbg !1955
  %129 = getelementptr inbounds %struct.FStar_UInt128_uint128, %struct.FStar_UInt128_uint128* %23, i32 0, i32 0, !dbg !1956
  %130 = load i64, i64* %129, align 8, !dbg !1956, !tbaa !617
  %131 = getelementptr inbounds %struct.FStar_UInt128_uint128, %struct.FStar_UInt128_uint128* %23, i32 0, i32 1, !dbg !1956
  %132 = load i64, i64* %131, align 8, !dbg !1956, !tbaa !619
  call void @FStar_UInt128_shift_right(%struct.FStar_UInt128_uint128* nonnull sret(%struct.FStar_UInt128_uint128) align 4 %26, i64 %130, i64 %132, i32 noundef 56) #14, !dbg !1956
  %133 = load i64, i64* %129, align 8, !dbg !1957, !tbaa !617
  %134 = load i64, i64* %131, align 8, !dbg !1957, !tbaa !619
  %135 = call i64 @FStar_UInt128_uint128_to_uint64(i64 %133, i64 %134) #14, !dbg !1957
  %136 = and i64 %135, 72057594037927935, !dbg !1958
  call void @llvm.dbg.value(metadata i64 %136, metadata !1871, metadata !DIExpression()), !dbg !1878
  call void @llvm.dbg.value(metadata i64 %136, metadata !1872, metadata !DIExpression()), !dbg !1878
  %137 = bitcast %struct.FStar_UInt128_uint128* %27 to i8*, !dbg !1959
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %137) #14, !dbg !1959
  call void @llvm.dbg.declare(metadata %struct.FStar_UInt128_uint128* %27, metadata !1873, metadata !DIExpression()), !dbg !1960
  %138 = getelementptr inbounds %struct.FStar_UInt128_uint128, %struct.FStar_UInt128_uint128* %7, i32 0, i32 0, !dbg !1961
  %139 = load i64, i64* %138, align 8, !dbg !1961, !tbaa !617
  %140 = getelementptr inbounds %struct.FStar_UInt128_uint128, %struct.FStar_UInt128_uint128* %7, i32 0, i32 1, !dbg !1961
  %141 = load i64, i64* %140, align 8, !dbg !1961, !tbaa !619
  %142 = getelementptr inbounds %struct.FStar_UInt128_uint128, %struct.FStar_UInt128_uint128* %11, i32 0, i32 0, !dbg !1961
  %143 = load i64, i64* %142, align 8, !dbg !1961, !tbaa !617
  %144 = getelementptr inbounds %struct.FStar_UInt128_uint128, %struct.FStar_UInt128_uint128* %11, i32 0, i32 1, !dbg !1961
  %145 = load i64, i64* %144, align 8, !dbg !1961, !tbaa !619
  call void @FStar_UInt128_add(%struct.FStar_UInt128_uint128* nonnull sret(%struct.FStar_UInt128_uint128) align 4 %30, i64 %139, i64 %141, i64 %143, i64 %145) #14, !dbg !1961
  %146 = getelementptr inbounds %struct.FStar_UInt128_uint128, %struct.FStar_UInt128_uint128* %30, i32 0, i32 0, !dbg !1962
  %147 = load i64, i64* %146, align 8, !dbg !1962, !tbaa !617
  %148 = getelementptr inbounds %struct.FStar_UInt128_uint128, %struct.FStar_UInt128_uint128* %30, i32 0, i32 1, !dbg !1962
  %149 = load i64, i64* %148, align 8, !dbg !1962, !tbaa !619
  %150 = getelementptr inbounds %struct.FStar_UInt128_uint128, %struct.FStar_UInt128_uint128* %14, i32 0, i32 0, !dbg !1962
  %151 = load i64, i64* %150, align 8, !dbg !1962, !tbaa !617
  %152 = getelementptr inbounds %struct.FStar_UInt128_uint128, %struct.FStar_UInt128_uint128* %14, i32 0, i32 1, !dbg !1962
  %153 = load i64, i64* %152, align 8, !dbg !1962, !tbaa !619
  call void @FStar_UInt128_add(%struct.FStar_UInt128_uint128* nonnull sret(%struct.FStar_UInt128_uint128) align 4 %29, i64 %147, i64 %149, i64 %151, i64 %153) #14, !dbg !1962
  %154 = getelementptr inbounds %struct.FStar_UInt128_uint128, %struct.FStar_UInt128_uint128* %29, i32 0, i32 0, !dbg !1963
  %155 = load i64, i64* %154, align 8, !dbg !1963, !tbaa !617
  %156 = getelementptr inbounds %struct.FStar_UInt128_uint128, %struct.FStar_UInt128_uint128* %29, i32 0, i32 1, !dbg !1963
  %157 = load i64, i64* %156, align 8, !dbg !1963, !tbaa !619
  %158 = getelementptr inbounds %struct.FStar_UInt128_uint128, %struct.FStar_UInt128_uint128* %16, i32 0, i32 0, !dbg !1963
  %159 = load i64, i64* %158, align 8, !dbg !1963, !tbaa !617
  %160 = getelementptr inbounds %struct.FStar_UInt128_uint128, %struct.FStar_UInt128_uint128* %16, i32 0, i32 1, !dbg !1963
  %161 = load i64, i64* %160, align 8, !dbg !1963, !tbaa !619
  call void @FStar_UInt128_add(%struct.FStar_UInt128_uint128* nonnull sret(%struct.FStar_UInt128_uint128) align 4 %28, i64 %155, i64 %157, i64 %159, i64 %161) #14, !dbg !1963
  %162 = getelementptr inbounds %struct.FStar_UInt128_uint128, %struct.FStar_UInt128_uint128* %28, i32 0, i32 0, !dbg !1964
  %163 = load i64, i64* %162, align 8, !dbg !1964, !tbaa !617
  %164 = getelementptr inbounds %struct.FStar_UInt128_uint128, %struct.FStar_UInt128_uint128* %28, i32 0, i32 1, !dbg !1964
  %165 = load i64, i64* %164, align 8, !dbg !1964, !tbaa !619
  %166 = getelementptr inbounds %struct.FStar_UInt128_uint128, %struct.FStar_UInt128_uint128* %26, i32 0, i32 0, !dbg !1964
  %167 = load i64, i64* %166, align 8, !dbg !1964, !tbaa !617
  %168 = getelementptr inbounds %struct.FStar_UInt128_uint128, %struct.FStar_UInt128_uint128* %26, i32 0, i32 1, !dbg !1964
  %169 = load i64, i64* %168, align 8, !dbg !1964, !tbaa !619
  call void @FStar_UInt128_add(%struct.FStar_UInt128_uint128* nonnull sret(%struct.FStar_UInt128_uint128) align 4 %27, i64 %163, i64 %165, i64 %167, i64 %169) #14, !dbg !1964
  %170 = bitcast %struct.FStar_UInt128_uint128* %31 to i8*, !dbg !1965
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %170) #14, !dbg !1965
  call void @llvm.dbg.declare(metadata %struct.FStar_UInt128_uint128* %31, metadata !1874, metadata !DIExpression()), !dbg !1966
  %171 = getelementptr inbounds %struct.FStar_UInt128_uint128, %struct.FStar_UInt128_uint128* %27, i32 0, i32 0, !dbg !1967
  %172 = load i64, i64* %171, align 8, !dbg !1967, !tbaa !617
  %173 = getelementptr inbounds %struct.FStar_UInt128_uint128, %struct.FStar_UInt128_uint128* %27, i32 0, i32 1, !dbg !1967
  %174 = load i64, i64* %173, align 8, !dbg !1967, !tbaa !619
  call void @FStar_UInt128_shift_right(%struct.FStar_UInt128_uint128* nonnull sret(%struct.FStar_UInt128_uint128) align 4 %31, i64 %172, i64 %174, i32 noundef 56) #14, !dbg !1967
  %175 = load i64, i64* %171, align 8, !dbg !1968, !tbaa !617
  %176 = load i64, i64* %173, align 8, !dbg !1968, !tbaa !619
  %177 = call i64 @FStar_UInt128_uint128_to_uint64(i64 %175, i64 %176) #14, !dbg !1968
  %178 = and i64 %177, 72057594037927935, !dbg !1969
  call void @llvm.dbg.value(metadata i64 %178, metadata !1875, metadata !DIExpression()), !dbg !1878
  call void @llvm.dbg.value(metadata i64 %178, metadata !1876, metadata !DIExpression()), !dbg !1878
  %179 = getelementptr inbounds %struct.FStar_UInt128_uint128, %struct.FStar_UInt128_uint128* %8, i32 0, i32 0, !dbg !1970
  %180 = load i64, i64* %179, align 8, !dbg !1970, !tbaa !617
  %181 = getelementptr inbounds %struct.FStar_UInt128_uint128, %struct.FStar_UInt128_uint128* %8, i32 0, i32 1, !dbg !1970
  %182 = load i64, i64* %181, align 8, !dbg !1970, !tbaa !619
  %183 = getelementptr inbounds %struct.FStar_UInt128_uint128, %struct.FStar_UInt128_uint128* %12, i32 0, i32 0, !dbg !1970
  %184 = load i64, i64* %183, align 8, !dbg !1970, !tbaa !617
  %185 = getelementptr inbounds %struct.FStar_UInt128_uint128, %struct.FStar_UInt128_uint128* %12, i32 0, i32 1, !dbg !1970
  %186 = load i64, i64* %185, align 8, !dbg !1970, !tbaa !619
  call void @FStar_UInt128_add(%struct.FStar_UInt128_uint128* nonnull sret(%struct.FStar_UInt128_uint128) align 4 %36, i64 %180, i64 %182, i64 %184, i64 %186) #14, !dbg !1970
  %187 = getelementptr inbounds %struct.FStar_UInt128_uint128, %struct.FStar_UInt128_uint128* %36, i32 0, i32 0, !dbg !1971
  %188 = load i64, i64* %187, align 8, !dbg !1971, !tbaa !617
  %189 = getelementptr inbounds %struct.FStar_UInt128_uint128, %struct.FStar_UInt128_uint128* %36, i32 0, i32 1, !dbg !1971
  %190 = load i64, i64* %189, align 8, !dbg !1971, !tbaa !619
  %191 = getelementptr inbounds %struct.FStar_UInt128_uint128, %struct.FStar_UInt128_uint128* %15, i32 0, i32 0, !dbg !1971
  %192 = load i64, i64* %191, align 8, !dbg !1971, !tbaa !617
  %193 = getelementptr inbounds %struct.FStar_UInt128_uint128, %struct.FStar_UInt128_uint128* %15, i32 0, i32 1, !dbg !1971
  %194 = load i64, i64* %193, align 8, !dbg !1971, !tbaa !619
  call void @FStar_UInt128_add(%struct.FStar_UInt128_uint128* nonnull sret(%struct.FStar_UInt128_uint128) align 4 %35, i64 %188, i64 %190, i64 %192, i64 %194) #14, !dbg !1971
  %195 = getelementptr inbounds %struct.FStar_UInt128_uint128, %struct.FStar_UInt128_uint128* %35, i32 0, i32 0, !dbg !1972
  %196 = load i64, i64* %195, align 8, !dbg !1972, !tbaa !617
  %197 = getelementptr inbounds %struct.FStar_UInt128_uint128, %struct.FStar_UInt128_uint128* %35, i32 0, i32 1, !dbg !1972
  %198 = load i64, i64* %197, align 8, !dbg !1972, !tbaa !619
  %199 = getelementptr inbounds %struct.FStar_UInt128_uint128, %struct.FStar_UInt128_uint128* %17, i32 0, i32 0, !dbg !1972
  %200 = load i64, i64* %199, align 8, !dbg !1972, !tbaa !617
  %201 = getelementptr inbounds %struct.FStar_UInt128_uint128, %struct.FStar_UInt128_uint128* %17, i32 0, i32 1, !dbg !1972
  %202 = load i64, i64* %201, align 8, !dbg !1972, !tbaa !619
  call void @FStar_UInt128_add(%struct.FStar_UInt128_uint128* nonnull sret(%struct.FStar_UInt128_uint128) align 4 %34, i64 %196, i64 %198, i64 %200, i64 %202) #14, !dbg !1972
  %203 = getelementptr inbounds %struct.FStar_UInt128_uint128, %struct.FStar_UInt128_uint128* %34, i32 0, i32 0, !dbg !1973
  %204 = load i64, i64* %203, align 8, !dbg !1973, !tbaa !617
  %205 = getelementptr inbounds %struct.FStar_UInt128_uint128, %struct.FStar_UInt128_uint128* %34, i32 0, i32 1, !dbg !1973
  %206 = load i64, i64* %205, align 8, !dbg !1973, !tbaa !619
  %207 = getelementptr inbounds %struct.FStar_UInt128_uint128, %struct.FStar_UInt128_uint128* %18, i32 0, i32 0, !dbg !1973
  %208 = load i64, i64* %207, align 8, !dbg !1973, !tbaa !617
  %209 = getelementptr inbounds %struct.FStar_UInt128_uint128, %struct.FStar_UInt128_uint128* %18, i32 0, i32 1, !dbg !1973
  %210 = load i64, i64* %209, align 8, !dbg !1973, !tbaa !619
  call void @FStar_UInt128_add(%struct.FStar_UInt128_uint128* nonnull sret(%struct.FStar_UInt128_uint128) align 4 %33, i64 %204, i64 %206, i64 %208, i64 %210) #14, !dbg !1973
  %211 = getelementptr inbounds %struct.FStar_UInt128_uint128, %struct.FStar_UInt128_uint128* %33, i32 0, i32 0, !dbg !1974
  %212 = load i64, i64* %211, align 8, !dbg !1974, !tbaa !617
  %213 = getelementptr inbounds %struct.FStar_UInt128_uint128, %struct.FStar_UInt128_uint128* %33, i32 0, i32 1, !dbg !1974
  %214 = load i64, i64* %213, align 8, !dbg !1974, !tbaa !619
  %215 = getelementptr inbounds %struct.FStar_UInt128_uint128, %struct.FStar_UInt128_uint128* %31, i32 0, i32 0, !dbg !1974
  %216 = load i64, i64* %215, align 8, !dbg !1974, !tbaa !617
  %217 = getelementptr inbounds %struct.FStar_UInt128_uint128, %struct.FStar_UInt128_uint128* %31, i32 0, i32 1, !dbg !1974
  %218 = load i64, i64* %217, align 8, !dbg !1974, !tbaa !619
  call void @FStar_UInt128_add(%struct.FStar_UInt128_uint128* nonnull sret(%struct.FStar_UInt128_uint128) align 4 %32, i64 %212, i64 %214, i64 %216, i64 %218) #14, !dbg !1974
  %219 = getelementptr inbounds %struct.FStar_UInt128_uint128, %struct.FStar_UInt128_uint128* %32, i32 0, i32 0, !dbg !1975
  %220 = load i64, i64* %219, align 8, !dbg !1975, !tbaa !617
  %221 = getelementptr inbounds %struct.FStar_UInt128_uint128, %struct.FStar_UInt128_uint128* %32, i32 0, i32 1, !dbg !1975
  %222 = load i64, i64* %221, align 8, !dbg !1975, !tbaa !619
  %223 = call i64 @FStar_UInt128_uint128_to_uint64(i64 %220, i64 %222) #14, !dbg !1975
  %224 = and i64 %223, 1099511627775, !dbg !1976
  call void @llvm.dbg.value(metadata i64 %224, metadata !1877, metadata !DIExpression()), !dbg !1878
  call fastcc void @Hacl_Lib_Create64_make_h64_5(i64* noundef %0, i64 noundef %76, i64 noundef %102, i64 noundef %136, i64 noundef %178, i64 noundef %224), !dbg !1977
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %170) #14, !dbg !1978
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %137) #14, !dbg !1978
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %128) #14, !dbg !1978
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %103) #14, !dbg !1978
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %94) #14, !dbg !1978
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %77) #14, !dbg !1978
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %74) #14, !dbg !1978
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %69) #14, !dbg !1978
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %68) #14, !dbg !1978
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %67) #14, !dbg !1978
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %66) #14, !dbg !1978
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %65) #14, !dbg !1978
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %64) #14, !dbg !1978
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %63) #14, !dbg !1978
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %62) #14, !dbg !1978
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %61) #14, !dbg !1978
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %60) #14, !dbg !1978
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %59) #14, !dbg !1978
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %58) #14, !dbg !1978
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %57) #14, !dbg !1978
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %56) #14, !dbg !1978
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %55) #14, !dbg !1978
  ret void, !dbg !1978
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind uwtable willreturn
define internal fastcc void @Hacl_Impl_BignumQ_Mul_sub_mod_264(i64* nocapture noundef writeonly %0, i64* nocapture noundef readonly %1, i64* nocapture noundef readonly %2) unnamed_addr #4 !dbg !1979 {
  call void @llvm.dbg.value(metadata i64* %0, metadata !1981, metadata !DIExpression()), !dbg !2008
  call void @llvm.dbg.value(metadata i64* %1, metadata !1982, metadata !DIExpression()), !dbg !2008
  call void @llvm.dbg.value(metadata i64* %2, metadata !1983, metadata !DIExpression()), !dbg !2008
  %4 = load i64, i64* %1, align 4, !dbg !2009, !tbaa !181
  call void @llvm.dbg.value(metadata i64 %4, metadata !1984, metadata !DIExpression()), !dbg !2008
  %5 = getelementptr inbounds i64, i64* %1, i32 1, !dbg !2010
  %6 = load i64, i64* %5, align 4, !dbg !2010, !tbaa !181
  call void @llvm.dbg.value(metadata i64 %6, metadata !1985, metadata !DIExpression()), !dbg !2008
  %7 = getelementptr inbounds i64, i64* %1, i32 2, !dbg !2011
  %8 = load i64, i64* %7, align 4, !dbg !2011, !tbaa !181
  call void @llvm.dbg.value(metadata i64 %8, metadata !1986, metadata !DIExpression()), !dbg !2008
  %9 = getelementptr inbounds i64, i64* %1, i32 3, !dbg !2012
  %10 = load i64, i64* %9, align 4, !dbg !2012, !tbaa !181
  call void @llvm.dbg.value(metadata i64 %10, metadata !1987, metadata !DIExpression()), !dbg !2008
  %11 = getelementptr inbounds i64, i64* %1, i32 4, !dbg !2013
  %12 = load i64, i64* %11, align 4, !dbg !2013, !tbaa !181
  call void @llvm.dbg.value(metadata i64 %12, metadata !1988, metadata !DIExpression()), !dbg !2008
  %13 = load i64, i64* %2, align 4, !dbg !2014, !tbaa !181
  call void @llvm.dbg.value(metadata i64 %13, metadata !1989, metadata !DIExpression()), !dbg !2008
  %14 = getelementptr inbounds i64, i64* %2, i32 1, !dbg !2015
  %15 = load i64, i64* %14, align 4, !dbg !2015, !tbaa !181
  call void @llvm.dbg.value(metadata i64 %15, metadata !1990, metadata !DIExpression()), !dbg !2008
  %16 = getelementptr inbounds i64, i64* %2, i32 2, !dbg !2016
  %17 = load i64, i64* %16, align 4, !dbg !2016, !tbaa !181
  call void @llvm.dbg.value(metadata i64 %17, metadata !1991, metadata !DIExpression()), !dbg !2008
  %18 = getelementptr inbounds i64, i64* %2, i32 3, !dbg !2017
  %19 = load i64, i64* %18, align 4, !dbg !2017, !tbaa !181
  call void @llvm.dbg.value(metadata i64 %19, metadata !1992, metadata !DIExpression()), !dbg !2008
  %20 = getelementptr inbounds i64, i64* %2, i32 4, !dbg !2018
  %21 = load i64, i64* %20, align 4, !dbg !2018, !tbaa !181
  call void @llvm.dbg.value(metadata i64 %21, metadata !1993, metadata !DIExpression()), !dbg !2008
  %22 = call fastcc i64 @Hacl_Impl_BignumQ_Mul_lt(i64 noundef %4, i64 noundef %13), !dbg !2019, !range !1341
  call void @llvm.dbg.value(metadata i64 %22, metadata !1994, metadata !DIExpression()), !dbg !2008
  %23 = call fastcc i64 @Hacl_Impl_BignumQ_Mul_shiftl_56(i64 noundef %22), !dbg !2020
  %24 = sub i64 %4, %13, !dbg !2021
  %25 = add i64 %24, %23, !dbg !2022
  call void @llvm.dbg.value(metadata i64 %25, metadata !1995, metadata !DIExpression()), !dbg !2008
  %26 = add i64 %22, %15, !dbg !2023
  call void @llvm.dbg.value(metadata i64 %26, metadata !1996, metadata !DIExpression()), !dbg !2008
  %27 = call fastcc i64 @Hacl_Impl_BignumQ_Mul_lt(i64 noundef %6, i64 noundef %26), !dbg !2024, !range !1341
  call void @llvm.dbg.value(metadata i64 %27, metadata !1997, metadata !DIExpression()), !dbg !2008
  %28 = call fastcc i64 @Hacl_Impl_BignumQ_Mul_shiftl_56(i64 noundef %27), !dbg !2025
  %29 = sub i64 %6, %26, !dbg !2026
  %30 = add i64 %29, %28, !dbg !2027
  call void @llvm.dbg.value(metadata i64 %30, metadata !1998, metadata !DIExpression()), !dbg !2008
  %31 = add i64 %27, %17, !dbg !2028
  call void @llvm.dbg.value(metadata i64 %31, metadata !1999, metadata !DIExpression()), !dbg !2008
  %32 = call fastcc i64 @Hacl_Impl_BignumQ_Mul_lt(i64 noundef %8, i64 noundef %31), !dbg !2029, !range !1341
  call void @llvm.dbg.value(metadata i64 %32, metadata !2000, metadata !DIExpression()), !dbg !2008
  %33 = call fastcc i64 @Hacl_Impl_BignumQ_Mul_shiftl_56(i64 noundef %32), !dbg !2030
  %34 = sub i64 %8, %31, !dbg !2031
  %35 = add i64 %34, %33, !dbg !2032
  call void @llvm.dbg.value(metadata i64 %35, metadata !2001, metadata !DIExpression()), !dbg !2008
  %36 = add i64 %32, %19, !dbg !2033
  call void @llvm.dbg.value(metadata i64 %36, metadata !2002, metadata !DIExpression()), !dbg !2008
  %37 = call fastcc i64 @Hacl_Impl_BignumQ_Mul_lt(i64 noundef %10, i64 noundef %36), !dbg !2034, !range !1341
  call void @llvm.dbg.value(metadata i64 %37, metadata !2003, metadata !DIExpression()), !dbg !2008
  %38 = call fastcc i64 @Hacl_Impl_BignumQ_Mul_shiftl_56(i64 noundef %37), !dbg !2035
  %39 = sub i64 %10, %36, !dbg !2036
  %40 = add i64 %39, %38, !dbg !2037
  call void @llvm.dbg.value(metadata i64 %40, metadata !2004, metadata !DIExpression()), !dbg !2008
  %41 = add i64 %37, %21, !dbg !2038
  call void @llvm.dbg.value(metadata i64 %41, metadata !2005, metadata !DIExpression()), !dbg !2008
  %42 = call fastcc i64 @Hacl_Impl_BignumQ_Mul_lt(i64 noundef %12, i64 noundef %41), !dbg !2039
  call void @llvm.dbg.value(metadata i64 %42, metadata !2006, metadata !DIExpression()), !dbg !2008
  %43 = shl i64 %42, 40, !dbg !2040
  %44 = sub i64 %12, %41, !dbg !2041
  %45 = add i64 %44, %43, !dbg !2042
  call void @llvm.dbg.value(metadata i64 %45, metadata !2007, metadata !DIExpression()), !dbg !2008
  call fastcc void @Hacl_Lib_Create64_make_h64_5(i64* noundef %0, i64 noundef %25, i64 noundef %30, i64 noundef %35, i64 noundef %40, i64 noundef %45), !dbg !2043
  ret void, !dbg !2044
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readnone uwtable willreturn
define internal fastcc i64 @Hacl_Impl_BignumQ_Mul_lt(i64 noundef %0, i64 noundef %1) unnamed_addr #12 !dbg !2045 {
  call void @llvm.dbg.value(metadata i64 %0, metadata !2049, metadata !DIExpression()), !dbg !2051
  call void @llvm.dbg.value(metadata i64 %1, metadata !2050, metadata !DIExpression()), !dbg !2051
  %3 = sub i64 %0, %1, !dbg !2052
  %4 = lshr i64 %3, 63, !dbg !2053
  ret i64 %4, !dbg !2054
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readnone uwtable willreturn
define internal fastcc i64 @Hacl_Impl_BignumQ_Mul_shiftl_56(i64 noundef %0) unnamed_addr #12 !dbg !2055 {
  call void @llvm.dbg.value(metadata i64 %0, metadata !2059, metadata !DIExpression()), !dbg !2060
  %2 = shl i64 %0, 56, !dbg !2061
  ret i64 %2, !dbg !2062
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind uwtable willreturn
define internal fastcc void @Hacl_Impl_BignumQ_Mul_choose(i64* nocapture noundef writeonly %0, i64* nocapture noundef readonly %1, i64* nocapture noundef readonly %2, i64 noundef %3) unnamed_addr #4 !dbg !2063 {
  call void @llvm.dbg.value(metadata i64* %0, metadata !2067, metadata !DIExpression()), !dbg !2087
  call void @llvm.dbg.value(metadata i64* %1, metadata !2068, metadata !DIExpression()), !dbg !2087
  call void @llvm.dbg.value(metadata i64* %2, metadata !2069, metadata !DIExpression()), !dbg !2087
  call void @llvm.dbg.value(metadata i64 %3, metadata !2070, metadata !DIExpression()), !dbg !2087
  %5 = add i64 %3, -1, !dbg !2088
  call void @llvm.dbg.value(metadata i64 %5, metadata !2071, metadata !DIExpression()), !dbg !2087
  %6 = load i64, i64* %1, align 4, !dbg !2089, !tbaa !181
  call void @llvm.dbg.value(metadata i64 %6, metadata !2072, metadata !DIExpression()), !dbg !2087
  %7 = getelementptr inbounds i64, i64* %1, i32 1, !dbg !2090
  %8 = load i64, i64* %7, align 4, !dbg !2090, !tbaa !181
  call void @llvm.dbg.value(metadata i64 %8, metadata !2073, metadata !DIExpression()), !dbg !2087
  %9 = getelementptr inbounds i64, i64* %1, i32 2, !dbg !2091
  %10 = load i64, i64* %9, align 4, !dbg !2091, !tbaa !181
  call void @llvm.dbg.value(metadata i64 %10, metadata !2074, metadata !DIExpression()), !dbg !2087
  %11 = getelementptr inbounds i64, i64* %1, i32 3, !dbg !2092
  %12 = load i64, i64* %11, align 4, !dbg !2092, !tbaa !181
  call void @llvm.dbg.value(metadata i64 %12, metadata !2075, metadata !DIExpression()), !dbg !2087
  %13 = getelementptr inbounds i64, i64* %1, i32 4, !dbg !2093
  %14 = load i64, i64* %13, align 4, !dbg !2093, !tbaa !181
  call void @llvm.dbg.value(metadata i64 %14, metadata !2076, metadata !DIExpression()), !dbg !2087
  %15 = load i64, i64* %2, align 4, !dbg !2094, !tbaa !181
  call void @llvm.dbg.value(metadata i64 %15, metadata !2077, metadata !DIExpression()), !dbg !2087
  %16 = getelementptr inbounds i64, i64* %2, i32 1, !dbg !2095
  %17 = load i64, i64* %16, align 4, !dbg !2095, !tbaa !181
  call void @llvm.dbg.value(metadata i64 %17, metadata !2078, metadata !DIExpression()), !dbg !2087
  %18 = getelementptr inbounds i64, i64* %2, i32 2, !dbg !2096
  %19 = load i64, i64* %18, align 4, !dbg !2096, !tbaa !181
  call void @llvm.dbg.value(metadata i64 %19, metadata !2079, metadata !DIExpression()), !dbg !2087
  %20 = getelementptr inbounds i64, i64* %2, i32 3, !dbg !2097
  %21 = load i64, i64* %20, align 4, !dbg !2097, !tbaa !181
  call void @llvm.dbg.value(metadata i64 %21, metadata !2080, metadata !DIExpression()), !dbg !2087
  %22 = getelementptr inbounds i64, i64* %2, i32 4, !dbg !2098
  %23 = load i64, i64* %22, align 4, !dbg !2098, !tbaa !181
  call void @llvm.dbg.value(metadata i64 %23, metadata !2081, metadata !DIExpression()), !dbg !2087
  %24 = xor i64 %15, %6, !dbg !2099
  %25 = and i64 %24, %5, !dbg !2100
  %26 = xor i64 %25, %6, !dbg !2101
  call void @llvm.dbg.value(metadata i64 %26, metadata !2082, metadata !DIExpression()), !dbg !2087
  %27 = xor i64 %17, %8, !dbg !2102
  %28 = and i64 %27, %5, !dbg !2103
  %29 = xor i64 %28, %8, !dbg !2104
  call void @llvm.dbg.value(metadata i64 %29, metadata !2083, metadata !DIExpression()), !dbg !2087
  %30 = xor i64 %19, %10, !dbg !2105
  %31 = and i64 %30, %5, !dbg !2106
  %32 = xor i64 %31, %10, !dbg !2107
  call void @llvm.dbg.value(metadata i64 %32, metadata !2084, metadata !DIExpression()), !dbg !2087
  %33 = xor i64 %21, %12, !dbg !2108
  %34 = and i64 %33, %5, !dbg !2109
  %35 = xor i64 %34, %12, !dbg !2110
  call void @llvm.dbg.value(metadata i64 %35, metadata !2085, metadata !DIExpression()), !dbg !2087
  %36 = xor i64 %23, %14, !dbg !2111
  %37 = and i64 %36, %5, !dbg !2112
  %38 = xor i64 %37, %14, !dbg !2113
  call void @llvm.dbg.value(metadata i64 %38, metadata !2086, metadata !DIExpression()), !dbg !2087
  call fastcc void @Hacl_Lib_Create64_make_h64_5(i64* noundef %0, i64 noundef %26, i64 noundef %29, i64 noundef %32, i64 noundef %35, i64 noundef %38), !dbg !2114
  ret void, !dbg !2115
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind uwtable willreturn writeonly
define internal fastcc void @store32(i8* nocapture noundef writeonly %0, i32 noundef %1) unnamed_addr #6 !dbg !2116 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !2120, metadata !DIExpression()), !dbg !2122
  call void @llvm.dbg.value(metadata i32 %1, metadata !2121, metadata !DIExpression()), !dbg !2122
  %3 = bitcast i8* %0 to i32*, !dbg !2123
  store i32 %1, i32* %3, align 1, !dbg !2123
  ret void, !dbg !2124
}

; Function Attrs: noinline nounwind uwtable
define internal fastcc void @Hacl_Impl_Ed25519_Sign_Steps_point_mul_g(i64* nocapture noundef writeonly %0, i8* nocapture noundef readonly %1) unnamed_addr #0 !dbg !2125 {
  %3 = alloca [20 x i64], align 8
  call void @llvm.dbg.value(metadata i64* %0, metadata !2127, metadata !DIExpression()), !dbg !2130
  call void @llvm.dbg.value(metadata i8* %1, metadata !2128, metadata !DIExpression()), !dbg !2130
  %4 = bitcast [20 x i64]* %3 to i8*, !dbg !2131
  call void @llvm.lifetime.start.p0i8(i64 160, i8* nonnull %4) #14, !dbg !2131
  call void @llvm.dbg.declare(metadata [20 x i64]* %3, metadata !2129, metadata !DIExpression()), !dbg !2132
  call void @llvm.memset.p0i8.i32(i8* noundef nonnull align 8 dereferenceable(160) %4, i8 0, i32 160, i1 false), !dbg !2132
  %5 = getelementptr inbounds [20 x i64], [20 x i64]* %3, i32 0, i32 0, !dbg !2133
  call fastcc void @Hacl_Impl_Ed25519_G_make_g(i64* noundef nonnull %5), !dbg !2134
  call fastcc void @Hacl_Impl_Ed25519_Ladder_point_mul(i64* noundef %0, i8* noundef %1, i64* noundef nonnull %5), !dbg !2135
  call void @llvm.lifetime.end.p0i8(i64 160, i8* nonnull %4) #14, !dbg !2136
  ret void, !dbg !2136
}

; Function Attrs: noinline nounwind uwtable
define internal fastcc void @Hacl_Impl_Ed25519_PointCompress_point_compress(i8* nocapture noundef %0, i64* noundef readonly %1) unnamed_addr #0 !dbg !2137 {
  %3 = alloca [15 x i64], align 8
  call void @llvm.dbg.value(metadata i8* %0, metadata !2139, metadata !DIExpression()), !dbg !2156
  call void @llvm.dbg.value(metadata i64* %1, metadata !2140, metadata !DIExpression()), !dbg !2156
  %4 = bitcast [15 x i64]* %3 to i8*, !dbg !2157
  call void @llvm.lifetime.start.p0i8(i64 120, i8* nonnull %4) #14, !dbg !2157
  call void @llvm.dbg.declare(metadata [15 x i64]* %3, metadata !2141, metadata !DIExpression()), !dbg !2158
  call void @llvm.memset.p0i8.i32(i8* noundef nonnull align 8 dereferenceable(120) %4, i8 0, i32 120, i1 false), !dbg !2158
  %5 = getelementptr inbounds [15 x i64], [15 x i64]* %3, i32 0, i32 0, !dbg !2159
  %6 = getelementptr inbounds [15 x i64], [15 x i64]* %3, i32 0, i32 5, !dbg !2160
  call void @llvm.dbg.value(metadata i64* %6, metadata !2145, metadata !DIExpression()), !dbg !2156
  %7 = getelementptr inbounds [15 x i64], [15 x i64]* %3, i32 0, i32 10, !dbg !2161
  call void @llvm.dbg.value(metadata i64* %7, metadata !2146, metadata !DIExpression()), !dbg !2156
  call void @llvm.dbg.value(metadata i64* %5, metadata !2147, metadata !DIExpression()), !dbg !2156
  call void @llvm.dbg.value(metadata i64* %6, metadata !2148, metadata !DIExpression()), !dbg !2156
  call void @llvm.dbg.value(metadata i64* %7, metadata !2149, metadata !DIExpression()), !dbg !2156
  call void @llvm.dbg.value(metadata i64* %1, metadata !2150, metadata !DIExpression()), !dbg !2156
  %8 = call fastcc i64* @Hacl_Impl_Ed25519_ExtPoint_gety(i64* noundef %1), !dbg !2162
  call void @llvm.dbg.value(metadata i64* %8, metadata !2151, metadata !DIExpression()), !dbg !2156
  %9 = call fastcc i64* @Hacl_Impl_Ed25519_ExtPoint_getz(i64* noundef %1), !dbg !2163
  call void @llvm.dbg.value(metadata i64* %9, metadata !2152, metadata !DIExpression()), !dbg !2156
  call fastcc void @Hacl_Bignum25519_inverse(i64* noundef nonnull %5, i64* noundef nonnull %9), !dbg !2164
  call fastcc void @Hacl_Bignum25519_fmul(i64* noundef nonnull %6, i64* noundef %1, i64* noundef nonnull %5), !dbg !2165
  call fastcc void @Hacl_Bignum25519_reduce(i64* noundef nonnull %6), !dbg !2166
  call fastcc void @Hacl_Bignum25519_fmul(i64* noundef nonnull %7, i64* noundef nonnull %8, i64* noundef nonnull %5), !dbg !2167
  call fastcc void @Hacl_Bignum25519_reduce(i64* noundef nonnull %7), !dbg !2168
  %10 = call fastcc i64 @Hacl_Impl_Ed25519_PointCompress_x_mod_2(i64* noundef nonnull %6), !dbg !2169
  call void @llvm.dbg.value(metadata i64 %10, metadata !2153, metadata !DIExpression()), !dbg !2156
  call fastcc void @Hacl_Impl_Store51_store_51_(i8* noundef %0, i64* noundef nonnull %7), !dbg !2170
  %11 = trunc i64 %10 to i8, !dbg !2171
  call void @llvm.dbg.value(metadata i64 %10, metadata !2154, metadata !DIExpression(DW_OP_LLVM_convert, 64, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !2156
  %12 = getelementptr inbounds i8, i8* %0, i32 31, !dbg !2172
  %13 = load i8, i8* %12, align 1, !dbg !2172, !tbaa !276
  call void @llvm.dbg.value(metadata i8 %13, metadata !2155, metadata !DIExpression()), !dbg !2156
  %14 = shl i8 %11, 7, !dbg !2173
  %15 = add i8 %14, %13, !dbg !2174
  store i8 %15, i8* %12, align 1, !dbg !2175, !tbaa !276
  call void @llvm.lifetime.end.p0i8(i64 120, i8* nonnull %4) #14, !dbg !2176
  ret void, !dbg !2176
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind uwtable willreturn writeonly
define internal fastcc void @Hacl_Impl_Ed25519_G_make_g(i64* noundef writeonly %0) unnamed_addr #6 !dbg !2177 {
  call void @llvm.dbg.value(metadata i64* %0, metadata !2179, metadata !DIExpression()), !dbg !2184
  call void @llvm.dbg.value(metadata i64* %0, metadata !2180, metadata !DIExpression()), !dbg !2184
  %2 = call fastcc i64* @Hacl_Impl_Ed25519_ExtPoint_gety(i64* noundef %0), !dbg !2185
  call void @llvm.dbg.value(metadata i64* %2, metadata !2181, metadata !DIExpression()), !dbg !2184
  %3 = call fastcc i64* @Hacl_Impl_Ed25519_ExtPoint_getz(i64* noundef %0), !dbg !2186
  call void @llvm.dbg.value(metadata i64* %3, metadata !2182, metadata !DIExpression()), !dbg !2184
  %4 = call fastcc i64* @Hacl_Impl_Ed25519_ExtPoint_gett(i64* noundef %0), !dbg !2187
  call void @llvm.dbg.value(metadata i64* %4, metadata !2183, metadata !DIExpression()), !dbg !2184
  call fastcc void @Hacl_Lib_Create64_make_h64_5(i64* noundef %0, i64 noundef 1738742601995546, i64 noundef 1146398526822698, i64 noundef 2070867633025821, i64 noundef 562264141797630, i64 noundef 587772402128613), !dbg !2188
  call fastcc void @Hacl_Lib_Create64_make_h64_5(i64* noundef nonnull %2, i64 noundef 1801439850948184, i64 noundef 1351079888211148, i64 noundef 450359962737049, i64 noundef 900719925474099, i64 noundef 1801439850948198), !dbg !2189
  call fastcc void @Hacl_Lib_Create64_make_h64_5(i64* noundef nonnull %3, i64 noundef 1, i64 noundef 0, i64 noundef 0, i64 noundef 0, i64 noundef 0), !dbg !2190
  call fastcc void @Hacl_Lib_Create64_make_h64_5(i64* noundef nonnull %4, i64 noundef 1841354044333475, i64 noundef 16398895984059, i64 noundef 755974180946558, i64 noundef 900171276175154, i64 noundef 1821297809914039), !dbg !2191
  ret void, !dbg !2192
}

; Function Attrs: noinline nounwind uwtable
define internal fastcc void @Hacl_Impl_Ed25519_Ladder_point_mul(i64* nocapture noundef writeonly %0, i8* nocapture noundef readonly %1, i64* nocapture noundef readonly %2) unnamed_addr #0 !dbg !2193 {
  %4 = alloca [80 x i64], align 8
  call void @llvm.dbg.value(metadata i64* %0, metadata !2197, metadata !DIExpression()), !dbg !2206
  call void @llvm.dbg.value(metadata i8* %1, metadata !2198, metadata !DIExpression()), !dbg !2206
  call void @llvm.dbg.value(metadata i64* %2, metadata !2199, metadata !DIExpression()), !dbg !2206
  %5 = bitcast [80 x i64]* %4 to i8*, !dbg !2207
  call void @llvm.lifetime.start.p0i8(i64 640, i8* nonnull %5) #14, !dbg !2207
  call void @llvm.dbg.declare(metadata [80 x i64]* %4, metadata !2200, metadata !DIExpression()), !dbg !2208
  call void @llvm.memset.p0i8.i32(i8* noundef nonnull align 8 dereferenceable(640) %5, i8 0, i32 640, i1 false), !dbg !2208
  %6 = getelementptr inbounds [80 x i64], [80 x i64]* %4, i32 0, i32 0, !dbg !2209
  call void @llvm.dbg.value(metadata i64* %6, metadata !2204, metadata !DIExpression()), !dbg !2206
  %7 = getelementptr inbounds [80 x i64], [80 x i64]* %4, i32 0, i32 20, !dbg !2210
  call void @llvm.dbg.value(metadata i64* %7, metadata !2205, metadata !DIExpression()), !dbg !2206
  call fastcc void @Hacl_Impl_Ed25519_Ladder_make_point_inf(i64* noundef nonnull %6), !dbg !2211
  call fastcc void @Hacl_Impl_Ed25519_SwapConditional_copy(i64* noundef nonnull %7, i64* noundef %2), !dbg !2212
  call fastcc void @Hacl_Impl_Ed25519_Ladder_point_mul_(i64* noundef nonnull %6, i8* noundef %1), !dbg !2213
  call fastcc void @Hacl_Impl_Ed25519_SwapConditional_copy(i64* noundef %0, i64* noundef nonnull %6), !dbg !2214
  call void @llvm.lifetime.end.p0i8(i64 640, i8* nonnull %5) #14, !dbg !2215
  ret void, !dbg !2215
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readnone uwtable willreturn
define internal fastcc nonnull i64* @Hacl_Impl_Ed25519_ExtPoint_gety(i64* noundef readnone %0) unnamed_addr #12 !dbg !2216 {
  call void @llvm.dbg.value(metadata i64* %0, metadata !2220, metadata !DIExpression()), !dbg !2221
  %2 = getelementptr inbounds i64, i64* %0, i32 5, !dbg !2222
  ret i64* %2, !dbg !2223
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readnone uwtable willreturn
define internal fastcc nonnull i64* @Hacl_Impl_Ed25519_ExtPoint_getz(i64* noundef readnone %0) unnamed_addr #12 !dbg !2224 {
  call void @llvm.dbg.value(metadata i64* %0, metadata !2226, metadata !DIExpression()), !dbg !2227
  %2 = getelementptr inbounds i64, i64* %0, i32 10, !dbg !2228
  ret i64* %2, !dbg !2229
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readnone uwtable willreturn
define internal fastcc nonnull i64* @Hacl_Impl_Ed25519_ExtPoint_gett(i64* noundef readnone %0) unnamed_addr #12 !dbg !2230 {
  call void @llvm.dbg.value(metadata i64* %0, metadata !2232, metadata !DIExpression()), !dbg !2233
  %2 = getelementptr inbounds i64, i64* %0, i32 15, !dbg !2234
  ret i64* %2, !dbg !2235
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind uwtable willreturn writeonly
define internal fastcc void @Hacl_Impl_Ed25519_Ladder_make_point_inf(i64* nocapture noundef writeonly %0) unnamed_addr #6 !dbg !2236 {
  call void @llvm.dbg.value(metadata i64* %0, metadata !2238, metadata !DIExpression()), !dbg !2249
  call void @llvm.dbg.value(metadata i64* %0, metadata !2239, metadata !DIExpression()), !dbg !2249
  %2 = getelementptr inbounds i64, i64* %0, i32 5, !dbg !2250
  call void @llvm.dbg.value(metadata i64* %2, metadata !2240, metadata !DIExpression()), !dbg !2249
  %3 = getelementptr inbounds i64, i64* %0, i32 10, !dbg !2251
  call void @llvm.dbg.value(metadata i64* %3, metadata !2241, metadata !DIExpression()), !dbg !2249
  %4 = getelementptr inbounds i64, i64* %0, i32 15, !dbg !2252
  call void @llvm.dbg.value(metadata i64* %4, metadata !2242, metadata !DIExpression()), !dbg !2249
  call void @llvm.dbg.value(metadata i64 0, metadata !2243, metadata !DIExpression()), !dbg !2249
  call fastcc void @Hacl_Lib_Create64_make_h64_5(i64* noundef %0, i64 noundef 0, i64 noundef 0, i64 noundef 0, i64 noundef 0, i64 noundef 0), !dbg !2253
  call void @llvm.dbg.value(metadata i64 0, metadata !2244, metadata !DIExpression()), !dbg !2249
  call void @llvm.dbg.value(metadata i64 1, metadata !2245, metadata !DIExpression()), !dbg !2249
  call fastcc void @Hacl_Lib_Create64_make_h64_5(i64* noundef nonnull %2, i64 noundef 1, i64 noundef 0, i64 noundef 0, i64 noundef 0, i64 noundef 0), !dbg !2254
  call void @llvm.dbg.value(metadata i64 0, metadata !2246, metadata !DIExpression()), !dbg !2249
  call void @llvm.dbg.value(metadata i64 1, metadata !2247, metadata !DIExpression()), !dbg !2249
  call fastcc void @Hacl_Lib_Create64_make_h64_5(i64* noundef nonnull %3, i64 noundef 1, i64 noundef 0, i64 noundef 0, i64 noundef 0, i64 noundef 0), !dbg !2255
  call void @llvm.dbg.value(metadata i64 0, metadata !2248, metadata !DIExpression()), !dbg !2249
  call fastcc void @Hacl_Lib_Create64_make_h64_5(i64* noundef nonnull %4, i64 noundef 0, i64 noundef 0, i64 noundef 0, i64 noundef 0, i64 noundef 0), !dbg !2256
  ret void, !dbg !2257
}

; Function Attrs: mustprogress nofree noinline nosync nounwind uwtable willreturn
define internal fastcc void @Hacl_Impl_Ed25519_SwapConditional_copy(i64* nocapture noundef writeonly %0, i64* nocapture noundef readonly %1) unnamed_addr #5 !dbg !2258 {
  call void @llvm.dbg.value(metadata i64* %0, metadata !2260, metadata !DIExpression()), !dbg !2262
  call void @llvm.dbg.value(metadata i64* %1, metadata !2261, metadata !DIExpression()), !dbg !2262
  %3 = bitcast i64* %0 to i8*, !dbg !2263
  %4 = bitcast i64* %1 to i8*, !dbg !2263
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* noundef nonnull align 4 dereferenceable(160) %3, i8* noundef nonnull align 4 dereferenceable(160) %4, i32 160, i1 false), !dbg !2263
  ret void, !dbg !2264
}

; Function Attrs: noinline nounwind uwtable
define internal fastcc void @Hacl_Impl_Ed25519_Ladder_point_mul_(i64* noundef %0, i8* nocapture noundef readonly %1) unnamed_addr #0 !dbg !2265 {
  call void @llvm.dbg.value(metadata i64* %0, metadata !2267, metadata !DIExpression()), !dbg !2271
  call void @llvm.dbg.value(metadata i8* %1, metadata !2268, metadata !DIExpression()), !dbg !2271
  call void @llvm.dbg.value(metadata i32 0, metadata !2269, metadata !DIExpression()), !dbg !2272
  br label %4, !dbg !2273

3:                                                ; preds = %4
  ret void, !dbg !2274

4:                                                ; preds = %2, %4
  %5 = phi i32 [ 0, %2 ], [ %7, %4 ]
  call void @llvm.dbg.value(metadata i32 %5, metadata !2269, metadata !DIExpression()), !dbg !2272
  %6 = sub nuw nsw i32 255, %5, !dbg !2275
  call fastcc void @Hacl_Impl_Ed25519_Ladder_Step_loop_step(i64* noundef %0, i8* noundef %1, i32 noundef %6), !dbg !2277
  %7 = add nuw nsw i32 %5, 1, !dbg !2278
  call void @llvm.dbg.value(metadata i32 %7, metadata !2269, metadata !DIExpression()), !dbg !2272
  %8 = icmp eq i32 %7, 256, !dbg !2279
  br i1 %8, label %3, label %4, !dbg !2273, !llvm.loop !2280
}

; Function Attrs: noinline nounwind uwtable
define internal fastcc void @Hacl_Impl_Ed25519_Ladder_Step_loop_step(i64* noundef %0, i8* nocapture noundef readonly %1, i32 noundef %2) unnamed_addr #0 !dbg !2282 {
  call void @llvm.dbg.value(metadata i64* %0, metadata !2284, metadata !DIExpression()), !dbg !2288
  call void @llvm.dbg.value(metadata i8* %1, metadata !2285, metadata !DIExpression()), !dbg !2288
  call void @llvm.dbg.value(metadata i32 %2, metadata !2286, metadata !DIExpression()), !dbg !2288
  %4 = call fastcc zeroext i8 @Hacl_Impl_Ed25519_Ladder_Step_ith_bit(i8* noundef %1, i32 noundef %2), !dbg !2289, !range !2290
  call void @llvm.dbg.value(metadata i8 %4, metadata !2287, metadata !DIExpression()), !dbg !2288
  call fastcc void @Hacl_Impl_Ed25519_Ladder_Step_loop_step_1(i64* noundef %0, i8 noundef zeroext %4), !dbg !2291
  call fastcc void @Hacl_Impl_Ed25519_Ladder_Step_loop_step_2(i64* noundef %0), !dbg !2292
  call fastcc void @Hacl_Impl_Ed25519_Ladder_Step_loop_step_3(i64* noundef %0, i8 noundef zeroext %4), !dbg !2293
  ret void, !dbg !2294
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readonly uwtable willreturn
define internal fastcc zeroext i8 @Hacl_Impl_Ed25519_Ladder_Step_ith_bit(i8* nocapture noundef readonly %0, i32 noundef %1) unnamed_addr #10 !dbg !2295 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !2299, metadata !DIExpression()), !dbg !2304
  call void @llvm.dbg.value(metadata i32 %1, metadata !2300, metadata !DIExpression()), !dbg !2304
  %3 = lshr i32 %1, 3, !dbg !2305
  call void @llvm.dbg.value(metadata i32 %3, metadata !2301, metadata !DIExpression()), !dbg !2304
  %4 = and i32 %1, 7, !dbg !2306
  call void @llvm.dbg.value(metadata i32 %4, metadata !2302, metadata !DIExpression()), !dbg !2304
  %5 = getelementptr inbounds i8, i8* %0, i32 %3, !dbg !2307
  %6 = load i8, i8* %5, align 1, !dbg !2307, !tbaa !276
  call void @llvm.dbg.value(metadata i8 %6, metadata !2303, metadata !DIExpression()), !dbg !2304
  %7 = zext i8 %6 to i32, !dbg !2308
  %8 = lshr i32 %7, %4, !dbg !2309
  %9 = trunc i32 %8 to i8, !dbg !2308
  %10 = and i8 %9, 1, !dbg !2308
  ret i8 %10, !dbg !2310
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind uwtable willreturn
define internal fastcc void @Hacl_Impl_Ed25519_Ladder_Step_loop_step_1(i64* noundef %0, i8 noundef zeroext %1) unnamed_addr #4 !dbg !2311 {
  call void @llvm.dbg.value(metadata i64* %0, metadata !2315, metadata !DIExpression()), !dbg !2322
  call void @llvm.dbg.value(metadata i8* undef, metadata !2316, metadata !DIExpression()), !dbg !2322
  call void @llvm.dbg.value(metadata i32 undef, metadata !2317, metadata !DIExpression()), !dbg !2322
  call void @llvm.dbg.value(metadata i8 %1, metadata !2318, metadata !DIExpression()), !dbg !2322
  call void @llvm.dbg.value(metadata i64* %0, metadata !2319, metadata !DIExpression()), !dbg !2322
  %3 = getelementptr inbounds i64, i64* %0, i32 20, !dbg !2323
  call void @llvm.dbg.value(metadata i64* %3, metadata !2320, metadata !DIExpression()), !dbg !2322
  %4 = zext i8 %1 to i64, !dbg !2324
  call void @llvm.dbg.value(metadata i64 %4, metadata !2321, metadata !DIExpression()), !dbg !2322
  call fastcc void @Hacl_Impl_Ed25519_Ladder_Step_swap_cond_inplace(i64* noundef %0, i64* noundef nonnull %3, i64 noundef %4), !dbg !2325
  ret void, !dbg !2326
}

; Function Attrs: noinline nounwind uwtable
define internal fastcc void @Hacl_Impl_Ed25519_Ladder_Step_loop_step_2(i64* noundef %0) unnamed_addr #0 !dbg !2327 {
  call void @llvm.dbg.value(metadata i64* %0, metadata !2329, metadata !DIExpression()), !dbg !2336
  call void @llvm.dbg.value(metadata i8* undef, metadata !2330, metadata !DIExpression()), !dbg !2336
  call void @llvm.dbg.value(metadata i32 undef, metadata !2331, metadata !DIExpression()), !dbg !2336
  call void @llvm.dbg.value(metadata i64* %0, metadata !2332, metadata !DIExpression()), !dbg !2336
  %2 = getelementptr inbounds i64, i64* %0, i32 20, !dbg !2337
  call void @llvm.dbg.value(metadata i64* %2, metadata !2333, metadata !DIExpression()), !dbg !2336
  %3 = getelementptr inbounds i64, i64* %0, i32 40, !dbg !2338
  call void @llvm.dbg.value(metadata i64* %3, metadata !2334, metadata !DIExpression()), !dbg !2336
  %4 = getelementptr inbounds i64, i64* %0, i32 60, !dbg !2339
  call void @llvm.dbg.value(metadata i64* %4, metadata !2335, metadata !DIExpression()), !dbg !2336
  call fastcc void @Hacl_Impl_Ed25519_PointDouble_point_double(i64* noundef nonnull %3, i64* noundef %0), !dbg !2340
  call fastcc void @Hacl_Impl_Ed25519_PointAdd_point_add(i64* noundef nonnull %4, i64* noundef %0, i64* noundef nonnull %2), !dbg !2341
  ret void, !dbg !2342
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind uwtable willreturn
define internal fastcc void @Hacl_Impl_Ed25519_Ladder_Step_loop_step_3(i64* noundef %0, i8 noundef zeroext %1) unnamed_addr #4 !dbg !2343 {
  call void @llvm.dbg.value(metadata i64* %0, metadata !2345, metadata !DIExpression()), !dbg !2354
  call void @llvm.dbg.value(metadata i8* undef, metadata !2346, metadata !DIExpression()), !dbg !2354
  call void @llvm.dbg.value(metadata i32 undef, metadata !2347, metadata !DIExpression()), !dbg !2354
  call void @llvm.dbg.value(metadata i8 %1, metadata !2348, metadata !DIExpression()), !dbg !2354
  call void @llvm.dbg.value(metadata i64* %0, metadata !2349, metadata !DIExpression()), !dbg !2354
  %3 = getelementptr inbounds i64, i64* %0, i32 20, !dbg !2355
  call void @llvm.dbg.value(metadata i64* %3, metadata !2350, metadata !DIExpression()), !dbg !2354
  %4 = getelementptr inbounds i64, i64* %0, i32 40, !dbg !2356
  call void @llvm.dbg.value(metadata i64* %4, metadata !2351, metadata !DIExpression()), !dbg !2354
  %5 = getelementptr inbounds i64, i64* %0, i32 60, !dbg !2357
  call void @llvm.dbg.value(metadata i64* %5, metadata !2352, metadata !DIExpression()), !dbg !2354
  %6 = zext i8 %1 to i64, !dbg !2358
  call void @llvm.dbg.value(metadata i64 %6, metadata !2353, metadata !DIExpression()), !dbg !2354
  call fastcc void @Hacl_Impl_Ed25519_Ladder_Step_swap_cond(i64* noundef %0, i64* noundef nonnull %3, i64* noundef nonnull %4, i64* noundef nonnull %5, i64 noundef %6), !dbg !2359
  ret void, !dbg !2360
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind uwtable willreturn
define internal fastcc void @Hacl_Impl_Ed25519_Ladder_Step_swap_cond_inplace(i64* noundef %0, i64* noundef %1, i64 noundef %2) unnamed_addr #4 !dbg !2361 {
  call void @llvm.dbg.value(metadata i64* %0, metadata !2365, metadata !DIExpression()), !dbg !2368
  call void @llvm.dbg.value(metadata i64* %1, metadata !2366, metadata !DIExpression()), !dbg !2368
  call void @llvm.dbg.value(metadata i64 %2, metadata !2367, metadata !DIExpression()), !dbg !2368
  call fastcc void @Hacl_Impl_Ed25519_SwapConditional_swap_conditional_inplace(i64* noundef %0, i64* noundef %1, i64 noundef %2), !dbg !2369
  ret void, !dbg !2370
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind uwtable willreturn
define internal fastcc void @Hacl_Impl_Ed25519_SwapConditional_swap_conditional_inplace(i64* noundef %0, i64* noundef %1, i64 noundef %2) unnamed_addr #4 !dbg !2371 {
  call void @llvm.dbg.value(metadata i64* %0, metadata !2373, metadata !DIExpression()), !dbg !2377
  call void @llvm.dbg.value(metadata i64* %1, metadata !2374, metadata !DIExpression()), !dbg !2377
  call void @llvm.dbg.value(metadata i64 %2, metadata !2375, metadata !DIExpression()), !dbg !2377
  %4 = sub i64 0, %2, !dbg !2378
  call void @llvm.dbg.value(metadata i64 %4, metadata !2376, metadata !DIExpression()), !dbg !2377
  call fastcc void @Hacl_Impl_Ed25519_SwapConditional_swap_conditional_step(i64* noundef %0, i64* noundef %1, i64* noundef %0, i64* noundef %1, i64 noundef %4), !dbg !2379
  %5 = call fastcc i64* @Hacl_Impl_Ed25519_ExtPoint_gety(i64* noundef %0), !dbg !2380
  %6 = call fastcc i64* @Hacl_Impl_Ed25519_ExtPoint_gety(i64* noundef %1), !dbg !2381
  call fastcc void @Hacl_Impl_Ed25519_SwapConditional_swap_conditional_step(i64* noundef nonnull %5, i64* noundef nonnull %6, i64* noundef nonnull %5, i64* noundef nonnull %6, i64 noundef %4), !dbg !2382
  %7 = call fastcc i64* @Hacl_Impl_Ed25519_ExtPoint_getz(i64* noundef %0), !dbg !2383
  %8 = call fastcc i64* @Hacl_Impl_Ed25519_ExtPoint_getz(i64* noundef %1), !dbg !2384
  call fastcc void @Hacl_Impl_Ed25519_SwapConditional_swap_conditional_step(i64* noundef nonnull %7, i64* noundef nonnull %8, i64* noundef nonnull %7, i64* noundef nonnull %8, i64 noundef %4), !dbg !2385
  %9 = call fastcc i64* @Hacl_Impl_Ed25519_ExtPoint_gett(i64* noundef %0), !dbg !2386
  %10 = call fastcc i64* @Hacl_Impl_Ed25519_ExtPoint_gett(i64* noundef %1), !dbg !2387
  call fastcc void @Hacl_Impl_Ed25519_SwapConditional_swap_conditional_step(i64* noundef nonnull %9, i64* noundef nonnull %10, i64* noundef nonnull %9, i64* noundef nonnull %10, i64 noundef %4), !dbg !2388
  ret void, !dbg !2389
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind uwtable willreturn
define internal fastcc void @Hacl_Impl_Ed25519_SwapConditional_swap_conditional_step(i64* nocapture noundef writeonly %0, i64* nocapture noundef writeonly %1, i64* nocapture noundef readonly %2, i64* nocapture noundef readonly %3, i64 noundef %4) unnamed_addr #4 !dbg !2390 {
  call void @llvm.dbg.value(metadata i64* %0, metadata !2394, metadata !DIExpression()), !dbg !2424
  call void @llvm.dbg.value(metadata i64* %1, metadata !2395, metadata !DIExpression()), !dbg !2424
  call void @llvm.dbg.value(metadata i64* %2, metadata !2396, metadata !DIExpression()), !dbg !2424
  call void @llvm.dbg.value(metadata i64* %3, metadata !2397, metadata !DIExpression()), !dbg !2424
  call void @llvm.dbg.value(metadata i64 %4, metadata !2398, metadata !DIExpression()), !dbg !2424
  %6 = load i64, i64* %2, align 4, !dbg !2425, !tbaa !181
  call void @llvm.dbg.value(metadata i64 %6, metadata !2399, metadata !DIExpression()), !dbg !2424
  %7 = getelementptr inbounds i64, i64* %2, i32 1, !dbg !2426
  %8 = load i64, i64* %7, align 4, !dbg !2426, !tbaa !181
  call void @llvm.dbg.value(metadata i64 %8, metadata !2400, metadata !DIExpression()), !dbg !2424
  %9 = getelementptr inbounds i64, i64* %2, i32 2, !dbg !2427
  %10 = load i64, i64* %9, align 4, !dbg !2427, !tbaa !181
  call void @llvm.dbg.value(metadata i64 %10, metadata !2401, metadata !DIExpression()), !dbg !2424
  %11 = getelementptr inbounds i64, i64* %2, i32 3, !dbg !2428
  %12 = load i64, i64* %11, align 4, !dbg !2428, !tbaa !181
  call void @llvm.dbg.value(metadata i64 %12, metadata !2402, metadata !DIExpression()), !dbg !2424
  %13 = getelementptr inbounds i64, i64* %2, i32 4, !dbg !2429
  %14 = load i64, i64* %13, align 4, !dbg !2429, !tbaa !181
  call void @llvm.dbg.value(metadata i64 %14, metadata !2403, metadata !DIExpression()), !dbg !2424
  %15 = load i64, i64* %3, align 4, !dbg !2430, !tbaa !181
  call void @llvm.dbg.value(metadata i64 %15, metadata !2404, metadata !DIExpression()), !dbg !2424
  %16 = getelementptr inbounds i64, i64* %3, i32 1, !dbg !2431
  %17 = load i64, i64* %16, align 4, !dbg !2431, !tbaa !181
  call void @llvm.dbg.value(metadata i64 %17, metadata !2405, metadata !DIExpression()), !dbg !2424
  %18 = getelementptr inbounds i64, i64* %3, i32 2, !dbg !2432
  %19 = load i64, i64* %18, align 4, !dbg !2432, !tbaa !181
  call void @llvm.dbg.value(metadata i64 %19, metadata !2406, metadata !DIExpression()), !dbg !2424
  %20 = getelementptr inbounds i64, i64* %3, i32 3, !dbg !2433
  %21 = load i64, i64* %20, align 4, !dbg !2433, !tbaa !181
  call void @llvm.dbg.value(metadata i64 %21, metadata !2407, metadata !DIExpression()), !dbg !2424
  %22 = getelementptr inbounds i64, i64* %3, i32 4, !dbg !2434
  %23 = load i64, i64* %22, align 4, !dbg !2434, !tbaa !181
  call void @llvm.dbg.value(metadata i64 %23, metadata !2408, metadata !DIExpression()), !dbg !2424
  %24 = xor i64 %15, %6, !dbg !2435
  %25 = and i64 %24, %4, !dbg !2436
  call void @llvm.dbg.value(metadata i64 %25, metadata !2409, metadata !DIExpression()), !dbg !2424
  %26 = xor i64 %17, %8, !dbg !2437
  %27 = and i64 %26, %4, !dbg !2438
  call void @llvm.dbg.value(metadata i64 %27, metadata !2410, metadata !DIExpression()), !dbg !2424
  %28 = xor i64 %19, %10, !dbg !2439
  %29 = and i64 %28, %4, !dbg !2440
  call void @llvm.dbg.value(metadata i64 %29, metadata !2411, metadata !DIExpression()), !dbg !2424
  %30 = xor i64 %21, %12, !dbg !2441
  %31 = and i64 %30, %4, !dbg !2442
  call void @llvm.dbg.value(metadata i64 %31, metadata !2412, metadata !DIExpression()), !dbg !2424
  %32 = xor i64 %23, %14, !dbg !2443
  %33 = and i64 %32, %4, !dbg !2444
  call void @llvm.dbg.value(metadata i64 %33, metadata !2413, metadata !DIExpression()), !dbg !2424
  %34 = xor i64 %25, %6, !dbg !2445
  call void @llvm.dbg.value(metadata i64 %34, metadata !2414, metadata !DIExpression()), !dbg !2424
  %35 = xor i64 %25, %15, !dbg !2446
  call void @llvm.dbg.value(metadata i64 %35, metadata !2415, metadata !DIExpression()), !dbg !2424
  %36 = xor i64 %27, %8, !dbg !2447
  call void @llvm.dbg.value(metadata i64 %36, metadata !2416, metadata !DIExpression()), !dbg !2424
  %37 = xor i64 %27, %17, !dbg !2448
  call void @llvm.dbg.value(metadata i64 %37, metadata !2417, metadata !DIExpression()), !dbg !2424
  %38 = xor i64 %29, %10, !dbg !2449
  call void @llvm.dbg.value(metadata i64 %38, metadata !2418, metadata !DIExpression()), !dbg !2424
  %39 = xor i64 %29, %19, !dbg !2450
  call void @llvm.dbg.value(metadata i64 %39, metadata !2419, metadata !DIExpression()), !dbg !2424
  %40 = xor i64 %31, %12, !dbg !2451
  call void @llvm.dbg.value(metadata i64 %40, metadata !2420, metadata !DIExpression()), !dbg !2424
  %41 = xor i64 %31, %21, !dbg !2452
  call void @llvm.dbg.value(metadata i64 %41, metadata !2421, metadata !DIExpression()), !dbg !2424
  %42 = xor i64 %33, %14, !dbg !2453
  call void @llvm.dbg.value(metadata i64 %42, metadata !2422, metadata !DIExpression()), !dbg !2424
  %43 = xor i64 %33, %23, !dbg !2454
  call void @llvm.dbg.value(metadata i64 %43, metadata !2423, metadata !DIExpression()), !dbg !2424
  call fastcc void @Hacl_Lib_Create64_make_h64_5(i64* noundef %0, i64 noundef %34, i64 noundef %36, i64 noundef %38, i64 noundef %40, i64 noundef %42), !dbg !2455
  call fastcc void @Hacl_Lib_Create64_make_h64_5(i64* noundef %1, i64 noundef %35, i64 noundef %37, i64 noundef %39, i64 noundef %41, i64 noundef %43), !dbg !2456
  ret void, !dbg !2457
}

; Function Attrs: noinline nounwind uwtable
define internal fastcc void @Hacl_Impl_Ed25519_PointDouble_point_double(i64* noundef %0, i64* noundef %1) unnamed_addr #0 !dbg !2458 {
  %3 = alloca [30 x i64], align 8
  call void @llvm.dbg.value(metadata i64* %0, metadata !2460, metadata !DIExpression()), !dbg !2466
  call void @llvm.dbg.value(metadata i64* %1, metadata !2461, metadata !DIExpression()), !dbg !2466
  %4 = bitcast [30 x i64]* %3 to i8*, !dbg !2467
  call void @llvm.lifetime.start.p0i8(i64 240, i8* nonnull %4) #14, !dbg !2467
  call void @llvm.dbg.declare(metadata [30 x i64]* %3, metadata !2462, metadata !DIExpression()), !dbg !2468
  call void @llvm.memset.p0i8.i32(i8* noundef nonnull align 8 dereferenceable(240) %4, i8 0, i32 240, i1 false), !dbg !2468
  %5 = getelementptr inbounds [30 x i64], [30 x i64]* %3, i32 0, i32 0, !dbg !2469
  call fastcc void @Hacl_Impl_Ed25519_PointDouble_point_double_(i64* noundef %0, i64* noundef %1, i64* noundef nonnull %5), !dbg !2470
  call void @llvm.lifetime.end.p0i8(i64 240, i8* nonnull %4) #14, !dbg !2471
  ret void, !dbg !2471
}

; Function Attrs: noinline nounwind uwtable
define internal fastcc void @Hacl_Impl_Ed25519_PointAdd_point_add(i64* noundef %0, i64* noundef readonly %1, i64* noundef readonly %2) unnamed_addr #0 !dbg !2472 {
  %4 = alloca [30 x i64], align 8
  call void @llvm.dbg.value(metadata i64* %0, metadata !2474, metadata !DIExpression()), !dbg !2509
  call void @llvm.dbg.value(metadata i64* %1, metadata !2475, metadata !DIExpression()), !dbg !2509
  call void @llvm.dbg.value(metadata i64* %2, metadata !2476, metadata !DIExpression()), !dbg !2509
  %5 = bitcast [30 x i64]* %4 to i8*, !dbg !2510
  call void @llvm.lifetime.start.p0i8(i64 240, i8* nonnull %5) #14, !dbg !2510
  call void @llvm.dbg.declare(metadata [30 x i64]* %4, metadata !2477, metadata !DIExpression()), !dbg !2511
  %6 = getelementptr inbounds [30 x i64], [30 x i64]* %4, i32 0, i32 0, !dbg !2512
  call void @llvm.dbg.value(metadata i64* %6, metadata !2478, metadata !DIExpression()), !dbg !2509
  %7 = getelementptr inbounds [30 x i64], [30 x i64]* %4, i32 0, i32 5, !dbg !2513
  call void @llvm.dbg.value(metadata i64* %7, metadata !2479, metadata !DIExpression()), !dbg !2509
  %8 = getelementptr inbounds [30 x i64], [30 x i64]* %4, i32 0, i32 10, !dbg !2514
  call void @llvm.dbg.value(metadata i64* %8, metadata !2480, metadata !DIExpression()), !dbg !2509
  %9 = getelementptr inbounds [30 x i64], [30 x i64]* %4, i32 0, i32 15, !dbg !2515
  call void @llvm.dbg.value(metadata i64* %9, metadata !2481, metadata !DIExpression()), !dbg !2509
  call void @llvm.dbg.value(metadata i64* %1, metadata !2482, metadata !DIExpression()), !dbg !2509
  %10 = call fastcc i64* @Hacl_Impl_Ed25519_ExtPoint_gety(i64* noundef %1), !dbg !2516
  call void @llvm.dbg.value(metadata i64* %10, metadata !2483, metadata !DIExpression()), !dbg !2509
  call void @llvm.dbg.value(metadata i64* %2, metadata !2484, metadata !DIExpression()), !dbg !2509
  %11 = call fastcc i64* @Hacl_Impl_Ed25519_ExtPoint_gety(i64* noundef %2), !dbg !2517
  call void @llvm.dbg.value(metadata i64* %11, metadata !2485, metadata !DIExpression()), !dbg !2509
  %12 = bitcast i64* %1 to i8*, !dbg !2518
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* noundef nonnull align 8 dereferenceable(40) %5, i8* noundef nonnull align 4 dereferenceable(40) %12, i32 40, i1 false), !dbg !2518
  %13 = bitcast i64* %7 to i8*, !dbg !2519
  %14 = bitcast i64* %2 to i8*, !dbg !2519
  %15 = getelementptr inbounds [30 x i64], [30 x i64]* %4, i32 0, i32 10, !dbg !2519
  %16 = bitcast i64* %15 to i8*, !dbg !2519
  call void @llvm.memset.p0i8.i32(i8* noundef nonnull align 8 dereferenceable(160) %16, i8 0, i32 160, i1 false), !dbg !2519
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* noundef nonnull align 8 dereferenceable(40) %13, i8* noundef nonnull align 4 dereferenceable(40) %14, i32 40, i1 false), !dbg !2519
  call fastcc void @Hacl_Bignum25519_fdifference_reduced(i64* noundef nonnull %6, i64* noundef nonnull %10), !dbg !2520
  call fastcc void @Hacl_Bignum25519_fdifference(i64* noundef nonnull %7, i64* noundef nonnull %11), !dbg !2521
  call fastcc void @Hacl_Bignum25519_fmul(i64* noundef nonnull %8, i64* noundef nonnull %6, i64* noundef nonnull %7), !dbg !2522
  %17 = bitcast i64* %10 to i8*, !dbg !2523
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* noundef nonnull align 8 dereferenceable(40) %5, i8* noundef nonnull align 4 dereferenceable(40) %17, i32 40, i1 false), !dbg !2523
  %18 = bitcast i64* %11 to i8*, !dbg !2524
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* noundef nonnull align 8 dereferenceable(40) %13, i8* noundef nonnull align 4 dereferenceable(40) %18, i32 40, i1 false), !dbg !2524
  call fastcc void @Hacl_Bignum25519_fsum(i64* noundef nonnull %6, i64* noundef %1), !dbg !2525
  call fastcc void @Hacl_Bignum25519_fsum(i64* noundef nonnull %7, i64* noundef %2), !dbg !2526
  call fastcc void @Hacl_Bignum25519_fmul(i64* noundef nonnull %9, i64* noundef nonnull %6, i64* noundef nonnull %7), !dbg !2527
  call void @llvm.dbg.value(metadata i64* %6, metadata !2486, metadata !DIExpression()), !dbg !2509
  call void @llvm.dbg.value(metadata i64* %7, metadata !2487, metadata !DIExpression()), !dbg !2509
  call void @llvm.dbg.value(metadata i64* %8, metadata !2488, metadata !DIExpression()), !dbg !2509
  %19 = getelementptr inbounds [30 x i64], [30 x i64]* %4, i32 0, i32 20, !dbg !2528
  call void @llvm.dbg.value(metadata i64* %19, metadata !2489, metadata !DIExpression()), !dbg !2509
  %20 = getelementptr inbounds [30 x i64], [30 x i64]* %4, i32 0, i32 25, !dbg !2529
  call void @llvm.dbg.value(metadata i64* %20, metadata !2490, metadata !DIExpression()), !dbg !2509
  %21 = call fastcc i64* @Hacl_Impl_Ed25519_ExtPoint_getz(i64* noundef %1), !dbg !2530
  call void @llvm.dbg.value(metadata i64* %21, metadata !2491, metadata !DIExpression()), !dbg !2509
  %22 = call fastcc i64* @Hacl_Impl_Ed25519_ExtPoint_gett(i64* noundef %1), !dbg !2531
  call void @llvm.dbg.value(metadata i64* %22, metadata !2492, metadata !DIExpression()), !dbg !2509
  %23 = call fastcc i64* @Hacl_Impl_Ed25519_ExtPoint_getz(i64* noundef %2), !dbg !2532
  call void @llvm.dbg.value(metadata i64* %23, metadata !2493, metadata !DIExpression()), !dbg !2509
  %24 = call fastcc i64* @Hacl_Impl_Ed25519_ExtPoint_gett(i64* noundef %2), !dbg !2533
  call void @llvm.dbg.value(metadata i64* %24, metadata !2494, metadata !DIExpression()), !dbg !2509
  call fastcc void @Hacl_Bignum25519_times_2d(i64* noundef nonnull %6, i64* noundef nonnull %22), !dbg !2534
  call fastcc void @Hacl_Bignum25519_fmul(i64* noundef nonnull %7, i64* noundef nonnull %6, i64* noundef nonnull %24), !dbg !2535
  call fastcc void @Hacl_Bignum25519_times_2(i64* noundef nonnull %6, i64* noundef nonnull %21), !dbg !2536
  call fastcc void @Hacl_Bignum25519_fmul(i64* noundef nonnull %19, i64* noundef nonnull %6, i64* noundef nonnull %23), !dbg !2537
  %25 = bitcast i64* %8 to i8*, !dbg !2538
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* noundef nonnull align 8 dereferenceable(40) %5, i8* noundef nonnull align 8 dereferenceable(40) %25, i32 40, i1 false), !dbg !2538
  %26 = bitcast i64* %20 to i8*, !dbg !2539
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* noundef nonnull align 8 dereferenceable(40) %26, i8* noundef nonnull align 8 dereferenceable(40) %13, i32 40, i1 false), !dbg !2539
  call void @llvm.dbg.value(metadata i64* %6, metadata !2495, metadata !DIExpression()), !dbg !2509
  call void @llvm.dbg.value(metadata i64* %7, metadata !2496, metadata !DIExpression()), !dbg !2509
  call void @llvm.dbg.value(metadata i64* %8, metadata !2497, metadata !DIExpression()), !dbg !2509
  call void @llvm.dbg.value(metadata i64* %9, metadata !2498, metadata !DIExpression()), !dbg !2509
  call void @llvm.dbg.value(metadata i64* %19, metadata !2499, metadata !DIExpression()), !dbg !2509
  call void @llvm.dbg.value(metadata i64* %20, metadata !2500, metadata !DIExpression()), !dbg !2509
  call fastcc void @Hacl_Bignum25519_fdifference_reduced(i64* noundef nonnull %6, i64* noundef nonnull %9), !dbg !2540
  call fastcc void @Hacl_Bignum25519_fdifference(i64* noundef nonnull %20, i64* noundef nonnull %19), !dbg !2541
  call fastcc void @Hacl_Bignum25519_fsum(i64* noundef nonnull %19, i64* noundef nonnull %7), !dbg !2542
  call fastcc void @Hacl_Bignum25519_fsum(i64* noundef nonnull %9, i64* noundef nonnull %8), !dbg !2543
  call void @llvm.dbg.value(metadata i64* %6, metadata !2501, metadata !DIExpression()), !dbg !2509
  call void @llvm.dbg.value(metadata i64* %9, metadata !2502, metadata !DIExpression()), !dbg !2509
  call void @llvm.dbg.value(metadata i64* %19, metadata !2503, metadata !DIExpression()), !dbg !2509
  call void @llvm.dbg.value(metadata i64* %20, metadata !2504, metadata !DIExpression()), !dbg !2509
  call void @llvm.dbg.value(metadata i64* %0, metadata !2505, metadata !DIExpression()), !dbg !2509
  %27 = call fastcc i64* @Hacl_Impl_Ed25519_ExtPoint_gety(i64* noundef %0), !dbg !2544
  call void @llvm.dbg.value(metadata i64* %27, metadata !2506, metadata !DIExpression()), !dbg !2509
  %28 = call fastcc i64* @Hacl_Impl_Ed25519_ExtPoint_getz(i64* noundef %0), !dbg !2545
  call void @llvm.dbg.value(metadata i64* %28, metadata !2507, metadata !DIExpression()), !dbg !2509
  %29 = call fastcc i64* @Hacl_Impl_Ed25519_ExtPoint_gett(i64* noundef %0), !dbg !2546
  call void @llvm.dbg.value(metadata i64* %29, metadata !2508, metadata !DIExpression()), !dbg !2509
  call fastcc void @Hacl_Bignum25519_fmul(i64* noundef %0, i64* noundef nonnull %6, i64* noundef nonnull %20), !dbg !2547
  call fastcc void @Hacl_Bignum25519_fmul(i64* noundef nonnull %27, i64* noundef nonnull %19, i64* noundef nonnull %9), !dbg !2548
  call fastcc void @Hacl_Bignum25519_fmul(i64* noundef nonnull %29, i64* noundef nonnull %6, i64* noundef nonnull %9), !dbg !2549
  call fastcc void @Hacl_Bignum25519_fmul(i64* noundef nonnull %28, i64* noundef nonnull %19, i64* noundef nonnull %20), !dbg !2550
  call void @llvm.lifetime.end.p0i8(i64 240, i8* nonnull %5) #14, !dbg !2551
  ret void, !dbg !2551
}

; Function Attrs: noinline nounwind uwtable
define internal fastcc void @Hacl_Impl_Ed25519_PointDouble_point_double_(i64* noundef %0, i64* noundef %1, i64* nocapture noundef %2) unnamed_addr #0 !dbg !2552 {
  call void @llvm.dbg.value(metadata i64* %0, metadata !2554, metadata !DIExpression()), !dbg !2565
  call void @llvm.dbg.value(metadata i64* %1, metadata !2555, metadata !DIExpression()), !dbg !2565
  call void @llvm.dbg.value(metadata i64* %2, metadata !2556, metadata !DIExpression()), !dbg !2565
  %4 = getelementptr inbounds i64, i64* %2, i32 5, !dbg !2566
  call void @llvm.dbg.value(metadata i64* %4, metadata !2557, metadata !DIExpression()), !dbg !2565
  %5 = getelementptr inbounds i64, i64* %2, i32 10, !dbg !2567
  call void @llvm.dbg.value(metadata i64* %5, metadata !2558, metadata !DIExpression()), !dbg !2565
  %6 = getelementptr inbounds i64, i64* %2, i32 15, !dbg !2568
  call void @llvm.dbg.value(metadata i64* %6, metadata !2559, metadata !DIExpression()), !dbg !2565
  %7 = getelementptr inbounds i64, i64* %2, i32 25, !dbg !2569
  call void @llvm.dbg.value(metadata i64* %7, metadata !2560, metadata !DIExpression()), !dbg !2565
  call void @llvm.dbg.value(metadata i64* %0, metadata !2561, metadata !DIExpression()), !dbg !2565
  %8 = call fastcc i64* @Hacl_Impl_Ed25519_ExtPoint_gety(i64* noundef %0), !dbg !2570
  call void @llvm.dbg.value(metadata i64* %8, metadata !2562, metadata !DIExpression()), !dbg !2565
  %9 = call fastcc i64* @Hacl_Impl_Ed25519_ExtPoint_getz(i64* noundef %0), !dbg !2571
  call void @llvm.dbg.value(metadata i64* %9, metadata !2563, metadata !DIExpression()), !dbg !2565
  %10 = call fastcc i64* @Hacl_Impl_Ed25519_ExtPoint_gett(i64* noundef %0), !dbg !2572
  call void @llvm.dbg.value(metadata i64* %10, metadata !2564, metadata !DIExpression()), !dbg !2565
  call fastcc void @Hacl_Impl_Ed25519_PointDouble_point_double_step_1(i64* noundef %1, i64* noundef %2), !dbg !2573
  call fastcc void @Hacl_Impl_Ed25519_PointDouble_point_double_step_2(i64* noundef %1, i64* noundef %2), !dbg !2574
  call fastcc void @Hacl_Bignum25519_fmul(i64* noundef %0, i64* noundef nonnull %6, i64* noundef nonnull %7), !dbg !2575
  call fastcc void @Hacl_Bignum25519_fmul(i64* noundef nonnull %8, i64* noundef nonnull %4, i64* noundef nonnull %5), !dbg !2576
  call fastcc void @Hacl_Bignum25519_fmul(i64* noundef nonnull %10, i64* noundef nonnull %5, i64* noundef nonnull %7), !dbg !2577
  call fastcc void @Hacl_Bignum25519_fmul(i64* noundef nonnull %9, i64* noundef nonnull %6, i64* noundef nonnull %4), !dbg !2578
  ret void, !dbg !2579
}

; Function Attrs: noinline nounwind uwtable
define internal fastcc void @Hacl_Impl_Ed25519_PointDouble_point_double_step_1(i64* noundef readonly %0, i64* nocapture noundef %1) unnamed_addr #0 !dbg !2580 {
  call void @llvm.dbg.value(metadata i64* %0, metadata !2582, metadata !DIExpression()), !dbg !2591
  call void @llvm.dbg.value(metadata i64* %1, metadata !2583, metadata !DIExpression()), !dbg !2591
  call void @llvm.dbg.value(metadata i64* %1, metadata !2584, metadata !DIExpression()), !dbg !2591
  %3 = getelementptr inbounds i64, i64* %1, i32 5, !dbg !2592
  call void @llvm.dbg.value(metadata i64* %3, metadata !2585, metadata !DIExpression()), !dbg !2591
  %4 = getelementptr inbounds i64, i64* %1, i32 10, !dbg !2593
  call void @llvm.dbg.value(metadata i64* %4, metadata !2586, metadata !DIExpression()), !dbg !2591
  %5 = getelementptr inbounds i64, i64* %1, i32 15, !dbg !2594
  call void @llvm.dbg.value(metadata i64* %5, metadata !2587, metadata !DIExpression()), !dbg !2591
  call void @llvm.dbg.value(metadata i64* %0, metadata !2588, metadata !DIExpression()), !dbg !2591
  %6 = call fastcc i64* @Hacl_Impl_Ed25519_ExtPoint_gety(i64* noundef %0), !dbg !2595
  call void @llvm.dbg.value(metadata i64* %6, metadata !2589, metadata !DIExpression()), !dbg !2591
  %7 = call fastcc i64* @Hacl_Impl_Ed25519_ExtPoint_getz(i64* noundef %0), !dbg !2596
  call void @llvm.dbg.value(metadata i64* %7, metadata !2590, metadata !DIExpression()), !dbg !2591
  call fastcc void @Hacl_Bignum25519_fsquare(i64* noundef %1, i64* noundef %0), !dbg !2597
  call fastcc void @Hacl_Bignum25519_fsquare(i64* noundef nonnull %3, i64* noundef nonnull %6), !dbg !2598
  call fastcc void @Hacl_Bignum25519_fsquare(i64* noundef nonnull %4, i64* noundef nonnull %7), !dbg !2599
  call fastcc void @Hacl_Bignum25519_times_2(i64* noundef nonnull %5, i64* noundef nonnull %4), !dbg !2600
  %8 = bitcast i64* %4 to i8*, !dbg !2601
  %9 = bitcast i64* %1 to i8*, !dbg !2601
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* noundef nonnull align 4 dereferenceable(40) %8, i8* noundef nonnull align 4 dereferenceable(40) %9, i32 40, i1 false), !dbg !2601
  call fastcc void @Hacl_Bignum25519_fsum(i64* noundef nonnull %4, i64* noundef nonnull %3), !dbg !2602
  call fastcc void @Hacl_Bignum25519_reduce_513(i64* noundef nonnull %4), !dbg !2603
  ret void, !dbg !2604
}

; Function Attrs: noinline nounwind uwtable
define internal fastcc void @Hacl_Impl_Ed25519_PointDouble_point_double_step_2(i64* noundef readonly %0, i64* nocapture noundef %1) unnamed_addr #0 !dbg !2605 {
  call void @llvm.dbg.value(metadata i64* %0, metadata !2607, metadata !DIExpression()), !dbg !2617
  call void @llvm.dbg.value(metadata i64* %1, metadata !2608, metadata !DIExpression()), !dbg !2617
  call void @llvm.dbg.value(metadata i64* %1, metadata !2609, metadata !DIExpression()), !dbg !2617
  %3 = getelementptr inbounds i64, i64* %1, i32 5, !dbg !2618
  call void @llvm.dbg.value(metadata i64* %3, metadata !2610, metadata !DIExpression()), !dbg !2617
  %4 = getelementptr inbounds i64, i64* %1, i32 10, !dbg !2619
  call void @llvm.dbg.value(metadata i64* %4, metadata !2611, metadata !DIExpression()), !dbg !2617
  %5 = getelementptr inbounds i64, i64* %1, i32 15, !dbg !2620
  call void @llvm.dbg.value(metadata i64* %5, metadata !2612, metadata !DIExpression()), !dbg !2617
  %6 = getelementptr inbounds i64, i64* %1, i32 20, !dbg !2621
  call void @llvm.dbg.value(metadata i64* %6, metadata !2613, metadata !DIExpression()), !dbg !2617
  %7 = getelementptr inbounds i64, i64* %1, i32 25, !dbg !2622
  call void @llvm.dbg.value(metadata i64* %7, metadata !2614, metadata !DIExpression()), !dbg !2617
  call void @llvm.dbg.value(metadata i64* %0, metadata !2615, metadata !DIExpression()), !dbg !2617
  %8 = call fastcc i64* @Hacl_Impl_Ed25519_ExtPoint_gety(i64* noundef %0), !dbg !2623
  call void @llvm.dbg.value(metadata i64* %8, metadata !2616, metadata !DIExpression()), !dbg !2617
  %9 = bitcast i64* %6 to i8*, !dbg !2624
  %10 = bitcast i64* %0 to i8*, !dbg !2624
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* noundef nonnull align 4 dereferenceable(40) %9, i8* noundef nonnull align 4 dereferenceable(40) %10, i32 40, i1 false), !dbg !2624
  call fastcc void @Hacl_Bignum25519_fsum(i64* noundef nonnull %6, i64* noundef nonnull %8), !dbg !2625
  call fastcc void @Hacl_Bignum25519_fsquare(i64* noundef nonnull %7, i64* noundef nonnull %6), !dbg !2626
  %11 = bitcast i64* %4 to i8*, !dbg !2627
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* noundef nonnull align 4 dereferenceable(40) %9, i8* noundef nonnull align 4 dereferenceable(40) %11, i32 40, i1 false), !dbg !2627
  call fastcc void @Hacl_Bignum25519_fdifference(i64* noundef nonnull %7, i64* noundef nonnull %6), !dbg !2628
  call fastcc void @Hacl_Bignum25519_fdifference_reduced(i64* noundef nonnull %3, i64* noundef %1), !dbg !2629
  call fastcc void @Hacl_Bignum25519_reduce_513(i64* noundef nonnull %5), !dbg !2630
  call fastcc void @Hacl_Bignum25519_fsum(i64* noundef nonnull %5, i64* noundef nonnull %3), !dbg !2631
  ret void, !dbg !2632
}

; Function Attrs: noinline nounwind uwtable
define internal fastcc void @Hacl_Bignum25519_fmul(i64* nocapture noundef %0, i64* nocapture noundef readonly %1, i64* nocapture noundef readonly %2) unnamed_addr #0 !dbg !2633 {
  call void @llvm.dbg.value(metadata i64* %0, metadata !2635, metadata !DIExpression()), !dbg !2638
  call void @llvm.dbg.value(metadata i64* %1, metadata !2636, metadata !DIExpression()), !dbg !2638
  call void @llvm.dbg.value(metadata i64* %2, metadata !2637, metadata !DIExpression()), !dbg !2638
  call fastcc void @Hacl_Bignum_fmul(i64* noundef %0, i64* noundef %1, i64* noundef %2), !dbg !2639
  ret void, !dbg !2640
}

; Function Attrs: noinline nounwind uwtable
define internal fastcc void @Hacl_Bignum25519_fsquare(i64* nocapture noundef %0, i64* nocapture noundef readonly %1) unnamed_addr #0 !dbg !2641 {
  %3 = alloca [5 x %struct.FStar_UInt128_uint128], align 4
  %4 = alloca %struct.FStar_UInt128_uint128, align 4
  call void @llvm.dbg.value(metadata i64* %0, metadata !2643, metadata !DIExpression()), !dbg !2649
  call void @llvm.dbg.value(metadata i64* %1, metadata !2644, metadata !DIExpression()), !dbg !2649
  %5 = bitcast [5 x %struct.FStar_UInt128_uint128]* %3 to i8*, !dbg !2650
  call void @llvm.lifetime.start.p0i8(i64 80, i8* nonnull %5) #14, !dbg !2650
  call void @llvm.dbg.declare(metadata [5 x %struct.FStar_UInt128_uint128]* %3, metadata !2645, metadata !DIExpression()), !dbg !2651
  call void @llvm.dbg.value(metadata i32 0, metadata !2647, metadata !DIExpression()), !dbg !2652
  %6 = bitcast %struct.FStar_UInt128_uint128* %4 to i8*
  call void @llvm.dbg.value(metadata i32 0, metadata !2647, metadata !DIExpression()), !dbg !2652
  br label %11, !dbg !2653

7:                                                ; preds = %11
  %8 = bitcast i64* %0 to i8*, !dbg !2654
  %9 = bitcast i64* %1 to i8*, !dbg !2654
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* noundef nonnull align 4 dereferenceable(40) %8, i8* noundef nonnull align 4 dereferenceable(40) %9, i32 40, i1 false), !dbg !2654
  %10 = getelementptr inbounds [5 x %struct.FStar_UInt128_uint128], [5 x %struct.FStar_UInt128_uint128]* %3, i32 0, i32 0, !dbg !2655
  call fastcc void @Hacl_Bignum_Fsquare_fsquare_(%struct.FStar_UInt128_uint128* noundef nonnull %10, i64* noundef %0), !dbg !2656
  call void @llvm.lifetime.end.p0i8(i64 80, i8* nonnull %5) #14, !dbg !2657
  ret void, !dbg !2657

11:                                               ; preds = %2, %11
  %12 = phi i32 [ 0, %2 ], [ %15, %11 ]
  call void @llvm.dbg.value(metadata i32 %12, metadata !2647, metadata !DIExpression()), !dbg !2652
  %13 = getelementptr inbounds [5 x %struct.FStar_UInt128_uint128], [5 x %struct.FStar_UInt128_uint128]* %3, i32 0, i32 %12, !dbg !2658
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %6) #14, !dbg !2660
  call void @FStar_UInt128_uint64_to_uint128(%struct.FStar_UInt128_uint128* nonnull sret(%struct.FStar_UInt128_uint128) align 4 %4, i64 noundef 0) #14, !dbg !2660
  %14 = bitcast %struct.FStar_UInt128_uint128* %13 to i8*, !dbg !2660
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* noundef nonnull align 4 dereferenceable(16) %14, i8* noundef nonnull align 4 dereferenceable(16) %6, i32 16, i1 false), !dbg !2660, !tbaa.struct !1233
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %6) #14, !dbg !2660
  %15 = add nuw nsw i32 %12, 1, !dbg !2661
  call void @llvm.dbg.value(metadata i32 %15, metadata !2647, metadata !DIExpression()), !dbg !2652
  %16 = icmp eq i32 %15, 5, !dbg !2662
  br i1 %16, label %7, label %11, !dbg !2653, !llvm.loop !2663
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind uwtable willreturn
define internal fastcc void @Hacl_Bignum25519_times_2(i64* nocapture noundef writeonly %0, i64* nocapture noundef readonly %1) unnamed_addr #4 !dbg !2665 {
  call void @llvm.dbg.value(metadata i64* %0, metadata !2667, metadata !DIExpression()), !dbg !2679
  call void @llvm.dbg.value(metadata i64* %1, metadata !2668, metadata !DIExpression()), !dbg !2679
  %3 = load i64, i64* %1, align 4, !dbg !2680, !tbaa !181
  call void @llvm.dbg.value(metadata i64 %3, metadata !2669, metadata !DIExpression()), !dbg !2679
  %4 = getelementptr inbounds i64, i64* %1, i32 1, !dbg !2681
  %5 = load i64, i64* %4, align 4, !dbg !2681, !tbaa !181
  call void @llvm.dbg.value(metadata i64 %5, metadata !2670, metadata !DIExpression()), !dbg !2679
  %6 = getelementptr inbounds i64, i64* %1, i32 2, !dbg !2682
  %7 = load i64, i64* %6, align 4, !dbg !2682, !tbaa !181
  call void @llvm.dbg.value(metadata i64 %7, metadata !2671, metadata !DIExpression()), !dbg !2679
  %8 = getelementptr inbounds i64, i64* %1, i32 3, !dbg !2683
  %9 = load i64, i64* %8, align 4, !dbg !2683, !tbaa !181
  call void @llvm.dbg.value(metadata i64 %9, metadata !2672, metadata !DIExpression()), !dbg !2679
  %10 = getelementptr inbounds i64, i64* %1, i32 4, !dbg !2684
  %11 = load i64, i64* %10, align 4, !dbg !2684, !tbaa !181
  call void @llvm.dbg.value(metadata i64 %11, metadata !2673, metadata !DIExpression()), !dbg !2679
  %12 = shl i64 %3, 1, !dbg !2685
  call void @llvm.dbg.value(metadata i64 %12, metadata !2674, metadata !DIExpression()), !dbg !2679
  %13 = shl i64 %5, 1, !dbg !2686
  call void @llvm.dbg.value(metadata i64 %13, metadata !2675, metadata !DIExpression()), !dbg !2679
  %14 = shl i64 %7, 1, !dbg !2687
  call void @llvm.dbg.value(metadata i64 %14, metadata !2676, metadata !DIExpression()), !dbg !2679
  %15 = shl i64 %9, 1, !dbg !2688
  call void @llvm.dbg.value(metadata i64 %15, metadata !2677, metadata !DIExpression()), !dbg !2679
  %16 = shl i64 %11, 1, !dbg !2689
  call void @llvm.dbg.value(metadata i64 %16, metadata !2678, metadata !DIExpression()), !dbg !2679
  call fastcc void @Hacl_Lib_Create64_make_h64_5(i64* noundef %0, i64 noundef %12, i64 noundef %13, i64 noundef %14, i64 noundef %15, i64 noundef %16), !dbg !2690
  ret void, !dbg !2691
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind uwtable willreturn
define internal fastcc void @Hacl_Bignum25519_fsum(i64* nocapture noundef %0, i64* nocapture noundef readonly %1) unnamed_addr #4 !dbg !2692 {
  call void @llvm.dbg.value(metadata i64* %0, metadata !2694, metadata !DIExpression()), !dbg !2696
  call void @llvm.dbg.value(metadata i64* %1, metadata !2695, metadata !DIExpression()), !dbg !2696
  call fastcc void @Hacl_Bignum_fsum(i64* noundef %0, i64* noundef %1), !dbg !2697
  ret void, !dbg !2698
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind uwtable willreturn
define internal fastcc void @Hacl_Bignum25519_reduce_513(i64* nocapture noundef %0) unnamed_addr #4 !dbg !2699 {
  call void @llvm.dbg.value(metadata i64* %0, metadata !2701, metadata !DIExpression()), !dbg !2719
  %2 = load i64, i64* %0, align 4, !dbg !2720, !tbaa !181
  call void @llvm.dbg.value(metadata i64 %2, metadata !2702, metadata !DIExpression()), !dbg !2719
  %3 = getelementptr inbounds i64, i64* %0, i32 1, !dbg !2721
  %4 = load i64, i64* %3, align 4, !dbg !2721, !tbaa !181
  call void @llvm.dbg.value(metadata i64 %4, metadata !2703, metadata !DIExpression()), !dbg !2719
  %5 = getelementptr inbounds i64, i64* %0, i32 2, !dbg !2722
  %6 = load i64, i64* %5, align 4, !dbg !2722, !tbaa !181
  call void @llvm.dbg.value(metadata i64 %6, metadata !2704, metadata !DIExpression()), !dbg !2719
  %7 = getelementptr inbounds i64, i64* %0, i32 3, !dbg !2723
  %8 = load i64, i64* %7, align 4, !dbg !2723, !tbaa !181
  call void @llvm.dbg.value(metadata i64 %8, metadata !2705, metadata !DIExpression()), !dbg !2719
  %9 = getelementptr inbounds i64, i64* %0, i32 4, !dbg !2724
  %10 = load i64, i64* %9, align 4, !dbg !2724, !tbaa !181
  call void @llvm.dbg.value(metadata i64 %10, metadata !2706, metadata !DIExpression()), !dbg !2719
  %11 = lshr i64 %2, 51, !dbg !2725
  %12 = add i64 %4, %11, !dbg !2726
  call void @llvm.dbg.value(metadata i64 %12, metadata !2707, metadata !DIExpression()), !dbg !2719
  %13 = and i64 %2, 2251799813685247, !dbg !2727
  call void @llvm.dbg.value(metadata i64 %13, metadata !2708, metadata !DIExpression()), !dbg !2719
  %14 = lshr i64 %12, 51, !dbg !2728
  %15 = add i64 %14, %6, !dbg !2729
  call void @llvm.dbg.value(metadata i64 %15, metadata !2709, metadata !DIExpression()), !dbg !2719
  %16 = and i64 %12, 2251799813685247, !dbg !2730
  call void @llvm.dbg.value(metadata i64 %16, metadata !2710, metadata !DIExpression()), !dbg !2719
  %17 = lshr i64 %15, 51, !dbg !2731
  %18 = add i64 %17, %8, !dbg !2732
  call void @llvm.dbg.value(metadata i64 %18, metadata !2711, metadata !DIExpression()), !dbg !2719
  %19 = and i64 %15, 2251799813685247, !dbg !2733
  call void @llvm.dbg.value(metadata i64 %19, metadata !2712, metadata !DIExpression()), !dbg !2719
  %20 = lshr i64 %18, 51, !dbg !2734
  %21 = add i64 %20, %10, !dbg !2735
  call void @llvm.dbg.value(metadata i64 %21, metadata !2713, metadata !DIExpression()), !dbg !2719
  %22 = and i64 %18, 2251799813685247, !dbg !2736
  call void @llvm.dbg.value(metadata i64 %22, metadata !2714, metadata !DIExpression()), !dbg !2719
  call fastcc void @Hacl_Lib_Create64_make_h64_5(i64* noundef nonnull %0, i64 noundef %13, i64 noundef %16, i64 noundef %19, i64 noundef %22, i64 noundef %21), !dbg !2737
  call fastcc void @Hacl_Bignum_Modulo_carry_top(i64* noundef nonnull %0), !dbg !2738
  %23 = load i64, i64* %0, align 4, !dbg !2739, !tbaa !181
  call void @llvm.dbg.value(metadata i64 %23, metadata !2715, metadata !DIExpression()), !dbg !2719
  %24 = load i64, i64* %3, align 4, !dbg !2740, !tbaa !181
  call void @llvm.dbg.value(metadata i64 %24, metadata !2716, metadata !DIExpression()), !dbg !2719
  %25 = and i64 %23, 2251799813685247, !dbg !2741
  call void @llvm.dbg.value(metadata i64 %25, metadata !2717, metadata !DIExpression()), !dbg !2719
  %26 = lshr i64 %23, 51, !dbg !2742
  %27 = add i64 %24, %26, !dbg !2743
  call void @llvm.dbg.value(metadata i64 %27, metadata !2718, metadata !DIExpression()), !dbg !2719
  store i64 %25, i64* %0, align 4, !dbg !2744, !tbaa !181
  store i64 %27, i64* %3, align 4, !dbg !2745, !tbaa !181
  ret void, !dbg !2746
}

; Function Attrs: noinline nounwind uwtable
define internal fastcc void @Hacl_Bignum_Fsquare_fsquare_(%struct.FStar_UInt128_uint128* nocapture noundef %0, i64* nocapture noundef %1) unnamed_addr #0 !dbg !2747 {
  %3 = alloca %struct.FStar_UInt128_uint128, align 4
  %4 = alloca %struct.FStar_UInt128_uint128, align 8
  %5 = alloca %struct.FStar_UInt128_uint128, align 4
  %6 = alloca %struct.FStar_UInt128_uint128, align 8
  %7 = alloca %struct.FStar_UInt128_uint128, align 8
  call void @llvm.dbg.value(metadata %struct.FStar_UInt128_uint128* %0, metadata !2751, metadata !DIExpression()), !dbg !2761
  call void @llvm.dbg.value(metadata i64* %1, metadata !2752, metadata !DIExpression()), !dbg !2761
  call fastcc void @Hacl_Bignum_Fsquare_fsquare__(%struct.FStar_UInt128_uint128* noundef %0, i64* noundef %1), !dbg !2762
  call fastcc void @Hacl_Bignum_Fproduct_carry_wide_(%struct.FStar_UInt128_uint128* noundef %0), !dbg !2763
  %8 = getelementptr inbounds %struct.FStar_UInt128_uint128, %struct.FStar_UInt128_uint128* %0, i32 4, i32 0, !dbg !2764
  %9 = load i64, i64* %8, align 4, !dbg !2764, !tbaa.struct !1233
  call void @llvm.dbg.value(metadata i64 %9, metadata !2753, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 64)), !dbg !2761
  %10 = getelementptr inbounds %struct.FStar_UInt128_uint128, %struct.FStar_UInt128_uint128* %0, i32 4, i32 1, !dbg !2764
  %11 = load i64, i64* %10, align 4, !dbg !2764, !tbaa.struct !1544
  call void @llvm.dbg.value(metadata i64 %11, metadata !2753, metadata !DIExpression(DW_OP_LLVM_fragment, 64, 64)), !dbg !2761
  %12 = getelementptr inbounds %struct.FStar_UInt128_uint128, %struct.FStar_UInt128_uint128* %0, i32 0, i32 0, !dbg !2765
  %13 = load i64, i64* %12, align 4, !dbg !2765, !tbaa.struct !1233
  call void @llvm.dbg.value(metadata i64 %13, metadata !2754, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 64)), !dbg !2761
  %14 = getelementptr inbounds %struct.FStar_UInt128_uint128, %struct.FStar_UInt128_uint128* %0, i32 0, i32 1, !dbg !2765
  %15 = load i64, i64* %14, align 4, !dbg !2765, !tbaa.struct !1544
  call void @llvm.dbg.value(metadata i64 %15, metadata !2754, metadata !DIExpression(DW_OP_LLVM_fragment, 64, 64)), !dbg !2761
  %16 = bitcast %struct.FStar_UInt128_uint128* %3 to i8*, !dbg !2766
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %16) #14, !dbg !2766
  call void @llvm.dbg.declare(metadata %struct.FStar_UInt128_uint128* %3, metadata !2755, metadata !DIExpression()), !dbg !2767
  call void @FStar_UInt128_uint64_to_uint128(%struct.FStar_UInt128_uint128* nonnull sret(%struct.FStar_UInt128_uint128) align 4 %4, i64 noundef 2251799813685247) #14, !dbg !2768
  %17 = getelementptr inbounds %struct.FStar_UInt128_uint128, %struct.FStar_UInt128_uint128* %4, i32 0, i32 0, !dbg !2769
  %18 = load i64, i64* %17, align 8, !dbg !2769, !tbaa !617
  %19 = getelementptr inbounds %struct.FStar_UInt128_uint128, %struct.FStar_UInt128_uint128* %4, i32 0, i32 1, !dbg !2769
  %20 = load i64, i64* %19, align 8, !dbg !2769, !tbaa !619
  call void @FStar_UInt128_logand(%struct.FStar_UInt128_uint128* nonnull sret(%struct.FStar_UInt128_uint128) align 4 %3, i64 %9, i64 %11, i64 %18, i64 %20) #14, !dbg !2769
  %21 = bitcast %struct.FStar_UInt128_uint128* %5 to i8*, !dbg !2770
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %21) #14, !dbg !2770
  call void @llvm.dbg.declare(metadata %struct.FStar_UInt128_uint128* %5, metadata !2756, metadata !DIExpression()), !dbg !2771
  call void @FStar_UInt128_shift_right(%struct.FStar_UInt128_uint128* nonnull sret(%struct.FStar_UInt128_uint128) align 4 %7, i64 %9, i64 %11, i32 noundef 51) #14, !dbg !2772
  %22 = getelementptr inbounds %struct.FStar_UInt128_uint128, %struct.FStar_UInt128_uint128* %7, i32 0, i32 0, !dbg !2773
  %23 = load i64, i64* %22, align 8, !dbg !2773, !tbaa !617
  %24 = getelementptr inbounds %struct.FStar_UInt128_uint128, %struct.FStar_UInt128_uint128* %7, i32 0, i32 1, !dbg !2773
  %25 = load i64, i64* %24, align 8, !dbg !2773, !tbaa !619
  %26 = call i64 @FStar_UInt128_uint128_to_uint64(i64 %23, i64 %25) #14, !dbg !2773
  call void @FStar_UInt128_mul_wide(%struct.FStar_UInt128_uint128* nonnull sret(%struct.FStar_UInt128_uint128) align 4 %6, i64 noundef 19, i64 noundef %26) #14, !dbg !2774
  %27 = getelementptr inbounds %struct.FStar_UInt128_uint128, %struct.FStar_UInt128_uint128* %6, i32 0, i32 0, !dbg !2775
  %28 = load i64, i64* %27, align 8, !dbg !2775, !tbaa !617
  %29 = getelementptr inbounds %struct.FStar_UInt128_uint128, %struct.FStar_UInt128_uint128* %6, i32 0, i32 1, !dbg !2775
  %30 = load i64, i64* %29, align 8, !dbg !2775, !tbaa !619
  call void @FStar_UInt128_add(%struct.FStar_UInt128_uint128* nonnull sret(%struct.FStar_UInt128_uint128) align 4 %5, i64 %13, i64 %15, i64 %28, i64 %30) #14, !dbg !2775
  %31 = getelementptr inbounds %struct.FStar_UInt128_uint128, %struct.FStar_UInt128_uint128* %0, i32 4, !dbg !2776
  %32 = bitcast %struct.FStar_UInt128_uint128* %31 to i8*, !dbg !2777
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* noundef nonnull align 4 dereferenceable(16) %32, i8* noundef nonnull align 4 dereferenceable(16) %16, i32 16, i1 false), !dbg !2777, !tbaa.struct !1233
  %33 = bitcast %struct.FStar_UInt128_uint128* %0 to i8*, !dbg !2778
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* noundef nonnull align 4 dereferenceable(16) %33, i8* noundef nonnull align 4 dereferenceable(16) %21, i32 16, i1 false), !dbg !2778, !tbaa.struct !1233
  call fastcc void @Hacl_Bignum_Fproduct_copy_from_wide_(i64* noundef %1, %struct.FStar_UInt128_uint128* noundef %0), !dbg !2779
  %34 = load i64, i64* %1, align 4, !dbg !2780, !tbaa !181
  call void @llvm.dbg.value(metadata i64 %34, metadata !2757, metadata !DIExpression()), !dbg !2761
  %35 = getelementptr inbounds i64, i64* %1, i32 1, !dbg !2781
  %36 = load i64, i64* %35, align 4, !dbg !2781, !tbaa !181
  call void @llvm.dbg.value(metadata i64 %36, metadata !2758, metadata !DIExpression()), !dbg !2761
  %37 = and i64 %34, 2251799813685247, !dbg !2782
  call void @llvm.dbg.value(metadata i64 %37, metadata !2759, metadata !DIExpression()), !dbg !2761
  %38 = lshr i64 %34, 51, !dbg !2783
  %39 = add i64 %36, %38, !dbg !2784
  call void @llvm.dbg.value(metadata i64 %39, metadata !2760, metadata !DIExpression()), !dbg !2761
  store i64 %37, i64* %1, align 4, !dbg !2785, !tbaa !181
  store i64 %39, i64* %35, align 4, !dbg !2786, !tbaa !181
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %21) #14, !dbg !2787
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %16) #14, !dbg !2787
  ret void, !dbg !2787
}

; Function Attrs: noinline nounwind uwtable
define internal fastcc void @Hacl_Bignum_Fsquare_fsquare__(%struct.FStar_UInt128_uint128* nocapture noundef writeonly %0, i64* nocapture noundef readonly %1) unnamed_addr #0 !dbg !2788 {
  %3 = alloca %struct.FStar_UInt128_uint128, align 4
  %4 = alloca %struct.FStar_UInt128_uint128, align 8
  %5 = alloca %struct.FStar_UInt128_uint128, align 8
  %6 = alloca %struct.FStar_UInt128_uint128, align 8
  %7 = alloca %struct.FStar_UInt128_uint128, align 8
  %8 = alloca %struct.FStar_UInt128_uint128, align 4
  %9 = alloca %struct.FStar_UInt128_uint128, align 8
  %10 = alloca %struct.FStar_UInt128_uint128, align 8
  %11 = alloca %struct.FStar_UInt128_uint128, align 8
  %12 = alloca %struct.FStar_UInt128_uint128, align 8
  %13 = alloca %struct.FStar_UInt128_uint128, align 4
  %14 = alloca %struct.FStar_UInt128_uint128, align 8
  %15 = alloca %struct.FStar_UInt128_uint128, align 8
  %16 = alloca %struct.FStar_UInt128_uint128, align 8
  %17 = alloca %struct.FStar_UInt128_uint128, align 8
  %18 = alloca %struct.FStar_UInt128_uint128, align 4
  %19 = alloca %struct.FStar_UInt128_uint128, align 8
  %20 = alloca %struct.FStar_UInt128_uint128, align 8
  %21 = alloca %struct.FStar_UInt128_uint128, align 8
  %22 = alloca %struct.FStar_UInt128_uint128, align 8
  %23 = alloca %struct.FStar_UInt128_uint128, align 4
  %24 = alloca %struct.FStar_UInt128_uint128, align 8
  %25 = alloca %struct.FStar_UInt128_uint128, align 8
  %26 = alloca %struct.FStar_UInt128_uint128, align 8
  %27 = alloca %struct.FStar_UInt128_uint128, align 8
  call void @llvm.dbg.value(metadata %struct.FStar_UInt128_uint128* %0, metadata !2790, metadata !DIExpression()), !dbg !2807
  call void @llvm.dbg.value(metadata i64* %1, metadata !2791, metadata !DIExpression()), !dbg !2807
  %28 = load i64, i64* %1, align 4, !dbg !2808, !tbaa !181
  call void @llvm.dbg.value(metadata i64 %28, metadata !2792, metadata !DIExpression()), !dbg !2807
  %29 = getelementptr inbounds i64, i64* %1, i32 1, !dbg !2809
  %30 = load i64, i64* %29, align 4, !dbg !2809, !tbaa !181
  call void @llvm.dbg.value(metadata i64 %30, metadata !2793, metadata !DIExpression()), !dbg !2807
  %31 = getelementptr inbounds i64, i64* %1, i32 2, !dbg !2810
  %32 = load i64, i64* %31, align 4, !dbg !2810, !tbaa !181
  call void @llvm.dbg.value(metadata i64 %32, metadata !2794, metadata !DIExpression()), !dbg !2807
  %33 = getelementptr inbounds i64, i64* %1, i32 3, !dbg !2811
  %34 = load i64, i64* %33, align 4, !dbg !2811, !tbaa !181
  call void @llvm.dbg.value(metadata i64 %34, metadata !2795, metadata !DIExpression()), !dbg !2807
  %35 = getelementptr inbounds i64, i64* %1, i32 4, !dbg !2812
  %36 = load i64, i64* %35, align 4, !dbg !2812, !tbaa !181
  call void @llvm.dbg.value(metadata i64 %36, metadata !2796, metadata !DIExpression()), !dbg !2807
  %37 = shl i64 %28, 1, !dbg !2813
  call void @llvm.dbg.value(metadata i64 %37, metadata !2797, metadata !DIExpression()), !dbg !2807
  %38 = shl i64 %30, 1, !dbg !2814
  call void @llvm.dbg.value(metadata i64 %38, metadata !2798, metadata !DIExpression()), !dbg !2807
  %39 = mul i64 %32, 38, !dbg !2815
  call void @llvm.dbg.value(metadata i64 %39, metadata !2799, metadata !DIExpression()), !dbg !2807
  %40 = mul i64 %36, 19, !dbg !2816
  call void @llvm.dbg.value(metadata i64 %40, metadata !2800, metadata !DIExpression()), !dbg !2807
  %41 = mul i64 %36, 38, !dbg !2817
  call void @llvm.dbg.value(metadata i64 %41, metadata !2801, metadata !DIExpression()), !dbg !2807
  %42 = bitcast %struct.FStar_UInt128_uint128* %3 to i8*, !dbg !2818
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %42) #14, !dbg !2818
  call void @llvm.dbg.declare(metadata %struct.FStar_UInt128_uint128* %3, metadata !2802, metadata !DIExpression()), !dbg !2819
  call void @FStar_UInt128_mul_wide(%struct.FStar_UInt128_uint128* nonnull sret(%struct.FStar_UInt128_uint128) align 4 %5, i64 noundef %28, i64 noundef %28) #14, !dbg !2820
  call void @FStar_UInt128_mul_wide(%struct.FStar_UInt128_uint128* nonnull sret(%struct.FStar_UInt128_uint128) align 4 %6, i64 noundef %41, i64 noundef %30) #14, !dbg !2821
  %43 = getelementptr inbounds %struct.FStar_UInt128_uint128, %struct.FStar_UInt128_uint128* %5, i32 0, i32 0, !dbg !2822
  %44 = load i64, i64* %43, align 8, !dbg !2822, !tbaa !617
  %45 = getelementptr inbounds %struct.FStar_UInt128_uint128, %struct.FStar_UInt128_uint128* %5, i32 0, i32 1, !dbg !2822
  %46 = load i64, i64* %45, align 8, !dbg !2822, !tbaa !619
  %47 = getelementptr inbounds %struct.FStar_UInt128_uint128, %struct.FStar_UInt128_uint128* %6, i32 0, i32 0, !dbg !2822
  %48 = load i64, i64* %47, align 8, !dbg !2822, !tbaa !617
  %49 = getelementptr inbounds %struct.FStar_UInt128_uint128, %struct.FStar_UInt128_uint128* %6, i32 0, i32 1, !dbg !2822
  %50 = load i64, i64* %49, align 8, !dbg !2822, !tbaa !619
  call void @FStar_UInt128_add(%struct.FStar_UInt128_uint128* nonnull sret(%struct.FStar_UInt128_uint128) align 4 %4, i64 %44, i64 %46, i64 %48, i64 %50) #14, !dbg !2822
  call void @FStar_UInt128_mul_wide(%struct.FStar_UInt128_uint128* nonnull sret(%struct.FStar_UInt128_uint128) align 4 %7, i64 noundef %39, i64 noundef %34) #14, !dbg !2823
  %51 = getelementptr inbounds %struct.FStar_UInt128_uint128, %struct.FStar_UInt128_uint128* %4, i32 0, i32 0, !dbg !2824
  %52 = load i64, i64* %51, align 8, !dbg !2824, !tbaa !617
  %53 = getelementptr inbounds %struct.FStar_UInt128_uint128, %struct.FStar_UInt128_uint128* %4, i32 0, i32 1, !dbg !2824
  %54 = load i64, i64* %53, align 8, !dbg !2824, !tbaa !619
  %55 = getelementptr inbounds %struct.FStar_UInt128_uint128, %struct.FStar_UInt128_uint128* %7, i32 0, i32 0, !dbg !2824
  %56 = load i64, i64* %55, align 8, !dbg !2824, !tbaa !617
  %57 = getelementptr inbounds %struct.FStar_UInt128_uint128, %struct.FStar_UInt128_uint128* %7, i32 0, i32 1, !dbg !2824
  %58 = load i64, i64* %57, align 8, !dbg !2824, !tbaa !619
  call void @FStar_UInt128_add(%struct.FStar_UInt128_uint128* nonnull sret(%struct.FStar_UInt128_uint128) align 4 %3, i64 %52, i64 %54, i64 %56, i64 %58) #14, !dbg !2824
  %59 = bitcast %struct.FStar_UInt128_uint128* %8 to i8*, !dbg !2825
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %59) #14, !dbg !2825
  call void @llvm.dbg.declare(metadata %struct.FStar_UInt128_uint128* %8, metadata !2803, metadata !DIExpression()), !dbg !2826
  call void @FStar_UInt128_mul_wide(%struct.FStar_UInt128_uint128* nonnull sret(%struct.FStar_UInt128_uint128) align 4 %10, i64 noundef %37, i64 noundef %30) #14, !dbg !2827
  call void @FStar_UInt128_mul_wide(%struct.FStar_UInt128_uint128* nonnull sret(%struct.FStar_UInt128_uint128) align 4 %11, i64 noundef %41, i64 noundef %32) #14, !dbg !2828
  %60 = getelementptr inbounds %struct.FStar_UInt128_uint128, %struct.FStar_UInt128_uint128* %10, i32 0, i32 0, !dbg !2829
  %61 = load i64, i64* %60, align 8, !dbg !2829, !tbaa !617
  %62 = getelementptr inbounds %struct.FStar_UInt128_uint128, %struct.FStar_UInt128_uint128* %10, i32 0, i32 1, !dbg !2829
  %63 = load i64, i64* %62, align 8, !dbg !2829, !tbaa !619
  %64 = getelementptr inbounds %struct.FStar_UInt128_uint128, %struct.FStar_UInt128_uint128* %11, i32 0, i32 0, !dbg !2829
  %65 = load i64, i64* %64, align 8, !dbg !2829, !tbaa !617
  %66 = getelementptr inbounds %struct.FStar_UInt128_uint128, %struct.FStar_UInt128_uint128* %11, i32 0, i32 1, !dbg !2829
  %67 = load i64, i64* %66, align 8, !dbg !2829, !tbaa !619
  call void @FStar_UInt128_add(%struct.FStar_UInt128_uint128* nonnull sret(%struct.FStar_UInt128_uint128) align 4 %9, i64 %61, i64 %63, i64 %65, i64 %67) #14, !dbg !2829
  %68 = mul i64 %34, 19, !dbg !2830
  call void @FStar_UInt128_mul_wide(%struct.FStar_UInt128_uint128* nonnull sret(%struct.FStar_UInt128_uint128) align 4 %12, i64 noundef %68, i64 noundef %34) #14, !dbg !2831
  %69 = getelementptr inbounds %struct.FStar_UInt128_uint128, %struct.FStar_UInt128_uint128* %9, i32 0, i32 0, !dbg !2832
  %70 = load i64, i64* %69, align 8, !dbg !2832, !tbaa !617
  %71 = getelementptr inbounds %struct.FStar_UInt128_uint128, %struct.FStar_UInt128_uint128* %9, i32 0, i32 1, !dbg !2832
  %72 = load i64, i64* %71, align 8, !dbg !2832, !tbaa !619
  %73 = getelementptr inbounds %struct.FStar_UInt128_uint128, %struct.FStar_UInt128_uint128* %12, i32 0, i32 0, !dbg !2832
  %74 = load i64, i64* %73, align 8, !dbg !2832, !tbaa !617
  %75 = getelementptr inbounds %struct.FStar_UInt128_uint128, %struct.FStar_UInt128_uint128* %12, i32 0, i32 1, !dbg !2832
  %76 = load i64, i64* %75, align 8, !dbg !2832, !tbaa !619
  call void @FStar_UInt128_add(%struct.FStar_UInt128_uint128* nonnull sret(%struct.FStar_UInt128_uint128) align 4 %8, i64 %70, i64 %72, i64 %74, i64 %76) #14, !dbg !2832
  %77 = bitcast %struct.FStar_UInt128_uint128* %13 to i8*, !dbg !2833
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %77) #14, !dbg !2833
  call void @llvm.dbg.declare(metadata %struct.FStar_UInt128_uint128* %13, metadata !2804, metadata !DIExpression()), !dbg !2834
  call void @FStar_UInt128_mul_wide(%struct.FStar_UInt128_uint128* nonnull sret(%struct.FStar_UInt128_uint128) align 4 %15, i64 noundef %37, i64 noundef %32) #14, !dbg !2835
  call void @FStar_UInt128_mul_wide(%struct.FStar_UInt128_uint128* nonnull sret(%struct.FStar_UInt128_uint128) align 4 %16, i64 noundef %30, i64 noundef %30) #14, !dbg !2836
  %78 = getelementptr inbounds %struct.FStar_UInt128_uint128, %struct.FStar_UInt128_uint128* %15, i32 0, i32 0, !dbg !2837
  %79 = load i64, i64* %78, align 8, !dbg !2837, !tbaa !617
  %80 = getelementptr inbounds %struct.FStar_UInt128_uint128, %struct.FStar_UInt128_uint128* %15, i32 0, i32 1, !dbg !2837
  %81 = load i64, i64* %80, align 8, !dbg !2837, !tbaa !619
  %82 = getelementptr inbounds %struct.FStar_UInt128_uint128, %struct.FStar_UInt128_uint128* %16, i32 0, i32 0, !dbg !2837
  %83 = load i64, i64* %82, align 8, !dbg !2837, !tbaa !617
  %84 = getelementptr inbounds %struct.FStar_UInt128_uint128, %struct.FStar_UInt128_uint128* %16, i32 0, i32 1, !dbg !2837
  %85 = load i64, i64* %84, align 8, !dbg !2837, !tbaa !619
  call void @FStar_UInt128_add(%struct.FStar_UInt128_uint128* nonnull sret(%struct.FStar_UInt128_uint128) align 4 %14, i64 %79, i64 %81, i64 %83, i64 %85) #14, !dbg !2837
  call void @FStar_UInt128_mul_wide(%struct.FStar_UInt128_uint128* nonnull sret(%struct.FStar_UInt128_uint128) align 4 %17, i64 noundef %41, i64 noundef %34) #14, !dbg !2838
  %86 = getelementptr inbounds %struct.FStar_UInt128_uint128, %struct.FStar_UInt128_uint128* %14, i32 0, i32 0, !dbg !2839
  %87 = load i64, i64* %86, align 8, !dbg !2839, !tbaa !617
  %88 = getelementptr inbounds %struct.FStar_UInt128_uint128, %struct.FStar_UInt128_uint128* %14, i32 0, i32 1, !dbg !2839
  %89 = load i64, i64* %88, align 8, !dbg !2839, !tbaa !619
  %90 = getelementptr inbounds %struct.FStar_UInt128_uint128, %struct.FStar_UInt128_uint128* %17, i32 0, i32 0, !dbg !2839
  %91 = load i64, i64* %90, align 8, !dbg !2839, !tbaa !617
  %92 = getelementptr inbounds %struct.FStar_UInt128_uint128, %struct.FStar_UInt128_uint128* %17, i32 0, i32 1, !dbg !2839
  %93 = load i64, i64* %92, align 8, !dbg !2839, !tbaa !619
  call void @FStar_UInt128_add(%struct.FStar_UInt128_uint128* nonnull sret(%struct.FStar_UInt128_uint128) align 4 %13, i64 %87, i64 %89, i64 %91, i64 %93) #14, !dbg !2839
  %94 = bitcast %struct.FStar_UInt128_uint128* %18 to i8*, !dbg !2840
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %94) #14, !dbg !2840
  call void @llvm.dbg.declare(metadata %struct.FStar_UInt128_uint128* %18, metadata !2805, metadata !DIExpression()), !dbg !2841
  call void @FStar_UInt128_mul_wide(%struct.FStar_UInt128_uint128* nonnull sret(%struct.FStar_UInt128_uint128) align 4 %20, i64 noundef %37, i64 noundef %34) #14, !dbg !2842
  call void @FStar_UInt128_mul_wide(%struct.FStar_UInt128_uint128* nonnull sret(%struct.FStar_UInt128_uint128) align 4 %21, i64 noundef %38, i64 noundef %32) #14, !dbg !2843
  %95 = getelementptr inbounds %struct.FStar_UInt128_uint128, %struct.FStar_UInt128_uint128* %20, i32 0, i32 0, !dbg !2844
  %96 = load i64, i64* %95, align 8, !dbg !2844, !tbaa !617
  %97 = getelementptr inbounds %struct.FStar_UInt128_uint128, %struct.FStar_UInt128_uint128* %20, i32 0, i32 1, !dbg !2844
  %98 = load i64, i64* %97, align 8, !dbg !2844, !tbaa !619
  %99 = getelementptr inbounds %struct.FStar_UInt128_uint128, %struct.FStar_UInt128_uint128* %21, i32 0, i32 0, !dbg !2844
  %100 = load i64, i64* %99, align 8, !dbg !2844, !tbaa !617
  %101 = getelementptr inbounds %struct.FStar_UInt128_uint128, %struct.FStar_UInt128_uint128* %21, i32 0, i32 1, !dbg !2844
  %102 = load i64, i64* %101, align 8, !dbg !2844, !tbaa !619
  call void @FStar_UInt128_add(%struct.FStar_UInt128_uint128* nonnull sret(%struct.FStar_UInt128_uint128) align 4 %19, i64 %96, i64 %98, i64 %100, i64 %102) #14, !dbg !2844
  call void @FStar_UInt128_mul_wide(%struct.FStar_UInt128_uint128* nonnull sret(%struct.FStar_UInt128_uint128) align 4 %22, i64 noundef %36, i64 noundef %40) #14, !dbg !2845
  %103 = getelementptr inbounds %struct.FStar_UInt128_uint128, %struct.FStar_UInt128_uint128* %19, i32 0, i32 0, !dbg !2846
  %104 = load i64, i64* %103, align 8, !dbg !2846, !tbaa !617
  %105 = getelementptr inbounds %struct.FStar_UInt128_uint128, %struct.FStar_UInt128_uint128* %19, i32 0, i32 1, !dbg !2846
  %106 = load i64, i64* %105, align 8, !dbg !2846, !tbaa !619
  %107 = getelementptr inbounds %struct.FStar_UInt128_uint128, %struct.FStar_UInt128_uint128* %22, i32 0, i32 0, !dbg !2846
  %108 = load i64, i64* %107, align 8, !dbg !2846, !tbaa !617
  %109 = getelementptr inbounds %struct.FStar_UInt128_uint128, %struct.FStar_UInt128_uint128* %22, i32 0, i32 1, !dbg !2846
  %110 = load i64, i64* %109, align 8, !dbg !2846, !tbaa !619
  call void @FStar_UInt128_add(%struct.FStar_UInt128_uint128* nonnull sret(%struct.FStar_UInt128_uint128) align 4 %18, i64 %104, i64 %106, i64 %108, i64 %110) #14, !dbg !2846
  %111 = bitcast %struct.FStar_UInt128_uint128* %23 to i8*, !dbg !2847
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %111) #14, !dbg !2847
  call void @llvm.dbg.declare(metadata %struct.FStar_UInt128_uint128* %23, metadata !2806, metadata !DIExpression()), !dbg !2848
  call void @FStar_UInt128_mul_wide(%struct.FStar_UInt128_uint128* nonnull sret(%struct.FStar_UInt128_uint128) align 4 %25, i64 noundef %37, i64 noundef %36) #14, !dbg !2849
  call void @FStar_UInt128_mul_wide(%struct.FStar_UInt128_uint128* nonnull sret(%struct.FStar_UInt128_uint128) align 4 %26, i64 noundef %38, i64 noundef %34) #14, !dbg !2850
  %112 = getelementptr inbounds %struct.FStar_UInt128_uint128, %struct.FStar_UInt128_uint128* %25, i32 0, i32 0, !dbg !2851
  %113 = load i64, i64* %112, align 8, !dbg !2851, !tbaa !617
  %114 = getelementptr inbounds %struct.FStar_UInt128_uint128, %struct.FStar_UInt128_uint128* %25, i32 0, i32 1, !dbg !2851
  %115 = load i64, i64* %114, align 8, !dbg !2851, !tbaa !619
  %116 = getelementptr inbounds %struct.FStar_UInt128_uint128, %struct.FStar_UInt128_uint128* %26, i32 0, i32 0, !dbg !2851
  %117 = load i64, i64* %116, align 8, !dbg !2851, !tbaa !617
  %118 = getelementptr inbounds %struct.FStar_UInt128_uint128, %struct.FStar_UInt128_uint128* %26, i32 0, i32 1, !dbg !2851
  %119 = load i64, i64* %118, align 8, !dbg !2851, !tbaa !619
  call void @FStar_UInt128_add(%struct.FStar_UInt128_uint128* nonnull sret(%struct.FStar_UInt128_uint128) align 4 %24, i64 %113, i64 %115, i64 %117, i64 %119) #14, !dbg !2851
  call void @FStar_UInt128_mul_wide(%struct.FStar_UInt128_uint128* nonnull sret(%struct.FStar_UInt128_uint128) align 4 %27, i64 noundef %32, i64 noundef %32) #14, !dbg !2852
  %120 = getelementptr inbounds %struct.FStar_UInt128_uint128, %struct.FStar_UInt128_uint128* %24, i32 0, i32 0, !dbg !2853
  %121 = load i64, i64* %120, align 8, !dbg !2853, !tbaa !617
  %122 = getelementptr inbounds %struct.FStar_UInt128_uint128, %struct.FStar_UInt128_uint128* %24, i32 0, i32 1, !dbg !2853
  %123 = load i64, i64* %122, align 8, !dbg !2853, !tbaa !619
  %124 = getelementptr inbounds %struct.FStar_UInt128_uint128, %struct.FStar_UInt128_uint128* %27, i32 0, i32 0, !dbg !2853
  %125 = load i64, i64* %124, align 8, !dbg !2853, !tbaa !617
  %126 = getelementptr inbounds %struct.FStar_UInt128_uint128, %struct.FStar_UInt128_uint128* %27, i32 0, i32 1, !dbg !2853
  %127 = load i64, i64* %126, align 8, !dbg !2853, !tbaa !619
  call void @FStar_UInt128_add(%struct.FStar_UInt128_uint128* nonnull sret(%struct.FStar_UInt128_uint128) align 4 %23, i64 %121, i64 %123, i64 %125, i64 %127) #14, !dbg !2853
  %128 = bitcast %struct.FStar_UInt128_uint128* %0 to i8*, !dbg !2854
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* noundef nonnull align 4 dereferenceable(16) %128, i8* noundef nonnull align 4 dereferenceable(16) %42, i32 16, i1 false), !dbg !2854, !tbaa.struct !1233
  %129 = getelementptr inbounds %struct.FStar_UInt128_uint128, %struct.FStar_UInt128_uint128* %0, i32 1, !dbg !2855
  %130 = bitcast %struct.FStar_UInt128_uint128* %129 to i8*, !dbg !2856
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* noundef nonnull align 4 dereferenceable(16) %130, i8* noundef nonnull align 4 dereferenceable(16) %59, i32 16, i1 false), !dbg !2856, !tbaa.struct !1233
  %131 = getelementptr inbounds %struct.FStar_UInt128_uint128, %struct.FStar_UInt128_uint128* %0, i32 2, !dbg !2857
  %132 = bitcast %struct.FStar_UInt128_uint128* %131 to i8*, !dbg !2858
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* noundef nonnull align 4 dereferenceable(16) %132, i8* noundef nonnull align 4 dereferenceable(16) %77, i32 16, i1 false), !dbg !2858, !tbaa.struct !1233
  %133 = getelementptr inbounds %struct.FStar_UInt128_uint128, %struct.FStar_UInt128_uint128* %0, i32 3, !dbg !2859
  %134 = bitcast %struct.FStar_UInt128_uint128* %133 to i8*, !dbg !2860
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* noundef nonnull align 4 dereferenceable(16) %134, i8* noundef nonnull align 4 dereferenceable(16) %94, i32 16, i1 false), !dbg !2860, !tbaa.struct !1233
  %135 = getelementptr inbounds %struct.FStar_UInt128_uint128, %struct.FStar_UInt128_uint128* %0, i32 4, !dbg !2861
  %136 = bitcast %struct.FStar_UInt128_uint128* %135 to i8*, !dbg !2862
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* noundef nonnull align 4 dereferenceable(16) %136, i8* noundef nonnull align 4 dereferenceable(16) %111, i32 16, i1 false), !dbg !2862, !tbaa.struct !1233
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %111) #14, !dbg !2863
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %94) #14, !dbg !2863
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %77) #14, !dbg !2863
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %59) #14, !dbg !2863
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %42) #14, !dbg !2863
  ret void, !dbg !2863
}

; Function Attrs: noinline nounwind uwtable
define internal fastcc void @Hacl_Bignum_Fproduct_carry_wide_(%struct.FStar_UInt128_uint128* nocapture noundef %0) unnamed_addr #0 !dbg !2864 {
  %2 = alloca %struct.FStar_UInt128_uint128, align 8
  %3 = alloca %struct.FStar_UInt128_uint128, align 4
  %4 = alloca %struct.FStar_UInt128_uint128, align 4
  %5 = alloca %struct.FStar_UInt128_uint128, align 8
  %6 = alloca %struct.FStar_UInt128_uint128, align 4
  %7 = alloca %struct.FStar_UInt128_uint128, align 4
  %8 = alloca %struct.FStar_UInt128_uint128, align 8
  %9 = alloca %struct.FStar_UInt128_uint128, align 4
  %10 = alloca %struct.FStar_UInt128_uint128, align 4
  %11 = alloca %struct.FStar_UInt128_uint128, align 8
  %12 = alloca %struct.FStar_UInt128_uint128, align 4
  %13 = alloca %struct.FStar_UInt128_uint128, align 4
  call void @llvm.dbg.value(metadata %struct.FStar_UInt128_uint128* %0, metadata !2868, metadata !DIExpression()), !dbg !2893
  call void @llvm.dbg.value(metadata i32 0, metadata !2869, metadata !DIExpression()), !dbg !2894
  %14 = getelementptr inbounds %struct.FStar_UInt128_uint128, %struct.FStar_UInt128_uint128* %0, i32 0, i32 0, !dbg !2895
  %15 = load i64, i64* %14, align 4, !dbg !2895, !tbaa.struct !1233
  call void @llvm.dbg.value(metadata i64 %15, metadata !2871, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 64)), !dbg !2894
  %16 = getelementptr inbounds %struct.FStar_UInt128_uint128, %struct.FStar_UInt128_uint128* %0, i32 0, i32 1, !dbg !2895
  %17 = load i64, i64* %16, align 4, !dbg !2895, !tbaa.struct !1544
  call void @llvm.dbg.value(metadata i64 %17, metadata !2871, metadata !DIExpression(DW_OP_LLVM_fragment, 64, 64)), !dbg !2894
  %18 = getelementptr inbounds %struct.FStar_UInt128_uint128, %struct.FStar_UInt128_uint128* %0, i32 1, !dbg !2896
  %19 = getelementptr inbounds %struct.FStar_UInt128_uint128, %struct.FStar_UInt128_uint128* %18, i32 0, i32 0, !dbg !2896
  %20 = load i64, i64* %19, align 4, !dbg !2896, !tbaa.struct !1233
  call void @llvm.dbg.value(metadata i64 %20, metadata !2872, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 64)), !dbg !2894
  %21 = getelementptr inbounds %struct.FStar_UInt128_uint128, %struct.FStar_UInt128_uint128* %0, i32 1, i32 1, !dbg !2896
  %22 = load i64, i64* %21, align 4, !dbg !2896, !tbaa.struct !1544
  call void @llvm.dbg.value(metadata i64 %22, metadata !2872, metadata !DIExpression(DW_OP_LLVM_fragment, 64, 64)), !dbg !2894
  %23 = call i64 @FStar_UInt128_uint128_to_uint64(i64 %15, i64 %17) #14, !dbg !2897
  %24 = and i64 %23, 2251799813685247, !dbg !2898
  call void @llvm.dbg.value(metadata i64 %24, metadata !2873, metadata !DIExpression()), !dbg !2894
  %25 = bitcast %struct.FStar_UInt128_uint128* %2 to i8*, !dbg !2899
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %25) #14, !dbg !2899
  call void @llvm.dbg.declare(metadata %struct.FStar_UInt128_uint128* %2, metadata !2874, metadata !DIExpression()), !dbg !2900
  call void @FStar_UInt128_shift_right(%struct.FStar_UInt128_uint128* nonnull sret(%struct.FStar_UInt128_uint128) align 4 %2, i64 %15, i64 %17, i32 noundef 51) #14, !dbg !2901
  %26 = bitcast %struct.FStar_UInt128_uint128* %3 to i8*, !dbg !2902
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %26) #14, !dbg !2902
  call void @FStar_UInt128_uint64_to_uint128(%struct.FStar_UInt128_uint128* nonnull sret(%struct.FStar_UInt128_uint128) align 4 %3, i64 noundef %24) #14, !dbg !2902
  %27 = bitcast %struct.FStar_UInt128_uint128* %0 to i8*, !dbg !2902
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* noundef nonnull align 4 dereferenceable(16) %27, i8* noundef nonnull align 4 dereferenceable(16) %26, i32 16, i1 false), !dbg !2902, !tbaa.struct !1233
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %26) #14, !dbg !2902
  %28 = bitcast %struct.FStar_UInt128_uint128* %4 to i8*, !dbg !2903
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %28) #14, !dbg !2903
  %29 = getelementptr inbounds %struct.FStar_UInt128_uint128, %struct.FStar_UInt128_uint128* %2, i32 0, i32 0, !dbg !2903
  %30 = load i64, i64* %29, align 8, !dbg !2903, !tbaa !617
  %31 = getelementptr inbounds %struct.FStar_UInt128_uint128, %struct.FStar_UInt128_uint128* %2, i32 0, i32 1, !dbg !2903
  %32 = load i64, i64* %31, align 8, !dbg !2903, !tbaa !619
  call void @FStar_UInt128_add(%struct.FStar_UInt128_uint128* nonnull sret(%struct.FStar_UInt128_uint128) align 4 %4, i64 %20, i64 %22, i64 %30, i64 %32) #14, !dbg !2903
  %33 = bitcast %struct.FStar_UInt128_uint128* %18 to i8*, !dbg !2903
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* noundef nonnull align 4 dereferenceable(16) %33, i8* noundef nonnull align 4 dereferenceable(16) %28, i32 16, i1 false), !dbg !2903, !tbaa.struct !1233
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %28) #14, !dbg !2903
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %25) #14, !dbg !2904
  call void @llvm.dbg.value(metadata i32 1, metadata !2875, metadata !DIExpression()), !dbg !2905
  %34 = load i64, i64* %19, align 4, !dbg !2906, !tbaa.struct !1233
  call void @llvm.dbg.value(metadata i64 %34, metadata !2877, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 64)), !dbg !2905
  %35 = load i64, i64* %21, align 4, !dbg !2906, !tbaa.struct !1544
  call void @llvm.dbg.value(metadata i64 %35, metadata !2877, metadata !DIExpression(DW_OP_LLVM_fragment, 64, 64)), !dbg !2905
  %36 = getelementptr inbounds %struct.FStar_UInt128_uint128, %struct.FStar_UInt128_uint128* %0, i32 2, !dbg !2907
  %37 = getelementptr inbounds %struct.FStar_UInt128_uint128, %struct.FStar_UInt128_uint128* %36, i32 0, i32 0, !dbg !2907
  %38 = load i64, i64* %37, align 4, !dbg !2907, !tbaa.struct !1233
  call void @llvm.dbg.value(metadata i64 %38, metadata !2878, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 64)), !dbg !2905
  %39 = getelementptr inbounds %struct.FStar_UInt128_uint128, %struct.FStar_UInt128_uint128* %0, i32 2, i32 1, !dbg !2907
  %40 = load i64, i64* %39, align 4, !dbg !2907, !tbaa.struct !1544
  call void @llvm.dbg.value(metadata i64 %40, metadata !2878, metadata !DIExpression(DW_OP_LLVM_fragment, 64, 64)), !dbg !2905
  %41 = call i64 @FStar_UInt128_uint128_to_uint64(i64 %34, i64 %35) #14, !dbg !2908
  %42 = and i64 %41, 2251799813685247, !dbg !2909
  call void @llvm.dbg.value(metadata i64 %42, metadata !2879, metadata !DIExpression()), !dbg !2905
  %43 = bitcast %struct.FStar_UInt128_uint128* %5 to i8*, !dbg !2910
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %43) #14, !dbg !2910
  call void @llvm.dbg.declare(metadata %struct.FStar_UInt128_uint128* %5, metadata !2880, metadata !DIExpression()), !dbg !2911
  call void @FStar_UInt128_shift_right(%struct.FStar_UInt128_uint128* nonnull sret(%struct.FStar_UInt128_uint128) align 4 %5, i64 %34, i64 %35, i32 noundef 51) #14, !dbg !2912
  %44 = bitcast %struct.FStar_UInt128_uint128* %6 to i8*, !dbg !2913
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %44) #14, !dbg !2913
  call void @FStar_UInt128_uint64_to_uint128(%struct.FStar_UInt128_uint128* nonnull sret(%struct.FStar_UInt128_uint128) align 4 %6, i64 noundef %42) #14, !dbg !2913
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* noundef nonnull align 4 dereferenceable(16) %33, i8* noundef nonnull align 4 dereferenceable(16) %44, i32 16, i1 false), !dbg !2913, !tbaa.struct !1233
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %44) #14, !dbg !2913
  %45 = bitcast %struct.FStar_UInt128_uint128* %7 to i8*, !dbg !2914
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %45) #14, !dbg !2914
  %46 = getelementptr inbounds %struct.FStar_UInt128_uint128, %struct.FStar_UInt128_uint128* %5, i32 0, i32 0, !dbg !2914
  %47 = load i64, i64* %46, align 8, !dbg !2914, !tbaa !617
  %48 = getelementptr inbounds %struct.FStar_UInt128_uint128, %struct.FStar_UInt128_uint128* %5, i32 0, i32 1, !dbg !2914
  %49 = load i64, i64* %48, align 8, !dbg !2914, !tbaa !619
  call void @FStar_UInt128_add(%struct.FStar_UInt128_uint128* nonnull sret(%struct.FStar_UInt128_uint128) align 4 %7, i64 %38, i64 %40, i64 %47, i64 %49) #14, !dbg !2914
  %50 = bitcast %struct.FStar_UInt128_uint128* %36 to i8*, !dbg !2914
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* noundef nonnull align 4 dereferenceable(16) %50, i8* noundef nonnull align 4 dereferenceable(16) %45, i32 16, i1 false), !dbg !2914, !tbaa.struct !1233
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %45) #14, !dbg !2914
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %43) #14, !dbg !2915
  call void @llvm.dbg.value(metadata i32 2, metadata !2881, metadata !DIExpression()), !dbg !2916
  %51 = load i64, i64* %37, align 4, !dbg !2917, !tbaa.struct !1233
  call void @llvm.dbg.value(metadata i64 %51, metadata !2883, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 64)), !dbg !2916
  %52 = load i64, i64* %39, align 4, !dbg !2917, !tbaa.struct !1544
  call void @llvm.dbg.value(metadata i64 %52, metadata !2883, metadata !DIExpression(DW_OP_LLVM_fragment, 64, 64)), !dbg !2916
  %53 = getelementptr inbounds %struct.FStar_UInt128_uint128, %struct.FStar_UInt128_uint128* %0, i32 3, !dbg !2918
  %54 = getelementptr inbounds %struct.FStar_UInt128_uint128, %struct.FStar_UInt128_uint128* %53, i32 0, i32 0, !dbg !2918
  %55 = load i64, i64* %54, align 4, !dbg !2918, !tbaa.struct !1233
  call void @llvm.dbg.value(metadata i64 %55, metadata !2884, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 64)), !dbg !2916
  %56 = getelementptr inbounds %struct.FStar_UInt128_uint128, %struct.FStar_UInt128_uint128* %0, i32 3, i32 1, !dbg !2918
  %57 = load i64, i64* %56, align 4, !dbg !2918, !tbaa.struct !1544
  call void @llvm.dbg.value(metadata i64 %57, metadata !2884, metadata !DIExpression(DW_OP_LLVM_fragment, 64, 64)), !dbg !2916
  %58 = call i64 @FStar_UInt128_uint128_to_uint64(i64 %51, i64 %52) #14, !dbg !2919
  %59 = and i64 %58, 2251799813685247, !dbg !2920
  call void @llvm.dbg.value(metadata i64 %59, metadata !2885, metadata !DIExpression()), !dbg !2916
  %60 = bitcast %struct.FStar_UInt128_uint128* %8 to i8*, !dbg !2921
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %60) #14, !dbg !2921
  call void @llvm.dbg.declare(metadata %struct.FStar_UInt128_uint128* %8, metadata !2886, metadata !DIExpression()), !dbg !2922
  call void @FStar_UInt128_shift_right(%struct.FStar_UInt128_uint128* nonnull sret(%struct.FStar_UInt128_uint128) align 4 %8, i64 %51, i64 %52, i32 noundef 51) #14, !dbg !2923
  %61 = bitcast %struct.FStar_UInt128_uint128* %9 to i8*, !dbg !2924
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %61) #14, !dbg !2924
  call void @FStar_UInt128_uint64_to_uint128(%struct.FStar_UInt128_uint128* nonnull sret(%struct.FStar_UInt128_uint128) align 4 %9, i64 noundef %59) #14, !dbg !2924
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* noundef nonnull align 4 dereferenceable(16) %50, i8* noundef nonnull align 4 dereferenceable(16) %61, i32 16, i1 false), !dbg !2924, !tbaa.struct !1233
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %61) #14, !dbg !2924
  %62 = bitcast %struct.FStar_UInt128_uint128* %10 to i8*, !dbg !2925
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %62) #14, !dbg !2925
  %63 = getelementptr inbounds %struct.FStar_UInt128_uint128, %struct.FStar_UInt128_uint128* %8, i32 0, i32 0, !dbg !2925
  %64 = load i64, i64* %63, align 8, !dbg !2925, !tbaa !617
  %65 = getelementptr inbounds %struct.FStar_UInt128_uint128, %struct.FStar_UInt128_uint128* %8, i32 0, i32 1, !dbg !2925
  %66 = load i64, i64* %65, align 8, !dbg !2925, !tbaa !619
  call void @FStar_UInt128_add(%struct.FStar_UInt128_uint128* nonnull sret(%struct.FStar_UInt128_uint128) align 4 %10, i64 %55, i64 %57, i64 %64, i64 %66) #14, !dbg !2925
  %67 = bitcast %struct.FStar_UInt128_uint128* %53 to i8*, !dbg !2925
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* noundef nonnull align 4 dereferenceable(16) %67, i8* noundef nonnull align 4 dereferenceable(16) %62, i32 16, i1 false), !dbg !2925, !tbaa.struct !1233
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %62) #14, !dbg !2925
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %60) #14, !dbg !2926
  call void @llvm.dbg.value(metadata i32 3, metadata !2887, metadata !DIExpression()), !dbg !2927
  %68 = load i64, i64* %54, align 4, !dbg !2928, !tbaa.struct !1233
  call void @llvm.dbg.value(metadata i64 %68, metadata !2889, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 64)), !dbg !2927
  %69 = load i64, i64* %56, align 4, !dbg !2928, !tbaa.struct !1544
  call void @llvm.dbg.value(metadata i64 %69, metadata !2889, metadata !DIExpression(DW_OP_LLVM_fragment, 64, 64)), !dbg !2927
  %70 = getelementptr inbounds %struct.FStar_UInt128_uint128, %struct.FStar_UInt128_uint128* %0, i32 4, !dbg !2929
  %71 = getelementptr inbounds %struct.FStar_UInt128_uint128, %struct.FStar_UInt128_uint128* %70, i32 0, i32 0, !dbg !2929
  %72 = load i64, i64* %71, align 4, !dbg !2929, !tbaa.struct !1233
  call void @llvm.dbg.value(metadata i64 %72, metadata !2890, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 64)), !dbg !2927
  %73 = getelementptr inbounds %struct.FStar_UInt128_uint128, %struct.FStar_UInt128_uint128* %0, i32 4, i32 1, !dbg !2929
  %74 = load i64, i64* %73, align 4, !dbg !2929, !tbaa.struct !1544
  call void @llvm.dbg.value(metadata i64 %74, metadata !2890, metadata !DIExpression(DW_OP_LLVM_fragment, 64, 64)), !dbg !2927
  %75 = call i64 @FStar_UInt128_uint128_to_uint64(i64 %68, i64 %69) #14, !dbg !2930
  %76 = and i64 %75, 2251799813685247, !dbg !2931
  call void @llvm.dbg.value(metadata i64 %76, metadata !2891, metadata !DIExpression()), !dbg !2927
  %77 = bitcast %struct.FStar_UInt128_uint128* %11 to i8*, !dbg !2932
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %77) #14, !dbg !2932
  call void @llvm.dbg.declare(metadata %struct.FStar_UInt128_uint128* %11, metadata !2892, metadata !DIExpression()), !dbg !2933
  call void @FStar_UInt128_shift_right(%struct.FStar_UInt128_uint128* nonnull sret(%struct.FStar_UInt128_uint128) align 4 %11, i64 %68, i64 %69, i32 noundef 51) #14, !dbg !2934
  %78 = bitcast %struct.FStar_UInt128_uint128* %12 to i8*, !dbg !2935
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %78) #14, !dbg !2935
  call void @FStar_UInt128_uint64_to_uint128(%struct.FStar_UInt128_uint128* nonnull sret(%struct.FStar_UInt128_uint128) align 4 %12, i64 noundef %76) #14, !dbg !2935
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* noundef nonnull align 4 dereferenceable(16) %67, i8* noundef nonnull align 4 dereferenceable(16) %78, i32 16, i1 false), !dbg !2935, !tbaa.struct !1233
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %78) #14, !dbg !2935
  %79 = bitcast %struct.FStar_UInt128_uint128* %13 to i8*, !dbg !2936
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %79) #14, !dbg !2936
  %80 = getelementptr inbounds %struct.FStar_UInt128_uint128, %struct.FStar_UInt128_uint128* %11, i32 0, i32 0, !dbg !2936
  %81 = load i64, i64* %80, align 8, !dbg !2936, !tbaa !617
  %82 = getelementptr inbounds %struct.FStar_UInt128_uint128, %struct.FStar_UInt128_uint128* %11, i32 0, i32 1, !dbg !2936
  %83 = load i64, i64* %82, align 8, !dbg !2936, !tbaa !619
  call void @FStar_UInt128_add(%struct.FStar_UInt128_uint128* nonnull sret(%struct.FStar_UInt128_uint128) align 4 %13, i64 %72, i64 %74, i64 %81, i64 %83) #14, !dbg !2936
  %84 = bitcast %struct.FStar_UInt128_uint128* %70 to i8*, !dbg !2936
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* noundef nonnull align 4 dereferenceable(16) %84, i8* noundef nonnull align 4 dereferenceable(16) %79, i32 16, i1 false), !dbg !2936, !tbaa.struct !1233
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %79) #14, !dbg !2936
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %77) #14, !dbg !2937
  ret void, !dbg !2938
}

declare !dbg !2939 void @FStar_UInt128_logand(%struct.FStar_UInt128_uint128* sret(%struct.FStar_UInt128_uint128) align 4, i64, i64, i64, i64) local_unnamed_addr #11

; Function Attrs: noinline nounwind uwtable
define internal fastcc void @Hacl_Bignum_Fproduct_copy_from_wide_(i64* nocapture noundef writeonly %0, %struct.FStar_UInt128_uint128* nocapture noundef readonly %1) unnamed_addr #0 !dbg !2940 {
  call void @llvm.dbg.value(metadata i64* %0, metadata !2942, metadata !DIExpression()), !dbg !2954
  call void @llvm.dbg.value(metadata %struct.FStar_UInt128_uint128* %1, metadata !2943, metadata !DIExpression()), !dbg !2954
  %3 = getelementptr inbounds %struct.FStar_UInt128_uint128, %struct.FStar_UInt128_uint128* %1, i32 0, i32 0, !dbg !2955
  %4 = load i64, i64* %3, align 4, !dbg !2955, !tbaa.struct !1233
  call void @llvm.dbg.value(metadata i64 %4, metadata !2944, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 64)), !dbg !2956
  %5 = getelementptr inbounds %struct.FStar_UInt128_uint128, %struct.FStar_UInt128_uint128* %1, i32 0, i32 1, !dbg !2955
  %6 = load i64, i64* %5, align 4, !dbg !2955, !tbaa.struct !1544
  call void @llvm.dbg.value(metadata i64 %6, metadata !2944, metadata !DIExpression(DW_OP_LLVM_fragment, 64, 64)), !dbg !2956
  %7 = call i64 @FStar_UInt128_uint128_to_uint64(i64 %4, i64 %6) #14, !dbg !2957
  store i64 %7, i64* %0, align 4, !dbg !2958, !tbaa !181
  %8 = getelementptr inbounds %struct.FStar_UInt128_uint128, %struct.FStar_UInt128_uint128* %1, i32 1, i32 0, !dbg !2959
  %9 = load i64, i64* %8, align 4, !dbg !2959, !tbaa.struct !1233
  call void @llvm.dbg.value(metadata i64 %9, metadata !2946, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 64)), !dbg !2960
  %10 = getelementptr inbounds %struct.FStar_UInt128_uint128, %struct.FStar_UInt128_uint128* %1, i32 1, i32 1, !dbg !2959
  %11 = load i64, i64* %10, align 4, !dbg !2959, !tbaa.struct !1544
  call void @llvm.dbg.value(metadata i64 %11, metadata !2946, metadata !DIExpression(DW_OP_LLVM_fragment, 64, 64)), !dbg !2960
  %12 = call i64 @FStar_UInt128_uint128_to_uint64(i64 %9, i64 %11) #14, !dbg !2961
  %13 = getelementptr inbounds i64, i64* %0, i32 1, !dbg !2962
  store i64 %12, i64* %13, align 4, !dbg !2963, !tbaa !181
  %14 = getelementptr inbounds %struct.FStar_UInt128_uint128, %struct.FStar_UInt128_uint128* %1, i32 2, i32 0, !dbg !2964
  %15 = load i64, i64* %14, align 4, !dbg !2964, !tbaa.struct !1233
  call void @llvm.dbg.value(metadata i64 %15, metadata !2948, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 64)), !dbg !2965
  %16 = getelementptr inbounds %struct.FStar_UInt128_uint128, %struct.FStar_UInt128_uint128* %1, i32 2, i32 1, !dbg !2964
  %17 = load i64, i64* %16, align 4, !dbg !2964, !tbaa.struct !1544
  call void @llvm.dbg.value(metadata i64 %17, metadata !2948, metadata !DIExpression(DW_OP_LLVM_fragment, 64, 64)), !dbg !2965
  %18 = call i64 @FStar_UInt128_uint128_to_uint64(i64 %15, i64 %17) #14, !dbg !2966
  %19 = getelementptr inbounds i64, i64* %0, i32 2, !dbg !2967
  store i64 %18, i64* %19, align 4, !dbg !2968, !tbaa !181
  %20 = getelementptr inbounds %struct.FStar_UInt128_uint128, %struct.FStar_UInt128_uint128* %1, i32 3, i32 0, !dbg !2969
  %21 = load i64, i64* %20, align 4, !dbg !2969, !tbaa.struct !1233
  call void @llvm.dbg.value(metadata i64 %21, metadata !2950, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 64)), !dbg !2970
  %22 = getelementptr inbounds %struct.FStar_UInt128_uint128, %struct.FStar_UInt128_uint128* %1, i32 3, i32 1, !dbg !2969
  %23 = load i64, i64* %22, align 4, !dbg !2969, !tbaa.struct !1544
  call void @llvm.dbg.value(metadata i64 %23, metadata !2950, metadata !DIExpression(DW_OP_LLVM_fragment, 64, 64)), !dbg !2970
  %24 = call i64 @FStar_UInt128_uint128_to_uint64(i64 %21, i64 %23) #14, !dbg !2971
  %25 = getelementptr inbounds i64, i64* %0, i32 3, !dbg !2972
  store i64 %24, i64* %25, align 4, !dbg !2973, !tbaa !181
  %26 = getelementptr inbounds %struct.FStar_UInt128_uint128, %struct.FStar_UInt128_uint128* %1, i32 4, i32 0, !dbg !2974
  %27 = load i64, i64* %26, align 4, !dbg !2974, !tbaa.struct !1233
  call void @llvm.dbg.value(metadata i64 %27, metadata !2952, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 64)), !dbg !2975
  %28 = getelementptr inbounds %struct.FStar_UInt128_uint128, %struct.FStar_UInt128_uint128* %1, i32 4, i32 1, !dbg !2974
  %29 = load i64, i64* %28, align 4, !dbg !2974, !tbaa.struct !1544
  call void @llvm.dbg.value(metadata i64 %29, metadata !2952, metadata !DIExpression(DW_OP_LLVM_fragment, 64, 64)), !dbg !2975
  %30 = call i64 @FStar_UInt128_uint128_to_uint64(i64 %27, i64 %29) #14, !dbg !2976
  %31 = getelementptr inbounds i64, i64* %0, i32 4, !dbg !2977
  store i64 %30, i64* %31, align 4, !dbg !2978, !tbaa !181
  ret void, !dbg !2979
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind uwtable willreturn
define internal fastcc void @Hacl_Bignum_fsum(i64* nocapture noundef %0, i64* nocapture noundef readonly %1) unnamed_addr #4 !dbg !2980 {
  call void @llvm.dbg.value(metadata i64* %0, metadata !2982, metadata !DIExpression()), !dbg !2999
  call void @llvm.dbg.value(metadata i64* %1, metadata !2983, metadata !DIExpression()), !dbg !2999
  %3 = load i64, i64* %0, align 4, !dbg !3000, !tbaa !181
  call void @llvm.dbg.value(metadata i64 %3, metadata !2984, metadata !DIExpression()), !dbg !3001
  %4 = load i64, i64* %1, align 4, !dbg !3002, !tbaa !181
  call void @llvm.dbg.value(metadata i64 %4, metadata !2986, metadata !DIExpression()), !dbg !3001
  %5 = add i64 %4, %3, !dbg !3003
  store i64 %5, i64* %0, align 4, !dbg !3004, !tbaa !181
  %6 = getelementptr inbounds i64, i64* %0, i32 1, !dbg !3005
  %7 = load i64, i64* %6, align 4, !dbg !3005, !tbaa !181
  call void @llvm.dbg.value(metadata i64 %7, metadata !2987, metadata !DIExpression()), !dbg !3006
  %8 = getelementptr inbounds i64, i64* %1, i32 1, !dbg !3007
  %9 = load i64, i64* %8, align 4, !dbg !3007, !tbaa !181
  call void @llvm.dbg.value(metadata i64 %9, metadata !2989, metadata !DIExpression()), !dbg !3006
  %10 = add i64 %9, %7, !dbg !3008
  store i64 %10, i64* %6, align 4, !dbg !3009, !tbaa !181
  %11 = getelementptr inbounds i64, i64* %0, i32 2, !dbg !3010
  %12 = load i64, i64* %11, align 4, !dbg !3010, !tbaa !181
  call void @llvm.dbg.value(metadata i64 %12, metadata !2990, metadata !DIExpression()), !dbg !3011
  %13 = getelementptr inbounds i64, i64* %1, i32 2, !dbg !3012
  %14 = load i64, i64* %13, align 4, !dbg !3012, !tbaa !181
  call void @llvm.dbg.value(metadata i64 %14, metadata !2992, metadata !DIExpression()), !dbg !3011
  %15 = add i64 %14, %12, !dbg !3013
  store i64 %15, i64* %11, align 4, !dbg !3014, !tbaa !181
  %16 = getelementptr inbounds i64, i64* %0, i32 3, !dbg !3015
  %17 = load i64, i64* %16, align 4, !dbg !3015, !tbaa !181
  call void @llvm.dbg.value(metadata i64 %17, metadata !2993, metadata !DIExpression()), !dbg !3016
  %18 = getelementptr inbounds i64, i64* %1, i32 3, !dbg !3017
  %19 = load i64, i64* %18, align 4, !dbg !3017, !tbaa !181
  call void @llvm.dbg.value(metadata i64 %19, metadata !2995, metadata !DIExpression()), !dbg !3016
  %20 = add i64 %19, %17, !dbg !3018
  store i64 %20, i64* %16, align 4, !dbg !3019, !tbaa !181
  %21 = getelementptr inbounds i64, i64* %0, i32 4, !dbg !3020
  %22 = load i64, i64* %21, align 4, !dbg !3020, !tbaa !181
  call void @llvm.dbg.value(metadata i64 %22, metadata !2996, metadata !DIExpression()), !dbg !3021
  %23 = getelementptr inbounds i64, i64* %1, i32 4, !dbg !3022
  %24 = load i64, i64* %23, align 4, !dbg !3022, !tbaa !181
  call void @llvm.dbg.value(metadata i64 %24, metadata !2998, metadata !DIExpression()), !dbg !3021
  %25 = add i64 %24, %22, !dbg !3023
  store i64 %25, i64* %21, align 4, !dbg !3024, !tbaa !181
  ret void, !dbg !3025
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind uwtable willreturn
define internal fastcc void @Hacl_Bignum_Modulo_carry_top(i64* nocapture noundef %0) unnamed_addr #4 !dbg !3026 {
  call void @llvm.dbg.value(metadata i64* %0, metadata !3028, metadata !DIExpression()), !dbg !3033
  %2 = getelementptr inbounds i64, i64* %0, i32 4, !dbg !3034
  %3 = load i64, i64* %2, align 4, !dbg !3034, !tbaa !181
  call void @llvm.dbg.value(metadata i64 %3, metadata !3029, metadata !DIExpression()), !dbg !3033
  %4 = load i64, i64* %0, align 4, !dbg !3035, !tbaa !181
  call void @llvm.dbg.value(metadata i64 %4, metadata !3030, metadata !DIExpression()), !dbg !3033
  %5 = and i64 %3, 2251799813685247, !dbg !3036
  call void @llvm.dbg.value(metadata i64 %5, metadata !3031, metadata !DIExpression()), !dbg !3033
  %6 = lshr i64 %3, 51, !dbg !3037
  %7 = mul nuw nsw i64 %6, 19, !dbg !3038
  %8 = add i64 %7, %4, !dbg !3039
  call void @llvm.dbg.value(metadata i64 %8, metadata !3032, metadata !DIExpression()), !dbg !3033
  store i64 %5, i64* %2, align 4, !dbg !3040, !tbaa !181
  store i64 %8, i64* %0, align 4, !dbg !3041, !tbaa !181
  ret void, !dbg !3042
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind uwtable willreturn
define internal fastcc void @Hacl_Bignum25519_fdifference(i64* nocapture noundef %0, i64* nocapture noundef readonly %1) unnamed_addr #4 !dbg !3043 {
  call void @llvm.dbg.value(metadata i64* %0, metadata !3045, metadata !DIExpression()), !dbg !3047
  call void @llvm.dbg.value(metadata i64* %1, metadata !3046, metadata !DIExpression()), !dbg !3047
  call fastcc void @Hacl_Bignum_fdifference(i64* noundef %0, i64* noundef %1), !dbg !3048
  ret void, !dbg !3049
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind uwtable willreturn
define internal fastcc void @Hacl_Bignum25519_fdifference_reduced(i64* nocapture noundef %0, i64* nocapture noundef readonly %1) unnamed_addr #4 !dbg !3050 {
  call void @llvm.dbg.value(metadata i64* %0, metadata !3052, metadata !DIExpression()), !dbg !3054
  call void @llvm.dbg.value(metadata i64* %1, metadata !3053, metadata !DIExpression()), !dbg !3054
  call fastcc void @Hacl_Bignum25519_fdifference(i64* noundef %0, i64* noundef %1), !dbg !3055
  call fastcc void @Hacl_Bignum25519_reduce_513(i64* noundef %0), !dbg !3056
  ret void, !dbg !3057
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind uwtable willreturn
define internal fastcc void @Hacl_Bignum_fdifference(i64* nocapture noundef %0, i64* nocapture noundef readonly %1) unnamed_addr #4 !dbg !3058 {
  call void @llvm.dbg.value(metadata i64* %0, metadata !3060, metadata !DIExpression()), !dbg !3083
  call void @llvm.dbg.value(metadata i64* %1, metadata !3061, metadata !DIExpression()), !dbg !3083
  call void @llvm.dbg.value(metadata i64 0, metadata !3062, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 64)), !dbg !3083
  call void @llvm.dbg.value(metadata i64 0, metadata !3062, metadata !DIExpression(DW_OP_LLVM_fragment, 64, 64)), !dbg !3083
  call void @llvm.dbg.value(metadata i64 0, metadata !3062, metadata !DIExpression(DW_OP_LLVM_fragment, 128, 64)), !dbg !3083
  call void @llvm.dbg.value(metadata i64 0, metadata !3062, metadata !DIExpression(DW_OP_LLVM_fragment, 192, 64)), !dbg !3083
  call void @llvm.dbg.value(metadata i64 0, metadata !3062, metadata !DIExpression(DW_OP_LLVM_fragment, 256, 64)), !dbg !3083
  %3 = load i64, i64* %1, align 4, !dbg !3084
  call void @llvm.dbg.value(metadata i64 %3, metadata !3062, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 64)), !dbg !3083
  %4 = getelementptr inbounds i64, i64* %1, i32 1, !dbg !3084
  %5 = load i64, i64* %4, align 4, !dbg !3084
  call void @llvm.dbg.value(metadata i64 %5, metadata !3062, metadata !DIExpression(DW_OP_LLVM_fragment, 64, 64)), !dbg !3083
  %6 = getelementptr inbounds i64, i64* %1, i32 2, !dbg !3084
  %7 = load i64, i64* %6, align 4, !dbg !3084
  call void @llvm.dbg.value(metadata i64 %7, metadata !3062, metadata !DIExpression(DW_OP_LLVM_fragment, 128, 64)), !dbg !3083
  %8 = getelementptr inbounds i64, i64* %1, i32 3, !dbg !3084
  %9 = load i64, i64* %8, align 4, !dbg !3084
  call void @llvm.dbg.value(metadata i64 %9, metadata !3062, metadata !DIExpression(DW_OP_LLVM_fragment, 192, 64)), !dbg !3083
  %10 = getelementptr inbounds i64, i64* %1, i32 4, !dbg !3084
  %11 = load i64, i64* %10, align 4, !dbg !3084
  call void @llvm.dbg.value(metadata i64 %11, metadata !3062, metadata !DIExpression(DW_OP_LLVM_fragment, 256, 64)), !dbg !3083
  call void @llvm.dbg.value(metadata i64 %3, metadata !3063, metadata !DIExpression()), !dbg !3083
  call void @llvm.dbg.value(metadata i64 %5, metadata !3064, metadata !DIExpression()), !dbg !3083
  call void @llvm.dbg.value(metadata i64 %7, metadata !3065, metadata !DIExpression()), !dbg !3083
  call void @llvm.dbg.value(metadata i64 %9, metadata !3066, metadata !DIExpression()), !dbg !3083
  call void @llvm.dbg.value(metadata i64 %11, metadata !3067, metadata !DIExpression()), !dbg !3083
  %12 = add i64 %3, 18014398509481832, !dbg !3085
  call void @llvm.dbg.value(metadata i64 %12, metadata !3062, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 64)), !dbg !3083
  %13 = add i64 %5, 18014398509481976, !dbg !3086
  call void @llvm.dbg.value(metadata i64 %13, metadata !3062, metadata !DIExpression(DW_OP_LLVM_fragment, 64, 64)), !dbg !3083
  %14 = add i64 %7, 18014398509481976, !dbg !3087
  call void @llvm.dbg.value(metadata i64 %14, metadata !3062, metadata !DIExpression(DW_OP_LLVM_fragment, 128, 64)), !dbg !3083
  %15 = add i64 %9, 18014398509481976, !dbg !3088
  call void @llvm.dbg.value(metadata i64 %15, metadata !3062, metadata !DIExpression(DW_OP_LLVM_fragment, 192, 64)), !dbg !3083
  %16 = add i64 %11, 18014398509481976, !dbg !3089
  call void @llvm.dbg.value(metadata i64 %16, metadata !3062, metadata !DIExpression(DW_OP_LLVM_fragment, 256, 64)), !dbg !3083
  %17 = load i64, i64* %0, align 4, !dbg !3090, !tbaa !181
  call void @llvm.dbg.value(metadata i64 %17, metadata !3068, metadata !DIExpression()), !dbg !3091
  call void @llvm.dbg.value(metadata i64 %12, metadata !3070, metadata !DIExpression()), !dbg !3091
  %18 = sub i64 %12, %17, !dbg !3092
  store i64 %18, i64* %0, align 4, !dbg !3093, !tbaa !181
  %19 = getelementptr inbounds i64, i64* %0, i32 1, !dbg !3094
  %20 = load i64, i64* %19, align 4, !dbg !3094, !tbaa !181
  call void @llvm.dbg.value(metadata i64 %20, metadata !3071, metadata !DIExpression()), !dbg !3095
  call void @llvm.dbg.value(metadata i64 %13, metadata !3073, metadata !DIExpression()), !dbg !3095
  %21 = sub i64 %13, %20, !dbg !3096
  store i64 %21, i64* %19, align 4, !dbg !3097, !tbaa !181
  %22 = getelementptr inbounds i64, i64* %0, i32 2, !dbg !3098
  %23 = load i64, i64* %22, align 4, !dbg !3098, !tbaa !181
  call void @llvm.dbg.value(metadata i64 %23, metadata !3074, metadata !DIExpression()), !dbg !3099
  call void @llvm.dbg.value(metadata i64 %14, metadata !3076, metadata !DIExpression()), !dbg !3099
  %24 = sub i64 %14, %23, !dbg !3100
  store i64 %24, i64* %22, align 4, !dbg !3101, !tbaa !181
  %25 = getelementptr inbounds i64, i64* %0, i32 3, !dbg !3102
  %26 = load i64, i64* %25, align 4, !dbg !3102, !tbaa !181
  call void @llvm.dbg.value(metadata i64 %26, metadata !3077, metadata !DIExpression()), !dbg !3103
  call void @llvm.dbg.value(metadata i64 %15, metadata !3079, metadata !DIExpression()), !dbg !3103
  %27 = sub i64 %15, %26, !dbg !3104
  store i64 %27, i64* %25, align 4, !dbg !3105, !tbaa !181
  %28 = getelementptr inbounds i64, i64* %0, i32 4, !dbg !3106
  %29 = load i64, i64* %28, align 4, !dbg !3106, !tbaa !181
  call void @llvm.dbg.value(metadata i64 %29, metadata !3080, metadata !DIExpression()), !dbg !3107
  call void @llvm.dbg.value(metadata i64 %16, metadata !3082, metadata !DIExpression()), !dbg !3107
  %30 = sub i64 %16, %29, !dbg !3108
  store i64 %30, i64* %28, align 4, !dbg !3109, !tbaa !181
  ret void, !dbg !3110
}

; Function Attrs: noinline nounwind uwtable
define internal fastcc void @Hacl_Bignum_fmul(i64* nocapture noundef %0, i64* nocapture noundef readonly %1, i64* nocapture noundef readonly %2) unnamed_addr #0 !dbg !3111 {
  call void @llvm.dbg.value(metadata i64* %0, metadata !3113, metadata !DIExpression()), !dbg !3116
  call void @llvm.dbg.value(metadata i64* %1, metadata !3114, metadata !DIExpression()), !dbg !3116
  call void @llvm.dbg.value(metadata i64* %2, metadata !3115, metadata !DIExpression()), !dbg !3116
  call fastcc void @Hacl_Bignum_Fmul_fmul(i64* noundef %0, i64* noundef %1, i64* noundef %2), !dbg !3117
  ret void, !dbg !3118
}

; Function Attrs: noinline nounwind uwtable
define internal fastcc void @Hacl_Bignum_Fmul_fmul(i64* nocapture noundef %0, i64* nocapture noundef readonly %1, i64* nocapture noundef readonly %2) unnamed_addr #0 !dbg !3119 {
  %4 = alloca [5 x i64], align 8
  %5 = alloca [5 x %struct.FStar_UInt128_uint128], align 8
  %6 = alloca %struct.FStar_UInt128_uint128, align 4
  %7 = alloca %struct.FStar_UInt128_uint128, align 4
  %8 = alloca %struct.FStar_UInt128_uint128, align 8
  %9 = alloca %struct.FStar_UInt128_uint128, align 4
  %10 = alloca %struct.FStar_UInt128_uint128, align 8
  %11 = alloca %struct.FStar_UInt128_uint128, align 8
  call void @llvm.dbg.value(metadata i64* %0, metadata !3121, metadata !DIExpression()), !dbg !3136
  call void @llvm.dbg.value(metadata i64* %1, metadata !3122, metadata !DIExpression()), !dbg !3136
  call void @llvm.dbg.value(metadata i64* %2, metadata !3123, metadata !DIExpression()), !dbg !3136
  %12 = bitcast [5 x i64]* %4 to i8*, !dbg !3137
  call void @llvm.lifetime.start.p0i8(i64 40, i8* nonnull %12) #14, !dbg !3137
  call void @llvm.dbg.declare(metadata [5 x i64]* %4, metadata !3124, metadata !DIExpression()), !dbg !3138
  %13 = bitcast i64* %1 to i8*, !dbg !3139
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* noundef nonnull align 8 dereferenceable(40) %12, i8* noundef nonnull align 4 dereferenceable(40) %13, i32 40, i1 false), !dbg !3139
  %14 = bitcast [5 x %struct.FStar_UInt128_uint128]* %5 to i8*, !dbg !3140
  call void @llvm.lifetime.start.p0i8(i64 80, i8* nonnull %14) #14, !dbg !3140
  call void @llvm.dbg.declare(metadata [5 x %struct.FStar_UInt128_uint128]* %5, metadata !3125, metadata !DIExpression()), !dbg !3141
  call void @llvm.dbg.value(metadata i32 0, metadata !3126, metadata !DIExpression()), !dbg !3142
  %15 = bitcast %struct.FStar_UInt128_uint128* %6 to i8*
  call void @llvm.dbg.value(metadata i32 0, metadata !3126, metadata !DIExpression()), !dbg !3142
  br label %50, !dbg !3143

16:                                               ; preds = %50
  %17 = getelementptr inbounds [5 x i64], [5 x i64]* %4, i32 0, i32 0, !dbg !3139
  %18 = getelementptr inbounds [5 x %struct.FStar_UInt128_uint128], [5 x %struct.FStar_UInt128_uint128]* %5, i32 0, i32 0, !dbg !3144
  call fastcc void @Hacl_Bignum_Fmul_mul_shift_reduce_(%struct.FStar_UInt128_uint128* noundef nonnull %18, i64* noundef nonnull %17, i64* noundef %2), !dbg !3145
  call fastcc void @Hacl_Bignum_Fproduct_carry_wide_(%struct.FStar_UInt128_uint128* noundef nonnull %18), !dbg !3146
  %19 = getelementptr inbounds [5 x %struct.FStar_UInt128_uint128], [5 x %struct.FStar_UInt128_uint128]* %5, i32 0, i32 4, i32 0, !dbg !3147
  %20 = load i64, i64* %19, align 8, !dbg !3147, !tbaa.struct !1233
  call void @llvm.dbg.value(metadata i64 %20, metadata !3128, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 64)), !dbg !3136
  %21 = getelementptr inbounds [5 x %struct.FStar_UInt128_uint128], [5 x %struct.FStar_UInt128_uint128]* %5, i32 0, i32 4, i32 1, !dbg !3147
  %22 = load i64, i64* %21, align 8, !dbg !3147, !tbaa.struct !1544
  call void @llvm.dbg.value(metadata i64 %22, metadata !3128, metadata !DIExpression(DW_OP_LLVM_fragment, 64, 64)), !dbg !3136
  %23 = getelementptr inbounds [5 x %struct.FStar_UInt128_uint128], [5 x %struct.FStar_UInt128_uint128]* %5, i32 0, i32 0, i32 0, !dbg !3148
  %24 = load i64, i64* %23, align 8, !dbg !3148, !tbaa.struct !1233
  call void @llvm.dbg.value(metadata i64 %24, metadata !3129, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 64)), !dbg !3136
  %25 = getelementptr inbounds [5 x %struct.FStar_UInt128_uint128], [5 x %struct.FStar_UInt128_uint128]* %5, i32 0, i32 0, i32 1, !dbg !3148
  %26 = load i64, i64* %25, align 8, !dbg !3148, !tbaa.struct !1544
  call void @llvm.dbg.value(metadata i64 %26, metadata !3129, metadata !DIExpression(DW_OP_LLVM_fragment, 64, 64)), !dbg !3136
  %27 = bitcast %struct.FStar_UInt128_uint128* %7 to i8*, !dbg !3149
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %27) #14, !dbg !3149
  call void @llvm.dbg.declare(metadata %struct.FStar_UInt128_uint128* %7, metadata !3130, metadata !DIExpression()), !dbg !3150
  call void @FStar_UInt128_uint64_to_uint128(%struct.FStar_UInt128_uint128* nonnull sret(%struct.FStar_UInt128_uint128) align 4 %8, i64 noundef 2251799813685247) #14, !dbg !3151
  %28 = getelementptr inbounds %struct.FStar_UInt128_uint128, %struct.FStar_UInt128_uint128* %8, i32 0, i32 0, !dbg !3152
  %29 = load i64, i64* %28, align 8, !dbg !3152, !tbaa !617
  %30 = getelementptr inbounds %struct.FStar_UInt128_uint128, %struct.FStar_UInt128_uint128* %8, i32 0, i32 1, !dbg !3152
  %31 = load i64, i64* %30, align 8, !dbg !3152, !tbaa !619
  call void @FStar_UInt128_logand(%struct.FStar_UInt128_uint128* nonnull sret(%struct.FStar_UInt128_uint128) align 4 %7, i64 %20, i64 %22, i64 %29, i64 %31) #14, !dbg !3152
  %32 = bitcast %struct.FStar_UInt128_uint128* %9 to i8*, !dbg !3153
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %32) #14, !dbg !3153
  call void @llvm.dbg.declare(metadata %struct.FStar_UInt128_uint128* %9, metadata !3131, metadata !DIExpression()), !dbg !3154
  call void @FStar_UInt128_shift_right(%struct.FStar_UInt128_uint128* nonnull sret(%struct.FStar_UInt128_uint128) align 4 %11, i64 %20, i64 %22, i32 noundef 51) #14, !dbg !3155
  %33 = getelementptr inbounds %struct.FStar_UInt128_uint128, %struct.FStar_UInt128_uint128* %11, i32 0, i32 0, !dbg !3156
  %34 = load i64, i64* %33, align 8, !dbg !3156, !tbaa !617
  %35 = getelementptr inbounds %struct.FStar_UInt128_uint128, %struct.FStar_UInt128_uint128* %11, i32 0, i32 1, !dbg !3156
  %36 = load i64, i64* %35, align 8, !dbg !3156, !tbaa !619
  %37 = call i64 @FStar_UInt128_uint128_to_uint64(i64 %34, i64 %36) #14, !dbg !3156
  call void @FStar_UInt128_mul_wide(%struct.FStar_UInt128_uint128* nonnull sret(%struct.FStar_UInt128_uint128) align 4 %10, i64 noundef 19, i64 noundef %37) #14, !dbg !3157
  %38 = getelementptr inbounds %struct.FStar_UInt128_uint128, %struct.FStar_UInt128_uint128* %10, i32 0, i32 0, !dbg !3158
  %39 = load i64, i64* %38, align 8, !dbg !3158, !tbaa !617
  %40 = getelementptr inbounds %struct.FStar_UInt128_uint128, %struct.FStar_UInt128_uint128* %10, i32 0, i32 1, !dbg !3158
  %41 = load i64, i64* %40, align 8, !dbg !3158, !tbaa !619
  call void @FStar_UInt128_add(%struct.FStar_UInt128_uint128* nonnull sret(%struct.FStar_UInt128_uint128) align 4 %9, i64 %24, i64 %26, i64 %39, i64 %41) #14, !dbg !3158
  %42 = getelementptr inbounds [5 x %struct.FStar_UInt128_uint128], [5 x %struct.FStar_UInt128_uint128]* %5, i32 0, i32 4, !dbg !3159
  %43 = bitcast %struct.FStar_UInt128_uint128* %42 to i8*, !dbg !3160
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* noundef nonnull align 8 dereferenceable(16) %43, i8* noundef nonnull align 4 dereferenceable(16) %27, i32 16, i1 false), !dbg !3160, !tbaa.struct !1233
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* noundef nonnull align 8 dereferenceable(16) %14, i8* noundef nonnull align 4 dereferenceable(16) %32, i32 16, i1 false), !dbg !3161, !tbaa.struct !1233
  call fastcc void @Hacl_Bignum_Fproduct_copy_from_wide_(i64* noundef %0, %struct.FStar_UInt128_uint128* noundef nonnull %18), !dbg !3162
  %44 = load i64, i64* %0, align 4, !dbg !3163, !tbaa !181
  call void @llvm.dbg.value(metadata i64 %44, metadata !3132, metadata !DIExpression()), !dbg !3136
  %45 = getelementptr inbounds i64, i64* %0, i32 1, !dbg !3164
  %46 = load i64, i64* %45, align 4, !dbg !3164, !tbaa !181
  call void @llvm.dbg.value(metadata i64 %46, metadata !3133, metadata !DIExpression()), !dbg !3136
  %47 = and i64 %44, 2251799813685247, !dbg !3165
  call void @llvm.dbg.value(metadata i64 %47, metadata !3134, metadata !DIExpression()), !dbg !3136
  %48 = lshr i64 %44, 51, !dbg !3166
  %49 = add i64 %46, %48, !dbg !3167
  call void @llvm.dbg.value(metadata i64 %49, metadata !3135, metadata !DIExpression()), !dbg !3136
  store i64 %47, i64* %0, align 4, !dbg !3168, !tbaa !181
  store i64 %49, i64* %45, align 4, !dbg !3169, !tbaa !181
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %32) #14, !dbg !3170
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %27) #14, !dbg !3170
  call void @llvm.lifetime.end.p0i8(i64 80, i8* nonnull %14) #14, !dbg !3170
  call void @llvm.lifetime.end.p0i8(i64 40, i8* nonnull %12) #14, !dbg !3170
  ret void, !dbg !3170

50:                                               ; preds = %3, %50
  %51 = phi i32 [ 0, %3 ], [ %54, %50 ]
  call void @llvm.dbg.value(metadata i32 %51, metadata !3126, metadata !DIExpression()), !dbg !3142
  %52 = getelementptr inbounds [5 x %struct.FStar_UInt128_uint128], [5 x %struct.FStar_UInt128_uint128]* %5, i32 0, i32 %51, !dbg !3171
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %15) #14, !dbg !3173
  call void @FStar_UInt128_uint64_to_uint128(%struct.FStar_UInt128_uint128* nonnull sret(%struct.FStar_UInt128_uint128) align 4 %6, i64 noundef 0) #14, !dbg !3173
  %53 = bitcast %struct.FStar_UInt128_uint128* %52 to i8*, !dbg !3173
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* noundef nonnull align 8 dereferenceable(16) %53, i8* noundef nonnull align 4 dereferenceable(16) %15, i32 16, i1 false), !dbg !3173, !tbaa.struct !1233
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %15) #14, !dbg !3173
  %54 = add nuw nsw i32 %51, 1, !dbg !3174
  call void @llvm.dbg.value(metadata i32 %54, metadata !3126, metadata !DIExpression()), !dbg !3142
  %55 = icmp eq i32 %54, 5, !dbg !3175
  br i1 %55, label %16, label %50, !dbg !3143, !llvm.loop !3176
}

; Function Attrs: noinline nounwind uwtable
define internal fastcc void @Hacl_Bignum_Fmul_mul_shift_reduce_(%struct.FStar_UInt128_uint128* nocapture noundef %0, i64* nocapture noundef %1, i64* nocapture noundef readonly %2) unnamed_addr #0 !dbg !3178 {
  call void @llvm.dbg.value(metadata %struct.FStar_UInt128_uint128* %0, metadata !3180, metadata !DIExpression()), !dbg !3193
  call void @llvm.dbg.value(metadata i64* %1, metadata !3181, metadata !DIExpression()), !dbg !3193
  call void @llvm.dbg.value(metadata i64* %2, metadata !3182, metadata !DIExpression()), !dbg !3193
  %4 = load i64, i64* %2, align 4, !dbg !3194, !tbaa !181
  call void @llvm.dbg.value(metadata i64 %4, metadata !3183, metadata !DIExpression()), !dbg !3195
  call fastcc void @Hacl_Bignum_Fproduct_sum_scalar_multiplication_(%struct.FStar_UInt128_uint128* noundef %0, i64* noundef %1, i64 noundef %4), !dbg !3196
  call fastcc void @Hacl_Bignum_Fmul_shift_reduce(i64* noundef %1), !dbg !3197
  %5 = getelementptr inbounds i64, i64* %2, i32 1, !dbg !3198
  %6 = load i64, i64* %5, align 4, !dbg !3198, !tbaa !181
  call void @llvm.dbg.value(metadata i64 %6, metadata !3185, metadata !DIExpression()), !dbg !3199
  call fastcc void @Hacl_Bignum_Fproduct_sum_scalar_multiplication_(%struct.FStar_UInt128_uint128* noundef %0, i64* noundef %1, i64 noundef %6), !dbg !3200
  call fastcc void @Hacl_Bignum_Fmul_shift_reduce(i64* noundef %1), !dbg !3201
  %7 = getelementptr inbounds i64, i64* %2, i32 2, !dbg !3202
  %8 = load i64, i64* %7, align 4, !dbg !3202, !tbaa !181
  call void @llvm.dbg.value(metadata i64 %8, metadata !3187, metadata !DIExpression()), !dbg !3203
  call fastcc void @Hacl_Bignum_Fproduct_sum_scalar_multiplication_(%struct.FStar_UInt128_uint128* noundef %0, i64* noundef %1, i64 noundef %8), !dbg !3204
  call fastcc void @Hacl_Bignum_Fmul_shift_reduce(i64* noundef %1), !dbg !3205
  %9 = getelementptr inbounds i64, i64* %2, i32 3, !dbg !3206
  %10 = load i64, i64* %9, align 4, !dbg !3206, !tbaa !181
  call void @llvm.dbg.value(metadata i64 %10, metadata !3189, metadata !DIExpression()), !dbg !3207
  call fastcc void @Hacl_Bignum_Fproduct_sum_scalar_multiplication_(%struct.FStar_UInt128_uint128* noundef %0, i64* noundef %1, i64 noundef %10), !dbg !3208
  call fastcc void @Hacl_Bignum_Fmul_shift_reduce(i64* noundef %1), !dbg !3209
  call void @llvm.dbg.value(metadata i32 4, metadata !3191, metadata !DIExpression()), !dbg !3193
  %11 = getelementptr inbounds i64, i64* %2, i32 4, !dbg !3210
  %12 = load i64, i64* %11, align 4, !dbg !3210, !tbaa !181
  call void @llvm.dbg.value(metadata i64 %12, metadata !3192, metadata !DIExpression()), !dbg !3193
  call fastcc void @Hacl_Bignum_Fproduct_sum_scalar_multiplication_(%struct.FStar_UInt128_uint128* noundef %0, i64* noundef %1, i64 noundef %12), !dbg !3211
  ret void, !dbg !3212
}

; Function Attrs: noinline nounwind uwtable
define internal fastcc void @Hacl_Bignum_Fproduct_sum_scalar_multiplication_(%struct.FStar_UInt128_uint128* nocapture noundef %0, i64* nocapture noundef readonly %1, i64 noundef %2) unnamed_addr #0 !dbg !3213 {
  %4 = alloca %struct.FStar_UInt128_uint128, align 4
  %5 = alloca %struct.FStar_UInt128_uint128, align 8
  %6 = alloca %struct.FStar_UInt128_uint128, align 4
  %7 = alloca %struct.FStar_UInt128_uint128, align 8
  %8 = alloca %struct.FStar_UInt128_uint128, align 4
  %9 = alloca %struct.FStar_UInt128_uint128, align 8
  %10 = alloca %struct.FStar_UInt128_uint128, align 4
  %11 = alloca %struct.FStar_UInt128_uint128, align 8
  %12 = alloca %struct.FStar_UInt128_uint128, align 4
  %13 = alloca %struct.FStar_UInt128_uint128, align 8
  call void @llvm.dbg.value(metadata %struct.FStar_UInt128_uint128* %0, metadata !3217, metadata !DIExpression()), !dbg !3235
  call void @llvm.dbg.value(metadata i64* %1, metadata !3218, metadata !DIExpression()), !dbg !3235
  call void @llvm.dbg.value(metadata i64 %2, metadata !3219, metadata !DIExpression()), !dbg !3235
  %14 = getelementptr inbounds %struct.FStar_UInt128_uint128, %struct.FStar_UInt128_uint128* %0, i32 0, i32 0, !dbg !3236
  %15 = load i64, i64* %14, align 4, !dbg !3236, !tbaa.struct !1233
  call void @llvm.dbg.value(metadata i64 %15, metadata !3220, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 64)), !dbg !3237
  %16 = getelementptr inbounds %struct.FStar_UInt128_uint128, %struct.FStar_UInt128_uint128* %0, i32 0, i32 1, !dbg !3236
  %17 = load i64, i64* %16, align 4, !dbg !3236, !tbaa.struct !1544
  call void @llvm.dbg.value(metadata i64 %17, metadata !3220, metadata !DIExpression(DW_OP_LLVM_fragment, 64, 64)), !dbg !3237
  %18 = load i64, i64* %1, align 4, !dbg !3238, !tbaa !181
  call void @llvm.dbg.value(metadata i64 %18, metadata !3222, metadata !DIExpression()), !dbg !3237
  %19 = bitcast %struct.FStar_UInt128_uint128* %4 to i8*, !dbg !3239
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %19) #14, !dbg !3239
  call void @FStar_UInt128_mul_wide(%struct.FStar_UInt128_uint128* nonnull sret(%struct.FStar_UInt128_uint128) align 4 %5, i64 noundef %18, i64 noundef %2) #14, !dbg !3240
  %20 = getelementptr inbounds %struct.FStar_UInt128_uint128, %struct.FStar_UInt128_uint128* %5, i32 0, i32 0, !dbg !3239
  %21 = load i64, i64* %20, align 8, !dbg !3239, !tbaa !617
  %22 = getelementptr inbounds %struct.FStar_UInt128_uint128, %struct.FStar_UInt128_uint128* %5, i32 0, i32 1, !dbg !3239
  %23 = load i64, i64* %22, align 8, !dbg !3239, !tbaa !619
  call void @FStar_UInt128_add_mod(%struct.FStar_UInt128_uint128* nonnull sret(%struct.FStar_UInt128_uint128) align 4 %4, i64 %15, i64 %17, i64 %21, i64 %23) #14, !dbg !3239
  %24 = bitcast %struct.FStar_UInt128_uint128* %0 to i8*, !dbg !3239
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* noundef nonnull align 4 dereferenceable(16) %24, i8* noundef nonnull align 4 dereferenceable(16) %19, i32 16, i1 false), !dbg !3239, !tbaa.struct !1233
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %19) #14, !dbg !3239
  %25 = getelementptr inbounds %struct.FStar_UInt128_uint128, %struct.FStar_UInt128_uint128* %0, i32 1, i32 0, !dbg !3241
  %26 = load i64, i64* %25, align 4, !dbg !3241, !tbaa.struct !1233
  call void @llvm.dbg.value(metadata i64 %26, metadata !3223, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 64)), !dbg !3242
  %27 = getelementptr inbounds %struct.FStar_UInt128_uint128, %struct.FStar_UInt128_uint128* %0, i32 1, i32 1, !dbg !3241
  %28 = load i64, i64* %27, align 4, !dbg !3241, !tbaa.struct !1544
  call void @llvm.dbg.value(metadata i64 %28, metadata !3223, metadata !DIExpression(DW_OP_LLVM_fragment, 64, 64)), !dbg !3242
  %29 = getelementptr inbounds i64, i64* %1, i32 1, !dbg !3243
  %30 = load i64, i64* %29, align 4, !dbg !3243, !tbaa !181
  call void @llvm.dbg.value(metadata i64 %30, metadata !3225, metadata !DIExpression()), !dbg !3242
  %31 = getelementptr inbounds %struct.FStar_UInt128_uint128, %struct.FStar_UInt128_uint128* %0, i32 1, !dbg !3244
  %32 = bitcast %struct.FStar_UInt128_uint128* %6 to i8*, !dbg !3245
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %32) #14, !dbg !3245
  call void @FStar_UInt128_mul_wide(%struct.FStar_UInt128_uint128* nonnull sret(%struct.FStar_UInt128_uint128) align 4 %7, i64 noundef %30, i64 noundef %2) #14, !dbg !3246
  %33 = getelementptr inbounds %struct.FStar_UInt128_uint128, %struct.FStar_UInt128_uint128* %7, i32 0, i32 0, !dbg !3245
  %34 = load i64, i64* %33, align 8, !dbg !3245, !tbaa !617
  %35 = getelementptr inbounds %struct.FStar_UInt128_uint128, %struct.FStar_UInt128_uint128* %7, i32 0, i32 1, !dbg !3245
  %36 = load i64, i64* %35, align 8, !dbg !3245, !tbaa !619
  call void @FStar_UInt128_add_mod(%struct.FStar_UInt128_uint128* nonnull sret(%struct.FStar_UInt128_uint128) align 4 %6, i64 %26, i64 %28, i64 %34, i64 %36) #14, !dbg !3245
  %37 = bitcast %struct.FStar_UInt128_uint128* %31 to i8*, !dbg !3245
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* noundef nonnull align 4 dereferenceable(16) %37, i8* noundef nonnull align 4 dereferenceable(16) %32, i32 16, i1 false), !dbg !3245, !tbaa.struct !1233
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %32) #14, !dbg !3245
  %38 = getelementptr inbounds %struct.FStar_UInt128_uint128, %struct.FStar_UInt128_uint128* %0, i32 2, i32 0, !dbg !3247
  %39 = load i64, i64* %38, align 4, !dbg !3247, !tbaa.struct !1233
  call void @llvm.dbg.value(metadata i64 %39, metadata !3226, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 64)), !dbg !3248
  %40 = getelementptr inbounds %struct.FStar_UInt128_uint128, %struct.FStar_UInt128_uint128* %0, i32 2, i32 1, !dbg !3247
  %41 = load i64, i64* %40, align 4, !dbg !3247, !tbaa.struct !1544
  call void @llvm.dbg.value(metadata i64 %41, metadata !3226, metadata !DIExpression(DW_OP_LLVM_fragment, 64, 64)), !dbg !3248
  %42 = getelementptr inbounds i64, i64* %1, i32 2, !dbg !3249
  %43 = load i64, i64* %42, align 4, !dbg !3249, !tbaa !181
  call void @llvm.dbg.value(metadata i64 %43, metadata !3228, metadata !DIExpression()), !dbg !3248
  %44 = getelementptr inbounds %struct.FStar_UInt128_uint128, %struct.FStar_UInt128_uint128* %0, i32 2, !dbg !3250
  %45 = bitcast %struct.FStar_UInt128_uint128* %8 to i8*, !dbg !3251
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %45) #14, !dbg !3251
  call void @FStar_UInt128_mul_wide(%struct.FStar_UInt128_uint128* nonnull sret(%struct.FStar_UInt128_uint128) align 4 %9, i64 noundef %43, i64 noundef %2) #14, !dbg !3252
  %46 = getelementptr inbounds %struct.FStar_UInt128_uint128, %struct.FStar_UInt128_uint128* %9, i32 0, i32 0, !dbg !3251
  %47 = load i64, i64* %46, align 8, !dbg !3251, !tbaa !617
  %48 = getelementptr inbounds %struct.FStar_UInt128_uint128, %struct.FStar_UInt128_uint128* %9, i32 0, i32 1, !dbg !3251
  %49 = load i64, i64* %48, align 8, !dbg !3251, !tbaa !619
  call void @FStar_UInt128_add_mod(%struct.FStar_UInt128_uint128* nonnull sret(%struct.FStar_UInt128_uint128) align 4 %8, i64 %39, i64 %41, i64 %47, i64 %49) #14, !dbg !3251
  %50 = bitcast %struct.FStar_UInt128_uint128* %44 to i8*, !dbg !3251
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* noundef nonnull align 4 dereferenceable(16) %50, i8* noundef nonnull align 4 dereferenceable(16) %45, i32 16, i1 false), !dbg !3251, !tbaa.struct !1233
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %45) #14, !dbg !3251
  %51 = getelementptr inbounds %struct.FStar_UInt128_uint128, %struct.FStar_UInt128_uint128* %0, i32 3, i32 0, !dbg !3253
  %52 = load i64, i64* %51, align 4, !dbg !3253, !tbaa.struct !1233
  call void @llvm.dbg.value(metadata i64 %52, metadata !3229, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 64)), !dbg !3254
  %53 = getelementptr inbounds %struct.FStar_UInt128_uint128, %struct.FStar_UInt128_uint128* %0, i32 3, i32 1, !dbg !3253
  %54 = load i64, i64* %53, align 4, !dbg !3253, !tbaa.struct !1544
  call void @llvm.dbg.value(metadata i64 %54, metadata !3229, metadata !DIExpression(DW_OP_LLVM_fragment, 64, 64)), !dbg !3254
  %55 = getelementptr inbounds i64, i64* %1, i32 3, !dbg !3255
  %56 = load i64, i64* %55, align 4, !dbg !3255, !tbaa !181
  call void @llvm.dbg.value(metadata i64 %56, metadata !3231, metadata !DIExpression()), !dbg !3254
  %57 = getelementptr inbounds %struct.FStar_UInt128_uint128, %struct.FStar_UInt128_uint128* %0, i32 3, !dbg !3256
  %58 = bitcast %struct.FStar_UInt128_uint128* %10 to i8*, !dbg !3257
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %58) #14, !dbg !3257
  call void @FStar_UInt128_mul_wide(%struct.FStar_UInt128_uint128* nonnull sret(%struct.FStar_UInt128_uint128) align 4 %11, i64 noundef %56, i64 noundef %2) #14, !dbg !3258
  %59 = getelementptr inbounds %struct.FStar_UInt128_uint128, %struct.FStar_UInt128_uint128* %11, i32 0, i32 0, !dbg !3257
  %60 = load i64, i64* %59, align 8, !dbg !3257, !tbaa !617
  %61 = getelementptr inbounds %struct.FStar_UInt128_uint128, %struct.FStar_UInt128_uint128* %11, i32 0, i32 1, !dbg !3257
  %62 = load i64, i64* %61, align 8, !dbg !3257, !tbaa !619
  call void @FStar_UInt128_add_mod(%struct.FStar_UInt128_uint128* nonnull sret(%struct.FStar_UInt128_uint128) align 4 %10, i64 %52, i64 %54, i64 %60, i64 %62) #14, !dbg !3257
  %63 = bitcast %struct.FStar_UInt128_uint128* %57 to i8*, !dbg !3257
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* noundef nonnull align 4 dereferenceable(16) %63, i8* noundef nonnull align 4 dereferenceable(16) %58, i32 16, i1 false), !dbg !3257, !tbaa.struct !1233
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %58) #14, !dbg !3257
  %64 = getelementptr inbounds %struct.FStar_UInt128_uint128, %struct.FStar_UInt128_uint128* %0, i32 4, i32 0, !dbg !3259
  %65 = load i64, i64* %64, align 4, !dbg !3259, !tbaa.struct !1233
  call void @llvm.dbg.value(metadata i64 %65, metadata !3232, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 64)), !dbg !3260
  %66 = getelementptr inbounds %struct.FStar_UInt128_uint128, %struct.FStar_UInt128_uint128* %0, i32 4, i32 1, !dbg !3259
  %67 = load i64, i64* %66, align 4, !dbg !3259, !tbaa.struct !1544
  call void @llvm.dbg.value(metadata i64 %67, metadata !3232, metadata !DIExpression(DW_OP_LLVM_fragment, 64, 64)), !dbg !3260
  %68 = getelementptr inbounds i64, i64* %1, i32 4, !dbg !3261
  %69 = load i64, i64* %68, align 4, !dbg !3261, !tbaa !181
  call void @llvm.dbg.value(metadata i64 %69, metadata !3234, metadata !DIExpression()), !dbg !3260
  %70 = getelementptr inbounds %struct.FStar_UInt128_uint128, %struct.FStar_UInt128_uint128* %0, i32 4, !dbg !3262
  %71 = bitcast %struct.FStar_UInt128_uint128* %12 to i8*, !dbg !3263
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %71) #14, !dbg !3263
  call void @FStar_UInt128_mul_wide(%struct.FStar_UInt128_uint128* nonnull sret(%struct.FStar_UInt128_uint128) align 4 %13, i64 noundef %69, i64 noundef %2) #14, !dbg !3264
  %72 = getelementptr inbounds %struct.FStar_UInt128_uint128, %struct.FStar_UInt128_uint128* %13, i32 0, i32 0, !dbg !3263
  %73 = load i64, i64* %72, align 8, !dbg !3263, !tbaa !617
  %74 = getelementptr inbounds %struct.FStar_UInt128_uint128, %struct.FStar_UInt128_uint128* %13, i32 0, i32 1, !dbg !3263
  %75 = load i64, i64* %74, align 8, !dbg !3263, !tbaa !619
  call void @FStar_UInt128_add_mod(%struct.FStar_UInt128_uint128* nonnull sret(%struct.FStar_UInt128_uint128) align 4 %12, i64 %65, i64 %67, i64 %73, i64 %75) #14, !dbg !3263
  %76 = bitcast %struct.FStar_UInt128_uint128* %70 to i8*, !dbg !3263
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* noundef nonnull align 4 dereferenceable(16) %76, i8* noundef nonnull align 4 dereferenceable(16) %71, i32 16, i1 false), !dbg !3263, !tbaa.struct !1233
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %71) #14, !dbg !3263
  ret void, !dbg !3265
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind uwtable willreturn
define internal fastcc void @Hacl_Bignum_Fmul_shift_reduce(i64* nocapture noundef %0) unnamed_addr #4 !dbg !3266 {
  call void @llvm.dbg.value(metadata i64* %0, metadata !3268, metadata !DIExpression()), !dbg !3283
  %2 = getelementptr inbounds i64, i64* %0, i32 4, !dbg !3284
  %3 = load i64, i64* %2, align 4, !dbg !3284, !tbaa !181
  call void @llvm.dbg.value(metadata i64 %3, metadata !3269, metadata !DIExpression()), !dbg !3283
  call void @llvm.dbg.value(metadata i32 4, metadata !3270, metadata !DIExpression()), !dbg !3285
  %4 = getelementptr inbounds i64, i64* %0, i32 3, !dbg !3286
  %5 = load i64, i64* %4, align 4, !dbg !3286, !tbaa !181
  call void @llvm.dbg.value(metadata i64 %5, metadata !3272, metadata !DIExpression()), !dbg !3285
  store i64 %5, i64* %2, align 4, !dbg !3287, !tbaa !181
  call void @llvm.dbg.value(metadata i32 3, metadata !3273, metadata !DIExpression()), !dbg !3288
  %6 = getelementptr inbounds i64, i64* %0, i32 2, !dbg !3289
  %7 = load i64, i64* %6, align 4, !dbg !3289, !tbaa !181
  call void @llvm.dbg.value(metadata i64 %7, metadata !3275, metadata !DIExpression()), !dbg !3288
  store i64 %7, i64* %4, align 4, !dbg !3290, !tbaa !181
  call void @llvm.dbg.value(metadata i32 2, metadata !3276, metadata !DIExpression()), !dbg !3291
  %8 = getelementptr inbounds i64, i64* %0, i32 1, !dbg !3292
  %9 = load i64, i64* %8, align 4, !dbg !3292, !tbaa !181
  call void @llvm.dbg.value(metadata i64 %9, metadata !3278, metadata !DIExpression()), !dbg !3291
  store i64 %9, i64* %6, align 4, !dbg !3293, !tbaa !181
  call void @llvm.dbg.value(metadata i32 1, metadata !3279, metadata !DIExpression()), !dbg !3294
  %10 = load i64, i64* %0, align 4, !dbg !3295, !tbaa !181
  call void @llvm.dbg.value(metadata i64 %10, metadata !3281, metadata !DIExpression()), !dbg !3294
  store i64 %10, i64* %8, align 4, !dbg !3296, !tbaa !181
  call void @llvm.dbg.value(metadata i64 %3, metadata !3282, metadata !DIExpression()), !dbg !3283
  %11 = mul i64 %3, 19, !dbg !3297
  store i64 %11, i64* %0, align 4, !dbg !3298, !tbaa !181
  ret void, !dbg !3299
}

declare !dbg !3300 void @FStar_UInt128_add_mod(%struct.FStar_UInt128_uint128* sret(%struct.FStar_UInt128_uint128) align 4, i64, i64, i64, i64) local_unnamed_addr #11

; Function Attrs: noinline nounwind uwtable
define internal fastcc void @Hacl_Bignum25519_times_2d(i64* nocapture noundef %0, i64* nocapture noundef readonly %1) unnamed_addr #0 !dbg !3301 {
  %3 = alloca [5 x i64], align 8
  call void @llvm.dbg.value(metadata i64* %0, metadata !3303, metadata !DIExpression()), !dbg !3306
  call void @llvm.dbg.value(metadata i64* %1, metadata !3304, metadata !DIExpression()), !dbg !3306
  %4 = bitcast [5 x i64]* %3 to i8*, !dbg !3307
  call void @llvm.lifetime.start.p0i8(i64 40, i8* nonnull %4) #14, !dbg !3307
  call void @llvm.dbg.declare(metadata [5 x i64]* %3, metadata !3305, metadata !DIExpression()), !dbg !3308
  call void @llvm.memset.p0i8.i32(i8* noundef nonnull align 8 dereferenceable(40) %4, i8 0, i32 40, i1 false), !dbg !3308
  %5 = getelementptr inbounds [5 x i64], [5 x i64]* %3, i32 0, i32 0, !dbg !3309
  call fastcc void @Hacl_Lib_Create64_make_h64_5(i64* noundef nonnull %5, i64 noundef 1859910466990425, i64 noundef 932731440258426, i64 noundef 1072319116312658, i64 noundef 1815898335770999, i64 noundef 633789495995903), !dbg !3310
  call fastcc void @Hacl_Bignum25519_fmul(i64* noundef %0, i64* noundef %1, i64* noundef nonnull %5), !dbg !3311
  call void @llvm.lifetime.end.p0i8(i64 40, i8* nonnull %4) #14, !dbg !3312
  ret void, !dbg !3312
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind uwtable willreturn
define internal fastcc void @Hacl_Impl_Ed25519_Ladder_Step_swap_cond(i64* noundef %0, i64* noundef %1, i64* noundef %2, i64* noundef %3, i64 noundef %4) unnamed_addr #4 !dbg !3313 {
  call void @llvm.dbg.value(metadata i64* %0, metadata !3315, metadata !DIExpression()), !dbg !3320
  call void @llvm.dbg.value(metadata i64* %1, metadata !3316, metadata !DIExpression()), !dbg !3320
  call void @llvm.dbg.value(metadata i64* %2, metadata !3317, metadata !DIExpression()), !dbg !3320
  call void @llvm.dbg.value(metadata i64* %3, metadata !3318, metadata !DIExpression()), !dbg !3320
  call void @llvm.dbg.value(metadata i64 %4, metadata !3319, metadata !DIExpression()), !dbg !3320
  call fastcc void @Hacl_Impl_Ed25519_SwapConditional_swap_conditional(i64* noundef %0, i64* noundef %1, i64* noundef %2, i64* noundef %3, i64 noundef %4), !dbg !3321
  ret void, !dbg !3322
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind uwtable willreturn
define internal fastcc void @Hacl_Impl_Ed25519_SwapConditional_swap_conditional(i64* noundef writeonly %0, i64* noundef writeonly %1, i64* noundef readonly %2, i64* noundef readonly %3, i64 noundef %4) unnamed_addr #4 !dbg !3323 {
  call void @llvm.dbg.value(metadata i64* %0, metadata !3325, metadata !DIExpression()), !dbg !3331
  call void @llvm.dbg.value(metadata i64* %1, metadata !3326, metadata !DIExpression()), !dbg !3331
  call void @llvm.dbg.value(metadata i64* %2, metadata !3327, metadata !DIExpression()), !dbg !3331
  call void @llvm.dbg.value(metadata i64* %3, metadata !3328, metadata !DIExpression()), !dbg !3331
  call void @llvm.dbg.value(metadata i64 %4, metadata !3329, metadata !DIExpression()), !dbg !3331
  %6 = sub i64 0, %4, !dbg !3332
  call void @llvm.dbg.value(metadata i64 %6, metadata !3330, metadata !DIExpression()), !dbg !3331
  call fastcc void @Hacl_Impl_Ed25519_SwapConditional_swap_conditional_step(i64* noundef %0, i64* noundef %1, i64* noundef %2, i64* noundef %3, i64 noundef %6), !dbg !3333
  %7 = call fastcc i64* @Hacl_Impl_Ed25519_ExtPoint_gety(i64* noundef %0), !dbg !3334
  %8 = call fastcc i64* @Hacl_Impl_Ed25519_ExtPoint_gety(i64* noundef %1), !dbg !3335
  %9 = call fastcc i64* @Hacl_Impl_Ed25519_ExtPoint_gety(i64* noundef %2), !dbg !3336
  %10 = call fastcc i64* @Hacl_Impl_Ed25519_ExtPoint_gety(i64* noundef %3), !dbg !3337
  call fastcc void @Hacl_Impl_Ed25519_SwapConditional_swap_conditional_step(i64* noundef nonnull %7, i64* noundef nonnull %8, i64* noundef nonnull %9, i64* noundef nonnull %10, i64 noundef %6), !dbg !3338
  %11 = call fastcc i64* @Hacl_Impl_Ed25519_ExtPoint_getz(i64* noundef %0), !dbg !3339
  %12 = call fastcc i64* @Hacl_Impl_Ed25519_ExtPoint_getz(i64* noundef %1), !dbg !3340
  %13 = call fastcc i64* @Hacl_Impl_Ed25519_ExtPoint_getz(i64* noundef %2), !dbg !3341
  %14 = call fastcc i64* @Hacl_Impl_Ed25519_ExtPoint_getz(i64* noundef %3), !dbg !3342
  call fastcc void @Hacl_Impl_Ed25519_SwapConditional_swap_conditional_step(i64* noundef nonnull %11, i64* noundef nonnull %12, i64* noundef nonnull %13, i64* noundef nonnull %14, i64 noundef %6), !dbg !3343
  %15 = call fastcc i64* @Hacl_Impl_Ed25519_ExtPoint_gett(i64* noundef %0), !dbg !3344
  %16 = call fastcc i64* @Hacl_Impl_Ed25519_ExtPoint_gett(i64* noundef %1), !dbg !3345
  %17 = call fastcc i64* @Hacl_Impl_Ed25519_ExtPoint_gett(i64* noundef %2), !dbg !3346
  %18 = call fastcc i64* @Hacl_Impl_Ed25519_ExtPoint_gett(i64* noundef %3), !dbg !3347
  call fastcc void @Hacl_Impl_Ed25519_SwapConditional_swap_conditional_step(i64* noundef nonnull %15, i64* noundef nonnull %16, i64* noundef nonnull %17, i64* noundef nonnull %18, i64 noundef %6), !dbg !3348
  ret void, !dbg !3349
}

; Function Attrs: noinline nounwind uwtable
define internal fastcc void @Hacl_Bignum25519_inverse(i64* nocapture noundef %0, i64* nocapture noundef readonly %1) unnamed_addr #0 !dbg !3350 {
  call void @llvm.dbg.value(metadata i64* %0, metadata !3352, metadata !DIExpression()), !dbg !3354
  call void @llvm.dbg.value(metadata i64* %1, metadata !3353, metadata !DIExpression()), !dbg !3354
  call fastcc void @Hacl_Bignum_Crecip_crecip(i64* noundef %0, i64* noundef %1), !dbg !3355
  ret void, !dbg !3356
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind uwtable willreturn
define internal fastcc void @Hacl_Bignum25519_reduce(i64* nocapture noundef %0) unnamed_addr #4 !dbg !3357 {
  call void @llvm.dbg.value(metadata i64* %0, metadata !3359, metadata !DIExpression()), !dbg !3360
  call fastcc void @Hacl_EC_Format_reduce(i64* noundef %0), !dbg !3361
  ret void, !dbg !3362
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readonly uwtable willreturn
define internal fastcc i64 @Hacl_Impl_Ed25519_PointCompress_x_mod_2(i64* nocapture noundef readonly %0) unnamed_addr #10 !dbg !3363 {
  call void @llvm.dbg.value(metadata i64* %0, metadata !3367, metadata !DIExpression()), !dbg !3369
  %2 = load i64, i64* %0, align 4, !dbg !3370, !tbaa !181
  call void @llvm.dbg.value(metadata i64 %2, metadata !3368, metadata !DIExpression()), !dbg !3369
  %3 = and i64 %2, 1, !dbg !3371
  ret i64 %3, !dbg !3372
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind uwtable willreturn
define internal fastcc void @Hacl_Impl_Store51_store_51_(i8* nocapture noundef writeonly %0, i64* nocapture noundef readonly %1) unnamed_addr #4 !dbg !3373 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !3375, metadata !DIExpression()), !dbg !3390
  call void @llvm.dbg.value(metadata i64* %1, metadata !3376, metadata !DIExpression()), !dbg !3390
  %3 = load i64, i64* %1, align 4, !dbg !3391, !tbaa !181
  call void @llvm.dbg.value(metadata i64 %3, metadata !3377, metadata !DIExpression()), !dbg !3390
  %4 = getelementptr inbounds i64, i64* %1, i32 1, !dbg !3392
  %5 = load i64, i64* %4, align 4, !dbg !3392, !tbaa !181
  call void @llvm.dbg.value(metadata i64 %5, metadata !3378, metadata !DIExpression()), !dbg !3390
  %6 = getelementptr inbounds i64, i64* %1, i32 2, !dbg !3393
  %7 = load i64, i64* %6, align 4, !dbg !3393, !tbaa !181
  call void @llvm.dbg.value(metadata i64 %7, metadata !3379, metadata !DIExpression()), !dbg !3390
  %8 = getelementptr inbounds i64, i64* %1, i32 3, !dbg !3394
  %9 = load i64, i64* %8, align 4, !dbg !3394, !tbaa !181
  call void @llvm.dbg.value(metadata i64 %9, metadata !3380, metadata !DIExpression()), !dbg !3390
  %10 = getelementptr inbounds i64, i64* %1, i32 4, !dbg !3395
  %11 = load i64, i64* %10, align 4, !dbg !3395, !tbaa !181
  call void @llvm.dbg.value(metadata i64 %11, metadata !3381, metadata !DIExpression()), !dbg !3390
  %12 = shl i64 %5, 51, !dbg !3396
  %13 = or i64 %12, %3, !dbg !3397
  call void @llvm.dbg.value(metadata i64 %13, metadata !3382, metadata !DIExpression()), !dbg !3390
  %14 = shl i64 %7, 38, !dbg !3398
  %15 = lshr i64 %5, 13, !dbg !3399
  %16 = or i64 %14, %15, !dbg !3400
  call void @llvm.dbg.value(metadata i64 %16, metadata !3383, metadata !DIExpression()), !dbg !3390
  %17 = shl i64 %9, 25, !dbg !3401
  %18 = lshr i64 %7, 26, !dbg !3402
  %19 = or i64 %17, %18, !dbg !3403
  call void @llvm.dbg.value(metadata i64 %19, metadata !3384, metadata !DIExpression()), !dbg !3390
  %20 = shl i64 %11, 12, !dbg !3404
  %21 = lshr i64 %9, 39, !dbg !3405
  %22 = or i64 %20, %21, !dbg !3406
  call void @llvm.dbg.value(metadata i64 %22, metadata !3385, metadata !DIExpression()), !dbg !3390
  call void @llvm.dbg.value(metadata i8* %0, metadata !3386, metadata !DIExpression()), !dbg !3390
  %23 = getelementptr inbounds i8, i8* %0, i32 8, !dbg !3407
  call void @llvm.dbg.value(metadata i8* %23, metadata !3387, metadata !DIExpression()), !dbg !3390
  %24 = getelementptr inbounds i8, i8* %0, i32 16, !dbg !3408
  call void @llvm.dbg.value(metadata i8* %24, metadata !3388, metadata !DIExpression()), !dbg !3390
  %25 = getelementptr inbounds i8, i8* %0, i32 24, !dbg !3409
  call void @llvm.dbg.value(metadata i8* %25, metadata !3389, metadata !DIExpression()), !dbg !3390
  call fastcc void @store64(i8* noundef %0, i64 noundef %13), !dbg !3410
  call fastcc void @store64(i8* noundef nonnull %23, i64 noundef %16), !dbg !3411
  call fastcc void @store64(i8* noundef nonnull %24, i64 noundef %19), !dbg !3412
  call fastcc void @store64(i8* noundef nonnull %25, i64 noundef %22), !dbg !3413
  ret void, !dbg !3414
}

; Function Attrs: noinline nounwind uwtable
define internal fastcc void @Hacl_Bignum_Crecip_crecip(i64* nocapture noundef %0, i64* nocapture noundef readonly %1) unnamed_addr #0 !dbg !3415 {
  %3 = alloca [20 x i64], align 8
  call void @llvm.dbg.value(metadata i64* %0, metadata !3417, metadata !DIExpression()), !dbg !3430
  call void @llvm.dbg.value(metadata i64* %1, metadata !3418, metadata !DIExpression()), !dbg !3430
  %4 = bitcast [20 x i64]* %3 to i8*, !dbg !3431
  call void @llvm.lifetime.start.p0i8(i64 160, i8* nonnull %4) #14, !dbg !3431
  call void @llvm.dbg.declare(metadata [20 x i64]* %3, metadata !3419, metadata !DIExpression()), !dbg !3432
  call void @llvm.memset.p0i8.i32(i8* noundef nonnull align 8 dereferenceable(160) %4, i8 0, i32 160, i1 false), !dbg !3432
  %5 = getelementptr inbounds [20 x i64], [20 x i64]* %3, i32 0, i32 0, !dbg !3433
  call void @llvm.dbg.value(metadata i64* %5, metadata !3420, metadata !DIExpression()), !dbg !3430
  %6 = getelementptr inbounds [20 x i64], [20 x i64]* %3, i32 0, i32 5, !dbg !3434
  call void @llvm.dbg.value(metadata i64* %6, metadata !3421, metadata !DIExpression()), !dbg !3430
  %7 = getelementptr inbounds [20 x i64], [20 x i64]* %3, i32 0, i32 10, !dbg !3435
  call void @llvm.dbg.value(metadata i64* %7, metadata !3422, metadata !DIExpression()), !dbg !3430
  call fastcc void @Hacl_Bignum_Fsquare_fsquare_times(i64* noundef nonnull %5, i64* noundef %1, i32 noundef 1), !dbg !3436
  call fastcc void @Hacl_Bignum_Fsquare_fsquare_times(i64* noundef nonnull %6, i64* noundef nonnull %5, i32 noundef 2), !dbg !3437
  call fastcc void @Hacl_Bignum_Fmul_fmul(i64* noundef nonnull %7, i64* noundef nonnull %6, i64* noundef %1), !dbg !3438
  call fastcc void @Hacl_Bignum_Fmul_fmul(i64* noundef nonnull %5, i64* noundef nonnull %7, i64* noundef nonnull %5), !dbg !3439
  call fastcc void @Hacl_Bignum_Fsquare_fsquare_times(i64* noundef nonnull %6, i64* noundef nonnull %5, i32 noundef 1), !dbg !3440
  call fastcc void @Hacl_Bignum_Fmul_fmul(i64* noundef nonnull %7, i64* noundef nonnull %6, i64* noundef nonnull %7), !dbg !3441
  call fastcc void @Hacl_Bignum_Fsquare_fsquare_times(i64* noundef nonnull %6, i64* noundef nonnull %7, i32 noundef 5), !dbg !3442
  call void @llvm.dbg.value(metadata i64* %6, metadata !3423, metadata !DIExpression()), !dbg !3430
  call void @llvm.dbg.value(metadata i64* %7, metadata !3424, metadata !DIExpression()), !dbg !3430
  %8 = getelementptr inbounds [20 x i64], [20 x i64]* %3, i32 0, i32 15, !dbg !3443
  call void @llvm.dbg.value(metadata i64* %8, metadata !3425, metadata !DIExpression()), !dbg !3430
  call fastcc void @Hacl_Bignum_Fmul_fmul(i64* noundef nonnull %7, i64* noundef nonnull %6, i64* noundef nonnull %7), !dbg !3444
  call fastcc void @Hacl_Bignum_Fsquare_fsquare_times(i64* noundef nonnull %6, i64* noundef nonnull %7, i32 noundef 10), !dbg !3445
  call fastcc void @Hacl_Bignum_Fmul_fmul(i64* noundef nonnull %8, i64* noundef nonnull %6, i64* noundef nonnull %7), !dbg !3446
  call fastcc void @Hacl_Bignum_Fsquare_fsquare_times(i64* noundef nonnull %6, i64* noundef nonnull %8, i32 noundef 20), !dbg !3447
  call fastcc void @Hacl_Bignum_Fmul_fmul(i64* noundef nonnull %6, i64* noundef nonnull %6, i64* noundef nonnull %8), !dbg !3448
  call fastcc void @Hacl_Bignum_Fsquare_fsquare_times_inplace(i64* noundef nonnull %6, i32 noundef 10), !dbg !3449
  call fastcc void @Hacl_Bignum_Fmul_fmul(i64* noundef nonnull %7, i64* noundef nonnull %6, i64* noundef nonnull %7), !dbg !3450
  call fastcc void @Hacl_Bignum_Fsquare_fsquare_times(i64* noundef nonnull %6, i64* noundef nonnull %7, i32 noundef 50), !dbg !3451
  call void @llvm.dbg.value(metadata i64* %5, metadata !3426, metadata !DIExpression()), !dbg !3430
  call void @llvm.dbg.value(metadata i64* %6, metadata !3427, metadata !DIExpression()), !dbg !3430
  call void @llvm.dbg.value(metadata i64* %7, metadata !3428, metadata !DIExpression()), !dbg !3430
  call void @llvm.dbg.value(metadata i64* %8, metadata !3429, metadata !DIExpression()), !dbg !3430
  call fastcc void @Hacl_Bignum_Fmul_fmul(i64* noundef nonnull %8, i64* noundef nonnull %6, i64* noundef nonnull %7), !dbg !3452
  call fastcc void @Hacl_Bignum_Fsquare_fsquare_times(i64* noundef nonnull %6, i64* noundef nonnull %8, i32 noundef 100), !dbg !3453
  call fastcc void @Hacl_Bignum_Fmul_fmul(i64* noundef nonnull %6, i64* noundef nonnull %6, i64* noundef nonnull %8), !dbg !3454
  call fastcc void @Hacl_Bignum_Fsquare_fsquare_times_inplace(i64* noundef nonnull %6, i32 noundef 50), !dbg !3455
  call fastcc void @Hacl_Bignum_Fmul_fmul(i64* noundef nonnull %6, i64* noundef nonnull %6, i64* noundef nonnull %7), !dbg !3456
  call fastcc void @Hacl_Bignum_Fsquare_fsquare_times_inplace(i64* noundef nonnull %6, i32 noundef 5), !dbg !3457
  call fastcc void @Hacl_Bignum_Fmul_fmul(i64* noundef %0, i64* noundef nonnull %6, i64* noundef nonnull %5), !dbg !3458
  call void @llvm.lifetime.end.p0i8(i64 160, i8* nonnull %4) #14, !dbg !3459
  ret void, !dbg !3459
}

; Function Attrs: noinline nounwind uwtable
define internal fastcc void @Hacl_Bignum_Fsquare_fsquare_times(i64* nocapture noundef %0, i64* nocapture noundef readonly %1, i32 noundef %2) unnamed_addr #0 !dbg !3460 {
  %4 = alloca [5 x %struct.FStar_UInt128_uint128], align 4
  %5 = alloca %struct.FStar_UInt128_uint128, align 4
  call void @llvm.dbg.value(metadata i64* %0, metadata !3464, metadata !DIExpression()), !dbg !3470
  call void @llvm.dbg.value(metadata i64* %1, metadata !3465, metadata !DIExpression()), !dbg !3470
  call void @llvm.dbg.value(metadata i32 %2, metadata !3466, metadata !DIExpression()), !dbg !3470
  %6 = bitcast [5 x %struct.FStar_UInt128_uint128]* %4 to i8*, !dbg !3471
  call void @llvm.lifetime.start.p0i8(i64 80, i8* nonnull %6) #14, !dbg !3471
  call void @llvm.dbg.declare(metadata [5 x %struct.FStar_UInt128_uint128]* %4, metadata !3467, metadata !DIExpression()), !dbg !3472
  call void @llvm.dbg.value(metadata i32 0, metadata !3468, metadata !DIExpression()), !dbg !3473
  %7 = bitcast %struct.FStar_UInt128_uint128* %5 to i8*
  call void @llvm.dbg.value(metadata i32 0, metadata !3468, metadata !DIExpression()), !dbg !3473
  br label %12, !dbg !3474

8:                                                ; preds = %12
  %9 = bitcast i64* %0 to i8*, !dbg !3475
  %10 = bitcast i64* %1 to i8*, !dbg !3475
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* noundef nonnull align 4 dereferenceable(40) %9, i8* noundef nonnull align 4 dereferenceable(40) %10, i32 40, i1 false), !dbg !3475
  %11 = getelementptr inbounds [5 x %struct.FStar_UInt128_uint128], [5 x %struct.FStar_UInt128_uint128]* %4, i32 0, i32 0, !dbg !3476
  call fastcc void @Hacl_Bignum_Fsquare_fsquare_times_(i64* noundef %0, %struct.FStar_UInt128_uint128* noundef nonnull %11, i32 noundef %2), !dbg !3477
  call void @llvm.lifetime.end.p0i8(i64 80, i8* nonnull %6) #14, !dbg !3478
  ret void, !dbg !3478

12:                                               ; preds = %3, %12
  %13 = phi i32 [ 0, %3 ], [ %16, %12 ]
  call void @llvm.dbg.value(metadata i32 %13, metadata !3468, metadata !DIExpression()), !dbg !3473
  %14 = getelementptr inbounds [5 x %struct.FStar_UInt128_uint128], [5 x %struct.FStar_UInt128_uint128]* %4, i32 0, i32 %13, !dbg !3479
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %7) #14, !dbg !3481
  call void @FStar_UInt128_uint64_to_uint128(%struct.FStar_UInt128_uint128* nonnull sret(%struct.FStar_UInt128_uint128) align 4 %5, i64 noundef 0) #14, !dbg !3481
  %15 = bitcast %struct.FStar_UInt128_uint128* %14 to i8*, !dbg !3481
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* noundef nonnull align 4 dereferenceable(16) %15, i8* noundef nonnull align 4 dereferenceable(16) %7, i32 16, i1 false), !dbg !3481, !tbaa.struct !1233
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %7) #14, !dbg !3481
  %16 = add nuw nsw i32 %13, 1, !dbg !3482
  call void @llvm.dbg.value(metadata i32 %16, metadata !3468, metadata !DIExpression()), !dbg !3473
  %17 = icmp eq i32 %16, 5, !dbg !3483
  br i1 %17, label %8, label %12, !dbg !3474, !llvm.loop !3484
}

; Function Attrs: noinline nounwind uwtable
define internal fastcc void @Hacl_Bignum_Fsquare_fsquare_times_inplace(i64* nocapture noundef %0, i32 noundef %1) unnamed_addr #0 !dbg !3486 {
  %3 = alloca [5 x %struct.FStar_UInt128_uint128], align 4
  %4 = alloca %struct.FStar_UInt128_uint128, align 4
  call void @llvm.dbg.value(metadata i64* %0, metadata !3490, metadata !DIExpression()), !dbg !3495
  call void @llvm.dbg.value(metadata i32 %1, metadata !3491, metadata !DIExpression()), !dbg !3495
  %5 = bitcast [5 x %struct.FStar_UInt128_uint128]* %3 to i8*, !dbg !3496
  call void @llvm.lifetime.start.p0i8(i64 80, i8* nonnull %5) #14, !dbg !3496
  call void @llvm.dbg.declare(metadata [5 x %struct.FStar_UInt128_uint128]* %3, metadata !3492, metadata !DIExpression()), !dbg !3497
  call void @llvm.dbg.value(metadata i32 0, metadata !3493, metadata !DIExpression()), !dbg !3498
  %6 = bitcast %struct.FStar_UInt128_uint128* %4 to i8*
  call void @llvm.dbg.value(metadata i32 0, metadata !3493, metadata !DIExpression()), !dbg !3498
  br label %9, !dbg !3499

7:                                                ; preds = %9
  %8 = getelementptr inbounds [5 x %struct.FStar_UInt128_uint128], [5 x %struct.FStar_UInt128_uint128]* %3, i32 0, i32 0, !dbg !3500
  call fastcc void @Hacl_Bignum_Fsquare_fsquare_times_(i64* noundef %0, %struct.FStar_UInt128_uint128* noundef nonnull %8, i32 noundef %1), !dbg !3501
  call void @llvm.lifetime.end.p0i8(i64 80, i8* nonnull %5) #14, !dbg !3502
  ret void, !dbg !3502

9:                                                ; preds = %2, %9
  %10 = phi i32 [ 0, %2 ], [ %13, %9 ]
  call void @llvm.dbg.value(metadata i32 %10, metadata !3493, metadata !DIExpression()), !dbg !3498
  %11 = getelementptr inbounds [5 x %struct.FStar_UInt128_uint128], [5 x %struct.FStar_UInt128_uint128]* %3, i32 0, i32 %10, !dbg !3503
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %6) #14, !dbg !3505
  call void @FStar_UInt128_uint64_to_uint128(%struct.FStar_UInt128_uint128* nonnull sret(%struct.FStar_UInt128_uint128) align 4 %4, i64 noundef 0) #14, !dbg !3505
  %12 = bitcast %struct.FStar_UInt128_uint128* %11 to i8*, !dbg !3505
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* noundef nonnull align 4 dereferenceable(16) %12, i8* noundef nonnull align 4 dereferenceable(16) %6, i32 16, i1 false), !dbg !3505, !tbaa.struct !1233
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %6) #14, !dbg !3505
  %13 = add nuw nsw i32 %10, 1, !dbg !3506
  call void @llvm.dbg.value(metadata i32 %13, metadata !3493, metadata !DIExpression()), !dbg !3498
  %14 = icmp eq i32 %13, 5, !dbg !3507
  br i1 %14, label %7, label %9, !dbg !3499, !llvm.loop !3508
}

; Function Attrs: noinline nounwind uwtable
define internal fastcc void @Hacl_Bignum_Fsquare_fsquare_times_(i64* nocapture noundef %0, %struct.FStar_UInt128_uint128* nocapture noundef %1, i32 noundef %2) unnamed_addr #0 !dbg !3510 {
  call void @llvm.dbg.value(metadata i64* %0, metadata !3514, metadata !DIExpression()), !dbg !3519
  call void @llvm.dbg.value(metadata %struct.FStar_UInt128_uint128* %1, metadata !3515, metadata !DIExpression()), !dbg !3519
  call void @llvm.dbg.value(metadata i32 %2, metadata !3516, metadata !DIExpression()), !dbg !3519
  call fastcc void @Hacl_Bignum_Fsquare_fsquare_(%struct.FStar_UInt128_uint128* noundef %1, i64* noundef %0), !dbg !3520
  call void @llvm.dbg.value(metadata i32 1, metadata !3517, metadata !DIExpression()), !dbg !3521
  %4 = icmp ugt i32 %2, 1, !dbg !3522
  br i1 %4, label %6, label %5, !dbg !3524

5:                                                ; preds = %6, %3
  ret void, !dbg !3525

6:                                                ; preds = %3, %6
  %7 = phi i32 [ %8, %6 ], [ 1, %3 ]
  call void @llvm.dbg.value(metadata i32 %7, metadata !3517, metadata !DIExpression()), !dbg !3521
  call fastcc void @Hacl_Bignum_Fsquare_fsquare_(%struct.FStar_UInt128_uint128* noundef %1, i64* noundef %0), !dbg !3526
  %8 = add nuw i32 %7, 1, !dbg !3527
  call void @llvm.dbg.value(metadata i32 %8, metadata !3517, metadata !DIExpression()), !dbg !3521
  %9 = icmp eq i32 %8, %2, !dbg !3522
  br i1 %9, label %5, label %6, !dbg !3524, !llvm.loop !3528
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind uwtable willreturn
define internal fastcc void @Hacl_EC_Format_reduce(i64* nocapture noundef %0) unnamed_addr #4 !dbg !3530 {
  call void @llvm.dbg.value(metadata i64* %0, metadata !3532, metadata !DIExpression()), !dbg !3533
  call fastcc void @Hacl_EC_Format_fcontract_first_carry_full(i64* noundef %0), !dbg !3534
  call fastcc void @Hacl_EC_Format_fcontract_second_carry_full(i64* noundef %0), !dbg !3535
  call fastcc void @Hacl_EC_Format_fcontract_trim(i64* noundef %0), !dbg !3536
  ret void, !dbg !3537
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind uwtable willreturn
define internal fastcc void @Hacl_EC_Format_fcontract_first_carry_full(i64* nocapture noundef %0) unnamed_addr #4 !dbg !3538 {
  call void @llvm.dbg.value(metadata i64* %0, metadata !3540, metadata !DIExpression()), !dbg !3541
  call fastcc void @Hacl_EC_Format_fcontract_first_carry_pass(i64* noundef %0), !dbg !3542
  call fastcc void @Hacl_Bignum_Modulo_carry_top(i64* noundef %0), !dbg !3543
  ret void, !dbg !3544
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind uwtable willreturn
define internal fastcc void @Hacl_EC_Format_fcontract_second_carry_full(i64* nocapture noundef %0) unnamed_addr #4 !dbg !3545 {
  call void @llvm.dbg.value(metadata i64* %0, metadata !3547, metadata !DIExpression()), !dbg !3552
  call fastcc void @Hacl_EC_Format_fcontract_second_carry_pass(i64* noundef %0), !dbg !3553
  call fastcc void @Hacl_Bignum_Modulo_carry_top(i64* noundef %0), !dbg !3554
  %2 = load i64, i64* %0, align 4, !dbg !3555, !tbaa !181
  call void @llvm.dbg.value(metadata i64 %2, metadata !3548, metadata !DIExpression()), !dbg !3552
  %3 = getelementptr inbounds i64, i64* %0, i32 1, !dbg !3556
  %4 = load i64, i64* %3, align 4, !dbg !3556, !tbaa !181
  call void @llvm.dbg.value(metadata i64 %4, metadata !3549, metadata !DIExpression()), !dbg !3552
  %5 = and i64 %2, 2251799813685247, !dbg !3557
  call void @llvm.dbg.value(metadata i64 %5, metadata !3550, metadata !DIExpression()), !dbg !3552
  %6 = lshr i64 %2, 51, !dbg !3558
  %7 = add i64 %4, %6, !dbg !3559
  call void @llvm.dbg.value(metadata i64 %7, metadata !3551, metadata !DIExpression()), !dbg !3552
  store i64 %5, i64* %0, align 4, !dbg !3560, !tbaa !181
  store i64 %7, i64* %3, align 4, !dbg !3561, !tbaa !181
  ret void, !dbg !3562
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind uwtable willreturn
define internal fastcc void @Hacl_EC_Format_fcontract_trim(i64* nocapture noundef %0) unnamed_addr #4 !dbg !3563 {
  call void @llvm.dbg.value(metadata i64* %0, metadata !3565, metadata !DIExpression()), !dbg !3582
  %2 = load i64, i64* %0, align 4, !dbg !3583, !tbaa !181
  call void @llvm.dbg.value(metadata i64 %2, metadata !3566, metadata !DIExpression()), !dbg !3582
  %3 = getelementptr inbounds i64, i64* %0, i32 1, !dbg !3584
  %4 = load i64, i64* %3, align 4, !dbg !3584, !tbaa !181
  call void @llvm.dbg.value(metadata i64 %4, metadata !3567, metadata !DIExpression()), !dbg !3582
  %5 = getelementptr inbounds i64, i64* %0, i32 2, !dbg !3585
  %6 = load i64, i64* %5, align 4, !dbg !3585, !tbaa !181
  call void @llvm.dbg.value(metadata i64 %6, metadata !3568, metadata !DIExpression()), !dbg !3582
  %7 = getelementptr inbounds i64, i64* %0, i32 3, !dbg !3586
  %8 = load i64, i64* %7, align 4, !dbg !3586, !tbaa !181
  call void @llvm.dbg.value(metadata i64 %8, metadata !3569, metadata !DIExpression()), !dbg !3582
  %9 = getelementptr inbounds i64, i64* %0, i32 4, !dbg !3587
  %10 = load i64, i64* %9, align 4, !dbg !3587, !tbaa !181
  call void @llvm.dbg.value(metadata i64 %10, metadata !3570, metadata !DIExpression()), !dbg !3582
  %11 = call fastcc i64 @FStar_UInt64_gte_mask(i64 noundef %2), !dbg !3588
  call void @llvm.dbg.value(metadata i64 %11, metadata !3571, metadata !DIExpression()), !dbg !3582
  %12 = call fastcc i64 @FStar_UInt64_eq_mask(i64 noundef %4), !dbg !3589
  call void @llvm.dbg.value(metadata i64 %12, metadata !3572, metadata !DIExpression()), !dbg !3582
  %13 = call fastcc i64 @FStar_UInt64_eq_mask(i64 noundef %6), !dbg !3590
  call void @llvm.dbg.value(metadata i64 %13, metadata !3573, metadata !DIExpression()), !dbg !3582
  %14 = call fastcc i64 @FStar_UInt64_eq_mask(i64 noundef %8), !dbg !3591
  call void @llvm.dbg.value(metadata i64 %14, metadata !3574, metadata !DIExpression()), !dbg !3582
  %15 = call fastcc i64 @FStar_UInt64_eq_mask(i64 noundef %10), !dbg !3592
  call void @llvm.dbg.value(metadata i64 %15, metadata !3575, metadata !DIExpression()), !dbg !3582
  %16 = and i64 %12, %11, !dbg !3593
  %17 = and i64 %16, %13, !dbg !3594
  %18 = and i64 %17, %14, !dbg !3595
  %19 = and i64 %18, %15, !dbg !3596
  call void @llvm.dbg.value(metadata i64 %19, metadata !3576, metadata !DIExpression()), !dbg !3582
  %20 = and i64 %19, 2251799813685229, !dbg !3597
  %21 = sub i64 %2, %20, !dbg !3598
  call void @llvm.dbg.value(metadata i64 %21, metadata !3577, metadata !DIExpression()), !dbg !3582
  %22 = and i64 %19, 2251799813685247, !dbg !3599
  %23 = sub i64 %4, %22, !dbg !3600
  call void @llvm.dbg.value(metadata i64 %23, metadata !3578, metadata !DIExpression()), !dbg !3582
  %24 = sub i64 %6, %22, !dbg !3601
  call void @llvm.dbg.value(metadata i64 %24, metadata !3579, metadata !DIExpression()), !dbg !3582
  %25 = sub i64 %8, %22, !dbg !3602
  call void @llvm.dbg.value(metadata i64 %25, metadata !3580, metadata !DIExpression()), !dbg !3582
  %26 = sub i64 %10, %22, !dbg !3603
  call void @llvm.dbg.value(metadata i64 %26, metadata !3581, metadata !DIExpression()), !dbg !3582
  store i64 %21, i64* %0, align 4, !dbg !3604, !tbaa !181
  store i64 %23, i64* %3, align 4, !dbg !3605, !tbaa !181
  store i64 %24, i64* %5, align 4, !dbg !3606, !tbaa !181
  store i64 %25, i64* %7, align 4, !dbg !3607, !tbaa !181
  store i64 %26, i64* %9, align 4, !dbg !3608, !tbaa !181
  ret void, !dbg !3609
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind uwtable willreturn
define internal fastcc void @Hacl_EC_Format_fcontract_first_carry_pass(i64* nocapture noundef %0) unnamed_addr #4 !dbg !3610 {
  call void @llvm.dbg.value(metadata i64* %0, metadata !3612, metadata !DIExpression()), !dbg !3626
  %2 = load i64, i64* %0, align 4, !dbg !3627, !tbaa !181
  call void @llvm.dbg.value(metadata i64 %2, metadata !3613, metadata !DIExpression()), !dbg !3626
  %3 = getelementptr inbounds i64, i64* %0, i32 1, !dbg !3628
  %4 = load i64, i64* %3, align 4, !dbg !3628, !tbaa !181
  call void @llvm.dbg.value(metadata i64 %4, metadata !3614, metadata !DIExpression()), !dbg !3626
  %5 = getelementptr inbounds i64, i64* %0, i32 2, !dbg !3629
  %6 = load i64, i64* %5, align 4, !dbg !3629, !tbaa !181
  call void @llvm.dbg.value(metadata i64 %6, metadata !3615, metadata !DIExpression()), !dbg !3626
  %7 = getelementptr inbounds i64, i64* %0, i32 3, !dbg !3630
  %8 = load i64, i64* %7, align 4, !dbg !3630, !tbaa !181
  call void @llvm.dbg.value(metadata i64 %8, metadata !3616, metadata !DIExpression()), !dbg !3626
  %9 = getelementptr inbounds i64, i64* %0, i32 4, !dbg !3631
  %10 = load i64, i64* %9, align 4, !dbg !3631, !tbaa !181
  call void @llvm.dbg.value(metadata i64 %10, metadata !3617, metadata !DIExpression()), !dbg !3626
  %11 = lshr i64 %2, 51, !dbg !3632
  %12 = add i64 %4, %11, !dbg !3633
  call void @llvm.dbg.value(metadata i64 %12, metadata !3618, metadata !DIExpression()), !dbg !3626
  %13 = and i64 %2, 2251799813685247, !dbg !3634
  call void @llvm.dbg.value(metadata i64 %13, metadata !3619, metadata !DIExpression()), !dbg !3626
  %14 = lshr i64 %12, 51, !dbg !3635
  %15 = add i64 %14, %6, !dbg !3636
  call void @llvm.dbg.value(metadata i64 %15, metadata !3620, metadata !DIExpression()), !dbg !3626
  %16 = and i64 %12, 2251799813685247, !dbg !3637
  call void @llvm.dbg.value(metadata i64 %16, metadata !3621, metadata !DIExpression()), !dbg !3626
  %17 = lshr i64 %15, 51, !dbg !3638
  %18 = add i64 %17, %8, !dbg !3639
  call void @llvm.dbg.value(metadata i64 %18, metadata !3622, metadata !DIExpression()), !dbg !3626
  %19 = and i64 %15, 2251799813685247, !dbg !3640
  call void @llvm.dbg.value(metadata i64 %19, metadata !3623, metadata !DIExpression()), !dbg !3626
  %20 = lshr i64 %18, 51, !dbg !3641
  %21 = add i64 %20, %10, !dbg !3642
  call void @llvm.dbg.value(metadata i64 %21, metadata !3624, metadata !DIExpression()), !dbg !3626
  %22 = and i64 %18, 2251799813685247, !dbg !3643
  call void @llvm.dbg.value(metadata i64 %22, metadata !3625, metadata !DIExpression()), !dbg !3626
  store i64 %13, i64* %0, align 4, !dbg !3644, !tbaa !181
  store i64 %16, i64* %3, align 4, !dbg !3645, !tbaa !181
  store i64 %19, i64* %5, align 4, !dbg !3646, !tbaa !181
  store i64 %22, i64* %7, align 4, !dbg !3647, !tbaa !181
  store i64 %21, i64* %9, align 4, !dbg !3648, !tbaa !181
  ret void, !dbg !3649
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind uwtable willreturn
define internal fastcc void @Hacl_EC_Format_fcontract_second_carry_pass(i64* nocapture noundef %0) unnamed_addr #4 !dbg !3650 {
  call void @llvm.dbg.value(metadata i64* %0, metadata !3652, metadata !DIExpression()), !dbg !3666
  %2 = load i64, i64* %0, align 4, !dbg !3667, !tbaa !181
  call void @llvm.dbg.value(metadata i64 %2, metadata !3653, metadata !DIExpression()), !dbg !3666
  %3 = getelementptr inbounds i64, i64* %0, i32 1, !dbg !3668
  %4 = load i64, i64* %3, align 4, !dbg !3668, !tbaa !181
  call void @llvm.dbg.value(metadata i64 %4, metadata !3654, metadata !DIExpression()), !dbg !3666
  %5 = getelementptr inbounds i64, i64* %0, i32 2, !dbg !3669
  %6 = load i64, i64* %5, align 4, !dbg !3669, !tbaa !181
  call void @llvm.dbg.value(metadata i64 %6, metadata !3655, metadata !DIExpression()), !dbg !3666
  %7 = getelementptr inbounds i64, i64* %0, i32 3, !dbg !3670
  %8 = load i64, i64* %7, align 4, !dbg !3670, !tbaa !181
  call void @llvm.dbg.value(metadata i64 %8, metadata !3656, metadata !DIExpression()), !dbg !3666
  %9 = getelementptr inbounds i64, i64* %0, i32 4, !dbg !3671
  %10 = load i64, i64* %9, align 4, !dbg !3671, !tbaa !181
  call void @llvm.dbg.value(metadata i64 %10, metadata !3657, metadata !DIExpression()), !dbg !3666
  %11 = lshr i64 %2, 51, !dbg !3672
  %12 = add i64 %4, %11, !dbg !3673
  call void @llvm.dbg.value(metadata i64 %12, metadata !3658, metadata !DIExpression()), !dbg !3666
  %13 = and i64 %2, 2251799813685247, !dbg !3674
  call void @llvm.dbg.value(metadata i64 %13, metadata !3659, metadata !DIExpression()), !dbg !3666
  %14 = lshr i64 %12, 51, !dbg !3675
  %15 = add i64 %14, %6, !dbg !3676
  call void @llvm.dbg.value(metadata i64 %15, metadata !3660, metadata !DIExpression()), !dbg !3666
  %16 = and i64 %12, 2251799813685247, !dbg !3677
  call void @llvm.dbg.value(metadata i64 %16, metadata !3661, metadata !DIExpression()), !dbg !3666
  %17 = lshr i64 %15, 51, !dbg !3678
  %18 = add i64 %17, %8, !dbg !3679
  call void @llvm.dbg.value(metadata i64 %18, metadata !3662, metadata !DIExpression()), !dbg !3666
  %19 = and i64 %15, 2251799813685247, !dbg !3680
  call void @llvm.dbg.value(metadata i64 %19, metadata !3663, metadata !DIExpression()), !dbg !3666
  %20 = lshr i64 %18, 51, !dbg !3681
  %21 = add i64 %20, %10, !dbg !3682
  call void @llvm.dbg.value(metadata i64 %21, metadata !3664, metadata !DIExpression()), !dbg !3666
  %22 = and i64 %18, 2251799813685247, !dbg !3683
  call void @llvm.dbg.value(metadata i64 %22, metadata !3665, metadata !DIExpression()), !dbg !3666
  store i64 %13, i64* %0, align 4, !dbg !3684, !tbaa !181
  store i64 %16, i64* %3, align 4, !dbg !3685, !tbaa !181
  store i64 %19, i64* %5, align 4, !dbg !3686, !tbaa !181
  store i64 %22, i64* %7, align 4, !dbg !3687, !tbaa !181
  store i64 %21, i64* %9, align 4, !dbg !3688, !tbaa !181
  ret void, !dbg !3689
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readnone uwtable willreturn
define internal fastcc i64 @FStar_UInt64_gte_mask(i64 noundef %0) unnamed_addr #12 !dbg !3690 {
  call void @llvm.dbg.value(metadata i64 %0, metadata !3693, metadata !DIExpression()), !dbg !3697
  call void @llvm.dbg.value(metadata i64 2251799813685229, metadata !3694, metadata !DIExpression()), !dbg !3697
  %2 = and i64 %0, 9223372036854775807, !dbg !3698
  %3 = add nsw i64 %2, -2251799813685229, !dbg !3699
  call void @llvm.dbg.value(metadata i64 %3, metadata !3695, metadata !DIExpression(DW_OP_constu, 63, DW_OP_shra, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_stack_value)), !dbg !3697
  call void @llvm.dbg.value(metadata i64 %0, metadata !3696, metadata !DIExpression(DW_OP_constu, 63, DW_OP_shra, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_stack_value)), !dbg !3697
  %4 = or i64 %3, %0, !dbg !3700
  %5 = ashr i64 %4, 63, !dbg !3700
  %6 = xor i64 %5, -1, !dbg !3700
  ret i64 %6, !dbg !3701
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readnone uwtable willreturn
define internal fastcc i64 @FStar_UInt64_eq_mask(i64 noundef %0) unnamed_addr #12 !dbg !3702 {
  call void @llvm.dbg.value(metadata i64 %0, metadata !3704, metadata !DIExpression()), !dbg !3706
  call void @llvm.dbg.value(metadata i64 2251799813685247, metadata !3705, metadata !DIExpression()), !dbg !3706
  %2 = xor i64 %0, -2251799813685248, !dbg !3707
  call void @llvm.dbg.value(metadata i64 %0, metadata !3704, metadata !DIExpression(DW_OP_constu, 18444492273895866368, DW_OP_xor, DW_OP_stack_value)), !dbg !3706
  %3 = shl i64 %0, 32, !dbg !3708
  %4 = and i64 %2, %3, !dbg !3709
  call void @llvm.dbg.value(metadata i64 %4, metadata !3704, metadata !DIExpression()), !dbg !3706
  %5 = shl i64 %4, 16, !dbg !3710
  %6 = and i64 %5, %4, !dbg !3711
  call void @llvm.dbg.value(metadata i64 %6, metadata !3704, metadata !DIExpression()), !dbg !3706
  %7 = shl i64 %6, 8, !dbg !3712
  %8 = and i64 %7, %6, !dbg !3713
  call void @llvm.dbg.value(metadata i64 %8, metadata !3704, metadata !DIExpression()), !dbg !3706
  %9 = shl i64 %8, 4, !dbg !3714
  %10 = and i64 %9, %8, !dbg !3715
  call void @llvm.dbg.value(metadata i64 %10, metadata !3704, metadata !DIExpression()), !dbg !3706
  %11 = shl i64 %10, 2, !dbg !3716
  %12 = and i64 %11, %10, !dbg !3717
  call void @llvm.dbg.value(metadata i64 %12, metadata !3704, metadata !DIExpression()), !dbg !3706
  %13 = shl i64 %12, 1, !dbg !3718
  %14 = and i64 %13, %12, !dbg !3719
  call void @llvm.dbg.value(metadata i64 %14, metadata !3704, metadata !DIExpression()), !dbg !3706
  %15 = ashr i64 %14, 63, !dbg !3720
  ret i64 %15, !dbg !3721
}

; Function Attrs: noinline nounwind uwtable
define internal fastcc void @Hacl_Impl_SHA512_ModQ_sha512_modq_pre_pre2(i64* nocapture noundef %0, i8* nocapture noundef readonly %1, i8* nocapture noundef readonly %2, i8* nocapture noundef readonly %3, i32 noundef %4) unnamed_addr #0 !dbg !3722 {
  %6 = alloca [10 x i64], align 8
  call void @llvm.dbg.value(metadata i64* %0, metadata !3726, metadata !DIExpression()), !dbg !3732
  call void @llvm.dbg.value(metadata i8* %1, metadata !3727, metadata !DIExpression()), !dbg !3732
  call void @llvm.dbg.value(metadata i8* %2, metadata !3728, metadata !DIExpression()), !dbg !3732
  call void @llvm.dbg.value(metadata i8* %3, metadata !3729, metadata !DIExpression()), !dbg !3732
  call void @llvm.dbg.value(metadata i32 %4, metadata !3730, metadata !DIExpression()), !dbg !3732
  %7 = bitcast [10 x i64]* %6 to i8*, !dbg !3733
  call void @llvm.lifetime.start.p0i8(i64 80, i8* nonnull %7) #14, !dbg !3733
  call void @llvm.dbg.declare(metadata [10 x i64]* %6, metadata !3731, metadata !DIExpression()), !dbg !3734
  call void @llvm.memset.p0i8.i32(i8* noundef nonnull align 8 dereferenceable(80) %7, i8 0, i32 80, i1 false), !dbg !3734
  %8 = getelementptr inbounds [10 x i64], [10 x i64]* %6, i32 0, i32 0, !dbg !3735
  call fastcc void @Hacl_Impl_SHA512_ModQ_sha512_modq_pre_pre2_(i64* noundef %0, i8* noundef %1, i8* noundef %2, i8* noundef %3, i32 noundef %4, i64* noundef nonnull %8), !dbg !3736
  call void @llvm.lifetime.end.p0i8(i64 80, i8* nonnull %7) #14, !dbg !3737
  ret void, !dbg !3737
}

; Function Attrs: noinline nounwind uwtable
define internal fastcc void @Hacl_Impl_SHA512_ModQ_sha512_modq_pre_pre2_(i64* nocapture noundef %0, i8* nocapture noundef readonly %1, i8* nocapture noundef readonly %2, i8* nocapture noundef readonly %3, i32 noundef %4, i64* nocapture noundef %5) unnamed_addr #0 !dbg !3738 {
  %7 = alloca [64 x i8], align 1
  call void @llvm.dbg.value(metadata i64* %0, metadata !3742, metadata !DIExpression()), !dbg !3749
  call void @llvm.dbg.value(metadata i8* %1, metadata !3743, metadata !DIExpression()), !dbg !3749
  call void @llvm.dbg.value(metadata i8* %2, metadata !3744, metadata !DIExpression()), !dbg !3749
  call void @llvm.dbg.value(metadata i8* %3, metadata !3745, metadata !DIExpression()), !dbg !3749
  call void @llvm.dbg.value(metadata i32 %4, metadata !3746, metadata !DIExpression()), !dbg !3749
  call void @llvm.dbg.value(metadata i64* %5, metadata !3747, metadata !DIExpression()), !dbg !3749
  %8 = getelementptr inbounds [64 x i8], [64 x i8]* %7, i32 0, i32 0, !dbg !3750
  call void @llvm.lifetime.start.p0i8(i64 64, i8* nonnull %8) #14, !dbg !3750
  call void @llvm.dbg.declare(metadata [64 x i8]* %7, metadata !3748, metadata !DIExpression()), !dbg !3751
  call void @llvm.memset.p0i8.i32(i8* noundef nonnull align 1 dereferenceable(64) %8, i8 0, i32 64, i1 false), !dbg !3751
  call fastcc void @Hacl_Impl_Sha512_sha512_pre_pre2_msg(i8* noundef nonnull %8, i8* noundef %1, i8* noundef %2, i8* noundef %3, i32 noundef %4), !dbg !3752
  call fastcc void @Hacl_Impl_Load56_load_64_bytes(i64* noundef %5, i8* noundef nonnull %8), !dbg !3753
  call fastcc void @Hacl_Impl_BignumQ_Mul_barrett_reduction(i64* noundef %0, i64* noundef %5), !dbg !3754
  call void @llvm.lifetime.end.p0i8(i64 64, i8* nonnull %8) #14, !dbg !3755
  ret void, !dbg !3755
}

; Function Attrs: noinline nounwind uwtable
define internal fastcc void @Hacl_Impl_Sha512_sha512_pre_pre2_msg(i8* nocapture noundef writeonly %0, i8* nocapture noundef readonly %1, i8* nocapture noundef readonly %2, i8* nocapture noundef readonly %3, i32 noundef %4) unnamed_addr #0 !dbg !3756 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !3760, metadata !DIExpression()), !dbg !3765
  call void @llvm.dbg.value(metadata i8* %1, metadata !3761, metadata !DIExpression()), !dbg !3765
  call void @llvm.dbg.value(metadata i8* %2, metadata !3762, metadata !DIExpression()), !dbg !3765
  call void @llvm.dbg.value(metadata i8* %3, metadata !3763, metadata !DIExpression()), !dbg !3765
  call void @llvm.dbg.value(metadata i32 %4, metadata !3764, metadata !DIExpression()), !dbg !3765
  call fastcc void @Hacl_Impl_SHA512_Ed25519_sha512_pre_pre2_msg(i8* noundef %0, i8* noundef %1, i8* noundef %2, i8* noundef %3, i32 noundef %4), !dbg !3766
  ret void, !dbg !3767
}

; Function Attrs: noinline nounwind uwtable
define internal fastcc void @Hacl_Impl_SHA512_Ed25519_sha512_pre_pre2_msg(i8* nocapture noundef writeonly %0, i8* nocapture noundef readonly %1, i8* nocapture noundef readonly %2, i8* nocapture noundef readonly %3, i32 noundef %4) unnamed_addr #0 !dbg !3768 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !3770, metadata !DIExpression()), !dbg !3775
  call void @llvm.dbg.value(metadata i8* %1, metadata !3771, metadata !DIExpression()), !dbg !3775
  call void @llvm.dbg.value(metadata i8* %2, metadata !3772, metadata !DIExpression()), !dbg !3775
  call void @llvm.dbg.value(metadata i8* %3, metadata !3773, metadata !DIExpression()), !dbg !3775
  call void @llvm.dbg.value(metadata i32 %4, metadata !3774, metadata !DIExpression()), !dbg !3775
  call fastcc void @Hacl_Impl_SHA512_Ed25519_3_sha512_pre_pre2_msg(i8* noundef %0, i8* noundef %1, i8* noundef %2, i8* noundef %3, i32 noundef %4), !dbg !3776
  ret void, !dbg !3777
}

; Function Attrs: noinline nounwind uwtable
define internal fastcc void @Hacl_Impl_SHA512_Ed25519_3_sha512_pre_pre2_msg(i8* nocapture noundef writeonly %0, i8* nocapture noundef readonly %1, i8* nocapture noundef readonly %2, i8* nocapture noundef readonly %3, i32 noundef %4) unnamed_addr #0 !dbg !3778 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !3780, metadata !DIExpression()), !dbg !3785
  call void @llvm.dbg.value(metadata i8* %1, metadata !3781, metadata !DIExpression()), !dbg !3785
  call void @llvm.dbg.value(metadata i8* %2, metadata !3782, metadata !DIExpression()), !dbg !3785
  call void @llvm.dbg.value(metadata i8* %3, metadata !3783, metadata !DIExpression()), !dbg !3785
  call void @llvm.dbg.value(metadata i32 %4, metadata !3784, metadata !DIExpression()), !dbg !3785
  %6 = icmp ult i32 %4, 65, !dbg !3786
  br i1 %6, label %7, label %8, !dbg !3788

7:                                                ; preds = %5
  call fastcc void @Hacl_Impl_SHA512_Ed25519_1_sha512_pre_pre2_msg_1(i8* noundef %0, i8* noundef %1, i8* noundef %2, i8* noundef %3, i32 noundef %4), !dbg !3789
  br label %9, !dbg !3789

8:                                                ; preds = %5
  call fastcc void @Hacl_Impl_SHA512_Ed25519_3_sha512_pre_pre2_msg_2(i8* noundef %0, i8* noundef %1, i8* noundef %2, i8* noundef %3, i32 noundef %4), !dbg !3790
  br label %9

9:                                                ; preds = %8, %7
  ret void, !dbg !3791
}

; Function Attrs: noinline nounwind uwtable
define internal fastcc void @Hacl_Impl_SHA512_Ed25519_1_sha512_pre_pre2_msg_1(i8* nocapture noundef writeonly %0, i8* nocapture noundef readonly %1, i8* nocapture noundef readonly %2, i8* nocapture noundef readonly %3, i32 noundef %4) unnamed_addr #0 !dbg !3792 {
  %6 = alloca [128 x i8], align 1
  call void @llvm.dbg.value(metadata i8* %0, metadata !3794, metadata !DIExpression()), !dbg !3801
  call void @llvm.dbg.value(metadata i8* %1, metadata !3795, metadata !DIExpression()), !dbg !3801
  call void @llvm.dbg.value(metadata i8* %2, metadata !3796, metadata !DIExpression()), !dbg !3801
  call void @llvm.dbg.value(metadata i8* %3, metadata !3797, metadata !DIExpression()), !dbg !3801
  call void @llvm.dbg.value(metadata i32 %4, metadata !3798, metadata !DIExpression()), !dbg !3801
  %7 = getelementptr inbounds [128 x i8], [128 x i8]* %6, i32 0, i32 0, !dbg !3802
  call void @llvm.lifetime.start.p0i8(i64 128, i8* nonnull %7) #14, !dbg !3802
  call void @llvm.dbg.declare(metadata [128 x i8]* %6, metadata !3799, metadata !DIExpression()), !dbg !3803
  call void @llvm.memset.p0i8.i32(i8* noundef nonnull align 1 dereferenceable(128) %7, i8 0, i32 128, i1 false), !dbg !3803
  call void @llvm.dbg.value(metadata i8* %7, metadata !3800, metadata !DIExpression()), !dbg !3801
  call fastcc void @Hacl_Impl_SHA512_Ed25519_1_concat_3(i8* noundef nonnull %7, i8* noundef %1, i8* noundef %2, i8* noundef %3, i32 noundef %4), !dbg !3804
  %8 = add i32 %4, 64, !dbg !3805
  call fastcc void @Hacl_Impl_SHA2_512_hash(i8* noundef %0, i8* noundef nonnull %7, i32 noundef %8), !dbg !3806
  call void @llvm.lifetime.end.p0i8(i64 128, i8* nonnull %7) #14, !dbg !3807
  ret void, !dbg !3807
}

; Function Attrs: noinline nounwind uwtable
define internal fastcc void @Hacl_Impl_SHA512_Ed25519_3_sha512_pre_pre2_msg_2(i8* nocapture noundef writeonly %0, i8* nocapture noundef readonly %1, i8* nocapture noundef readonly %2, i8* nocapture noundef readonly %3, i32 noundef %4) unnamed_addr #0 !dbg !3808 {
  %6 = alloca [128 x i8], align 1
  call void @llvm.dbg.value(metadata i8* %0, metadata !3810, metadata !DIExpression()), !dbg !3818
  call void @llvm.dbg.value(metadata i8* %1, metadata !3811, metadata !DIExpression()), !dbg !3818
  call void @llvm.dbg.value(metadata i8* %2, metadata !3812, metadata !DIExpression()), !dbg !3818
  call void @llvm.dbg.value(metadata i8* %3, metadata !3813, metadata !DIExpression()), !dbg !3818
  call void @llvm.dbg.value(metadata i32 %4, metadata !3814, metadata !DIExpression()), !dbg !3818
  call void @llvm.dbg.value(metadata i8* %3, metadata !3815, metadata !DIExpression()), !dbg !3818
  %7 = getelementptr inbounds i8, i8* %3, i32 64, !dbg !3819
  call void @llvm.dbg.value(metadata i8* %7, metadata !3816, metadata !DIExpression()), !dbg !3818
  %8 = getelementptr inbounds [128 x i8], [128 x i8]* %6, i32 0, i32 0, !dbg !3820
  call void @llvm.lifetime.start.p0i8(i64 128, i8* nonnull %8) #14, !dbg !3820
  call void @llvm.dbg.declare(metadata [128 x i8]* %6, metadata !3817, metadata !DIExpression()), !dbg !3821
  call void @llvm.memset.p0i8.i32(i8* noundef nonnull align 1 dereferenceable(128) %8, i8 0, i32 128, i1 false), !dbg !3821
  call fastcc void @Hacl_Impl_SHA512_Ed25519_1_concat_3(i8* noundef nonnull %8, i8* noundef %1, i8* noundef %2, i8* noundef %3, i32 noundef 64), !dbg !3822
  %9 = add i32 %4, -64, !dbg !3823
  call fastcc void @Hacl_Impl_SHA512_Ed25519_2_hash_block_and_rest(i8* noundef %0, i8* noundef nonnull %8, i8* noundef nonnull %7, i32 noundef %9), !dbg !3824
  call void @llvm.lifetime.end.p0i8(i64 128, i8* nonnull %8) #14, !dbg !3825
  ret void, !dbg !3825
}

; Function Attrs: mustprogress nofree noinline nosync nounwind uwtable willreturn
define internal fastcc void @Hacl_Impl_SHA512_Ed25519_1_concat_3(i8* nocapture noundef writeonly %0, i8* nocapture noundef readonly %1, i8* nocapture noundef readonly %2, i8* nocapture noundef readonly %3, i32 noundef %4) unnamed_addr #5 !dbg !3826 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !3828, metadata !DIExpression()), !dbg !3833
  call void @llvm.dbg.value(metadata i8* %1, metadata !3829, metadata !DIExpression()), !dbg !3833
  call void @llvm.dbg.value(metadata i8* %2, metadata !3830, metadata !DIExpression()), !dbg !3833
  call void @llvm.dbg.value(metadata i8* %3, metadata !3831, metadata !DIExpression()), !dbg !3833
  call void @llvm.dbg.value(metadata i32 %4, metadata !3832, metadata !DIExpression()), !dbg !3833
  call fastcc void @Hacl_Impl_SHA512_Ed25519_1_copy_bytes(i8* noundef %0, i8* noundef %1, i32 noundef 32), !dbg !3834
  %6 = getelementptr inbounds i8, i8* %0, i32 32, !dbg !3835
  call fastcc void @Hacl_Impl_SHA512_Ed25519_1_copy_bytes(i8* noundef nonnull %6, i8* noundef %2, i32 noundef 32), !dbg !3836
  %7 = getelementptr inbounds i8, i8* %0, i32 64, !dbg !3837
  call fastcc void @Hacl_Impl_SHA512_Ed25519_1_copy_bytes(i8* noundef nonnull %7, i8* noundef %3, i32 noundef %4), !dbg !3838
  ret void, !dbg !3839
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind uwtable willreturn
define internal fastcc void @Hacl_Impl_Load56_load_32_bytes(i64* nocapture noundef writeonly %0, i8* nocapture noundef readonly %1) unnamed_addr #4 !dbg !3840 {
  call void @llvm.dbg.value(metadata i64* %0, metadata !3842, metadata !DIExpression()), !dbg !3863
  call void @llvm.dbg.value(metadata i8* %1, metadata !3843, metadata !DIExpression()), !dbg !3863
  call void @llvm.dbg.value(metadata i8* %1, metadata !3844, metadata !DIExpression()), !dbg !3863
  %3 = call fastcc i64 @load64(i8* noundef %1), !dbg !3864
  call void @llvm.dbg.value(metadata i64 %3, metadata !3845, metadata !DIExpression()), !dbg !3863
  %4 = and i64 %3, 72057594037927935, !dbg !3865
  call void @llvm.dbg.value(metadata i64 %4, metadata !3846, metadata !DIExpression()), !dbg !3863
  call void @llvm.dbg.value(metadata i64 %4, metadata !3847, metadata !DIExpression()), !dbg !3863
  %5 = getelementptr inbounds i8, i8* %1, i32 7, !dbg !3866
  call void @llvm.dbg.value(metadata i8* %5, metadata !3848, metadata !DIExpression()), !dbg !3863
  %6 = call fastcc i64 @load64(i8* noundef nonnull %5), !dbg !3867
  call void @llvm.dbg.value(metadata i64 %6, metadata !3849, metadata !DIExpression()), !dbg !3863
  %7 = and i64 %6, 72057594037927935, !dbg !3868
  call void @llvm.dbg.value(metadata i64 %7, metadata !3850, metadata !DIExpression()), !dbg !3863
  call void @llvm.dbg.value(metadata i64 %7, metadata !3851, metadata !DIExpression()), !dbg !3863
  %8 = getelementptr inbounds i8, i8* %1, i32 14, !dbg !3869
  call void @llvm.dbg.value(metadata i8* %8, metadata !3852, metadata !DIExpression()), !dbg !3863
  %9 = call fastcc i64 @load64(i8* noundef nonnull %8), !dbg !3870
  call void @llvm.dbg.value(metadata i64 %9, metadata !3853, metadata !DIExpression()), !dbg !3863
  %10 = and i64 %9, 72057594037927935, !dbg !3871
  call void @llvm.dbg.value(metadata i64 %10, metadata !3854, metadata !DIExpression()), !dbg !3863
  call void @llvm.dbg.value(metadata i64 %10, metadata !3855, metadata !DIExpression()), !dbg !3863
  %11 = getelementptr inbounds i8, i8* %1, i32 21, !dbg !3872
  call void @llvm.dbg.value(metadata i8* %11, metadata !3856, metadata !DIExpression()), !dbg !3863
  %12 = call fastcc i64 @load64(i8* noundef nonnull %11), !dbg !3873
  call void @llvm.dbg.value(metadata i64 %12, metadata !3857, metadata !DIExpression()), !dbg !3863
  %13 = and i64 %12, 72057594037927935, !dbg !3874
  call void @llvm.dbg.value(metadata i64 %13, metadata !3858, metadata !DIExpression()), !dbg !3863
  call void @llvm.dbg.value(metadata i64 %13, metadata !3859, metadata !DIExpression()), !dbg !3863
  %14 = getelementptr inbounds i8, i8* %1, i32 28, !dbg !3875
  call void @llvm.dbg.value(metadata i8* %14, metadata !3860, metadata !DIExpression()), !dbg !3863
  %15 = call fastcc i32 @load32(i8* noundef nonnull %14), !dbg !3876
  call void @llvm.dbg.value(metadata i32 %15, metadata !3861, metadata !DIExpression()), !dbg !3863
  %16 = zext i32 %15 to i64, !dbg !3877
  call void @llvm.dbg.value(metadata i64 %16, metadata !3862, metadata !DIExpression()), !dbg !3863
  call fastcc void @Hacl_Lib_Create64_make_h64_5(i64* noundef %0, i64 noundef %4, i64 noundef %7, i64 noundef %10, i64 noundef %13, i64 noundef %16), !dbg !3878
  ret void, !dbg !3879
}

; Function Attrs: noinline nounwind uwtable
define internal fastcc void @Hacl_Impl_BignumQ_Mul_mul_modq(i64* nocapture noundef %0, i64* nocapture noundef readonly %1, i64* nocapture noundef readonly %2) unnamed_addr #0 !dbg !3880 {
  %4 = alloca [10 x i64], align 8
  %5 = alloca [9 x %struct.FStar_UInt128_uint128], align 4
  %6 = alloca %struct.FStar_UInt128_uint128, align 4
  call void @llvm.dbg.value(metadata i64* %0, metadata !3882, metadata !DIExpression()), !dbg !3889
  call void @llvm.dbg.value(metadata i64* %1, metadata !3883, metadata !DIExpression()), !dbg !3889
  call void @llvm.dbg.value(metadata i64* %2, metadata !3884, metadata !DIExpression()), !dbg !3889
  %7 = bitcast [10 x i64]* %4 to i8*, !dbg !3890
  call void @llvm.lifetime.start.p0i8(i64 80, i8* nonnull %7) #14, !dbg !3890
  call void @llvm.dbg.declare(metadata [10 x i64]* %4, metadata !3885, metadata !DIExpression()), !dbg !3891
  call void @llvm.memset.p0i8.i32(i8* noundef nonnull align 8 dereferenceable(80) %7, i8 0, i32 80, i1 false), !dbg !3891
  %8 = bitcast [9 x %struct.FStar_UInt128_uint128]* %5 to i8*, !dbg !3892
  call void @llvm.lifetime.start.p0i8(i64 144, i8* nonnull %8) #14, !dbg !3892
  call void @llvm.dbg.declare(metadata [9 x %struct.FStar_UInt128_uint128]* %5, metadata !3886, metadata !DIExpression()), !dbg !3893
  call void @llvm.dbg.value(metadata i32 0, metadata !3887, metadata !DIExpression()), !dbg !3894
  %9 = bitcast %struct.FStar_UInt128_uint128* %6 to i8*
  call void @llvm.dbg.value(metadata i32 0, metadata !3887, metadata !DIExpression()), !dbg !3894
  br label %13, !dbg !3895

10:                                               ; preds = %13
  %11 = getelementptr inbounds [9 x %struct.FStar_UInt128_uint128], [9 x %struct.FStar_UInt128_uint128]* %5, i32 0, i32 0, !dbg !3896
  call fastcc void @Hacl_Impl_BignumQ_Mul_mul_5(%struct.FStar_UInt128_uint128* noundef nonnull %11, i64* noundef %1, i64* noundef %2), !dbg !3897
  %12 = getelementptr inbounds [10 x i64], [10 x i64]* %4, i32 0, i32 0, !dbg !3898
  call fastcc void @Hacl_Impl_BignumQ_Mul_carry(i64* noundef nonnull %12, %struct.FStar_UInt128_uint128* noundef nonnull %11), !dbg !3899
  call fastcc void @Hacl_Impl_BignumQ_Mul_barrett_reduction_(i64* noundef %0, i64* noundef nonnull %12), !dbg !3900
  call void @llvm.lifetime.end.p0i8(i64 144, i8* nonnull %8) #14, !dbg !3901
  call void @llvm.lifetime.end.p0i8(i64 80, i8* nonnull %7) #14, !dbg !3901
  ret void, !dbg !3901

13:                                               ; preds = %3, %13
  %14 = phi i32 [ 0, %3 ], [ %17, %13 ]
  call void @llvm.dbg.value(metadata i32 %14, metadata !3887, metadata !DIExpression()), !dbg !3894
  %15 = getelementptr inbounds [9 x %struct.FStar_UInt128_uint128], [9 x %struct.FStar_UInt128_uint128]* %5, i32 0, i32 %14, !dbg !3902
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %9) #14, !dbg !3904
  call void @FStar_UInt128_uint64_to_uint128(%struct.FStar_UInt128_uint128* nonnull sret(%struct.FStar_UInt128_uint128) align 4 %6, i64 noundef 0) #14, !dbg !3904
  %16 = bitcast %struct.FStar_UInt128_uint128* %15 to i8*, !dbg !3904
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* noundef nonnull align 4 dereferenceable(16) %16, i8* noundef nonnull align 4 dereferenceable(16) %9, i32 16, i1 false), !dbg !3904, !tbaa.struct !1233
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %9) #14, !dbg !3904
  %17 = add nuw nsw i32 %14, 1, !dbg !3905
  call void @llvm.dbg.value(metadata i32 %17, metadata !3887, metadata !DIExpression()), !dbg !3894
  %18 = icmp eq i32 %17, 9, !dbg !3906
  br i1 %18, label %10, label %13, !dbg !3895, !llvm.loop !3907
}

; Function Attrs: mustprogress nofree noinline nosync nounwind uwtable willreturn
define internal fastcc void @Hacl_Impl_BignumQ_Mul_add_modq(i64* nocapture noundef %0, i64* nocapture noundef readonly %1, i64* nocapture noundef readonly %2) unnamed_addr #5 !dbg !3909 {
  call void @llvm.dbg.value(metadata i64* %0, metadata !3911, metadata !DIExpression()), !dbg !3914
  call void @llvm.dbg.value(metadata i64* %1, metadata !3912, metadata !DIExpression()), !dbg !3914
  call void @llvm.dbg.value(metadata i64* %2, metadata !3913, metadata !DIExpression()), !dbg !3914
  call fastcc void @Hacl_Impl_BignumQ_Mul_add_modq_(i64* noundef %0, i64* noundef %1, i64* noundef %2), !dbg !3915
  ret void, !dbg !3916
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readonly uwtable willreturn
define internal fastcc i32 @load32(i8* nocapture noundef readonly %0) unnamed_addr #10 !dbg !3917 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !3921, metadata !DIExpression()), !dbg !3923
  %2 = bitcast i8* %0 to i32*, !dbg !3924
  %3 = load i32, i32* %2, align 1, !dbg !3924
  call void @llvm.dbg.value(metadata i32 %3, metadata !3922, metadata !DIExpression()), !dbg !3923
  ret i32 %3, !dbg !3925
}

; Function Attrs: mustprogress nofree noinline nosync nounwind uwtable willreturn
define internal fastcc void @Hacl_Impl_BignumQ_Mul_add_modq_(i64* nocapture noundef %0, i64* nocapture noundef readonly %1, i64* nocapture noundef readonly %2) unnamed_addr #5 !dbg !3926 {
  %4 = alloca [5 x i64], align 8
  call void @llvm.dbg.value(metadata i64* %0, metadata !3928, metadata !DIExpression()), !dbg !3971
  call void @llvm.dbg.value(metadata i64* %1, metadata !3929, metadata !DIExpression()), !dbg !3971
  call void @llvm.dbg.value(metadata i64* %2, metadata !3930, metadata !DIExpression()), !dbg !3971
  %5 = bitcast [5 x i64]* %4 to i8*, !dbg !3972
  call void @llvm.lifetime.start.p0i8(i64 40, i8* nonnull %5) #14, !dbg !3972
  call void @llvm.dbg.declare(metadata [5 x i64]* %4, metadata !3931, metadata !DIExpression()), !dbg !3973
  call void @llvm.memset.p0i8.i32(i8* noundef nonnull align 8 dereferenceable(40) %5, i8 0, i32 40, i1 false), !dbg !3973
  %6 = load i64, i64* %1, align 4, !dbg !3974, !tbaa !181
  call void @llvm.dbg.value(metadata i64 %6, metadata !3932, metadata !DIExpression()), !dbg !3971
  %7 = getelementptr inbounds i64, i64* %1, i32 1, !dbg !3975
  %8 = load i64, i64* %7, align 4, !dbg !3975, !tbaa !181
  call void @llvm.dbg.value(metadata i64 %8, metadata !3933, metadata !DIExpression()), !dbg !3971
  %9 = getelementptr inbounds i64, i64* %1, i32 2, !dbg !3976
  %10 = load i64, i64* %9, align 4, !dbg !3976, !tbaa !181
  call void @llvm.dbg.value(metadata i64 %10, metadata !3934, metadata !DIExpression()), !dbg !3971
  %11 = getelementptr inbounds i64, i64* %1, i32 3, !dbg !3977
  %12 = load i64, i64* %11, align 4, !dbg !3977, !tbaa !181
  call void @llvm.dbg.value(metadata i64 %12, metadata !3935, metadata !DIExpression()), !dbg !3971
  %13 = getelementptr inbounds i64, i64* %1, i32 4, !dbg !3978
  %14 = load i64, i64* %13, align 4, !dbg !3978, !tbaa !181
  call void @llvm.dbg.value(metadata i64 %14, metadata !3936, metadata !DIExpression()), !dbg !3971
  %15 = load i64, i64* %2, align 4, !dbg !3979, !tbaa !181
  call void @llvm.dbg.value(metadata i64 %15, metadata !3937, metadata !DIExpression()), !dbg !3971
  %16 = getelementptr inbounds i64, i64* %2, i32 1, !dbg !3980
  %17 = load i64, i64* %16, align 4, !dbg !3980, !tbaa !181
  call void @llvm.dbg.value(metadata i64 %17, metadata !3938, metadata !DIExpression()), !dbg !3971
  %18 = getelementptr inbounds i64, i64* %2, i32 2, !dbg !3981
  %19 = load i64, i64* %18, align 4, !dbg !3981, !tbaa !181
  call void @llvm.dbg.value(metadata i64 %19, metadata !3939, metadata !DIExpression()), !dbg !3971
  %20 = getelementptr inbounds i64, i64* %2, i32 3, !dbg !3982
  %21 = load i64, i64* %20, align 4, !dbg !3982, !tbaa !181
  call void @llvm.dbg.value(metadata i64 %21, metadata !3940, metadata !DIExpression()), !dbg !3971
  %22 = getelementptr inbounds i64, i64* %2, i32 4, !dbg !3983
  %23 = load i64, i64* %22, align 4, !dbg !3983, !tbaa !181
  call void @llvm.dbg.value(metadata i64 %23, metadata !3941, metadata !DIExpression()), !dbg !3971
  %24 = add i64 %15, %6, !dbg !3984
  call void @llvm.dbg.value(metadata i64 %24, metadata !3942, metadata !DIExpression()), !dbg !3971
  %25 = add i64 %17, %8, !dbg !3985
  call void @llvm.dbg.value(metadata i64 %25, metadata !3943, metadata !DIExpression()), !dbg !3971
  %26 = add i64 %19, %10, !dbg !3986
  call void @llvm.dbg.value(metadata i64 %26, metadata !3944, metadata !DIExpression()), !dbg !3971
  %27 = add i64 %21, %12, !dbg !3987
  call void @llvm.dbg.value(metadata i64 %27, metadata !3945, metadata !DIExpression()), !dbg !3971
  %28 = add i64 %23, %14, !dbg !3988
  call void @llvm.dbg.value(metadata i64 %28, metadata !3946, metadata !DIExpression()), !dbg !3971
  call void @llvm.dbg.value(metadata i64 %24, metadata !3947, metadata !DIExpression()), !dbg !3971
  call void @llvm.dbg.value(metadata i64 %25, metadata !3948, metadata !DIExpression()), !dbg !3971
  %29 = lshr i64 %24, 56, !dbg !3989
  call void @llvm.dbg.value(metadata i64 %29, metadata !3949, metadata !DIExpression()), !dbg !3971
  %30 = and i64 %24, 72057594037927935, !dbg !3990
  call void @llvm.dbg.value(metadata i64 %30, metadata !3950, metadata !DIExpression()), !dbg !3971
  call void @llvm.dbg.value(metadata i64 %30, metadata !3951, metadata !DIExpression()), !dbg !3971
  %31 = add i64 %25, %29, !dbg !3991
  call void @llvm.dbg.value(metadata i64 %31, metadata !3952, metadata !DIExpression()), !dbg !3971
  call void @llvm.dbg.value(metadata i64 %31, metadata !3953, metadata !DIExpression()), !dbg !3971
  call void @llvm.dbg.value(metadata i64 %26, metadata !3954, metadata !DIExpression()), !dbg !3971
  %32 = lshr i64 %31, 56, !dbg !3992
  call void @llvm.dbg.value(metadata i64 %32, metadata !3955, metadata !DIExpression()), !dbg !3971
  %33 = and i64 %31, 72057594037927935, !dbg !3993
  call void @llvm.dbg.value(metadata i64 %33, metadata !3956, metadata !DIExpression()), !dbg !3971
  call void @llvm.dbg.value(metadata i64 %33, metadata !3957, metadata !DIExpression()), !dbg !3971
  %34 = add i64 %26, %32, !dbg !3994
  call void @llvm.dbg.value(metadata i64 %34, metadata !3958, metadata !DIExpression()), !dbg !3971
  call void @llvm.dbg.value(metadata i64 %34, metadata !3959, metadata !DIExpression()), !dbg !3971
  call void @llvm.dbg.value(metadata i64 %27, metadata !3960, metadata !DIExpression()), !dbg !3971
  %35 = lshr i64 %34, 56, !dbg !3995
  call void @llvm.dbg.value(metadata i64 %35, metadata !3961, metadata !DIExpression()), !dbg !3971
  %36 = and i64 %34, 72057594037927935, !dbg !3996
  call void @llvm.dbg.value(metadata i64 %36, metadata !3962, metadata !DIExpression()), !dbg !3971
  call void @llvm.dbg.value(metadata i64 %36, metadata !3963, metadata !DIExpression()), !dbg !3971
  %37 = add i64 %27, %35, !dbg !3997
  call void @llvm.dbg.value(metadata i64 %37, metadata !3964, metadata !DIExpression()), !dbg !3971
  call void @llvm.dbg.value(metadata i64 %37, metadata !3965, metadata !DIExpression()), !dbg !3971
  call void @llvm.dbg.value(metadata i64 %28, metadata !3966, metadata !DIExpression()), !dbg !3971
  %38 = lshr i64 %37, 56, !dbg !3998
  call void @llvm.dbg.value(metadata i64 %38, metadata !3967, metadata !DIExpression()), !dbg !3971
  %39 = and i64 %37, 72057594037927935, !dbg !3999
  call void @llvm.dbg.value(metadata i64 %39, metadata !3968, metadata !DIExpression()), !dbg !3971
  call void @llvm.dbg.value(metadata i64 %39, metadata !3969, metadata !DIExpression()), !dbg !3971
  %40 = add i64 %28, %38, !dbg !4000
  call void @llvm.dbg.value(metadata i64 %40, metadata !3970, metadata !DIExpression()), !dbg !3971
  %41 = getelementptr inbounds [5 x i64], [5 x i64]* %4, i32 0, i32 0, !dbg !4001
  call fastcc void @Hacl_Lib_Create64_make_h64_5(i64* noundef nonnull %41, i64 noundef %30, i64 noundef %33, i64 noundef %36, i64 noundef %39, i64 noundef %40), !dbg !4002
  call fastcc void @Hacl_Impl_BignumQ_Mul_subm_conditional(i64* noundef %0, i64* noundef nonnull %41), !dbg !4003
  call void @llvm.lifetime.end.p0i8(i64 40, i8* nonnull %5) #14, !dbg !4004
  ret void, !dbg !4004
}

; Function Attrs: mustprogress nofree noinline nosync nounwind uwtable willreturn
define internal fastcc void @Hacl_Impl_Ed25519_Sign_Steps_copy_bytes(i8* nocapture noundef writeonly %0, i8* nocapture noundef readonly %1) unnamed_addr #5 !dbg !4005 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !4007, metadata !DIExpression()), !dbg !4010
  call void @llvm.dbg.value(metadata i8* %1, metadata !4008, metadata !DIExpression()), !dbg !4010
  call void @llvm.dbg.value(metadata i32 32, metadata !4009, metadata !DIExpression()), !dbg !4010
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* noundef nonnull align 1 dereferenceable(32) %0, i8* noundef nonnull align 1 dereferenceable(32) %1, i32 32, i1 false), !dbg !4011
  ret void, !dbg !4012
}

; Function Attrs: noinline nounwind uwtable
define internal fastcc zeroext i1 @Hacl_Impl_Ed25519_Verify_verify_(i8* nocapture noundef readonly %0, i8* nocapture noundef readonly %1, i32 noundef %2, i8* nocapture noundef readonly %3) unnamed_addr #0 !dbg !4013 {
  %5 = alloca [45 x i64], align 8
  %6 = alloca [32 x i8], align 1
  call void @llvm.dbg.value(metadata i8* %0, metadata !4015, metadata !DIExpression()), !dbg !4025
  call void @llvm.dbg.value(metadata i8* %1, metadata !4016, metadata !DIExpression()), !dbg !4025
  call void @llvm.dbg.value(metadata i32 %2, metadata !4017, metadata !DIExpression()), !dbg !4025
  call void @llvm.dbg.value(metadata i8* %3, metadata !4018, metadata !DIExpression()), !dbg !4025
  %7 = bitcast [45 x i64]* %5 to i8*, !dbg !4026
  call void @llvm.lifetime.start.p0i8(i64 360, i8* nonnull %7) #14, !dbg !4026
  call void @llvm.dbg.declare(metadata [45 x i64]* %5, metadata !4019, metadata !DIExpression()), !dbg !4027
  call void @llvm.memset.p0i8.i32(i8* noundef nonnull align 8 dereferenceable(360) %7, i8 0, i32 360, i1 false), !dbg !4027
  %8 = getelementptr inbounds [32 x i8], [32 x i8]* %6, i32 0, i32 0, !dbg !4028
  call void @llvm.lifetime.start.p0i8(i64 32, i8* nonnull %8) #14, !dbg !4028
  call void @llvm.dbg.declare(metadata [32 x i8]* %6, metadata !4023, metadata !DIExpression()), !dbg !4029
  call void @llvm.memset.p0i8.i32(i8* noundef nonnull align 1 dereferenceable(32) %8, i8 0, i32 32, i1 false), !dbg !4029
  %9 = getelementptr inbounds [45 x i64], [45 x i64]* %5, i32 0, i32 0, !dbg !4030
  %10 = call fastcc zeroext i1 @Hacl_Impl_Ed25519_Verify_verify__(i8* noundef %0, i8* noundef %1, i32 noundef %2, i8* noundef %3, i64* noundef nonnull %9, i8* noundef nonnull %8), !dbg !4031
  call void @llvm.dbg.value(metadata i1 %10, metadata !4024, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !4025
  call void @llvm.lifetime.end.p0i8(i64 32, i8* nonnull %8) #14, !dbg !4032
  call void @llvm.lifetime.end.p0i8(i64 360, i8* nonnull %7) #14, !dbg !4032
  ret i1 %10, !dbg !4033
}

; Function Attrs: noinline nounwind uwtable
define internal fastcc zeroext i1 @Hacl_Impl_Ed25519_Verify_verify__(i8* nocapture noundef readonly %0, i8* nocapture noundef readonly %1, i32 noundef %2, i8* nocapture noundef readonly %3, i64* noundef %4, i8* nocapture noundef %5) unnamed_addr #0 !dbg !4034 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !4038, metadata !DIExpression()), !dbg !4059
  call void @llvm.dbg.value(metadata i8* %1, metadata !4039, metadata !DIExpression()), !dbg !4059
  call void @llvm.dbg.value(metadata i32 %2, metadata !4040, metadata !DIExpression()), !dbg !4059
  call void @llvm.dbg.value(metadata i8* %3, metadata !4041, metadata !DIExpression()), !dbg !4059
  call void @llvm.dbg.value(metadata i64* %4, metadata !4042, metadata !DIExpression()), !dbg !4059
  call void @llvm.dbg.value(metadata i8* %5, metadata !4043, metadata !DIExpression()), !dbg !4059
  call void @llvm.dbg.value(metadata i64* %4, metadata !4044, metadata !DIExpression()), !dbg !4059
  %7 = getelementptr inbounds i64, i64* %4, i32 20, !dbg !4060
  call void @llvm.dbg.value(metadata i64* %7, metadata !4045, metadata !DIExpression()), !dbg !4059
  %8 = getelementptr inbounds i64, i64* %4, i32 40, !dbg !4061
  call void @llvm.dbg.value(metadata i64* %8, metadata !4046, metadata !DIExpression()), !dbg !4059
  call void @llvm.dbg.value(metadata i8* %5, metadata !4047, metadata !DIExpression()), !dbg !4059
  %9 = call fastcc zeroext i1 @Hacl_Impl_Ed25519_PointDecompress_point_decompress(i64* noundef %4, i8* noundef %0), !dbg !4062
  call void @llvm.dbg.value(metadata i1 %9, metadata !4048, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !4059
  br i1 %9, label %10, label %17, !dbg !4063

10:                                               ; preds = %6
  call void @llvm.dbg.value(metadata i8* %3, metadata !4049, metadata !DIExpression()), !dbg !4064
  %11 = call fastcc zeroext i1 @Hacl_Impl_Ed25519_Verify_Steps_verify_step_1(i64* noundef nonnull %7, i8* noundef %3), !dbg !4065
  call void @llvm.dbg.value(metadata i1 %11, metadata !4052, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !4064
  br i1 %11, label %12, label %17, !dbg !4066

12:                                               ; preds = %10
  %13 = getelementptr inbounds i8, i8* %3, i32 32, !dbg !4067
  call fastcc void @Hacl_Impl_Load56_load_32_bytes(i64* noundef nonnull %8, i8* noundef nonnull %13), !dbg !4068
  %14 = call fastcc zeroext i1 @Hacl_Impl_Ed25519_PointEqual_gte_q(i64* noundef nonnull %8), !dbg !4069
  call void @llvm.dbg.value(metadata i1 %14, metadata !4053, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !4070
  br i1 %14, label %17, label %15, !dbg !4071

15:                                               ; preds = %12
  call fastcc void @Hacl_Impl_Ed25519_Verify_Steps_verify_step_2(i8* noundef %5, i8* noundef %1, i32 noundef %2, i8* noundef %3, i8* noundef %0), !dbg !4072
  %16 = call fastcc zeroext i1 @Hacl_Impl_Ed25519_Verify_Steps_verify_step_4(i8* noundef nonnull %13, i8* noundef %5, i64* noundef %4, i64* noundef nonnull %7), !dbg !4073
  call void @llvm.dbg.value(metadata i1 %16, metadata !4056, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !4074
  br label %17

17:                                               ; preds = %6, %12, %15, %10
  %18 = phi i1 [ %16, %15 ], [ false, %12 ], [ false, %10 ], [ false, %6 ], !dbg !4075
  ret i1 %18, !dbg !4076
}

; Function Attrs: noinline nounwind uwtable
define internal fastcc zeroext i1 @Hacl_Impl_Ed25519_PointDecompress_point_decompress(i64* noundef %0, i8* nocapture noundef readonly %1) unnamed_addr #0 !dbg !4077 {
  %3 = alloca [10 x i64], align 8
  call void @llvm.dbg.value(metadata i64* %0, metadata !4081, metadata !DIExpression()), !dbg !4101
  call void @llvm.dbg.value(metadata i8* %1, metadata !4082, metadata !DIExpression()), !dbg !4101
  %4 = bitcast [10 x i64]* %3 to i8*, !dbg !4102
  call void @llvm.lifetime.start.p0i8(i64 80, i8* nonnull %4) #14, !dbg !4102
  call void @llvm.dbg.declare(metadata [10 x i64]* %3, metadata !4083, metadata !DIExpression()), !dbg !4103
  call void @llvm.memset.p0i8.i32(i8* noundef nonnull align 8 dereferenceable(80) %4, i8 0, i32 80, i1 false), !dbg !4103
  %5 = getelementptr inbounds [10 x i64], [10 x i64]* %3, i32 0, i32 0, !dbg !4104
  call void @llvm.dbg.value(metadata i64* %5, metadata !4084, metadata !DIExpression()), !dbg !4101
  %6 = getelementptr inbounds [10 x i64], [10 x i64]* %3, i32 0, i32 5, !dbg !4105
  call void @llvm.dbg.value(metadata i64* %6, metadata !4085, metadata !DIExpression()), !dbg !4101
  call void @llvm.dbg.value(metadata i64* %5, metadata !4086, metadata !DIExpression()), !dbg !4101
  call void @llvm.dbg.value(metadata i64* %6, metadata !4087, metadata !DIExpression()), !dbg !4101
  %7 = getelementptr inbounds i8, i8* %1, i32 31, !dbg !4106
  %8 = load i8, i8* %7, align 1, !dbg !4106, !tbaa !276
  call void @llvm.dbg.value(metadata i8 %8, metadata !4088, metadata !DIExpression()), !dbg !4101
  %9 = lshr i8 %8, 7, !dbg !4107
  %10 = zext i8 %9 to i64
  call void @llvm.dbg.value(metadata i64 %10, metadata !4089, metadata !DIExpression()), !dbg !4101
  call fastcc void @Hacl_Impl_Load51_load_51(i64* noundef nonnull %5, i8* noundef %1), !dbg !4108
  %11 = call fastcc zeroext i1 @Hacl_Impl_Ed25519_RecoverX_recover_x(i64* noundef nonnull %6, i64* noundef nonnull %5, i64 noundef %10), !dbg !4109
  call void @llvm.dbg.value(metadata i1 %11, metadata !4090, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !4101
  call void @llvm.dbg.value(metadata i1 %11, metadata !4091, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !4101
  br i1 %11, label %12, label %19, !dbg !4110

12:                                               ; preds = %2
  call void @llvm.dbg.value(metadata i64* %0, metadata !4093, metadata !DIExpression()), !dbg !4111
  %13 = call fastcc i64* @Hacl_Impl_Ed25519_ExtPoint_gety(i64* noundef %0), !dbg !4112
  call void @llvm.dbg.value(metadata i64* %13, metadata !4096, metadata !DIExpression()), !dbg !4111
  %14 = call fastcc i64* @Hacl_Impl_Ed25519_ExtPoint_getz(i64* noundef %0), !dbg !4113
  call void @llvm.dbg.value(metadata i64* %14, metadata !4097, metadata !DIExpression()), !dbg !4111
  %15 = call fastcc i64* @Hacl_Impl_Ed25519_ExtPoint_gett(i64* noundef %0), !dbg !4114
  call void @llvm.dbg.value(metadata i64* %15, metadata !4098, metadata !DIExpression()), !dbg !4111
  %16 = bitcast i64* %0 to i8*, !dbg !4115
  %17 = bitcast i64* %6 to i8*, !dbg !4115
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* noundef nonnull align 4 dereferenceable(40) %16, i8* noundef nonnull align 8 dereferenceable(40) %17, i32 40, i1 false), !dbg !4115
  %18 = bitcast i64* %13 to i8*, !dbg !4116
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* noundef nonnull align 4 dereferenceable(40) %18, i8* noundef nonnull align 8 dereferenceable(40) %4, i32 40, i1 false), !dbg !4116
  call void @llvm.dbg.value(metadata i64 0, metadata !4099, metadata !DIExpression()), !dbg !4111
  call void @llvm.dbg.value(metadata i64 1, metadata !4100, metadata !DIExpression()), !dbg !4111
  call fastcc void @Hacl_Lib_Create64_make_h64_5(i64* noundef nonnull %14, i64 noundef 1, i64 noundef 0, i64 noundef 0, i64 noundef 0, i64 noundef 0), !dbg !4117
  call fastcc void @Hacl_Bignum25519_fmul(i64* noundef nonnull %15, i64* noundef nonnull %6, i64* noundef nonnull %5), !dbg !4118
  call void @llvm.dbg.value(metadata i8 1, metadata !4092, metadata !DIExpression()), !dbg !4101
  br label %19

19:                                               ; preds = %2, %12
  call void @llvm.dbg.value(metadata i8 undef, metadata !4092, metadata !DIExpression()), !dbg !4101
  call void @llvm.lifetime.end.p0i8(i64 80, i8* nonnull %4) #14, !dbg !4119
  ret i1 %11, !dbg !4120
}

; Function Attrs: noinline nounwind uwtable
define internal fastcc zeroext i1 @Hacl_Impl_Ed25519_Verify_Steps_verify_step_1(i64* noundef %0, i8* nocapture noundef readonly %1) unnamed_addr #0 !dbg !4121 {
  call void @llvm.dbg.value(metadata i64* %0, metadata !4123, metadata !DIExpression()), !dbg !4127
  call void @llvm.dbg.value(metadata i8* %1, metadata !4124, metadata !DIExpression()), !dbg !4127
  call void @llvm.dbg.value(metadata i8* %1, metadata !4125, metadata !DIExpression()), !dbg !4127
  %3 = call fastcc zeroext i1 @Hacl_Impl_Ed25519_PointDecompress_point_decompress(i64* noundef %0, i8* noundef %1), !dbg !4128
  call void @llvm.dbg.value(metadata i1 %3, metadata !4126, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !4127
  ret i1 %3, !dbg !4129
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readonly uwtable willreturn
define internal fastcc zeroext i1 @Hacl_Impl_Ed25519_PointEqual_gte_q(i64* nocapture noundef readonly %0) unnamed_addr #10 !dbg !4130 {
  call void @llvm.dbg.value(metadata i64* %0, metadata !4134, metadata !DIExpression()), !dbg !4140
  %2 = load i64, i64* %0, align 4, !dbg !4141, !tbaa !181
  call void @llvm.dbg.value(metadata i64 %2, metadata !4135, metadata !DIExpression()), !dbg !4140
  %3 = getelementptr inbounds i64, i64* %0, i32 1, !dbg !4142
  %4 = load i64, i64* %3, align 4, !dbg !4142, !tbaa !181
  call void @llvm.dbg.value(metadata i64 %4, metadata !4136, metadata !DIExpression()), !dbg !4140
  %5 = getelementptr inbounds i64, i64* %0, i32 2, !dbg !4143
  %6 = load i64, i64* %5, align 4, !dbg !4143, !tbaa !181
  call void @llvm.dbg.value(metadata i64 %6, metadata !4137, metadata !DIExpression()), !dbg !4140
  %7 = getelementptr inbounds i64, i64* %0, i32 3, !dbg !4144
  %8 = load i64, i64* %7, align 4, !dbg !4144, !tbaa !181
  call void @llvm.dbg.value(metadata i64 %8, metadata !4138, metadata !DIExpression()), !dbg !4140
  %9 = getelementptr inbounds i64, i64* %0, i32 4, !dbg !4145
  %10 = load i64, i64* %9, align 4, !dbg !4145, !tbaa !181
  call void @llvm.dbg.value(metadata i64 %10, metadata !4139, metadata !DIExpression()), !dbg !4140
  %11 = icmp ugt i64 %10, 268435456, !dbg !4146
  br i1 %11, label %26, label %12, !dbg !4148

12:                                               ; preds = %1
  %13 = icmp eq i64 %10, 268435456, !dbg !4149
  br i1 %13, label %14, label %26, !dbg !4151

14:                                               ; preds = %12
  %15 = icmp ne i64 %8, 0, !dbg !4152
  %16 = icmp ugt i64 %6, 5342
  %17 = select i1 %15, i1 true, i1 %16, !dbg !4154
  br i1 %17, label %26, label %18, !dbg !4154

18:                                               ; preds = %14
  %19 = icmp eq i64 %6, 5342, !dbg !4155
  br i1 %19, label %20, label %26, !dbg !4158

20:                                               ; preds = %18
  %21 = icmp ugt i64 %4, 70332060721272408, !dbg !4159
  br i1 %21, label %26, label %22, !dbg !4161

22:                                               ; preds = %20
  %23 = icmp eq i64 %4, 70332060721272408, !dbg !4162
  %24 = icmp ugt i64 %2, 5175514460705772
  %25 = select i1 %23, i1 %24, i1 false, !dbg !4164
  br label %26, !dbg !4164

26:                                               ; preds = %22, %20, %18, %14, %12, %1
  %27 = phi i1 [ true, %1 ], [ false, %12 ], [ true, %14 ], [ false, %18 ], [ true, %20 ], [ %25, %22 ], !dbg !4165
  ret i1 %27, !dbg !4166
}

; Function Attrs: noinline nounwind uwtable
define internal fastcc void @Hacl_Impl_Ed25519_Verify_Steps_verify_step_2(i8* nocapture noundef writeonly %0, i8* nocapture noundef readonly %1, i32 noundef %2, i8* nocapture noundef readonly %3, i8* nocapture noundef readonly %4) unnamed_addr #0 !dbg !4167 {
  %6 = alloca [5 x i64], align 8
  call void @llvm.dbg.value(metadata i8* %0, metadata !4171, metadata !DIExpression()), !dbg !4177
  call void @llvm.dbg.value(metadata i8* %1, metadata !4172, metadata !DIExpression()), !dbg !4177
  call void @llvm.dbg.value(metadata i32 %2, metadata !4173, metadata !DIExpression()), !dbg !4177
  call void @llvm.dbg.value(metadata i8* %3, metadata !4174, metadata !DIExpression()), !dbg !4177
  call void @llvm.dbg.value(metadata i8* %4, metadata !4175, metadata !DIExpression()), !dbg !4177
  %7 = bitcast [5 x i64]* %6 to i8*, !dbg !4178
  call void @llvm.lifetime.start.p0i8(i64 40, i8* nonnull %7) #14, !dbg !4178
  call void @llvm.dbg.declare(metadata [5 x i64]* %6, metadata !4176, metadata !DIExpression()), !dbg !4179
  call void @llvm.memset.p0i8.i32(i8* noundef nonnull align 8 dereferenceable(40) %7, i8 0, i32 40, i1 false), !dbg !4179
  %8 = getelementptr inbounds [5 x i64], [5 x i64]* %6, i32 0, i32 0, !dbg !4180
  call fastcc void @Hacl_Impl_SHA512_ModQ_sha512_modq_pre_pre2(i64* noundef nonnull %8, i8* noundef %3, i8* noundef %4, i8* noundef %1, i32 noundef %2), !dbg !4181
  call fastcc void @Hacl_Impl_Store56_store_56(i8* noundef %0, i64* noundef nonnull %8), !dbg !4182
  call void @llvm.lifetime.end.p0i8(i64 40, i8* nonnull %7) #14, !dbg !4183
  ret void, !dbg !4183
}

; Function Attrs: noinline nounwind uwtable
define internal fastcc zeroext i1 @Hacl_Impl_Ed25519_Verify_Steps_verify_step_4(i8* nocapture noundef readonly %0, i8* nocapture noundef readonly %1, i64* nocapture noundef readonly %2, i64* noundef %3) unnamed_addr #0 !dbg !4184 {
  %5 = alloca [60 x i64], align 8
  call void @llvm.dbg.value(metadata i8* %0, metadata !4188, metadata !DIExpression()), !dbg !4200
  call void @llvm.dbg.value(metadata i8* %1, metadata !4189, metadata !DIExpression()), !dbg !4200
  call void @llvm.dbg.value(metadata i64* %2, metadata !4190, metadata !DIExpression()), !dbg !4200
  call void @llvm.dbg.value(metadata i64* %3, metadata !4191, metadata !DIExpression()), !dbg !4200
  %6 = bitcast [60 x i64]* %5 to i8*, !dbg !4201
  call void @llvm.lifetime.start.p0i8(i64 480, i8* nonnull %6) #14, !dbg !4201
  call void @llvm.dbg.declare(metadata [60 x i64]* %5, metadata !4192, metadata !DIExpression()), !dbg !4202
  call void @llvm.memset.p0i8.i32(i8* noundef nonnull align 8 dereferenceable(480) %6, i8 0, i32 480, i1 false), !dbg !4202
  %7 = getelementptr inbounds [60 x i64], [60 x i64]* %5, i32 0, i32 0, !dbg !4203
  call void @llvm.dbg.value(metadata i64* %7, metadata !4196, metadata !DIExpression()), !dbg !4200
  %8 = getelementptr inbounds [60 x i64], [60 x i64]* %5, i32 0, i32 20, !dbg !4204
  call void @llvm.dbg.value(metadata i64* %8, metadata !4197, metadata !DIExpression()), !dbg !4200
  %9 = getelementptr inbounds [60 x i64], [60 x i64]* %5, i32 0, i32 40, !dbg !4205
  call void @llvm.dbg.value(metadata i64* %9, metadata !4198, metadata !DIExpression()), !dbg !4200
  call fastcc void @Hacl_Impl_Ed25519_Verify_Steps_point_mul_g(i64* noundef nonnull %9, i8* noundef %0), !dbg !4206
  call fastcc void @Hacl_Impl_Ed25519_Ladder_point_mul(i64* noundef nonnull %7, i8* noundef %1, i64* noundef %2), !dbg !4207
  call fastcc void @Hacl_Impl_Ed25519_PointAdd_point_add(i64* noundef nonnull %8, i64* noundef %3, i64* noundef nonnull %7), !dbg !4208
  %10 = call fastcc zeroext i1 @Hacl_Impl_Ed25519_PointEqual_point_equal(i64* noundef nonnull %9, i64* noundef nonnull %8), !dbg !4209
  call void @llvm.dbg.value(metadata i1 %10, metadata !4199, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !4200
  call void @llvm.lifetime.end.p0i8(i64 480, i8* nonnull %6) #14, !dbg !4210
  ret i1 %10, !dbg !4211
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind uwtable willreturn
define internal fastcc void @Hacl_Impl_Load51_load_51(i64* nocapture noundef writeonly %0, i8* nocapture noundef readonly %1) unnamed_addr #4 !dbg !4212 {
  call void @llvm.dbg.value(metadata i64* %0, metadata !4214, metadata !DIExpression()), !dbg !4216
  call void @llvm.dbg.value(metadata i8* %1, metadata !4215, metadata !DIExpression()), !dbg !4216
  call fastcc void @Hacl_EC_Format_fexpand(i64* noundef %0, i8* noundef %1), !dbg !4217
  ret void, !dbg !4218
}

; Function Attrs: noinline nounwind uwtable
define internal fastcc zeroext i1 @Hacl_Impl_Ed25519_RecoverX_recover_x(i64* nocapture noundef writeonly %0, i64* nocapture noundef readonly %1, i64 noundef %2) unnamed_addr #0 !dbg !4219 {
  %4 = alloca [20 x i64], align 8
  call void @llvm.dbg.value(metadata i64* %0, metadata !4223, metadata !DIExpression()), !dbg !4228
  call void @llvm.dbg.value(metadata i64* %1, metadata !4224, metadata !DIExpression()), !dbg !4228
  call void @llvm.dbg.value(metadata i64 %2, metadata !4225, metadata !DIExpression()), !dbg !4228
  %5 = bitcast [20 x i64]* %4 to i8*, !dbg !4229
  call void @llvm.lifetime.start.p0i8(i64 160, i8* nonnull %5) #14, !dbg !4229
  call void @llvm.dbg.declare(metadata [20 x i64]* %4, metadata !4226, metadata !DIExpression()), !dbg !4230
  call void @llvm.memset.p0i8.i32(i8* noundef nonnull align 8 dereferenceable(160) %5, i8 0, i32 160, i1 false), !dbg !4230
  %6 = getelementptr inbounds [20 x i64], [20 x i64]* %4, i32 0, i32 0, !dbg !4231
  %7 = call fastcc zeroext i1 @Hacl_Impl_Ed25519_RecoverX_recover_x_(i64* noundef %0, i64* noundef %1, i64 noundef %2, i64* noundef nonnull %6), !dbg !4232
  call void @llvm.dbg.value(metadata i1 %7, metadata !4227, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !4228
  call void @llvm.lifetime.end.p0i8(i64 160, i8* nonnull %5) #14, !dbg !4233
  ret i1 %7, !dbg !4234
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind uwtable willreturn
define internal fastcc void @Hacl_EC_Format_fexpand(i64* nocapture noundef writeonly %0, i8* nocapture noundef readonly %1) unnamed_addr #4 !dbg !4235 {
  call void @llvm.dbg.value(metadata i64* %0, metadata !4237, metadata !DIExpression()), !dbg !4253
  call void @llvm.dbg.value(metadata i8* %1, metadata !4238, metadata !DIExpression()), !dbg !4253
  %3 = call fastcc i64 @load64(i8* noundef %1), !dbg !4254
  call void @llvm.dbg.value(metadata i64 %3, metadata !4239, metadata !DIExpression()), !dbg !4253
  %4 = getelementptr inbounds i8, i8* %1, i32 6, !dbg !4255
  call void @llvm.dbg.value(metadata i8* %4, metadata !4240, metadata !DIExpression()), !dbg !4253
  %5 = call fastcc i64 @load64(i8* noundef nonnull %4), !dbg !4256
  call void @llvm.dbg.value(metadata i64 %5, metadata !4241, metadata !DIExpression()), !dbg !4253
  %6 = getelementptr inbounds i8, i8* %1, i32 12, !dbg !4257
  call void @llvm.dbg.value(metadata i8* %6, metadata !4242, metadata !DIExpression()), !dbg !4253
  %7 = call fastcc i64 @load64(i8* noundef nonnull %6), !dbg !4258
  call void @llvm.dbg.value(metadata i64 %7, metadata !4243, metadata !DIExpression()), !dbg !4253
  %8 = getelementptr inbounds i8, i8* %1, i32 19, !dbg !4259
  call void @llvm.dbg.value(metadata i8* %8, metadata !4244, metadata !DIExpression()), !dbg !4253
  %9 = call fastcc i64 @load64(i8* noundef nonnull %8), !dbg !4260
  call void @llvm.dbg.value(metadata i64 %9, metadata !4245, metadata !DIExpression()), !dbg !4253
  %10 = getelementptr inbounds i8, i8* %1, i32 24, !dbg !4261
  call void @llvm.dbg.value(metadata i8* %10, metadata !4246, metadata !DIExpression()), !dbg !4253
  %11 = call fastcc i64 @load64(i8* noundef nonnull %10), !dbg !4262
  call void @llvm.dbg.value(metadata i64 %11, metadata !4247, metadata !DIExpression()), !dbg !4253
  %12 = and i64 %3, 2251799813685247, !dbg !4263
  call void @llvm.dbg.value(metadata i64 %12, metadata !4248, metadata !DIExpression()), !dbg !4253
  %13 = lshr i64 %5, 3, !dbg !4264
  %14 = and i64 %13, 2251799813685247, !dbg !4265
  call void @llvm.dbg.value(metadata i64 %14, metadata !4249, metadata !DIExpression()), !dbg !4253
  %15 = lshr i64 %7, 6, !dbg !4266
  %16 = and i64 %15, 2251799813685247, !dbg !4267
  call void @llvm.dbg.value(metadata i64 %16, metadata !4250, metadata !DIExpression()), !dbg !4253
  %17 = lshr i64 %9, 1, !dbg !4268
  %18 = and i64 %17, 2251799813685247, !dbg !4269
  call void @llvm.dbg.value(metadata i64 %18, metadata !4251, metadata !DIExpression()), !dbg !4253
  %19 = lshr i64 %11, 12, !dbg !4270
  %20 = and i64 %19, 2251799813685247, !dbg !4271
  call void @llvm.dbg.value(metadata i64 %20, metadata !4252, metadata !DIExpression()), !dbg !4253
  store i64 %12, i64* %0, align 4, !dbg !4272, !tbaa !181
  %21 = getelementptr inbounds i64, i64* %0, i32 1, !dbg !4273
  store i64 %14, i64* %21, align 4, !dbg !4274, !tbaa !181
  %22 = getelementptr inbounds i64, i64* %0, i32 2, !dbg !4275
  store i64 %16, i64* %22, align 4, !dbg !4276, !tbaa !181
  %23 = getelementptr inbounds i64, i64* %0, i32 3, !dbg !4277
  store i64 %18, i64* %23, align 4, !dbg !4278, !tbaa !181
  %24 = getelementptr inbounds i64, i64* %0, i32 4, !dbg !4279
  store i64 %20, i64* %24, align 4, !dbg !4280, !tbaa !181
  ret void, !dbg !4281
}

; Function Attrs: noinline nounwind uwtable
define internal fastcc zeroext i1 @Hacl_Impl_Ed25519_RecoverX_recover_x_(i64* nocapture noundef writeonly %0, i64* nocapture noundef readonly %1, i64 noundef %2, i64* nocapture noundef %3) unnamed_addr #0 !dbg !4282 {
  %5 = alloca [25 x i64], align 8
  %6 = alloca [5 x i64], align 8
  call void @llvm.dbg.value(metadata i64* %0, metadata !4286, metadata !DIExpression()), !dbg !4333
  call void @llvm.dbg.value(metadata i64* %1, metadata !4287, metadata !DIExpression()), !dbg !4333
  call void @llvm.dbg.value(metadata i64 %2, metadata !4288, metadata !DIExpression()), !dbg !4333
  call void @llvm.dbg.value(metadata i64* %3, metadata !4289, metadata !DIExpression()), !dbg !4333
  call void @llvm.dbg.value(metadata i64* %3, metadata !4290, metadata !DIExpression()), !dbg !4333
  %7 = load i64, i64* %1, align 4, !dbg !4334, !tbaa !181
  call void @llvm.dbg.value(metadata i64 %7, metadata !4291, metadata !DIExpression()), !dbg !4333
  %8 = getelementptr inbounds i64, i64* %1, i32 1, !dbg !4335
  %9 = load i64, i64* %8, align 4, !dbg !4335, !tbaa !181
  call void @llvm.dbg.value(metadata i64 %9, metadata !4292, metadata !DIExpression()), !dbg !4333
  %10 = getelementptr inbounds i64, i64* %1, i32 2, !dbg !4336
  %11 = load i64, i64* %10, align 4, !dbg !4336, !tbaa !181
  call void @llvm.dbg.value(metadata i64 %11, metadata !4293, metadata !DIExpression()), !dbg !4333
  %12 = getelementptr inbounds i64, i64* %1, i32 3, !dbg !4337
  %13 = load i64, i64* %12, align 4, !dbg !4337, !tbaa !181
  call void @llvm.dbg.value(metadata i64 %13, metadata !4294, metadata !DIExpression()), !dbg !4333
  call void @llvm.dbg.value(metadata i64 undef, metadata !4295, metadata !DIExpression()), !dbg !4333
  %14 = icmp ugt i64 %7, 2251799813685228, !dbg !4338
  %15 = icmp eq i64 %9, 2251799813685247
  %16 = select i1 %14, i1 %15, i1 false, !dbg !4339
  %17 = icmp eq i64 %11, 2251799813685247
  %18 = select i1 %16, i1 %17, i1 false, !dbg !4339
  %19 = icmp eq i64 %13, 2251799813685247
  %20 = select i1 %18, i1 %19, i1 false, !dbg !4339
  br i1 %20, label %21, label %25, !dbg !4339

21:                                               ; preds = %4
  %22 = getelementptr inbounds i64, i64* %1, i32 4, !dbg !4340
  %23 = load i64, i64* %22, align 4, !dbg !4340, !tbaa !181
  call void @llvm.dbg.value(metadata i64 %23, metadata !4295, metadata !DIExpression()), !dbg !4333
  %24 = icmp eq i64 %23, 2251799813685247, !dbg !4341
  call void @llvm.dbg.value(metadata i1 %24, metadata !4296, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !4333
  br i1 %24, label %53, label %25, !dbg !4342

25:                                               ; preds = %4, %21
  %26 = bitcast [25 x i64]* %5 to i8*, !dbg !4343
  call void @llvm.lifetime.start.p0i8(i64 200, i8* nonnull %26) #14, !dbg !4343
  call void @llvm.dbg.declare(metadata [25 x i64]* %5, metadata !4297, metadata !DIExpression()), !dbg !4344
  call void @llvm.memset.p0i8.i32(i8* noundef nonnull align 8 dereferenceable(200) %26, i8 0, i32 200, i1 false), !dbg !4344
  %27 = getelementptr inbounds [25 x i64], [25 x i64]* %5, i32 0, i32 0, !dbg !4345
  call void @llvm.dbg.value(metadata i64* %27, metadata !4303, metadata !DIExpression()), !dbg !4346
  %28 = getelementptr inbounds [25 x i64], [25 x i64]* %5, i32 0, i32 5, !dbg !4347
  call void @llvm.dbg.value(metadata i64* %28, metadata !4304, metadata !DIExpression()), !dbg !4346
  %29 = getelementptr inbounds [25 x i64], [25 x i64]* %5, i32 0, i32 10, !dbg !4348
  call void @llvm.dbg.value(metadata i64* %29, metadata !4305, metadata !DIExpression()), !dbg !4346
  %30 = getelementptr inbounds [25 x i64], [25 x i64]* %5, i32 0, i32 15, !dbg !4349
  call void @llvm.dbg.value(metadata i64* %30, metadata !4306, metadata !DIExpression()), !dbg !4346
  call void @llvm.dbg.value(metadata i64 0, metadata !4307, metadata !DIExpression()), !dbg !4346
  call void @llvm.dbg.value(metadata i64 1, metadata !4308, metadata !DIExpression()), !dbg !4346
  call fastcc void @Hacl_Lib_Create64_make_h64_5(i64* noundef nonnull %27, i64 noundef 1, i64 noundef 0, i64 noundef 0, i64 noundef 0, i64 noundef 0), !dbg !4350
  call fastcc void @Hacl_Bignum25519_fsquare(i64* noundef nonnull %28, i64* noundef nonnull %1), !dbg !4351
  call fastcc void @Hacl_Bignum25519_times_d(i64* noundef nonnull %30, i64* noundef nonnull %28), !dbg !4352
  call fastcc void @Hacl_Bignum25519_fsum(i64* noundef nonnull %30, i64* noundef nonnull %27), !dbg !4353
  call fastcc void @Hacl_Bignum25519_reduce_513(i64* noundef nonnull %30), !dbg !4354
  call fastcc void @Hacl_Bignum25519_inverse(i64* noundef nonnull %29, i64* noundef nonnull %30), !dbg !4355
  call fastcc void @Hacl_Bignum25519_fdifference(i64* noundef nonnull %27, i64* noundef nonnull %28), !dbg !4356
  call fastcc void @Hacl_Bignum25519_fmul(i64* noundef %3, i64* noundef nonnull %29, i64* noundef nonnull %27), !dbg !4357
  call fastcc void @Hacl_Bignum25519_reduce(i64* noundef %3), !dbg !4358
  %31 = call fastcc zeroext i1 @Hacl_Impl_Ed25519_RecoverX_is_0(i64* noundef %3), !dbg !4359
  call void @llvm.dbg.value(metadata i1 %31, metadata !4309, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !4346
  br i1 %31, label %32, label %35, !dbg !4360

32:                                               ; preds = %25
  %33 = icmp eq i64 %2, 0, !dbg !4361
  br i1 %33, label %34, label %35, !dbg !4362

34:                                               ; preds = %32
  call void @llvm.dbg.value(metadata i64 0, metadata !4314, metadata !DIExpression()), !dbg !4363
  call fastcc void @Hacl_Lib_Create64_make_h64_5(i64* noundef %0, i64 noundef 0, i64 noundef 0, i64 noundef 0, i64 noundef 0, i64 noundef 0), !dbg !4364
  call void @llvm.dbg.value(metadata i8 1, metadata !4311, metadata !DIExpression()), !dbg !4365
  br label %35, !dbg !4366

35:                                               ; preds = %25, %34, %32
  %36 = phi i32 [ 1, %34 ], [ 0, %32 ], [ 2, %25 ], !dbg !4367
  call void @llvm.dbg.value(metadata i32 %36, metadata !4310, metadata !DIExpression()), !dbg !4346
  switch i32 %36, label %38 [
    i32 0, label %51
    i32 1, label %37
  ], !dbg !4368

37:                                               ; preds = %35
  br label %51, !dbg !4369

38:                                               ; preds = %35
  call void @llvm.dbg.value(metadata i64* %3, metadata !4317, metadata !DIExpression()), !dbg !4370
  %39 = getelementptr inbounds i64, i64* %3, i32 5, !dbg !4371
  call void @llvm.dbg.value(metadata i64* %39, metadata !4321, metadata !DIExpression()), !dbg !4370
  %40 = getelementptr inbounds i64, i64* %3, i32 10, !dbg !4372
  call void @llvm.dbg.value(metadata i64* %40, metadata !4322, metadata !DIExpression()), !dbg !4370
  %41 = getelementptr inbounds i64, i64* %3, i32 15, !dbg !4373
  call void @llvm.dbg.value(metadata i64* %41, metadata !4323, metadata !DIExpression()), !dbg !4370
  call fastcc void @Hacl_Impl_Ed25519_Pow2_252m2_pow2_252m2(i64* noundef nonnull %39, i64* noundef %3), !dbg !4374
  call fastcc void @Hacl_Bignum25519_fsquare(i64* noundef nonnull %40, i64* noundef nonnull %39), !dbg !4375
  %42 = bitcast i64* %41 to i8*, !dbg !4376
  %43 = bitcast i64* %3 to i8*, !dbg !4376
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* noundef nonnull align 4 dereferenceable(40) %42, i8* noundef nonnull align 4 dereferenceable(40) %43, i32 40, i1 false), !dbg !4376
  call fastcc void @Hacl_Bignum25519_fdifference(i64* noundef nonnull %41, i64* noundef nonnull %40), !dbg !4377
  call fastcc void @Hacl_Bignum25519_reduce_513(i64* noundef nonnull %41), !dbg !4378
  call fastcc void @Hacl_Bignum25519_reduce(i64* noundef nonnull %41), !dbg !4379
  %44 = call fastcc zeroext i1 @Hacl_Impl_Ed25519_RecoverX_is_0(i64* noundef nonnull %41), !dbg !4380
  call void @llvm.dbg.value(metadata i1 %44, metadata !4324, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !4370
  br i1 %44, label %48, label %45, !dbg !4381

45:                                               ; preds = %38
  %46 = bitcast [5 x i64]* %6 to i8*, !dbg !4382
  call void @llvm.lifetime.start.p0i8(i64 40, i8* nonnull %46) #14, !dbg !4382
  call void @llvm.dbg.declare(metadata [5 x i64]* %6, metadata !4325, metadata !DIExpression()), !dbg !4383
  call void @llvm.memset.p0i8.i32(i8* noundef nonnull align 8 dereferenceable(40) %46, i8 0, i32 40, i1 false), !dbg !4383
  %47 = getelementptr inbounds [5 x i64], [5 x i64]* %6, i32 0, i32 0, !dbg !4384
  call fastcc void @Hacl_Lib_Create64_make_h64_5(i64* noundef nonnull %47, i64 noundef 1718705420411056, i64 noundef 234908883556509, i64 noundef 2233514472574048, i64 noundef 2117202627021982, i64 noundef 765476049583133), !dbg !4385
  call fastcc void @Hacl_Bignum25519_fmul(i64* noundef nonnull %39, i64* noundef nonnull %39, i64* noundef nonnull %47), !dbg !4386
  call void @llvm.lifetime.end.p0i8(i64 40, i8* nonnull %46) #14, !dbg !4387
  br label %48, !dbg !4388

48:                                               ; preds = %45, %38
  call fastcc void @Hacl_Bignum25519_reduce(i64* noundef nonnull %39), !dbg !4389
  call void @llvm.dbg.value(metadata i64* %3, metadata !4328, metadata !DIExpression()), !dbg !4370
  call void @llvm.dbg.value(metadata i64* %39, metadata !4329, metadata !DIExpression()), !dbg !4370
  call void @llvm.dbg.value(metadata i64* %40, metadata !4330, metadata !DIExpression()), !dbg !4370
  call void @llvm.dbg.value(metadata i64* %41, metadata !4331, metadata !DIExpression()), !dbg !4370
  call fastcc void @Hacl_Bignum25519_fsquare(i64* noundef nonnull %40, i64* noundef nonnull %39), !dbg !4390
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* noundef nonnull align 4 dereferenceable(40) %42, i8* noundef nonnull align 4 dereferenceable(40) %43, i32 40, i1 false), !dbg !4391
  call fastcc void @Hacl_Bignum25519_fdifference(i64* noundef nonnull %41, i64* noundef nonnull %40), !dbg !4392
  call fastcc void @Hacl_Bignum25519_reduce_513(i64* noundef nonnull %41), !dbg !4393
  call fastcc void @Hacl_Bignum25519_reduce(i64* noundef nonnull %41), !dbg !4394
  %49 = call fastcc zeroext i1 @Hacl_Impl_Ed25519_RecoverX_is_0(i64* noundef nonnull %41), !dbg !4395
  call void @llvm.dbg.value(metadata i1 %49, metadata !4332, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !4370
  br i1 %49, label %50, label %51, !dbg !4396

50:                                               ; preds = %48
  call fastcc void @Hacl_Impl_Ed25519_RecoverX_recover_x_step_5(i64* noundef %0, i64 noundef %2, i64* noundef %3), !dbg !4397
  br label %51, !dbg !4400

51:                                               ; preds = %50, %48, %35, %37
  %52 = phi i1 [ true, %37 ], [ false, %35 ], [ %49, %48 ], [ %49, %50 ], !dbg !4401
  call void @llvm.lifetime.end.p0i8(i64 200, i8* nonnull %26) #14, !dbg !4402
  br label %53

53:                                               ; preds = %21, %51
  %54 = phi i1 [ %52, %51 ], [ false, %21 ], !dbg !4403
  ret i1 %54, !dbg !4404
}

; Function Attrs: noinline nounwind uwtable
define internal fastcc void @Hacl_Bignum25519_times_d(i64* nocapture noundef %0, i64* nocapture noundef readonly %1) unnamed_addr #0 !dbg !4405 {
  %3 = alloca [5 x i64], align 8
  call void @llvm.dbg.value(metadata i64* %0, metadata !4407, metadata !DIExpression()), !dbg !4410
  call void @llvm.dbg.value(metadata i64* %1, metadata !4408, metadata !DIExpression()), !dbg !4410
  %4 = bitcast [5 x i64]* %3 to i8*, !dbg !4411
  call void @llvm.lifetime.start.p0i8(i64 40, i8* nonnull %4) #14, !dbg !4411
  call void @llvm.dbg.declare(metadata [5 x i64]* %3, metadata !4409, metadata !DIExpression()), !dbg !4412
  call void @llvm.memset.p0i8.i32(i8* noundef nonnull align 8 dereferenceable(40) %4, i8 0, i32 40, i1 false), !dbg !4412
  %5 = getelementptr inbounds [5 x i64], [5 x i64]* %3, i32 0, i32 0, !dbg !4413
  call fastcc void @Hacl_Lib_Create64_make_h64_5(i64* noundef nonnull %5, i64 noundef 929955233495203, i64 noundef 466365720129213, i64 noundef 1662059464998953, i64 noundef 2033849074728123, i64 noundef 1442794654840575), !dbg !4414
  call fastcc void @Hacl_Bignum25519_fmul(i64* noundef %0, i64* noundef nonnull %5, i64* noundef %1), !dbg !4415
  call void @llvm.lifetime.end.p0i8(i64 40, i8* nonnull %4) #14, !dbg !4416
  ret void, !dbg !4416
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readonly uwtable willreturn
define internal fastcc zeroext i1 @Hacl_Impl_Ed25519_RecoverX_is_0(i64* nocapture noundef readonly %0) unnamed_addr #10 !dbg !4417 {
  call void @llvm.dbg.value(metadata i64* %0, metadata !4419, metadata !DIExpression()), !dbg !4425
  %2 = load i64, i64* %0, align 4, !dbg !4426, !tbaa !181
  call void @llvm.dbg.value(metadata i64 %2, metadata !4420, metadata !DIExpression()), !dbg !4425
  %3 = getelementptr inbounds i64, i64* %0, i32 1, !dbg !4427
  %4 = load i64, i64* %3, align 4, !dbg !4427, !tbaa !181
  call void @llvm.dbg.value(metadata i64 %4, metadata !4421, metadata !DIExpression()), !dbg !4425
  %5 = getelementptr inbounds i64, i64* %0, i32 2, !dbg !4428
  %6 = load i64, i64* %5, align 4, !dbg !4428, !tbaa !181
  call void @llvm.dbg.value(metadata i64 %6, metadata !4422, metadata !DIExpression()), !dbg !4425
  %7 = getelementptr inbounds i64, i64* %0, i32 3, !dbg !4429
  %8 = load i64, i64* %7, align 4, !dbg !4429, !tbaa !181
  call void @llvm.dbg.value(metadata i64 %8, metadata !4423, metadata !DIExpression()), !dbg !4425
  call void @llvm.dbg.value(metadata i64 undef, metadata !4424, metadata !DIExpression()), !dbg !4425
  %9 = icmp eq i64 %2, 0, !dbg !4430
  %10 = icmp eq i64 %4, 0
  %11 = select i1 %9, i1 %10, i1 false, !dbg !4431
  %12 = icmp eq i64 %6, 0
  %13 = select i1 %11, i1 %12, i1 false, !dbg !4431
  %14 = icmp eq i64 %8, 0
  %15 = select i1 %13, i1 %14, i1 false, !dbg !4431
  br i1 %15, label %16, label %20, !dbg !4431

16:                                               ; preds = %1
  %17 = getelementptr inbounds i64, i64* %0, i32 4, !dbg !4432
  %18 = load i64, i64* %17, align 4, !dbg !4432, !tbaa !181
  call void @llvm.dbg.value(metadata i64 %18, metadata !4424, metadata !DIExpression()), !dbg !4425
  %19 = icmp eq i64 %18, 0, !dbg !4433
  br label %20

20:                                               ; preds = %16, %1
  %21 = phi i1 [ false, %1 ], [ %19, %16 ], !dbg !4425
  ret i1 %21, !dbg !4434
}

; Function Attrs: noinline nounwind uwtable
define internal fastcc void @Hacl_Impl_Ed25519_Pow2_252m2_pow2_252m2(i64* nocapture noundef %0, i64* nocapture noundef readonly %1) unnamed_addr #0 !dbg !4435 {
  call void @llvm.dbg.value(metadata i64* %0, metadata !4437, metadata !DIExpression()), !dbg !4439
  call void @llvm.dbg.value(metadata i64* %1, metadata !4438, metadata !DIExpression()), !dbg !4439
  call fastcc void @Hacl_Bignum_Crecip_crecip_(i64* noundef %0, i64* noundef %1), !dbg !4440
  ret void, !dbg !4441
}

; Function Attrs: mustprogress nofree noinline nosync nounwind uwtable willreturn
define internal fastcc void @Hacl_Impl_Ed25519_RecoverX_recover_x_step_5(i64* nocapture noundef writeonly %0, i64 noundef %1, i64* nocapture noundef %2) unnamed_addr #5 !dbg !4442 {
  call void @llvm.dbg.value(metadata i64* %0, metadata !4446, metadata !DIExpression()), !dbg !4456
  call void @llvm.dbg.value(metadata i64 %1, metadata !4447, metadata !DIExpression()), !dbg !4456
  call void @llvm.dbg.value(metadata i64* %2, metadata !4448, metadata !DIExpression()), !dbg !4456
  %4 = getelementptr inbounds i64, i64* %2, i32 5, !dbg !4457
  call void @llvm.dbg.value(metadata i64* %4, metadata !4449, metadata !DIExpression()), !dbg !4456
  %5 = getelementptr inbounds i64, i64* %2, i32 10, !dbg !4458
  call void @llvm.dbg.value(metadata i64* %5, metadata !4450, metadata !DIExpression()), !dbg !4456
  %6 = load i64, i64* %4, align 4, !dbg !4459, !tbaa !181
  call void @llvm.dbg.value(metadata i64 %6, metadata !4451, metadata !DIExpression()), !dbg !4456
  %7 = and i64 %6, 1, !dbg !4460
  call void @llvm.dbg.value(metadata i64 %7, metadata !4452, metadata !DIExpression()), !dbg !4456
  %8 = icmp eq i64 %7, %1, !dbg !4461
  br i1 %8, label %10, label %9, !dbg !4462

9:                                                ; preds = %3
  call void @llvm.dbg.value(metadata i64 0, metadata !4453, metadata !DIExpression()), !dbg !4463
  call fastcc void @Hacl_Lib_Create64_make_h64_5(i64* noundef nonnull %5, i64 noundef 0, i64 noundef 0, i64 noundef 0, i64 noundef 0, i64 noundef 0), !dbg !4464
  call fastcc void @Hacl_Bignum25519_fdifference(i64* noundef nonnull %4, i64* noundef nonnull %5), !dbg !4465
  call fastcc void @Hacl_Bignum25519_reduce_513(i64* noundef nonnull %4), !dbg !4466
  call fastcc void @Hacl_Bignum25519_reduce(i64* noundef nonnull %4), !dbg !4467
  br label %10, !dbg !4468

10:                                               ; preds = %9, %3
  %11 = bitcast i64* %0 to i8*, !dbg !4469
  %12 = bitcast i64* %4 to i8*, !dbg !4469
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* noundef nonnull align 4 dereferenceable(40) %11, i8* noundef nonnull align 4 dereferenceable(40) %12, i32 40, i1 false), !dbg !4469
  ret void, !dbg !4470
}

; Function Attrs: noinline nounwind uwtable
define internal fastcc void @Hacl_Bignum_Crecip_crecip_(i64* nocapture noundef %0, i64* nocapture noundef readonly %1) unnamed_addr #0 !dbg !4471 {
  %3 = alloca [20 x i64], align 8
  call void @llvm.dbg.value(metadata i64* %0, metadata !4473, metadata !DIExpression()), !dbg !4487
  call void @llvm.dbg.value(metadata i64* %1, metadata !4474, metadata !DIExpression()), !dbg !4487
  %4 = bitcast [20 x i64]* %3 to i8*, !dbg !4488
  call void @llvm.lifetime.start.p0i8(i64 160, i8* nonnull %4) #14, !dbg !4488
  call void @llvm.dbg.declare(metadata [20 x i64]* %3, metadata !4475, metadata !DIExpression()), !dbg !4489
  call void @llvm.memset.p0i8.i32(i8* noundef nonnull align 8 dereferenceable(160) %4, i8 0, i32 160, i1 false), !dbg !4489
  %5 = getelementptr inbounds [20 x i64], [20 x i64]* %3, i32 0, i32 0, !dbg !4490
  call void @llvm.dbg.value(metadata i64* %5, metadata !4476, metadata !DIExpression()), !dbg !4487
  %6 = getelementptr inbounds [20 x i64], [20 x i64]* %3, i32 0, i32 5, !dbg !4491
  call void @llvm.dbg.value(metadata i64* %6, metadata !4477, metadata !DIExpression()), !dbg !4487
  %7 = getelementptr inbounds [20 x i64], [20 x i64]* %3, i32 0, i32 10, !dbg !4492
  call void @llvm.dbg.value(metadata i64* %7, metadata !4478, metadata !DIExpression()), !dbg !4487
  call fastcc void @Hacl_Bignum_Fsquare_fsquare_times(i64* noundef nonnull %5, i64* noundef %1, i32 noundef 1), !dbg !4493
  call fastcc void @Hacl_Bignum_Fsquare_fsquare_times(i64* noundef nonnull %6, i64* noundef nonnull %5, i32 noundef 2), !dbg !4494
  call fastcc void @Hacl_Bignum_Fmul_fmul(i64* noundef nonnull %7, i64* noundef nonnull %6, i64* noundef %1), !dbg !4495
  call fastcc void @Hacl_Bignum_Fmul_fmul(i64* noundef nonnull %5, i64* noundef nonnull %7, i64* noundef nonnull %5), !dbg !4496
  call fastcc void @Hacl_Bignum_Fsquare_fsquare_times(i64* noundef nonnull %6, i64* noundef nonnull %5, i32 noundef 1), !dbg !4497
  call fastcc void @Hacl_Bignum_Fmul_fmul(i64* noundef nonnull %7, i64* noundef nonnull %6, i64* noundef nonnull %7), !dbg !4498
  call fastcc void @Hacl_Bignum_Fsquare_fsquare_times(i64* noundef nonnull %6, i64* noundef nonnull %7, i32 noundef 5), !dbg !4499
  call void @llvm.dbg.value(metadata i64* %6, metadata !4479, metadata !DIExpression()), !dbg !4487
  call void @llvm.dbg.value(metadata i64* %7, metadata !4480, metadata !DIExpression()), !dbg !4487
  %8 = getelementptr inbounds [20 x i64], [20 x i64]* %3, i32 0, i32 15, !dbg !4500
  call void @llvm.dbg.value(metadata i64* %8, metadata !4481, metadata !DIExpression()), !dbg !4487
  call fastcc void @Hacl_Bignum_Fmul_fmul(i64* noundef nonnull %7, i64* noundef nonnull %6, i64* noundef nonnull %7), !dbg !4501
  call fastcc void @Hacl_Bignum_Fsquare_fsquare_times(i64* noundef nonnull %6, i64* noundef nonnull %7, i32 noundef 10), !dbg !4502
  call fastcc void @Hacl_Bignum_Fmul_fmul(i64* noundef nonnull %8, i64* noundef nonnull %6, i64* noundef nonnull %7), !dbg !4503
  call fastcc void @Hacl_Bignum_Fsquare_fsquare_times(i64* noundef nonnull %6, i64* noundef nonnull %8, i32 noundef 20), !dbg !4504
  call fastcc void @Hacl_Bignum_Fmul_fmul(i64* noundef nonnull %6, i64* noundef nonnull %6, i64* noundef nonnull %8), !dbg !4505
  call fastcc void @Hacl_Bignum_Fsquare_fsquare_times_inplace(i64* noundef nonnull %6, i32 noundef 10), !dbg !4506
  call fastcc void @Hacl_Bignum_Fmul_fmul(i64* noundef nonnull %7, i64* noundef nonnull %6, i64* noundef nonnull %7), !dbg !4507
  call fastcc void @Hacl_Bignum_Fsquare_fsquare_times(i64* noundef nonnull %6, i64* noundef nonnull %7, i32 noundef 50), !dbg !4508
  call void @llvm.dbg.value(metadata i64* %5, metadata !4482, metadata !DIExpression()), !dbg !4487
  call fastcc void @Hacl_Bignum_Fsquare_fsquare_times(i64* noundef nonnull %5, i64* noundef %1, i32 noundef 1), !dbg !4509
  call void @llvm.dbg.value(metadata i64* %5, metadata !4483, metadata !DIExpression()), !dbg !4487
  call void @llvm.dbg.value(metadata i64* %6, metadata !4484, metadata !DIExpression()), !dbg !4487
  call void @llvm.dbg.value(metadata i64* %7, metadata !4485, metadata !DIExpression()), !dbg !4487
  call void @llvm.dbg.value(metadata i64* %8, metadata !4486, metadata !DIExpression()), !dbg !4487
  call fastcc void @Hacl_Bignum_Fmul_fmul(i64* noundef nonnull %8, i64* noundef nonnull %6, i64* noundef nonnull %7), !dbg !4510
  call fastcc void @Hacl_Bignum_Fsquare_fsquare_times(i64* noundef nonnull %6, i64* noundef nonnull %8, i32 noundef 100), !dbg !4511
  call fastcc void @Hacl_Bignum_Fmul_fmul(i64* noundef nonnull %6, i64* noundef nonnull %6, i64* noundef nonnull %8), !dbg !4512
  call fastcc void @Hacl_Bignum_Fsquare_fsquare_times_inplace(i64* noundef nonnull %6, i32 noundef 50), !dbg !4513
  call fastcc void @Hacl_Bignum_Fmul_fmul(i64* noundef nonnull %6, i64* noundef nonnull %6, i64* noundef nonnull %7), !dbg !4514
  call fastcc void @Hacl_Bignum_Fsquare_fsquare_times_inplace(i64* noundef nonnull %6, i32 noundef 2), !dbg !4515
  call fastcc void @Hacl_Bignum_Fmul_fmul(i64* noundef %0, i64* noundef nonnull %6, i64* noundef nonnull %5), !dbg !4516
  call void @llvm.lifetime.end.p0i8(i64 160, i8* nonnull %4) #14, !dbg !4517
  ret void, !dbg !4517
}

; Function Attrs: noinline nounwind uwtable
define internal fastcc void @Hacl_Impl_Ed25519_Verify_Steps_point_mul_g(i64* nocapture noundef writeonly %0, i8* nocapture noundef readonly %1) unnamed_addr #0 !dbg !4518 {
  %3 = alloca [20 x i64], align 8
  call void @llvm.dbg.value(metadata i64* %0, metadata !4520, metadata !DIExpression()), !dbg !4523
  call void @llvm.dbg.value(metadata i8* %1, metadata !4521, metadata !DIExpression()), !dbg !4523
  %4 = bitcast [20 x i64]* %3 to i8*, !dbg !4524
  call void @llvm.lifetime.start.p0i8(i64 160, i8* nonnull %4) #14, !dbg !4524
  call void @llvm.dbg.declare(metadata [20 x i64]* %3, metadata !4522, metadata !DIExpression()), !dbg !4525
  call void @llvm.memset.p0i8.i32(i8* noundef nonnull align 8 dereferenceable(160) %4, i8 0, i32 160, i1 false), !dbg !4525
  %5 = getelementptr inbounds [20 x i64], [20 x i64]* %3, i32 0, i32 0, !dbg !4526
  call fastcc void @Hacl_Impl_Ed25519_G_make_g(i64* noundef nonnull %5), !dbg !4527
  call fastcc void @Hacl_Impl_Ed25519_Ladder_point_mul(i64* noundef %0, i8* noundef %1, i64* noundef nonnull %5), !dbg !4528
  call void @llvm.lifetime.end.p0i8(i64 160, i8* nonnull %4) #14, !dbg !4529
  ret void, !dbg !4529
}

; Function Attrs: noinline nounwind uwtable
define internal fastcc zeroext i1 @Hacl_Impl_Ed25519_PointEqual_point_equal(i64* noundef %0, i64* noundef %1) unnamed_addr #0 !dbg !4530 {
  %3 = alloca [20 x i64], align 8
  call void @llvm.dbg.value(metadata i64* %0, metadata !4534, metadata !DIExpression()), !dbg !4538
  call void @llvm.dbg.value(metadata i64* %1, metadata !4535, metadata !DIExpression()), !dbg !4538
  %4 = bitcast [20 x i64]* %3 to i8*, !dbg !4539
  call void @llvm.lifetime.start.p0i8(i64 160, i8* nonnull %4) #14, !dbg !4539
  call void @llvm.dbg.declare(metadata [20 x i64]* %3, metadata !4536, metadata !DIExpression()), !dbg !4540
  call void @llvm.memset.p0i8.i32(i8* noundef nonnull align 8 dereferenceable(160) %4, i8 0, i32 160, i1 false), !dbg !4540
  %5 = getelementptr inbounds [20 x i64], [20 x i64]* %3, i32 0, i32 0, !dbg !4541
  %6 = call fastcc zeroext i1 @Hacl_Impl_Ed25519_PointEqual_point_equal_(i64* noundef %0, i64* noundef %1, i64* noundef nonnull %5), !dbg !4542
  call void @llvm.dbg.value(metadata i1 %6, metadata !4537, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !4538
  call void @llvm.lifetime.end.p0i8(i64 160, i8* nonnull %4) #14, !dbg !4543
  ret i1 %6, !dbg !4544
}

; Function Attrs: noinline nounwind uwtable
define internal fastcc zeroext i1 @Hacl_Impl_Ed25519_PointEqual_point_equal_(i64* noundef %0, i64* noundef %1, i64* nocapture noundef %2) unnamed_addr #0 !dbg !4545 {
  call void @llvm.dbg.value(metadata i64* %0, metadata !4549, metadata !DIExpression()), !dbg !4553
  call void @llvm.dbg.value(metadata i64* %1, metadata !4550, metadata !DIExpression()), !dbg !4553
  call void @llvm.dbg.value(metadata i64* %2, metadata !4551, metadata !DIExpression()), !dbg !4553
  %4 = call fastcc zeroext i1 @Hacl_Impl_Ed25519_PointEqual_point_equal_1(i64* noundef %0, i64* noundef %1, i64* noundef %2), !dbg !4554
  call void @llvm.dbg.value(metadata i1 %4, metadata !4552, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !4553
  br i1 %4, label %5, label %7, !dbg !4555

5:                                                ; preds = %3
  %6 = call fastcc zeroext i1 @Hacl_Impl_Ed25519_PointEqual_point_equal_2(i64* noundef %0, i64* noundef %1, i64* noundef %2), !dbg !4556
  br label %7, !dbg !4558

7:                                                ; preds = %3, %5
  %8 = phi i1 [ %6, %5 ], [ false, %3 ], !dbg !4559
  ret i1 %8, !dbg !4560
}

; Function Attrs: noinline nounwind uwtable
define internal fastcc zeroext i1 @Hacl_Impl_Ed25519_PointEqual_point_equal_1(i64* noundef readonly %0, i64* noundef readonly %1, i64* nocapture noundef %2) unnamed_addr #0 !dbg !4561 {
  call void @llvm.dbg.value(metadata i64* %0, metadata !4563, metadata !DIExpression()), !dbg !4569
  call void @llvm.dbg.value(metadata i64* %1, metadata !4564, metadata !DIExpression()), !dbg !4569
  call void @llvm.dbg.value(metadata i64* %2, metadata !4565, metadata !DIExpression()), !dbg !4569
  call void @llvm.dbg.value(metadata i64* %2, metadata !4566, metadata !DIExpression()), !dbg !4569
  %4 = getelementptr inbounds i64, i64* %2, i32 5, !dbg !4570
  call void @llvm.dbg.value(metadata i64* %4, metadata !4567, metadata !DIExpression()), !dbg !4569
  %5 = call fastcc i64* @Hacl_Impl_Ed25519_ExtPoint_getz(i64* noundef %1), !dbg !4571
  call fastcc void @Hacl_Bignum25519_fmul(i64* noundef %2, i64* noundef %0, i64* noundef nonnull %5), !dbg !4572
  call fastcc void @Hacl_Bignum25519_reduce(i64* noundef %2), !dbg !4573
  %6 = call fastcc i64* @Hacl_Impl_Ed25519_ExtPoint_getz(i64* noundef %0), !dbg !4574
  call fastcc void @Hacl_Bignum25519_fmul(i64* noundef nonnull %4, i64* noundef %1, i64* noundef nonnull %6), !dbg !4575
  call fastcc void @Hacl_Bignum25519_reduce(i64* noundef nonnull %4), !dbg !4576
  %7 = call fastcc zeroext i1 @Hacl_Impl_Ed25519_PointEqual_eq(i64* noundef %2, i64* noundef nonnull %4), !dbg !4577
  call void @llvm.dbg.value(metadata i1 %7, metadata !4568, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !4569
  ret i1 %7, !dbg !4578
}

; Function Attrs: noinline nounwind uwtable
define internal fastcc zeroext i1 @Hacl_Impl_Ed25519_PointEqual_point_equal_2(i64* noundef readonly %0, i64* noundef readonly %1, i64* nocapture noundef %2) unnamed_addr #0 !dbg !4579 {
  call void @llvm.dbg.value(metadata i64* %0, metadata !4581, metadata !DIExpression()), !dbg !4587
  call void @llvm.dbg.value(metadata i64* %1, metadata !4582, metadata !DIExpression()), !dbg !4587
  call void @llvm.dbg.value(metadata i64* %2, metadata !4583, metadata !DIExpression()), !dbg !4587
  %4 = getelementptr inbounds i64, i64* %2, i32 10, !dbg !4588
  call void @llvm.dbg.value(metadata i64* %4, metadata !4584, metadata !DIExpression()), !dbg !4587
  %5 = getelementptr inbounds i64, i64* %2, i32 15, !dbg !4589
  call void @llvm.dbg.value(metadata i64* %5, metadata !4585, metadata !DIExpression()), !dbg !4587
  %6 = call fastcc i64* @Hacl_Impl_Ed25519_ExtPoint_gety(i64* noundef %0), !dbg !4590
  %7 = call fastcc i64* @Hacl_Impl_Ed25519_ExtPoint_getz(i64* noundef %1), !dbg !4591
  call fastcc void @Hacl_Bignum25519_fmul(i64* noundef nonnull %4, i64* noundef nonnull %6, i64* noundef nonnull %7), !dbg !4592
  call fastcc void @Hacl_Bignum25519_reduce(i64* noundef nonnull %4), !dbg !4593
  %8 = call fastcc i64* @Hacl_Impl_Ed25519_ExtPoint_gety(i64* noundef %1), !dbg !4594
  %9 = call fastcc i64* @Hacl_Impl_Ed25519_ExtPoint_getz(i64* noundef %0), !dbg !4595
  call fastcc void @Hacl_Bignum25519_fmul(i64* noundef nonnull %5, i64* noundef nonnull %8, i64* noundef nonnull %9), !dbg !4596
  call fastcc void @Hacl_Bignum25519_reduce(i64* noundef nonnull %5), !dbg !4597
  %10 = call fastcc zeroext i1 @Hacl_Impl_Ed25519_PointEqual_eq(i64* noundef nonnull %4, i64* noundef nonnull %5), !dbg !4598
  call void @llvm.dbg.value(metadata i1 %10, metadata !4586, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !4587
  ret i1 %10, !dbg !4599
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readonly uwtable willreturn
define internal fastcc zeroext i1 @Hacl_Impl_Ed25519_PointEqual_eq(i64* nocapture noundef readonly %0, i64* nocapture noundef readonly %1) unnamed_addr #10 !dbg !4600 {
  call void @llvm.dbg.value(metadata i64* %0, metadata !4602, metadata !DIExpression()), !dbg !4615
  call void @llvm.dbg.value(metadata i64* %1, metadata !4603, metadata !DIExpression()), !dbg !4615
  %3 = load i64, i64* %0, align 4, !dbg !4616, !tbaa !181
  call void @llvm.dbg.value(metadata i64 %3, metadata !4604, metadata !DIExpression()), !dbg !4615
  call void @llvm.dbg.value(metadata i64 undef, metadata !4605, metadata !DIExpression()), !dbg !4615
  call void @llvm.dbg.value(metadata i64 undef, metadata !4606, metadata !DIExpression()), !dbg !4615
  call void @llvm.dbg.value(metadata i64 undef, metadata !4607, metadata !DIExpression()), !dbg !4615
  call void @llvm.dbg.value(metadata i64 undef, metadata !4608, metadata !DIExpression()), !dbg !4615
  %4 = load i64, i64* %1, align 4, !dbg !4617, !tbaa !181
  call void @llvm.dbg.value(metadata i64 %4, metadata !4609, metadata !DIExpression()), !dbg !4615
  call void @llvm.dbg.value(metadata i64 undef, metadata !4610, metadata !DIExpression()), !dbg !4615
  call void @llvm.dbg.value(metadata i64 undef, metadata !4611, metadata !DIExpression()), !dbg !4615
  call void @llvm.dbg.value(metadata i64 undef, metadata !4612, metadata !DIExpression()), !dbg !4615
  call void @llvm.dbg.value(metadata i64 undef, metadata !4613, metadata !DIExpression()), !dbg !4615
  %5 = icmp eq i64 %3, %4, !dbg !4618
  br i1 %5, label %6, label %30, !dbg !4619

6:                                                ; preds = %2
  %7 = getelementptr inbounds i64, i64* %1, i32 4, !dbg !4620
  %8 = load i64, i64* %7, align 4, !dbg !4620, !tbaa !181
  call void @llvm.dbg.value(metadata i64 %8, metadata !4613, metadata !DIExpression()), !dbg !4615
  %9 = getelementptr inbounds i64, i64* %1, i32 3, !dbg !4621
  %10 = load i64, i64* %9, align 4, !dbg !4621, !tbaa !181
  call void @llvm.dbg.value(metadata i64 %10, metadata !4612, metadata !DIExpression()), !dbg !4615
  %11 = getelementptr inbounds i64, i64* %1, i32 2, !dbg !4622
  %12 = load i64, i64* %11, align 4, !dbg !4622, !tbaa !181
  call void @llvm.dbg.value(metadata i64 %12, metadata !4611, metadata !DIExpression()), !dbg !4615
  %13 = getelementptr inbounds i64, i64* %0, i32 4, !dbg !4623
  %14 = load i64, i64* %13, align 4, !dbg !4623, !tbaa !181
  call void @llvm.dbg.value(metadata i64 %14, metadata !4608, metadata !DIExpression()), !dbg !4615
  %15 = getelementptr inbounds i64, i64* %0, i32 3, !dbg !4624
  %16 = load i64, i64* %15, align 4, !dbg !4624, !tbaa !181
  call void @llvm.dbg.value(metadata i64 %16, metadata !4607, metadata !DIExpression()), !dbg !4615
  %17 = getelementptr inbounds i64, i64* %0, i32 2, !dbg !4625
  %18 = load i64, i64* %17, align 4, !dbg !4625, !tbaa !181
  call void @llvm.dbg.value(metadata i64 %18, metadata !4606, metadata !DIExpression()), !dbg !4615
  %19 = getelementptr inbounds i64, i64* %1, i32 1, !dbg !4626
  %20 = load i64, i64* %19, align 4, !dbg !4626, !tbaa !181
  call void @llvm.dbg.value(metadata i64 %20, metadata !4610, metadata !DIExpression()), !dbg !4615
  %21 = getelementptr inbounds i64, i64* %0, i32 1, !dbg !4627
  %22 = load i64, i64* %21, align 4, !dbg !4627, !tbaa !181
  call void @llvm.dbg.value(metadata i64 %22, metadata !4605, metadata !DIExpression()), !dbg !4615
  %23 = icmp eq i64 %22, %20, !dbg !4628
  %24 = icmp eq i64 %18, %12
  %25 = select i1 %23, i1 %24, i1 false, !dbg !4629
  %26 = icmp eq i64 %16, %10
  %27 = select i1 %25, i1 %26, i1 false, !dbg !4629
  %28 = icmp eq i64 %14, %8
  %29 = select i1 %27, i1 %28, i1 false, !dbg !4629
  br label %30, !dbg !4629

30:                                               ; preds = %6, %2
  %31 = phi i1 [ false, %2 ], [ %29, %6 ], !dbg !4615
  call void @llvm.dbg.value(metadata i1 %31, metadata !4614, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !4615
  ret i1 %31, !dbg !4630
}

; Function Attrs: noinline nounwind uwtable
define internal fastcc void @Hacl_Impl_Ed25519_SecretToPublic_secret_to_public_(i8* nocapture noundef %0, i8* nocapture noundef readonly %1) unnamed_addr #0 !dbg !4631 {
  %3 = alloca [20 x i64], align 8
  call void @llvm.dbg.value(metadata i8* %0, metadata !4633, metadata !DIExpression()), !dbg !4638
  call void @llvm.dbg.value(metadata i8* undef, metadata !4634, metadata !DIExpression()), !dbg !4638
  call void @llvm.dbg.value(metadata i8* %1, metadata !4635, metadata !DIExpression()), !dbg !4638
  call void @llvm.dbg.value(metadata i8* %1, metadata !4636, metadata !DIExpression()), !dbg !4638
  %4 = bitcast [20 x i64]* %3 to i8*, !dbg !4639
  call void @llvm.lifetime.start.p0i8(i64 160, i8* nonnull %4) #14, !dbg !4639
  call void @llvm.dbg.declare(metadata [20 x i64]* %3, metadata !4637, metadata !DIExpression()), !dbg !4640
  call void @llvm.memset.p0i8.i32(i8* noundef nonnull align 8 dereferenceable(160) %4, i8 0, i32 160, i1 false), !dbg !4640
  %5 = getelementptr inbounds [20 x i64], [20 x i64]* %3, i32 0, i32 0, !dbg !4641
  call fastcc void @Hacl_Impl_Ed25519_SecretToPublic_point_mul_g(i64* noundef nonnull %5, i8* noundef %1), !dbg !4642
  call fastcc void @Hacl_Impl_Ed25519_PointCompress_point_compress(i8* noundef %0, i64* noundef nonnull %5), !dbg !4643
  call void @llvm.lifetime.end.p0i8(i64 160, i8* nonnull %4) #14, !dbg !4644
  ret void, !dbg !4644
}

; Function Attrs: noinline nounwind uwtable
define internal fastcc void @Hacl_Impl_Ed25519_SecretToPublic_point_mul_g(i64* nocapture noundef writeonly %0, i8* nocapture noundef readonly %1) unnamed_addr #0 !dbg !4645 {
  %3 = alloca [20 x i64], align 8
  call void @llvm.dbg.value(metadata i64* %0, metadata !4647, metadata !DIExpression()), !dbg !4650
  call void @llvm.dbg.value(metadata i8* %1, metadata !4648, metadata !DIExpression()), !dbg !4650
  %4 = bitcast [20 x i64]* %3 to i8*, !dbg !4651
  call void @llvm.lifetime.start.p0i8(i64 160, i8* nonnull %4) #14, !dbg !4651
  call void @llvm.dbg.declare(metadata [20 x i64]* %3, metadata !4649, metadata !DIExpression()), !dbg !4652
  call void @llvm.memset.p0i8.i32(i8* noundef nonnull align 8 dereferenceable(160) %4, i8 0, i32 160, i1 false), !dbg !4652
  %5 = getelementptr inbounds [20 x i64], [20 x i64]* %3, i32 0, i32 0, !dbg !4653
  call fastcc void @Hacl_Impl_Ed25519_G_make_g(i64* noundef nonnull %5), !dbg !4654
  call fastcc void @Hacl_Impl_Ed25519_Ladder_point_mul(i64* noundef %0, i8* noundef %1, i64* noundef nonnull %5), !dbg !4655
  call void @llvm.lifetime.end.p0i8(i64 160, i8* nonnull %4) #14, !dbg !4656
  ret void, !dbg !4656
}

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare void @llvm.dbg.value(metadata, metadata, metadata) #13

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare i64 @llvm.fshl.i64(i64, i64, i64) #13

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare i64 @llvm.bswap.i64(i64) #13

attributes #0 = { noinline nounwind uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="i686" "target-features"="+cx8,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nofree nosync nounwind readnone speculatable willreturn }
attributes #2 = { argmemonly mustprogress nofree nosync nounwind willreturn }
attributes #3 = { argmemonly mustprogress nofree nounwind willreturn writeonly }
attributes #4 = { mustprogress nofree noinline norecurse nosync nounwind uwtable willreturn "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="i686" "target-features"="+cx8,+x87" "tune-cpu"="generic" }
attributes #5 = { mustprogress nofree noinline nosync nounwind uwtable willreturn "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="i686" "target-features"="+cx8,+x87" "tune-cpu"="generic" }
attributes #6 = { mustprogress nofree noinline norecurse nosync nounwind uwtable willreturn writeonly "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="i686" "target-features"="+cx8,+x87" "tune-cpu"="generic" }
attributes #7 = { nofree noinline nosync nounwind uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="i686" "target-features"="+cx8,+x87" "tune-cpu"="generic" }
attributes #8 = { argmemonly mustprogress nofree nounwind willreturn }
attributes #9 = { mustprogress nofree noinline nosync nounwind readnone uwtable willreturn "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="i686" "target-features"="+cx8,+x87" "tune-cpu"="generic" }
attributes #10 = { mustprogress nofree noinline norecurse nosync nounwind readonly uwtable willreturn "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="i686" "target-features"="+cx8,+x87" "tune-cpu"="generic" }
attributes #11 = { "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="i686" "target-features"="+cx8,+x87" "tune-cpu"="generic" }
attributes #12 = { mustprogress nofree noinline norecurse nosync nounwind readnone uwtable willreturn "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="i686" "target-features"="+cx8,+x87" "tune-cpu"="generic" }
attributes #13 = { nofree nosync nounwind readnone speculatable willreturn }
attributes #14 = { nounwind }

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!18, !19, !20, !21, !22, !23, !24}
!llvm.ident = !{!25}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "Ubuntu clang version 14.0.0-1ubuntu1.1", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !2, splitDebugInlining: false, nameTableKind: None)
!1 = !DIFile(filename: "hacl-c/hacl-c/Hacl_Ed25519.c", directory: "/mnt/c/Users/fwill/Documents/HS24/semester_project/tools/binsec/binsec/examples/hacl", checksumkind: CSK_MD5, checksum: "9821a50366473b2ca38a6e3aa38c6582")
!2 = !{!3, !8, !11, !14}
!3 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint32_t", file: !4, line: 26, baseType: !5)
!4 = !DIFile(filename: "/usr/include/bits/stdint-uintn.h", directory: "", checksumkind: CSK_MD5, checksum: "2bf2ae53c58c01b1a1b9383b5195125c")
!5 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uint32_t", file: !6, line: 42, baseType: !7)
!6 = !DIFile(filename: "/usr/include/bits/types.h", directory: "", checksumkind: CSK_MD5, checksum: "d108b5f93a74c50510d7d9bc0ab36df9")
!7 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!8 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint8_t", file: !4, line: 24, baseType: !9)
!9 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uint8_t", file: !6, line: 38, baseType: !10)
!10 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!11 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint64_t", file: !4, line: 27, baseType: !12)
!12 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uint64_t", file: !6, line: 48, baseType: !13)
!13 = !DIBasicType(name: "unsigned long long", size: 64, encoding: DW_ATE_unsigned)
!14 = !DIDerivedType(tag: DW_TAG_typedef, name: "int64_t", file: !15, line: 27, baseType: !16)
!15 = !DIFile(filename: "/usr/include/bits/stdint-intn.h", directory: "", checksumkind: CSK_MD5, checksum: "55bcbdc3159515ebd91d351a70d505f4")
!16 = !DIDerivedType(tag: DW_TAG_typedef, name: "__int64_t", file: !6, line: 47, baseType: !17)
!17 = !DIBasicType(name: "long long", size: 64, encoding: DW_ATE_signed)
!18 = !{i32 1, !"NumRegisterParameters", i32 0}
!19 = !{i32 7, !"Dwarf Version", i32 5}
!20 = !{i32 2, !"Debug Info Version", i32 3}
!21 = !{i32 1, !"wchar_size", i32 4}
!22 = !{i32 7, !"PIC Level", i32 2}
!23 = !{i32 7, !"PIE Level", i32 2}
!24 = !{i32 7, !"uwtable", i32 1}
!25 = !{!"Ubuntu clang version 14.0.0-1ubuntu1.1"}
!26 = distinct !DISubprogram(name: "Hacl_Ed25519_sign", scope: !1, file: !1, line: 2814, type: !27, scopeLine: 2815, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !30)
!27 = !DISubroutineType(types: !28)
!28 = !{null, !29, !29, !29, !3}
!29 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !8, size: 32)
!30 = !{!31, !32, !33, !34}
!31 = !DILocalVariable(name: "signature", arg: 1, scope: !26, file: !1, line: 2814, type: !29)
!32 = !DILocalVariable(name: "secret", arg: 2, scope: !26, file: !1, line: 2814, type: !29)
!33 = !DILocalVariable(name: "msg", arg: 3, scope: !26, file: !1, line: 2814, type: !29)
!34 = !DILocalVariable(name: "len1", arg: 4, scope: !26, file: !1, line: 2814, type: !3)
!35 = !DILocation(line: 0, scope: !26)
!36 = !DILocation(line: 2816, column: 3, scope: !26)
!37 = !DILocation(line: 2817, column: 1, scope: !26)
!38 = distinct !DISubprogram(name: "Hacl_Impl_Ed25519_Sign_sign", scope: !1, file: !1, line: 2809, type: !27, scopeLine: 2810, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !39)
!39 = !{!40, !41, !42, !43}
!40 = !DILocalVariable(name: "signature", arg: 1, scope: !38, file: !1, line: 2809, type: !29)
!41 = !DILocalVariable(name: "secret", arg: 2, scope: !38, file: !1, line: 2809, type: !29)
!42 = !DILocalVariable(name: "msg", arg: 3, scope: !38, file: !1, line: 2809, type: !29)
!43 = !DILocalVariable(name: "len1", arg: 4, scope: !38, file: !1, line: 2809, type: !3)
!44 = !DILocation(line: 0, scope: !38)
!45 = !DILocation(line: 2811, column: 3, scope: !38)
!46 = !DILocation(line: 2812, column: 1, scope: !38)
!47 = distinct !DISubprogram(name: "Hacl_Ed25519_verify", scope: !1, file: !1, line: 2819, type: !48, scopeLine: 2820, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !51)
!48 = !DISubroutineType(types: !49)
!49 = !{!50, !29, !29, !3, !29}
!50 = !DIBasicType(name: "_Bool", size: 8, encoding: DW_ATE_boolean)
!51 = !{!52, !53, !54, !55}
!52 = !DILocalVariable(name: "output", arg: 1, scope: !47, file: !1, line: 2819, type: !29)
!53 = !DILocalVariable(name: "msg", arg: 2, scope: !47, file: !1, line: 2819, type: !29)
!54 = !DILocalVariable(name: "len1", arg: 3, scope: !47, file: !1, line: 2819, type: !3)
!55 = !DILocalVariable(name: "signature", arg: 4, scope: !47, file: !1, line: 2819, type: !29)
!56 = !DILocation(line: 0, scope: !47)
!57 = !DILocation(line: 2821, column: 10, scope: !47)
!58 = !DILocation(line: 2821, column: 3, scope: !47)
!59 = distinct !DISubprogram(name: "Hacl_Impl_Ed25519_Verify_verify", scope: !1, file: !1, line: 2701, type: !48, scopeLine: 2707, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !60)
!60 = !{!61, !62, !63, !64}
!61 = !DILocalVariable(name: "public", arg: 1, scope: !59, file: !1, line: 2702, type: !29)
!62 = !DILocalVariable(name: "msg", arg: 2, scope: !59, file: !1, line: 2703, type: !29)
!63 = !DILocalVariable(name: "len1", arg: 3, scope: !59, file: !1, line: 2704, type: !3)
!64 = !DILocalVariable(name: "signature", arg: 4, scope: !59, file: !1, line: 2705, type: !29)
!65 = !DILocation(line: 0, scope: !59)
!66 = !DILocation(line: 2708, column: 10, scope: !59)
!67 = !DILocation(line: 2708, column: 3, scope: !59)
!68 = distinct !DISubprogram(name: "Hacl_Ed25519_secret_to_public", scope: !1, file: !1, line: 2824, type: !69, scopeLine: 2825, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !71)
!69 = !DISubroutineType(types: !70)
!70 = !{null, !29, !29}
!71 = !{!72, !73}
!72 = !DILocalVariable(name: "output", arg: 1, scope: !68, file: !1, line: 2824, type: !29)
!73 = !DILocalVariable(name: "secret", arg: 2, scope: !68, file: !1, line: 2824, type: !29)
!74 = !DILocation(line: 0, scope: !68)
!75 = !DILocation(line: 2826, column: 3, scope: !68)
!76 = !DILocation(line: 2827, column: 1, scope: !68)
!77 = distinct !DISubprogram(name: "Hacl_Impl_Ed25519_SecretToPublic_secret_to_public", scope: !1, file: !1, line: 1503, type: !69, scopeLine: 1504, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !78)
!78 = !{!79, !80, !81}
!79 = !DILocalVariable(name: "out", arg: 1, scope: !77, file: !1, line: 1503, type: !29)
!80 = !DILocalVariable(name: "secret", arg: 2, scope: !77, file: !1, line: 1503, type: !29)
!81 = !DILocalVariable(name: "expanded", scope: !77, file: !1, line: 1505, type: !82)
!82 = !DICompositeType(tag: DW_TAG_array_type, baseType: !8, size: 512, elements: !83)
!83 = !{!84}
!84 = !DISubrange(count: 64)
!85 = !DILocation(line: 0, scope: !77)
!86 = !DILocation(line: 1505, column: 3, scope: !77)
!87 = !DILocation(line: 1505, column: 11, scope: !77)
!88 = !DILocation(line: 1506, column: 3, scope: !77)
!89 = !DILocation(line: 1507, column: 3, scope: !77)
!90 = !DILocation(line: 1508, column: 1, scope: !77)
!91 = distinct !DISubprogram(name: "Hacl_Impl_Ed25519_Sign_sign_", scope: !1, file: !1, line: 2790, type: !27, scopeLine: 2791, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !92)
!92 = !{!93, !94, !95, !96, !97, !101, !105, !106, !107, !111, !113}
!93 = !DILocalVariable(name: "signature", arg: 1, scope: !91, file: !1, line: 2790, type: !29)
!94 = !DILocalVariable(name: "secret", arg: 2, scope: !91, file: !1, line: 2790, type: !29)
!95 = !DILocalVariable(name: "msg", arg: 3, scope: !91, file: !1, line: 2790, type: !29)
!96 = !DILocalVariable(name: "len1", arg: 4, scope: !91, file: !1, line: 2790, type: !3)
!97 = !DILocalVariable(name: "tmp_bytes", scope: !91, file: !1, line: 2792, type: !98)
!98 = !DICompositeType(tag: DW_TAG_array_type, baseType: !8, size: 2816, elements: !99)
!99 = !{!100}
!100 = !DISubrange(count: 352)
!101 = !DILocalVariable(name: "tmp_ints", scope: !91, file: !1, line: 2793, type: !102)
!102 = !DICompositeType(tag: DW_TAG_array_type, baseType: !11, size: 4160, elements: !103)
!103 = !{!104}
!104 = !DISubrange(count: 65)
!105 = !DILocalVariable(name: "rs_", scope: !91, file: !1, line: 2794, type: !29)
!106 = !DILocalVariable(name: "s_", scope: !91, file: !1, line: 2795, type: !29)
!107 = !DILocalVariable(name: "rb", scope: !91, file: !1, line: 2798, type: !108)
!108 = !DICompositeType(tag: DW_TAG_array_type, baseType: !8, size: 256, elements: !109)
!109 = !{!110}
!110 = !DISubrange(count: 32)
!111 = !DILocalVariable(name: "r", scope: !91, file: !1, line: 2799, type: !112)
!112 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !11, size: 32)
!113 = !DILocalVariable(name: "rs_0", scope: !91, file: !1, line: 2800, type: !29)
!114 = !DILocation(line: 0, scope: !91)
!115 = !DILocation(line: 2792, column: 3, scope: !91)
!116 = !DILocation(line: 2792, column: 11, scope: !91)
!117 = !DILocation(line: 2793, column: 3, scope: !91)
!118 = !DILocation(line: 2793, column: 12, scope: !91)
!119 = !DILocation(line: 2794, column: 28, scope: !91)
!120 = !DILocation(line: 2795, column: 27, scope: !91)
!121 = !DILocation(line: 2796, column: 3, scope: !91)
!122 = !DILocation(line: 2797, column: 66, scope: !91)
!123 = !DILocation(line: 2797, column: 3, scope: !91)
!124 = !DILocation(line: 2798, column: 3, scope: !91)
!125 = !DILocation(line: 2798, column: 11, scope: !91)
!126 = !DILocation(line: 2799, column: 26, scope: !91)
!127 = !DILocation(line: 2801, column: 3, scope: !91)
!128 = !DILocation(line: 2802, column: 3, scope: !91)
!129 = !DILocation(line: 2803, column: 3, scope: !91)
!130 = !DILocation(line: 2804, column: 3, scope: !91)
!131 = !DILocation(line: 2805, column: 3, scope: !91)
!132 = !DILocation(line: 2806, column: 1, scope: !91)
!133 = distinct !DISubprogram(name: "Hacl_Impl_Ed25519_Sign_Steps_sign_step_1", scope: !1, file: !1, line: 2731, type: !69, scopeLine: 2732, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !134)
!134 = !{!135, !136, !137, !138, !139}
!135 = !DILocalVariable(name: "secret", arg: 1, scope: !133, file: !1, line: 2731, type: !29)
!136 = !DILocalVariable(name: "tmp_bytes", arg: 2, scope: !133, file: !1, line: 2731, type: !29)
!137 = !DILocalVariable(name: "a__", scope: !133, file: !1, line: 2733, type: !29)
!138 = !DILocalVariable(name: "apre", scope: !133, file: !1, line: 2734, type: !29)
!139 = !DILocalVariable(name: "a", scope: !133, file: !1, line: 2735, type: !29)
!140 = !DILocation(line: 0, scope: !133)
!141 = !DILocation(line: 2733, column: 28, scope: !133)
!142 = !DILocation(line: 2734, column: 29, scope: !133)
!143 = !DILocation(line: 2736, column: 3, scope: !133)
!144 = !DILocation(line: 2737, column: 3, scope: !133)
!145 = !DILocation(line: 2738, column: 1, scope: !133)
!146 = distinct !DISubprogram(name: "Hacl_Impl_Ed25519_Sign_Steps_sign_step_2", scope: !1, file: !1, line: 2741, type: !147, scopeLine: 2747, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !149)
!147 = !DISubroutineType(types: !148)
!148 = !{null, !29, !3, !29, !112}
!149 = !{!150, !151, !152, !153, !154, !155, !156}
!150 = !DILocalVariable(name: "msg", arg: 1, scope: !146, file: !1, line: 2742, type: !29)
!151 = !DILocalVariable(name: "len1", arg: 2, scope: !146, file: !1, line: 2743, type: !3)
!152 = !DILocalVariable(name: "tmp_bytes", arg: 3, scope: !146, file: !1, line: 2744, type: !29)
!153 = !DILocalVariable(name: "tmp_ints", arg: 4, scope: !146, file: !1, line: 2745, type: !112)
!154 = !DILocalVariable(name: "r", scope: !146, file: !1, line: 2748, type: !112)
!155 = !DILocalVariable(name: "apre", scope: !146, file: !1, line: 2749, type: !29)
!156 = !DILocalVariable(name: "prefix", scope: !146, file: !1, line: 2750, type: !29)
!157 = !DILocation(line: 0, scope: !146)
!158 = !DILocation(line: 2748, column: 26, scope: !146)
!159 = !DILocation(line: 2750, column: 26, scope: !146)
!160 = !DILocation(line: 2751, column: 3, scope: !146)
!161 = !DILocation(line: 2752, column: 1, scope: !146)
!162 = distinct !DISubprogram(name: "Hacl_Impl_Store56_store_56", scope: !1, file: !1, line: 1857, type: !163, scopeLine: 1858, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !165)
!163 = !DISubroutineType(types: !164)
!164 = !{null, !29, !112}
!165 = !{!166, !167, !168, !169, !170, !171, !172, !173, !174, !175, !176, !177, !178}
!166 = !DILocalVariable(name: "out", arg: 1, scope: !162, file: !1, line: 1857, type: !29)
!167 = !DILocalVariable(name: "b", arg: 2, scope: !162, file: !1, line: 1857, type: !112)
!168 = !DILocalVariable(name: "b0", scope: !162, file: !1, line: 1859, type: !11)
!169 = !DILocalVariable(name: "b1", scope: !162, file: !1, line: 1860, type: !11)
!170 = !DILocalVariable(name: "b2", scope: !162, file: !1, line: 1861, type: !11)
!171 = !DILocalVariable(name: "b3", scope: !162, file: !1, line: 1862, type: !11)
!172 = !DILocalVariable(name: "b4", scope: !162, file: !1, line: 1863, type: !11)
!173 = !DILocalVariable(name: "b41", scope: !162, file: !1, line: 1864, type: !3)
!174 = !DILocalVariable(name: "b8", scope: !162, file: !1, line: 1865, type: !29)
!175 = !DILocalVariable(name: "b80", scope: !162, file: !1, line: 1867, type: !29)
!176 = !DILocalVariable(name: "b81", scope: !162, file: !1, line: 1869, type: !29)
!177 = !DILocalVariable(name: "b82", scope: !162, file: !1, line: 1871, type: !29)
!178 = !DILocalVariable(name: "x0", scope: !162, file: !1, line: 1873, type: !29)
!179 = !DILocation(line: 0, scope: !162)
!180 = !DILocation(line: 1859, column: 17, scope: !162)
!181 = !{!182, !182, i64 0}
!182 = !{!"long long", !183, i64 0}
!183 = !{!"omnipotent char", !184, i64 0}
!184 = !{!"Simple C/C++ TBAA"}
!185 = !DILocation(line: 1860, column: 17, scope: !162)
!186 = !DILocation(line: 1861, column: 17, scope: !162)
!187 = !DILocation(line: 1862, column: 17, scope: !162)
!188 = !DILocation(line: 1863, column: 17, scope: !162)
!189 = !DILocation(line: 1864, column: 18, scope: !162)
!190 = !DILocation(line: 1866, column: 3, scope: !162)
!191 = !DILocation(line: 1867, column: 22, scope: !162)
!192 = !DILocation(line: 1868, column: 3, scope: !162)
!193 = !DILocation(line: 1869, column: 22, scope: !162)
!194 = !DILocation(line: 1870, column: 3, scope: !162)
!195 = !DILocation(line: 1871, column: 22, scope: !162)
!196 = !DILocation(line: 1872, column: 3, scope: !162)
!197 = !DILocation(line: 1873, column: 21, scope: !162)
!198 = !DILocation(line: 1874, column: 3, scope: !162)
!199 = !DILocation(line: 1875, column: 1, scope: !162)
!200 = distinct !DISubprogram(name: "Hacl_Impl_Ed25519_Sign_Steps_point_mul_g_compress", scope: !1, file: !1, line: 2718, type: !69, scopeLine: 2719, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !201)
!201 = !{!202, !203, !204}
!202 = !DILocalVariable(name: "out", arg: 1, scope: !200, file: !1, line: 2718, type: !29)
!203 = !DILocalVariable(name: "s", arg: 2, scope: !200, file: !1, line: 2718, type: !29)
!204 = !DILocalVariable(name: "tmp", scope: !200, file: !1, line: 2720, type: !205)
!205 = !DICompositeType(tag: DW_TAG_array_type, baseType: !11, size: 1280, elements: !206)
!206 = !{!207}
!207 = !DISubrange(count: 20)
!208 = !DILocation(line: 0, scope: !200)
!209 = !DILocation(line: 2720, column: 3, scope: !200)
!210 = !DILocation(line: 2720, column: 12, scope: !200)
!211 = !DILocation(line: 2721, column: 44, scope: !200)
!212 = !DILocation(line: 2721, column: 3, scope: !200)
!213 = !DILocation(line: 2722, column: 3, scope: !200)
!214 = !DILocation(line: 2723, column: 1, scope: !200)
!215 = distinct !DISubprogram(name: "Hacl_Impl_Ed25519_Sign_Steps_sign_step_4", scope: !1, file: !1, line: 2755, type: !147, scopeLine: 2761, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !216)
!216 = !{!217, !218, !219, !220, !221, !222, !223}
!217 = !DILocalVariable(name: "msg", arg: 1, scope: !215, file: !1, line: 2756, type: !29)
!218 = !DILocalVariable(name: "len1", arg: 2, scope: !215, file: !1, line: 2757, type: !3)
!219 = !DILocalVariable(name: "tmp_bytes", arg: 3, scope: !215, file: !1, line: 2758, type: !29)
!220 = !DILocalVariable(name: "tmp_ints", arg: 4, scope: !215, file: !1, line: 2759, type: !112)
!221 = !DILocalVariable(name: "h", scope: !215, file: !1, line: 2762, type: !112)
!222 = !DILocalVariable(name: "a__", scope: !215, file: !1, line: 2763, type: !29)
!223 = !DILocalVariable(name: "rs_", scope: !215, file: !1, line: 2764, type: !29)
!224 = !DILocation(line: 0, scope: !215)
!225 = !DILocation(line: 2762, column: 26, scope: !215)
!226 = !DILocation(line: 2763, column: 28, scope: !215)
!227 = !DILocation(line: 2764, column: 28, scope: !215)
!228 = !DILocation(line: 2765, column: 3, scope: !215)
!229 = !DILocation(line: 2766, column: 1, scope: !215)
!230 = distinct !DISubprogram(name: "Hacl_Impl_Ed25519_Sign_Steps_sign_step_5", scope: !1, file: !1, line: 2768, type: !163, scopeLine: 2769, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !231)
!231 = !{!232, !233, !234, !235, !236, !237, !238, !239, !240}
!232 = !DILocalVariable(name: "tmp_bytes", arg: 1, scope: !230, file: !1, line: 2768, type: !29)
!233 = !DILocalVariable(name: "tmp_ints", arg: 2, scope: !230, file: !1, line: 2768, type: !112)
!234 = !DILocalVariable(name: "r", scope: !230, file: !1, line: 2770, type: !112)
!235 = !DILocalVariable(name: "aq", scope: !230, file: !1, line: 2771, type: !112)
!236 = !DILocalVariable(name: "ha", scope: !230, file: !1, line: 2772, type: !112)
!237 = !DILocalVariable(name: "s", scope: !230, file: !1, line: 2773, type: !112)
!238 = !DILocalVariable(name: "h", scope: !230, file: !1, line: 2774, type: !112)
!239 = !DILocalVariable(name: "s_", scope: !230, file: !1, line: 2775, type: !29)
!240 = !DILocalVariable(name: "a", scope: !230, file: !1, line: 2776, type: !29)
!241 = !DILocation(line: 0, scope: !230)
!242 = !DILocation(line: 2770, column: 26, scope: !230)
!243 = !DILocation(line: 2771, column: 27, scope: !230)
!244 = !DILocation(line: 2772, column: 27, scope: !230)
!245 = !DILocation(line: 2773, column: 26, scope: !230)
!246 = !DILocation(line: 2774, column: 26, scope: !230)
!247 = !DILocation(line: 2775, column: 27, scope: !230)
!248 = !DILocation(line: 2776, column: 26, scope: !230)
!249 = !DILocation(line: 2777, column: 3, scope: !230)
!250 = !DILocation(line: 2778, column: 3, scope: !230)
!251 = !DILocation(line: 2779, column: 3, scope: !230)
!252 = !DILocation(line: 2780, column: 3, scope: !230)
!253 = !DILocation(line: 2781, column: 1, scope: !230)
!254 = distinct !DISubprogram(name: "Hacl_Impl_Ed25519_Sign_append_to_sig", scope: !1, file: !1, line: 2783, type: !255, scopeLine: 2784, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !257)
!255 = !DISubroutineType(types: !256)
!256 = !{null, !29, !29, !29}
!257 = !{!258, !259, !260}
!258 = !DILocalVariable(name: "signature", arg: 1, scope: !254, file: !1, line: 2783, type: !29)
!259 = !DILocalVariable(name: "a", arg: 2, scope: !254, file: !1, line: 2783, type: !29)
!260 = !DILocalVariable(name: "b", arg: 3, scope: !254, file: !1, line: 2783, type: !29)
!261 = !DILocation(line: 0, scope: !254)
!262 = !DILocation(line: 2785, column: 3, scope: !254)
!263 = !DILocation(line: 2786, column: 53, scope: !254)
!264 = !DILocation(line: 2786, column: 3, scope: !254)
!265 = !DILocation(line: 2787, column: 1, scope: !254)
!266 = distinct !DISubprogram(name: "Hacl_Impl_Ed25519_SecretExpand_secret_expand", scope: !1, file: !1, line: 1473, type: !69, scopeLine: 1474, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !267)
!267 = !{!268, !269, !270, !271, !272}
!268 = !DILocalVariable(name: "expanded", arg: 1, scope: !266, file: !1, line: 1473, type: !29)
!269 = !DILocalVariable(name: "secret", arg: 2, scope: !266, file: !1, line: 1473, type: !29)
!270 = !DILocalVariable(name: "h_low", scope: !266, file: !1, line: 1476, type: !29)
!271 = !DILocalVariable(name: "h_low0", scope: !266, file: !1, line: 1477, type: !8)
!272 = !DILocalVariable(name: "h_low31", scope: !266, file: !1, line: 1478, type: !8)
!273 = !DILocation(line: 0, scope: !266)
!274 = !DILocation(line: 1475, column: 3, scope: !266)
!275 = !DILocation(line: 1477, column: 20, scope: !266)
!276 = !{!183, !183, i64 0}
!277 = !DILocation(line: 1478, column: 21, scope: !266)
!278 = !DILocation(line: 1479, column: 22, scope: !266)
!279 = !DILocation(line: 1479, column: 13, scope: !266)
!280 = !DILocation(line: 1480, column: 25, scope: !266)
!281 = !DILocation(line: 1480, column: 42, scope: !266)
!282 = !DILocation(line: 1480, column: 14, scope: !266)
!283 = !DILocation(line: 1481, column: 1, scope: !266)
!284 = distinct !DISubprogram(name: "Hacl_SHA2_512_hash", scope: !1, file: !1, line: 1468, type: !285, scopeLine: 1469, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !287)
!285 = !DISubroutineType(types: !286)
!286 = !{null, !29, !29, !3}
!287 = !{!288, !289, !290}
!288 = !DILocalVariable(name: "hash1", arg: 1, scope: !284, file: !1, line: 1468, type: !29)
!289 = !DILocalVariable(name: "input", arg: 2, scope: !284, file: !1, line: 1468, type: !29)
!290 = !DILocalVariable(name: "len1", arg: 3, scope: !284, file: !1, line: 1468, type: !3)
!291 = !DILocation(line: 0, scope: !284)
!292 = !DILocation(line: 1470, column: 3, scope: !284)
!293 = !DILocation(line: 1471, column: 1, scope: !284)
!294 = distinct !DISubprogram(name: "Hacl_Impl_SHA2_512_hash", scope: !1, file: !1, line: 1452, type: !285, scopeLine: 1453, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !295)
!295 = !{!296, !297, !298, !299, !303, !305, !306, !307, !308}
!296 = !DILocalVariable(name: "hash1", arg: 1, scope: !294, file: !1, line: 1452, type: !29)
!297 = !DILocalVariable(name: "input", arg: 2, scope: !294, file: !1, line: 1452, type: !29)
!298 = !DILocalVariable(name: "len1", arg: 3, scope: !294, file: !1, line: 1452, type: !3)
!299 = !DILocalVariable(name: "state", scope: !294, file: !1, line: 1455, type: !300)
!300 = !DICompositeType(tag: DW_TAG_array_type, baseType: !11, size: 10816, elements: !301)
!301 = !{!302}
!302 = !DISubrange(count: 169)
!303 = !DILocalVariable(name: "_i", scope: !304, file: !1, line: 1456, type: !3)
!304 = distinct !DILexicalBlock(scope: !294, file: !1, line: 1456, column: 3)
!305 = !DILocalVariable(name: "n1", scope: !294, file: !1, line: 1458, type: !3)
!306 = !DILocalVariable(name: "r", scope: !294, file: !1, line: 1459, type: !3)
!307 = !DILocalVariable(name: "input_blocks", scope: !294, file: !1, line: 1460, type: !29)
!308 = !DILocalVariable(name: "input_last", scope: !294, file: !1, line: 1461, type: !29)
!309 = !DILocation(line: 0, scope: !294)
!310 = !DILocation(line: 1455, column: 3, scope: !294)
!311 = !DILocation(line: 1455, column: 12, scope: !294)
!312 = !DILocation(line: 0, scope: !304)
!313 = !DILocation(line: 1457, column: 15, scope: !314)
!314 = distinct !DILexicalBlock(scope: !304, file: !1, line: 1456, column: 3)
!315 = !DILocation(line: 1458, column: 22, scope: !294)
!316 = !DILocation(line: 1459, column: 21, scope: !294)
!317 = !DILocation(line: 1461, column: 36, scope: !294)
!318 = !DILocation(line: 1461, column: 31, scope: !294)
!319 = !DILocation(line: 1462, column: 27, scope: !294)
!320 = !DILocation(line: 1462, column: 3, scope: !294)
!321 = !DILocation(line: 1463, column: 3, scope: !294)
!322 = !DILocation(line: 1464, column: 53, scope: !294)
!323 = !DILocation(line: 1464, column: 3, scope: !294)
!324 = !DILocation(line: 1465, column: 3, scope: !294)
!325 = !DILocation(line: 1466, column: 1, scope: !294)
!326 = distinct !DISubprogram(name: "Hacl_Impl_SHA2_512_init", scope: !1, file: !1, line: 1186, type: !327, scopeLine: 1187, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !329)
!327 = !DISubroutineType(types: !328)
!328 = !{null, !112}
!329 = !{!330, !331, !332, !333, !334, !335, !336, !337, !338, !339, !340, !341, !342, !343, !344, !345, !346, !347, !348, !349, !350, !351, !352, !353, !354, !355, !356, !357, !358, !359, !360, !361, !362, !363, !364, !365, !366, !367, !368, !369, !370}
!330 = !DILocalVariable(name: "state", arg: 1, scope: !326, file: !1, line: 1186, type: !112)
!331 = !DILocalVariable(name: "n1", scope: !326, file: !1, line: 1188, type: !112)
!332 = !DILocalVariable(name: "k1", scope: !326, file: !1, line: 1189, type: !112)
!333 = !DILocalVariable(name: "h_01", scope: !326, file: !1, line: 1190, type: !112)
!334 = !DILocalVariable(name: "p10", scope: !326, file: !1, line: 1191, type: !112)
!335 = !DILocalVariable(name: "p20", scope: !326, file: !1, line: 1192, type: !112)
!336 = !DILocalVariable(name: "p3", scope: !326, file: !1, line: 1193, type: !112)
!337 = !DILocalVariable(name: "p4", scope: !326, file: !1, line: 1194, type: !112)
!338 = !DILocalVariable(name: "p5", scope: !326, file: !1, line: 1195, type: !112)
!339 = !DILocalVariable(name: "p11", scope: !326, file: !1, line: 1196, type: !112)
!340 = !DILocalVariable(name: "p21", scope: !326, file: !1, line: 1197, type: !112)
!341 = !DILocalVariable(name: "p12", scope: !326, file: !1, line: 1198, type: !112)
!342 = !DILocalVariable(name: "p22", scope: !326, file: !1, line: 1199, type: !112)
!343 = !DILocalVariable(name: "p13", scope: !326, file: !1, line: 1208, type: !112)
!344 = !DILocalVariable(name: "p23", scope: !326, file: !1, line: 1209, type: !112)
!345 = !DILocalVariable(name: "p14", scope: !326, file: !1, line: 1218, type: !112)
!346 = !DILocalVariable(name: "p24", scope: !326, file: !1, line: 1219, type: !112)
!347 = !DILocalVariable(name: "p15", scope: !326, file: !1, line: 1220, type: !112)
!348 = !DILocalVariable(name: "p25", scope: !326, file: !1, line: 1221, type: !112)
!349 = !DILocalVariable(name: "p16", scope: !326, file: !1, line: 1230, type: !112)
!350 = !DILocalVariable(name: "p26", scope: !326, file: !1, line: 1231, type: !112)
!351 = !DILocalVariable(name: "p17", scope: !326, file: !1, line: 1240, type: !112)
!352 = !DILocalVariable(name: "p27", scope: !326, file: !1, line: 1241, type: !112)
!353 = !DILocalVariable(name: "p18", scope: !326, file: !1, line: 1242, type: !112)
!354 = !DILocalVariable(name: "p28", scope: !326, file: !1, line: 1243, type: !112)
!355 = !DILocalVariable(name: "p19", scope: !326, file: !1, line: 1252, type: !112)
!356 = !DILocalVariable(name: "p29", scope: !326, file: !1, line: 1253, type: !112)
!357 = !DILocalVariable(name: "p110", scope: !326, file: !1, line: 1262, type: !112)
!358 = !DILocalVariable(name: "p210", scope: !326, file: !1, line: 1263, type: !112)
!359 = !DILocalVariable(name: "p111", scope: !326, file: !1, line: 1264, type: !112)
!360 = !DILocalVariable(name: "p211", scope: !326, file: !1, line: 1265, type: !112)
!361 = !DILocalVariable(name: "p112", scope: !326, file: !1, line: 1274, type: !112)
!362 = !DILocalVariable(name: "p212", scope: !326, file: !1, line: 1275, type: !112)
!363 = !DILocalVariable(name: "p113", scope: !326, file: !1, line: 1284, type: !112)
!364 = !DILocalVariable(name: "p213", scope: !326, file: !1, line: 1285, type: !112)
!365 = !DILocalVariable(name: "p1", scope: !326, file: !1, line: 1286, type: !112)
!366 = !DILocalVariable(name: "p214", scope: !326, file: !1, line: 1287, type: !112)
!367 = !DILocalVariable(name: "p114", scope: !326, file: !1, line: 1296, type: !112)
!368 = !DILocalVariable(name: "p215", scope: !326, file: !1, line: 1297, type: !112)
!369 = !DILocalVariable(name: "p115", scope: !326, file: !1, line: 1306, type: !112)
!370 = !DILocalVariable(name: "p2", scope: !326, file: !1, line: 1307, type: !112)
!371 = !DILocation(line: 0, scope: !326)
!372 = !DILocation(line: 1188, column: 24, scope: !326)
!373 = !DILocation(line: 1190, column: 26, scope: !326)
!374 = !DILocation(line: 1192, column: 22, scope: !326)
!375 = !DILocation(line: 1193, column: 21, scope: !326)
!376 = !DILocation(line: 1194, column: 21, scope: !326)
!377 = !DILocation(line: 1195, column: 21, scope: !326)
!378 = !DILocation(line: 1197, column: 23, scope: !326)
!379 = !DILocation(line: 1199, column: 23, scope: !326)
!380 = !DILocation(line: 1200, column: 11, scope: !326)
!381 = !DILocation(line: 1201, column: 3, scope: !326)
!382 = !DILocation(line: 1201, column: 11, scope: !326)
!383 = !DILocation(line: 1202, column: 3, scope: !326)
!384 = !DILocation(line: 1202, column: 11, scope: !326)
!385 = !DILocation(line: 1203, column: 3, scope: !326)
!386 = !DILocation(line: 1203, column: 11, scope: !326)
!387 = !DILocation(line: 1204, column: 11, scope: !326)
!388 = !DILocation(line: 1205, column: 3, scope: !326)
!389 = !DILocation(line: 1205, column: 11, scope: !326)
!390 = !DILocation(line: 1206, column: 3, scope: !326)
!391 = !DILocation(line: 1206, column: 11, scope: !326)
!392 = !DILocation(line: 1207, column: 3, scope: !326)
!393 = !DILocation(line: 1207, column: 11, scope: !326)
!394 = !DILocation(line: 1209, column: 23, scope: !326)
!395 = !DILocation(line: 1210, column: 11, scope: !326)
!396 = !DILocation(line: 1211, column: 3, scope: !326)
!397 = !DILocation(line: 1211, column: 11, scope: !326)
!398 = !DILocation(line: 1212, column: 3, scope: !326)
!399 = !DILocation(line: 1212, column: 11, scope: !326)
!400 = !DILocation(line: 1213, column: 3, scope: !326)
!401 = !DILocation(line: 1213, column: 11, scope: !326)
!402 = !DILocation(line: 1214, column: 11, scope: !326)
!403 = !DILocation(line: 1215, column: 3, scope: !326)
!404 = !DILocation(line: 1215, column: 11, scope: !326)
!405 = !DILocation(line: 1216, column: 3, scope: !326)
!406 = !DILocation(line: 1216, column: 11, scope: !326)
!407 = !DILocation(line: 1217, column: 3, scope: !326)
!408 = !DILocation(line: 1217, column: 11, scope: !326)
!409 = !DILocation(line: 1219, column: 23, scope: !326)
!410 = !DILocation(line: 1221, column: 23, scope: !326)
!411 = !DILocation(line: 1222, column: 11, scope: !326)
!412 = !DILocation(line: 1223, column: 3, scope: !326)
!413 = !DILocation(line: 1223, column: 11, scope: !326)
!414 = !DILocation(line: 1224, column: 3, scope: !326)
!415 = !DILocation(line: 1224, column: 11, scope: !326)
!416 = !DILocation(line: 1225, column: 3, scope: !326)
!417 = !DILocation(line: 1225, column: 11, scope: !326)
!418 = !DILocation(line: 1226, column: 11, scope: !326)
!419 = !DILocation(line: 1227, column: 3, scope: !326)
!420 = !DILocation(line: 1227, column: 11, scope: !326)
!421 = !DILocation(line: 1228, column: 3, scope: !326)
!422 = !DILocation(line: 1228, column: 11, scope: !326)
!423 = !DILocation(line: 1229, column: 3, scope: !326)
!424 = !DILocation(line: 1229, column: 11, scope: !326)
!425 = !DILocation(line: 1231, column: 23, scope: !326)
!426 = !DILocation(line: 1232, column: 11, scope: !326)
!427 = !DILocation(line: 1233, column: 3, scope: !326)
!428 = !DILocation(line: 1233, column: 11, scope: !326)
!429 = !DILocation(line: 1234, column: 3, scope: !326)
!430 = !DILocation(line: 1234, column: 11, scope: !326)
!431 = !DILocation(line: 1235, column: 3, scope: !326)
!432 = !DILocation(line: 1235, column: 11, scope: !326)
!433 = !DILocation(line: 1236, column: 11, scope: !326)
!434 = !DILocation(line: 1237, column: 3, scope: !326)
!435 = !DILocation(line: 1237, column: 11, scope: !326)
!436 = !DILocation(line: 1238, column: 3, scope: !326)
!437 = !DILocation(line: 1238, column: 11, scope: !326)
!438 = !DILocation(line: 1239, column: 3, scope: !326)
!439 = !DILocation(line: 1239, column: 11, scope: !326)
!440 = !DILocation(line: 1241, column: 22, scope: !326)
!441 = !DILocation(line: 1243, column: 23, scope: !326)
!442 = !DILocation(line: 1244, column: 11, scope: !326)
!443 = !DILocation(line: 1245, column: 3, scope: !326)
!444 = !DILocation(line: 1245, column: 11, scope: !326)
!445 = !DILocation(line: 1246, column: 3, scope: !326)
!446 = !DILocation(line: 1246, column: 11, scope: !326)
!447 = !DILocation(line: 1247, column: 3, scope: !326)
!448 = !DILocation(line: 1247, column: 11, scope: !326)
!449 = !DILocation(line: 1248, column: 11, scope: !326)
!450 = !DILocation(line: 1249, column: 3, scope: !326)
!451 = !DILocation(line: 1249, column: 11, scope: !326)
!452 = !DILocation(line: 1250, column: 3, scope: !326)
!453 = !DILocation(line: 1250, column: 11, scope: !326)
!454 = !DILocation(line: 1251, column: 3, scope: !326)
!455 = !DILocation(line: 1251, column: 11, scope: !326)
!456 = !DILocation(line: 1253, column: 23, scope: !326)
!457 = !DILocation(line: 1254, column: 11, scope: !326)
!458 = !DILocation(line: 1255, column: 3, scope: !326)
!459 = !DILocation(line: 1255, column: 11, scope: !326)
!460 = !DILocation(line: 1256, column: 3, scope: !326)
!461 = !DILocation(line: 1256, column: 11, scope: !326)
!462 = !DILocation(line: 1257, column: 3, scope: !326)
!463 = !DILocation(line: 1257, column: 11, scope: !326)
!464 = !DILocation(line: 1258, column: 11, scope: !326)
!465 = !DILocation(line: 1259, column: 3, scope: !326)
!466 = !DILocation(line: 1259, column: 11, scope: !326)
!467 = !DILocation(line: 1260, column: 3, scope: !326)
!468 = !DILocation(line: 1260, column: 11, scope: !326)
!469 = !DILocation(line: 1261, column: 3, scope: !326)
!470 = !DILocation(line: 1261, column: 11, scope: !326)
!471 = !DILocation(line: 1263, column: 23, scope: !326)
!472 = !DILocation(line: 1265, column: 25, scope: !326)
!473 = !DILocation(line: 1266, column: 12, scope: !326)
!474 = !DILocation(line: 1267, column: 3, scope: !326)
!475 = !DILocation(line: 1267, column: 12, scope: !326)
!476 = !DILocation(line: 1268, column: 3, scope: !326)
!477 = !DILocation(line: 1268, column: 12, scope: !326)
!478 = !DILocation(line: 1269, column: 3, scope: !326)
!479 = !DILocation(line: 1269, column: 12, scope: !326)
!480 = !DILocation(line: 1270, column: 12, scope: !326)
!481 = !DILocation(line: 1271, column: 3, scope: !326)
!482 = !DILocation(line: 1271, column: 12, scope: !326)
!483 = !DILocation(line: 1272, column: 3, scope: !326)
!484 = !DILocation(line: 1272, column: 12, scope: !326)
!485 = !DILocation(line: 1273, column: 3, scope: !326)
!486 = !DILocation(line: 1273, column: 12, scope: !326)
!487 = !DILocation(line: 1275, column: 25, scope: !326)
!488 = !DILocation(line: 1276, column: 12, scope: !326)
!489 = !DILocation(line: 1277, column: 3, scope: !326)
!490 = !DILocation(line: 1277, column: 12, scope: !326)
!491 = !DILocation(line: 1278, column: 3, scope: !326)
!492 = !DILocation(line: 1278, column: 12, scope: !326)
!493 = !DILocation(line: 1279, column: 3, scope: !326)
!494 = !DILocation(line: 1279, column: 12, scope: !326)
!495 = !DILocation(line: 1280, column: 12, scope: !326)
!496 = !DILocation(line: 1281, column: 3, scope: !326)
!497 = !DILocation(line: 1281, column: 12, scope: !326)
!498 = !DILocation(line: 1282, column: 3, scope: !326)
!499 = !DILocation(line: 1282, column: 12, scope: !326)
!500 = !DILocation(line: 1283, column: 3, scope: !326)
!501 = !DILocation(line: 1283, column: 12, scope: !326)
!502 = !DILocation(line: 1285, column: 23, scope: !326)
!503 = !DILocation(line: 1287, column: 25, scope: !326)
!504 = !DILocation(line: 1288, column: 10, scope: !326)
!505 = !DILocation(line: 1289, column: 3, scope: !326)
!506 = !DILocation(line: 1289, column: 10, scope: !326)
!507 = !DILocation(line: 1290, column: 3, scope: !326)
!508 = !DILocation(line: 1290, column: 10, scope: !326)
!509 = !DILocation(line: 1291, column: 3, scope: !326)
!510 = !DILocation(line: 1291, column: 10, scope: !326)
!511 = !DILocation(line: 1292, column: 12, scope: !326)
!512 = !DILocation(line: 1293, column: 3, scope: !326)
!513 = !DILocation(line: 1293, column: 12, scope: !326)
!514 = !DILocation(line: 1294, column: 3, scope: !326)
!515 = !DILocation(line: 1294, column: 12, scope: !326)
!516 = !DILocation(line: 1295, column: 3, scope: !326)
!517 = !DILocation(line: 1295, column: 12, scope: !326)
!518 = !DILocation(line: 1297, column: 25, scope: !326)
!519 = !DILocation(line: 1298, column: 12, scope: !326)
!520 = !DILocation(line: 1299, column: 3, scope: !326)
!521 = !DILocation(line: 1299, column: 12, scope: !326)
!522 = !DILocation(line: 1300, column: 3, scope: !326)
!523 = !DILocation(line: 1300, column: 12, scope: !326)
!524 = !DILocation(line: 1301, column: 3, scope: !326)
!525 = !DILocation(line: 1301, column: 12, scope: !326)
!526 = !DILocation(line: 1302, column: 12, scope: !326)
!527 = !DILocation(line: 1303, column: 3, scope: !326)
!528 = !DILocation(line: 1303, column: 12, scope: !326)
!529 = !DILocation(line: 1304, column: 3, scope: !326)
!530 = !DILocation(line: 1304, column: 12, scope: !326)
!531 = !DILocation(line: 1305, column: 3, scope: !326)
!532 = !DILocation(line: 1305, column: 12, scope: !326)
!533 = !DILocation(line: 1307, column: 23, scope: !326)
!534 = !DILocation(line: 1308, column: 12, scope: !326)
!535 = !DILocation(line: 1309, column: 3, scope: !326)
!536 = !DILocation(line: 1309, column: 12, scope: !326)
!537 = !DILocation(line: 1310, column: 3, scope: !326)
!538 = !DILocation(line: 1310, column: 12, scope: !326)
!539 = !DILocation(line: 1311, column: 3, scope: !326)
!540 = !DILocation(line: 1311, column: 12, scope: !326)
!541 = !DILocation(line: 1312, column: 10, scope: !326)
!542 = !DILocation(line: 1313, column: 3, scope: !326)
!543 = !DILocation(line: 1313, column: 10, scope: !326)
!544 = !DILocation(line: 1314, column: 3, scope: !326)
!545 = !DILocation(line: 1314, column: 10, scope: !326)
!546 = !DILocation(line: 1315, column: 3, scope: !326)
!547 = !DILocation(line: 1315, column: 10, scope: !326)
!548 = !DILocation(line: 1316, column: 10, scope: !326)
!549 = !DILocation(line: 1317, column: 1, scope: !326)
!550 = distinct !DISubprogram(name: "Hacl_Impl_SHA2_512_update_multi", scope: !1, file: !1, line: 1407, type: !551, scopeLine: 1408, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !553)
!551 = !DISubroutineType(types: !552)
!552 = !{null, !112, !29, !3}
!553 = !{!554, !555, !556, !557, !559}
!554 = !DILocalVariable(name: "state", arg: 1, scope: !550, file: !1, line: 1407, type: !112)
!555 = !DILocalVariable(name: "data", arg: 2, scope: !550, file: !1, line: 1407, type: !29)
!556 = !DILocalVariable(name: "n1", arg: 3, scope: !550, file: !1, line: 1407, type: !3)
!557 = !DILocalVariable(name: "i", scope: !558, file: !1, line: 1409, type: !3)
!558 = distinct !DILexicalBlock(scope: !550, file: !1, line: 1409, column: 3)
!559 = !DILocalVariable(name: "b", scope: !560, file: !1, line: 1411, type: !29)
!560 = distinct !DILexicalBlock(scope: !561, file: !1, line: 1410, column: 3)
!561 = distinct !DILexicalBlock(scope: !558, file: !1, line: 1409, column: 3)
!562 = !DILocation(line: 0, scope: !550)
!563 = !DILocation(line: 0, scope: !558)
!564 = !DILocation(line: 1409, column: 37, scope: !561)
!565 = !DILocation(line: 1409, column: 3, scope: !558)
!566 = !DILocation(line: 1414, column: 1, scope: !550)
!567 = !DILocation(line: 1411, column: 27, scope: !560)
!568 = !DILocation(line: 1411, column: 23, scope: !560)
!569 = !DILocation(line: 0, scope: !560)
!570 = !DILocation(line: 1412, column: 5, scope: !560)
!571 = !DILocation(line: 1409, column: 49, scope: !561)
!572 = distinct !{!572, !565, !573, !574, !575}
!573 = !DILocation(line: 1413, column: 3, scope: !558)
!574 = !{!"llvm.loop.mustprogress"}
!575 = !{!"llvm.loop.unroll.disable"}
!576 = distinct !DISubprogram(name: "Hacl_Impl_SHA2_512_update_last", scope: !1, file: !1, line: 1416, type: !577, scopeLine: 1417, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !579)
!577 = !DISubroutineType(types: !578)
!578 = !{null, !112, !29, !11}
!579 = !{!580, !581, !582, !583, !587, !588, !589, !590, !591, !599, !600, !601}
!580 = !DILocalVariable(name: "state", arg: 1, scope: !576, file: !1, line: 1416, type: !112)
!581 = !DILocalVariable(name: "data", arg: 2, scope: !576, file: !1, line: 1416, type: !29)
!582 = !DILocalVariable(name: "len1", arg: 3, scope: !576, file: !1, line: 1416, type: !11)
!583 = !DILocalVariable(name: "blocks", scope: !576, file: !1, line: 1418, type: !584)
!584 = !DICompositeType(tag: DW_TAG_array_type, baseType: !8, size: 2048, elements: !585)
!585 = !{!586}
!586 = !DISubrange(count: 256)
!587 = !DILocalVariable(name: "nb", scope: !576, file: !1, line: 1419, type: !3)
!588 = !DILocalVariable(name: "final_blocks", scope: !576, file: !1, line: 1424, type: !29)
!589 = !DILocalVariable(name: "n1", scope: !576, file: !1, line: 1430, type: !11)
!590 = !DILocalVariable(name: "padding", scope: !576, file: !1, line: 1431, type: !29)
!591 = !DILocalVariable(name: "encodedlen", scope: !576, file: !1, line: 1433, type: !592)
!592 = !DIDerivedType(tag: DW_TAG_typedef, name: "FStar_UInt128_t", file: !593, line: 37, baseType: !594)
!593 = !DIFile(filename: "hacl-c/hacl-c/FStar.h", directory: "/mnt/c/Users/fwill/Documents/HS24/semester_project/tools/binsec/binsec/examples/hacl", checksumkind: CSK_MD5, checksum: "f30034e5606e554271b07b1e7e8a42fa")
!594 = !DIDerivedType(tag: DW_TAG_typedef, name: "FStar_UInt128_uint128", file: !593, line: 35, baseType: !595)
!595 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !593, line: 30, size: 128, elements: !596)
!596 = !{!597, !598}
!597 = !DIDerivedType(tag: DW_TAG_member, name: "low", scope: !595, file: !593, line: 32, baseType: !11, size: 64)
!598 = !DIDerivedType(tag: DW_TAG_member, name: "high", scope: !595, file: !593, line: 33, baseType: !11, size: 64, offset: 64)
!599 = !DILocalVariable(name: "pad0len", scope: !576, file: !1, line: 1438, type: !3)
!600 = !DILocalVariable(name: "buf1", scope: !576, file: !1, line: 1439, type: !29)
!601 = !DILocalVariable(name: "buf2", scope: !576, file: !1, line: 1440, type: !29)
!602 = !DILocation(line: 0, scope: !576)
!603 = !DILocation(line: 1418, column: 3, scope: !576)
!604 = !DILocation(line: 1418, column: 11, scope: !576)
!605 = !DILocation(line: 1420, column: 12, scope: !606)
!606 = distinct !DILexicalBlock(scope: !576, file: !1, line: 1420, column: 7)
!607 = !DILocation(line: 1425, column: 7, scope: !576)
!608 = !DILocation(line: 1429, column: 30, scope: !576)
!609 = !DILocation(line: 1429, column: 3, scope: !576)
!610 = !DILocation(line: 1430, column: 17, scope: !576)
!611 = !DILocation(line: 1431, column: 35, scope: !576)
!612 = !DILocation(line: 1432, column: 3, scope: !576)
!613 = !DILocation(line: 1433, column: 3, scope: !576)
!614 = !DILocation(line: 1434, column: 48, scope: !576)
!615 = !DILocation(line: 1435, column: 9, scope: !576)
!616 = !DILocation(line: 1434, column: 30, scope: !576)
!617 = !{!618, !182, i64 0}
!618 = !{!"", !182, i64 0, !182, i64 8}
!619 = !{!618, !182, i64 8}
!620 = !DILocation(line: 1434, column: 5, scope: !576)
!621 = !DILocation(line: 1438, column: 29, scope: !576)
!622 = !DILocation(line: 1438, column: 80, scope: !576)
!623 = !DILocation(line: 1440, column: 27, scope: !576)
!624 = !DILocation(line: 1440, column: 42, scope: !576)
!625 = !DILocation(line: 1441, column: 12, scope: !576)
!626 = !DILocation(line: 1442, column: 3, scope: !576)
!627 = !DILocation(line: 1443, column: 3, scope: !576)
!628 = !DILocation(line: 1444, column: 1, scope: !576)
!629 = distinct !DISubprogram(name: "Hacl_Impl_SHA2_512_finish", scope: !1, file: !1, line: 1446, type: !630, scopeLine: 1447, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !632)
!630 = !DISubroutineType(types: !631)
!631 = !{null, !112, !29}
!632 = !{!633, !634, !635}
!633 = !DILocalVariable(name: "state", arg: 1, scope: !629, file: !1, line: 1446, type: !112)
!634 = !DILocalVariable(name: "hash1", arg: 2, scope: !629, file: !1, line: 1446, type: !29)
!635 = !DILocalVariable(name: "hash_w", scope: !629, file: !1, line: 1448, type: !112)
!636 = !DILocation(line: 0, scope: !629)
!637 = !DILocation(line: 1448, column: 28, scope: !629)
!638 = !DILocation(line: 1449, column: 3, scope: !629)
!639 = !DILocation(line: 1450, column: 1, scope: !629)
!640 = distinct !DISubprogram(name: "Hacl_Impl_SHA2_512_update", scope: !1, file: !1, line: 1319, type: !630, scopeLine: 1320, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !641)
!641 = !{!642, !643, !644, !648, !650, !651, !652, !653, !654, !656, !659, !661, !664, !665, !666, !667, !671, !673, !676, !677, !678, !679, !680, !681, !682, !683, !684, !685, !686, !687, !688, !689, !690, !691, !693, !696, !697, !698}
!642 = !DILocalVariable(name: "state", arg: 1, scope: !640, file: !1, line: 1319, type: !112)
!643 = !DILocalVariable(name: "data", arg: 2, scope: !640, file: !1, line: 1319, type: !29)
!644 = !DILocalVariable(name: "data_w", scope: !640, file: !1, line: 1322, type: !645)
!645 = !DICompositeType(tag: DW_TAG_array_type, baseType: !11, size: 1024, elements: !646)
!646 = !{!647}
!647 = !DISubrange(count: 16)
!648 = !DILocalVariable(name: "_i", scope: !649, file: !1, line: 1323, type: !3)
!649 = distinct !DILexicalBlock(scope: !640, file: !1, line: 1323, column: 3)
!650 = !DILocalVariable(name: "hash_w", scope: !640, file: !1, line: 1326, type: !112)
!651 = !DILocalVariable(name: "ws_w", scope: !640, file: !1, line: 1327, type: !112)
!652 = !DILocalVariable(name: "k_w", scope: !640, file: !1, line: 1328, type: !112)
!653 = !DILocalVariable(name: "counter_w", scope: !640, file: !1, line: 1329, type: !112)
!654 = !DILocalVariable(name: "i", scope: !655, file: !1, line: 1330, type: !3)
!655 = distinct !DILexicalBlock(scope: !640, file: !1, line: 1330, column: 3)
!656 = !DILocalVariable(name: "b", scope: !657, file: !1, line: 1332, type: !11)
!657 = distinct !DILexicalBlock(scope: !658, file: !1, line: 1331, column: 3)
!658 = distinct !DILexicalBlock(scope: !655, file: !1, line: 1330, column: 3)
!659 = !DILocalVariable(name: "i", scope: !660, file: !1, line: 1335, type: !3)
!660 = distinct !DILexicalBlock(scope: !640, file: !1, line: 1335, column: 3)
!661 = !DILocalVariable(name: "t16", scope: !662, file: !1, line: 1337, type: !11)
!662 = distinct !DILexicalBlock(scope: !663, file: !1, line: 1336, column: 3)
!663 = distinct !DILexicalBlock(scope: !660, file: !1, line: 1335, column: 3)
!664 = !DILocalVariable(name: "t15", scope: !662, file: !1, line: 1338, type: !11)
!665 = !DILocalVariable(name: "t7", scope: !662, file: !1, line: 1339, type: !11)
!666 = !DILocalVariable(name: "t2", scope: !662, file: !1, line: 1340, type: !11)
!667 = !DILocalVariable(name: "hash_0", scope: !640, file: !1, line: 1351, type: !668)
!668 = !DICompositeType(tag: DW_TAG_array_type, baseType: !11, size: 512, elements: !669)
!669 = !{!670}
!670 = !DISubrange(count: 8)
!671 = !DILocalVariable(name: "i", scope: !672, file: !1, line: 1353, type: !3)
!672 = distinct !DILexicalBlock(scope: !640, file: !1, line: 1353, column: 3)
!673 = !DILocalVariable(name: "a", scope: !674, file: !1, line: 1355, type: !11)
!674 = distinct !DILexicalBlock(scope: !675, file: !1, line: 1354, column: 3)
!675 = distinct !DILexicalBlock(scope: !672, file: !1, line: 1353, column: 3)
!676 = !DILocalVariable(name: "b", scope: !674, file: !1, line: 1356, type: !11)
!677 = !DILocalVariable(name: "c", scope: !674, file: !1, line: 1357, type: !11)
!678 = !DILocalVariable(name: "d1", scope: !674, file: !1, line: 1358, type: !11)
!679 = !DILocalVariable(name: "e", scope: !674, file: !1, line: 1359, type: !11)
!680 = !DILocalVariable(name: "f1", scope: !674, file: !1, line: 1360, type: !11)
!681 = !DILocalVariable(name: "g1", scope: !674, file: !1, line: 1361, type: !11)
!682 = !DILocalVariable(name: "h", scope: !674, file: !1, line: 1362, type: !11)
!683 = !DILocalVariable(name: "k_t", scope: !674, file: !1, line: 1363, type: !11)
!684 = !DILocalVariable(name: "ws_t", scope: !674, file: !1, line: 1364, type: !11)
!685 = !DILocalVariable(name: "t1", scope: !674, file: !1, line: 1366, type: !11)
!686 = !DILocalVariable(name: "t2", scope: !674, file: !1, line: 1377, type: !11)
!687 = !DILocalVariable(name: "x1", scope: !674, file: !1, line: 1383, type: !11)
!688 = !DILocalVariable(name: "x5", scope: !674, file: !1, line: 1384, type: !11)
!689 = !DILocalVariable(name: "p1", scope: !674, file: !1, line: 1385, type: !112)
!690 = !DILocalVariable(name: "p2", scope: !674, file: !1, line: 1386, type: !112)
!691 = !DILocalVariable(name: "i", scope: !692, file: !1, line: 1396, type: !3)
!692 = distinct !DILexicalBlock(scope: !640, file: !1, line: 1396, column: 3)
!693 = !DILocalVariable(name: "xi", scope: !694, file: !1, line: 1398, type: !11)
!694 = distinct !DILexicalBlock(scope: !695, file: !1, line: 1397, column: 3)
!695 = distinct !DILexicalBlock(scope: !692, file: !1, line: 1396, column: 3)
!696 = !DILocalVariable(name: "yi", scope: !694, file: !1, line: 1399, type: !11)
!697 = !DILocalVariable(name: "c0", scope: !640, file: !1, line: 1402, type: !11)
!698 = !DILocalVariable(name: "one1", scope: !640, file: !1, line: 1403, type: !11)
!699 = !DILocation(line: 0, scope: !640)
!700 = !DILocation(line: 1322, column: 3, scope: !640)
!701 = !DILocation(line: 1322, column: 12, scope: !640)
!702 = !DILocation(line: 0, scope: !649)
!703 = !DILocation(line: 1324, column: 16, scope: !704)
!704 = distinct !DILexicalBlock(scope: !649, file: !1, line: 1323, column: 3)
!705 = !DILocation(line: 1325, column: 49, scope: !640)
!706 = !DILocation(line: 1325, column: 3, scope: !640)
!707 = !DILocation(line: 1327, column: 26, scope: !640)
!708 = !DILocation(line: 0, scope: !655)
!709 = !DILocation(line: 1333, column: 13, scope: !657)
!710 = !DILocation(line: 0, scope: !657)
!711 = !DILocation(line: 1326, column: 28, scope: !640)
!712 = !DILocation(line: 1335, column: 3, scope: !660)
!713 = !DILocation(line: 1351, column: 3, scope: !640)
!714 = !DILocation(line: 1351, column: 12, scope: !640)
!715 = !DILocation(line: 1352, column: 3, scope: !640)
!716 = !DILocation(line: 0, scope: !672)
!717 = !DILocation(line: 1353, column: 3, scope: !672)
!718 = !DILocation(line: 0, scope: !660)
!719 = !DILocation(line: 1337, column: 27, scope: !662)
!720 = !DILocation(line: 1337, column: 20, scope: !662)
!721 = !DILocation(line: 0, scope: !662)
!722 = !DILocation(line: 1338, column: 27, scope: !662)
!723 = !DILocation(line: 1338, column: 20, scope: !662)
!724 = !DILocation(line: 1339, column: 26, scope: !662)
!725 = !DILocation(line: 1339, column: 19, scope: !662)
!726 = !DILocation(line: 1340, column: 26, scope: !662)
!727 = !DILocation(line: 1340, column: 19, scope: !662)
!728 = !DILocation(line: 1342, column: 29, scope: !662)
!729 = !DILocation(line: 1343, column: 31, scope: !662)
!730 = !DILocation(line: 1343, column: 77, scope: !662)
!731 = !DILocation(line: 1343, column: 72, scope: !662)
!732 = !DILocation(line: 1343, column: 7, scope: !662)
!733 = !DILocation(line: 1347, column: 33, scope: !662)
!734 = !DILocation(line: 1348, column: 35, scope: !662)
!735 = !DILocation(line: 1348, column: 82, scope: !662)
!736 = !DILocation(line: 1348, column: 76, scope: !662)
!737 = !DILocation(line: 1348, column: 11, scope: !662)
!738 = !DILocation(line: 1344, column: 7, scope: !662)
!739 = !DILocation(line: 1346, column: 9, scope: !662)
!740 = !DILocation(line: 1349, column: 11, scope: !662)
!741 = !DILocation(line: 1341, column: 5, scope: !662)
!742 = !DILocation(line: 1341, column: 13, scope: !662)
!743 = !DILocation(line: 1335, column: 61, scope: !663)
!744 = !DILocation(line: 1335, column: 38, scope: !663)
!745 = distinct !{!745, !712, !746, !574, !575}
!746 = !DILocation(line: 1350, column: 3, scope: !660)
!747 = !DILocation(line: 0, scope: !674)
!748 = !DILocation(line: 0, scope: !692)
!749 = !DILocation(line: 1396, column: 3, scope: !692)
!750 = !DILocation(line: 1363, column: 20, scope: !674)
!751 = !DILocation(line: 1364, column: 21, scope: !674)
!752 = !DILocation(line: 1369, column: 30, scope: !674)
!753 = !DILocation(line: 1371, column: 32, scope: !674)
!754 = !DILocation(line: 1372, column: 33, scope: !674)
!755 = !DILocation(line: 1372, column: 11, scope: !674)
!756 = !DILocation(line: 1370, column: 9, scope: !674)
!757 = !DILocation(line: 1373, column: 13, scope: !674)
!758 = !DILocation(line: 1373, column: 22, scope: !674)
!759 = !DILocation(line: 1373, column: 25, scope: !674)
!760 = !DILocation(line: 1373, column: 19, scope: !674)
!761 = !DILocation(line: 1368, column: 7, scope: !674)
!762 = !DILocation(line: 1373, column: 7, scope: !674)
!763 = !DILocation(line: 1374, column: 7, scope: !674)
!764 = !DILocation(line: 1375, column: 7, scope: !674)
!765 = !DILocation(line: 1378, column: 28, scope: !674)
!766 = !DILocation(line: 1380, column: 30, scope: !674)
!767 = !DILocation(line: 1381, column: 31, scope: !674)
!768 = !DILocation(line: 1381, column: 9, scope: !674)
!769 = !DILocation(line: 1379, column: 7, scope: !674)
!770 = !DILocation(line: 1382, column: 13, scope: !674)
!771 = !DILocation(line: 1382, column: 29, scope: !674)
!772 = !DILocation(line: 1382, column: 18, scope: !674)
!773 = !DILocation(line: 1382, column: 7, scope: !674)
!774 = !DILocation(line: 1383, column: 22, scope: !674)
!775 = !DILocation(line: 1384, column: 22, scope: !674)
!776 = !DILocation(line: 1353, column: 60, scope: !675)
!777 = !DILocation(line: 1353, column: 37, scope: !675)
!778 = distinct !{!778, !717, !779, !574, !575}
!779 = !DILocation(line: 1395, column: 3, scope: !672)
!780 = !DILocation(line: 1329, column: 31, scope: !640)
!781 = !DILocation(line: 1402, column: 17, scope: !640)
!782 = !DILocation(line: 1404, column: 22, scope: !640)
!783 = !DILocation(line: 1404, column: 17, scope: !640)
!784 = !DILocation(line: 1405, column: 1, scope: !640)
!785 = !DILocation(line: 1398, column: 19, scope: !694)
!786 = !DILocation(line: 0, scope: !694)
!787 = !DILocation(line: 1399, column: 19, scope: !694)
!788 = !DILocation(line: 1400, column: 20, scope: !694)
!789 = !DILocation(line: 1400, column: 15, scope: !694)
!790 = !DILocation(line: 1396, column: 59, scope: !695)
!791 = !DILocation(line: 1396, column: 37, scope: !695)
!792 = distinct !{!792, !749, !793, !574, !575}
!793 = !DILocation(line: 1401, column: 3, scope: !692)
!794 = distinct !DISubprogram(name: "Hacl_Hash_Lib_LoadStore_uint64s_from_be_bytes", scope: !1, file: !1, line: 1165, type: !551, scopeLine: 1166, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !795)
!795 = !{!796, !797, !798, !799, !801, !804}
!796 = !DILocalVariable(name: "output", arg: 1, scope: !794, file: !1, line: 1165, type: !112)
!797 = !DILocalVariable(name: "input", arg: 2, scope: !794, file: !1, line: 1165, type: !29)
!798 = !DILocalVariable(name: "len1", arg: 3, scope: !794, file: !1, line: 1165, type: !3)
!799 = !DILocalVariable(name: "i", scope: !800, file: !1, line: 1167, type: !3)
!800 = distinct !DILexicalBlock(scope: !794, file: !1, line: 1167, column: 3)
!801 = !DILocalVariable(name: "x0", scope: !802, file: !1, line: 1169, type: !29)
!802 = distinct !DILexicalBlock(scope: !803, file: !1, line: 1168, column: 3)
!803 = distinct !DILexicalBlock(scope: !800, file: !1, line: 1167, column: 3)
!804 = !DILocalVariable(name: "inputi", scope: !802, file: !1, line: 1170, type: !11)
!805 = !DILocation(line: 0, scope: !794)
!806 = !DILocation(line: 0, scope: !800)
!807 = !DILocation(line: 1167, column: 3, scope: !800)
!808 = !DILocation(line: 1173, column: 1, scope: !794)
!809 = !DILocation(line: 1169, column: 40, scope: !802)
!810 = !DILocation(line: 1169, column: 25, scope: !802)
!811 = !DILocation(line: 0, scope: !802)
!812 = !DILocation(line: 1170, column: 23, scope: !802)
!813 = !DILocation(line: 1171, column: 5, scope: !802)
!814 = !DILocation(line: 1171, column: 15, scope: !802)
!815 = !DILocation(line: 1167, column: 51, scope: !803)
!816 = !DILocation(line: 1167, column: 37, scope: !803)
!817 = distinct !{!817, !807, !818, !574, !575}
!818 = !DILocation(line: 1172, column: 3, scope: !800)
!819 = distinct !DISubprogram(name: "__bswap_64", scope: !820, file: !820, line: 70, type: !821, scopeLine: 71, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !823)
!820 = !DIFile(filename: "/usr/include/bits/byteswap.h", directory: "", checksumkind: CSK_MD5, checksum: "98f83253ffd9c64e7486789204e9fa05")
!821 = !DISubroutineType(types: !822)
!822 = !{!12, !12}
!823 = !{!824}
!824 = !DILocalVariable(name: "__bsx", arg: 1, scope: !819, file: !820, line: 70, type: !12)
!825 = !DILocation(line: 0, scope: !819)
!826 = !DILocation(line: 75, column: 10, scope: !819)
!827 = !DILocation(line: 75, column: 3, scope: !819)
!828 = distinct !DISubprogram(name: "load64", scope: !829, file: !829, line: 347, type: !830, scopeLine: 347, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !832)
!829 = !DIFile(filename: "hacl-c/hacl-c/kremlib.h", directory: "/mnt/c/Users/fwill/Documents/HS24/semester_project/tools/binsec/binsec/examples/hacl", checksumkind: CSK_MD5, checksum: "cde125f1f98cb7b9ee1f380d4178ebe4")
!830 = !DISubroutineType(types: !831)
!831 = !{!11, !29}
!832 = !{!833, !834}
!833 = !DILocalVariable(name: "b", arg: 1, scope: !828, file: !829, line: 347, type: !29)
!834 = !DILocalVariable(name: "x", scope: !828, file: !829, line: 348, type: !11)
!835 = !DILocation(line: 0, scope: !828)
!836 = !DILocation(line: 349, column: 3, scope: !828)
!837 = !DILocation(line: 350, column: 3, scope: !828)
!838 = !DISubprogram(name: "FStar_UInt128_shift_left", scope: !593, file: !593, line: 57, type: !839, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !841)
!839 = !DISubroutineType(types: !840)
!840 = !{!594, !594, !3}
!841 = !{}
!842 = !DISubprogram(name: "FStar_UInt128_add", scope: !593, file: !593, line: 41, type: !843, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !841)
!843 = !DISubroutineType(types: !844)
!844 = !{!594, !594, !594}
!845 = !DISubprogram(name: "FStar_UInt128_mul_wide", scope: !593, file: !593, line: 78, type: !846, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !841)
!846 = !DISubroutineType(types: !847)
!847 = !{!594, !11, !11}
!848 = !DISubprogram(name: "FStar_UInt128_uint64_to_uint128", scope: !593, file: !593, line: 65, type: !849, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !841)
!849 = !DISubroutineType(types: !850)
!850 = !{!594, !11}
!851 = distinct !DISubprogram(name: "store128_be", scope: !829, file: !829, line: 557, type: !852, scopeLine: 557, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !855)
!852 = !DISubroutineType(types: !853)
!853 = !{null, !29, !854}
!854 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint128_t", file: !829, line: 510, baseType: !594)
!855 = !{!856, !857}
!856 = !DILocalVariable(name: "b", arg: 1, scope: !851, file: !829, line: 557, type: !29)
!857 = !DILocalVariable(name: "n", arg: 2, scope: !851, file: !829, line: 557, type: !854)
!858 = !DILocation(line: 0, scope: !851)
!859 = !DILocation(line: 557, column: 54, scope: !851)
!860 = !DILocation(line: 557, column: 59, scope: !851)
!861 = !DILocation(line: 557, column: 80, scope: !851)
!862 = distinct !DISubprogram(name: "store128_be_", scope: !829, file: !829, line: 532, type: !863, scopeLine: 532, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !866)
!863 = !DISubroutineType(types: !864)
!864 = !{null, !29, !865}
!865 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !854, size: 32)
!866 = !{!867, !868}
!867 = !DILocalVariable(name: "b", arg: 1, scope: !862, file: !829, line: 532, type: !29)
!868 = !DILocalVariable(name: "n", arg: 2, scope: !862, file: !829, line: 532, type: !865)
!869 = !DILocation(line: 0, scope: !862)
!870 = !DILocation(line: 533, column: 3, scope: !862)
!871 = !DILocation(line: 534, column: 3, scope: !862)
!872 = !DILocation(line: 535, column: 1, scope: !862)
!873 = distinct !DISubprogram(name: "store64", scope: !829, file: !829, line: 357, type: !874, scopeLine: 357, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !876)
!874 = !DISubroutineType(types: !875)
!875 = !{null, !29, !11}
!876 = !{!877, !878}
!877 = !DILocalVariable(name: "b", arg: 1, scope: !873, file: !829, line: 357, type: !29)
!878 = !DILocalVariable(name: "i", arg: 2, scope: !873, file: !829, line: 357, type: !11)
!879 = !DILocation(line: 0, scope: !873)
!880 = !DILocation(line: 357, column: 54, scope: !873)
!881 = !DILocation(line: 357, column: 72, scope: !873)
!882 = distinct !DISubprogram(name: "Hacl_Hash_Lib_LoadStore_uint64s_to_be_bytes", scope: !1, file: !1, line: 1176, type: !883, scopeLine: 1177, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !885)
!883 = !DISubroutineType(types: !884)
!884 = !{null, !29, !112, !3}
!885 = !{!886, !887, !888, !889, !891, !894}
!886 = !DILocalVariable(name: "output", arg: 1, scope: !882, file: !1, line: 1176, type: !29)
!887 = !DILocalVariable(name: "input", arg: 2, scope: !882, file: !1, line: 1176, type: !112)
!888 = !DILocalVariable(name: "len1", arg: 3, scope: !882, file: !1, line: 1176, type: !3)
!889 = !DILocalVariable(name: "i", scope: !890, file: !1, line: 1178, type: !3)
!890 = distinct !DILexicalBlock(scope: !882, file: !1, line: 1178, column: 3)
!891 = !DILocalVariable(name: "hd1", scope: !892, file: !1, line: 1180, type: !11)
!892 = distinct !DILexicalBlock(scope: !893, file: !1, line: 1179, column: 3)
!893 = distinct !DILexicalBlock(scope: !890, file: !1, line: 1178, column: 3)
!894 = !DILocalVariable(name: "x0", scope: !892, file: !1, line: 1181, type: !29)
!895 = !DILocation(line: 0, scope: !882)
!896 = !DILocation(line: 0, scope: !890)
!897 = !DILocation(line: 1178, column: 3, scope: !890)
!898 = !DILocation(line: 1184, column: 1, scope: !882)
!899 = !DILocation(line: 1180, column: 20, scope: !892)
!900 = !DILocation(line: 0, scope: !892)
!901 = !DILocation(line: 1181, column: 41, scope: !892)
!902 = !DILocation(line: 1181, column: 26, scope: !892)
!903 = !DILocation(line: 1182, column: 5, scope: !892)
!904 = !DILocation(line: 1178, column: 51, scope: !893)
!905 = !DILocation(line: 1178, column: 37, scope: !893)
!906 = distinct !{!906, !897, !907, !574, !575}
!907 = !DILocation(line: 1183, column: 3, scope: !890)
!908 = distinct !DISubprogram(name: "Hacl_Impl_SHA512_ModQ_sha512_modq_pre", scope: !1, file: !1, line: 2559, type: !909, scopeLine: 2565, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !911)
!909 = !DISubroutineType(types: !910)
!910 = !{null, !112, !29, !29, !3}
!911 = !{!912, !913, !914, !915, !916}
!912 = !DILocalVariable(name: "out", arg: 1, scope: !908, file: !1, line: 2560, type: !112)
!913 = !DILocalVariable(name: "prefix", arg: 2, scope: !908, file: !1, line: 2561, type: !29)
!914 = !DILocalVariable(name: "input", arg: 3, scope: !908, file: !1, line: 2562, type: !29)
!915 = !DILocalVariable(name: "len1", arg: 4, scope: !908, file: !1, line: 2563, type: !3)
!916 = !DILocalVariable(name: "tmp", scope: !908, file: !1, line: 2566, type: !917)
!917 = !DICompositeType(tag: DW_TAG_array_type, baseType: !11, size: 640, elements: !918)
!918 = !{!919}
!919 = !DISubrange(count: 10)
!920 = !DILocation(line: 0, scope: !908)
!921 = !DILocation(line: 2566, column: 3, scope: !908)
!922 = !DILocation(line: 2566, column: 12, scope: !908)
!923 = !DILocation(line: 2567, column: 68, scope: !908)
!924 = !DILocation(line: 2567, column: 3, scope: !908)
!925 = !DILocation(line: 2568, column: 1, scope: !908)
!926 = distinct !DISubprogram(name: "Hacl_Impl_SHA512_ModQ_sha512_modq_pre_", scope: !1, file: !1, line: 2544, type: !927, scopeLine: 2551, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !929)
!927 = !DISubroutineType(types: !928)
!928 = !{null, !112, !29, !29, !3, !112}
!929 = !{!930, !931, !932, !933, !934, !935}
!930 = !DILocalVariable(name: "out", arg: 1, scope: !926, file: !1, line: 2545, type: !112)
!931 = !DILocalVariable(name: "prefix", arg: 2, scope: !926, file: !1, line: 2546, type: !29)
!932 = !DILocalVariable(name: "input", arg: 3, scope: !926, file: !1, line: 2547, type: !29)
!933 = !DILocalVariable(name: "len1", arg: 4, scope: !926, file: !1, line: 2548, type: !3)
!934 = !DILocalVariable(name: "tmp", arg: 5, scope: !926, file: !1, line: 2549, type: !112)
!935 = !DILocalVariable(name: "hash1", scope: !926, file: !1, line: 2552, type: !82)
!936 = !DILocation(line: 0, scope: !926)
!937 = !DILocation(line: 2552, column: 3, scope: !926)
!938 = !DILocation(line: 2552, column: 11, scope: !926)
!939 = !DILocation(line: 2553, column: 3, scope: !926)
!940 = !DILocation(line: 2554, column: 3, scope: !926)
!941 = !DILocation(line: 2555, column: 3, scope: !926)
!942 = !DILocation(line: 2556, column: 1, scope: !926)
!943 = distinct !DISubprogram(name: "Hacl_Impl_Sha512_sha512_pre_msg", scope: !1, file: !1, line: 2035, type: !27, scopeLine: 2036, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !944)
!944 = !{!945, !946, !947, !948}
!945 = !DILocalVariable(name: "h", arg: 1, scope: !943, file: !1, line: 2035, type: !29)
!946 = !DILocalVariable(name: "prefix", arg: 2, scope: !943, file: !1, line: 2035, type: !29)
!947 = !DILocalVariable(name: "input", arg: 3, scope: !943, file: !1, line: 2035, type: !29)
!948 = !DILocalVariable(name: "len1", arg: 4, scope: !943, file: !1, line: 2035, type: !3)
!949 = !DILocation(line: 0, scope: !943)
!950 = !DILocation(line: 2037, column: 3, scope: !943)
!951 = !DILocation(line: 2038, column: 1, scope: !943)
!952 = distinct !DISubprogram(name: "Hacl_Impl_Load56_load_64_bytes", scope: !1, file: !1, line: 1603, type: !630, scopeLine: 1604, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !953)
!953 = !{!954, !955, !956, !957, !958, !959, !960, !961, !962, !963, !964, !965, !966, !967, !968, !969, !970, !971, !972, !973, !974, !975, !976, !977, !978, !979, !980, !981, !982, !983, !984, !985, !986, !987, !988, !989, !990, !991, !992, !993}
!954 = !DILocalVariable(name: "out", arg: 1, scope: !952, file: !1, line: 1603, type: !112)
!955 = !DILocalVariable(name: "b", arg: 2, scope: !952, file: !1, line: 1603, type: !29)
!956 = !DILocalVariable(name: "b80", scope: !952, file: !1, line: 1605, type: !29)
!957 = !DILocalVariable(name: "z", scope: !952, file: !1, line: 1606, type: !11)
!958 = !DILocalVariable(name: "z_", scope: !952, file: !1, line: 1607, type: !11)
!959 = !DILocalVariable(name: "b0", scope: !952, file: !1, line: 1608, type: !11)
!960 = !DILocalVariable(name: "b81", scope: !952, file: !1, line: 1609, type: !29)
!961 = !DILocalVariable(name: "z0", scope: !952, file: !1, line: 1610, type: !11)
!962 = !DILocalVariable(name: "z_0", scope: !952, file: !1, line: 1611, type: !11)
!963 = !DILocalVariable(name: "b1", scope: !952, file: !1, line: 1612, type: !11)
!964 = !DILocalVariable(name: "b82", scope: !952, file: !1, line: 1613, type: !29)
!965 = !DILocalVariable(name: "z1", scope: !952, file: !1, line: 1614, type: !11)
!966 = !DILocalVariable(name: "z_1", scope: !952, file: !1, line: 1615, type: !11)
!967 = !DILocalVariable(name: "b2", scope: !952, file: !1, line: 1616, type: !11)
!968 = !DILocalVariable(name: "b83", scope: !952, file: !1, line: 1617, type: !29)
!969 = !DILocalVariable(name: "z2", scope: !952, file: !1, line: 1618, type: !11)
!970 = !DILocalVariable(name: "z_2", scope: !952, file: !1, line: 1619, type: !11)
!971 = !DILocalVariable(name: "b3", scope: !952, file: !1, line: 1620, type: !11)
!972 = !DILocalVariable(name: "b84", scope: !952, file: !1, line: 1621, type: !29)
!973 = !DILocalVariable(name: "z3", scope: !952, file: !1, line: 1622, type: !11)
!974 = !DILocalVariable(name: "z_3", scope: !952, file: !1, line: 1623, type: !11)
!975 = !DILocalVariable(name: "b4", scope: !952, file: !1, line: 1624, type: !11)
!976 = !DILocalVariable(name: "b85", scope: !952, file: !1, line: 1625, type: !29)
!977 = !DILocalVariable(name: "z4", scope: !952, file: !1, line: 1626, type: !11)
!978 = !DILocalVariable(name: "z_4", scope: !952, file: !1, line: 1627, type: !11)
!979 = !DILocalVariable(name: "b5", scope: !952, file: !1, line: 1628, type: !11)
!980 = !DILocalVariable(name: "b86", scope: !952, file: !1, line: 1629, type: !29)
!981 = !DILocalVariable(name: "z5", scope: !952, file: !1, line: 1630, type: !11)
!982 = !DILocalVariable(name: "z_5", scope: !952, file: !1, line: 1631, type: !11)
!983 = !DILocalVariable(name: "b6", scope: !952, file: !1, line: 1632, type: !11)
!984 = !DILocalVariable(name: "b87", scope: !952, file: !1, line: 1633, type: !29)
!985 = !DILocalVariable(name: "z6", scope: !952, file: !1, line: 1634, type: !11)
!986 = !DILocalVariable(name: "z_6", scope: !952, file: !1, line: 1635, type: !11)
!987 = !DILocalVariable(name: "b7", scope: !952, file: !1, line: 1636, type: !11)
!988 = !DILocalVariable(name: "b8", scope: !952, file: !1, line: 1637, type: !29)
!989 = !DILocalVariable(name: "z7", scope: !952, file: !1, line: 1638, type: !11)
!990 = !DILocalVariable(name: "z_7", scope: !952, file: !1, line: 1639, type: !11)
!991 = !DILocalVariable(name: "b88", scope: !952, file: !1, line: 1640, type: !11)
!992 = !DILocalVariable(name: "b63", scope: !952, file: !1, line: 1641, type: !8)
!993 = !DILocalVariable(name: "b9", scope: !952, file: !1, line: 1642, type: !11)
!994 = !DILocation(line: 0, scope: !952)
!995 = !DILocation(line: 1606, column: 16, scope: !952)
!996 = !DILocation(line: 1607, column: 19, scope: !952)
!997 = !DILocation(line: 1609, column: 20, scope: !952)
!998 = !DILocation(line: 1610, column: 17, scope: !952)
!999 = !DILocation(line: 1611, column: 21, scope: !952)
!1000 = !DILocation(line: 1613, column: 20, scope: !952)
!1001 = !DILocation(line: 1614, column: 17, scope: !952)
!1002 = !DILocation(line: 1615, column: 21, scope: !952)
!1003 = !DILocation(line: 1617, column: 20, scope: !952)
!1004 = !DILocation(line: 1618, column: 17, scope: !952)
!1005 = !DILocation(line: 1619, column: 21, scope: !952)
!1006 = !DILocation(line: 1621, column: 20, scope: !952)
!1007 = !DILocation(line: 1622, column: 17, scope: !952)
!1008 = !DILocation(line: 1623, column: 21, scope: !952)
!1009 = !DILocation(line: 1625, column: 20, scope: !952)
!1010 = !DILocation(line: 1626, column: 17, scope: !952)
!1011 = !DILocation(line: 1627, column: 21, scope: !952)
!1012 = !DILocation(line: 1629, column: 20, scope: !952)
!1013 = !DILocation(line: 1630, column: 17, scope: !952)
!1014 = !DILocation(line: 1631, column: 21, scope: !952)
!1015 = !DILocation(line: 1633, column: 20, scope: !952)
!1016 = !DILocation(line: 1634, column: 17, scope: !952)
!1017 = !DILocation(line: 1635, column: 21, scope: !952)
!1018 = !DILocation(line: 1637, column: 19, scope: !952)
!1019 = !DILocation(line: 1638, column: 17, scope: !952)
!1020 = !DILocation(line: 1639, column: 21, scope: !952)
!1021 = !DILocation(line: 1641, column: 17, scope: !952)
!1022 = !DILocation(line: 1642, column: 17, scope: !952)
!1023 = !DILocation(line: 1643, column: 3, scope: !952)
!1024 = !DILocation(line: 1644, column: 1, scope: !952)
!1025 = distinct !DISubprogram(name: "Hacl_Impl_BignumQ_Mul_barrett_reduction", scope: !1, file: !1, line: 2475, type: !1026, scopeLine: 2476, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !1028)
!1026 = !DISubroutineType(types: !1027)
!1027 = !{null, !112, !112}
!1028 = !{!1029, !1030}
!1029 = !DILocalVariable(name: "z", arg: 1, scope: !1025, file: !1, line: 2475, type: !112)
!1030 = !DILocalVariable(name: "t", arg: 2, scope: !1025, file: !1, line: 2475, type: !112)
!1031 = !DILocation(line: 0, scope: !1025)
!1032 = !DILocation(line: 2477, column: 3, scope: !1025)
!1033 = !DILocation(line: 2478, column: 1, scope: !1025)
!1034 = distinct !DISubprogram(name: "Hacl_Impl_SHA512_Ed25519_sha512_pre_msg", scope: !1, file: !1, line: 2012, type: !27, scopeLine: 2018, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !1035)
!1035 = !{!1036, !1037, !1038, !1039}
!1036 = !DILocalVariable(name: "h", arg: 1, scope: !1034, file: !1, line: 2013, type: !29)
!1037 = !DILocalVariable(name: "prefix", arg: 2, scope: !1034, file: !1, line: 2014, type: !29)
!1038 = !DILocalVariable(name: "input", arg: 3, scope: !1034, file: !1, line: 2015, type: !29)
!1039 = !DILocalVariable(name: "len1", arg: 4, scope: !1034, file: !1, line: 2016, type: !3)
!1040 = !DILocation(line: 0, scope: !1034)
!1041 = !DILocation(line: 2019, column: 3, scope: !1034)
!1042 = !DILocation(line: 2020, column: 1, scope: !1034)
!1043 = distinct !DISubprogram(name: "Hacl_Impl_SHA512_Ed25519_3_sha512_pre_msg", scope: !1, file: !1, line: 1967, type: !27, scopeLine: 1973, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !1044)
!1044 = !{!1045, !1046, !1047, !1048}
!1045 = !DILocalVariable(name: "h", arg: 1, scope: !1043, file: !1, line: 1968, type: !29)
!1046 = !DILocalVariable(name: "prefix", arg: 2, scope: !1043, file: !1, line: 1969, type: !29)
!1047 = !DILocalVariable(name: "input", arg: 3, scope: !1043, file: !1, line: 1970, type: !29)
!1048 = !DILocalVariable(name: "len1", arg: 4, scope: !1043, file: !1, line: 1971, type: !3)
!1049 = !DILocation(line: 0, scope: !1043)
!1050 = !DILocation(line: 1974, column: 12, scope: !1051)
!1051 = distinct !DILexicalBlock(scope: !1043, file: !1, line: 1974, column: 7)
!1052 = !DILocation(line: 1974, column: 7, scope: !1043)
!1053 = !DILocation(line: 1975, column: 5, scope: !1051)
!1054 = !DILocation(line: 1977, column: 5, scope: !1051)
!1055 = !DILocation(line: 1978, column: 1, scope: !1043)
!1056 = distinct !DISubprogram(name: "Hacl_Impl_SHA512_Ed25519_1_sha512_pre_msg_1", scope: !1, file: !1, line: 1923, type: !27, scopeLine: 1929, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !1057)
!1057 = !{!1058, !1059, !1060, !1061, !1062, !1066}
!1058 = !DILocalVariable(name: "h", arg: 1, scope: !1056, file: !1, line: 1924, type: !29)
!1059 = !DILocalVariable(name: "prefix", arg: 2, scope: !1056, file: !1, line: 1925, type: !29)
!1060 = !DILocalVariable(name: "input", arg: 3, scope: !1056, file: !1, line: 1926, type: !29)
!1061 = !DILocalVariable(name: "len1", arg: 4, scope: !1056, file: !1, line: 1927, type: !3)
!1062 = !DILocalVariable(name: "block", scope: !1056, file: !1, line: 1930, type: !1063)
!1063 = !DICompositeType(tag: DW_TAG_array_type, baseType: !8, size: 1024, elements: !1064)
!1064 = !{!1065}
!1065 = !DISubrange(count: 128)
!1066 = !DILocalVariable(name: "block_", scope: !1056, file: !1, line: 1931, type: !29)
!1067 = !DILocation(line: 0, scope: !1056)
!1068 = !DILocation(line: 1930, column: 3, scope: !1056)
!1069 = !DILocation(line: 1930, column: 11, scope: !1056)
!1070 = !DILocation(line: 1932, column: 3, scope: !1056)
!1071 = !DILocation(line: 1933, column: 43, scope: !1056)
!1072 = !DILocation(line: 1933, column: 3, scope: !1056)
!1073 = !DILocation(line: 1934, column: 1, scope: !1056)
!1074 = distinct !DISubprogram(name: "Hacl_Impl_SHA512_Ed25519_3_sha512_pre_msg_2", scope: !1, file: !1, line: 1952, type: !27, scopeLine: 1958, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !1075)
!1075 = !{!1076, !1077, !1078, !1079, !1080, !1081, !1082}
!1076 = !DILocalVariable(name: "h", arg: 1, scope: !1074, file: !1, line: 1953, type: !29)
!1077 = !DILocalVariable(name: "prefix", arg: 2, scope: !1074, file: !1, line: 1954, type: !29)
!1078 = !DILocalVariable(name: "input", arg: 3, scope: !1074, file: !1, line: 1955, type: !29)
!1079 = !DILocalVariable(name: "len1", arg: 4, scope: !1074, file: !1, line: 1956, type: !3)
!1080 = !DILocalVariable(name: "input11", scope: !1074, file: !1, line: 1959, type: !29)
!1081 = !DILocalVariable(name: "input21", scope: !1074, file: !1, line: 1960, type: !29)
!1082 = !DILocalVariable(name: "block", scope: !1074, file: !1, line: 1961, type: !1063)
!1083 = !DILocation(line: 0, scope: !1074)
!1084 = !DILocation(line: 1960, column: 28, scope: !1074)
!1085 = !DILocation(line: 1961, column: 3, scope: !1074)
!1086 = !DILocation(line: 1961, column: 11, scope: !1074)
!1087 = !DILocation(line: 1962, column: 3, scope: !1074)
!1088 = !DILocation(line: 1963, column: 74, scope: !1074)
!1089 = !DILocation(line: 1963, column: 3, scope: !1074)
!1090 = !DILocation(line: 1964, column: 1, scope: !1074)
!1091 = distinct !DISubprogram(name: "Hacl_Impl_SHA512_Ed25519_1_concat_2", scope: !1, file: !1, line: 1902, type: !27, scopeLine: 1903, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !1092)
!1092 = !{!1093, !1094, !1095, !1096}
!1093 = !DILocalVariable(name: "out", arg: 1, scope: !1091, file: !1, line: 1902, type: !29)
!1094 = !DILocalVariable(name: "pre", arg: 2, scope: !1091, file: !1, line: 1902, type: !29)
!1095 = !DILocalVariable(name: "msg", arg: 3, scope: !1091, file: !1, line: 1902, type: !29)
!1096 = !DILocalVariable(name: "len1", arg: 4, scope: !1091, file: !1, line: 1902, type: !3)
!1097 = !DILocation(line: 0, scope: !1091)
!1098 = !DILocation(line: 1904, column: 3, scope: !1091)
!1099 = !DILocation(line: 1905, column: 45, scope: !1091)
!1100 = !DILocation(line: 1905, column: 3, scope: !1091)
!1101 = !DILocation(line: 1906, column: 1, scope: !1091)
!1102 = distinct !DISubprogram(name: "Hacl_Impl_SHA512_Ed25519_1_copy_bytes", scope: !1, file: !1, line: 1896, type: !285, scopeLine: 1897, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !1103)
!1103 = !{!1104, !1105, !1106}
!1104 = !DILocalVariable(name: "output", arg: 1, scope: !1102, file: !1, line: 1896, type: !29)
!1105 = !DILocalVariable(name: "input", arg: 2, scope: !1102, file: !1, line: 1896, type: !29)
!1106 = !DILocalVariable(name: "len1", arg: 3, scope: !1102, file: !1, line: 1896, type: !3)
!1107 = !DILocation(line: 0, scope: !1102)
!1108 = !DILocation(line: 1898, column: 3, scope: !1102)
!1109 = !DILocation(line: 1899, column: 1, scope: !1102)
!1110 = distinct !DISubprogram(name: "Hacl_Impl_SHA512_Ed25519_2_hash_block_and_rest", scope: !1, file: !1, line: 1878, type: !27, scopeLine: 1884, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !1111)
!1111 = !{!1112, !1113, !1114, !1115, !1116, !1117, !1118}
!1112 = !DILocalVariable(name: "out", arg: 1, scope: !1110, file: !1, line: 1879, type: !29)
!1113 = !DILocalVariable(name: "block", arg: 2, scope: !1110, file: !1, line: 1880, type: !29)
!1114 = !DILocalVariable(name: "msg", arg: 3, scope: !1110, file: !1, line: 1881, type: !29)
!1115 = !DILocalVariable(name: "len1", arg: 4, scope: !1110, file: !1, line: 1882, type: !3)
!1116 = !DILocalVariable(name: "nblocks", scope: !1110, file: !1, line: 1885, type: !3)
!1117 = !DILocalVariable(name: "rest", scope: !1110, file: !1, line: 1886, type: !11)
!1118 = !DILocalVariable(name: "st", scope: !1110, file: !1, line: 1887, type: !300)
!1119 = !DILocation(line: 0, scope: !1110)
!1120 = !DILocation(line: 1885, column: 27, scope: !1110)
!1121 = !DILocation(line: 1886, column: 35, scope: !1110)
!1122 = !DILocation(line: 1886, column: 19, scope: !1110)
!1123 = !DILocation(line: 1887, column: 3, scope: !1110)
!1124 = !DILocation(line: 1887, column: 12, scope: !1110)
!1125 = !DILocation(line: 1888, column: 27, scope: !1110)
!1126 = !DILocation(line: 1888, column: 3, scope: !1110)
!1127 = !DILocation(line: 1889, column: 3, scope: !1110)
!1128 = !DILocation(line: 1890, column: 3, scope: !1110)
!1129 = !DILocation(line: 1891, column: 59, scope: !1110)
!1130 = !DILocation(line: 1891, column: 42, scope: !1110)
!1131 = !DILocation(line: 1891, column: 3, scope: !1110)
!1132 = !DILocation(line: 1892, column: 3, scope: !1110)
!1133 = !DILocation(line: 1893, column: 1, scope: !1110)
!1134 = distinct !DISubprogram(name: "Hacl_Lib_Create64_make_h64_10", scope: !1, file: !1, line: 604, type: !1135, scopeLine: 617, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !1137)
!1135 = !DISubroutineType(types: !1136)
!1136 = !{null, !112, !11, !11, !11, !11, !11, !11, !11, !11, !11, !11}
!1137 = !{!1138, !1139, !1140, !1141, !1142, !1143, !1144, !1145, !1146, !1147, !1148}
!1138 = !DILocalVariable(name: "b", arg: 1, scope: !1134, file: !1, line: 605, type: !112)
!1139 = !DILocalVariable(name: "s0", arg: 2, scope: !1134, file: !1, line: 606, type: !11)
!1140 = !DILocalVariable(name: "s1", arg: 3, scope: !1134, file: !1, line: 607, type: !11)
!1141 = !DILocalVariable(name: "s2", arg: 4, scope: !1134, file: !1, line: 608, type: !11)
!1142 = !DILocalVariable(name: "s3", arg: 5, scope: !1134, file: !1, line: 609, type: !11)
!1143 = !DILocalVariable(name: "s4", arg: 6, scope: !1134, file: !1, line: 610, type: !11)
!1144 = !DILocalVariable(name: "s5", arg: 7, scope: !1134, file: !1, line: 611, type: !11)
!1145 = !DILocalVariable(name: "s6", arg: 8, scope: !1134, file: !1, line: 612, type: !11)
!1146 = !DILocalVariable(name: "s7", arg: 9, scope: !1134, file: !1, line: 613, type: !11)
!1147 = !DILocalVariable(name: "s8", arg: 10, scope: !1134, file: !1, line: 614, type: !11)
!1148 = !DILocalVariable(name: "s9", arg: 11, scope: !1134, file: !1, line: 615, type: !11)
!1149 = !DILocation(line: 0, scope: !1134)
!1150 = !DILocation(line: 618, column: 9, scope: !1134)
!1151 = !DILocation(line: 619, column: 3, scope: !1134)
!1152 = !DILocation(line: 619, column: 9, scope: !1134)
!1153 = !DILocation(line: 620, column: 3, scope: !1134)
!1154 = !DILocation(line: 620, column: 9, scope: !1134)
!1155 = !DILocation(line: 621, column: 3, scope: !1134)
!1156 = !DILocation(line: 621, column: 9, scope: !1134)
!1157 = !DILocation(line: 622, column: 3, scope: !1134)
!1158 = !DILocation(line: 622, column: 9, scope: !1134)
!1159 = !DILocation(line: 623, column: 3, scope: !1134)
!1160 = !DILocation(line: 623, column: 9, scope: !1134)
!1161 = !DILocation(line: 624, column: 3, scope: !1134)
!1162 = !DILocation(line: 624, column: 9, scope: !1134)
!1163 = !DILocation(line: 625, column: 3, scope: !1134)
!1164 = !DILocation(line: 625, column: 9, scope: !1134)
!1165 = !DILocation(line: 626, column: 3, scope: !1134)
!1166 = !DILocation(line: 626, column: 9, scope: !1134)
!1167 = !DILocation(line: 627, column: 3, scope: !1134)
!1168 = !DILocation(line: 627, column: 9, scope: !1134)
!1169 = !DILocation(line: 628, column: 1, scope: !1134)
!1170 = distinct !DISubprogram(name: "Hacl_Impl_BignumQ_Mul_barrett_reduction_", scope: !1, file: !1, line: 2464, type: !1026, scopeLine: 2465, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !1171)
!1171 = !{!1172, !1173, !1174, !1178, !1179, !1180}
!1172 = !DILocalVariable(name: "z", arg: 1, scope: !1170, file: !1, line: 2464, type: !112)
!1173 = !DILocalVariable(name: "t", arg: 2, scope: !1170, file: !1, line: 2464, type: !112)
!1174 = !DILocalVariable(name: "tmp", scope: !1170, file: !1, line: 2466, type: !1175)
!1175 = !DICompositeType(tag: DW_TAG_array_type, baseType: !11, size: 2560, elements: !1176)
!1176 = !{!1177}
!1177 = !DISubrange(count: 40)
!1178 = !DILocalVariable(name: "m1", scope: !1170, file: !1, line: 2467, type: !112)
!1179 = !DILocalVariable(name: "mu1", scope: !1170, file: !1, line: 2468, type: !112)
!1180 = !DILocalVariable(name: "tmp1", scope: !1170, file: !1, line: 2469, type: !112)
!1181 = !DILocation(line: 0, scope: !1170)
!1182 = !DILocation(line: 2466, column: 3, scope: !1170)
!1183 = !DILocation(line: 2466, column: 12, scope: !1170)
!1184 = !DILocation(line: 2467, column: 18, scope: !1170)
!1185 = !DILocation(line: 2468, column: 23, scope: !1170)
!1186 = !DILocation(line: 2469, column: 24, scope: !1170)
!1187 = !DILocation(line: 2470, column: 3, scope: !1170)
!1188 = !DILocation(line: 2471, column: 3, scope: !1170)
!1189 = !DILocation(line: 2472, column: 3, scope: !1170)
!1190 = !DILocation(line: 2473, column: 1, scope: !1170)
!1191 = distinct !DISubprogram(name: "Hacl_Impl_BignumQ_Mul_make_m", scope: !1, file: !1, line: 2077, type: !327, scopeLine: 2078, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !1192)
!1192 = !{!1193}
!1193 = !DILocalVariable(name: "m1", arg: 1, scope: !1191, file: !1, line: 2077, type: !112)
!1194 = !DILocation(line: 0, scope: !1191)
!1195 = !DILocation(line: 2079, column: 3, scope: !1191)
!1196 = !DILocation(line: 2085, column: 1, scope: !1191)
!1197 = distinct !DISubprogram(name: "Hacl_Impl_BignumQ_Mul_make_mu", scope: !1, file: !1, line: 2087, type: !327, scopeLine: 2088, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !1198)
!1198 = !{!1199}
!1199 = !DILocalVariable(name: "m1", arg: 1, scope: !1197, file: !1, line: 2087, type: !112)
!1200 = !DILocation(line: 0, scope: !1197)
!1201 = !DILocation(line: 2089, column: 3, scope: !1197)
!1202 = !DILocation(line: 2095, column: 1, scope: !1197)
!1203 = distinct !DISubprogram(name: "Hacl_Impl_BignumQ_Mul_barrett_reduction__", scope: !1, file: !1, line: 2446, type: !1204, scopeLine: 2453, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !1206)
!1204 = !DISubroutineType(types: !1205)
!1205 = !{null, !112, !112, !112, !112, !112}
!1206 = !{!1207, !1208, !1209, !1210, !1211, !1212, !1213, !1217}
!1207 = !DILocalVariable(name: "z", arg: 1, scope: !1203, file: !1, line: 2447, type: !112)
!1208 = !DILocalVariable(name: "t", arg: 2, scope: !1203, file: !1, line: 2448, type: !112)
!1209 = !DILocalVariable(name: "m1", arg: 3, scope: !1203, file: !1, line: 2449, type: !112)
!1210 = !DILocalVariable(name: "mu1", arg: 4, scope: !1203, file: !1, line: 2450, type: !112)
!1211 = !DILocalVariable(name: "tmp", arg: 5, scope: !1203, file: !1, line: 2451, type: !112)
!1212 = !DILocalVariable(name: "s", scope: !1203, file: !1, line: 2454, type: !112)
!1213 = !DILocalVariable(name: "qmu", scope: !1203, file: !1, line: 2456, type: !1214)
!1214 = !DICompositeType(tag: DW_TAG_array_type, baseType: !592, size: 1152, elements: !1215)
!1215 = !{!1216}
!1216 = !DISubrange(count: 9)
!1217 = !DILocalVariable(name: "_i", scope: !1218, file: !1, line: 2457, type: !3)
!1218 = distinct !DILexicalBlock(scope: !1203, file: !1, line: 2457, column: 3)
!1219 = !DILocation(line: 0, scope: !1203)
!1220 = !DILocation(line: 2456, column: 3, scope: !1203)
!1221 = !DILocation(line: 2456, column: 19, scope: !1203)
!1222 = !DILocation(line: 0, scope: !1218)
!1223 = !DILocation(line: 2457, column: 3, scope: !1218)
!1224 = !DILocation(line: 2454, column: 21, scope: !1203)
!1225 = !DILocation(line: 2459, column: 46, scope: !1203)
!1226 = !DILocation(line: 2459, column: 3, scope: !1203)
!1227 = !DILocation(line: 2460, column: 3, scope: !1203)
!1228 = !DILocation(line: 2461, column: 3, scope: !1203)
!1229 = !DILocation(line: 2462, column: 1, scope: !1203)
!1230 = !DILocation(line: 2458, column: 5, scope: !1231)
!1231 = distinct !DILexicalBlock(scope: !1218, file: !1, line: 2457, column: 3)
!1232 = !DILocation(line: 2458, column: 15, scope: !1231)
!1233 = !{i64 0, i64 8, !181, i64 8, i64 8, !181}
!1234 = !DILocation(line: 2457, column: 45, scope: !1231)
!1235 = !DILocation(line: 2457, column: 29, scope: !1231)
!1236 = distinct !{!1236, !1223, !1237, !574, !575}
!1237 = !DILocation(line: 2458, column: 59, scope: !1218)
!1238 = distinct !DISubprogram(name: "Hacl_Lib_Create64_make_h64_5", scope: !1, file: !1, line: 587, type: !1239, scopeLine: 595, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !1241)
!1239 = !DISubroutineType(types: !1240)
!1240 = !{null, !112, !11, !11, !11, !11, !11}
!1241 = !{!1242, !1243, !1244, !1245, !1246, !1247}
!1242 = !DILocalVariable(name: "b", arg: 1, scope: !1238, file: !1, line: 588, type: !112)
!1243 = !DILocalVariable(name: "s0", arg: 2, scope: !1238, file: !1, line: 589, type: !11)
!1244 = !DILocalVariable(name: "s1", arg: 3, scope: !1238, file: !1, line: 590, type: !11)
!1245 = !DILocalVariable(name: "s2", arg: 4, scope: !1238, file: !1, line: 591, type: !11)
!1246 = !DILocalVariable(name: "s3", arg: 5, scope: !1238, file: !1, line: 592, type: !11)
!1247 = !DILocalVariable(name: "s4", arg: 6, scope: !1238, file: !1, line: 593, type: !11)
!1248 = !DILocation(line: 0, scope: !1238)
!1249 = !DILocation(line: 596, column: 9, scope: !1238)
!1250 = !DILocation(line: 597, column: 3, scope: !1238)
!1251 = !DILocation(line: 597, column: 9, scope: !1238)
!1252 = !DILocation(line: 598, column: 3, scope: !1238)
!1253 = !DILocation(line: 598, column: 9, scope: !1238)
!1254 = !DILocation(line: 599, column: 3, scope: !1238)
!1255 = !DILocation(line: 599, column: 9, scope: !1238)
!1256 = !DILocation(line: 600, column: 3, scope: !1238)
!1257 = !DILocation(line: 600, column: 9, scope: !1238)
!1258 = !DILocation(line: 601, column: 1, scope: !1238)
!1259 = distinct !DISubprogram(name: "Hacl_Impl_BignumQ_Mul_barrett_reduction__1", scope: !1, file: !1, line: 2417, type: !1260, scopeLine: 2423, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !1263)
!1260 = !DISubroutineType(types: !1261)
!1261 = !{null, !1262, !112, !112, !112}
!1262 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !592, size: 32)
!1263 = !{!1264, !1265, !1266, !1267, !1268, !1269, !1270}
!1264 = !DILocalVariable(name: "qmu", arg: 1, scope: !1259, file: !1, line: 2418, type: !1262)
!1265 = !DILocalVariable(name: "t", arg: 2, scope: !1259, file: !1, line: 2419, type: !112)
!1266 = !DILocalVariable(name: "mu1", arg: 3, scope: !1259, file: !1, line: 2420, type: !112)
!1267 = !DILocalVariable(name: "tmp", arg: 4, scope: !1259, file: !1, line: 2421, type: !112)
!1268 = !DILocalVariable(name: "q1", scope: !1259, file: !1, line: 2424, type: !112)
!1269 = !DILocalVariable(name: "qmu_", scope: !1259, file: !1, line: 2425, type: !112)
!1270 = !DILocalVariable(name: "qmu_264", scope: !1259, file: !1, line: 2426, type: !112)
!1271 = !DILocation(line: 0, scope: !1259)
!1272 = !DILocation(line: 2425, column: 24, scope: !1259)
!1273 = !DILocation(line: 2426, column: 27, scope: !1259)
!1274 = !DILocation(line: 2427, column: 3, scope: !1259)
!1275 = !DILocation(line: 2428, column: 3, scope: !1259)
!1276 = !DILocation(line: 2429, column: 3, scope: !1259)
!1277 = !DILocation(line: 2430, column: 3, scope: !1259)
!1278 = !DILocation(line: 2431, column: 1, scope: !1259)
!1279 = distinct !DISubprogram(name: "Hacl_Impl_BignumQ_Mul_barrett_reduction__2", scope: !1, file: !1, line: 2434, type: !1280, scopeLine: 2435, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !1282)
!1280 = !DISubroutineType(types: !1281)
!1281 = !{null, !112, !112, !112}
!1282 = !{!1283, !1284, !1285, !1286, !1287, !1288, !1289}
!1283 = !DILocalVariable(name: "t", arg: 1, scope: !1279, file: !1, line: 2434, type: !112)
!1284 = !DILocalVariable(name: "m1", arg: 2, scope: !1279, file: !1, line: 2434, type: !112)
!1285 = !DILocalVariable(name: "tmp", arg: 3, scope: !1279, file: !1, line: 2434, type: !112)
!1286 = !DILocalVariable(name: "qmul", scope: !1279, file: !1, line: 2436, type: !112)
!1287 = !DILocalVariable(name: "r", scope: !1279, file: !1, line: 2437, type: !112)
!1288 = !DILocalVariable(name: "qmu_264", scope: !1279, file: !1, line: 2438, type: !112)
!1289 = !DILocalVariable(name: "s", scope: !1279, file: !1, line: 2439, type: !112)
!1290 = !DILocation(line: 0, scope: !1279)
!1291 = !DILocation(line: 2437, column: 21, scope: !1279)
!1292 = !DILocation(line: 2438, column: 27, scope: !1279)
!1293 = !DILocation(line: 2439, column: 21, scope: !1279)
!1294 = !DILocation(line: 2440, column: 3, scope: !1279)
!1295 = !DILocation(line: 2441, column: 3, scope: !1279)
!1296 = !DILocation(line: 2442, column: 3, scope: !1279)
!1297 = !DILocation(line: 2443, column: 1, scope: !1279)
!1298 = distinct !DISubprogram(name: "Hacl_Impl_BignumQ_Mul_subm_conditional", scope: !1, file: !1, line: 2157, type: !1026, scopeLine: 2158, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !1299)
!1299 = !{!1300, !1301, !1302, !1306, !1307, !1308, !1309, !1310, !1311, !1312, !1313, !1314, !1315, !1316, !1317, !1318, !1319, !1320, !1321, !1322, !1323, !1324, !1325, !1326, !1327, !1328, !1329}
!1300 = !DILocalVariable(name: "z", arg: 1, scope: !1298, file: !1, line: 2157, type: !112)
!1301 = !DILocalVariable(name: "x", arg: 2, scope: !1298, file: !1, line: 2157, type: !112)
!1302 = !DILocalVariable(name: "tmp", scope: !1298, file: !1, line: 2159, type: !1303)
!1303 = !DICompositeType(tag: DW_TAG_array_type, baseType: !11, size: 320, elements: !1304)
!1304 = !{!1305}
!1305 = !DISubrange(count: 5)
!1306 = !DILocalVariable(name: "x0", scope: !1298, file: !1, line: 2160, type: !11)
!1307 = !DILocalVariable(name: "x1", scope: !1298, file: !1, line: 2161, type: !11)
!1308 = !DILocalVariable(name: "x2", scope: !1298, file: !1, line: 2162, type: !11)
!1309 = !DILocalVariable(name: "x3", scope: !1298, file: !1, line: 2163, type: !11)
!1310 = !DILocalVariable(name: "x4", scope: !1298, file: !1, line: 2164, type: !11)
!1311 = !DILocalVariable(name: "y0", scope: !1298, file: !1, line: 2166, type: !11)
!1312 = !DILocalVariable(name: "y1", scope: !1298, file: !1, line: 2167, type: !11)
!1313 = !DILocalVariable(name: "y2", scope: !1298, file: !1, line: 2168, type: !11)
!1314 = !DILocalVariable(name: "y3", scope: !1298, file: !1, line: 2169, type: !11)
!1315 = !DILocalVariable(name: "y4", scope: !1298, file: !1, line: 2170, type: !11)
!1316 = !DILocalVariable(name: "b", scope: !1298, file: !1, line: 2171, type: !11)
!1317 = !DILocalVariable(name: "t0", scope: !1298, file: !1, line: 2172, type: !11)
!1318 = !DILocalVariable(name: "y11", scope: !1298, file: !1, line: 2173, type: !11)
!1319 = !DILocalVariable(name: "b1", scope: !1298, file: !1, line: 2174, type: !11)
!1320 = !DILocalVariable(name: "t1", scope: !1298, file: !1, line: 2175, type: !11)
!1321 = !DILocalVariable(name: "y21", scope: !1298, file: !1, line: 2176, type: !11)
!1322 = !DILocalVariable(name: "b2", scope: !1298, file: !1, line: 2177, type: !11)
!1323 = !DILocalVariable(name: "t2", scope: !1298, file: !1, line: 2178, type: !11)
!1324 = !DILocalVariable(name: "y31", scope: !1298, file: !1, line: 2179, type: !11)
!1325 = !DILocalVariable(name: "b3", scope: !1298, file: !1, line: 2180, type: !11)
!1326 = !DILocalVariable(name: "t3", scope: !1298, file: !1, line: 2181, type: !11)
!1327 = !DILocalVariable(name: "y41", scope: !1298, file: !1, line: 2182, type: !11)
!1328 = !DILocalVariable(name: "b4", scope: !1298, file: !1, line: 2183, type: !11)
!1329 = !DILocalVariable(name: "t4", scope: !1298, file: !1, line: 2184, type: !11)
!1330 = !DILocation(line: 0, scope: !1298)
!1331 = !DILocation(line: 2159, column: 3, scope: !1298)
!1332 = !DILocation(line: 2159, column: 12, scope: !1298)
!1333 = !DILocation(line: 2160, column: 17, scope: !1298)
!1334 = !DILocation(line: 2161, column: 17, scope: !1298)
!1335 = !DILocation(line: 2162, column: 17, scope: !1298)
!1336 = !DILocation(line: 2163, column: 17, scope: !1298)
!1337 = !DILocation(line: 2164, column: 17, scope: !1298)
!1338 = !DILocation(line: 2165, column: 32, scope: !1298)
!1339 = !DILocation(line: 2165, column: 3, scope: !1298)
!1340 = !DILocation(line: 2171, column: 16, scope: !1298)
!1341 = !{i64 0, i64 2}
!1342 = !DILocation(line: 2172, column: 17, scope: !1298)
!1343 = !DILocation(line: 2172, column: 52, scope: !1298)
!1344 = !DILocation(line: 2172, column: 57, scope: !1298)
!1345 = !DILocation(line: 2173, column: 21, scope: !1298)
!1346 = !DILocation(line: 2174, column: 17, scope: !1298)
!1347 = !DILocation(line: 2175, column: 17, scope: !1298)
!1348 = !DILocation(line: 2175, column: 53, scope: !1298)
!1349 = !DILocation(line: 2175, column: 58, scope: !1298)
!1350 = !DILocation(line: 2176, column: 21, scope: !1298)
!1351 = !DILocation(line: 2177, column: 17, scope: !1298)
!1352 = !DILocation(line: 2178, column: 17, scope: !1298)
!1353 = !DILocation(line: 2178, column: 53, scope: !1298)
!1354 = !DILocation(line: 2178, column: 58, scope: !1298)
!1355 = !DILocation(line: 2180, column: 17, scope: !1298)
!1356 = !DILocation(line: 2181, column: 17, scope: !1298)
!1357 = !DILocation(line: 2181, column: 53, scope: !1298)
!1358 = !DILocation(line: 2181, column: 58, scope: !1298)
!1359 = !DILocation(line: 2182, column: 21, scope: !1298)
!1360 = !DILocation(line: 2183, column: 17, scope: !1298)
!1361 = !DILocation(line: 2184, column: 17, scope: !1298)
!1362 = !DILocation(line: 2184, column: 53, scope: !1298)
!1363 = !DILocation(line: 2184, column: 58, scope: !1298)
!1364 = !DILocation(line: 2185, column: 3, scope: !1298)
!1365 = !DILocation(line: 2186, column: 3, scope: !1298)
!1366 = !DILocation(line: 2187, column: 1, scope: !1298)
!1367 = distinct !DISubprogram(name: "Hacl_Impl_BignumQ_Mul_div_248", scope: !1, file: !1, line: 2384, type: !1026, scopeLine: 2385, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !1368)
!1368 = !{!1369, !1370, !1371, !1372, !1373, !1374, !1375, !1376, !1377, !1378, !1379, !1380, !1381}
!1369 = !DILocalVariable(name: "out", arg: 1, scope: !1367, file: !1, line: 2384, type: !112)
!1370 = !DILocalVariable(name: "t", arg: 2, scope: !1367, file: !1, line: 2384, type: !112)
!1371 = !DILocalVariable(name: "x4", scope: !1367, file: !1, line: 2386, type: !11)
!1372 = !DILocalVariable(name: "x5", scope: !1367, file: !1, line: 2387, type: !11)
!1373 = !DILocalVariable(name: "x6", scope: !1367, file: !1, line: 2388, type: !11)
!1374 = !DILocalVariable(name: "x7", scope: !1367, file: !1, line: 2389, type: !11)
!1375 = !DILocalVariable(name: "x8", scope: !1367, file: !1, line: 2390, type: !11)
!1376 = !DILocalVariable(name: "x9", scope: !1367, file: !1, line: 2391, type: !11)
!1377 = !DILocalVariable(name: "z0", scope: !1367, file: !1, line: 2392, type: !11)
!1378 = !DILocalVariable(name: "z1", scope: !1367, file: !1, line: 2393, type: !11)
!1379 = !DILocalVariable(name: "z2", scope: !1367, file: !1, line: 2394, type: !11)
!1380 = !DILocalVariable(name: "z3", scope: !1367, file: !1, line: 2395, type: !11)
!1381 = !DILocalVariable(name: "z4", scope: !1367, file: !1, line: 2396, type: !11)
!1382 = !DILocation(line: 0, scope: !1367)
!1383 = !DILocation(line: 2386, column: 17, scope: !1367)
!1384 = !DILocation(line: 2387, column: 17, scope: !1367)
!1385 = !DILocation(line: 2388, column: 17, scope: !1367)
!1386 = !DILocation(line: 2389, column: 17, scope: !1367)
!1387 = !DILocation(line: 2390, column: 17, scope: !1367)
!1388 = !DILocation(line: 2391, column: 17, scope: !1367)
!1389 = !DILocation(line: 2392, column: 44, scope: !1367)
!1390 = !DILocation(line: 2392, column: 66, scope: !1367)
!1391 = !DILocation(line: 2392, column: 61, scope: !1367)
!1392 = !DILocation(line: 2393, column: 44, scope: !1367)
!1393 = !DILocation(line: 2393, column: 66, scope: !1367)
!1394 = !DILocation(line: 2393, column: 61, scope: !1367)
!1395 = !DILocation(line: 2394, column: 44, scope: !1367)
!1396 = !DILocation(line: 2394, column: 66, scope: !1367)
!1397 = !DILocation(line: 2394, column: 61, scope: !1367)
!1398 = !DILocation(line: 2395, column: 44, scope: !1367)
!1399 = !DILocation(line: 2395, column: 66, scope: !1367)
!1400 = !DILocation(line: 2395, column: 61, scope: !1367)
!1401 = !DILocation(line: 2396, column: 44, scope: !1367)
!1402 = !DILocation(line: 2396, column: 66, scope: !1367)
!1403 = !DILocation(line: 2396, column: 61, scope: !1367)
!1404 = !DILocation(line: 2397, column: 3, scope: !1367)
!1405 = !DILocation(line: 2398, column: 1, scope: !1367)
!1406 = distinct !DISubprogram(name: "Hacl_Impl_BignumQ_Mul_mul_5", scope: !1, file: !1, line: 2249, type: !1407, scopeLine: 2250, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !1409)
!1407 = !DISubroutineType(types: !1408)
!1408 = !{null, !1262, !112, !112}
!1409 = !{!1410, !1411, !1412, !1413, !1414, !1415, !1416, !1417, !1418, !1419, !1420, !1421, !1422, !1423, !1424, !1425, !1426, !1427, !1428, !1429, !1430, !1431, !1432, !1433, !1434, !1435, !1436, !1437, !1438, !1439, !1440, !1441, !1442, !1443, !1444, !1445, !1446, !1447, !1448, !1449, !1450, !1451, !1452, !1453, !1454, !1455, !1456}
!1410 = !DILocalVariable(name: "z", arg: 1, scope: !1406, file: !1, line: 2249, type: !1262)
!1411 = !DILocalVariable(name: "x", arg: 2, scope: !1406, file: !1, line: 2249, type: !112)
!1412 = !DILocalVariable(name: "y", arg: 3, scope: !1406, file: !1, line: 2249, type: !112)
!1413 = !DILocalVariable(name: "x0", scope: !1406, file: !1, line: 2251, type: !11)
!1414 = !DILocalVariable(name: "x1", scope: !1406, file: !1, line: 2252, type: !11)
!1415 = !DILocalVariable(name: "x2", scope: !1406, file: !1, line: 2253, type: !11)
!1416 = !DILocalVariable(name: "x3", scope: !1406, file: !1, line: 2254, type: !11)
!1417 = !DILocalVariable(name: "x4", scope: !1406, file: !1, line: 2255, type: !11)
!1418 = !DILocalVariable(name: "y0", scope: !1406, file: !1, line: 2256, type: !11)
!1419 = !DILocalVariable(name: "y1", scope: !1406, file: !1, line: 2257, type: !11)
!1420 = !DILocalVariable(name: "y2", scope: !1406, file: !1, line: 2258, type: !11)
!1421 = !DILocalVariable(name: "y3", scope: !1406, file: !1, line: 2259, type: !11)
!1422 = !DILocalVariable(name: "y4", scope: !1406, file: !1, line: 2260, type: !11)
!1423 = !DILocalVariable(name: "xy00", scope: !1406, file: !1, line: 2261, type: !592)
!1424 = !DILocalVariable(name: "xy01", scope: !1406, file: !1, line: 2262, type: !592)
!1425 = !DILocalVariable(name: "xy02", scope: !1406, file: !1, line: 2263, type: !592)
!1426 = !DILocalVariable(name: "xy03", scope: !1406, file: !1, line: 2264, type: !592)
!1427 = !DILocalVariable(name: "xy04", scope: !1406, file: !1, line: 2265, type: !592)
!1428 = !DILocalVariable(name: "xy10", scope: !1406, file: !1, line: 2266, type: !592)
!1429 = !DILocalVariable(name: "xy11", scope: !1406, file: !1, line: 2267, type: !592)
!1430 = !DILocalVariable(name: "xy12", scope: !1406, file: !1, line: 2268, type: !592)
!1431 = !DILocalVariable(name: "xy13", scope: !1406, file: !1, line: 2269, type: !592)
!1432 = !DILocalVariable(name: "xy14", scope: !1406, file: !1, line: 2270, type: !592)
!1433 = !DILocalVariable(name: "xy20", scope: !1406, file: !1, line: 2271, type: !592)
!1434 = !DILocalVariable(name: "xy21", scope: !1406, file: !1, line: 2272, type: !592)
!1435 = !DILocalVariable(name: "xy22", scope: !1406, file: !1, line: 2273, type: !592)
!1436 = !DILocalVariable(name: "xy23", scope: !1406, file: !1, line: 2274, type: !592)
!1437 = !DILocalVariable(name: "xy24", scope: !1406, file: !1, line: 2275, type: !592)
!1438 = !DILocalVariable(name: "xy30", scope: !1406, file: !1, line: 2276, type: !592)
!1439 = !DILocalVariable(name: "xy31", scope: !1406, file: !1, line: 2277, type: !592)
!1440 = !DILocalVariable(name: "xy32", scope: !1406, file: !1, line: 2278, type: !592)
!1441 = !DILocalVariable(name: "xy33", scope: !1406, file: !1, line: 2279, type: !592)
!1442 = !DILocalVariable(name: "xy34", scope: !1406, file: !1, line: 2280, type: !592)
!1443 = !DILocalVariable(name: "xy40", scope: !1406, file: !1, line: 2281, type: !592)
!1444 = !DILocalVariable(name: "xy41", scope: !1406, file: !1, line: 2282, type: !592)
!1445 = !DILocalVariable(name: "xy42", scope: !1406, file: !1, line: 2283, type: !592)
!1446 = !DILocalVariable(name: "xy43", scope: !1406, file: !1, line: 2284, type: !592)
!1447 = !DILocalVariable(name: "xy44", scope: !1406, file: !1, line: 2285, type: !592)
!1448 = !DILocalVariable(name: "z0", scope: !1406, file: !1, line: 2286, type: !592)
!1449 = !DILocalVariable(name: "z1", scope: !1406, file: !1, line: 2287, type: !592)
!1450 = !DILocalVariable(name: "z2", scope: !1406, file: !1, line: 2288, type: !592)
!1451 = !DILocalVariable(name: "z3", scope: !1406, file: !1, line: 2290, type: !592)
!1452 = !DILocalVariable(name: "z4", scope: !1406, file: !1, line: 2292, type: !592)
!1453 = !DILocalVariable(name: "z5", scope: !1406, file: !1, line: 2297, type: !592)
!1454 = !DILocalVariable(name: "z6", scope: !1406, file: !1, line: 2298, type: !592)
!1455 = !DILocalVariable(name: "z7", scope: !1406, file: !1, line: 2299, type: !592)
!1456 = !DILocalVariable(name: "z8", scope: !1406, file: !1, line: 2300, type: !592)
!1457 = !DILocation(line: 0, scope: !1406)
!1458 = !DILocation(line: 2251, column: 17, scope: !1406)
!1459 = !DILocation(line: 2252, column: 17, scope: !1406)
!1460 = !DILocation(line: 2253, column: 17, scope: !1406)
!1461 = !DILocation(line: 2254, column: 17, scope: !1406)
!1462 = !DILocation(line: 2255, column: 17, scope: !1406)
!1463 = !DILocation(line: 2256, column: 17, scope: !1406)
!1464 = !DILocation(line: 2257, column: 17, scope: !1406)
!1465 = !DILocation(line: 2258, column: 17, scope: !1406)
!1466 = !DILocation(line: 2259, column: 17, scope: !1406)
!1467 = !DILocation(line: 2260, column: 17, scope: !1406)
!1468 = !DILocation(line: 2261, column: 3, scope: !1406)
!1469 = !DILocation(line: 2261, column: 19, scope: !1406)
!1470 = !DILocation(line: 2261, column: 26, scope: !1406)
!1471 = !DILocation(line: 2262, column: 3, scope: !1406)
!1472 = !DILocation(line: 2262, column: 19, scope: !1406)
!1473 = !DILocation(line: 2262, column: 26, scope: !1406)
!1474 = !DILocation(line: 2263, column: 3, scope: !1406)
!1475 = !DILocation(line: 2263, column: 19, scope: !1406)
!1476 = !DILocation(line: 2263, column: 26, scope: !1406)
!1477 = !DILocation(line: 2264, column: 3, scope: !1406)
!1478 = !DILocation(line: 2264, column: 19, scope: !1406)
!1479 = !DILocation(line: 2264, column: 26, scope: !1406)
!1480 = !DILocation(line: 2265, column: 3, scope: !1406)
!1481 = !DILocation(line: 2265, column: 19, scope: !1406)
!1482 = !DILocation(line: 2265, column: 26, scope: !1406)
!1483 = !DILocation(line: 2266, column: 3, scope: !1406)
!1484 = !DILocation(line: 2266, column: 19, scope: !1406)
!1485 = !DILocation(line: 2266, column: 26, scope: !1406)
!1486 = !DILocation(line: 2267, column: 3, scope: !1406)
!1487 = !DILocation(line: 2267, column: 19, scope: !1406)
!1488 = !DILocation(line: 2267, column: 26, scope: !1406)
!1489 = !DILocation(line: 2268, column: 3, scope: !1406)
!1490 = !DILocation(line: 2268, column: 19, scope: !1406)
!1491 = !DILocation(line: 2268, column: 26, scope: !1406)
!1492 = !DILocation(line: 2269, column: 3, scope: !1406)
!1493 = !DILocation(line: 2269, column: 19, scope: !1406)
!1494 = !DILocation(line: 2269, column: 26, scope: !1406)
!1495 = !DILocation(line: 2270, column: 3, scope: !1406)
!1496 = !DILocation(line: 2270, column: 19, scope: !1406)
!1497 = !DILocation(line: 2270, column: 26, scope: !1406)
!1498 = !DILocation(line: 2271, column: 3, scope: !1406)
!1499 = !DILocation(line: 2271, column: 19, scope: !1406)
!1500 = !DILocation(line: 2271, column: 26, scope: !1406)
!1501 = !DILocation(line: 2272, column: 3, scope: !1406)
!1502 = !DILocation(line: 2272, column: 19, scope: !1406)
!1503 = !DILocation(line: 2272, column: 26, scope: !1406)
!1504 = !DILocation(line: 2273, column: 3, scope: !1406)
!1505 = !DILocation(line: 2273, column: 19, scope: !1406)
!1506 = !DILocation(line: 2273, column: 26, scope: !1406)
!1507 = !DILocation(line: 2274, column: 3, scope: !1406)
!1508 = !DILocation(line: 2274, column: 19, scope: !1406)
!1509 = !DILocation(line: 2274, column: 26, scope: !1406)
!1510 = !DILocation(line: 2275, column: 3, scope: !1406)
!1511 = !DILocation(line: 2275, column: 19, scope: !1406)
!1512 = !DILocation(line: 2275, column: 26, scope: !1406)
!1513 = !DILocation(line: 2276, column: 3, scope: !1406)
!1514 = !DILocation(line: 2276, column: 19, scope: !1406)
!1515 = !DILocation(line: 2276, column: 26, scope: !1406)
!1516 = !DILocation(line: 2277, column: 3, scope: !1406)
!1517 = !DILocation(line: 2277, column: 19, scope: !1406)
!1518 = !DILocation(line: 2277, column: 26, scope: !1406)
!1519 = !DILocation(line: 2278, column: 3, scope: !1406)
!1520 = !DILocation(line: 2278, column: 19, scope: !1406)
!1521 = !DILocation(line: 2278, column: 26, scope: !1406)
!1522 = !DILocation(line: 2279, column: 3, scope: !1406)
!1523 = !DILocation(line: 2279, column: 19, scope: !1406)
!1524 = !DILocation(line: 2279, column: 26, scope: !1406)
!1525 = !DILocation(line: 2280, column: 3, scope: !1406)
!1526 = !DILocation(line: 2280, column: 19, scope: !1406)
!1527 = !DILocation(line: 2280, column: 26, scope: !1406)
!1528 = !DILocation(line: 2281, column: 3, scope: !1406)
!1529 = !DILocation(line: 2281, column: 19, scope: !1406)
!1530 = !DILocation(line: 2281, column: 26, scope: !1406)
!1531 = !DILocation(line: 2282, column: 3, scope: !1406)
!1532 = !DILocation(line: 2282, column: 19, scope: !1406)
!1533 = !DILocation(line: 2282, column: 26, scope: !1406)
!1534 = !DILocation(line: 2283, column: 3, scope: !1406)
!1535 = !DILocation(line: 2283, column: 19, scope: !1406)
!1536 = !DILocation(line: 2283, column: 26, scope: !1406)
!1537 = !DILocation(line: 2284, column: 3, scope: !1406)
!1538 = !DILocation(line: 2284, column: 19, scope: !1406)
!1539 = !DILocation(line: 2284, column: 26, scope: !1406)
!1540 = !DILocation(line: 2285, column: 3, scope: !1406)
!1541 = !DILocation(line: 2285, column: 19, scope: !1406)
!1542 = !DILocation(line: 2285, column: 26, scope: !1406)
!1543 = !DILocation(line: 2286, column: 24, scope: !1406)
!1544 = !{i64 0, i64 8, !181}
!1545 = !DILocation(line: 2287, column: 3, scope: !1406)
!1546 = !DILocation(line: 2287, column: 19, scope: !1406)
!1547 = !DILocation(line: 2287, column: 24, scope: !1406)
!1548 = !DILocation(line: 2288, column: 3, scope: !1406)
!1549 = !DILocation(line: 2288, column: 19, scope: !1406)
!1550 = !DILocation(line: 2288, column: 42, scope: !1406)
!1551 = !DILocation(line: 2288, column: 24, scope: !1406)
!1552 = !DILocation(line: 2289, column: 3, scope: !1406)
!1553 = !DILocation(line: 2290, column: 3, scope: !1406)
!1554 = !DILocation(line: 2290, column: 44, scope: !1406)
!1555 = !DILocation(line: 2290, column: 26, scope: !1406)
!1556 = !DILocation(line: 2290, column: 8, scope: !1406)
!1557 = !DILocation(line: 2291, column: 3, scope: !1406)
!1558 = !DILocation(line: 2292, column: 3, scope: !1406)
!1559 = !DILocation(line: 2293, column: 59, scope: !1406)
!1560 = !DILocation(line: 2293, column: 41, scope: !1406)
!1561 = !DILocation(line: 2293, column: 23, scope: !1406)
!1562 = !DILocation(line: 2293, column: 5, scope: !1406)
!1563 = !DILocation(line: 2296, column: 3, scope: !1406)
!1564 = !DILocation(line: 2297, column: 3, scope: !1406)
!1565 = !DILocation(line: 2297, column: 44, scope: !1406)
!1566 = !DILocation(line: 2297, column: 26, scope: !1406)
!1567 = !DILocation(line: 2297, column: 8, scope: !1406)
!1568 = !DILocation(line: 2298, column: 3, scope: !1406)
!1569 = !DILocation(line: 2298, column: 19, scope: !1406)
!1570 = !DILocation(line: 2298, column: 42, scope: !1406)
!1571 = !DILocation(line: 2298, column: 24, scope: !1406)
!1572 = !DILocation(line: 2299, column: 3, scope: !1406)
!1573 = !DILocation(line: 2299, column: 19, scope: !1406)
!1574 = !DILocation(line: 2299, column: 24, scope: !1406)
!1575 = !DILocation(line: 2300, column: 24, scope: !1406)
!1576 = !DILocation(line: 2301, column: 3, scope: !1406)
!1577 = !DILocation(line: 2302, column: 1, scope: !1406)
!1578 = distinct !DISubprogram(name: "Hacl_Impl_BignumQ_Mul_carry", scope: !1, file: !1, line: 2304, type: !1579, scopeLine: 2305, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !1581)
!1579 = !DISubroutineType(types: !1580)
!1580 = !{null, !112, !1262}
!1581 = !{!1582, !1583, !1584, !1585, !1586, !1587, !1588, !1589, !1590, !1591, !1592, !1593, !1594, !1595, !1596, !1597, !1598, !1599, !1600, !1601, !1602, !1603, !1604, !1605, !1606, !1607, !1608, !1609, !1610, !1611, !1612, !1613, !1614, !1615, !1616, !1617, !1618, !1619, !1620, !1621, !1622, !1623, !1624, !1625, !1626, !1627, !1628, !1629, !1630, !1631, !1632, !1633, !1634, !1635, !1636, !1637, !1638, !1639, !1640, !1641, !1642, !1643, !1644, !1645, !1646, !1647}
!1582 = !DILocalVariable(name: "out", arg: 1, scope: !1578, file: !1, line: 2304, type: !112)
!1583 = !DILocalVariable(name: "z", arg: 2, scope: !1578, file: !1, line: 2304, type: !1262)
!1584 = !DILocalVariable(name: "z0", scope: !1578, file: !1, line: 2306, type: !592)
!1585 = !DILocalVariable(name: "z1", scope: !1578, file: !1, line: 2307, type: !592)
!1586 = !DILocalVariable(name: "z2", scope: !1578, file: !1, line: 2308, type: !592)
!1587 = !DILocalVariable(name: "z3", scope: !1578, file: !1, line: 2309, type: !592)
!1588 = !DILocalVariable(name: "z4", scope: !1578, file: !1, line: 2310, type: !592)
!1589 = !DILocalVariable(name: "z5", scope: !1578, file: !1, line: 2311, type: !592)
!1590 = !DILocalVariable(name: "z6", scope: !1578, file: !1, line: 2312, type: !592)
!1591 = !DILocalVariable(name: "z7", scope: !1578, file: !1, line: 2313, type: !592)
!1592 = !DILocalVariable(name: "z8", scope: !1578, file: !1, line: 2314, type: !592)
!1593 = !DILocalVariable(name: "x", scope: !1578, file: !1, line: 2315, type: !592)
!1594 = !DILocalVariable(name: "y", scope: !1578, file: !1, line: 2316, type: !592)
!1595 = !DILocalVariable(name: "carry1", scope: !1578, file: !1, line: 2317, type: !592)
!1596 = !DILocalVariable(name: "t", scope: !1578, file: !1, line: 2318, type: !11)
!1597 = !DILocalVariable(name: "x0", scope: !1578, file: !1, line: 2319, type: !11)
!1598 = !DILocalVariable(name: "z1_", scope: !1578, file: !1, line: 2320, type: !592)
!1599 = !DILocalVariable(name: "x1", scope: !1578, file: !1, line: 2321, type: !592)
!1600 = !DILocalVariable(name: "y1", scope: !1578, file: !1, line: 2322, type: !592)
!1601 = !DILocalVariable(name: "carry2", scope: !1578, file: !1, line: 2323, type: !592)
!1602 = !DILocalVariable(name: "t1", scope: !1578, file: !1, line: 2324, type: !11)
!1603 = !DILocalVariable(name: "x11", scope: !1578, file: !1, line: 2325, type: !11)
!1604 = !DILocalVariable(name: "z2_", scope: !1578, file: !1, line: 2326, type: !592)
!1605 = !DILocalVariable(name: "x2", scope: !1578, file: !1, line: 2327, type: !592)
!1606 = !DILocalVariable(name: "y2", scope: !1578, file: !1, line: 2328, type: !592)
!1607 = !DILocalVariable(name: "carry3", scope: !1578, file: !1, line: 2329, type: !592)
!1608 = !DILocalVariable(name: "t2", scope: !1578, file: !1, line: 2330, type: !11)
!1609 = !DILocalVariable(name: "x21", scope: !1578, file: !1, line: 2331, type: !11)
!1610 = !DILocalVariable(name: "z3_", scope: !1578, file: !1, line: 2332, type: !592)
!1611 = !DILocalVariable(name: "x3", scope: !1578, file: !1, line: 2333, type: !592)
!1612 = !DILocalVariable(name: "y3", scope: !1578, file: !1, line: 2334, type: !592)
!1613 = !DILocalVariable(name: "carry4", scope: !1578, file: !1, line: 2335, type: !592)
!1614 = !DILocalVariable(name: "t3", scope: !1578, file: !1, line: 2336, type: !11)
!1615 = !DILocalVariable(name: "x31", scope: !1578, file: !1, line: 2337, type: !11)
!1616 = !DILocalVariable(name: "z4_", scope: !1578, file: !1, line: 2338, type: !592)
!1617 = !DILocalVariable(name: "x4", scope: !1578, file: !1, line: 2339, type: !592)
!1618 = !DILocalVariable(name: "y4", scope: !1578, file: !1, line: 2340, type: !592)
!1619 = !DILocalVariable(name: "carry5", scope: !1578, file: !1, line: 2341, type: !592)
!1620 = !DILocalVariable(name: "t4", scope: !1578, file: !1, line: 2342, type: !11)
!1621 = !DILocalVariable(name: "x41", scope: !1578, file: !1, line: 2343, type: !11)
!1622 = !DILocalVariable(name: "z5_", scope: !1578, file: !1, line: 2344, type: !592)
!1623 = !DILocalVariable(name: "x5", scope: !1578, file: !1, line: 2345, type: !592)
!1624 = !DILocalVariable(name: "y5", scope: !1578, file: !1, line: 2346, type: !592)
!1625 = !DILocalVariable(name: "carry6", scope: !1578, file: !1, line: 2347, type: !592)
!1626 = !DILocalVariable(name: "t5", scope: !1578, file: !1, line: 2348, type: !11)
!1627 = !DILocalVariable(name: "x51", scope: !1578, file: !1, line: 2349, type: !11)
!1628 = !DILocalVariable(name: "z6_", scope: !1578, file: !1, line: 2350, type: !592)
!1629 = !DILocalVariable(name: "x6", scope: !1578, file: !1, line: 2351, type: !592)
!1630 = !DILocalVariable(name: "y6", scope: !1578, file: !1, line: 2352, type: !592)
!1631 = !DILocalVariable(name: "carry7", scope: !1578, file: !1, line: 2353, type: !592)
!1632 = !DILocalVariable(name: "t6", scope: !1578, file: !1, line: 2354, type: !11)
!1633 = !DILocalVariable(name: "x61", scope: !1578, file: !1, line: 2355, type: !11)
!1634 = !DILocalVariable(name: "z7_", scope: !1578, file: !1, line: 2356, type: !592)
!1635 = !DILocalVariable(name: "x7", scope: !1578, file: !1, line: 2357, type: !592)
!1636 = !DILocalVariable(name: "y7", scope: !1578, file: !1, line: 2358, type: !592)
!1637 = !DILocalVariable(name: "carry8", scope: !1578, file: !1, line: 2359, type: !592)
!1638 = !DILocalVariable(name: "t7", scope: !1578, file: !1, line: 2360, type: !11)
!1639 = !DILocalVariable(name: "x71", scope: !1578, file: !1, line: 2361, type: !11)
!1640 = !DILocalVariable(name: "z8_", scope: !1578, file: !1, line: 2362, type: !592)
!1641 = !DILocalVariable(name: "x8", scope: !1578, file: !1, line: 2363, type: !592)
!1642 = !DILocalVariable(name: "y8", scope: !1578, file: !1, line: 2364, type: !592)
!1643 = !DILocalVariable(name: "carry9", scope: !1578, file: !1, line: 2365, type: !592)
!1644 = !DILocalVariable(name: "t8", scope: !1578, file: !1, line: 2366, type: !11)
!1645 = !DILocalVariable(name: "x81", scope: !1578, file: !1, line: 2367, type: !11)
!1646 = !DILocalVariable(name: "z9_", scope: !1578, file: !1, line: 2368, type: !592)
!1647 = !DILocalVariable(name: "x9", scope: !1578, file: !1, line: 2369, type: !11)
!1648 = !DILocation(line: 0, scope: !1578)
!1649 = !DILocation(line: 2306, column: 24, scope: !1578)
!1650 = !DILocation(line: 2307, column: 24, scope: !1578)
!1651 = !DILocation(line: 2308, column: 24, scope: !1578)
!1652 = !DILocation(line: 2309, column: 24, scope: !1578)
!1653 = !DILocation(line: 2310, column: 24, scope: !1578)
!1654 = !DILocation(line: 2311, column: 24, scope: !1578)
!1655 = !DILocation(line: 2312, column: 24, scope: !1578)
!1656 = !DILocation(line: 2313, column: 24, scope: !1578)
!1657 = !DILocation(line: 2314, column: 24, scope: !1578)
!1658 = !DILocation(line: 2317, column: 3, scope: !1578)
!1659 = !DILocation(line: 2317, column: 19, scope: !1578)
!1660 = !DILocation(line: 2317, column: 28, scope: !1578)
!1661 = !DILocation(line: 2318, column: 16, scope: !1578)
!1662 = !DILocation(line: 2318, column: 51, scope: !1578)
!1663 = !DILocation(line: 2320, column: 3, scope: !1578)
!1664 = !DILocation(line: 2320, column: 19, scope: !1578)
!1665 = !DILocation(line: 2320, column: 25, scope: !1578)
!1666 = !DILocation(line: 2321, column: 24, scope: !1578)
!1667 = !DILocation(line: 2323, column: 3, scope: !1578)
!1668 = !DILocation(line: 2323, column: 19, scope: !1578)
!1669 = !DILocation(line: 2323, column: 28, scope: !1578)
!1670 = !DILocation(line: 2324, column: 17, scope: !1578)
!1671 = !DILocation(line: 2324, column: 53, scope: !1578)
!1672 = !DILocation(line: 2326, column: 3, scope: !1578)
!1673 = !DILocation(line: 2326, column: 19, scope: !1578)
!1674 = !DILocation(line: 2326, column: 25, scope: !1578)
!1675 = !DILocation(line: 2327, column: 24, scope: !1578)
!1676 = !DILocation(line: 2329, column: 3, scope: !1578)
!1677 = !DILocation(line: 2329, column: 19, scope: !1578)
!1678 = !DILocation(line: 2329, column: 28, scope: !1578)
!1679 = !DILocation(line: 2330, column: 17, scope: !1578)
!1680 = !DILocation(line: 2330, column: 53, scope: !1578)
!1681 = !DILocation(line: 2332, column: 3, scope: !1578)
!1682 = !DILocation(line: 2332, column: 19, scope: !1578)
!1683 = !DILocation(line: 2332, column: 25, scope: !1578)
!1684 = !DILocation(line: 2333, column: 24, scope: !1578)
!1685 = !DILocation(line: 2335, column: 3, scope: !1578)
!1686 = !DILocation(line: 2335, column: 19, scope: !1578)
!1687 = !DILocation(line: 2335, column: 28, scope: !1578)
!1688 = !DILocation(line: 2336, column: 17, scope: !1578)
!1689 = !DILocation(line: 2336, column: 53, scope: !1578)
!1690 = !DILocation(line: 2338, column: 3, scope: !1578)
!1691 = !DILocation(line: 2338, column: 19, scope: !1578)
!1692 = !DILocation(line: 2338, column: 25, scope: !1578)
!1693 = !DILocation(line: 2339, column: 24, scope: !1578)
!1694 = !DILocation(line: 2341, column: 3, scope: !1578)
!1695 = !DILocation(line: 2341, column: 19, scope: !1578)
!1696 = !DILocation(line: 2341, column: 28, scope: !1578)
!1697 = !DILocation(line: 2342, column: 17, scope: !1578)
!1698 = !DILocation(line: 2342, column: 53, scope: !1578)
!1699 = !DILocation(line: 2344, column: 3, scope: !1578)
!1700 = !DILocation(line: 2344, column: 19, scope: !1578)
!1701 = !DILocation(line: 2344, column: 25, scope: !1578)
!1702 = !DILocation(line: 2345, column: 24, scope: !1578)
!1703 = !DILocation(line: 2347, column: 3, scope: !1578)
!1704 = !DILocation(line: 2347, column: 19, scope: !1578)
!1705 = !DILocation(line: 2347, column: 28, scope: !1578)
!1706 = !DILocation(line: 2348, column: 17, scope: !1578)
!1707 = !DILocation(line: 2348, column: 53, scope: !1578)
!1708 = !DILocation(line: 2350, column: 3, scope: !1578)
!1709 = !DILocation(line: 2350, column: 19, scope: !1578)
!1710 = !DILocation(line: 2350, column: 25, scope: !1578)
!1711 = !DILocation(line: 2351, column: 24, scope: !1578)
!1712 = !DILocation(line: 2353, column: 3, scope: !1578)
!1713 = !DILocation(line: 2353, column: 19, scope: !1578)
!1714 = !DILocation(line: 2353, column: 28, scope: !1578)
!1715 = !DILocation(line: 2354, column: 17, scope: !1578)
!1716 = !DILocation(line: 2354, column: 53, scope: !1578)
!1717 = !DILocation(line: 2356, column: 3, scope: !1578)
!1718 = !DILocation(line: 2356, column: 19, scope: !1578)
!1719 = !DILocation(line: 2356, column: 25, scope: !1578)
!1720 = !DILocation(line: 2357, column: 24, scope: !1578)
!1721 = !DILocation(line: 2359, column: 3, scope: !1578)
!1722 = !DILocation(line: 2359, column: 19, scope: !1578)
!1723 = !DILocation(line: 2359, column: 28, scope: !1578)
!1724 = !DILocation(line: 2360, column: 17, scope: !1578)
!1725 = !DILocation(line: 2360, column: 53, scope: !1578)
!1726 = !DILocation(line: 2362, column: 3, scope: !1578)
!1727 = !DILocation(line: 2362, column: 19, scope: !1578)
!1728 = !DILocation(line: 2362, column: 25, scope: !1578)
!1729 = !DILocation(line: 2363, column: 24, scope: !1578)
!1730 = !DILocation(line: 2364, column: 3, scope: !1578)
!1731 = !DILocation(line: 2364, column: 19, scope: !1578)
!1732 = !DILocation(line: 2364, column: 24, scope: !1578)
!1733 = !DILocation(line: 2365, column: 3, scope: !1578)
!1734 = !DILocation(line: 2365, column: 19, scope: !1578)
!1735 = !DILocation(line: 2365, column: 28, scope: !1578)
!1736 = !DILocation(line: 2366, column: 17, scope: !1578)
!1737 = !DILocation(line: 2366, column: 53, scope: !1578)
!1738 = !DILocation(line: 2368, column: 3, scope: !1578)
!1739 = !DILocation(line: 2368, column: 19, scope: !1578)
!1740 = !DILocation(line: 2368, column: 25, scope: !1578)
!1741 = !DILocation(line: 2369, column: 17, scope: !1578)
!1742 = !DILocation(line: 2370, column: 3, scope: !1578)
!1743 = !DILocation(line: 2371, column: 1, scope: !1578)
!1744 = distinct !DISubprogram(name: "Hacl_Impl_BignumQ_Mul_div_264", scope: !1, file: !1, line: 2400, type: !1026, scopeLine: 2401, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !1745)
!1745 = !{!1746, !1747, !1748, !1749, !1750, !1751, !1752, !1753, !1754, !1755, !1756, !1757, !1758}
!1746 = !DILocalVariable(name: "out", arg: 1, scope: !1744, file: !1, line: 2400, type: !112)
!1747 = !DILocalVariable(name: "t", arg: 2, scope: !1744, file: !1, line: 2400, type: !112)
!1748 = !DILocalVariable(name: "x4", scope: !1744, file: !1, line: 2402, type: !11)
!1749 = !DILocalVariable(name: "x5", scope: !1744, file: !1, line: 2403, type: !11)
!1750 = !DILocalVariable(name: "x6", scope: !1744, file: !1, line: 2404, type: !11)
!1751 = !DILocalVariable(name: "x7", scope: !1744, file: !1, line: 2405, type: !11)
!1752 = !DILocalVariable(name: "x8", scope: !1744, file: !1, line: 2406, type: !11)
!1753 = !DILocalVariable(name: "x9", scope: !1744, file: !1, line: 2407, type: !11)
!1754 = !DILocalVariable(name: "z0", scope: !1744, file: !1, line: 2408, type: !11)
!1755 = !DILocalVariable(name: "z1", scope: !1744, file: !1, line: 2409, type: !11)
!1756 = !DILocalVariable(name: "z2", scope: !1744, file: !1, line: 2410, type: !11)
!1757 = !DILocalVariable(name: "z3", scope: !1744, file: !1, line: 2411, type: !11)
!1758 = !DILocalVariable(name: "z4", scope: !1744, file: !1, line: 2412, type: !11)
!1759 = !DILocation(line: 0, scope: !1744)
!1760 = !DILocation(line: 2402, column: 17, scope: !1744)
!1761 = !DILocation(line: 2403, column: 17, scope: !1744)
!1762 = !DILocation(line: 2404, column: 17, scope: !1744)
!1763 = !DILocation(line: 2405, column: 17, scope: !1744)
!1764 = !DILocation(line: 2406, column: 17, scope: !1744)
!1765 = !DILocation(line: 2407, column: 17, scope: !1744)
!1766 = !DILocation(line: 2408, column: 48, scope: !1744)
!1767 = !DILocation(line: 2408, column: 70, scope: !1744)
!1768 = !DILocation(line: 2408, column: 65, scope: !1744)
!1769 = !DILocation(line: 2409, column: 48, scope: !1744)
!1770 = !DILocation(line: 2409, column: 70, scope: !1744)
!1771 = !DILocation(line: 2409, column: 65, scope: !1744)
!1772 = !DILocation(line: 2410, column: 48, scope: !1744)
!1773 = !DILocation(line: 2410, column: 70, scope: !1744)
!1774 = !DILocation(line: 2410, column: 65, scope: !1744)
!1775 = !DILocation(line: 2411, column: 48, scope: !1744)
!1776 = !DILocation(line: 2411, column: 70, scope: !1744)
!1777 = !DILocation(line: 2411, column: 65, scope: !1744)
!1778 = !DILocation(line: 2412, column: 48, scope: !1744)
!1779 = !DILocation(line: 2412, column: 70, scope: !1744)
!1780 = !DILocation(line: 2412, column: 65, scope: !1744)
!1781 = !DILocation(line: 2413, column: 3, scope: !1744)
!1782 = !DILocation(line: 2414, column: 1, scope: !1744)
!1783 = distinct !DISubprogram(name: "Hacl_Lib_Create128_make_h128_9", scope: !1, file: !1, line: 2053, type: !1784, scopeLine: 2065, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !1786)
!1784 = !DISubroutineType(types: !1785)
!1785 = !{null, !1262, !592, !592, !592, !592, !592, !592, !592, !592, !592}
!1786 = !{!1787, !1788, !1789, !1790, !1791, !1792, !1793, !1794, !1795, !1796}
!1787 = !DILocalVariable(name: "b", arg: 1, scope: !1783, file: !1, line: 2054, type: !1262)
!1788 = !DILocalVariable(name: "s0", arg: 2, scope: !1783, file: !1, line: 2055, type: !592)
!1789 = !DILocalVariable(name: "s1", arg: 3, scope: !1783, file: !1, line: 2056, type: !592)
!1790 = !DILocalVariable(name: "s2", arg: 4, scope: !1783, file: !1, line: 2057, type: !592)
!1791 = !DILocalVariable(name: "s3", arg: 5, scope: !1783, file: !1, line: 2058, type: !592)
!1792 = !DILocalVariable(name: "s4", arg: 6, scope: !1783, file: !1, line: 2059, type: !592)
!1793 = !DILocalVariable(name: "s5", arg: 7, scope: !1783, file: !1, line: 2060, type: !592)
!1794 = !DILocalVariable(name: "s6", arg: 8, scope: !1783, file: !1, line: 2061, type: !592)
!1795 = !DILocalVariable(name: "s7", arg: 9, scope: !1783, file: !1, line: 2062, type: !592)
!1796 = !DILocalVariable(name: "s8", arg: 10, scope: !1783, file: !1, line: 2063, type: !592)
!1797 = !DILocation(line: 0, scope: !1783)
!1798 = !DILocation(line: 2066, column: 11, scope: !1783)
!1799 = !DILocation(line: 2067, column: 11, scope: !1783)
!1800 = !DILocation(line: 2068, column: 11, scope: !1783)
!1801 = !DILocation(line: 2069, column: 11, scope: !1783)
!1802 = !DILocation(line: 2070, column: 11, scope: !1783)
!1803 = !DILocation(line: 2071, column: 11, scope: !1783)
!1804 = !DILocation(line: 2072, column: 11, scope: !1783)
!1805 = !DILocation(line: 2073, column: 11, scope: !1783)
!1806 = !DILocation(line: 2074, column: 11, scope: !1783)
!1807 = !DILocation(line: 2075, column: 1, scope: !1783)
!1808 = !DISubprogram(name: "FStar_UInt128_shift_right", scope: !593, file: !593, line: 59, type: !839, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !841)
!1809 = !DISubprogram(name: "FStar_UInt128_uint128_to_uint64", scope: !593, file: !593, line: 67, type: !1810, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !841)
!1810 = !DISubroutineType(types: !1811)
!1811 = !{!11, !594}
!1812 = distinct !DISubprogram(name: "Hacl_Impl_BignumQ_Mul_mod_264", scope: !1, file: !1, line: 2373, type: !1026, scopeLine: 2374, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !1813)
!1813 = !{!1814, !1815, !1816, !1817, !1818, !1819, !1820, !1821}
!1814 = !DILocalVariable(name: "r", arg: 1, scope: !1812, file: !1, line: 2373, type: !112)
!1815 = !DILocalVariable(name: "t", arg: 2, scope: !1812, file: !1, line: 2373, type: !112)
!1816 = !DILocalVariable(name: "x0", scope: !1812, file: !1, line: 2375, type: !11)
!1817 = !DILocalVariable(name: "x1", scope: !1812, file: !1, line: 2376, type: !11)
!1818 = !DILocalVariable(name: "x2", scope: !1812, file: !1, line: 2377, type: !11)
!1819 = !DILocalVariable(name: "x3", scope: !1812, file: !1, line: 2378, type: !11)
!1820 = !DILocalVariable(name: "x4", scope: !1812, file: !1, line: 2379, type: !11)
!1821 = !DILocalVariable(name: "x4_", scope: !1812, file: !1, line: 2380, type: !11)
!1822 = !DILocation(line: 0, scope: !1812)
!1823 = !DILocation(line: 2375, column: 17, scope: !1812)
!1824 = !DILocation(line: 2376, column: 17, scope: !1812)
!1825 = !DILocation(line: 2377, column: 17, scope: !1812)
!1826 = !DILocation(line: 2378, column: 17, scope: !1812)
!1827 = !DILocation(line: 2379, column: 17, scope: !1812)
!1828 = !DILocation(line: 2380, column: 21, scope: !1812)
!1829 = !DILocation(line: 2381, column: 3, scope: !1812)
!1830 = !DILocation(line: 2382, column: 1, scope: !1812)
!1831 = distinct !DISubprogram(name: "Hacl_Impl_BignumQ_Mul_low_mul_5", scope: !1, file: !1, line: 2189, type: !1280, scopeLine: 2190, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !1832)
!1832 = !{!1833, !1834, !1835, !1836, !1837, !1838, !1839, !1840, !1841, !1842, !1843, !1844, !1845, !1846, !1847, !1848, !1849, !1850, !1851, !1852, !1853, !1854, !1855, !1856, !1857, !1858, !1859, !1860, !1861, !1862, !1863, !1864, !1865, !1866, !1867, !1868, !1869, !1870, !1871, !1872, !1873, !1874, !1875, !1876, !1877}
!1833 = !DILocalVariable(name: "z", arg: 1, scope: !1831, file: !1, line: 2189, type: !112)
!1834 = !DILocalVariable(name: "x", arg: 2, scope: !1831, file: !1, line: 2189, type: !112)
!1835 = !DILocalVariable(name: "y", arg: 3, scope: !1831, file: !1, line: 2189, type: !112)
!1836 = !DILocalVariable(name: "x0", scope: !1831, file: !1, line: 2191, type: !11)
!1837 = !DILocalVariable(name: "x1", scope: !1831, file: !1, line: 2192, type: !11)
!1838 = !DILocalVariable(name: "x2", scope: !1831, file: !1, line: 2193, type: !11)
!1839 = !DILocalVariable(name: "x3", scope: !1831, file: !1, line: 2194, type: !11)
!1840 = !DILocalVariable(name: "x4", scope: !1831, file: !1, line: 2195, type: !11)
!1841 = !DILocalVariable(name: "y0", scope: !1831, file: !1, line: 2196, type: !11)
!1842 = !DILocalVariable(name: "y1", scope: !1831, file: !1, line: 2197, type: !11)
!1843 = !DILocalVariable(name: "y2", scope: !1831, file: !1, line: 2198, type: !11)
!1844 = !DILocalVariable(name: "y3", scope: !1831, file: !1, line: 2199, type: !11)
!1845 = !DILocalVariable(name: "y4", scope: !1831, file: !1, line: 2200, type: !11)
!1846 = !DILocalVariable(name: "xy00", scope: !1831, file: !1, line: 2201, type: !592)
!1847 = !DILocalVariable(name: "xy01", scope: !1831, file: !1, line: 2202, type: !592)
!1848 = !DILocalVariable(name: "xy02", scope: !1831, file: !1, line: 2203, type: !592)
!1849 = !DILocalVariable(name: "xy03", scope: !1831, file: !1, line: 2204, type: !592)
!1850 = !DILocalVariable(name: "xy04", scope: !1831, file: !1, line: 2205, type: !592)
!1851 = !DILocalVariable(name: "xy10", scope: !1831, file: !1, line: 2206, type: !592)
!1852 = !DILocalVariable(name: "xy11", scope: !1831, file: !1, line: 2207, type: !592)
!1853 = !DILocalVariable(name: "xy12", scope: !1831, file: !1, line: 2208, type: !592)
!1854 = !DILocalVariable(name: "xy13", scope: !1831, file: !1, line: 2209, type: !592)
!1855 = !DILocalVariable(name: "xy20", scope: !1831, file: !1, line: 2210, type: !592)
!1856 = !DILocalVariable(name: "xy21", scope: !1831, file: !1, line: 2211, type: !592)
!1857 = !DILocalVariable(name: "xy22", scope: !1831, file: !1, line: 2212, type: !592)
!1858 = !DILocalVariable(name: "xy30", scope: !1831, file: !1, line: 2213, type: !592)
!1859 = !DILocalVariable(name: "xy31", scope: !1831, file: !1, line: 2214, type: !592)
!1860 = !DILocalVariable(name: "xy40", scope: !1831, file: !1, line: 2215, type: !592)
!1861 = !DILocalVariable(name: "x5", scope: !1831, file: !1, line: 2216, type: !592)
!1862 = !DILocalVariable(name: "carry1", scope: !1831, file: !1, line: 2217, type: !592)
!1863 = !DILocalVariable(name: "t", scope: !1831, file: !1, line: 2218, type: !11)
!1864 = !DILocalVariable(name: "t0", scope: !1831, file: !1, line: 2219, type: !11)
!1865 = !DILocalVariable(name: "x6", scope: !1831, file: !1, line: 2220, type: !592)
!1866 = !DILocalVariable(name: "carry2", scope: !1831, file: !1, line: 2221, type: !592)
!1867 = !DILocalVariable(name: "t1", scope: !1831, file: !1, line: 2222, type: !11)
!1868 = !DILocalVariable(name: "t11", scope: !1831, file: !1, line: 2223, type: !11)
!1869 = !DILocalVariable(name: "x7", scope: !1831, file: !1, line: 2225, type: !592)
!1870 = !DILocalVariable(name: "carry3", scope: !1831, file: !1, line: 2226, type: !592)
!1871 = !DILocalVariable(name: "t2", scope: !1831, file: !1, line: 2227, type: !11)
!1872 = !DILocalVariable(name: "t21", scope: !1831, file: !1, line: 2228, type: !11)
!1873 = !DILocalVariable(name: "x8", scope: !1831, file: !1, line: 2230, type: !592)
!1874 = !DILocalVariable(name: "carry4", scope: !1831, file: !1, line: 2234, type: !592)
!1875 = !DILocalVariable(name: "t3", scope: !1831, file: !1, line: 2235, type: !11)
!1876 = !DILocalVariable(name: "t31", scope: !1831, file: !1, line: 2236, type: !11)
!1877 = !DILocalVariable(name: "t4", scope: !1831, file: !1, line: 2238, type: !11)
!1878 = !DILocation(line: 0, scope: !1831)
!1879 = !DILocation(line: 2191, column: 17, scope: !1831)
!1880 = !DILocation(line: 2192, column: 17, scope: !1831)
!1881 = !DILocation(line: 2193, column: 17, scope: !1831)
!1882 = !DILocation(line: 2194, column: 17, scope: !1831)
!1883 = !DILocation(line: 2195, column: 17, scope: !1831)
!1884 = !DILocation(line: 2196, column: 17, scope: !1831)
!1885 = !DILocation(line: 2197, column: 17, scope: !1831)
!1886 = !DILocation(line: 2198, column: 17, scope: !1831)
!1887 = !DILocation(line: 2199, column: 17, scope: !1831)
!1888 = !DILocation(line: 2200, column: 17, scope: !1831)
!1889 = !DILocation(line: 2201, column: 3, scope: !1831)
!1890 = !DILocation(line: 2201, column: 19, scope: !1831)
!1891 = !DILocation(line: 2201, column: 26, scope: !1831)
!1892 = !DILocation(line: 2202, column: 3, scope: !1831)
!1893 = !DILocation(line: 2202, column: 19, scope: !1831)
!1894 = !DILocation(line: 2202, column: 26, scope: !1831)
!1895 = !DILocation(line: 2203, column: 3, scope: !1831)
!1896 = !DILocation(line: 2203, column: 19, scope: !1831)
!1897 = !DILocation(line: 2203, column: 26, scope: !1831)
!1898 = !DILocation(line: 2204, column: 3, scope: !1831)
!1899 = !DILocation(line: 2204, column: 19, scope: !1831)
!1900 = !DILocation(line: 2204, column: 26, scope: !1831)
!1901 = !DILocation(line: 2205, column: 3, scope: !1831)
!1902 = !DILocation(line: 2205, column: 19, scope: !1831)
!1903 = !DILocation(line: 2205, column: 26, scope: !1831)
!1904 = !DILocation(line: 2206, column: 3, scope: !1831)
!1905 = !DILocation(line: 2206, column: 19, scope: !1831)
!1906 = !DILocation(line: 2206, column: 26, scope: !1831)
!1907 = !DILocation(line: 2207, column: 3, scope: !1831)
!1908 = !DILocation(line: 2207, column: 19, scope: !1831)
!1909 = !DILocation(line: 2207, column: 26, scope: !1831)
!1910 = !DILocation(line: 2208, column: 3, scope: !1831)
!1911 = !DILocation(line: 2208, column: 19, scope: !1831)
!1912 = !DILocation(line: 2208, column: 26, scope: !1831)
!1913 = !DILocation(line: 2209, column: 3, scope: !1831)
!1914 = !DILocation(line: 2209, column: 19, scope: !1831)
!1915 = !DILocation(line: 2209, column: 26, scope: !1831)
!1916 = !DILocation(line: 2210, column: 3, scope: !1831)
!1917 = !DILocation(line: 2210, column: 19, scope: !1831)
!1918 = !DILocation(line: 2210, column: 26, scope: !1831)
!1919 = !DILocation(line: 2211, column: 3, scope: !1831)
!1920 = !DILocation(line: 2211, column: 19, scope: !1831)
!1921 = !DILocation(line: 2211, column: 26, scope: !1831)
!1922 = !DILocation(line: 2212, column: 3, scope: !1831)
!1923 = !DILocation(line: 2212, column: 19, scope: !1831)
!1924 = !DILocation(line: 2212, column: 26, scope: !1831)
!1925 = !DILocation(line: 2213, column: 3, scope: !1831)
!1926 = !DILocation(line: 2213, column: 19, scope: !1831)
!1927 = !DILocation(line: 2213, column: 26, scope: !1831)
!1928 = !DILocation(line: 2214, column: 3, scope: !1831)
!1929 = !DILocation(line: 2214, column: 19, scope: !1831)
!1930 = !DILocation(line: 2214, column: 26, scope: !1831)
!1931 = !DILocation(line: 2215, column: 3, scope: !1831)
!1932 = !DILocation(line: 2215, column: 19, scope: !1831)
!1933 = !DILocation(line: 2215, column: 26, scope: !1831)
!1934 = !DILocation(line: 2216, column: 24, scope: !1831)
!1935 = !DILocation(line: 2217, column: 3, scope: !1831)
!1936 = !DILocation(line: 2217, column: 19, scope: !1831)
!1937 = !DILocation(line: 2217, column: 28, scope: !1831)
!1938 = !DILocation(line: 2218, column: 16, scope: !1831)
!1939 = !DILocation(line: 2218, column: 52, scope: !1831)
!1940 = !DILocation(line: 2220, column: 3, scope: !1831)
!1941 = !DILocation(line: 2220, column: 19, scope: !1831)
!1942 = !DILocation(line: 2220, column: 42, scope: !1831)
!1943 = !DILocation(line: 2220, column: 24, scope: !1831)
!1944 = !DILocation(line: 2221, column: 3, scope: !1831)
!1945 = !DILocation(line: 2221, column: 19, scope: !1831)
!1946 = !DILocation(line: 2221, column: 28, scope: !1831)
!1947 = !DILocation(line: 2222, column: 17, scope: !1831)
!1948 = !DILocation(line: 2222, column: 53, scope: !1831)
!1949 = !DILocation(line: 2224, column: 3, scope: !1831)
!1950 = !DILocation(line: 2225, column: 3, scope: !1831)
!1951 = !DILocation(line: 2225, column: 44, scope: !1831)
!1952 = !DILocation(line: 2225, column: 26, scope: !1831)
!1953 = !DILocation(line: 2225, column: 8, scope: !1831)
!1954 = !DILocation(line: 2226, column: 3, scope: !1831)
!1955 = !DILocation(line: 2226, column: 19, scope: !1831)
!1956 = !DILocation(line: 2226, column: 28, scope: !1831)
!1957 = !DILocation(line: 2227, column: 17, scope: !1831)
!1958 = !DILocation(line: 2227, column: 53, scope: !1831)
!1959 = !DILocation(line: 2229, column: 3, scope: !1831)
!1960 = !DILocation(line: 2230, column: 3, scope: !1831)
!1961 = !DILocation(line: 2231, column: 59, scope: !1831)
!1962 = !DILocation(line: 2231, column: 41, scope: !1831)
!1963 = !DILocation(line: 2231, column: 23, scope: !1831)
!1964 = !DILocation(line: 2231, column: 5, scope: !1831)
!1965 = !DILocation(line: 2234, column: 3, scope: !1831)
!1966 = !DILocation(line: 2234, column: 19, scope: !1831)
!1967 = !DILocation(line: 2234, column: 28, scope: !1831)
!1968 = !DILocation(line: 2235, column: 17, scope: !1831)
!1969 = !DILocation(line: 2235, column: 53, scope: !1831)
!1970 = !DILocation(line: 2239, column: 109, scope: !1831)
!1971 = !DILocation(line: 2239, column: 91, scope: !1831)
!1972 = !DILocation(line: 2239, column: 73, scope: !1831)
!1973 = !DILocation(line: 2239, column: 55, scope: !1831)
!1974 = !DILocation(line: 2239, column: 37, scope: !1831)
!1975 = !DILocation(line: 2239, column: 5, scope: !1831)
!1976 = !DILocation(line: 2245, column: 5, scope: !1831)
!1977 = !DILocation(line: 2246, column: 3, scope: !1831)
!1978 = !DILocation(line: 2247, column: 1, scope: !1831)
!1979 = distinct !DISubprogram(name: "Hacl_Impl_BignumQ_Mul_sub_mod_264", scope: !1, file: !1, line: 2128, type: !1280, scopeLine: 2129, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !1980)
!1980 = !{!1981, !1982, !1983, !1984, !1985, !1986, !1987, !1988, !1989, !1990, !1991, !1992, !1993, !1994, !1995, !1996, !1997, !1998, !1999, !2000, !2001, !2002, !2003, !2004, !2005, !2006, !2007}
!1981 = !DILocalVariable(name: "z", arg: 1, scope: !1979, file: !1, line: 2128, type: !112)
!1982 = !DILocalVariable(name: "x", arg: 2, scope: !1979, file: !1, line: 2128, type: !112)
!1983 = !DILocalVariable(name: "y", arg: 3, scope: !1979, file: !1, line: 2128, type: !112)
!1984 = !DILocalVariable(name: "x0", scope: !1979, file: !1, line: 2130, type: !11)
!1985 = !DILocalVariable(name: "x1", scope: !1979, file: !1, line: 2131, type: !11)
!1986 = !DILocalVariable(name: "x2", scope: !1979, file: !1, line: 2132, type: !11)
!1987 = !DILocalVariable(name: "x3", scope: !1979, file: !1, line: 2133, type: !11)
!1988 = !DILocalVariable(name: "x4", scope: !1979, file: !1, line: 2134, type: !11)
!1989 = !DILocalVariable(name: "y0", scope: !1979, file: !1, line: 2135, type: !11)
!1990 = !DILocalVariable(name: "y1", scope: !1979, file: !1, line: 2136, type: !11)
!1991 = !DILocalVariable(name: "y2", scope: !1979, file: !1, line: 2137, type: !11)
!1992 = !DILocalVariable(name: "y3", scope: !1979, file: !1, line: 2138, type: !11)
!1993 = !DILocalVariable(name: "y4", scope: !1979, file: !1, line: 2139, type: !11)
!1994 = !DILocalVariable(name: "b", scope: !1979, file: !1, line: 2140, type: !11)
!1995 = !DILocalVariable(name: "t0", scope: !1979, file: !1, line: 2141, type: !11)
!1996 = !DILocalVariable(name: "y11", scope: !1979, file: !1, line: 2142, type: !11)
!1997 = !DILocalVariable(name: "b1", scope: !1979, file: !1, line: 2143, type: !11)
!1998 = !DILocalVariable(name: "t1", scope: !1979, file: !1, line: 2144, type: !11)
!1999 = !DILocalVariable(name: "y21", scope: !1979, file: !1, line: 2145, type: !11)
!2000 = !DILocalVariable(name: "b2", scope: !1979, file: !1, line: 2146, type: !11)
!2001 = !DILocalVariable(name: "t2", scope: !1979, file: !1, line: 2147, type: !11)
!2002 = !DILocalVariable(name: "y31", scope: !1979, file: !1, line: 2148, type: !11)
!2003 = !DILocalVariable(name: "b3", scope: !1979, file: !1, line: 2149, type: !11)
!2004 = !DILocalVariable(name: "t3", scope: !1979, file: !1, line: 2150, type: !11)
!2005 = !DILocalVariable(name: "y41", scope: !1979, file: !1, line: 2151, type: !11)
!2006 = !DILocalVariable(name: "b4", scope: !1979, file: !1, line: 2152, type: !11)
!2007 = !DILocalVariable(name: "t4", scope: !1979, file: !1, line: 2153, type: !11)
!2008 = !DILocation(line: 0, scope: !1979)
!2009 = !DILocation(line: 2130, column: 17, scope: !1979)
!2010 = !DILocation(line: 2131, column: 17, scope: !1979)
!2011 = !DILocation(line: 2132, column: 17, scope: !1979)
!2012 = !DILocation(line: 2133, column: 17, scope: !1979)
!2013 = !DILocation(line: 2134, column: 17, scope: !1979)
!2014 = !DILocation(line: 2135, column: 17, scope: !1979)
!2015 = !DILocation(line: 2136, column: 17, scope: !1979)
!2016 = !DILocation(line: 2137, column: 17, scope: !1979)
!2017 = !DILocation(line: 2138, column: 17, scope: !1979)
!2018 = !DILocation(line: 2139, column: 17, scope: !1979)
!2019 = !DILocation(line: 2140, column: 16, scope: !1979)
!2020 = !DILocation(line: 2141, column: 17, scope: !1979)
!2021 = !DILocation(line: 2141, column: 52, scope: !1979)
!2022 = !DILocation(line: 2141, column: 57, scope: !1979)
!2023 = !DILocation(line: 2142, column: 21, scope: !1979)
!2024 = !DILocation(line: 2143, column: 17, scope: !1979)
!2025 = !DILocation(line: 2144, column: 17, scope: !1979)
!2026 = !DILocation(line: 2144, column: 53, scope: !1979)
!2027 = !DILocation(line: 2144, column: 58, scope: !1979)
!2028 = !DILocation(line: 2145, column: 21, scope: !1979)
!2029 = !DILocation(line: 2146, column: 17, scope: !1979)
!2030 = !DILocation(line: 2147, column: 17, scope: !1979)
!2031 = !DILocation(line: 2147, column: 53, scope: !1979)
!2032 = !DILocation(line: 2147, column: 58, scope: !1979)
!2033 = !DILocation(line: 2148, column: 21, scope: !1979)
!2034 = !DILocation(line: 2149, column: 17, scope: !1979)
!2035 = !DILocation(line: 2150, column: 17, scope: !1979)
!2036 = !DILocation(line: 2150, column: 53, scope: !1979)
!2037 = !DILocation(line: 2150, column: 58, scope: !1979)
!2038 = !DILocation(line: 2151, column: 21, scope: !1979)
!2039 = !DILocation(line: 2152, column: 17, scope: !1979)
!2040 = !DILocation(line: 2153, column: 21, scope: !1979)
!2041 = !DILocation(line: 2153, column: 39, scope: !1979)
!2042 = !DILocation(line: 2153, column: 44, scope: !1979)
!2043 = !DILocation(line: 2154, column: 3, scope: !1979)
!2044 = !DILocation(line: 2155, column: 1, scope: !1979)
!2045 = distinct !DISubprogram(name: "Hacl_Impl_BignumQ_Mul_lt", scope: !1, file: !1, line: 2118, type: !2046, scopeLine: 2119, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !2048)
!2046 = !DISubroutineType(types: !2047)
!2047 = !{!11, !11, !11}
!2048 = !{!2049, !2050}
!2049 = !DILocalVariable(name: "a", arg: 1, scope: !2045, file: !1, line: 2118, type: !11)
!2050 = !DILocalVariable(name: "b", arg: 2, scope: !2045, file: !1, line: 2118, type: !11)
!2051 = !DILocation(line: 0, scope: !2045)
!2052 = !DILocation(line: 2120, column: 13, scope: !2045)
!2053 = !DILocation(line: 2120, column: 18, scope: !2045)
!2054 = !DILocation(line: 2120, column: 3, scope: !2045)
!2055 = distinct !DISubprogram(name: "Hacl_Impl_BignumQ_Mul_shiftl_56", scope: !1, file: !1, line: 2123, type: !2056, scopeLine: 2124, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !2058)
!2056 = !DISubroutineType(types: !2057)
!2057 = !{!11, !11}
!2058 = !{!2059}
!2059 = !DILocalVariable(name: "b", arg: 1, scope: !2055, file: !1, line: 2123, type: !11)
!2060 = !DILocation(line: 0, scope: !2055)
!2061 = !DILocation(line: 2125, column: 12, scope: !2055)
!2062 = !DILocation(line: 2125, column: 3, scope: !2055)
!2063 = distinct !DISubprogram(name: "Hacl_Impl_BignumQ_Mul_choose", scope: !1, file: !1, line: 2097, type: !2064, scopeLine: 2098, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !2066)
!2064 = !DISubroutineType(types: !2065)
!2065 = !{null, !112, !112, !112, !11}
!2066 = !{!2067, !2068, !2069, !2070, !2071, !2072, !2073, !2074, !2075, !2076, !2077, !2078, !2079, !2080, !2081, !2082, !2083, !2084, !2085, !2086}
!2067 = !DILocalVariable(name: "z", arg: 1, scope: !2063, file: !1, line: 2097, type: !112)
!2068 = !DILocalVariable(name: "x", arg: 2, scope: !2063, file: !1, line: 2097, type: !112)
!2069 = !DILocalVariable(name: "y", arg: 3, scope: !2063, file: !1, line: 2097, type: !112)
!2070 = !DILocalVariable(name: "b", arg: 4, scope: !2063, file: !1, line: 2097, type: !11)
!2071 = !DILocalVariable(name: "mask", scope: !2063, file: !1, line: 2099, type: !11)
!2072 = !DILocalVariable(name: "x0", scope: !2063, file: !1, line: 2100, type: !11)
!2073 = !DILocalVariable(name: "x1", scope: !2063, file: !1, line: 2101, type: !11)
!2074 = !DILocalVariable(name: "x2", scope: !2063, file: !1, line: 2102, type: !11)
!2075 = !DILocalVariable(name: "x3", scope: !2063, file: !1, line: 2103, type: !11)
!2076 = !DILocalVariable(name: "x4", scope: !2063, file: !1, line: 2104, type: !11)
!2077 = !DILocalVariable(name: "y0", scope: !2063, file: !1, line: 2105, type: !11)
!2078 = !DILocalVariable(name: "y1", scope: !2063, file: !1, line: 2106, type: !11)
!2079 = !DILocalVariable(name: "y2", scope: !2063, file: !1, line: 2107, type: !11)
!2080 = !DILocalVariable(name: "y3", scope: !2063, file: !1, line: 2108, type: !11)
!2081 = !DILocalVariable(name: "y4", scope: !2063, file: !1, line: 2109, type: !11)
!2082 = !DILocalVariable(name: "z0", scope: !2063, file: !1, line: 2110, type: !11)
!2083 = !DILocalVariable(name: "z1", scope: !2063, file: !1, line: 2111, type: !11)
!2084 = !DILocalVariable(name: "z2", scope: !2063, file: !1, line: 2112, type: !11)
!2085 = !DILocalVariable(name: "z3", scope: !2063, file: !1, line: 2113, type: !11)
!2086 = !DILocalVariable(name: "z4", scope: !2063, file: !1, line: 2114, type: !11)
!2087 = !DILocation(line: 0, scope: !2063)
!2088 = !DILocation(line: 2099, column: 21, scope: !2063)
!2089 = !DILocation(line: 2100, column: 17, scope: !2063)
!2090 = !DILocation(line: 2101, column: 17, scope: !2063)
!2091 = !DILocation(line: 2102, column: 17, scope: !2063)
!2092 = !DILocation(line: 2103, column: 17, scope: !2063)
!2093 = !DILocation(line: 2104, column: 17, scope: !2063)
!2094 = !DILocation(line: 2105, column: 17, scope: !2063)
!2095 = !DILocation(line: 2106, column: 17, scope: !2063)
!2096 = !DILocation(line: 2107, column: 17, scope: !2063)
!2097 = !DILocation(line: 2108, column: 17, scope: !2063)
!2098 = !DILocation(line: 2109, column: 17, scope: !2063)
!2099 = !DILocation(line: 2110, column: 22, scope: !2063)
!2100 = !DILocation(line: 2110, column: 28, scope: !2063)
!2101 = !DILocation(line: 2110, column: 36, scope: !2063)
!2102 = !DILocation(line: 2111, column: 22, scope: !2063)
!2103 = !DILocation(line: 2111, column: 28, scope: !2063)
!2104 = !DILocation(line: 2111, column: 36, scope: !2063)
!2105 = !DILocation(line: 2112, column: 22, scope: !2063)
!2106 = !DILocation(line: 2112, column: 28, scope: !2063)
!2107 = !DILocation(line: 2112, column: 36, scope: !2063)
!2108 = !DILocation(line: 2113, column: 22, scope: !2063)
!2109 = !DILocation(line: 2113, column: 28, scope: !2063)
!2110 = !DILocation(line: 2113, column: 36, scope: !2063)
!2111 = !DILocation(line: 2114, column: 22, scope: !2063)
!2112 = !DILocation(line: 2114, column: 28, scope: !2063)
!2113 = !DILocation(line: 2114, column: 36, scope: !2063)
!2114 = !DILocation(line: 2115, column: 3, scope: !2063)
!2115 = !DILocation(line: 2116, column: 1, scope: !2063)
!2116 = distinct !DISubprogram(name: "store32", scope: !829, file: !829, line: 355, type: !2117, scopeLine: 355, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !2119)
!2117 = !DISubroutineType(types: !2118)
!2118 = !{null, !29, !3}
!2119 = !{!2120, !2121}
!2120 = !DILocalVariable(name: "b", arg: 1, scope: !2116, file: !829, line: 355, type: !29)
!2121 = !DILocalVariable(name: "i", arg: 2, scope: !2116, file: !829, line: 355, type: !3)
!2122 = !DILocation(line: 0, scope: !2116)
!2123 = !DILocation(line: 355, column: 54, scope: !2116)
!2124 = !DILocation(line: 355, column: 72, scope: !2116)
!2125 = distinct !DISubprogram(name: "Hacl_Impl_Ed25519_Sign_Steps_point_mul_g", scope: !1, file: !1, line: 2711, type: !630, scopeLine: 2712, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !2126)
!2126 = !{!2127, !2128, !2129}
!2127 = !DILocalVariable(name: "result", arg: 1, scope: !2125, file: !1, line: 2711, type: !112)
!2128 = !DILocalVariable(name: "scalar", arg: 2, scope: !2125, file: !1, line: 2711, type: !29)
!2129 = !DILocalVariable(name: "g1", scope: !2125, file: !1, line: 2713, type: !205)
!2130 = !DILocation(line: 0, scope: !2125)
!2131 = !DILocation(line: 2713, column: 3, scope: !2125)
!2132 = !DILocation(line: 2713, column: 12, scope: !2125)
!2133 = !DILocation(line: 2714, column: 30, scope: !2125)
!2134 = !DILocation(line: 2714, column: 3, scope: !2125)
!2135 = !DILocation(line: 2715, column: 3, scope: !2125)
!2136 = !DILocation(line: 2716, column: 1, scope: !2125)
!2137 = distinct !DISubprogram(name: "Hacl_Impl_Ed25519_PointCompress_point_compress", scope: !1, file: !1, line: 814, type: !163, scopeLine: 815, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !2138)
!2138 = !{!2139, !2140, !2141, !2145, !2146, !2147, !2148, !2149, !2150, !2151, !2152, !2153, !2154, !2155}
!2139 = !DILocalVariable(name: "z", arg: 1, scope: !2137, file: !1, line: 814, type: !29)
!2140 = !DILocalVariable(name: "p", arg: 2, scope: !2137, file: !1, line: 814, type: !112)
!2141 = !DILocalVariable(name: "tmp", scope: !2137, file: !1, line: 816, type: !2142)
!2142 = !DICompositeType(tag: DW_TAG_array_type, baseType: !11, size: 960, elements: !2143)
!2143 = !{!2144}
!2144 = !DISubrange(count: 15)
!2145 = !DILocalVariable(name: "x0", scope: !2137, file: !1, line: 817, type: !112)
!2146 = !DILocalVariable(name: "out0", scope: !2137, file: !1, line: 818, type: !112)
!2147 = !DILocalVariable(name: "zinv", scope: !2137, file: !1, line: 819, type: !112)
!2148 = !DILocalVariable(name: "x", scope: !2137, file: !1, line: 820, type: !112)
!2149 = !DILocalVariable(name: "out", scope: !2137, file: !1, line: 821, type: !112)
!2150 = !DILocalVariable(name: "px", scope: !2137, file: !1, line: 822, type: !112)
!2151 = !DILocalVariable(name: "py", scope: !2137, file: !1, line: 823, type: !112)
!2152 = !DILocalVariable(name: "pz", scope: !2137, file: !1, line: 824, type: !112)
!2153 = !DILocalVariable(name: "b", scope: !2137, file: !1, line: 830, type: !11)
!2154 = !DILocalVariable(name: "xbyte", scope: !2137, file: !1, line: 832, type: !8)
!2155 = !DILocalVariable(name: "o31", scope: !2137, file: !1, line: 833, type: !8)
!2156 = !DILocation(line: 0, scope: !2137)
!2157 = !DILocation(line: 816, column: 3, scope: !2137)
!2158 = !DILocation(line: 816, column: 12, scope: !2137)
!2159 = !DILocation(line: 817, column: 18, scope: !2137)
!2160 = !DILocation(line: 817, column: 22, scope: !2137)
!2161 = !DILocation(line: 818, column: 24, scope: !2137)
!2162 = !DILocation(line: 823, column: 18, scope: !2137)
!2163 = !DILocation(line: 824, column: 18, scope: !2137)
!2164 = !DILocation(line: 825, column: 3, scope: !2137)
!2165 = !DILocation(line: 826, column: 3, scope: !2137)
!2166 = !DILocation(line: 827, column: 3, scope: !2137)
!2167 = !DILocation(line: 828, column: 3, scope: !2137)
!2168 = !DILocation(line: 829, column: 3, scope: !2137)
!2169 = !DILocation(line: 830, column: 16, scope: !2137)
!2170 = !DILocation(line: 831, column: 3, scope: !2137)
!2171 = !DILocation(line: 832, column: 19, scope: !2137)
!2172 = !DILocation(line: 833, column: 17, scope: !2137)
!2173 = !DILocation(line: 834, column: 25, scope: !2137)
!2174 = !DILocation(line: 834, column: 16, scope: !2137)
!2175 = !DILocation(line: 834, column: 10, scope: !2137)
!2176 = !DILocation(line: 835, column: 1, scope: !2137)
!2177 = distinct !DISubprogram(name: "Hacl_Impl_Ed25519_G_make_g", scope: !1, file: !1, line: 755, type: !327, scopeLine: 756, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !2178)
!2178 = !{!2179, !2180, !2181, !2182, !2183}
!2179 = !DILocalVariable(name: "g1", arg: 1, scope: !2177, file: !1, line: 755, type: !112)
!2180 = !DILocalVariable(name: "gx", scope: !2177, file: !1, line: 757, type: !112)
!2181 = !DILocalVariable(name: "gy", scope: !2177, file: !1, line: 758, type: !112)
!2182 = !DILocalVariable(name: "gz", scope: !2177, file: !1, line: 759, type: !112)
!2183 = !DILocalVariable(name: "gt1", scope: !2177, file: !1, line: 760, type: !112)
!2184 = !DILocation(line: 0, scope: !2177)
!2185 = !DILocation(line: 758, column: 18, scope: !2177)
!2186 = !DILocation(line: 759, column: 18, scope: !2177)
!2187 = !DILocation(line: 760, column: 19, scope: !2177)
!2188 = !DILocation(line: 761, column: 3, scope: !2177)
!2189 = !DILocation(line: 767, column: 3, scope: !2177)
!2190 = !DILocation(line: 773, column: 3, scope: !2177)
!2191 = !DILocation(line: 779, column: 3, scope: !2177)
!2192 = !DILocation(line: 785, column: 1, scope: !2177)
!2193 = distinct !DISubprogram(name: "Hacl_Impl_Ed25519_Ladder_point_mul", scope: !1, file: !1, line: 1153, type: !2194, scopeLine: 1154, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !2196)
!2194 = !DISubroutineType(types: !2195)
!2195 = !{null, !112, !29, !112}
!2196 = !{!2197, !2198, !2199, !2200, !2204, !2205}
!2197 = !DILocalVariable(name: "result", arg: 1, scope: !2193, file: !1, line: 1153, type: !112)
!2198 = !DILocalVariable(name: "scalar", arg: 2, scope: !2193, file: !1, line: 1153, type: !29)
!2199 = !DILocalVariable(name: "q1", arg: 3, scope: !2193, file: !1, line: 1153, type: !112)
!2200 = !DILocalVariable(name: "b", scope: !2193, file: !1, line: 1155, type: !2201)
!2201 = !DICompositeType(tag: DW_TAG_array_type, baseType: !11, size: 5120, elements: !2202)
!2202 = !{!2203}
!2203 = !DISubrange(count: 80)
!2204 = !DILocalVariable(name: "nq", scope: !2193, file: !1, line: 1156, type: !112)
!2205 = !DILocalVariable(name: "nqpq", scope: !2193, file: !1, line: 1157, type: !112)
!2206 = !DILocation(line: 0, scope: !2193)
!2207 = !DILocation(line: 1155, column: 3, scope: !2193)
!2208 = !DILocation(line: 1155, column: 12, scope: !2193)
!2209 = !DILocation(line: 1156, column: 18, scope: !2193)
!2210 = !DILocation(line: 1157, column: 22, scope: !2193)
!2211 = !DILocation(line: 1158, column: 3, scope: !2193)
!2212 = !DILocation(line: 1159, column: 3, scope: !2193)
!2213 = !DILocation(line: 1160, column: 3, scope: !2193)
!2214 = !DILocation(line: 1161, column: 3, scope: !2193)
!2215 = !DILocation(line: 1162, column: 1, scope: !2193)
!2216 = distinct !DISubprogram(name: "Hacl_Impl_Ed25519_ExtPoint_gety", scope: !1, file: !1, line: 740, type: !2217, scopeLine: 741, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !2219)
!2217 = !DISubroutineType(types: !2218)
!2218 = !{!112, !112}
!2219 = !{!2220}
!2220 = !DILocalVariable(name: "p", arg: 1, scope: !2216, file: !1, line: 740, type: !112)
!2221 = !DILocation(line: 0, scope: !2216)
!2222 = !DILocation(line: 742, column: 12, scope: !2216)
!2223 = !DILocation(line: 742, column: 3, scope: !2216)
!2224 = distinct !DISubprogram(name: "Hacl_Impl_Ed25519_ExtPoint_getz", scope: !1, file: !1, line: 745, type: !2217, scopeLine: 746, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !2225)
!2225 = !{!2226}
!2226 = !DILocalVariable(name: "p", arg: 1, scope: !2224, file: !1, line: 745, type: !112)
!2227 = !DILocation(line: 0, scope: !2224)
!2228 = !DILocation(line: 747, column: 12, scope: !2224)
!2229 = !DILocation(line: 747, column: 3, scope: !2224)
!2230 = distinct !DISubprogram(name: "Hacl_Impl_Ed25519_ExtPoint_gett", scope: !1, file: !1, line: 750, type: !2217, scopeLine: 751, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !2231)
!2231 = !{!2232}
!2232 = !DILocalVariable(name: "p", arg: 1, scope: !2230, file: !1, line: 750, type: !112)
!2233 = !DILocation(line: 0, scope: !2230)
!2234 = !DILocation(line: 752, column: 12, scope: !2230)
!2235 = !DILocation(line: 752, column: 3, scope: !2230)
!2236 = distinct !DISubprogram(name: "Hacl_Impl_Ed25519_Ladder_make_point_inf", scope: !1, file: !1, line: 1135, type: !327, scopeLine: 1136, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !2237)
!2237 = !{!2238, !2239, !2240, !2241, !2242, !2243, !2244, !2245, !2246, !2247, !2248}
!2238 = !DILocalVariable(name: "b", arg: 1, scope: !2236, file: !1, line: 1135, type: !112)
!2239 = !DILocalVariable(name: "x", scope: !2236, file: !1, line: 1137, type: !112)
!2240 = !DILocalVariable(name: "y", scope: !2236, file: !1, line: 1138, type: !112)
!2241 = !DILocalVariable(name: "z", scope: !2236, file: !1, line: 1139, type: !112)
!2242 = !DILocalVariable(name: "t", scope: !2236, file: !1, line: 1140, type: !112)
!2243 = !DILocalVariable(name: "zero1", scope: !2236, file: !1, line: 1141, type: !11)
!2244 = !DILocalVariable(name: "zero10", scope: !2236, file: !1, line: 1143, type: !11)
!2245 = !DILocalVariable(name: "one10", scope: !2236, file: !1, line: 1144, type: !11)
!2246 = !DILocalVariable(name: "zero11", scope: !2236, file: !1, line: 1146, type: !11)
!2247 = !DILocalVariable(name: "one1", scope: !2236, file: !1, line: 1147, type: !11)
!2248 = !DILocalVariable(name: "zero12", scope: !2236, file: !1, line: 1149, type: !11)
!2249 = !DILocation(line: 0, scope: !2236)
!2250 = !DILocation(line: 1138, column: 19, scope: !2236)
!2251 = !DILocation(line: 1139, column: 19, scope: !2236)
!2252 = !DILocation(line: 1140, column: 19, scope: !2236)
!2253 = !DILocation(line: 1142, column: 3, scope: !2236)
!2254 = !DILocation(line: 1145, column: 3, scope: !2236)
!2255 = !DILocation(line: 1148, column: 3, scope: !2236)
!2256 = !DILocation(line: 1150, column: 3, scope: !2236)
!2257 = !DILocation(line: 1151, column: 1, scope: !2236)
!2258 = distinct !DISubprogram(name: "Hacl_Impl_Ed25519_SwapConditional_copy", scope: !1, file: !1, line: 937, type: !1026, scopeLine: 938, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !2259)
!2259 = !{!2260, !2261}
!2260 = !DILocalVariable(name: "output", arg: 1, scope: !2258, file: !1, line: 937, type: !112)
!2261 = !DILocalVariable(name: "input", arg: 2, scope: !2258, file: !1, line: 937, type: !112)
!2262 = !DILocation(line: 0, scope: !2258)
!2263 = !DILocation(line: 939, column: 3, scope: !2258)
!2264 = !DILocation(line: 940, column: 1, scope: !2258)
!2265 = distinct !DISubprogram(name: "Hacl_Impl_Ed25519_Ladder_point_mul_", scope: !1, file: !1, line: 1129, type: !630, scopeLine: 1130, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !2266)
!2266 = !{!2267, !2268, !2269}
!2267 = !DILocalVariable(name: "b", arg: 1, scope: !2265, file: !1, line: 1129, type: !112)
!2268 = !DILocalVariable(name: "k1", arg: 2, scope: !2265, file: !1, line: 1129, type: !29)
!2269 = !DILocalVariable(name: "i", scope: !2270, file: !1, line: 1131, type: !3)
!2270 = distinct !DILexicalBlock(scope: !2265, file: !1, line: 1131, column: 3)
!2271 = !DILocation(line: 0, scope: !2265)
!2272 = !DILocation(line: 0, scope: !2270)
!2273 = !DILocation(line: 1131, column: 3, scope: !2270)
!2274 = !DILocation(line: 1133, column: 1, scope: !2265)
!2275 = !DILocation(line: 1132, column: 71, scope: !2276)
!2276 = distinct !DILexicalBlock(scope: !2270, file: !1, line: 1131, column: 3)
!2277 = !DILocation(line: 1132, column: 5, scope: !2276)
!2278 = !DILocation(line: 1131, column: 61, scope: !2276)
!2279 = !DILocation(line: 1131, column: 37, scope: !2276)
!2280 = distinct !{!2280, !2273, !2281, !574, !575}
!2281 = !DILocation(line: 1132, column: 85, scope: !2270)
!2282 = distinct !DISubprogram(name: "Hacl_Impl_Ed25519_Ladder_Step_loop_step", scope: !1, file: !1, line: 1121, type: !551, scopeLine: 1122, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !2283)
!2283 = !{!2284, !2285, !2286, !2287}
!2284 = !DILocalVariable(name: "b", arg: 1, scope: !2282, file: !1, line: 1121, type: !112)
!2285 = !DILocalVariable(name: "k1", arg: 2, scope: !2282, file: !1, line: 1121, type: !29)
!2286 = !DILocalVariable(name: "ctr", arg: 3, scope: !2282, file: !1, line: 1121, type: !3)
!2287 = !DILocalVariable(name: "bit", scope: !2282, file: !1, line: 1123, type: !8)
!2288 = !DILocation(line: 0, scope: !2282)
!2289 = !DILocation(line: 1123, column: 17, scope: !2282)
!2290 = !{i8 0, i8 2}
!2291 = !DILocation(line: 1124, column: 3, scope: !2282)
!2292 = !DILocation(line: 1125, column: 3, scope: !2282)
!2293 = !DILocation(line: 1126, column: 3, scope: !2282)
!2294 = !DILocation(line: 1127, column: 1, scope: !2282)
!2295 = distinct !DISubprogram(name: "Hacl_Impl_Ed25519_Ladder_Step_ith_bit", scope: !1, file: !1, line: 1065, type: !2296, scopeLine: 1066, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !2298)
!2296 = !DISubroutineType(types: !2297)
!2297 = !{!8, !29, !3}
!2298 = !{!2299, !2300, !2301, !2302, !2303}
!2299 = !DILocalVariable(name: "k1", arg: 1, scope: !2295, file: !1, line: 1065, type: !29)
!2300 = !DILocalVariable(name: "i", arg: 2, scope: !2295, file: !1, line: 1065, type: !3)
!2301 = !DILocalVariable(name: "q1", scope: !2295, file: !1, line: 1067, type: !3)
!2302 = !DILocalVariable(name: "r", scope: !2295, file: !1, line: 1068, type: !3)
!2303 = !DILocalVariable(name: "kq", scope: !2295, file: !1, line: 1069, type: !8)
!2304 = !DILocation(line: 0, scope: !2295)
!2305 = !DILocation(line: 1067, column: 19, scope: !2295)
!2306 = !DILocation(line: 1068, column: 18, scope: !2295)
!2307 = !DILocation(line: 1069, column: 16, scope: !2295)
!2308 = !DILocation(line: 1070, column: 10, scope: !2295)
!2309 = !DILocation(line: 1070, column: 13, scope: !2295)
!2310 = !DILocation(line: 1070, column: 3, scope: !2295)
!2311 = distinct !DISubprogram(name: "Hacl_Impl_Ed25519_Ladder_Step_loop_step_1", scope: !1, file: !1, line: 1092, type: !2312, scopeLine: 1093, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !2314)
!2312 = !DISubroutineType(types: !2313)
!2313 = !{null, !112, !29, !3, !8}
!2314 = !{!2315, !2316, !2317, !2318, !2319, !2320, !2321}
!2315 = !DILocalVariable(name: "b", arg: 1, scope: !2311, file: !1, line: 1092, type: !112)
!2316 = !DILocalVariable(name: "k1", arg: 2, scope: !2311, file: !1, line: 1092, type: !29)
!2317 = !DILocalVariable(name: "ctr", arg: 3, scope: !2311, file: !1, line: 1092, type: !3)
!2318 = !DILocalVariable(name: "i", arg: 4, scope: !2311, file: !1, line: 1092, type: !8)
!2319 = !DILocalVariable(name: "nq", scope: !2311, file: !1, line: 1094, type: !112)
!2320 = !DILocalVariable(name: "nqpq", scope: !2311, file: !1, line: 1095, type: !112)
!2321 = !DILocalVariable(name: "bit", scope: !2311, file: !1, line: 1096, type: !11)
!2322 = !DILocation(line: 0, scope: !2311)
!2323 = !DILocation(line: 1095, column: 22, scope: !2311)
!2324 = !DILocation(line: 1096, column: 18, scope: !2311)
!2325 = !DILocation(line: 1097, column: 3, scope: !2311)
!2326 = !DILocation(line: 1098, column: 1, scope: !2311)
!2327 = distinct !DISubprogram(name: "Hacl_Impl_Ed25519_Ladder_Step_loop_step_2", scope: !1, file: !1, line: 1100, type: !551, scopeLine: 1101, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !2328)
!2328 = !{!2329, !2330, !2331, !2332, !2333, !2334, !2335}
!2329 = !DILocalVariable(name: "b", arg: 1, scope: !2327, file: !1, line: 1100, type: !112)
!2330 = !DILocalVariable(name: "k1", arg: 2, scope: !2327, file: !1, line: 1100, type: !29)
!2331 = !DILocalVariable(name: "ctr", arg: 3, scope: !2327, file: !1, line: 1100, type: !3)
!2332 = !DILocalVariable(name: "nq", scope: !2327, file: !1, line: 1102, type: !112)
!2333 = !DILocalVariable(name: "nqpq", scope: !2327, file: !1, line: 1103, type: !112)
!2334 = !DILocalVariable(name: "nq2", scope: !2327, file: !1, line: 1104, type: !112)
!2335 = !DILocalVariable(name: "nqpq2", scope: !2327, file: !1, line: 1105, type: !112)
!2336 = !DILocation(line: 0, scope: !2327)
!2337 = !DILocation(line: 1103, column: 22, scope: !2327)
!2338 = !DILocation(line: 1104, column: 21, scope: !2327)
!2339 = !DILocation(line: 1105, column: 23, scope: !2327)
!2340 = !DILocation(line: 1106, column: 3, scope: !2327)
!2341 = !DILocation(line: 1107, column: 3, scope: !2327)
!2342 = !DILocation(line: 1108, column: 1, scope: !2327)
!2343 = distinct !DISubprogram(name: "Hacl_Impl_Ed25519_Ladder_Step_loop_step_3", scope: !1, file: !1, line: 1111, type: !2312, scopeLine: 1112, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !2344)
!2344 = !{!2345, !2346, !2347, !2348, !2349, !2350, !2351, !2352, !2353}
!2345 = !DILocalVariable(name: "b", arg: 1, scope: !2343, file: !1, line: 1111, type: !112)
!2346 = !DILocalVariable(name: "k1", arg: 2, scope: !2343, file: !1, line: 1111, type: !29)
!2347 = !DILocalVariable(name: "ctr", arg: 3, scope: !2343, file: !1, line: 1111, type: !3)
!2348 = !DILocalVariable(name: "i", arg: 4, scope: !2343, file: !1, line: 1111, type: !8)
!2349 = !DILocalVariable(name: "nq", scope: !2343, file: !1, line: 1113, type: !112)
!2350 = !DILocalVariable(name: "nqpq", scope: !2343, file: !1, line: 1114, type: !112)
!2351 = !DILocalVariable(name: "nq2", scope: !2343, file: !1, line: 1115, type: !112)
!2352 = !DILocalVariable(name: "nqpq2", scope: !2343, file: !1, line: 1116, type: !112)
!2353 = !DILocalVariable(name: "bit", scope: !2343, file: !1, line: 1117, type: !11)
!2354 = !DILocation(line: 0, scope: !2343)
!2355 = !DILocation(line: 1114, column: 22, scope: !2343)
!2356 = !DILocation(line: 1115, column: 21, scope: !2343)
!2357 = !DILocation(line: 1116, column: 23, scope: !2343)
!2358 = !DILocation(line: 1117, column: 18, scope: !2343)
!2359 = !DILocation(line: 1118, column: 3, scope: !2343)
!2360 = !DILocation(line: 1119, column: 1, scope: !2343)
!2361 = distinct !DISubprogram(name: "Hacl_Impl_Ed25519_Ladder_Step_swap_cond_inplace", scope: !1, file: !1, line: 1074, type: !2362, scopeLine: 1075, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !2364)
!2362 = !DISubroutineType(types: !2363)
!2363 = !{null, !112, !112, !11}
!2364 = !{!2365, !2366, !2367}
!2365 = !DILocalVariable(name: "p", arg: 1, scope: !2361, file: !1, line: 1074, type: !112)
!2366 = !DILocalVariable(name: "q1", arg: 2, scope: !2361, file: !1, line: 1074, type: !112)
!2367 = !DILocalVariable(name: "iswap", arg: 3, scope: !2361, file: !1, line: 1074, type: !11)
!2368 = !DILocation(line: 0, scope: !2361)
!2369 = !DILocation(line: 1076, column: 3, scope: !2361)
!2370 = !DILocation(line: 1077, column: 1, scope: !2361)
!2371 = distinct !DISubprogram(name: "Hacl_Impl_Ed25519_SwapConditional_swap_conditional_inplace", scope: !1, file: !1, line: 908, type: !2362, scopeLine: 913, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !2372)
!2372 = !{!2373, !2374, !2375, !2376}
!2373 = !DILocalVariable(name: "a", arg: 1, scope: !2371, file: !1, line: 909, type: !112)
!2374 = !DILocalVariable(name: "b", arg: 2, scope: !2371, file: !1, line: 910, type: !112)
!2375 = !DILocalVariable(name: "iswap", arg: 3, scope: !2371, file: !1, line: 911, type: !11)
!2376 = !DILocalVariable(name: "swap1", scope: !2371, file: !1, line: 914, type: !11)
!2377 = !DILocation(line: 0, scope: !2371)
!2378 = !DILocation(line: 914, column: 33, scope: !2371)
!2379 = !DILocation(line: 915, column: 3, scope: !2371)
!2380 = !DILocation(line: 920, column: 59, scope: !2371)
!2381 = !DILocation(line: 921, column: 5, scope: !2371)
!2382 = !DILocation(line: 920, column: 3, scope: !2371)
!2383 = !DILocation(line: 925, column: 59, scope: !2371)
!2384 = !DILocation(line: 926, column: 5, scope: !2371)
!2385 = !DILocation(line: 925, column: 3, scope: !2371)
!2386 = !DILocation(line: 930, column: 59, scope: !2371)
!2387 = !DILocation(line: 931, column: 5, scope: !2371)
!2388 = !DILocation(line: 930, column: 3, scope: !2371)
!2389 = !DILocation(line: 935, column: 1, scope: !2371)
!2390 = distinct !DISubprogram(name: "Hacl_Impl_Ed25519_SwapConditional_swap_conditional_step", scope: !1, file: !1, line: 838, type: !2391, scopeLine: 845, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !2393)
!2391 = !DISubroutineType(types: !2392)
!2392 = !{null, !112, !112, !112, !112, !11}
!2393 = !{!2394, !2395, !2396, !2397, !2398, !2399, !2400, !2401, !2402, !2403, !2404, !2405, !2406, !2407, !2408, !2409, !2410, !2411, !2412, !2413, !2414, !2415, !2416, !2417, !2418, !2419, !2420, !2421, !2422, !2423}
!2394 = !DILocalVariable(name: "a_", arg: 1, scope: !2390, file: !1, line: 839, type: !112)
!2395 = !DILocalVariable(name: "b_", arg: 2, scope: !2390, file: !1, line: 840, type: !112)
!2396 = !DILocalVariable(name: "a", arg: 3, scope: !2390, file: !1, line: 841, type: !112)
!2397 = !DILocalVariable(name: "b", arg: 4, scope: !2390, file: !1, line: 842, type: !112)
!2398 = !DILocalVariable(name: "swap1", arg: 5, scope: !2390, file: !1, line: 843, type: !11)
!2399 = !DILocalVariable(name: "a0", scope: !2390, file: !1, line: 846, type: !11)
!2400 = !DILocalVariable(name: "a1", scope: !2390, file: !1, line: 847, type: !11)
!2401 = !DILocalVariable(name: "a2", scope: !2390, file: !1, line: 848, type: !11)
!2402 = !DILocalVariable(name: "a3", scope: !2390, file: !1, line: 849, type: !11)
!2403 = !DILocalVariable(name: "a4", scope: !2390, file: !1, line: 850, type: !11)
!2404 = !DILocalVariable(name: "b0", scope: !2390, file: !1, line: 851, type: !11)
!2405 = !DILocalVariable(name: "b1", scope: !2390, file: !1, line: 852, type: !11)
!2406 = !DILocalVariable(name: "b2", scope: !2390, file: !1, line: 853, type: !11)
!2407 = !DILocalVariable(name: "b3", scope: !2390, file: !1, line: 854, type: !11)
!2408 = !DILocalVariable(name: "b4", scope: !2390, file: !1, line: 855, type: !11)
!2409 = !DILocalVariable(name: "x0", scope: !2390, file: !1, line: 856, type: !11)
!2410 = !DILocalVariable(name: "x1", scope: !2390, file: !1, line: 857, type: !11)
!2411 = !DILocalVariable(name: "x2", scope: !2390, file: !1, line: 858, type: !11)
!2412 = !DILocalVariable(name: "x3", scope: !2390, file: !1, line: 859, type: !11)
!2413 = !DILocalVariable(name: "x4", scope: !2390, file: !1, line: 860, type: !11)
!2414 = !DILocalVariable(name: "a0_", scope: !2390, file: !1, line: 861, type: !11)
!2415 = !DILocalVariable(name: "b0_", scope: !2390, file: !1, line: 862, type: !11)
!2416 = !DILocalVariable(name: "a1_", scope: !2390, file: !1, line: 863, type: !11)
!2417 = !DILocalVariable(name: "b1_", scope: !2390, file: !1, line: 864, type: !11)
!2418 = !DILocalVariable(name: "a2_", scope: !2390, file: !1, line: 865, type: !11)
!2419 = !DILocalVariable(name: "b2_", scope: !2390, file: !1, line: 866, type: !11)
!2420 = !DILocalVariable(name: "a3_", scope: !2390, file: !1, line: 867, type: !11)
!2421 = !DILocalVariable(name: "b3_", scope: !2390, file: !1, line: 868, type: !11)
!2422 = !DILocalVariable(name: "a4_", scope: !2390, file: !1, line: 869, type: !11)
!2423 = !DILocalVariable(name: "b4_", scope: !2390, file: !1, line: 870, type: !11)
!2424 = !DILocation(line: 0, scope: !2390)
!2425 = !DILocation(line: 846, column: 17, scope: !2390)
!2426 = !DILocation(line: 847, column: 17, scope: !2390)
!2427 = !DILocation(line: 848, column: 17, scope: !2390)
!2428 = !DILocation(line: 849, column: 17, scope: !2390)
!2429 = !DILocation(line: 850, column: 17, scope: !2390)
!2430 = !DILocation(line: 851, column: 17, scope: !2390)
!2431 = !DILocation(line: 852, column: 17, scope: !2390)
!2432 = !DILocation(line: 853, column: 17, scope: !2390)
!2433 = !DILocation(line: 854, column: 17, scope: !2390)
!2434 = !DILocation(line: 855, column: 17, scope: !2390)
!2435 = !DILocation(line: 856, column: 29, scope: !2390)
!2436 = !DILocation(line: 856, column: 23, scope: !2390)
!2437 = !DILocation(line: 857, column: 29, scope: !2390)
!2438 = !DILocation(line: 857, column: 23, scope: !2390)
!2439 = !DILocation(line: 858, column: 29, scope: !2390)
!2440 = !DILocation(line: 858, column: 23, scope: !2390)
!2441 = !DILocation(line: 859, column: 29, scope: !2390)
!2442 = !DILocation(line: 859, column: 23, scope: !2390)
!2443 = !DILocation(line: 860, column: 29, scope: !2390)
!2444 = !DILocation(line: 860, column: 23, scope: !2390)
!2445 = !DILocation(line: 861, column: 21, scope: !2390)
!2446 = !DILocation(line: 862, column: 21, scope: !2390)
!2447 = !DILocation(line: 863, column: 21, scope: !2390)
!2448 = !DILocation(line: 864, column: 21, scope: !2390)
!2449 = !DILocation(line: 865, column: 21, scope: !2390)
!2450 = !DILocation(line: 866, column: 21, scope: !2390)
!2451 = !DILocation(line: 867, column: 21, scope: !2390)
!2452 = !DILocation(line: 868, column: 21, scope: !2390)
!2453 = !DILocation(line: 869, column: 21, scope: !2390)
!2454 = !DILocation(line: 870, column: 21, scope: !2390)
!2455 = !DILocation(line: 871, column: 3, scope: !2390)
!2456 = !DILocation(line: 872, column: 3, scope: !2390)
!2457 = !DILocation(line: 873, column: 1, scope: !2390)
!2458 = distinct !DISubprogram(name: "Hacl_Impl_Ed25519_PointDouble_point_double", scope: !1, file: !1, line: 1059, type: !1026, scopeLine: 1060, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !2459)
!2459 = !{!2460, !2461, !2462}
!2460 = !DILocalVariable(name: "out", arg: 1, scope: !2458, file: !1, line: 1059, type: !112)
!2461 = !DILocalVariable(name: "p", arg: 2, scope: !2458, file: !1, line: 1059, type: !112)
!2462 = !DILocalVariable(name: "tmp", scope: !2458, file: !1, line: 1061, type: !2463)
!2463 = !DICompositeType(tag: DW_TAG_array_type, baseType: !11, size: 1920, elements: !2464)
!2464 = !{!2465}
!2465 = !DISubrange(count: 30)
!2466 = !DILocation(line: 0, scope: !2458)
!2467 = !DILocation(line: 1061, column: 3, scope: !2458)
!2468 = !DILocation(line: 1061, column: 12, scope: !2458)
!2469 = !DILocation(line: 1062, column: 55, scope: !2458)
!2470 = !DILocation(line: 1062, column: 3, scope: !2458)
!2471 = !DILocation(line: 1063, column: 1, scope: !2458)
!2472 = distinct !DISubprogram(name: "Hacl_Impl_Ed25519_PointAdd_point_add", scope: !1, file: !1, line: 942, type: !1280, scopeLine: 943, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !2473)
!2473 = !{!2474, !2475, !2476, !2477, !2478, !2479, !2480, !2481, !2482, !2483, !2484, !2485, !2486, !2487, !2488, !2489, !2490, !2491, !2492, !2493, !2494, !2495, !2496, !2497, !2498, !2499, !2500, !2501, !2502, !2503, !2504, !2505, !2506, !2507, !2508}
!2474 = !DILocalVariable(name: "out", arg: 1, scope: !2472, file: !1, line: 942, type: !112)
!2475 = !DILocalVariable(name: "p", arg: 2, scope: !2472, file: !1, line: 942, type: !112)
!2476 = !DILocalVariable(name: "q1", arg: 3, scope: !2472, file: !1, line: 942, type: !112)
!2477 = !DILocalVariable(name: "tmp", scope: !2472, file: !1, line: 944, type: !2463)
!2478 = !DILocalVariable(name: "tmp1", scope: !2472, file: !1, line: 945, type: !112)
!2479 = !DILocalVariable(name: "tmp20", scope: !2472, file: !1, line: 946, type: !112)
!2480 = !DILocalVariable(name: "tmp30", scope: !2472, file: !1, line: 947, type: !112)
!2481 = !DILocalVariable(name: "tmp40", scope: !2472, file: !1, line: 948, type: !112)
!2482 = !DILocalVariable(name: "x1", scope: !2472, file: !1, line: 949, type: !112)
!2483 = !DILocalVariable(name: "y1", scope: !2472, file: !1, line: 950, type: !112)
!2484 = !DILocalVariable(name: "x2", scope: !2472, file: !1, line: 951, type: !112)
!2485 = !DILocalVariable(name: "y2", scope: !2472, file: !1, line: 952, type: !112)
!2486 = !DILocalVariable(name: "tmp10", scope: !2472, file: !1, line: 963, type: !112)
!2487 = !DILocalVariable(name: "tmp21", scope: !2472, file: !1, line: 964, type: !112)
!2488 = !DILocalVariable(name: "tmp31", scope: !2472, file: !1, line: 965, type: !112)
!2489 = !DILocalVariable(name: "tmp50", scope: !2472, file: !1, line: 966, type: !112)
!2490 = !DILocalVariable(name: "tmp60", scope: !2472, file: !1, line: 967, type: !112)
!2491 = !DILocalVariable(name: "z1", scope: !2472, file: !1, line: 968, type: !112)
!2492 = !DILocalVariable(name: "t1", scope: !2472, file: !1, line: 969, type: !112)
!2493 = !DILocalVariable(name: "z2", scope: !2472, file: !1, line: 970, type: !112)
!2494 = !DILocalVariable(name: "t2", scope: !2472, file: !1, line: 971, type: !112)
!2495 = !DILocalVariable(name: "tmp11", scope: !2472, file: !1, line: 978, type: !112)
!2496 = !DILocalVariable(name: "tmp2", scope: !2472, file: !1, line: 979, type: !112)
!2497 = !DILocalVariable(name: "tmp3", scope: !2472, file: !1, line: 980, type: !112)
!2498 = !DILocalVariable(name: "tmp41", scope: !2472, file: !1, line: 981, type: !112)
!2499 = !DILocalVariable(name: "tmp51", scope: !2472, file: !1, line: 982, type: !112)
!2500 = !DILocalVariable(name: "tmp61", scope: !2472, file: !1, line: 983, type: !112)
!2501 = !DILocalVariable(name: "tmp12", scope: !2472, file: !1, line: 988, type: !112)
!2502 = !DILocalVariable(name: "tmp4", scope: !2472, file: !1, line: 989, type: !112)
!2503 = !DILocalVariable(name: "tmp5", scope: !2472, file: !1, line: 990, type: !112)
!2504 = !DILocalVariable(name: "tmp6", scope: !2472, file: !1, line: 991, type: !112)
!2505 = !DILocalVariable(name: "x3", scope: !2472, file: !1, line: 992, type: !112)
!2506 = !DILocalVariable(name: "y3", scope: !2472, file: !1, line: 993, type: !112)
!2507 = !DILocalVariable(name: "z3", scope: !2472, file: !1, line: 994, type: !112)
!2508 = !DILocalVariable(name: "t3", scope: !2472, file: !1, line: 995, type: !112)
!2509 = !DILocation(line: 0, scope: !2472)
!2510 = !DILocation(line: 944, column: 3, scope: !2472)
!2511 = !DILocation(line: 944, column: 12, scope: !2472)
!2512 = !DILocation(line: 945, column: 20, scope: !2472)
!2513 = !DILocation(line: 946, column: 25, scope: !2472)
!2514 = !DILocation(line: 947, column: 25, scope: !2472)
!2515 = !DILocation(line: 948, column: 25, scope: !2472)
!2516 = !DILocation(line: 950, column: 18, scope: !2472)
!2517 = !DILocation(line: 952, column: 18, scope: !2472)
!2518 = !DILocation(line: 953, column: 3, scope: !2472)
!2519 = !DILocation(line: 954, column: 3, scope: !2472)
!2520 = !DILocation(line: 955, column: 3, scope: !2472)
!2521 = !DILocation(line: 956, column: 3, scope: !2472)
!2522 = !DILocation(line: 957, column: 3, scope: !2472)
!2523 = !DILocation(line: 958, column: 3, scope: !2472)
!2524 = !DILocation(line: 959, column: 3, scope: !2472)
!2525 = !DILocation(line: 960, column: 3, scope: !2472)
!2526 = !DILocation(line: 961, column: 3, scope: !2472)
!2527 = !DILocation(line: 962, column: 3, scope: !2472)
!2528 = !DILocation(line: 966, column: 25, scope: !2472)
!2529 = !DILocation(line: 967, column: 25, scope: !2472)
!2530 = !DILocation(line: 968, column: 18, scope: !2472)
!2531 = !DILocation(line: 969, column: 18, scope: !2472)
!2532 = !DILocation(line: 970, column: 18, scope: !2472)
!2533 = !DILocation(line: 971, column: 18, scope: !2472)
!2534 = !DILocation(line: 972, column: 3, scope: !2472)
!2535 = !DILocation(line: 973, column: 3, scope: !2472)
!2536 = !DILocation(line: 974, column: 3, scope: !2472)
!2537 = !DILocation(line: 975, column: 3, scope: !2472)
!2538 = !DILocation(line: 976, column: 3, scope: !2472)
!2539 = !DILocation(line: 977, column: 3, scope: !2472)
!2540 = !DILocation(line: 984, column: 3, scope: !2472)
!2541 = !DILocation(line: 985, column: 3, scope: !2472)
!2542 = !DILocation(line: 986, column: 3, scope: !2472)
!2543 = !DILocation(line: 987, column: 3, scope: !2472)
!2544 = !DILocation(line: 993, column: 18, scope: !2472)
!2545 = !DILocation(line: 994, column: 18, scope: !2472)
!2546 = !DILocation(line: 995, column: 18, scope: !2472)
!2547 = !DILocation(line: 996, column: 3, scope: !2472)
!2548 = !DILocation(line: 997, column: 3, scope: !2472)
!2549 = !DILocation(line: 998, column: 3, scope: !2472)
!2550 = !DILocation(line: 999, column: 3, scope: !2472)
!2551 = !DILocation(line: 1000, column: 1, scope: !2472)
!2552 = distinct !DISubprogram(name: "Hacl_Impl_Ed25519_PointDouble_point_double_", scope: !1, file: !1, line: 1041, type: !1280, scopeLine: 1042, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !2553)
!2553 = !{!2554, !2555, !2556, !2557, !2558, !2559, !2560, !2561, !2562, !2563, !2564}
!2554 = !DILocalVariable(name: "out", arg: 1, scope: !2552, file: !1, line: 1041, type: !112)
!2555 = !DILocalVariable(name: "p", arg: 2, scope: !2552, file: !1, line: 1041, type: !112)
!2556 = !DILocalVariable(name: "tmp", arg: 3, scope: !2552, file: !1, line: 1041, type: !112)
!2557 = !DILocalVariable(name: "tmp2", scope: !2552, file: !1, line: 1043, type: !112)
!2558 = !DILocalVariable(name: "tmp3", scope: !2552, file: !1, line: 1044, type: !112)
!2559 = !DILocalVariable(name: "tmp4", scope: !2552, file: !1, line: 1045, type: !112)
!2560 = !DILocalVariable(name: "tmp6", scope: !2552, file: !1, line: 1046, type: !112)
!2561 = !DILocalVariable(name: "x3", scope: !2552, file: !1, line: 1047, type: !112)
!2562 = !DILocalVariable(name: "y3", scope: !2552, file: !1, line: 1048, type: !112)
!2563 = !DILocalVariable(name: "z3", scope: !2552, file: !1, line: 1049, type: !112)
!2564 = !DILocalVariable(name: "t3", scope: !2552, file: !1, line: 1050, type: !112)
!2565 = !DILocation(line: 0, scope: !2552)
!2566 = !DILocation(line: 1043, column: 24, scope: !2552)
!2567 = !DILocation(line: 1044, column: 24, scope: !2552)
!2568 = !DILocation(line: 1045, column: 24, scope: !2552)
!2569 = !DILocation(line: 1046, column: 24, scope: !2552)
!2570 = !DILocation(line: 1048, column: 18, scope: !2552)
!2571 = !DILocation(line: 1049, column: 18, scope: !2552)
!2572 = !DILocation(line: 1050, column: 18, scope: !2552)
!2573 = !DILocation(line: 1051, column: 3, scope: !2552)
!2574 = !DILocation(line: 1052, column: 3, scope: !2552)
!2575 = !DILocation(line: 1053, column: 3, scope: !2552)
!2576 = !DILocation(line: 1054, column: 3, scope: !2552)
!2577 = !DILocation(line: 1055, column: 3, scope: !2552)
!2578 = !DILocation(line: 1056, column: 3, scope: !2552)
!2579 = !DILocation(line: 1057, column: 1, scope: !2552)
!2580 = distinct !DISubprogram(name: "Hacl_Impl_Ed25519_PointDouble_point_double_step_1", scope: !1, file: !1, line: 1002, type: !1026, scopeLine: 1003, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !2581)
!2581 = !{!2582, !2583, !2584, !2585, !2586, !2587, !2588, !2589, !2590}
!2582 = !DILocalVariable(name: "p", arg: 1, scope: !2580, file: !1, line: 1002, type: !112)
!2583 = !DILocalVariable(name: "tmp", arg: 2, scope: !2580, file: !1, line: 1002, type: !112)
!2584 = !DILocalVariable(name: "tmp1", scope: !2580, file: !1, line: 1004, type: !112)
!2585 = !DILocalVariable(name: "tmp2", scope: !2580, file: !1, line: 1005, type: !112)
!2586 = !DILocalVariable(name: "tmp3", scope: !2580, file: !1, line: 1006, type: !112)
!2587 = !DILocalVariable(name: "tmp4", scope: !2580, file: !1, line: 1007, type: !112)
!2588 = !DILocalVariable(name: "x1", scope: !2580, file: !1, line: 1008, type: !112)
!2589 = !DILocalVariable(name: "y1", scope: !2580, file: !1, line: 1009, type: !112)
!2590 = !DILocalVariable(name: "z1", scope: !2580, file: !1, line: 1010, type: !112)
!2591 = !DILocation(line: 0, scope: !2580)
!2592 = !DILocation(line: 1005, column: 24, scope: !2580)
!2593 = !DILocation(line: 1006, column: 24, scope: !2580)
!2594 = !DILocation(line: 1007, column: 24, scope: !2580)
!2595 = !DILocation(line: 1009, column: 18, scope: !2580)
!2596 = !DILocation(line: 1010, column: 18, scope: !2580)
!2597 = !DILocation(line: 1011, column: 3, scope: !2580)
!2598 = !DILocation(line: 1012, column: 3, scope: !2580)
!2599 = !DILocation(line: 1013, column: 3, scope: !2580)
!2600 = !DILocation(line: 1014, column: 3, scope: !2580)
!2601 = !DILocation(line: 1015, column: 3, scope: !2580)
!2602 = !DILocation(line: 1016, column: 3, scope: !2580)
!2603 = !DILocation(line: 1017, column: 3, scope: !2580)
!2604 = !DILocation(line: 1018, column: 1, scope: !2580)
!2605 = distinct !DISubprogram(name: "Hacl_Impl_Ed25519_PointDouble_point_double_step_2", scope: !1, file: !1, line: 1020, type: !1026, scopeLine: 1021, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !2606)
!2606 = !{!2607, !2608, !2609, !2610, !2611, !2612, !2613, !2614, !2615, !2616}
!2607 = !DILocalVariable(name: "p", arg: 1, scope: !2605, file: !1, line: 1020, type: !112)
!2608 = !DILocalVariable(name: "tmp", arg: 2, scope: !2605, file: !1, line: 1020, type: !112)
!2609 = !DILocalVariable(name: "tmp1", scope: !2605, file: !1, line: 1022, type: !112)
!2610 = !DILocalVariable(name: "tmp2", scope: !2605, file: !1, line: 1023, type: !112)
!2611 = !DILocalVariable(name: "tmp3", scope: !2605, file: !1, line: 1024, type: !112)
!2612 = !DILocalVariable(name: "tmp4", scope: !2605, file: !1, line: 1025, type: !112)
!2613 = !DILocalVariable(name: "tmp5", scope: !2605, file: !1, line: 1026, type: !112)
!2614 = !DILocalVariable(name: "tmp6", scope: !2605, file: !1, line: 1027, type: !112)
!2615 = !DILocalVariable(name: "x1", scope: !2605, file: !1, line: 1028, type: !112)
!2616 = !DILocalVariable(name: "y1", scope: !2605, file: !1, line: 1029, type: !112)
!2617 = !DILocation(line: 0, scope: !2605)
!2618 = !DILocation(line: 1023, column: 24, scope: !2605)
!2619 = !DILocation(line: 1024, column: 24, scope: !2605)
!2620 = !DILocation(line: 1025, column: 24, scope: !2605)
!2621 = !DILocation(line: 1026, column: 24, scope: !2605)
!2622 = !DILocation(line: 1027, column: 24, scope: !2605)
!2623 = !DILocation(line: 1029, column: 18, scope: !2605)
!2624 = !DILocation(line: 1030, column: 3, scope: !2605)
!2625 = !DILocation(line: 1031, column: 3, scope: !2605)
!2626 = !DILocation(line: 1032, column: 3, scope: !2605)
!2627 = !DILocation(line: 1033, column: 3, scope: !2605)
!2628 = !DILocation(line: 1034, column: 3, scope: !2605)
!2629 = !DILocation(line: 1035, column: 3, scope: !2605)
!2630 = !DILocation(line: 1036, column: 3, scope: !2605)
!2631 = !DILocation(line: 1037, column: 3, scope: !2605)
!2632 = !DILocation(line: 1038, column: 1, scope: !2605)
!2633 = distinct !DISubprogram(name: "Hacl_Bignum25519_fmul", scope: !1, file: !1, line: 671, type: !1280, scopeLine: 672, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !2634)
!2634 = !{!2635, !2636, !2637}
!2635 = !DILocalVariable(name: "out", arg: 1, scope: !2633, file: !1, line: 671, type: !112)
!2636 = !DILocalVariable(name: "a", arg: 2, scope: !2633, file: !1, line: 671, type: !112)
!2637 = !DILocalVariable(name: "b", arg: 3, scope: !2633, file: !1, line: 671, type: !112)
!2638 = !DILocation(line: 0, scope: !2633)
!2639 = !DILocation(line: 673, column: 3, scope: !2633)
!2640 = !DILocation(line: 674, column: 1, scope: !2633)
!2641 = distinct !DISubprogram(name: "Hacl_Bignum25519_fsquare", scope: !1, file: !1, line: 715, type: !1026, scopeLine: 716, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !2642)
!2642 = !{!2643, !2644, !2645, !2647}
!2643 = !DILocalVariable(name: "out", arg: 1, scope: !2641, file: !1, line: 715, type: !112)
!2644 = !DILocalVariable(name: "a", arg: 2, scope: !2641, file: !1, line: 715, type: !112)
!2645 = !DILocalVariable(name: "tmp", scope: !2641, file: !1, line: 718, type: !2646)
!2646 = !DICompositeType(tag: DW_TAG_array_type, baseType: !592, size: 640, elements: !1304)
!2647 = !DILocalVariable(name: "_i", scope: !2648, file: !1, line: 719, type: !3)
!2648 = distinct !DILexicalBlock(scope: !2641, file: !1, line: 719, column: 3)
!2649 = !DILocation(line: 0, scope: !2641)
!2650 = !DILocation(line: 718, column: 3, scope: !2641)
!2651 = !DILocation(line: 718, column: 19, scope: !2641)
!2652 = !DILocation(line: 0, scope: !2648)
!2653 = !DILocation(line: 719, column: 3, scope: !2648)
!2654 = !DILocation(line: 721, column: 3, scope: !2641)
!2655 = !DILocation(line: 722, column: 32, scope: !2641)
!2656 = !DILocation(line: 722, column: 3, scope: !2641)
!2657 = !DILocation(line: 723, column: 1, scope: !2641)
!2658 = !DILocation(line: 720, column: 5, scope: !2659)
!2659 = distinct !DILexicalBlock(scope: !2648, file: !1, line: 719, column: 3)
!2660 = !DILocation(line: 720, column: 15, scope: !2659)
!2661 = !DILocation(line: 719, column: 45, scope: !2659)
!2662 = !DILocation(line: 719, column: 29, scope: !2659)
!2663 = distinct !{!2663, !2653, !2664, !574, !575}
!2664 = !DILocation(line: 720, column: 59, scope: !2648)
!2665 = distinct !DISubprogram(name: "Hacl_Bignum25519_times_2", scope: !1, file: !1, line: 676, type: !1026, scopeLine: 677, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !2666)
!2666 = !{!2667, !2668, !2669, !2670, !2671, !2672, !2673, !2674, !2675, !2676, !2677, !2678}
!2667 = !DILocalVariable(name: "out", arg: 1, scope: !2665, file: !1, line: 676, type: !112)
!2668 = !DILocalVariable(name: "a", arg: 2, scope: !2665, file: !1, line: 676, type: !112)
!2669 = !DILocalVariable(name: "a0", scope: !2665, file: !1, line: 678, type: !11)
!2670 = !DILocalVariable(name: "a1", scope: !2665, file: !1, line: 679, type: !11)
!2671 = !DILocalVariable(name: "a2", scope: !2665, file: !1, line: 680, type: !11)
!2672 = !DILocalVariable(name: "a3", scope: !2665, file: !1, line: 681, type: !11)
!2673 = !DILocalVariable(name: "a4", scope: !2665, file: !1, line: 682, type: !11)
!2674 = !DILocalVariable(name: "o0", scope: !2665, file: !1, line: 683, type: !11)
!2675 = !DILocalVariable(name: "o1", scope: !2665, file: !1, line: 684, type: !11)
!2676 = !DILocalVariable(name: "o2", scope: !2665, file: !1, line: 685, type: !11)
!2677 = !DILocalVariable(name: "o3", scope: !2665, file: !1, line: 686, type: !11)
!2678 = !DILocalVariable(name: "o4", scope: !2665, file: !1, line: 687, type: !11)
!2679 = !DILocation(line: 0, scope: !2665)
!2680 = !DILocation(line: 678, column: 17, scope: !2665)
!2681 = !DILocation(line: 679, column: 17, scope: !2665)
!2682 = !DILocation(line: 680, column: 17, scope: !2665)
!2683 = !DILocation(line: 681, column: 17, scope: !2665)
!2684 = !DILocation(line: 682, column: 17, scope: !2665)
!2685 = !DILocation(line: 683, column: 30, scope: !2665)
!2686 = !DILocation(line: 684, column: 30, scope: !2665)
!2687 = !DILocation(line: 685, column: 30, scope: !2665)
!2688 = !DILocation(line: 686, column: 30, scope: !2665)
!2689 = !DILocation(line: 687, column: 30, scope: !2665)
!2690 = !DILocation(line: 688, column: 3, scope: !2665)
!2691 = !DILocation(line: 689, column: 1, scope: !2665)
!2692 = distinct !DISubprogram(name: "Hacl_Bignum25519_fsum", scope: !1, file: !1, line: 630, type: !1026, scopeLine: 631, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !2693)
!2693 = !{!2694, !2695}
!2694 = !DILocalVariable(name: "a", arg: 1, scope: !2692, file: !1, line: 630, type: !112)
!2695 = !DILocalVariable(name: "b", arg: 2, scope: !2692, file: !1, line: 630, type: !112)
!2696 = !DILocation(line: 0, scope: !2692)
!2697 = !DILocation(line: 632, column: 3, scope: !2692)
!2698 = !DILocation(line: 633, column: 1, scope: !2692)
!2699 = distinct !DISubprogram(name: "Hacl_Bignum25519_reduce_513", scope: !1, file: !1, line: 640, type: !327, scopeLine: 641, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !2700)
!2700 = !{!2701, !2702, !2703, !2704, !2705, !2706, !2707, !2708, !2709, !2710, !2711, !2712, !2713, !2714, !2715, !2716, !2717, !2718}
!2701 = !DILocalVariable(name: "a", arg: 1, scope: !2699, file: !1, line: 640, type: !112)
!2702 = !DILocalVariable(name: "t0", scope: !2699, file: !1, line: 642, type: !11)
!2703 = !DILocalVariable(name: "t1", scope: !2699, file: !1, line: 643, type: !11)
!2704 = !DILocalVariable(name: "t2", scope: !2699, file: !1, line: 644, type: !11)
!2705 = !DILocalVariable(name: "t3", scope: !2699, file: !1, line: 645, type: !11)
!2706 = !DILocalVariable(name: "t4", scope: !2699, file: !1, line: 646, type: !11)
!2707 = !DILocalVariable(name: "t1_", scope: !2699, file: !1, line: 647, type: !11)
!2708 = !DILocalVariable(name: "t0_", scope: !2699, file: !1, line: 648, type: !11)
!2709 = !DILocalVariable(name: "t2_", scope: !2699, file: !1, line: 649, type: !11)
!2710 = !DILocalVariable(name: "t1__", scope: !2699, file: !1, line: 650, type: !11)
!2711 = !DILocalVariable(name: "t3_", scope: !2699, file: !1, line: 651, type: !11)
!2712 = !DILocalVariable(name: "t2__", scope: !2699, file: !1, line: 652, type: !11)
!2713 = !DILocalVariable(name: "t4_", scope: !2699, file: !1, line: 653, type: !11)
!2714 = !DILocalVariable(name: "t3__", scope: !2699, file: !1, line: 654, type: !11)
!2715 = !DILocalVariable(name: "i0", scope: !2699, file: !1, line: 657, type: !11)
!2716 = !DILocalVariable(name: "i1", scope: !2699, file: !1, line: 658, type: !11)
!2717 = !DILocalVariable(name: "i0_", scope: !2699, file: !1, line: 659, type: !11)
!2718 = !DILocalVariable(name: "i1_", scope: !2699, file: !1, line: 660, type: !11)
!2719 = !DILocation(line: 0, scope: !2699)
!2720 = !DILocation(line: 642, column: 17, scope: !2699)
!2721 = !DILocation(line: 643, column: 17, scope: !2699)
!2722 = !DILocation(line: 644, column: 17, scope: !2699)
!2723 = !DILocation(line: 645, column: 17, scope: !2699)
!2724 = !DILocation(line: 646, column: 17, scope: !2699)
!2725 = !DILocation(line: 647, column: 27, scope: !2699)
!2726 = !DILocation(line: 647, column: 21, scope: !2699)
!2727 = !DILocation(line: 648, column: 21, scope: !2699)
!2728 = !DILocation(line: 649, column: 28, scope: !2699)
!2729 = !DILocation(line: 649, column: 21, scope: !2699)
!2730 = !DILocation(line: 650, column: 23, scope: !2699)
!2731 = !DILocation(line: 651, column: 28, scope: !2699)
!2732 = !DILocation(line: 651, column: 21, scope: !2699)
!2733 = !DILocation(line: 652, column: 23, scope: !2699)
!2734 = !DILocation(line: 653, column: 28, scope: !2699)
!2735 = !DILocation(line: 653, column: 21, scope: !2699)
!2736 = !DILocation(line: 654, column: 23, scope: !2699)
!2737 = !DILocation(line: 655, column: 3, scope: !2699)
!2738 = !DILocation(line: 656, column: 3, scope: !2699)
!2739 = !DILocation(line: 657, column: 17, scope: !2699)
!2740 = !DILocation(line: 658, column: 17, scope: !2699)
!2741 = !DILocation(line: 659, column: 21, scope: !2699)
!2742 = !DILocation(line: 660, column: 27, scope: !2699)
!2743 = !DILocation(line: 660, column: 21, scope: !2699)
!2744 = !DILocation(line: 661, column: 9, scope: !2699)
!2745 = !DILocation(line: 662, column: 9, scope: !2699)
!2746 = !DILocation(line: 663, column: 1, scope: !2699)
!2747 = distinct !DISubprogram(name: "Hacl_Bignum_Fsquare_fsquare_", scope: !1, file: !1, line: 266, type: !2748, scopeLine: 267, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !2750)
!2748 = !DISubroutineType(types: !2749)
!2749 = !{null, !1262, !112}
!2750 = !{!2751, !2752, !2753, !2754, !2755, !2756, !2757, !2758, !2759, !2760}
!2751 = !DILocalVariable(name: "tmp", arg: 1, scope: !2747, file: !1, line: 266, type: !1262)
!2752 = !DILocalVariable(name: "output", arg: 2, scope: !2747, file: !1, line: 266, type: !112)
!2753 = !DILocalVariable(name: "b4", scope: !2747, file: !1, line: 270, type: !592)
!2754 = !DILocalVariable(name: "b0", scope: !2747, file: !1, line: 271, type: !592)
!2755 = !DILocalVariable(name: "b4_", scope: !2747, file: !1, line: 273, type: !592)
!2756 = !DILocalVariable(name: "b0_", scope: !2747, file: !1, line: 275, type: !592)
!2757 = !DILocalVariable(name: "i0", scope: !2747, file: !1, line: 282, type: !11)
!2758 = !DILocalVariable(name: "i1", scope: !2747, file: !1, line: 283, type: !11)
!2759 = !DILocalVariable(name: "i0_", scope: !2747, file: !1, line: 284, type: !11)
!2760 = !DILocalVariable(name: "i1_", scope: !2747, file: !1, line: 285, type: !11)
!2761 = !DILocation(line: 0, scope: !2747)
!2762 = !DILocation(line: 268, column: 3, scope: !2747)
!2763 = !DILocation(line: 269, column: 3, scope: !2747)
!2764 = !DILocation(line: 270, column: 24, scope: !2747)
!2765 = !DILocation(line: 271, column: 24, scope: !2747)
!2766 = !DILocation(line: 272, column: 3, scope: !2747)
!2767 = !DILocation(line: 273, column: 3, scope: !2747)
!2768 = !DILocation(line: 273, column: 34, scope: !2747)
!2769 = !DILocation(line: 273, column: 9, scope: !2747)
!2770 = !DILocation(line: 274, column: 3, scope: !2747)
!2771 = !DILocation(line: 275, column: 3, scope: !2747)
!2772 = !DILocation(line: 278, column: 41, scope: !2747)
!2773 = !DILocation(line: 278, column: 9, scope: !2747)
!2774 = !DILocation(line: 277, column: 7, scope: !2747)
!2775 = !DILocation(line: 276, column: 5, scope: !2747)
!2776 = !DILocation(line: 279, column: 3, scope: !2747)
!2777 = !DILocation(line: 279, column: 13, scope: !2747)
!2778 = !DILocation(line: 280, column: 13, scope: !2747)
!2779 = !DILocation(line: 281, column: 3, scope: !2747)
!2780 = !DILocation(line: 282, column: 17, scope: !2747)
!2781 = !DILocation(line: 283, column: 17, scope: !2747)
!2782 = !DILocation(line: 284, column: 21, scope: !2747)
!2783 = !DILocation(line: 285, column: 27, scope: !2747)
!2784 = !DILocation(line: 285, column: 21, scope: !2747)
!2785 = !DILocation(line: 286, column: 14, scope: !2747)
!2786 = !DILocation(line: 287, column: 14, scope: !2747)
!2787 = !DILocation(line: 288, column: 1, scope: !2747)
!2788 = distinct !DISubprogram(name: "Hacl_Bignum_Fsquare_fsquare__", scope: !1, file: !1, line: 222, type: !2748, scopeLine: 223, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !2789)
!2789 = !{!2790, !2791, !2792, !2793, !2794, !2795, !2796, !2797, !2798, !2799, !2800, !2801, !2802, !2803, !2804, !2805, !2806}
!2790 = !DILocalVariable(name: "tmp", arg: 1, scope: !2788, file: !1, line: 222, type: !1262)
!2791 = !DILocalVariable(name: "output", arg: 2, scope: !2788, file: !1, line: 222, type: !112)
!2792 = !DILocalVariable(name: "r0", scope: !2788, file: !1, line: 224, type: !11)
!2793 = !DILocalVariable(name: "r1", scope: !2788, file: !1, line: 225, type: !11)
!2794 = !DILocalVariable(name: "r2", scope: !2788, file: !1, line: 226, type: !11)
!2795 = !DILocalVariable(name: "r3", scope: !2788, file: !1, line: 227, type: !11)
!2796 = !DILocalVariable(name: "r4", scope: !2788, file: !1, line: 228, type: !11)
!2797 = !DILocalVariable(name: "d0", scope: !2788, file: !1, line: 229, type: !11)
!2798 = !DILocalVariable(name: "d1", scope: !2788, file: !1, line: 230, type: !11)
!2799 = !DILocalVariable(name: "d2", scope: !2788, file: !1, line: 231, type: !11)
!2800 = !DILocalVariable(name: "d419", scope: !2788, file: !1, line: 232, type: !11)
!2801 = !DILocalVariable(name: "d4", scope: !2788, file: !1, line: 233, type: !11)
!2802 = !DILocalVariable(name: "s0", scope: !2788, file: !1, line: 235, type: !592)
!2803 = !DILocalVariable(name: "s1", scope: !2788, file: !1, line: 240, type: !592)
!2804 = !DILocalVariable(name: "s2", scope: !2788, file: !1, line: 245, type: !592)
!2805 = !DILocalVariable(name: "s3", scope: !2788, file: !1, line: 250, type: !592)
!2806 = !DILocalVariable(name: "s4", scope: !2788, file: !1, line: 255, type: !592)
!2807 = !DILocation(line: 0, scope: !2788)
!2808 = !DILocation(line: 224, column: 17, scope: !2788)
!2809 = !DILocation(line: 225, column: 17, scope: !2788)
!2810 = !DILocation(line: 226, column: 17, scope: !2788)
!2811 = !DILocation(line: 227, column: 17, scope: !2788)
!2812 = !DILocation(line: 228, column: 17, scope: !2788)
!2813 = !DILocation(line: 229, column: 20, scope: !2788)
!2814 = !DILocation(line: 230, column: 20, scope: !2788)
!2815 = !DILocation(line: 231, column: 35, scope: !2788)
!2816 = !DILocation(line: 232, column: 22, scope: !2788)
!2817 = !DILocation(line: 233, column: 22, scope: !2788)
!2818 = !DILocation(line: 234, column: 3, scope: !2788)
!2819 = !DILocation(line: 235, column: 3, scope: !2788)
!2820 = !DILocation(line: 236, column: 41, scope: !2788)
!2821 = !DILocation(line: 237, column: 9, scope: !2788)
!2822 = !DILocation(line: 236, column: 23, scope: !2788)
!2823 = !DILocation(line: 238, column: 7, scope: !2788)
!2824 = !DILocation(line: 236, column: 5, scope: !2788)
!2825 = !DILocation(line: 239, column: 3, scope: !2788)
!2826 = !DILocation(line: 240, column: 3, scope: !2788)
!2827 = !DILocation(line: 241, column: 41, scope: !2788)
!2828 = !DILocation(line: 242, column: 9, scope: !2788)
!2829 = !DILocation(line: 241, column: 23, scope: !2788)
!2830 = !DILocation(line: 243, column: 33, scope: !2788)
!2831 = !DILocation(line: 243, column: 7, scope: !2788)
!2832 = !DILocation(line: 241, column: 5, scope: !2788)
!2833 = !DILocation(line: 244, column: 3, scope: !2788)
!2834 = !DILocation(line: 245, column: 3, scope: !2788)
!2835 = !DILocation(line: 246, column: 41, scope: !2788)
!2836 = !DILocation(line: 247, column: 9, scope: !2788)
!2837 = !DILocation(line: 246, column: 23, scope: !2788)
!2838 = !DILocation(line: 248, column: 7, scope: !2788)
!2839 = !DILocation(line: 246, column: 5, scope: !2788)
!2840 = !DILocation(line: 249, column: 3, scope: !2788)
!2841 = !DILocation(line: 250, column: 3, scope: !2788)
!2842 = !DILocation(line: 251, column: 41, scope: !2788)
!2843 = !DILocation(line: 252, column: 9, scope: !2788)
!2844 = !DILocation(line: 251, column: 23, scope: !2788)
!2845 = !DILocation(line: 253, column: 7, scope: !2788)
!2846 = !DILocation(line: 251, column: 5, scope: !2788)
!2847 = !DILocation(line: 254, column: 3, scope: !2788)
!2848 = !DILocation(line: 255, column: 3, scope: !2788)
!2849 = !DILocation(line: 256, column: 41, scope: !2788)
!2850 = !DILocation(line: 257, column: 9, scope: !2788)
!2851 = !DILocation(line: 256, column: 23, scope: !2788)
!2852 = !DILocation(line: 258, column: 7, scope: !2788)
!2853 = !DILocation(line: 256, column: 5, scope: !2788)
!2854 = !DILocation(line: 259, column: 13, scope: !2788)
!2855 = !DILocation(line: 260, column: 3, scope: !2788)
!2856 = !DILocation(line: 260, column: 13, scope: !2788)
!2857 = !DILocation(line: 261, column: 3, scope: !2788)
!2858 = !DILocation(line: 261, column: 13, scope: !2788)
!2859 = !DILocation(line: 262, column: 3, scope: !2788)
!2860 = !DILocation(line: 262, column: 13, scope: !2788)
!2861 = !DILocation(line: 263, column: 3, scope: !2788)
!2862 = !DILocation(line: 263, column: 13, scope: !2788)
!2863 = !DILocation(line: 264, column: 1, scope: !2788)
!2864 = distinct !DISubprogram(name: "Hacl_Bignum_Fproduct_carry_wide_", scope: !1, file: !1, line: 96, type: !2865, scopeLine: 97, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !2867)
!2865 = !DISubroutineType(types: !2866)
!2866 = !{null, !1262}
!2867 = !{!2868, !2869, !2871, !2872, !2873, !2874, !2875, !2877, !2878, !2879, !2880, !2881, !2883, !2884, !2885, !2886, !2887, !2889, !2890, !2891, !2892}
!2868 = !DILocalVariable(name: "tmp", arg: 1, scope: !2864, file: !1, line: 96, type: !1262)
!2869 = !DILocalVariable(name: "ctr", scope: !2870, file: !1, line: 99, type: !3)
!2870 = distinct !DILexicalBlock(scope: !2864, file: !1, line: 98, column: 3)
!2871 = !DILocalVariable(name: "tctr", scope: !2870, file: !1, line: 100, type: !592)
!2872 = !DILocalVariable(name: "tctrp1", scope: !2870, file: !1, line: 101, type: !592)
!2873 = !DILocalVariable(name: "r0", scope: !2870, file: !1, line: 102, type: !11)
!2874 = !DILocalVariable(name: "c", scope: !2870, file: !1, line: 103, type: !592)
!2875 = !DILocalVariable(name: "ctr", scope: !2876, file: !1, line: 108, type: !3)
!2876 = distinct !DILexicalBlock(scope: !2864, file: !1, line: 107, column: 3)
!2877 = !DILocalVariable(name: "tctr", scope: !2876, file: !1, line: 109, type: !592)
!2878 = !DILocalVariable(name: "tctrp1", scope: !2876, file: !1, line: 110, type: !592)
!2879 = !DILocalVariable(name: "r0", scope: !2876, file: !1, line: 111, type: !11)
!2880 = !DILocalVariable(name: "c", scope: !2876, file: !1, line: 112, type: !592)
!2881 = !DILocalVariable(name: "ctr", scope: !2882, file: !1, line: 117, type: !3)
!2882 = distinct !DILexicalBlock(scope: !2864, file: !1, line: 116, column: 3)
!2883 = !DILocalVariable(name: "tctr", scope: !2882, file: !1, line: 118, type: !592)
!2884 = !DILocalVariable(name: "tctrp1", scope: !2882, file: !1, line: 119, type: !592)
!2885 = !DILocalVariable(name: "r0", scope: !2882, file: !1, line: 120, type: !11)
!2886 = !DILocalVariable(name: "c", scope: !2882, file: !1, line: 121, type: !592)
!2887 = !DILocalVariable(name: "ctr", scope: !2888, file: !1, line: 126, type: !3)
!2888 = distinct !DILexicalBlock(scope: !2864, file: !1, line: 125, column: 3)
!2889 = !DILocalVariable(name: "tctr", scope: !2888, file: !1, line: 127, type: !592)
!2890 = !DILocalVariable(name: "tctrp1", scope: !2888, file: !1, line: 128, type: !592)
!2891 = !DILocalVariable(name: "r0", scope: !2888, file: !1, line: 129, type: !11)
!2892 = !DILocalVariable(name: "c", scope: !2888, file: !1, line: 130, type: !592)
!2893 = !DILocation(line: 0, scope: !2864)
!2894 = !DILocation(line: 0, scope: !2870)
!2895 = !DILocation(line: 100, column: 28, scope: !2870)
!2896 = !DILocation(line: 101, column: 30, scope: !2870)
!2897 = !DILocation(line: 102, column: 19, scope: !2870)
!2898 = !DILocation(line: 102, column: 57, scope: !2870)
!2899 = !DILocation(line: 103, column: 5, scope: !2870)
!2900 = !DILocation(line: 103, column: 21, scope: !2870)
!2901 = !DILocation(line: 103, column: 25, scope: !2870)
!2902 = !DILocation(line: 104, column: 16, scope: !2870)
!2903 = !DILocation(line: 105, column: 31, scope: !2870)
!2904 = !DILocation(line: 106, column: 3, scope: !2864)
!2905 = !DILocation(line: 0, scope: !2876)
!2906 = !DILocation(line: 109, column: 28, scope: !2876)
!2907 = !DILocation(line: 110, column: 30, scope: !2876)
!2908 = !DILocation(line: 111, column: 19, scope: !2876)
!2909 = !DILocation(line: 111, column: 57, scope: !2876)
!2910 = !DILocation(line: 112, column: 5, scope: !2876)
!2911 = !DILocation(line: 112, column: 21, scope: !2876)
!2912 = !DILocation(line: 112, column: 25, scope: !2876)
!2913 = !DILocation(line: 113, column: 16, scope: !2876)
!2914 = !DILocation(line: 114, column: 31, scope: !2876)
!2915 = !DILocation(line: 115, column: 3, scope: !2864)
!2916 = !DILocation(line: 0, scope: !2882)
!2917 = !DILocation(line: 118, column: 28, scope: !2882)
!2918 = !DILocation(line: 119, column: 30, scope: !2882)
!2919 = !DILocation(line: 120, column: 19, scope: !2882)
!2920 = !DILocation(line: 120, column: 57, scope: !2882)
!2921 = !DILocation(line: 121, column: 5, scope: !2882)
!2922 = !DILocation(line: 121, column: 21, scope: !2882)
!2923 = !DILocation(line: 121, column: 25, scope: !2882)
!2924 = !DILocation(line: 122, column: 16, scope: !2882)
!2925 = !DILocation(line: 123, column: 31, scope: !2882)
!2926 = !DILocation(line: 124, column: 3, scope: !2864)
!2927 = !DILocation(line: 0, scope: !2888)
!2928 = !DILocation(line: 127, column: 28, scope: !2888)
!2929 = !DILocation(line: 128, column: 30, scope: !2888)
!2930 = !DILocation(line: 129, column: 19, scope: !2888)
!2931 = !DILocation(line: 129, column: 57, scope: !2888)
!2932 = !DILocation(line: 130, column: 5, scope: !2888)
!2933 = !DILocation(line: 130, column: 21, scope: !2888)
!2934 = !DILocation(line: 130, column: 25, scope: !2888)
!2935 = !DILocation(line: 131, column: 16, scope: !2888)
!2936 = !DILocation(line: 132, column: 31, scope: !2888)
!2937 = !DILocation(line: 133, column: 3, scope: !2864)
!2938 = !DILocation(line: 134, column: 1, scope: !2864)
!2939 = !DISubprogram(name: "FStar_UInt128_logand", scope: !593, file: !593, line: 49, type: !843, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !841)
!2940 = distinct !DISubprogram(name: "Hacl_Bignum_Fproduct_copy_from_wide_", scope: !1, file: !1, line: 38, type: !1579, scopeLine: 39, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !2941)
!2941 = !{!2942, !2943, !2944, !2946, !2948, !2950, !2952}
!2942 = !DILocalVariable(name: "output", arg: 1, scope: !2940, file: !1, line: 38, type: !112)
!2943 = !DILocalVariable(name: "input", arg: 2, scope: !2940, file: !1, line: 38, type: !1262)
!2944 = !DILocalVariable(name: "xi", scope: !2945, file: !1, line: 41, type: !592)
!2945 = distinct !DILexicalBlock(scope: !2940, file: !1, line: 40, column: 3)
!2946 = !DILocalVariable(name: "xi", scope: !2947, file: !1, line: 45, type: !592)
!2947 = distinct !DILexicalBlock(scope: !2940, file: !1, line: 44, column: 3)
!2948 = !DILocalVariable(name: "xi", scope: !2949, file: !1, line: 49, type: !592)
!2949 = distinct !DILexicalBlock(scope: !2940, file: !1, line: 48, column: 3)
!2950 = !DILocalVariable(name: "xi", scope: !2951, file: !1, line: 53, type: !592)
!2951 = distinct !DILexicalBlock(scope: !2940, file: !1, line: 52, column: 3)
!2952 = !DILocalVariable(name: "xi", scope: !2953, file: !1, line: 57, type: !592)
!2953 = distinct !DILexicalBlock(scope: !2940, file: !1, line: 56, column: 3)
!2954 = !DILocation(line: 0, scope: !2940)
!2955 = !DILocation(line: 41, column: 26, scope: !2945)
!2956 = !DILocation(line: 0, scope: !2945)
!2957 = !DILocation(line: 42, column: 18, scope: !2945)
!2958 = !DILocation(line: 42, column: 16, scope: !2945)
!2959 = !DILocation(line: 45, column: 26, scope: !2947)
!2960 = !DILocation(line: 0, scope: !2947)
!2961 = !DILocation(line: 46, column: 18, scope: !2947)
!2962 = !DILocation(line: 46, column: 5, scope: !2947)
!2963 = !DILocation(line: 46, column: 16, scope: !2947)
!2964 = !DILocation(line: 49, column: 26, scope: !2949)
!2965 = !DILocation(line: 0, scope: !2949)
!2966 = !DILocation(line: 50, column: 18, scope: !2949)
!2967 = !DILocation(line: 50, column: 5, scope: !2949)
!2968 = !DILocation(line: 50, column: 16, scope: !2949)
!2969 = !DILocation(line: 53, column: 26, scope: !2951)
!2970 = !DILocation(line: 0, scope: !2951)
!2971 = !DILocation(line: 54, column: 18, scope: !2951)
!2972 = !DILocation(line: 54, column: 5, scope: !2951)
!2973 = !DILocation(line: 54, column: 16, scope: !2951)
!2974 = !DILocation(line: 57, column: 26, scope: !2953)
!2975 = !DILocation(line: 0, scope: !2953)
!2976 = !DILocation(line: 58, column: 18, scope: !2953)
!2977 = !DILocation(line: 58, column: 5, scope: !2953)
!2978 = !DILocation(line: 58, column: 16, scope: !2953)
!2979 = !DILocation(line: 60, column: 1, scope: !2940)
!2980 = distinct !DISubprogram(name: "Hacl_Bignum_fsum", scope: !1, file: !1, line: 394, type: !1026, scopeLine: 395, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !2981)
!2981 = !{!2982, !2983, !2984, !2986, !2987, !2989, !2990, !2992, !2993, !2995, !2996, !2998}
!2982 = !DILocalVariable(name: "a", arg: 1, scope: !2980, file: !1, line: 394, type: !112)
!2983 = !DILocalVariable(name: "b", arg: 2, scope: !2980, file: !1, line: 394, type: !112)
!2984 = !DILocalVariable(name: "xi", scope: !2985, file: !1, line: 397, type: !11)
!2985 = distinct !DILexicalBlock(scope: !2980, file: !1, line: 396, column: 3)
!2986 = !DILocalVariable(name: "yi", scope: !2985, file: !1, line: 398, type: !11)
!2987 = !DILocalVariable(name: "xi", scope: !2988, file: !1, line: 402, type: !11)
!2988 = distinct !DILexicalBlock(scope: !2980, file: !1, line: 401, column: 3)
!2989 = !DILocalVariable(name: "yi", scope: !2988, file: !1, line: 403, type: !11)
!2990 = !DILocalVariable(name: "xi", scope: !2991, file: !1, line: 407, type: !11)
!2991 = distinct !DILexicalBlock(scope: !2980, file: !1, line: 406, column: 3)
!2992 = !DILocalVariable(name: "yi", scope: !2991, file: !1, line: 408, type: !11)
!2993 = !DILocalVariable(name: "xi", scope: !2994, file: !1, line: 412, type: !11)
!2994 = distinct !DILexicalBlock(scope: !2980, file: !1, line: 411, column: 3)
!2995 = !DILocalVariable(name: "yi", scope: !2994, file: !1, line: 413, type: !11)
!2996 = !DILocalVariable(name: "xi", scope: !2997, file: !1, line: 417, type: !11)
!2997 = distinct !DILexicalBlock(scope: !2980, file: !1, line: 416, column: 3)
!2998 = !DILocalVariable(name: "yi", scope: !2997, file: !1, line: 418, type: !11)
!2999 = !DILocation(line: 0, scope: !2980)
!3000 = !DILocation(line: 397, column: 19, scope: !2985)
!3001 = !DILocation(line: 0, scope: !2985)
!3002 = !DILocation(line: 398, column: 19, scope: !2985)
!3003 = !DILocation(line: 399, column: 16, scope: !2985)
!3004 = !DILocation(line: 399, column: 11, scope: !2985)
!3005 = !DILocation(line: 402, column: 19, scope: !2988)
!3006 = !DILocation(line: 0, scope: !2988)
!3007 = !DILocation(line: 403, column: 19, scope: !2988)
!3008 = !DILocation(line: 404, column: 16, scope: !2988)
!3009 = !DILocation(line: 404, column: 11, scope: !2988)
!3010 = !DILocation(line: 407, column: 19, scope: !2991)
!3011 = !DILocation(line: 0, scope: !2991)
!3012 = !DILocation(line: 408, column: 19, scope: !2991)
!3013 = !DILocation(line: 409, column: 16, scope: !2991)
!3014 = !DILocation(line: 409, column: 11, scope: !2991)
!3015 = !DILocation(line: 412, column: 19, scope: !2994)
!3016 = !DILocation(line: 0, scope: !2994)
!3017 = !DILocation(line: 413, column: 19, scope: !2994)
!3018 = !DILocation(line: 414, column: 16, scope: !2994)
!3019 = !DILocation(line: 414, column: 11, scope: !2994)
!3020 = !DILocation(line: 417, column: 19, scope: !2997)
!3021 = !DILocation(line: 0, scope: !2997)
!3022 = !DILocation(line: 418, column: 19, scope: !2997)
!3023 = !DILocation(line: 419, column: 16, scope: !2997)
!3024 = !DILocation(line: 419, column: 11, scope: !2997)
!3025 = !DILocation(line: 421, column: 1, scope: !2980)
!3026 = distinct !DISubprogram(name: "Hacl_Bignum_Modulo_carry_top", scope: !1, file: !1, line: 27, type: !327, scopeLine: 28, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !3027)
!3027 = !{!3028, !3029, !3030, !3031, !3032}
!3028 = !DILocalVariable(name: "b", arg: 1, scope: !3026, file: !1, line: 27, type: !112)
!3029 = !DILocalVariable(name: "b4", scope: !3026, file: !1, line: 29, type: !11)
!3030 = !DILocalVariable(name: "b0", scope: !3026, file: !1, line: 30, type: !11)
!3031 = !DILocalVariable(name: "b4_", scope: !3026, file: !1, line: 31, type: !11)
!3032 = !DILocalVariable(name: "b0_", scope: !3026, file: !1, line: 32, type: !11)
!3033 = !DILocation(line: 0, scope: !3026)
!3034 = !DILocation(line: 29, column: 17, scope: !3026)
!3035 = !DILocation(line: 30, column: 17, scope: !3026)
!3036 = !DILocation(line: 31, column: 21, scope: !3026)
!3037 = !DILocation(line: 32, column: 43, scope: !3026)
!3038 = !DILocation(line: 32, column: 37, scope: !3026)
!3039 = !DILocation(line: 32, column: 21, scope: !3026)
!3040 = !DILocation(line: 33, column: 9, scope: !3026)
!3041 = !DILocation(line: 34, column: 9, scope: !3026)
!3042 = !DILocation(line: 35, column: 1, scope: !3026)
!3043 = distinct !DISubprogram(name: "Hacl_Bignum25519_fdifference", scope: !1, file: !1, line: 635, type: !1026, scopeLine: 636, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !3044)
!3044 = !{!3045, !3046}
!3045 = !DILocalVariable(name: "a", arg: 1, scope: !3043, file: !1, line: 635, type: !112)
!3046 = !DILocalVariable(name: "b", arg: 2, scope: !3043, file: !1, line: 635, type: !112)
!3047 = !DILocation(line: 0, scope: !3043)
!3048 = !DILocation(line: 637, column: 3, scope: !3043)
!3049 = !DILocation(line: 638, column: 1, scope: !3043)
!3050 = distinct !DISubprogram(name: "Hacl_Bignum25519_fdifference_reduced", scope: !1, file: !1, line: 665, type: !1026, scopeLine: 666, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !3051)
!3051 = !{!3052, !3053}
!3052 = !DILocalVariable(name: "a", arg: 1, scope: !3050, file: !1, line: 665, type: !112)
!3053 = !DILocalVariable(name: "b", arg: 2, scope: !3050, file: !1, line: 665, type: !112)
!3054 = !DILocation(line: 0, scope: !3050)
!3055 = !DILocation(line: 667, column: 3, scope: !3050)
!3056 = !DILocation(line: 668, column: 3, scope: !3050)
!3057 = !DILocation(line: 669, column: 1, scope: !3050)
!3058 = distinct !DISubprogram(name: "Hacl_Bignum_fdifference", scope: !1, file: !1, line: 423, type: !1026, scopeLine: 424, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !3059)
!3059 = !{!3060, !3061, !3062, !3063, !3064, !3065, !3066, !3067, !3068, !3070, !3071, !3073, !3074, !3076, !3077, !3079, !3080, !3082}
!3060 = !DILocalVariable(name: "a", arg: 1, scope: !3058, file: !1, line: 423, type: !112)
!3061 = !DILocalVariable(name: "b", arg: 2, scope: !3058, file: !1, line: 423, type: !112)
!3062 = !DILocalVariable(name: "tmp", scope: !3058, file: !1, line: 425, type: !1303)
!3063 = !DILocalVariable(name: "b0", scope: !3058, file: !1, line: 427, type: !11)
!3064 = !DILocalVariable(name: "b1", scope: !3058, file: !1, line: 428, type: !11)
!3065 = !DILocalVariable(name: "b2", scope: !3058, file: !1, line: 429, type: !11)
!3066 = !DILocalVariable(name: "b3", scope: !3058, file: !1, line: 430, type: !11)
!3067 = !DILocalVariable(name: "b4", scope: !3058, file: !1, line: 431, type: !11)
!3068 = !DILocalVariable(name: "xi", scope: !3069, file: !1, line: 438, type: !11)
!3069 = distinct !DILexicalBlock(scope: !3058, file: !1, line: 437, column: 3)
!3070 = !DILocalVariable(name: "yi", scope: !3069, file: !1, line: 439, type: !11)
!3071 = !DILocalVariable(name: "xi", scope: !3072, file: !1, line: 443, type: !11)
!3072 = distinct !DILexicalBlock(scope: !3058, file: !1, line: 442, column: 3)
!3073 = !DILocalVariable(name: "yi", scope: !3072, file: !1, line: 444, type: !11)
!3074 = !DILocalVariable(name: "xi", scope: !3075, file: !1, line: 448, type: !11)
!3075 = distinct !DILexicalBlock(scope: !3058, file: !1, line: 447, column: 3)
!3076 = !DILocalVariable(name: "yi", scope: !3075, file: !1, line: 449, type: !11)
!3077 = !DILocalVariable(name: "xi", scope: !3078, file: !1, line: 453, type: !11)
!3078 = distinct !DILexicalBlock(scope: !3058, file: !1, line: 452, column: 3)
!3079 = !DILocalVariable(name: "yi", scope: !3078, file: !1, line: 454, type: !11)
!3080 = !DILocalVariable(name: "xi", scope: !3081, file: !1, line: 458, type: !11)
!3081 = distinct !DILexicalBlock(scope: !3058, file: !1, line: 457, column: 3)
!3082 = !DILocalVariable(name: "yi", scope: !3081, file: !1, line: 459, type: !11)
!3083 = !DILocation(line: 0, scope: !3058)
!3084 = !DILocation(line: 426, column: 3, scope: !3058)
!3085 = !DILocation(line: 432, column: 16, scope: !3058)
!3086 = !DILocation(line: 433, column: 16, scope: !3058)
!3087 = !DILocation(line: 434, column: 16, scope: !3058)
!3088 = !DILocation(line: 435, column: 16, scope: !3058)
!3089 = !DILocation(line: 436, column: 16, scope: !3058)
!3090 = !DILocation(line: 438, column: 19, scope: !3069)
!3091 = !DILocation(line: 0, scope: !3069)
!3092 = !DILocation(line: 440, column: 16, scope: !3069)
!3093 = !DILocation(line: 440, column: 11, scope: !3069)
!3094 = !DILocation(line: 443, column: 19, scope: !3072)
!3095 = !DILocation(line: 0, scope: !3072)
!3096 = !DILocation(line: 445, column: 16, scope: !3072)
!3097 = !DILocation(line: 445, column: 11, scope: !3072)
!3098 = !DILocation(line: 448, column: 19, scope: !3075)
!3099 = !DILocation(line: 0, scope: !3075)
!3100 = !DILocation(line: 450, column: 16, scope: !3075)
!3101 = !DILocation(line: 450, column: 11, scope: !3075)
!3102 = !DILocation(line: 453, column: 19, scope: !3078)
!3103 = !DILocation(line: 0, scope: !3078)
!3104 = !DILocation(line: 455, column: 16, scope: !3078)
!3105 = !DILocation(line: 455, column: 11, scope: !3078)
!3106 = !DILocation(line: 458, column: 19, scope: !3081)
!3107 = !DILocation(line: 0, scope: !3081)
!3108 = !DILocation(line: 460, column: 16, scope: !3081)
!3109 = !DILocation(line: 460, column: 11, scope: !3081)
!3110 = !DILocation(line: 462, column: 1, scope: !3058)
!3111 = distinct !DISubprogram(name: "Hacl_Bignum_fmul", scope: !1, file: !1, line: 464, type: !1280, scopeLine: 465, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !3112)
!3112 = !{!3113, !3114, !3115}
!3113 = !DILocalVariable(name: "output", arg: 1, scope: !3111, file: !1, line: 464, type: !112)
!3114 = !DILocalVariable(name: "a", arg: 2, scope: !3111, file: !1, line: 464, type: !112)
!3115 = !DILocalVariable(name: "b", arg: 3, scope: !3111, file: !1, line: 464, type: !112)
!3116 = !DILocation(line: 0, scope: !3111)
!3117 = !DILocation(line: 466, column: 3, scope: !3111)
!3118 = !DILocation(line: 467, column: 1, scope: !3111)
!3119 = distinct !DISubprogram(name: "Hacl_Bignum_Fmul_fmul", scope: !1, file: !1, line: 192, type: !1280, scopeLine: 193, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !3120)
!3120 = !{!3121, !3122, !3123, !3124, !3125, !3126, !3128, !3129, !3130, !3131, !3132, !3133, !3134, !3135}
!3121 = !DILocalVariable(name: "output", arg: 1, scope: !3119, file: !1, line: 192, type: !112)
!3122 = !DILocalVariable(name: "input", arg: 2, scope: !3119, file: !1, line: 192, type: !112)
!3123 = !DILocalVariable(name: "input21", arg: 3, scope: !3119, file: !1, line: 192, type: !112)
!3124 = !DILocalVariable(name: "tmp", scope: !3119, file: !1, line: 194, type: !1303)
!3125 = !DILocalVariable(name: "t", scope: !3119, file: !1, line: 197, type: !2646)
!3126 = !DILocalVariable(name: "_i", scope: !3127, file: !1, line: 198, type: !3)
!3127 = distinct !DILexicalBlock(scope: !3119, file: !1, line: 198, column: 3)
!3128 = !DILocalVariable(name: "b4", scope: !3119, file: !1, line: 202, type: !592)
!3129 = !DILocalVariable(name: "b0", scope: !3119, file: !1, line: 203, type: !592)
!3130 = !DILocalVariable(name: "b4_", scope: !3119, file: !1, line: 205, type: !592)
!3131 = !DILocalVariable(name: "b0_", scope: !3119, file: !1, line: 207, type: !592)
!3132 = !DILocalVariable(name: "i0", scope: !3119, file: !1, line: 214, type: !11)
!3133 = !DILocalVariable(name: "i1", scope: !3119, file: !1, line: 215, type: !11)
!3134 = !DILocalVariable(name: "i0_", scope: !3119, file: !1, line: 216, type: !11)
!3135 = !DILocalVariable(name: "i1_", scope: !3119, file: !1, line: 217, type: !11)
!3136 = !DILocation(line: 0, scope: !3119)
!3137 = !DILocation(line: 194, column: 3, scope: !3119)
!3138 = !DILocation(line: 194, column: 12, scope: !3119)
!3139 = !DILocation(line: 195, column: 3, scope: !3119)
!3140 = !DILocation(line: 197, column: 3, scope: !3119)
!3141 = !DILocation(line: 197, column: 19, scope: !3119)
!3142 = !DILocation(line: 0, scope: !3127)
!3143 = !DILocation(line: 198, column: 3, scope: !3127)
!3144 = !DILocation(line: 200, column: 38, scope: !3119)
!3145 = !DILocation(line: 200, column: 3, scope: !3119)
!3146 = !DILocation(line: 201, column: 3, scope: !3119)
!3147 = !DILocation(line: 202, column: 24, scope: !3119)
!3148 = !DILocation(line: 203, column: 24, scope: !3119)
!3149 = !DILocation(line: 204, column: 3, scope: !3119)
!3150 = !DILocation(line: 205, column: 3, scope: !3119)
!3151 = !DILocation(line: 205, column: 34, scope: !3119)
!3152 = !DILocation(line: 205, column: 9, scope: !3119)
!3153 = !DILocation(line: 206, column: 3, scope: !3119)
!3154 = !DILocation(line: 207, column: 3, scope: !3119)
!3155 = !DILocation(line: 210, column: 41, scope: !3119)
!3156 = !DILocation(line: 210, column: 9, scope: !3119)
!3157 = !DILocation(line: 209, column: 7, scope: !3119)
!3158 = !DILocation(line: 208, column: 5, scope: !3119)
!3159 = !DILocation(line: 211, column: 3, scope: !3119)
!3160 = !DILocation(line: 211, column: 11, scope: !3119)
!3161 = !DILocation(line: 212, column: 11, scope: !3119)
!3162 = !DILocation(line: 213, column: 3, scope: !3119)
!3163 = !DILocation(line: 214, column: 17, scope: !3119)
!3164 = !DILocation(line: 215, column: 17, scope: !3119)
!3165 = !DILocation(line: 216, column: 21, scope: !3119)
!3166 = !DILocation(line: 217, column: 27, scope: !3119)
!3167 = !DILocation(line: 217, column: 21, scope: !3119)
!3168 = !DILocation(line: 218, column: 14, scope: !3119)
!3169 = !DILocation(line: 219, column: 14, scope: !3119)
!3170 = !DILocation(line: 220, column: 1, scope: !3119)
!3171 = !DILocation(line: 199, column: 5, scope: !3172)
!3172 = distinct !DILexicalBlock(scope: !3127, file: !1, line: 198, column: 3)
!3173 = !DILocation(line: 199, column: 13, scope: !3172)
!3174 = !DILocation(line: 198, column: 45, scope: !3172)
!3175 = !DILocation(line: 198, column: 29, scope: !3172)
!3176 = distinct !{!3176, !3143, !3177, !574, !575}
!3177 = !DILocation(line: 199, column: 57, scope: !3127)
!3178 = distinct !DISubprogram(name: "Hacl_Bignum_Fmul_mul_shift_reduce_", scope: !1, file: !1, line: 165, type: !1407, scopeLine: 166, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !3179)
!3179 = !{!3180, !3181, !3182, !3183, !3185, !3187, !3189, !3191, !3192}
!3180 = !DILocalVariable(name: "output", arg: 1, scope: !3178, file: !1, line: 165, type: !1262)
!3181 = !DILocalVariable(name: "input", arg: 2, scope: !3178, file: !1, line: 165, type: !112)
!3182 = !DILocalVariable(name: "input21", arg: 3, scope: !3178, file: !1, line: 165, type: !112)
!3183 = !DILocalVariable(name: "input2i", scope: !3184, file: !1, line: 168, type: !11)
!3184 = distinct !DILexicalBlock(scope: !3178, file: !1, line: 167, column: 3)
!3185 = !DILocalVariable(name: "input2i", scope: !3186, file: !1, line: 173, type: !11)
!3186 = distinct !DILexicalBlock(scope: !3178, file: !1, line: 172, column: 3)
!3187 = !DILocalVariable(name: "input2i", scope: !3188, file: !1, line: 178, type: !11)
!3188 = distinct !DILexicalBlock(scope: !3178, file: !1, line: 177, column: 3)
!3189 = !DILocalVariable(name: "input2i", scope: !3190, file: !1, line: 183, type: !11)
!3190 = distinct !DILexicalBlock(scope: !3178, file: !1, line: 182, column: 3)
!3191 = !DILocalVariable(name: "i", scope: !3178, file: !1, line: 187, type: !3)
!3192 = !DILocalVariable(name: "input2i", scope: !3178, file: !1, line: 188, type: !11)
!3193 = !DILocation(line: 0, scope: !3178)
!3194 = !DILocation(line: 168, column: 24, scope: !3184)
!3195 = !DILocation(line: 0, scope: !3184)
!3196 = !DILocation(line: 169, column: 5, scope: !3184)
!3197 = !DILocation(line: 170, column: 5, scope: !3184)
!3198 = !DILocation(line: 173, column: 24, scope: !3186)
!3199 = !DILocation(line: 0, scope: !3186)
!3200 = !DILocation(line: 174, column: 5, scope: !3186)
!3201 = !DILocation(line: 175, column: 5, scope: !3186)
!3202 = !DILocation(line: 178, column: 24, scope: !3188)
!3203 = !DILocation(line: 0, scope: !3188)
!3204 = !DILocation(line: 179, column: 5, scope: !3188)
!3205 = !DILocation(line: 180, column: 5, scope: !3188)
!3206 = !DILocation(line: 183, column: 24, scope: !3190)
!3207 = !DILocation(line: 0, scope: !3190)
!3208 = !DILocation(line: 184, column: 5, scope: !3190)
!3209 = !DILocation(line: 185, column: 5, scope: !3190)
!3210 = !DILocation(line: 188, column: 22, scope: !3178)
!3211 = !DILocation(line: 189, column: 3, scope: !3178)
!3212 = !DILocation(line: 190, column: 1, scope: !3178)
!3213 = distinct !DISubprogram(name: "Hacl_Bignum_Fproduct_sum_scalar_multiplication_", scope: !1, file: !1, line: 63, type: !3214, scopeLine: 68, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !3216)
!3214 = !DISubroutineType(types: !3215)
!3215 = !{null, !1262, !112, !11}
!3216 = !{!3217, !3218, !3219, !3220, !3222, !3223, !3225, !3226, !3228, !3229, !3231, !3232, !3234}
!3217 = !DILocalVariable(name: "output", arg: 1, scope: !3213, file: !1, line: 64, type: !1262)
!3218 = !DILocalVariable(name: "input", arg: 2, scope: !3213, file: !1, line: 65, type: !112)
!3219 = !DILocalVariable(name: "s", arg: 3, scope: !3213, file: !1, line: 66, type: !11)
!3220 = !DILocalVariable(name: "xi", scope: !3221, file: !1, line: 70, type: !592)
!3221 = distinct !DILexicalBlock(scope: !3213, file: !1, line: 69, column: 3)
!3222 = !DILocalVariable(name: "yi", scope: !3221, file: !1, line: 71, type: !11)
!3223 = !DILocalVariable(name: "xi", scope: !3224, file: !1, line: 75, type: !592)
!3224 = distinct !DILexicalBlock(scope: !3213, file: !1, line: 74, column: 3)
!3225 = !DILocalVariable(name: "yi", scope: !3224, file: !1, line: 76, type: !11)
!3226 = !DILocalVariable(name: "xi", scope: !3227, file: !1, line: 80, type: !592)
!3227 = distinct !DILexicalBlock(scope: !3213, file: !1, line: 79, column: 3)
!3228 = !DILocalVariable(name: "yi", scope: !3227, file: !1, line: 81, type: !11)
!3229 = !DILocalVariable(name: "xi", scope: !3230, file: !1, line: 85, type: !592)
!3230 = distinct !DILexicalBlock(scope: !3213, file: !1, line: 84, column: 3)
!3231 = !DILocalVariable(name: "yi", scope: !3230, file: !1, line: 86, type: !11)
!3232 = !DILocalVariable(name: "xi", scope: !3233, file: !1, line: 90, type: !592)
!3233 = distinct !DILexicalBlock(scope: !3213, file: !1, line: 89, column: 3)
!3234 = !DILocalVariable(name: "yi", scope: !3233, file: !1, line: 91, type: !11)
!3235 = !DILocation(line: 0, scope: !3213)
!3236 = !DILocation(line: 70, column: 26, scope: !3221)
!3237 = !DILocation(line: 0, scope: !3221)
!3238 = !DILocation(line: 71, column: 19, scope: !3221)
!3239 = !DILocation(line: 72, column: 18, scope: !3221)
!3240 = !DILocation(line: 72, column: 44, scope: !3221)
!3241 = !DILocation(line: 75, column: 26, scope: !3224)
!3242 = !DILocation(line: 0, scope: !3224)
!3243 = !DILocation(line: 76, column: 19, scope: !3224)
!3244 = !DILocation(line: 77, column: 5, scope: !3224)
!3245 = !DILocation(line: 77, column: 18, scope: !3224)
!3246 = !DILocation(line: 77, column: 44, scope: !3224)
!3247 = !DILocation(line: 80, column: 26, scope: !3227)
!3248 = !DILocation(line: 0, scope: !3227)
!3249 = !DILocation(line: 81, column: 19, scope: !3227)
!3250 = !DILocation(line: 82, column: 5, scope: !3227)
!3251 = !DILocation(line: 82, column: 18, scope: !3227)
!3252 = !DILocation(line: 82, column: 44, scope: !3227)
!3253 = !DILocation(line: 85, column: 26, scope: !3230)
!3254 = !DILocation(line: 0, scope: !3230)
!3255 = !DILocation(line: 86, column: 19, scope: !3230)
!3256 = !DILocation(line: 87, column: 5, scope: !3230)
!3257 = !DILocation(line: 87, column: 18, scope: !3230)
!3258 = !DILocation(line: 87, column: 44, scope: !3230)
!3259 = !DILocation(line: 90, column: 26, scope: !3233)
!3260 = !DILocation(line: 0, scope: !3233)
!3261 = !DILocation(line: 91, column: 19, scope: !3233)
!3262 = !DILocation(line: 92, column: 5, scope: !3233)
!3263 = !DILocation(line: 92, column: 18, scope: !3233)
!3264 = !DILocation(line: 92, column: 44, scope: !3233)
!3265 = !DILocation(line: 94, column: 1, scope: !3213)
!3266 = distinct !DISubprogram(name: "Hacl_Bignum_Fmul_shift_reduce", scope: !1, file: !1, line: 136, type: !327, scopeLine: 137, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !3267)
!3267 = !{!3268, !3269, !3270, !3272, !3273, !3275, !3276, !3278, !3279, !3281, !3282}
!3268 = !DILocalVariable(name: "output", arg: 1, scope: !3266, file: !1, line: 136, type: !112)
!3269 = !DILocalVariable(name: "tmp", scope: !3266, file: !1, line: 138, type: !11)
!3270 = !DILocalVariable(name: "ctr", scope: !3271, file: !1, line: 140, type: !3)
!3271 = distinct !DILexicalBlock(scope: !3266, file: !1, line: 139, column: 3)
!3272 = !DILocalVariable(name: "z", scope: !3271, file: !1, line: 141, type: !11)
!3273 = !DILocalVariable(name: "ctr", scope: !3274, file: !1, line: 145, type: !3)
!3274 = distinct !DILexicalBlock(scope: !3266, file: !1, line: 144, column: 3)
!3275 = !DILocalVariable(name: "z", scope: !3274, file: !1, line: 146, type: !11)
!3276 = !DILocalVariable(name: "ctr", scope: !3277, file: !1, line: 150, type: !3)
!3277 = distinct !DILexicalBlock(scope: !3266, file: !1, line: 149, column: 3)
!3278 = !DILocalVariable(name: "z", scope: !3277, file: !1, line: 151, type: !11)
!3279 = !DILocalVariable(name: "ctr", scope: !3280, file: !1, line: 155, type: !3)
!3280 = distinct !DILexicalBlock(scope: !3266, file: !1, line: 154, column: 3)
!3281 = !DILocalVariable(name: "z", scope: !3280, file: !1, line: 156, type: !11)
!3282 = !DILocalVariable(name: "b0", scope: !3266, file: !1, line: 160, type: !11)
!3283 = !DILocation(line: 0, scope: !3266)
!3284 = !DILocation(line: 138, column: 18, scope: !3266)
!3285 = !DILocation(line: 0, scope: !3271)
!3286 = !DILocation(line: 141, column: 18, scope: !3271)
!3287 = !DILocation(line: 142, column: 17, scope: !3271)
!3288 = !DILocation(line: 0, scope: !3274)
!3289 = !DILocation(line: 146, column: 18, scope: !3274)
!3290 = !DILocation(line: 147, column: 17, scope: !3274)
!3291 = !DILocation(line: 0, scope: !3277)
!3292 = !DILocation(line: 151, column: 18, scope: !3277)
!3293 = !DILocation(line: 152, column: 17, scope: !3277)
!3294 = !DILocation(line: 0, scope: !3280)
!3295 = !DILocation(line: 156, column: 18, scope: !3280)
!3296 = !DILocation(line: 157, column: 17, scope: !3280)
!3297 = !DILocation(line: 161, column: 30, scope: !3266)
!3298 = !DILocation(line: 161, column: 14, scope: !3266)
!3299 = !DILocation(line: 162, column: 1, scope: !3266)
!3300 = !DISubprogram(name: "FStar_UInt128_add_mod", scope: !593, file: !593, line: 43, type: !843, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !841)
!3301 = distinct !DISubprogram(name: "Hacl_Bignum25519_times_2d", scope: !1, file: !1, line: 703, type: !1026, scopeLine: 704, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !3302)
!3302 = !{!3303, !3304, !3305}
!3303 = !DILocalVariable(name: "out", arg: 1, scope: !3301, file: !1, line: 703, type: !112)
!3304 = !DILocalVariable(name: "a", arg: 2, scope: !3301, file: !1, line: 703, type: !112)
!3305 = !DILocalVariable(name: "d2", scope: !3301, file: !1, line: 705, type: !1303)
!3306 = !DILocation(line: 0, scope: !3301)
!3307 = !DILocation(line: 705, column: 3, scope: !3301)
!3308 = !DILocation(line: 705, column: 12, scope: !3301)
!3309 = !DILocation(line: 706, column: 32, scope: !3301)
!3310 = !DILocation(line: 706, column: 3, scope: !3301)
!3311 = !DILocation(line: 712, column: 3, scope: !3301)
!3312 = !DILocation(line: 713, column: 1, scope: !3301)
!3313 = distinct !DISubprogram(name: "Hacl_Impl_Ed25519_Ladder_Step_swap_cond", scope: !1, file: !1, line: 1080, type: !2391, scopeLine: 1087, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !3314)
!3314 = !{!3315, !3316, !3317, !3318, !3319}
!3315 = !DILocalVariable(name: "p_", arg: 1, scope: !3313, file: !1, line: 1081, type: !112)
!3316 = !DILocalVariable(name: "q_", arg: 2, scope: !3313, file: !1, line: 1082, type: !112)
!3317 = !DILocalVariable(name: "p", arg: 3, scope: !3313, file: !1, line: 1083, type: !112)
!3318 = !DILocalVariable(name: "q1", arg: 4, scope: !3313, file: !1, line: 1084, type: !112)
!3319 = !DILocalVariable(name: "iswap", arg: 5, scope: !3313, file: !1, line: 1085, type: !11)
!3320 = !DILocation(line: 0, scope: !3313)
!3321 = !DILocation(line: 1088, column: 3, scope: !3313)
!3322 = !DILocation(line: 1089, column: 1, scope: !3313)
!3323 = distinct !DISubprogram(name: "Hacl_Impl_Ed25519_SwapConditional_swap_conditional", scope: !1, file: !1, line: 876, type: !2391, scopeLine: 883, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !3324)
!3324 = !{!3325, !3326, !3327, !3328, !3329, !3330}
!3325 = !DILocalVariable(name: "a_", arg: 1, scope: !3323, file: !1, line: 877, type: !112)
!3326 = !DILocalVariable(name: "b_", arg: 2, scope: !3323, file: !1, line: 878, type: !112)
!3327 = !DILocalVariable(name: "a", arg: 3, scope: !3323, file: !1, line: 879, type: !112)
!3328 = !DILocalVariable(name: "b", arg: 4, scope: !3323, file: !1, line: 880, type: !112)
!3329 = !DILocalVariable(name: "iswap", arg: 5, scope: !3323, file: !1, line: 881, type: !11)
!3330 = !DILocalVariable(name: "swap1", scope: !3323, file: !1, line: 884, type: !11)
!3331 = !DILocation(line: 0, scope: !3323)
!3332 = !DILocation(line: 884, column: 33, scope: !3323)
!3333 = !DILocation(line: 885, column: 3, scope: !3323)
!3334 = !DILocation(line: 890, column: 59, scope: !3323)
!3335 = !DILocation(line: 891, column: 5, scope: !3323)
!3336 = !DILocation(line: 892, column: 5, scope: !3323)
!3337 = !DILocation(line: 893, column: 5, scope: !3323)
!3338 = !DILocation(line: 890, column: 3, scope: !3323)
!3339 = !DILocation(line: 895, column: 59, scope: !3323)
!3340 = !DILocation(line: 896, column: 5, scope: !3323)
!3341 = !DILocation(line: 897, column: 5, scope: !3323)
!3342 = !DILocation(line: 898, column: 5, scope: !3323)
!3343 = !DILocation(line: 895, column: 3, scope: !3323)
!3344 = !DILocation(line: 900, column: 59, scope: !3323)
!3345 = !DILocation(line: 901, column: 5, scope: !3323)
!3346 = !DILocation(line: 902, column: 5, scope: !3323)
!3347 = !DILocation(line: 903, column: 5, scope: !3323)
!3348 = !DILocation(line: 900, column: 3, scope: !3323)
!3349 = !DILocation(line: 905, column: 1, scope: !3323)
!3350 = distinct !DISubprogram(name: "Hacl_Bignum25519_inverse", scope: !1, file: !1, line: 725, type: !1026, scopeLine: 726, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !3351)
!3351 = !{!3352, !3353}
!3352 = !DILocalVariable(name: "out", arg: 1, scope: !3350, file: !1, line: 725, type: !112)
!3353 = !DILocalVariable(name: "a", arg: 2, scope: !3350, file: !1, line: 725, type: !112)
!3354 = !DILocation(line: 0, scope: !3350)
!3355 = !DILocation(line: 727, column: 3, scope: !3350)
!3356 = !DILocation(line: 728, column: 1, scope: !3350)
!3357 = distinct !DISubprogram(name: "Hacl_Bignum25519_reduce", scope: !1, file: !1, line: 730, type: !327, scopeLine: 731, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !3358)
!3358 = !{!3359}
!3359 = !DILocalVariable(name: "out", arg: 1, scope: !3357, file: !1, line: 730, type: !112)
!3360 = !DILocation(line: 0, scope: !3357)
!3361 = !DILocation(line: 732, column: 3, scope: !3357)
!3362 = !DILocation(line: 733, column: 1, scope: !3357)
!3363 = distinct !DISubprogram(name: "Hacl_Impl_Ed25519_PointCompress_x_mod_2", scope: !1, file: !1, line: 808, type: !3364, scopeLine: 809, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !3366)
!3364 = !DISubroutineType(types: !3365)
!3365 = !{!11, !112}
!3366 = !{!3367, !3368}
!3367 = !DILocalVariable(name: "x", arg: 1, scope: !3363, file: !1, line: 808, type: !112)
!3368 = !DILocalVariable(name: "x0", scope: !3363, file: !1, line: 810, type: !11)
!3369 = !DILocation(line: 0, scope: !3363)
!3370 = !DILocation(line: 810, column: 17, scope: !3363)
!3371 = !DILocation(line: 811, column: 13, scope: !3363)
!3372 = !DILocation(line: 811, column: 3, scope: !3363)
!3373 = distinct !DISubprogram(name: "Hacl_Impl_Store51_store_51_", scope: !1, file: !1, line: 787, type: !163, scopeLine: 788, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !3374)
!3374 = !{!3375, !3376, !3377, !3378, !3379, !3380, !3381, !3382, !3383, !3384, !3385, !3386, !3387, !3388, !3389}
!3375 = !DILocalVariable(name: "output", arg: 1, scope: !3373, file: !1, line: 787, type: !29)
!3376 = !DILocalVariable(name: "input", arg: 2, scope: !3373, file: !1, line: 787, type: !112)
!3377 = !DILocalVariable(name: "t0", scope: !3373, file: !1, line: 789, type: !11)
!3378 = !DILocalVariable(name: "t1", scope: !3373, file: !1, line: 790, type: !11)
!3379 = !DILocalVariable(name: "t2", scope: !3373, file: !1, line: 791, type: !11)
!3380 = !DILocalVariable(name: "t3", scope: !3373, file: !1, line: 792, type: !11)
!3381 = !DILocalVariable(name: "t4", scope: !3373, file: !1, line: 793, type: !11)
!3382 = !DILocalVariable(name: "o0", scope: !3373, file: !1, line: 794, type: !11)
!3383 = !DILocalVariable(name: "o1", scope: !3373, file: !1, line: 795, type: !11)
!3384 = !DILocalVariable(name: "o2", scope: !3373, file: !1, line: 796, type: !11)
!3385 = !DILocalVariable(name: "o3", scope: !3373, file: !1, line: 797, type: !11)
!3386 = !DILocalVariable(name: "b0", scope: !3373, file: !1, line: 798, type: !29)
!3387 = !DILocalVariable(name: "b1", scope: !3373, file: !1, line: 799, type: !29)
!3388 = !DILocalVariable(name: "b2", scope: !3373, file: !1, line: 800, type: !29)
!3389 = !DILocalVariable(name: "b3", scope: !3373, file: !1, line: 801, type: !29)
!3390 = !DILocation(line: 0, scope: !3373)
!3391 = !DILocation(line: 789, column: 17, scope: !3373)
!3392 = !DILocation(line: 790, column: 17, scope: !3373)
!3393 = !DILocation(line: 791, column: 17, scope: !3373)
!3394 = !DILocation(line: 792, column: 17, scope: !3373)
!3395 = !DILocation(line: 793, column: 17, scope: !3373)
!3396 = !DILocation(line: 794, column: 20, scope: !3373)
!3397 = !DILocation(line: 794, column: 37, scope: !3373)
!3398 = !DILocation(line: 795, column: 20, scope: !3373)
!3399 = !DILocation(line: 795, column: 42, scope: !3373)
!3400 = !DILocation(line: 795, column: 37, scope: !3373)
!3401 = !DILocation(line: 796, column: 20, scope: !3373)
!3402 = !DILocation(line: 796, column: 42, scope: !3373)
!3403 = !DILocation(line: 796, column: 37, scope: !3373)
!3404 = !DILocation(line: 797, column: 20, scope: !3373)
!3405 = !DILocation(line: 797, column: 42, scope: !3373)
!3406 = !DILocation(line: 797, column: 37, scope: !3373)
!3407 = !DILocation(line: 799, column: 24, scope: !3373)
!3408 = !DILocation(line: 800, column: 24, scope: !3373)
!3409 = !DILocation(line: 801, column: 24, scope: !3373)
!3410 = !DILocation(line: 802, column: 3, scope: !3373)
!3411 = !DILocation(line: 803, column: 3, scope: !3373)
!3412 = !DILocation(line: 804, column: 3, scope: !3373)
!3413 = !DILocation(line: 805, column: 3, scope: !3373)
!3414 = !DILocation(line: 806, column: 1, scope: !3373)
!3415 = distinct !DISubprogram(name: "Hacl_Bignum_Crecip_crecip", scope: !1, file: !1, line: 318, type: !1026, scopeLine: 319, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !3416)
!3416 = !{!3417, !3418, !3419, !3420, !3421, !3422, !3423, !3424, !3425, !3426, !3427, !3428, !3429}
!3417 = !DILocalVariable(name: "out", arg: 1, scope: !3415, file: !1, line: 318, type: !112)
!3418 = !DILocalVariable(name: "z", arg: 2, scope: !3415, file: !1, line: 318, type: !112)
!3419 = !DILocalVariable(name: "buf", scope: !3415, file: !1, line: 320, type: !205)
!3420 = !DILocalVariable(name: "a", scope: !3415, file: !1, line: 321, type: !112)
!3421 = !DILocalVariable(name: "t00", scope: !3415, file: !1, line: 322, type: !112)
!3422 = !DILocalVariable(name: "b0", scope: !3415, file: !1, line: 323, type: !112)
!3423 = !DILocalVariable(name: "t01", scope: !3415, file: !1, line: 331, type: !112)
!3424 = !DILocalVariable(name: "b1", scope: !3415, file: !1, line: 332, type: !112)
!3425 = !DILocalVariable(name: "c0", scope: !3415, file: !1, line: 333, type: !112)
!3426 = !DILocalVariable(name: "a0", scope: !3415, file: !1, line: 342, type: !112)
!3427 = !DILocalVariable(name: "t0", scope: !3415, file: !1, line: 343, type: !112)
!3428 = !DILocalVariable(name: "b", scope: !3415, file: !1, line: 344, type: !112)
!3429 = !DILocalVariable(name: "c", scope: !3415, file: !1, line: 345, type: !112)
!3430 = !DILocation(line: 0, scope: !3415)
!3431 = !DILocation(line: 320, column: 3, scope: !3415)
!3432 = !DILocation(line: 320, column: 12, scope: !3415)
!3433 = !DILocation(line: 321, column: 17, scope: !3415)
!3434 = !DILocation(line: 322, column: 23, scope: !3415)
!3435 = !DILocation(line: 323, column: 22, scope: !3415)
!3436 = !DILocation(line: 324, column: 3, scope: !3415)
!3437 = !DILocation(line: 325, column: 3, scope: !3415)
!3438 = !DILocation(line: 326, column: 3, scope: !3415)
!3439 = !DILocation(line: 327, column: 3, scope: !3415)
!3440 = !DILocation(line: 328, column: 3, scope: !3415)
!3441 = !DILocation(line: 329, column: 3, scope: !3415)
!3442 = !DILocation(line: 330, column: 3, scope: !3415)
!3443 = !DILocation(line: 333, column: 22, scope: !3415)
!3444 = !DILocation(line: 334, column: 3, scope: !3415)
!3445 = !DILocation(line: 335, column: 3, scope: !3415)
!3446 = !DILocation(line: 336, column: 3, scope: !3415)
!3447 = !DILocation(line: 337, column: 3, scope: !3415)
!3448 = !DILocation(line: 338, column: 3, scope: !3415)
!3449 = !DILocation(line: 339, column: 3, scope: !3415)
!3450 = !DILocation(line: 340, column: 3, scope: !3415)
!3451 = !DILocation(line: 341, column: 3, scope: !3415)
!3452 = !DILocation(line: 346, column: 3, scope: !3415)
!3453 = !DILocation(line: 347, column: 3, scope: !3415)
!3454 = !DILocation(line: 348, column: 3, scope: !3415)
!3455 = !DILocation(line: 349, column: 3, scope: !3415)
!3456 = !DILocation(line: 350, column: 3, scope: !3415)
!3457 = !DILocation(line: 351, column: 3, scope: !3415)
!3458 = !DILocation(line: 352, column: 3, scope: !3415)
!3459 = !DILocation(line: 353, column: 1, scope: !3415)
!3460 = distinct !DISubprogram(name: "Hacl_Bignum_Fsquare_fsquare_times", scope: !1, file: !1, line: 299, type: !3461, scopeLine: 300, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !3463)
!3461 = !DISubroutineType(types: !3462)
!3462 = !{null, !112, !112, !3}
!3463 = !{!3464, !3465, !3466, !3467, !3468}
!3464 = !DILocalVariable(name: "output", arg: 1, scope: !3460, file: !1, line: 299, type: !112)
!3465 = !DILocalVariable(name: "input", arg: 2, scope: !3460, file: !1, line: 299, type: !112)
!3466 = !DILocalVariable(name: "count1", arg: 3, scope: !3460, file: !1, line: 299, type: !3)
!3467 = !DILocalVariable(name: "t", scope: !3460, file: !1, line: 302, type: !2646)
!3468 = !DILocalVariable(name: "_i", scope: !3469, file: !1, line: 303, type: !3)
!3469 = distinct !DILexicalBlock(scope: !3460, file: !1, line: 303, column: 3)
!3470 = !DILocation(line: 0, scope: !3460)
!3471 = !DILocation(line: 302, column: 3, scope: !3460)
!3472 = !DILocation(line: 302, column: 19, scope: !3460)
!3473 = !DILocation(line: 0, scope: !3469)
!3474 = !DILocation(line: 303, column: 3, scope: !3469)
!3475 = !DILocation(line: 305, column: 3, scope: !3460)
!3476 = !DILocation(line: 306, column: 46, scope: !3460)
!3477 = !DILocation(line: 306, column: 3, scope: !3460)
!3478 = !DILocation(line: 307, column: 1, scope: !3460)
!3479 = !DILocation(line: 304, column: 5, scope: !3480)
!3480 = distinct !DILexicalBlock(scope: !3469, file: !1, line: 303, column: 3)
!3481 = !DILocation(line: 304, column: 13, scope: !3480)
!3482 = !DILocation(line: 303, column: 45, scope: !3480)
!3483 = !DILocation(line: 303, column: 29, scope: !3480)
!3484 = distinct !{!3484, !3474, !3485, !574, !575}
!3485 = !DILocation(line: 304, column: 57, scope: !3469)
!3486 = distinct !DISubprogram(name: "Hacl_Bignum_Fsquare_fsquare_times_inplace", scope: !1, file: !1, line: 309, type: !3487, scopeLine: 310, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !3489)
!3487 = !DISubroutineType(types: !3488)
!3488 = !{null, !112, !3}
!3489 = !{!3490, !3491, !3492, !3493}
!3490 = !DILocalVariable(name: "output", arg: 1, scope: !3486, file: !1, line: 309, type: !112)
!3491 = !DILocalVariable(name: "count1", arg: 2, scope: !3486, file: !1, line: 309, type: !3)
!3492 = !DILocalVariable(name: "t", scope: !3486, file: !1, line: 312, type: !2646)
!3493 = !DILocalVariable(name: "_i", scope: !3494, file: !1, line: 313, type: !3)
!3494 = distinct !DILexicalBlock(scope: !3486, file: !1, line: 313, column: 3)
!3495 = !DILocation(line: 0, scope: !3486)
!3496 = !DILocation(line: 312, column: 3, scope: !3486)
!3497 = !DILocation(line: 312, column: 19, scope: !3486)
!3498 = !DILocation(line: 0, scope: !3494)
!3499 = !DILocation(line: 313, column: 3, scope: !3494)
!3500 = !DILocation(line: 315, column: 46, scope: !3486)
!3501 = !DILocation(line: 315, column: 3, scope: !3486)
!3502 = !DILocation(line: 316, column: 1, scope: !3486)
!3503 = !DILocation(line: 314, column: 5, scope: !3504)
!3504 = distinct !DILexicalBlock(scope: !3494, file: !1, line: 313, column: 3)
!3505 = !DILocation(line: 314, column: 13, scope: !3504)
!3506 = !DILocation(line: 313, column: 45, scope: !3504)
!3507 = !DILocation(line: 313, column: 29, scope: !3504)
!3508 = distinct !{!3508, !3499, !3509, !574, !575}
!3509 = !DILocation(line: 314, column: 57, scope: !3494)
!3510 = distinct !DISubprogram(name: "Hacl_Bignum_Fsquare_fsquare_times_", scope: !1, file: !1, line: 291, type: !3511, scopeLine: 292, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !3513)
!3511 = !DISubroutineType(types: !3512)
!3512 = !{null, !112, !1262, !3}
!3513 = !{!3514, !3515, !3516, !3517}
!3514 = !DILocalVariable(name: "input", arg: 1, scope: !3510, file: !1, line: 291, type: !112)
!3515 = !DILocalVariable(name: "tmp", arg: 2, scope: !3510, file: !1, line: 291, type: !1262)
!3516 = !DILocalVariable(name: "count1", arg: 3, scope: !3510, file: !1, line: 291, type: !3)
!3517 = !DILocalVariable(name: "i", scope: !3518, file: !1, line: 294, type: !3)
!3518 = distinct !DILexicalBlock(scope: !3510, file: !1, line: 294, column: 3)
!3519 = !DILocation(line: 0, scope: !3510)
!3520 = !DILocation(line: 293, column: 3, scope: !3510)
!3521 = !DILocation(line: 0, scope: !3518)
!3522 = !DILocation(line: 294, column: 37, scope: !3523)
!3523 = distinct !DILexicalBlock(scope: !3518, file: !1, line: 294, column: 3)
!3524 = !DILocation(line: 294, column: 3, scope: !3518)
!3525 = !DILocation(line: 296, column: 1, scope: !3510)
!3526 = !DILocation(line: 295, column: 5, scope: !3523)
!3527 = !DILocation(line: 294, column: 53, scope: !3523)
!3528 = distinct !{!3528, !3524, !3529, !574, !575}
!3529 = !DILocation(line: 295, column: 44, scope: !3518)
!3530 = distinct !DISubprogram(name: "Hacl_EC_Format_reduce", scope: !1, file: !1, line: 579, type: !327, scopeLine: 580, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !3531)
!3531 = !{!3532}
!3532 = !DILocalVariable(name: "out", arg: 1, scope: !3530, file: !1, line: 579, type: !112)
!3533 = !DILocation(line: 0, scope: !3530)
!3534 = !DILocation(line: 581, column: 3, scope: !3530)
!3535 = !DILocation(line: 582, column: 3, scope: !3530)
!3536 = !DILocation(line: 583, column: 3, scope: !3530)
!3537 = !DILocation(line: 584, column: 1, scope: !3530)
!3538 = distinct !DISubprogram(name: "Hacl_EC_Format_fcontract_first_carry_full", scope: !1, file: !1, line: 514, type: !327, scopeLine: 515, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !3539)
!3539 = !{!3540}
!3540 = !DILocalVariable(name: "input", arg: 1, scope: !3538, file: !1, line: 514, type: !112)
!3541 = !DILocation(line: 0, scope: !3538)
!3542 = !DILocation(line: 516, column: 3, scope: !3538)
!3543 = !DILocation(line: 517, column: 3, scope: !3538)
!3544 = !DILocation(line: 518, column: 1, scope: !3538)
!3545 = distinct !DISubprogram(name: "Hacl_EC_Format_fcontract_second_carry_full", scope: !1, file: !1, line: 542, type: !327, scopeLine: 543, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !3546)
!3546 = !{!3547, !3548, !3549, !3550, !3551}
!3547 = !DILocalVariable(name: "input", arg: 1, scope: !3545, file: !1, line: 542, type: !112)
!3548 = !DILocalVariable(name: "i0", scope: !3545, file: !1, line: 546, type: !11)
!3549 = !DILocalVariable(name: "i1", scope: !3545, file: !1, line: 547, type: !11)
!3550 = !DILocalVariable(name: "i0_", scope: !3545, file: !1, line: 548, type: !11)
!3551 = !DILocalVariable(name: "i1_", scope: !3545, file: !1, line: 549, type: !11)
!3552 = !DILocation(line: 0, scope: !3545)
!3553 = !DILocation(line: 544, column: 3, scope: !3545)
!3554 = !DILocation(line: 545, column: 3, scope: !3545)
!3555 = !DILocation(line: 546, column: 17, scope: !3545)
!3556 = !DILocation(line: 547, column: 17, scope: !3545)
!3557 = !DILocation(line: 548, column: 21, scope: !3545)
!3558 = !DILocation(line: 549, column: 27, scope: !3545)
!3559 = !DILocation(line: 549, column: 21, scope: !3545)
!3560 = !DILocation(line: 550, column: 13, scope: !3545)
!3561 = !DILocation(line: 551, column: 13, scope: !3545)
!3562 = !DILocation(line: 552, column: 1, scope: !3545)
!3563 = distinct !DISubprogram(name: "Hacl_EC_Format_fcontract_trim", scope: !1, file: !1, line: 554, type: !327, scopeLine: 555, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !3564)
!3564 = !{!3565, !3566, !3567, !3568, !3569, !3570, !3571, !3572, !3573, !3574, !3575, !3576, !3577, !3578, !3579, !3580, !3581}
!3565 = !DILocalVariable(name: "input", arg: 1, scope: !3563, file: !1, line: 554, type: !112)
!3566 = !DILocalVariable(name: "a0", scope: !3563, file: !1, line: 556, type: !11)
!3567 = !DILocalVariable(name: "a1", scope: !3563, file: !1, line: 557, type: !11)
!3568 = !DILocalVariable(name: "a2", scope: !3563, file: !1, line: 558, type: !11)
!3569 = !DILocalVariable(name: "a3", scope: !3563, file: !1, line: 559, type: !11)
!3570 = !DILocalVariable(name: "a4", scope: !3563, file: !1, line: 560, type: !11)
!3571 = !DILocalVariable(name: "mask0", scope: !3563, file: !1, line: 561, type: !11)
!3572 = !DILocalVariable(name: "mask1", scope: !3563, file: !1, line: 562, type: !11)
!3573 = !DILocalVariable(name: "mask2", scope: !3563, file: !1, line: 563, type: !11)
!3574 = !DILocalVariable(name: "mask3", scope: !3563, file: !1, line: 564, type: !11)
!3575 = !DILocalVariable(name: "mask4", scope: !3563, file: !1, line: 565, type: !11)
!3576 = !DILocalVariable(name: "mask", scope: !3563, file: !1, line: 566, type: !11)
!3577 = !DILocalVariable(name: "a0_", scope: !3563, file: !1, line: 567, type: !11)
!3578 = !DILocalVariable(name: "a1_", scope: !3563, file: !1, line: 568, type: !11)
!3579 = !DILocalVariable(name: "a2_", scope: !3563, file: !1, line: 569, type: !11)
!3580 = !DILocalVariable(name: "a3_", scope: !3563, file: !1, line: 570, type: !11)
!3581 = !DILocalVariable(name: "a4_", scope: !3563, file: !1, line: 571, type: !11)
!3582 = !DILocation(line: 0, scope: !3563)
!3583 = !DILocation(line: 556, column: 17, scope: !3563)
!3584 = !DILocation(line: 557, column: 17, scope: !3563)
!3585 = !DILocation(line: 558, column: 17, scope: !3563)
!3586 = !DILocation(line: 559, column: 17, scope: !3563)
!3587 = !DILocation(line: 560, column: 17, scope: !3563)
!3588 = !DILocation(line: 561, column: 20, scope: !3563)
!3589 = !DILocation(line: 562, column: 20, scope: !3563)
!3590 = !DILocation(line: 563, column: 20, scope: !3563)
!3591 = !DILocation(line: 564, column: 20, scope: !3563)
!3592 = !DILocation(line: 565, column: 20, scope: !3563)
!3593 = !DILocation(line: 566, column: 28, scope: !3563)
!3594 = !DILocation(line: 566, column: 37, scope: !3563)
!3595 = !DILocation(line: 566, column: 46, scope: !3563)
!3596 = !DILocation(line: 566, column: 55, scope: !3563)
!3597 = !DILocation(line: 567, column: 51, scope: !3563)
!3598 = !DILocation(line: 567, column: 21, scope: !3563)
!3599 = !DILocation(line: 568, column: 51, scope: !3563)
!3600 = !DILocation(line: 568, column: 21, scope: !3563)
!3601 = !DILocation(line: 569, column: 21, scope: !3563)
!3602 = !DILocation(line: 570, column: 21, scope: !3563)
!3603 = !DILocation(line: 571, column: 21, scope: !3563)
!3604 = !DILocation(line: 572, column: 13, scope: !3563)
!3605 = !DILocation(line: 573, column: 13, scope: !3563)
!3606 = !DILocation(line: 574, column: 13, scope: !3563)
!3607 = !DILocation(line: 575, column: 13, scope: !3563)
!3608 = !DILocation(line: 576, column: 13, scope: !3563)
!3609 = !DILocation(line: 577, column: 1, scope: !3563)
!3610 = distinct !DISubprogram(name: "Hacl_EC_Format_fcontract_first_carry_pass", scope: !1, file: !1, line: 492, type: !327, scopeLine: 493, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !3611)
!3611 = !{!3612, !3613, !3614, !3615, !3616, !3617, !3618, !3619, !3620, !3621, !3622, !3623, !3624, !3625}
!3612 = !DILocalVariable(name: "input", arg: 1, scope: !3610, file: !1, line: 492, type: !112)
!3613 = !DILocalVariable(name: "t0", scope: !3610, file: !1, line: 494, type: !11)
!3614 = !DILocalVariable(name: "t1", scope: !3610, file: !1, line: 495, type: !11)
!3615 = !DILocalVariable(name: "t2", scope: !3610, file: !1, line: 496, type: !11)
!3616 = !DILocalVariable(name: "t3", scope: !3610, file: !1, line: 497, type: !11)
!3617 = !DILocalVariable(name: "t4", scope: !3610, file: !1, line: 498, type: !11)
!3618 = !DILocalVariable(name: "t1_", scope: !3610, file: !1, line: 499, type: !11)
!3619 = !DILocalVariable(name: "t0_", scope: !3610, file: !1, line: 500, type: !11)
!3620 = !DILocalVariable(name: "t2_", scope: !3610, file: !1, line: 501, type: !11)
!3621 = !DILocalVariable(name: "t1__", scope: !3610, file: !1, line: 502, type: !11)
!3622 = !DILocalVariable(name: "t3_", scope: !3610, file: !1, line: 503, type: !11)
!3623 = !DILocalVariable(name: "t2__", scope: !3610, file: !1, line: 504, type: !11)
!3624 = !DILocalVariable(name: "t4_", scope: !3610, file: !1, line: 505, type: !11)
!3625 = !DILocalVariable(name: "t3__", scope: !3610, file: !1, line: 506, type: !11)
!3626 = !DILocation(line: 0, scope: !3610)
!3627 = !DILocation(line: 494, column: 17, scope: !3610)
!3628 = !DILocation(line: 495, column: 17, scope: !3610)
!3629 = !DILocation(line: 496, column: 17, scope: !3610)
!3630 = !DILocation(line: 497, column: 17, scope: !3610)
!3631 = !DILocation(line: 498, column: 17, scope: !3610)
!3632 = !DILocation(line: 499, column: 27, scope: !3610)
!3633 = !DILocation(line: 499, column: 21, scope: !3610)
!3634 = !DILocation(line: 500, column: 21, scope: !3610)
!3635 = !DILocation(line: 501, column: 28, scope: !3610)
!3636 = !DILocation(line: 501, column: 21, scope: !3610)
!3637 = !DILocation(line: 502, column: 23, scope: !3610)
!3638 = !DILocation(line: 503, column: 28, scope: !3610)
!3639 = !DILocation(line: 503, column: 21, scope: !3610)
!3640 = !DILocation(line: 504, column: 23, scope: !3610)
!3641 = !DILocation(line: 505, column: 28, scope: !3610)
!3642 = !DILocation(line: 505, column: 21, scope: !3610)
!3643 = !DILocation(line: 506, column: 23, scope: !3610)
!3644 = !DILocation(line: 507, column: 13, scope: !3610)
!3645 = !DILocation(line: 508, column: 13, scope: !3610)
!3646 = !DILocation(line: 509, column: 13, scope: !3610)
!3647 = !DILocation(line: 510, column: 13, scope: !3610)
!3648 = !DILocation(line: 511, column: 13, scope: !3610)
!3649 = !DILocation(line: 512, column: 1, scope: !3610)
!3650 = distinct !DISubprogram(name: "Hacl_EC_Format_fcontract_second_carry_pass", scope: !1, file: !1, line: 520, type: !327, scopeLine: 521, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !3651)
!3651 = !{!3652, !3653, !3654, !3655, !3656, !3657, !3658, !3659, !3660, !3661, !3662, !3663, !3664, !3665}
!3652 = !DILocalVariable(name: "input", arg: 1, scope: !3650, file: !1, line: 520, type: !112)
!3653 = !DILocalVariable(name: "t0", scope: !3650, file: !1, line: 522, type: !11)
!3654 = !DILocalVariable(name: "t1", scope: !3650, file: !1, line: 523, type: !11)
!3655 = !DILocalVariable(name: "t2", scope: !3650, file: !1, line: 524, type: !11)
!3656 = !DILocalVariable(name: "t3", scope: !3650, file: !1, line: 525, type: !11)
!3657 = !DILocalVariable(name: "t4", scope: !3650, file: !1, line: 526, type: !11)
!3658 = !DILocalVariable(name: "t1_", scope: !3650, file: !1, line: 527, type: !11)
!3659 = !DILocalVariable(name: "t0_", scope: !3650, file: !1, line: 528, type: !11)
!3660 = !DILocalVariable(name: "t2_", scope: !3650, file: !1, line: 529, type: !11)
!3661 = !DILocalVariable(name: "t1__", scope: !3650, file: !1, line: 530, type: !11)
!3662 = !DILocalVariable(name: "t3_", scope: !3650, file: !1, line: 531, type: !11)
!3663 = !DILocalVariable(name: "t2__", scope: !3650, file: !1, line: 532, type: !11)
!3664 = !DILocalVariable(name: "t4_", scope: !3650, file: !1, line: 533, type: !11)
!3665 = !DILocalVariable(name: "t3__", scope: !3650, file: !1, line: 534, type: !11)
!3666 = !DILocation(line: 0, scope: !3650)
!3667 = !DILocation(line: 522, column: 17, scope: !3650)
!3668 = !DILocation(line: 523, column: 17, scope: !3650)
!3669 = !DILocation(line: 524, column: 17, scope: !3650)
!3670 = !DILocation(line: 525, column: 17, scope: !3650)
!3671 = !DILocation(line: 526, column: 17, scope: !3650)
!3672 = !DILocation(line: 527, column: 27, scope: !3650)
!3673 = !DILocation(line: 527, column: 21, scope: !3650)
!3674 = !DILocation(line: 528, column: 21, scope: !3650)
!3675 = !DILocation(line: 529, column: 28, scope: !3650)
!3676 = !DILocation(line: 529, column: 21, scope: !3650)
!3677 = !DILocation(line: 530, column: 23, scope: !3650)
!3678 = !DILocation(line: 531, column: 28, scope: !3650)
!3679 = !DILocation(line: 531, column: 21, scope: !3650)
!3680 = !DILocation(line: 532, column: 23, scope: !3650)
!3681 = !DILocation(line: 533, column: 28, scope: !3650)
!3682 = !DILocation(line: 533, column: 21, scope: !3650)
!3683 = !DILocation(line: 534, column: 23, scope: !3650)
!3684 = !DILocation(line: 535, column: 13, scope: !3650)
!3685 = !DILocation(line: 536, column: 13, scope: !3650)
!3686 = !DILocation(line: 537, column: 13, scope: !3650)
!3687 = !DILocation(line: 538, column: 13, scope: !3650)
!3688 = !DILocation(line: 539, column: 13, scope: !3650)
!3689 = !DILocation(line: 540, column: 1, scope: !3650)
!3690 = distinct !DISubprogram(name: "FStar_UInt64_gte_mask", scope: !3691, file: !3691, line: 168, type: !2046, scopeLine: 168, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !3692)
!3691 = !DIFile(filename: "hacl-c/hacl-c/kremlib_base.h", directory: "/mnt/c/Users/fwill/Documents/HS24/semester_project/tools/binsec/binsec/examples/hacl", checksumkind: CSK_MD5, checksum: "d6560fd4701aab11aac1f04efb4ba74f")
!3692 = !{!3693, !3694, !3695, !3696}
!3693 = !DILocalVariable(name: "x", arg: 1, scope: !3690, file: !3691, line: 168, type: !11)
!3694 = !DILocalVariable(name: "y", arg: 2, scope: !3690, file: !3691, line: 168, type: !11)
!3695 = !DILocalVariable(name: "low63", scope: !3690, file: !3691, line: 169, type: !11)
!3696 = !DILocalVariable(name: "high_bit", scope: !3690, file: !3691, line: 173, type: !11)
!3697 = !DILocation(line: 0, scope: !3690)
!3698 = !DILocation(line: 170, column: 42, scope: !3690)
!3699 = !DILocation(line: 170, column: 74, scope: !3690)
!3700 = !DILocation(line: 177, column: 16, scope: !3690)
!3701 = !DILocation(line: 177, column: 3, scope: !3690)
!3702 = distinct !DISubprogram(name: "FStar_UInt64_eq_mask", scope: !3691, file: !3691, line: 157, type: !2046, scopeLine: 157, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !3703)
!3703 = !{!3704, !3705}
!3704 = !DILocalVariable(name: "x", arg: 1, scope: !3702, file: !3691, line: 157, type: !11)
!3705 = !DILocalVariable(name: "y", arg: 2, scope: !3702, file: !3691, line: 157, type: !11)
!3706 = !DILocation(line: 0, scope: !3702)
!3707 = !DILocation(line: 158, column: 7, scope: !3702)
!3708 = !DILocation(line: 159, column: 10, scope: !3702)
!3709 = !DILocation(line: 159, column: 5, scope: !3702)
!3710 = !DILocation(line: 160, column: 10, scope: !3702)
!3711 = !DILocation(line: 160, column: 5, scope: !3702)
!3712 = !DILocation(line: 161, column: 10, scope: !3702)
!3713 = !DILocation(line: 161, column: 5, scope: !3702)
!3714 = !DILocation(line: 162, column: 10, scope: !3702)
!3715 = !DILocation(line: 162, column: 5, scope: !3702)
!3716 = !DILocation(line: 163, column: 10, scope: !3702)
!3717 = !DILocation(line: 163, column: 5, scope: !3702)
!3718 = !DILocation(line: 164, column: 10, scope: !3702)
!3719 = !DILocation(line: 164, column: 5, scope: !3702)
!3720 = !DILocation(line: 165, column: 23, scope: !3702)
!3721 = !DILocation(line: 165, column: 3, scope: !3702)
!3722 = distinct !DISubprogram(name: "Hacl_Impl_SHA512_ModQ_sha512_modq_pre_pre2", scope: !1, file: !1, line: 2587, type: !3723, scopeLine: 2594, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !3725)
!3723 = !DISubroutineType(types: !3724)
!3724 = !{null, !112, !29, !29, !29, !3}
!3725 = !{!3726, !3727, !3728, !3729, !3730, !3731}
!3726 = !DILocalVariable(name: "out", arg: 1, scope: !3722, file: !1, line: 2588, type: !112)
!3727 = !DILocalVariable(name: "prefix", arg: 2, scope: !3722, file: !1, line: 2589, type: !29)
!3728 = !DILocalVariable(name: "prefix2", arg: 3, scope: !3722, file: !1, line: 2590, type: !29)
!3729 = !DILocalVariable(name: "input", arg: 4, scope: !3722, file: !1, line: 2591, type: !29)
!3730 = !DILocalVariable(name: "len1", arg: 5, scope: !3722, file: !1, line: 2592, type: !3)
!3731 = !DILocalVariable(name: "tmp", scope: !3722, file: !1, line: 2595, type: !917)
!3732 = !DILocation(line: 0, scope: !3722)
!3733 = !DILocation(line: 2595, column: 3, scope: !3722)
!3734 = !DILocation(line: 2595, column: 12, scope: !3722)
!3735 = !DILocation(line: 2596, column: 82, scope: !3722)
!3736 = !DILocation(line: 2596, column: 3, scope: !3722)
!3737 = !DILocation(line: 2597, column: 1, scope: !3722)
!3738 = distinct !DISubprogram(name: "Hacl_Impl_SHA512_ModQ_sha512_modq_pre_pre2_", scope: !1, file: !1, line: 2571, type: !3739, scopeLine: 2579, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !3741)
!3739 = !DISubroutineType(types: !3740)
!3740 = !{null, !112, !29, !29, !29, !3, !112}
!3741 = !{!3742, !3743, !3744, !3745, !3746, !3747, !3748}
!3742 = !DILocalVariable(name: "out", arg: 1, scope: !3738, file: !1, line: 2572, type: !112)
!3743 = !DILocalVariable(name: "prefix", arg: 2, scope: !3738, file: !1, line: 2573, type: !29)
!3744 = !DILocalVariable(name: "prefix2", arg: 3, scope: !3738, file: !1, line: 2574, type: !29)
!3745 = !DILocalVariable(name: "input", arg: 4, scope: !3738, file: !1, line: 2575, type: !29)
!3746 = !DILocalVariable(name: "len1", arg: 5, scope: !3738, file: !1, line: 2576, type: !3)
!3747 = !DILocalVariable(name: "tmp", arg: 6, scope: !3738, file: !1, line: 2577, type: !112)
!3748 = !DILocalVariable(name: "hash1", scope: !3738, file: !1, line: 2580, type: !82)
!3749 = !DILocation(line: 0, scope: !3738)
!3750 = !DILocation(line: 2580, column: 3, scope: !3738)
!3751 = !DILocation(line: 2580, column: 11, scope: !3738)
!3752 = !DILocation(line: 2581, column: 3, scope: !3738)
!3753 = !DILocation(line: 2582, column: 3, scope: !3738)
!3754 = !DILocation(line: 2583, column: 3, scope: !3738)
!3755 = !DILocation(line: 2584, column: 1, scope: !3738)
!3756 = distinct !DISubprogram(name: "Hacl_Impl_Sha512_sha512_pre_pre2_msg", scope: !1, file: !1, line: 2041, type: !3757, scopeLine: 2048, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !3759)
!3757 = !DISubroutineType(types: !3758)
!3758 = !{null, !29, !29, !29, !29, !3}
!3759 = !{!3760, !3761, !3762, !3763, !3764}
!3760 = !DILocalVariable(name: "h", arg: 1, scope: !3756, file: !1, line: 2042, type: !29)
!3761 = !DILocalVariable(name: "prefix", arg: 2, scope: !3756, file: !1, line: 2043, type: !29)
!3762 = !DILocalVariable(name: "prefix2", arg: 3, scope: !3756, file: !1, line: 2044, type: !29)
!3763 = !DILocalVariable(name: "input", arg: 4, scope: !3756, file: !1, line: 2045, type: !29)
!3764 = !DILocalVariable(name: "len1", arg: 5, scope: !3756, file: !1, line: 2046, type: !3)
!3765 = !DILocation(line: 0, scope: !3756)
!3766 = !DILocation(line: 2049, column: 3, scope: !3756)
!3767 = !DILocation(line: 2050, column: 1, scope: !3756)
!3768 = distinct !DISubprogram(name: "Hacl_Impl_SHA512_Ed25519_sha512_pre_pre2_msg", scope: !1, file: !1, line: 2023, type: !3757, scopeLine: 2030, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !3769)
!3769 = !{!3770, !3771, !3772, !3773, !3774}
!3770 = !DILocalVariable(name: "h", arg: 1, scope: !3768, file: !1, line: 2024, type: !29)
!3771 = !DILocalVariable(name: "prefix", arg: 2, scope: !3768, file: !1, line: 2025, type: !29)
!3772 = !DILocalVariable(name: "prefix2", arg: 3, scope: !3768, file: !1, line: 2026, type: !29)
!3773 = !DILocalVariable(name: "input", arg: 4, scope: !3768, file: !1, line: 2027, type: !29)
!3774 = !DILocalVariable(name: "len1", arg: 5, scope: !3768, file: !1, line: 2028, type: !3)
!3775 = !DILocation(line: 0, scope: !3768)
!3776 = !DILocation(line: 2031, column: 3, scope: !3768)
!3777 = !DILocation(line: 2032, column: 1, scope: !3768)
!3778 = distinct !DISubprogram(name: "Hacl_Impl_SHA512_Ed25519_3_sha512_pre_pre2_msg", scope: !1, file: !1, line: 1997, type: !3757, scopeLine: 2004, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !3779)
!3779 = !{!3780, !3781, !3782, !3783, !3784}
!3780 = !DILocalVariable(name: "h", arg: 1, scope: !3778, file: !1, line: 1998, type: !29)
!3781 = !DILocalVariable(name: "prefix", arg: 2, scope: !3778, file: !1, line: 1999, type: !29)
!3782 = !DILocalVariable(name: "prefix2", arg: 3, scope: !3778, file: !1, line: 2000, type: !29)
!3783 = !DILocalVariable(name: "input", arg: 4, scope: !3778, file: !1, line: 2001, type: !29)
!3784 = !DILocalVariable(name: "len1", arg: 5, scope: !3778, file: !1, line: 2002, type: !3)
!3785 = !DILocation(line: 0, scope: !3778)
!3786 = !DILocation(line: 2005, column: 12, scope: !3787)
!3787 = distinct !DILexicalBlock(scope: !3778, file: !1, line: 2005, column: 7)
!3788 = !DILocation(line: 2005, column: 7, scope: !3778)
!3789 = !DILocation(line: 2006, column: 5, scope: !3787)
!3790 = !DILocation(line: 2008, column: 5, scope: !3787)
!3791 = !DILocation(line: 2009, column: 1, scope: !3778)
!3792 = distinct !DISubprogram(name: "Hacl_Impl_SHA512_Ed25519_1_sha512_pre_pre2_msg_1", scope: !1, file: !1, line: 1937, type: !3757, scopeLine: 1944, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !3793)
!3793 = !{!3794, !3795, !3796, !3797, !3798, !3799, !3800}
!3794 = !DILocalVariable(name: "h", arg: 1, scope: !3792, file: !1, line: 1938, type: !29)
!3795 = !DILocalVariable(name: "prefix", arg: 2, scope: !3792, file: !1, line: 1939, type: !29)
!3796 = !DILocalVariable(name: "prefix2", arg: 3, scope: !3792, file: !1, line: 1940, type: !29)
!3797 = !DILocalVariable(name: "input", arg: 4, scope: !3792, file: !1, line: 1941, type: !29)
!3798 = !DILocalVariable(name: "len1", arg: 5, scope: !3792, file: !1, line: 1942, type: !3)
!3799 = !DILocalVariable(name: "block", scope: !3792, file: !1, line: 1945, type: !1063)
!3800 = !DILocalVariable(name: "block_", scope: !3792, file: !1, line: 1946, type: !29)
!3801 = !DILocation(line: 0, scope: !3792)
!3802 = !DILocation(line: 1945, column: 3, scope: !3792)
!3803 = !DILocation(line: 1945, column: 11, scope: !3792)
!3804 = !DILocation(line: 1947, column: 3, scope: !3792)
!3805 = !DILocation(line: 1948, column: 43, scope: !3792)
!3806 = !DILocation(line: 1948, column: 3, scope: !3792)
!3807 = !DILocation(line: 1949, column: 1, scope: !3792)
!3808 = distinct !DISubprogram(name: "Hacl_Impl_SHA512_Ed25519_3_sha512_pre_pre2_msg_2", scope: !1, file: !1, line: 1981, type: !3757, scopeLine: 1988, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !3809)
!3809 = !{!3810, !3811, !3812, !3813, !3814, !3815, !3816, !3817}
!3810 = !DILocalVariable(name: "h", arg: 1, scope: !3808, file: !1, line: 1982, type: !29)
!3811 = !DILocalVariable(name: "prefix", arg: 2, scope: !3808, file: !1, line: 1983, type: !29)
!3812 = !DILocalVariable(name: "prefix2", arg: 3, scope: !3808, file: !1, line: 1984, type: !29)
!3813 = !DILocalVariable(name: "input", arg: 4, scope: !3808, file: !1, line: 1985, type: !29)
!3814 = !DILocalVariable(name: "len1", arg: 5, scope: !3808, file: !1, line: 1986, type: !3)
!3815 = !DILocalVariable(name: "input11", scope: !3808, file: !1, line: 1989, type: !29)
!3816 = !DILocalVariable(name: "input21", scope: !3808, file: !1, line: 1990, type: !29)
!3817 = !DILocalVariable(name: "block", scope: !3808, file: !1, line: 1991, type: !1063)
!3818 = !DILocation(line: 0, scope: !3808)
!3819 = !DILocation(line: 1990, column: 28, scope: !3808)
!3820 = !DILocation(line: 1991, column: 3, scope: !3808)
!3821 = !DILocation(line: 1991, column: 11, scope: !3808)
!3822 = !DILocation(line: 1992, column: 3, scope: !3808)
!3823 = !DILocation(line: 1993, column: 74, scope: !3808)
!3824 = !DILocation(line: 1993, column: 3, scope: !3808)
!3825 = !DILocation(line: 1994, column: 1, scope: !3808)
!3826 = distinct !DISubprogram(name: "Hacl_Impl_SHA512_Ed25519_1_concat_3", scope: !1, file: !1, line: 1909, type: !3757, scopeLine: 1916, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !3827)
!3827 = !{!3828, !3829, !3830, !3831, !3832}
!3828 = !DILocalVariable(name: "out", arg: 1, scope: !3826, file: !1, line: 1910, type: !29)
!3829 = !DILocalVariable(name: "pre", arg: 2, scope: !3826, file: !1, line: 1911, type: !29)
!3830 = !DILocalVariable(name: "pre2", arg: 3, scope: !3826, file: !1, line: 1912, type: !29)
!3831 = !DILocalVariable(name: "msg", arg: 4, scope: !3826, file: !1, line: 1913, type: !29)
!3832 = !DILocalVariable(name: "len1", arg: 5, scope: !3826, file: !1, line: 1914, type: !3)
!3833 = !DILocation(line: 0, scope: !3826)
!3834 = !DILocation(line: 1917, column: 3, scope: !3826)
!3835 = !DILocation(line: 1918, column: 45, scope: !3826)
!3836 = !DILocation(line: 1918, column: 3, scope: !3826)
!3837 = !DILocation(line: 1919, column: 45, scope: !3826)
!3838 = !DILocation(line: 1919, column: 3, scope: !3826)
!3839 = !DILocation(line: 1920, column: 1, scope: !3826)
!3840 = distinct !DISubprogram(name: "Hacl_Impl_Load56_load_32_bytes", scope: !1, file: !1, line: 1646, type: !630, scopeLine: 1647, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !3841)
!3841 = !{!3842, !3843, !3844, !3845, !3846, !3847, !3848, !3849, !3850, !3851, !3852, !3853, !3854, !3855, !3856, !3857, !3858, !3859, !3860, !3861, !3862}
!3842 = !DILocalVariable(name: "out", arg: 1, scope: !3840, file: !1, line: 1646, type: !112)
!3843 = !DILocalVariable(name: "b", arg: 2, scope: !3840, file: !1, line: 1646, type: !29)
!3844 = !DILocalVariable(name: "b80", scope: !3840, file: !1, line: 1648, type: !29)
!3845 = !DILocalVariable(name: "z", scope: !3840, file: !1, line: 1649, type: !11)
!3846 = !DILocalVariable(name: "z_", scope: !3840, file: !1, line: 1650, type: !11)
!3847 = !DILocalVariable(name: "b0", scope: !3840, file: !1, line: 1651, type: !11)
!3848 = !DILocalVariable(name: "b81", scope: !3840, file: !1, line: 1652, type: !29)
!3849 = !DILocalVariable(name: "z0", scope: !3840, file: !1, line: 1653, type: !11)
!3850 = !DILocalVariable(name: "z_0", scope: !3840, file: !1, line: 1654, type: !11)
!3851 = !DILocalVariable(name: "b1", scope: !3840, file: !1, line: 1655, type: !11)
!3852 = !DILocalVariable(name: "b82", scope: !3840, file: !1, line: 1656, type: !29)
!3853 = !DILocalVariable(name: "z1", scope: !3840, file: !1, line: 1657, type: !11)
!3854 = !DILocalVariable(name: "z_1", scope: !3840, file: !1, line: 1658, type: !11)
!3855 = !DILocalVariable(name: "b2", scope: !3840, file: !1, line: 1659, type: !11)
!3856 = !DILocalVariable(name: "b8", scope: !3840, file: !1, line: 1660, type: !29)
!3857 = !DILocalVariable(name: "z2", scope: !3840, file: !1, line: 1661, type: !11)
!3858 = !DILocalVariable(name: "z_2", scope: !3840, file: !1, line: 1662, type: !11)
!3859 = !DILocalVariable(name: "b3", scope: !3840, file: !1, line: 1663, type: !11)
!3860 = !DILocalVariable(name: "x0", scope: !3840, file: !1, line: 1664, type: !29)
!3861 = !DILocalVariable(name: "b4", scope: !3840, file: !1, line: 1665, type: !3)
!3862 = !DILocalVariable(name: "b41", scope: !3840, file: !1, line: 1666, type: !11)
!3863 = !DILocation(line: 0, scope: !3840)
!3864 = !DILocation(line: 1649, column: 16, scope: !3840)
!3865 = !DILocation(line: 1650, column: 19, scope: !3840)
!3866 = !DILocation(line: 1652, column: 20, scope: !3840)
!3867 = !DILocation(line: 1653, column: 17, scope: !3840)
!3868 = !DILocation(line: 1654, column: 21, scope: !3840)
!3869 = !DILocation(line: 1656, column: 20, scope: !3840)
!3870 = !DILocation(line: 1657, column: 17, scope: !3840)
!3871 = !DILocation(line: 1658, column: 21, scope: !3840)
!3872 = !DILocation(line: 1660, column: 19, scope: !3840)
!3873 = !DILocation(line: 1661, column: 17, scope: !3840)
!3874 = !DILocation(line: 1662, column: 21, scope: !3840)
!3875 = !DILocation(line: 1664, column: 19, scope: !3840)
!3876 = !DILocation(line: 1665, column: 17, scope: !3840)
!3877 = !DILocation(line: 1666, column: 18, scope: !3840)
!3878 = !DILocation(line: 1667, column: 3, scope: !3840)
!3879 = !DILocation(line: 1668, column: 1, scope: !3840)
!3880 = distinct !DISubprogram(name: "Hacl_Impl_BignumQ_Mul_mul_modq", scope: !1, file: !1, line: 2480, type: !1280, scopeLine: 2481, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !3881)
!3881 = !{!3882, !3883, !3884, !3885, !3886, !3887}
!3882 = !DILocalVariable(name: "out", arg: 1, scope: !3880, file: !1, line: 2480, type: !112)
!3883 = !DILocalVariable(name: "x", arg: 2, scope: !3880, file: !1, line: 2480, type: !112)
!3884 = !DILocalVariable(name: "y", arg: 3, scope: !3880, file: !1, line: 2480, type: !112)
!3885 = !DILocalVariable(name: "z_", scope: !3880, file: !1, line: 2482, type: !917)
!3886 = !DILocalVariable(name: "z", scope: !3880, file: !1, line: 2484, type: !1214)
!3887 = !DILocalVariable(name: "_i", scope: !3888, file: !1, line: 2485, type: !3)
!3888 = distinct !DILexicalBlock(scope: !3880, file: !1, line: 2485, column: 3)
!3889 = !DILocation(line: 0, scope: !3880)
!3890 = !DILocation(line: 2482, column: 3, scope: !3880)
!3891 = !DILocation(line: 2482, column: 12, scope: !3880)
!3892 = !DILocation(line: 2484, column: 3, scope: !3880)
!3893 = !DILocation(line: 2484, column: 19, scope: !3880)
!3894 = !DILocation(line: 0, scope: !3888)
!3895 = !DILocation(line: 2485, column: 3, scope: !3888)
!3896 = !DILocation(line: 2487, column: 31, scope: !3880)
!3897 = !DILocation(line: 2487, column: 3, scope: !3880)
!3898 = !DILocation(line: 2488, column: 31, scope: !3880)
!3899 = !DILocation(line: 2488, column: 3, scope: !3880)
!3900 = !DILocation(line: 2489, column: 3, scope: !3880)
!3901 = !DILocation(line: 2490, column: 1, scope: !3880)
!3902 = !DILocation(line: 2486, column: 5, scope: !3903)
!3903 = distinct !DILexicalBlock(scope: !3888, file: !1, line: 2485, column: 3)
!3904 = !DILocation(line: 2486, column: 13, scope: !3903)
!3905 = !DILocation(line: 2485, column: 45, scope: !3903)
!3906 = !DILocation(line: 2485, column: 29, scope: !3903)
!3907 = distinct !{!3907, !3895, !3908, !574, !575}
!3908 = !DILocation(line: 2486, column: 57, scope: !3888)
!3909 = distinct !DISubprogram(name: "Hacl_Impl_BignumQ_Mul_add_modq", scope: !1, file: !1, line: 2538, type: !1280, scopeLine: 2539, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !3910)
!3910 = !{!3911, !3912, !3913}
!3911 = !DILocalVariable(name: "out", arg: 1, scope: !3909, file: !1, line: 2538, type: !112)
!3912 = !DILocalVariable(name: "x", arg: 2, scope: !3909, file: !1, line: 2538, type: !112)
!3913 = !DILocalVariable(name: "y", arg: 3, scope: !3909, file: !1, line: 2538, type: !112)
!3914 = !DILocation(line: 0, scope: !3909)
!3915 = !DILocation(line: 2540, column: 3, scope: !3909)
!3916 = !DILocation(line: 2541, column: 1, scope: !3909)
!3917 = distinct !DISubprogram(name: "load32", scope: !829, file: !829, line: 341, type: !3918, scopeLine: 341, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !3920)
!3918 = !DISubroutineType(types: !3919)
!3919 = !{!3, !29}
!3920 = !{!3921, !3922}
!3921 = !DILocalVariable(name: "b", arg: 1, scope: !3917, file: !829, line: 341, type: !29)
!3922 = !DILocalVariable(name: "x", scope: !3917, file: !829, line: 342, type: !3)
!3923 = !DILocation(line: 0, scope: !3917)
!3924 = !DILocation(line: 343, column: 3, scope: !3917)
!3925 = !DILocation(line: 344, column: 3, scope: !3917)
!3926 = distinct !DISubprogram(name: "Hacl_Impl_BignumQ_Mul_add_modq_", scope: !1, file: !1, line: 2492, type: !1280, scopeLine: 2493, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !3927)
!3927 = !{!3928, !3929, !3930, !3931, !3932, !3933, !3934, !3935, !3936, !3937, !3938, !3939, !3940, !3941, !3942, !3943, !3944, !3945, !3946, !3947, !3948, !3949, !3950, !3951, !3952, !3953, !3954, !3955, !3956, !3957, !3958, !3959, !3960, !3961, !3962, !3963, !3964, !3965, !3966, !3967, !3968, !3969, !3970}
!3928 = !DILocalVariable(name: "out", arg: 1, scope: !3926, file: !1, line: 2492, type: !112)
!3929 = !DILocalVariable(name: "x", arg: 2, scope: !3926, file: !1, line: 2492, type: !112)
!3930 = !DILocalVariable(name: "y", arg: 3, scope: !3926, file: !1, line: 2492, type: !112)
!3931 = !DILocalVariable(name: "tmp", scope: !3926, file: !1, line: 2494, type: !1303)
!3932 = !DILocalVariable(name: "x0", scope: !3926, file: !1, line: 2495, type: !11)
!3933 = !DILocalVariable(name: "x1", scope: !3926, file: !1, line: 2496, type: !11)
!3934 = !DILocalVariable(name: "x2", scope: !3926, file: !1, line: 2497, type: !11)
!3935 = !DILocalVariable(name: "x3", scope: !3926, file: !1, line: 2498, type: !11)
!3936 = !DILocalVariable(name: "x4", scope: !3926, file: !1, line: 2499, type: !11)
!3937 = !DILocalVariable(name: "y0", scope: !3926, file: !1, line: 2500, type: !11)
!3938 = !DILocalVariable(name: "y1", scope: !3926, file: !1, line: 2501, type: !11)
!3939 = !DILocalVariable(name: "y2", scope: !3926, file: !1, line: 2502, type: !11)
!3940 = !DILocalVariable(name: "y3", scope: !3926, file: !1, line: 2503, type: !11)
!3941 = !DILocalVariable(name: "y4", scope: !3926, file: !1, line: 2504, type: !11)
!3942 = !DILocalVariable(name: "z0", scope: !3926, file: !1, line: 2505, type: !11)
!3943 = !DILocalVariable(name: "z1", scope: !3926, file: !1, line: 2506, type: !11)
!3944 = !DILocalVariable(name: "z2", scope: !3926, file: !1, line: 2507, type: !11)
!3945 = !DILocalVariable(name: "z3", scope: !3926, file: !1, line: 2508, type: !11)
!3946 = !DILocalVariable(name: "z4", scope: !3926, file: !1, line: 2509, type: !11)
!3947 = !DILocalVariable(name: "x5", scope: !3926, file: !1, line: 2510, type: !11)
!3948 = !DILocalVariable(name: "y5", scope: !3926, file: !1, line: 2511, type: !11)
!3949 = !DILocalVariable(name: "carry1", scope: !3926, file: !1, line: 2512, type: !11)
!3950 = !DILocalVariable(name: "t", scope: !3926, file: !1, line: 2513, type: !11)
!3951 = !DILocalVariable(name: "x01", scope: !3926, file: !1, line: 2514, type: !11)
!3952 = !DILocalVariable(name: "z1_", scope: !3926, file: !1, line: 2515, type: !11)
!3953 = !DILocalVariable(name: "x6", scope: !3926, file: !1, line: 2516, type: !11)
!3954 = !DILocalVariable(name: "y6", scope: !3926, file: !1, line: 2517, type: !11)
!3955 = !DILocalVariable(name: "carry2", scope: !3926, file: !1, line: 2518, type: !11)
!3956 = !DILocalVariable(name: "t1", scope: !3926, file: !1, line: 2519, type: !11)
!3957 = !DILocalVariable(name: "x11", scope: !3926, file: !1, line: 2520, type: !11)
!3958 = !DILocalVariable(name: "z2_", scope: !3926, file: !1, line: 2521, type: !11)
!3959 = !DILocalVariable(name: "x7", scope: !3926, file: !1, line: 2522, type: !11)
!3960 = !DILocalVariable(name: "y7", scope: !3926, file: !1, line: 2523, type: !11)
!3961 = !DILocalVariable(name: "carry3", scope: !3926, file: !1, line: 2524, type: !11)
!3962 = !DILocalVariable(name: "t2", scope: !3926, file: !1, line: 2525, type: !11)
!3963 = !DILocalVariable(name: "x21", scope: !3926, file: !1, line: 2526, type: !11)
!3964 = !DILocalVariable(name: "z3_", scope: !3926, file: !1, line: 2527, type: !11)
!3965 = !DILocalVariable(name: "x8", scope: !3926, file: !1, line: 2528, type: !11)
!3966 = !DILocalVariable(name: "y8", scope: !3926, file: !1, line: 2529, type: !11)
!3967 = !DILocalVariable(name: "carry4", scope: !3926, file: !1, line: 2530, type: !11)
!3968 = !DILocalVariable(name: "t3", scope: !3926, file: !1, line: 2531, type: !11)
!3969 = !DILocalVariable(name: "x31", scope: !3926, file: !1, line: 2532, type: !11)
!3970 = !DILocalVariable(name: "x41", scope: !3926, file: !1, line: 2533, type: !11)
!3971 = !DILocation(line: 0, scope: !3926)
!3972 = !DILocation(line: 2494, column: 3, scope: !3926)
!3973 = !DILocation(line: 2494, column: 12, scope: !3926)
!3974 = !DILocation(line: 2495, column: 17, scope: !3926)
!3975 = !DILocation(line: 2496, column: 17, scope: !3926)
!3976 = !DILocation(line: 2497, column: 17, scope: !3926)
!3977 = !DILocation(line: 2498, column: 17, scope: !3926)
!3978 = !DILocation(line: 2499, column: 17, scope: !3926)
!3979 = !DILocation(line: 2500, column: 17, scope: !3926)
!3980 = !DILocation(line: 2501, column: 17, scope: !3926)
!3981 = !DILocation(line: 2502, column: 17, scope: !3926)
!3982 = !DILocation(line: 2503, column: 17, scope: !3926)
!3983 = !DILocation(line: 2504, column: 17, scope: !3926)
!3984 = !DILocation(line: 2505, column: 20, scope: !3926)
!3985 = !DILocation(line: 2506, column: 20, scope: !3926)
!3986 = !DILocation(line: 2507, column: 20, scope: !3926)
!3987 = !DILocation(line: 2508, column: 20, scope: !3926)
!3988 = !DILocation(line: 2509, column: 20, scope: !3926)
!3989 = !DILocation(line: 2512, column: 24, scope: !3926)
!3990 = !DILocation(line: 2513, column: 19, scope: !3926)
!3991 = !DILocation(line: 2515, column: 21, scope: !3926)
!3992 = !DILocation(line: 2518, column: 24, scope: !3926)
!3993 = !DILocation(line: 2519, column: 20, scope: !3926)
!3994 = !DILocation(line: 2521, column: 21, scope: !3926)
!3995 = !DILocation(line: 2524, column: 24, scope: !3926)
!3996 = !DILocation(line: 2525, column: 20, scope: !3926)
!3997 = !DILocation(line: 2527, column: 21, scope: !3926)
!3998 = !DILocation(line: 2530, column: 24, scope: !3926)
!3999 = !DILocation(line: 2531, column: 20, scope: !3926)
!4000 = !DILocation(line: 2533, column: 21, scope: !3926)
!4001 = !DILocation(line: 2534, column: 32, scope: !3926)
!4002 = !DILocation(line: 2534, column: 3, scope: !3926)
!4003 = !DILocation(line: 2535, column: 3, scope: !3926)
!4004 = !DILocation(line: 2536, column: 1, scope: !3926)
!4005 = distinct !DISubprogram(name: "Hacl_Impl_Ed25519_Sign_Steps_copy_bytes", scope: !1, file: !1, line: 2726, type: !285, scopeLine: 2727, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !4006)
!4006 = !{!4007, !4008, !4009}
!4007 = !DILocalVariable(name: "output", arg: 1, scope: !4005, file: !1, line: 2726, type: !29)
!4008 = !DILocalVariable(name: "input", arg: 2, scope: !4005, file: !1, line: 2726, type: !29)
!4009 = !DILocalVariable(name: "len1", arg: 3, scope: !4005, file: !1, line: 2726, type: !3)
!4010 = !DILocation(line: 0, scope: !4005)
!4011 = !DILocation(line: 2728, column: 3, scope: !4005)
!4012 = !DILocation(line: 2729, column: 1, scope: !4005)
!4013 = distinct !DISubprogram(name: "Hacl_Impl_Ed25519_Verify_verify_", scope: !1, file: !1, line: 2687, type: !48, scopeLine: 2693, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !4014)
!4014 = !{!4015, !4016, !4017, !4018, !4019, !4023, !4024}
!4015 = !DILocalVariable(name: "public", arg: 1, scope: !4013, file: !1, line: 2688, type: !29)
!4016 = !DILocalVariable(name: "msg", arg: 2, scope: !4013, file: !1, line: 2689, type: !29)
!4017 = !DILocalVariable(name: "len1", arg: 3, scope: !4013, file: !1, line: 2690, type: !3)
!4018 = !DILocalVariable(name: "signature", arg: 4, scope: !4013, file: !1, line: 2691, type: !29)
!4019 = !DILocalVariable(name: "tmp", scope: !4013, file: !1, line: 2694, type: !4020)
!4020 = !DICompositeType(tag: DW_TAG_array_type, baseType: !11, size: 2880, elements: !4021)
!4021 = !{!4022}
!4022 = !DISubrange(count: 45)
!4023 = !DILocalVariable(name: "tmp_", scope: !4013, file: !1, line: 2695, type: !108)
!4024 = !DILocalVariable(name: "res", scope: !4013, file: !1, line: 2696, type: !50)
!4025 = !DILocation(line: 0, scope: !4013)
!4026 = !DILocation(line: 2694, column: 3, scope: !4013)
!4027 = !DILocation(line: 2694, column: 12, scope: !4013)
!4028 = !DILocation(line: 2695, column: 3, scope: !4013)
!4029 = !DILocation(line: 2695, column: 11, scope: !4013)
!4030 = !DILocation(line: 2696, column: 78, scope: !4013)
!4031 = !DILocation(line: 2696, column: 14, scope: !4013)
!4032 = !DILocation(line: 2698, column: 1, scope: !4013)
!4033 = !DILocation(line: 2697, column: 3, scope: !4013)
!4034 = distinct !DISubprogram(name: "Hacl_Impl_Ed25519_Verify_verify__", scope: !1, file: !1, line: 2647, type: !4035, scopeLine: 2655, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !4037)
!4035 = !DISubroutineType(types: !4036)
!4036 = !{!50, !29, !29, !3, !29, !112, !29}
!4037 = !{!4038, !4039, !4040, !4041, !4042, !4043, !4044, !4045, !4046, !4047, !4048, !4049, !4052, !4053, !4056}
!4038 = !DILocalVariable(name: "public", arg: 1, scope: !4034, file: !1, line: 2648, type: !29)
!4039 = !DILocalVariable(name: "msg", arg: 2, scope: !4034, file: !1, line: 2649, type: !29)
!4040 = !DILocalVariable(name: "len1", arg: 3, scope: !4034, file: !1, line: 2650, type: !3)
!4041 = !DILocalVariable(name: "signature", arg: 4, scope: !4034, file: !1, line: 2651, type: !29)
!4042 = !DILocalVariable(name: "tmp", arg: 5, scope: !4034, file: !1, line: 2652, type: !112)
!4043 = !DILocalVariable(name: "tmp_", arg: 6, scope: !4034, file: !1, line: 2653, type: !29)
!4044 = !DILocalVariable(name: "a_", scope: !4034, file: !1, line: 2656, type: !112)
!4045 = !DILocalVariable(name: "r_", scope: !4034, file: !1, line: 2657, type: !112)
!4046 = !DILocalVariable(name: "s", scope: !4034, file: !1, line: 2658, type: !112)
!4047 = !DILocalVariable(name: "h_", scope: !4034, file: !1, line: 2659, type: !29)
!4048 = !DILocalVariable(name: "b", scope: !4034, file: !1, line: 2660, type: !50)
!4049 = !DILocalVariable(name: "rs", scope: !4050, file: !1, line: 2663, type: !29)
!4050 = distinct !DILexicalBlock(scope: !4051, file: !1, line: 2662, column: 3)
!4051 = distinct !DILexicalBlock(scope: !4034, file: !1, line: 2661, column: 7)
!4052 = !DILocalVariable(name: "b_", scope: !4050, file: !1, line: 2664, type: !50)
!4053 = !DILocalVariable(name: "b__", scope: !4054, file: !1, line: 2668, type: !50)
!4054 = distinct !DILexicalBlock(scope: !4055, file: !1, line: 2666, column: 5)
!4055 = distinct !DILexicalBlock(scope: !4050, file: !1, line: 2665, column: 9)
!4056 = !DILocalVariable(name: "b1", scope: !4057, file: !1, line: 2675, type: !50)
!4057 = distinct !DILexicalBlock(scope: !4058, file: !1, line: 2672, column: 7)
!4058 = distinct !DILexicalBlock(scope: !4054, file: !1, line: 2669, column: 11)
!4059 = !DILocation(line: 0, scope: !4034)
!4060 = !DILocation(line: 2657, column: 22, scope: !4034)
!4061 = !DILocation(line: 2658, column: 21, scope: !4034)
!4062 = !DILocation(line: 2660, column: 12, scope: !4034)
!4063 = !DILocation(line: 2661, column: 7, scope: !4034)
!4064 = !DILocation(line: 0, scope: !4050)
!4065 = !DILocation(line: 2664, column: 15, scope: !4050)
!4066 = !DILocation(line: 2665, column: 9, scope: !4050)
!4067 = !DILocation(line: 2667, column: 51, scope: !4054)
!4068 = !DILocation(line: 2667, column: 7, scope: !4054)
!4069 = !DILocation(line: 2668, column: 18, scope: !4054)
!4070 = !DILocation(line: 0, scope: !4054)
!4071 = !DILocation(line: 2669, column: 11, scope: !4054)
!4072 = !DILocation(line: 2673, column: 9, scope: !4057)
!4073 = !DILocation(line: 2675, column: 14, scope: !4057)
!4074 = !DILocation(line: 0, scope: !4057)
!4075 = !DILocation(line: 0, scope: !4051)
!4076 = !DILocation(line: 2684, column: 1, scope: !4034)
!4077 = distinct !DISubprogram(name: "Hacl_Impl_Ed25519_PointDecompress_point_decompress", scope: !1, file: !1, line: 1825, type: !4078, scopeLine: 1826, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !4080)
!4078 = !DISubroutineType(types: !4079)
!4079 = !{!50, !112, !29}
!4080 = !{!4081, !4082, !4083, !4084, !4085, !4086, !4087, !4088, !4089, !4090, !4091, !4092, !4093, !4096, !4097, !4098, !4099, !4100}
!4081 = !DILocalVariable(name: "out", arg: 1, scope: !4077, file: !1, line: 1825, type: !112)
!4082 = !DILocalVariable(name: "s", arg: 2, scope: !4077, file: !1, line: 1825, type: !29)
!4083 = !DILocalVariable(name: "tmp", scope: !4077, file: !1, line: 1827, type: !917)
!4084 = !DILocalVariable(name: "y0", scope: !4077, file: !1, line: 1828, type: !112)
!4085 = !DILocalVariable(name: "x0", scope: !4077, file: !1, line: 1829, type: !112)
!4086 = !DILocalVariable(name: "y", scope: !4077, file: !1, line: 1830, type: !112)
!4087 = !DILocalVariable(name: "x", scope: !4077, file: !1, line: 1831, type: !112)
!4088 = !DILocalVariable(name: "s31", scope: !4077, file: !1, line: 1832, type: !8)
!4089 = !DILocalVariable(name: "sign1", scope: !4077, file: !1, line: 1833, type: !11)
!4090 = !DILocalVariable(name: "z", scope: !4077, file: !1, line: 1835, type: !50)
!4091 = !DILocalVariable(name: "z0", scope: !4077, file: !1, line: 1836, type: !50)
!4092 = !DILocalVariable(name: "res", scope: !4077, file: !1, line: 1837, type: !50)
!4093 = !DILocalVariable(name: "outx", scope: !4094, file: !1, line: 1842, type: !112)
!4094 = distinct !DILexicalBlock(scope: !4095, file: !1, line: 1841, column: 3)
!4095 = distinct !DILexicalBlock(scope: !4077, file: !1, line: 1838, column: 7)
!4096 = !DILocalVariable(name: "outy", scope: !4094, file: !1, line: 1843, type: !112)
!4097 = !DILocalVariable(name: "outz", scope: !4094, file: !1, line: 1844, type: !112)
!4098 = !DILocalVariable(name: "outt", scope: !4094, file: !1, line: 1845, type: !112)
!4099 = !DILocalVariable(name: "zero1", scope: !4094, file: !1, line: 1848, type: !11)
!4100 = !DILocalVariable(name: "one1", scope: !4094, file: !1, line: 1849, type: !11)
!4101 = !DILocation(line: 0, scope: !4077)
!4102 = !DILocation(line: 1827, column: 3, scope: !4077)
!4103 = !DILocation(line: 1827, column: 12, scope: !4077)
!4104 = !DILocation(line: 1828, column: 18, scope: !4077)
!4105 = !DILocation(line: 1829, column: 22, scope: !4077)
!4106 = !DILocation(line: 1832, column: 17, scope: !4077)
!4107 = !DILocation(line: 1833, column: 35, scope: !4077)
!4108 = !DILocation(line: 1834, column: 3, scope: !4077)
!4109 = !DILocation(line: 1835, column: 12, scope: !4077)
!4110 = !DILocation(line: 1838, column: 7, scope: !4077)
!4111 = !DILocation(line: 0, scope: !4094)
!4112 = !DILocation(line: 1843, column: 22, scope: !4094)
!4113 = !DILocation(line: 1844, column: 22, scope: !4094)
!4114 = !DILocation(line: 1845, column: 22, scope: !4094)
!4115 = !DILocation(line: 1846, column: 5, scope: !4094)
!4116 = !DILocation(line: 1847, column: 5, scope: !4094)
!4117 = !DILocation(line: 1850, column: 5, scope: !4094)
!4118 = !DILocation(line: 1851, column: 5, scope: !4094)
!4119 = !DILocation(line: 1855, column: 1, scope: !4077)
!4120 = !DILocation(line: 1854, column: 3, scope: !4077)
!4121 = distinct !DISubprogram(name: "Hacl_Impl_Ed25519_Verify_Steps_verify_step_1", scope: !1, file: !1, line: 2599, type: !4078, scopeLine: 2600, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !4122)
!4122 = !{!4123, !4124, !4125, !4126}
!4123 = !DILocalVariable(name: "r_", arg: 1, scope: !4121, file: !1, line: 2599, type: !112)
!4124 = !DILocalVariable(name: "signature", arg: 2, scope: !4121, file: !1, line: 2599, type: !29)
!4125 = !DILocalVariable(name: "rs", scope: !4121, file: !1, line: 2601, type: !29)
!4126 = !DILocalVariable(name: "b_", scope: !4121, file: !1, line: 2602, type: !50)
!4127 = !DILocation(line: 0, scope: !4121)
!4128 = !DILocation(line: 2602, column: 13, scope: !4121)
!4129 = !DILocation(line: 2603, column: 3, scope: !4121)
!4130 = distinct !DISubprogram(name: "Hacl_Impl_Ed25519_PointEqual_gte_q", scope: !1, file: !1, line: 1510, type: !4131, scopeLine: 1511, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !4133)
!4131 = !DISubroutineType(types: !4132)
!4132 = !{!50, !112}
!4133 = !{!4134, !4135, !4136, !4137, !4138, !4139}
!4134 = !DILocalVariable(name: "s", arg: 1, scope: !4130, file: !1, line: 1510, type: !112)
!4135 = !DILocalVariable(name: "s0", scope: !4130, file: !1, line: 1512, type: !11)
!4136 = !DILocalVariable(name: "s1", scope: !4130, file: !1, line: 1513, type: !11)
!4137 = !DILocalVariable(name: "s2", scope: !4130, file: !1, line: 1514, type: !11)
!4138 = !DILocalVariable(name: "s3", scope: !4130, file: !1, line: 1515, type: !11)
!4139 = !DILocalVariable(name: "s4", scope: !4130, file: !1, line: 1516, type: !11)
!4140 = !DILocation(line: 0, scope: !4130)
!4141 = !DILocation(line: 1512, column: 17, scope: !4130)
!4142 = !DILocation(line: 1513, column: 17, scope: !4130)
!4143 = !DILocation(line: 1514, column: 17, scope: !4130)
!4144 = !DILocation(line: 1515, column: 17, scope: !4130)
!4145 = !DILocation(line: 1516, column: 17, scope: !4130)
!4146 = !DILocation(line: 1517, column: 10, scope: !4147)
!4147 = distinct !DILexicalBlock(scope: !4130, file: !1, line: 1517, column: 7)
!4148 = !DILocation(line: 1517, column: 7, scope: !4130)
!4149 = !DILocation(line: 1519, column: 15, scope: !4150)
!4150 = distinct !DILexicalBlock(scope: !4147, file: !1, line: 1519, column: 12)
!4151 = !DILocation(line: 1519, column: 12, scope: !4147)
!4152 = !DILocation(line: 1521, column: 15, scope: !4153)
!4153 = distinct !DILexicalBlock(scope: !4150, file: !1, line: 1521, column: 12)
!4154 = !DILocation(line: 1521, column: 12, scope: !4150)
!4155 = !DILocation(line: 1525, column: 15, scope: !4156)
!4156 = distinct !DILexicalBlock(scope: !4157, file: !1, line: 1525, column: 12)
!4157 = distinct !DILexicalBlock(scope: !4153, file: !1, line: 1523, column: 12)
!4158 = !DILocation(line: 1525, column: 12, scope: !4157)
!4159 = !DILocation(line: 1527, column: 15, scope: !4160)
!4160 = distinct !DILexicalBlock(scope: !4156, file: !1, line: 1527, column: 12)
!4161 = !DILocation(line: 1527, column: 12, scope: !4156)
!4162 = !DILocation(line: 1529, column: 15, scope: !4163)
!4163 = distinct !DILexicalBlock(scope: !4160, file: !1, line: 1529, column: 12)
!4164 = !DILocation(line: 1529, column: 12, scope: !4160)
!4165 = !DILocation(line: 0, scope: !4147)
!4166 = !DILocation(line: 1535, column: 1, scope: !4130)
!4167 = distinct !DISubprogram(name: "Hacl_Impl_Ed25519_Verify_Steps_verify_step_2", scope: !1, file: !1, line: 2607, type: !4168, scopeLine: 2614, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !4170)
!4168 = !DISubroutineType(types: !4169)
!4169 = !{null, !29, !29, !3, !29, !29}
!4170 = !{!4171, !4172, !4173, !4174, !4175, !4176}
!4171 = !DILocalVariable(name: "r", arg: 1, scope: !4167, file: !1, line: 2608, type: !29)
!4172 = !DILocalVariable(name: "msg", arg: 2, scope: !4167, file: !1, line: 2609, type: !29)
!4173 = !DILocalVariable(name: "len1", arg: 3, scope: !4167, file: !1, line: 2610, type: !3)
!4174 = !DILocalVariable(name: "rs", arg: 4, scope: !4167, file: !1, line: 2611, type: !29)
!4175 = !DILocalVariable(name: "public", arg: 5, scope: !4167, file: !1, line: 2612, type: !29)
!4176 = !DILocalVariable(name: "r_", scope: !4167, file: !1, line: 2615, type: !1303)
!4177 = !DILocation(line: 0, scope: !4167)
!4178 = !DILocation(line: 2615, column: 3, scope: !4167)
!4179 = !DILocation(line: 2615, column: 12, scope: !4167)
!4180 = !DILocation(line: 2616, column: 46, scope: !4167)
!4181 = !DILocation(line: 2616, column: 3, scope: !4167)
!4182 = !DILocation(line: 2617, column: 3, scope: !4167)
!4183 = !DILocation(line: 2618, column: 1, scope: !4167)
!4184 = distinct !DISubprogram(name: "Hacl_Impl_Ed25519_Verify_Steps_verify_step_4", scope: !1, file: !1, line: 2628, type: !4185, scopeLine: 2634, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !4187)
!4185 = !DISubroutineType(types: !4186)
!4186 = !{!50, !29, !29, !112, !112}
!4187 = !{!4188, !4189, !4190, !4191, !4192, !4196, !4197, !4198, !4199}
!4188 = !DILocalVariable(name: "s", arg: 1, scope: !4184, file: !1, line: 2629, type: !29)
!4189 = !DILocalVariable(name: "h_", arg: 2, scope: !4184, file: !1, line: 2630, type: !29)
!4190 = !DILocalVariable(name: "a_", arg: 3, scope: !4184, file: !1, line: 2631, type: !112)
!4191 = !DILocalVariable(name: "r_", arg: 4, scope: !4184, file: !1, line: 2632, type: !112)
!4192 = !DILocalVariable(name: "tmp", scope: !4184, file: !1, line: 2635, type: !4193)
!4193 = !DICompositeType(tag: DW_TAG_array_type, baseType: !11, size: 3840, elements: !4194)
!4194 = !{!4195}
!4195 = !DISubrange(count: 60)
!4196 = !DILocalVariable(name: "hA", scope: !4184, file: !1, line: 2636, type: !112)
!4197 = !DILocalVariable(name: "rhA", scope: !4184, file: !1, line: 2637, type: !112)
!4198 = !DILocalVariable(name: "sB", scope: !4184, file: !1, line: 2638, type: !112)
!4199 = !DILocalVariable(name: "b", scope: !4184, file: !1, line: 2642, type: !50)
!4200 = !DILocation(line: 0, scope: !4184)
!4201 = !DILocation(line: 2635, column: 3, scope: !4184)
!4202 = !DILocation(line: 2635, column: 12, scope: !4184)
!4203 = !DILocation(line: 2636, column: 18, scope: !4184)
!4204 = !DILocation(line: 2637, column: 23, scope: !4184)
!4205 = !DILocation(line: 2638, column: 22, scope: !4184)
!4206 = !DILocation(line: 2639, column: 3, scope: !4184)
!4207 = !DILocation(line: 2640, column: 3, scope: !4184)
!4208 = !DILocation(line: 2641, column: 3, scope: !4184)
!4209 = !DILocation(line: 2642, column: 12, scope: !4184)
!4210 = !DILocation(line: 2644, column: 1, scope: !4184)
!4211 = !DILocation(line: 2643, column: 3, scope: !4184)
!4212 = distinct !DISubprogram(name: "Hacl_Impl_Load51_load_51", scope: !1, file: !1, line: 1820, type: !630, scopeLine: 1821, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !4213)
!4213 = !{!4214, !4215}
!4214 = !DILocalVariable(name: "output", arg: 1, scope: !4212, file: !1, line: 1820, type: !112)
!4215 = !DILocalVariable(name: "input", arg: 2, scope: !4212, file: !1, line: 1820, type: !29)
!4216 = !DILocation(line: 0, scope: !4212)
!4217 = !DILocation(line: 1822, column: 3, scope: !4212)
!4218 = !DILocation(line: 1823, column: 1, scope: !4212)
!4219 = distinct !DISubprogram(name: "Hacl_Impl_Ed25519_RecoverX_recover_x", scope: !1, file: !1, line: 1813, type: !4220, scopeLine: 1814, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !4222)
!4220 = !DISubroutineType(types: !4221)
!4221 = !{!50, !112, !112, !11}
!4222 = !{!4223, !4224, !4225, !4226, !4227}
!4223 = !DILocalVariable(name: "x", arg: 1, scope: !4219, file: !1, line: 1813, type: !112)
!4224 = !DILocalVariable(name: "y", arg: 2, scope: !4219, file: !1, line: 1813, type: !112)
!4225 = !DILocalVariable(name: "sign1", arg: 3, scope: !4219, file: !1, line: 1813, type: !11)
!4226 = !DILocalVariable(name: "tmp", scope: !4219, file: !1, line: 1815, type: !205)
!4227 = !DILocalVariable(name: "res", scope: !4219, file: !1, line: 1816, type: !50)
!4228 = !DILocation(line: 0, scope: !4219)
!4229 = !DILocation(line: 1815, column: 3, scope: !4219)
!4230 = !DILocation(line: 1815, column: 12, scope: !4219)
!4231 = !DILocation(line: 1816, column: 65, scope: !4219)
!4232 = !DILocation(line: 1816, column: 14, scope: !4219)
!4233 = !DILocation(line: 1818, column: 1, scope: !4219)
!4234 = !DILocation(line: 1817, column: 3, scope: !4219)
!4235 = distinct !DISubprogram(name: "Hacl_EC_Format_fexpand", scope: !1, file: !1, line: 469, type: !630, scopeLine: 470, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !4236)
!4236 = !{!4237, !4238, !4239, !4240, !4241, !4242, !4243, !4244, !4245, !4246, !4247, !4248, !4249, !4250, !4251, !4252}
!4237 = !DILocalVariable(name: "output", arg: 1, scope: !4235, file: !1, line: 469, type: !112)
!4238 = !DILocalVariable(name: "input", arg: 2, scope: !4235, file: !1, line: 469, type: !29)
!4239 = !DILocalVariable(name: "i0", scope: !4235, file: !1, line: 471, type: !11)
!4240 = !DILocalVariable(name: "x00", scope: !4235, file: !1, line: 472, type: !29)
!4241 = !DILocalVariable(name: "i1", scope: !4235, file: !1, line: 473, type: !11)
!4242 = !DILocalVariable(name: "x01", scope: !4235, file: !1, line: 474, type: !29)
!4243 = !DILocalVariable(name: "i2", scope: !4235, file: !1, line: 475, type: !11)
!4244 = !DILocalVariable(name: "x02", scope: !4235, file: !1, line: 476, type: !29)
!4245 = !DILocalVariable(name: "i3", scope: !4235, file: !1, line: 477, type: !11)
!4246 = !DILocalVariable(name: "x0", scope: !4235, file: !1, line: 478, type: !29)
!4247 = !DILocalVariable(name: "i4", scope: !4235, file: !1, line: 479, type: !11)
!4248 = !DILocalVariable(name: "output0", scope: !4235, file: !1, line: 480, type: !11)
!4249 = !DILocalVariable(name: "output1", scope: !4235, file: !1, line: 481, type: !11)
!4250 = !DILocalVariable(name: "output2", scope: !4235, file: !1, line: 482, type: !11)
!4251 = !DILocalVariable(name: "output3", scope: !4235, file: !1, line: 483, type: !11)
!4252 = !DILocalVariable(name: "output4", scope: !4235, file: !1, line: 484, type: !11)
!4253 = !DILocation(line: 0, scope: !4235)
!4254 = !DILocation(line: 471, column: 17, scope: !4235)
!4255 = !DILocation(line: 472, column: 24, scope: !4235)
!4256 = !DILocation(line: 473, column: 17, scope: !4235)
!4257 = !DILocation(line: 474, column: 24, scope: !4235)
!4258 = !DILocation(line: 475, column: 17, scope: !4235)
!4259 = !DILocation(line: 476, column: 24, scope: !4235)
!4260 = !DILocation(line: 477, column: 17, scope: !4235)
!4261 = !DILocation(line: 478, column: 23, scope: !4235)
!4262 = !DILocation(line: 479, column: 17, scope: !4235)
!4263 = !DILocation(line: 480, column: 25, scope: !4235)
!4264 = !DILocation(line: 481, column: 25, scope: !4235)
!4265 = !DILocation(line: 481, column: 41, scope: !4235)
!4266 = !DILocation(line: 482, column: 25, scope: !4235)
!4267 = !DILocation(line: 482, column: 41, scope: !4235)
!4268 = !DILocation(line: 483, column: 25, scope: !4235)
!4269 = !DILocation(line: 483, column: 41, scope: !4235)
!4270 = !DILocation(line: 484, column: 25, scope: !4235)
!4271 = !DILocation(line: 484, column: 42, scope: !4235)
!4272 = !DILocation(line: 485, column: 14, scope: !4235)
!4273 = !DILocation(line: 486, column: 3, scope: !4235)
!4274 = !DILocation(line: 486, column: 14, scope: !4235)
!4275 = !DILocation(line: 487, column: 3, scope: !4235)
!4276 = !DILocation(line: 487, column: 14, scope: !4235)
!4277 = !DILocation(line: 488, column: 3, scope: !4235)
!4278 = !DILocation(line: 488, column: 14, scope: !4235)
!4279 = !DILocation(line: 489, column: 3, scope: !4235)
!4280 = !DILocation(line: 489, column: 14, scope: !4235)
!4281 = !DILocation(line: 490, column: 1, scope: !4235)
!4282 = distinct !DISubprogram(name: "Hacl_Impl_Ed25519_RecoverX_recover_x_", scope: !1, file: !1, line: 1710, type: !4283, scopeLine: 1711, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !4285)
!4283 = !DISubroutineType(types: !4284)
!4284 = !{!50, !112, !112, !11, !112}
!4285 = !{!4286, !4287, !4288, !4289, !4290, !4291, !4292, !4293, !4294, !4295, !4296, !4297, !4303, !4304, !4305, !4306, !4307, !4308, !4309, !4310, !4311, !4314, !4317, !4321, !4322, !4323, !4324, !4325, !4328, !4329, !4330, !4331, !4332}
!4286 = !DILocalVariable(name: "x", arg: 1, scope: !4282, file: !1, line: 1710, type: !112)
!4287 = !DILocalVariable(name: "y", arg: 2, scope: !4282, file: !1, line: 1710, type: !112)
!4288 = !DILocalVariable(name: "sign1", arg: 3, scope: !4282, file: !1, line: 1710, type: !11)
!4289 = !DILocalVariable(name: "tmp", arg: 4, scope: !4282, file: !1, line: 1710, type: !112)
!4290 = !DILocalVariable(name: "x20", scope: !4282, file: !1, line: 1712, type: !112)
!4291 = !DILocalVariable(name: "x0", scope: !4282, file: !1, line: 1713, type: !11)
!4292 = !DILocalVariable(name: "x1", scope: !4282, file: !1, line: 1714, type: !11)
!4293 = !DILocalVariable(name: "x2", scope: !4282, file: !1, line: 1715, type: !11)
!4294 = !DILocalVariable(name: "x30", scope: !4282, file: !1, line: 1716, type: !11)
!4295 = !DILocalVariable(name: "x4", scope: !4282, file: !1, line: 1717, type: !11)
!4296 = !DILocalVariable(name: "b", scope: !4282, file: !1, line: 1719, type: !50)
!4297 = !DILocalVariable(name: "tmp0", scope: !4298, file: !1, line: 1730, type: !4300)
!4298 = distinct !DILexicalBlock(scope: !4299, file: !1, line: 1729, column: 3)
!4299 = distinct !DILexicalBlock(scope: !4282, file: !1, line: 1726, column: 7)
!4300 = !DICompositeType(tag: DW_TAG_array_type, baseType: !11, size: 1600, elements: !4301)
!4301 = !{!4302}
!4302 = !DISubrange(count: 25)
!4303 = !DILocalVariable(name: "one10", scope: !4298, file: !1, line: 1731, type: !112)
!4304 = !DILocalVariable(name: "y2", scope: !4298, file: !1, line: 1732, type: !112)
!4305 = !DILocalVariable(name: "dyyi", scope: !4298, file: !1, line: 1733, type: !112)
!4306 = !DILocalVariable(name: "dyy", scope: !4298, file: !1, line: 1734, type: !112)
!4307 = !DILocalVariable(name: "zero10", scope: !4298, file: !1, line: 1735, type: !11)
!4308 = !DILocalVariable(name: "one1", scope: !4298, file: !1, line: 1736, type: !11)
!4309 = !DILocalVariable(name: "x2_is_0", scope: !4298, file: !1, line: 1746, type: !50)
!4310 = !DILocalVariable(name: "z", scope: !4298, file: !1, line: 1747, type: !8)
!4311 = !DILocalVariable(name: "ite", scope: !4312, file: !1, line: 1750, type: !8)
!4312 = distinct !DILexicalBlock(scope: !4313, file: !1, line: 1749, column: 5)
!4313 = distinct !DILexicalBlock(scope: !4298, file: !1, line: 1748, column: 9)
!4314 = !DILocalVariable(name: "zero1", scope: !4315, file: !1, line: 1753, type: !11)
!4315 = distinct !DILexicalBlock(scope: !4316, file: !1, line: 1752, column: 7)
!4316 = distinct !DILexicalBlock(scope: !4312, file: !1, line: 1751, column: 11)
!4317 = !DILocalVariable(name: "x2", scope: !4318, file: !1, line: 1769, type: !112)
!4318 = distinct !DILexicalBlock(scope: !4319, file: !1, line: 1768, column: 5)
!4319 = distinct !DILexicalBlock(scope: !4320, file: !1, line: 1765, column: 14)
!4320 = distinct !DILexicalBlock(scope: !4298, file: !1, line: 1763, column: 9)
!4321 = !DILocalVariable(name: "x30", scope: !4318, file: !1, line: 1770, type: !112)
!4322 = !DILocalVariable(name: "t00", scope: !4318, file: !1, line: 1771, type: !112)
!4323 = !DILocalVariable(name: "t10", scope: !4318, file: !1, line: 1772, type: !112)
!4324 = !DILocalVariable(name: "t1_is_0", scope: !4318, file: !1, line: 1779, type: !50)
!4325 = !DILocalVariable(name: "sqrt_m1", scope: !4326, file: !1, line: 1782, type: !1303)
!4326 = distinct !DILexicalBlock(scope: !4327, file: !1, line: 1781, column: 7)
!4327 = distinct !DILexicalBlock(scope: !4318, file: !1, line: 1780, column: 11)
!4328 = !DILocalVariable(name: "x20", scope: !4318, file: !1, line: 1792, type: !112)
!4329 = !DILocalVariable(name: "x3", scope: !4318, file: !1, line: 1793, type: !112)
!4330 = !DILocalVariable(name: "t0", scope: !4318, file: !1, line: 1794, type: !112)
!4331 = !DILocalVariable(name: "t1", scope: !4318, file: !1, line: 1795, type: !112)
!4332 = !DILocalVariable(name: "z1", scope: !4318, file: !1, line: 1801, type: !50)
!4333 = !DILocation(line: 0, scope: !4282)
!4334 = !DILocation(line: 1713, column: 17, scope: !4282)
!4335 = !DILocation(line: 1714, column: 17, scope: !4282)
!4336 = !DILocation(line: 1715, column: 17, scope: !4282)
!4337 = !DILocation(line: 1716, column: 18, scope: !4282)
!4338 = !DILocation(line: 1721, column: 5, scope: !4282)
!4339 = !DILocation(line: 1722, column: 5, scope: !4282)
!4340 = !DILocation(line: 1717, column: 17, scope: !4282)
!4341 = !DILocation(line: 1725, column: 11, scope: !4282)
!4342 = !DILocation(line: 1726, column: 7, scope: !4282)
!4343 = !DILocation(line: 1730, column: 5, scope: !4298)
!4344 = !DILocation(line: 1730, column: 14, scope: !4298)
!4345 = !DILocation(line: 1731, column: 23, scope: !4298)
!4346 = !DILocation(line: 0, scope: !4298)
!4347 = !DILocation(line: 1732, column: 25, scope: !4298)
!4348 = !DILocation(line: 1733, column: 27, scope: !4298)
!4349 = !DILocation(line: 1734, column: 26, scope: !4298)
!4350 = !DILocation(line: 1737, column: 5, scope: !4298)
!4351 = !DILocation(line: 1738, column: 5, scope: !4298)
!4352 = !DILocation(line: 1739, column: 5, scope: !4298)
!4353 = !DILocation(line: 1740, column: 5, scope: !4298)
!4354 = !DILocation(line: 1741, column: 5, scope: !4298)
!4355 = !DILocation(line: 1742, column: 5, scope: !4298)
!4356 = !DILocation(line: 1743, column: 5, scope: !4298)
!4357 = !DILocation(line: 1744, column: 5, scope: !4298)
!4358 = !DILocation(line: 1745, column: 5, scope: !4298)
!4359 = !DILocation(line: 1746, column: 20, scope: !4298)
!4360 = !DILocation(line: 1748, column: 9, scope: !4298)
!4361 = !DILocation(line: 1751, column: 17, scope: !4316)
!4362 = !DILocation(line: 1751, column: 11, scope: !4312)
!4363 = !DILocation(line: 0, scope: !4315)
!4364 = !DILocation(line: 1754, column: 9, scope: !4315)
!4365 = !DILocation(line: 0, scope: !4312)
!4366 = !DILocation(line: 1756, column: 7, scope: !4315)
!4367 = !DILocation(line: 0, scope: !4313)
!4368 = !DILocation(line: 1763, column: 9, scope: !4298)
!4369 = !DILocation(line: 1766, column: 7, scope: !4319)
!4370 = !DILocation(line: 0, scope: !4318)
!4371 = !DILocation(line: 1770, column: 27, scope: !4318)
!4372 = !DILocation(line: 1771, column: 27, scope: !4318)
!4373 = !DILocation(line: 1772, column: 27, scope: !4318)
!4374 = !DILocation(line: 1773, column: 7, scope: !4318)
!4375 = !DILocation(line: 1774, column: 7, scope: !4318)
!4376 = !DILocation(line: 1775, column: 7, scope: !4318)
!4377 = !DILocation(line: 1776, column: 7, scope: !4318)
!4378 = !DILocation(line: 1777, column: 7, scope: !4318)
!4379 = !DILocation(line: 1778, column: 7, scope: !4318)
!4380 = !DILocation(line: 1779, column: 22, scope: !4318)
!4381 = !DILocation(line: 1780, column: 11, scope: !4318)
!4382 = !DILocation(line: 1782, column: 9, scope: !4326)
!4383 = !DILocation(line: 1782, column: 18, scope: !4326)
!4384 = !DILocation(line: 1783, column: 38, scope: !4326)
!4385 = !DILocation(line: 1783, column: 9, scope: !4326)
!4386 = !DILocation(line: 1789, column: 9, scope: !4326)
!4387 = !DILocation(line: 1790, column: 7, scope: !4327)
!4388 = !DILocation(line: 1790, column: 7, scope: !4326)
!4389 = !DILocation(line: 1791, column: 7, scope: !4318)
!4390 = !DILocation(line: 1796, column: 7, scope: !4318)
!4391 = !DILocation(line: 1797, column: 7, scope: !4318)
!4392 = !DILocation(line: 1798, column: 7, scope: !4318)
!4393 = !DILocation(line: 1799, column: 7, scope: !4318)
!4394 = !DILocation(line: 1800, column: 7, scope: !4318)
!4395 = !DILocation(line: 1801, column: 17, scope: !4318)
!4396 = !DILocation(line: 1802, column: 11, scope: !4318)
!4397 = !DILocation(line: 1806, column: 9, scope: !4398)
!4398 = distinct !DILexicalBlock(scope: !4399, file: !1, line: 1805, column: 7)
!4399 = distinct !DILexicalBlock(scope: !4318, file: !1, line: 1802, column: 11)
!4400 = !DILocation(line: 1807, column: 9, scope: !4398)
!4401 = !DILocation(line: 0, scope: !4320)
!4402 = !DILocation(line: 1810, column: 3, scope: !4299)
!4403 = !DILocation(line: 0, scope: !4299)
!4404 = !DILocation(line: 1811, column: 1, scope: !4282)
!4405 = distinct !DISubprogram(name: "Hacl_Bignum25519_times_d", scope: !1, file: !1, line: 691, type: !1026, scopeLine: 692, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !4406)
!4406 = !{!4407, !4408, !4409}
!4407 = !DILocalVariable(name: "out", arg: 1, scope: !4405, file: !1, line: 691, type: !112)
!4408 = !DILocalVariable(name: "a", arg: 2, scope: !4405, file: !1, line: 691, type: !112)
!4409 = !DILocalVariable(name: "d1", scope: !4405, file: !1, line: 693, type: !1303)
!4410 = !DILocation(line: 0, scope: !4405)
!4411 = !DILocation(line: 693, column: 3, scope: !4405)
!4412 = !DILocation(line: 693, column: 12, scope: !4405)
!4413 = !DILocation(line: 694, column: 32, scope: !4405)
!4414 = !DILocation(line: 694, column: 3, scope: !4405)
!4415 = !DILocation(line: 700, column: 3, scope: !4405)
!4416 = !DILocation(line: 701, column: 1, scope: !4405)
!4417 = distinct !DISubprogram(name: "Hacl_Impl_Ed25519_RecoverX_is_0", scope: !1, file: !1, line: 1675, type: !4131, scopeLine: 1676, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !4418)
!4418 = !{!4419, !4420, !4421, !4422, !4423, !4424}
!4419 = !DILocalVariable(name: "x", arg: 1, scope: !4417, file: !1, line: 1675, type: !112)
!4420 = !DILocalVariable(name: "x0", scope: !4417, file: !1, line: 1677, type: !11)
!4421 = !DILocalVariable(name: "x1", scope: !4417, file: !1, line: 1678, type: !11)
!4422 = !DILocalVariable(name: "x2", scope: !4417, file: !1, line: 1679, type: !11)
!4423 = !DILocalVariable(name: "x3", scope: !4417, file: !1, line: 1680, type: !11)
!4424 = !DILocalVariable(name: "x4", scope: !4417, file: !1, line: 1681, type: !11)
!4425 = !DILocation(line: 0, scope: !4417)
!4426 = !DILocation(line: 1677, column: 17, scope: !4417)
!4427 = !DILocation(line: 1678, column: 17, scope: !4417)
!4428 = !DILocation(line: 1679, column: 17, scope: !4417)
!4429 = !DILocation(line: 1680, column: 17, scope: !4417)
!4430 = !DILocation(line: 1684, column: 5, scope: !4417)
!4431 = !DILocation(line: 1685, column: 5, scope: !4417)
!4432 = !DILocation(line: 1681, column: 17, scope: !4417)
!4433 = !DILocation(line: 1688, column: 11, scope: !4417)
!4434 = !DILocation(line: 1682, column: 3, scope: !4417)
!4435 = distinct !DISubprogram(name: "Hacl_Impl_Ed25519_Pow2_252m2_pow2_252m2", scope: !1, file: !1, line: 1670, type: !1026, scopeLine: 1671, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !4436)
!4436 = !{!4437, !4438}
!4437 = !DILocalVariable(name: "out", arg: 1, scope: !4435, file: !1, line: 1670, type: !112)
!4438 = !DILocalVariable(name: "z", arg: 2, scope: !4435, file: !1, line: 1670, type: !112)
!4439 = !DILocation(line: 0, scope: !4435)
!4440 = !DILocation(line: 1672, column: 3, scope: !4435)
!4441 = !DILocation(line: 1673, column: 1, scope: !4435)
!4442 = distinct !DISubprogram(name: "Hacl_Impl_Ed25519_RecoverX_recover_x_step_5", scope: !1, file: !1, line: 1692, type: !4443, scopeLine: 1693, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !4445)
!4443 = !DISubroutineType(types: !4444)
!4444 = !{null, !112, !11, !112}
!4445 = !{!4446, !4447, !4448, !4449, !4450, !4451, !4452, !4453}
!4446 = !DILocalVariable(name: "x", arg: 1, scope: !4442, file: !1, line: 1692, type: !112)
!4447 = !DILocalVariable(name: "sign1", arg: 2, scope: !4442, file: !1, line: 1692, type: !11)
!4448 = !DILocalVariable(name: "tmp", arg: 3, scope: !4442, file: !1, line: 1692, type: !112)
!4449 = !DILocalVariable(name: "x3", scope: !4442, file: !1, line: 1694, type: !112)
!4450 = !DILocalVariable(name: "t0", scope: !4442, file: !1, line: 1695, type: !112)
!4451 = !DILocalVariable(name: "x0", scope: !4442, file: !1, line: 1696, type: !11)
!4452 = !DILocalVariable(name: "x00", scope: !4442, file: !1, line: 1697, type: !11)
!4453 = !DILocalVariable(name: "zero1", scope: !4454, file: !1, line: 1700, type: !11)
!4454 = distinct !DILexicalBlock(scope: !4455, file: !1, line: 1699, column: 3)
!4455 = distinct !DILexicalBlock(scope: !4442, file: !1, line: 1698, column: 7)
!4456 = !DILocation(line: 0, scope: !4442)
!4457 = !DILocation(line: 1694, column: 22, scope: !4442)
!4458 = !DILocation(line: 1695, column: 22, scope: !4442)
!4459 = !DILocation(line: 1696, column: 17, scope: !4442)
!4460 = !DILocation(line: 1697, column: 21, scope: !4442)
!4461 = !DILocation(line: 1698, column: 13, scope: !4455)
!4462 = !DILocation(line: 1698, column: 7, scope: !4442)
!4463 = !DILocation(line: 0, scope: !4454)
!4464 = !DILocation(line: 1701, column: 5, scope: !4454)
!4465 = !DILocation(line: 1702, column: 5, scope: !4454)
!4466 = !DILocation(line: 1703, column: 5, scope: !4454)
!4467 = !DILocation(line: 1704, column: 5, scope: !4454)
!4468 = !DILocation(line: 1705, column: 3, scope: !4454)
!4469 = !DILocation(line: 1706, column: 3, scope: !4442)
!4470 = !DILocation(line: 1707, column: 1, scope: !4442)
!4471 = distinct !DISubprogram(name: "Hacl_Bignum_Crecip_crecip_", scope: !1, file: !1, line: 355, type: !1026, scopeLine: 356, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !4472)
!4472 = !{!4473, !4474, !4475, !4476, !4477, !4478, !4479, !4480, !4481, !4482, !4483, !4484, !4485, !4486}
!4473 = !DILocalVariable(name: "out", arg: 1, scope: !4471, file: !1, line: 355, type: !112)
!4474 = !DILocalVariable(name: "z", arg: 2, scope: !4471, file: !1, line: 355, type: !112)
!4475 = !DILocalVariable(name: "buf", scope: !4471, file: !1, line: 357, type: !205)
!4476 = !DILocalVariable(name: "a", scope: !4471, file: !1, line: 358, type: !112)
!4477 = !DILocalVariable(name: "t00", scope: !4471, file: !1, line: 359, type: !112)
!4478 = !DILocalVariable(name: "b0", scope: !4471, file: !1, line: 360, type: !112)
!4479 = !DILocalVariable(name: "t01", scope: !4471, file: !1, line: 368, type: !112)
!4480 = !DILocalVariable(name: "b1", scope: !4471, file: !1, line: 369, type: !112)
!4481 = !DILocalVariable(name: "c0", scope: !4471, file: !1, line: 370, type: !112)
!4482 = !DILocalVariable(name: "a0", scope: !4471, file: !1, line: 379, type: !112)
!4483 = !DILocalVariable(name: "a1", scope: !4471, file: !1, line: 381, type: !112)
!4484 = !DILocalVariable(name: "t0", scope: !4471, file: !1, line: 382, type: !112)
!4485 = !DILocalVariable(name: "b", scope: !4471, file: !1, line: 383, type: !112)
!4486 = !DILocalVariable(name: "c", scope: !4471, file: !1, line: 384, type: !112)
!4487 = !DILocation(line: 0, scope: !4471)
!4488 = !DILocation(line: 357, column: 3, scope: !4471)
!4489 = !DILocation(line: 357, column: 12, scope: !4471)
!4490 = !DILocation(line: 358, column: 17, scope: !4471)
!4491 = !DILocation(line: 359, column: 23, scope: !4471)
!4492 = !DILocation(line: 360, column: 22, scope: !4471)
!4493 = !DILocation(line: 361, column: 3, scope: !4471)
!4494 = !DILocation(line: 362, column: 3, scope: !4471)
!4495 = !DILocation(line: 363, column: 3, scope: !4471)
!4496 = !DILocation(line: 364, column: 3, scope: !4471)
!4497 = !DILocation(line: 365, column: 3, scope: !4471)
!4498 = !DILocation(line: 366, column: 3, scope: !4471)
!4499 = !DILocation(line: 367, column: 3, scope: !4471)
!4500 = !DILocation(line: 370, column: 22, scope: !4471)
!4501 = !DILocation(line: 371, column: 3, scope: !4471)
!4502 = !DILocation(line: 372, column: 3, scope: !4471)
!4503 = !DILocation(line: 373, column: 3, scope: !4471)
!4504 = !DILocation(line: 374, column: 3, scope: !4471)
!4505 = !DILocation(line: 375, column: 3, scope: !4471)
!4506 = !DILocation(line: 376, column: 3, scope: !4471)
!4507 = !DILocation(line: 377, column: 3, scope: !4471)
!4508 = !DILocation(line: 378, column: 3, scope: !4471)
!4509 = !DILocation(line: 380, column: 3, scope: !4471)
!4510 = !DILocation(line: 385, column: 3, scope: !4471)
!4511 = !DILocation(line: 386, column: 3, scope: !4471)
!4512 = !DILocation(line: 387, column: 3, scope: !4471)
!4513 = !DILocation(line: 388, column: 3, scope: !4471)
!4514 = !DILocation(line: 389, column: 3, scope: !4471)
!4515 = !DILocation(line: 390, column: 3, scope: !4471)
!4516 = !DILocation(line: 391, column: 3, scope: !4471)
!4517 = !DILocation(line: 392, column: 1, scope: !4471)
!4518 = distinct !DISubprogram(name: "Hacl_Impl_Ed25519_Verify_Steps_point_mul_g", scope: !1, file: !1, line: 2620, type: !630, scopeLine: 2621, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !4519)
!4519 = !{!4520, !4521, !4522}
!4520 = !DILocalVariable(name: "result", arg: 1, scope: !4518, file: !1, line: 2620, type: !112)
!4521 = !DILocalVariable(name: "scalar", arg: 2, scope: !4518, file: !1, line: 2620, type: !29)
!4522 = !DILocalVariable(name: "g1", scope: !4518, file: !1, line: 2622, type: !205)
!4523 = !DILocation(line: 0, scope: !4518)
!4524 = !DILocation(line: 2622, column: 3, scope: !4518)
!4525 = !DILocation(line: 2622, column: 12, scope: !4518)
!4526 = !DILocation(line: 2623, column: 30, scope: !4518)
!4527 = !DILocation(line: 2623, column: 3, scope: !4518)
!4528 = !DILocation(line: 2624, column: 3, scope: !4518)
!4529 = !DILocation(line: 2625, column: 1, scope: !4518)
!4530 = distinct !DISubprogram(name: "Hacl_Impl_Ed25519_PointEqual_point_equal", scope: !1, file: !1, line: 1596, type: !4531, scopeLine: 1597, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !4533)
!4531 = !DISubroutineType(types: !4532)
!4532 = !{!50, !112, !112}
!4533 = !{!4534, !4535, !4536, !4537}
!4534 = !DILocalVariable(name: "p", arg: 1, scope: !4530, file: !1, line: 1596, type: !112)
!4535 = !DILocalVariable(name: "q1", arg: 2, scope: !4530, file: !1, line: 1596, type: !112)
!4536 = !DILocalVariable(name: "tmp", scope: !4530, file: !1, line: 1598, type: !205)
!4537 = !DILocalVariable(name: "res", scope: !4530, file: !1, line: 1599, type: !50)
!4538 = !DILocation(line: 0, scope: !4530)
!4539 = !DILocation(line: 1598, column: 3, scope: !4530)
!4540 = !DILocation(line: 1598, column: 12, scope: !4530)
!4541 = !DILocation(line: 1599, column: 63, scope: !4530)
!4542 = !DILocation(line: 1599, column: 14, scope: !4530)
!4543 = !DILocation(line: 1601, column: 1, scope: !4530)
!4544 = !DILocation(line: 1600, column: 3, scope: !4530)
!4545 = distinct !DISubprogram(name: "Hacl_Impl_Ed25519_PointEqual_point_equal_", scope: !1, file: !1, line: 1587, type: !4546, scopeLine: 1588, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !4548)
!4546 = !DISubroutineType(types: !4547)
!4547 = !{!50, !112, !112, !112}
!4548 = !{!4549, !4550, !4551, !4552}
!4549 = !DILocalVariable(name: "p", arg: 1, scope: !4545, file: !1, line: 1587, type: !112)
!4550 = !DILocalVariable(name: "q1", arg: 2, scope: !4545, file: !1, line: 1587, type: !112)
!4551 = !DILocalVariable(name: "tmp", arg: 3, scope: !4545, file: !1, line: 1587, type: !112)
!4552 = !DILocalVariable(name: "b", scope: !4545, file: !1, line: 1589, type: !50)
!4553 = !DILocation(line: 0, scope: !4545)
!4554 = !DILocation(line: 1589, column: 12, scope: !4545)
!4555 = !DILocation(line: 1590, column: 7, scope: !4545)
!4556 = !DILocation(line: 1591, column: 12, scope: !4557)
!4557 = distinct !DILexicalBlock(scope: !4545, file: !1, line: 1590, column: 7)
!4558 = !DILocation(line: 1591, column: 5, scope: !4557)
!4559 = !DILocation(line: 0, scope: !4557)
!4560 = !DILocation(line: 1594, column: 1, scope: !4545)
!4561 = distinct !DISubprogram(name: "Hacl_Impl_Ed25519_PointEqual_point_equal_1", scope: !1, file: !1, line: 1554, type: !4546, scopeLine: 1555, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !4562)
!4562 = !{!4563, !4564, !4565, !4566, !4567, !4568}
!4563 = !DILocalVariable(name: "p", arg: 1, scope: !4561, file: !1, line: 1554, type: !112)
!4564 = !DILocalVariable(name: "q1", arg: 2, scope: !4561, file: !1, line: 1554, type: !112)
!4565 = !DILocalVariable(name: "tmp", arg: 3, scope: !4561, file: !1, line: 1554, type: !112)
!4566 = !DILocalVariable(name: "pxqz", scope: !4561, file: !1, line: 1556, type: !112)
!4567 = !DILocalVariable(name: "qxpz", scope: !4561, file: !1, line: 1557, type: !112)
!4568 = !DILocalVariable(name: "b", scope: !4561, file: !1, line: 1566, type: !50)
!4569 = !DILocation(line: 0, scope: !4561)
!4570 = !DILocation(line: 1557, column: 24, scope: !4561)
!4571 = !DILocation(line: 1560, column: 5, scope: !4561)
!4572 = !DILocation(line: 1558, column: 3, scope: !4561)
!4573 = !DILocation(line: 1561, column: 3, scope: !4561)
!4574 = !DILocation(line: 1564, column: 5, scope: !4561)
!4575 = !DILocation(line: 1562, column: 3, scope: !4561)
!4576 = !DILocation(line: 1565, column: 3, scope: !4561)
!4577 = !DILocation(line: 1566, column: 12, scope: !4561)
!4578 = !DILocation(line: 1567, column: 3, scope: !4561)
!4579 = distinct !DISubprogram(name: "Hacl_Impl_Ed25519_PointEqual_point_equal_2", scope: !1, file: !1, line: 1571, type: !4546, scopeLine: 1572, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !4580)
!4580 = !{!4581, !4582, !4583, !4584, !4585, !4586}
!4581 = !DILocalVariable(name: "p", arg: 1, scope: !4579, file: !1, line: 1571, type: !112)
!4582 = !DILocalVariable(name: "q1", arg: 2, scope: !4579, file: !1, line: 1571, type: !112)
!4583 = !DILocalVariable(name: "tmp", arg: 3, scope: !4579, file: !1, line: 1571, type: !112)
!4584 = !DILocalVariable(name: "pyqz", scope: !4579, file: !1, line: 1573, type: !112)
!4585 = !DILocalVariable(name: "qypz", scope: !4579, file: !1, line: 1574, type: !112)
!4586 = !DILocalVariable(name: "b", scope: !4579, file: !1, line: 1583, type: !50)
!4587 = !DILocation(line: 0, scope: !4579)
!4588 = !DILocation(line: 1573, column: 24, scope: !4579)
!4589 = !DILocation(line: 1574, column: 24, scope: !4579)
!4590 = !DILocation(line: 1576, column: 5, scope: !4579)
!4591 = !DILocation(line: 1577, column: 5, scope: !4579)
!4592 = !DILocation(line: 1575, column: 3, scope: !4579)
!4593 = !DILocation(line: 1578, column: 3, scope: !4579)
!4594 = !DILocation(line: 1580, column: 5, scope: !4579)
!4595 = !DILocation(line: 1581, column: 5, scope: !4579)
!4596 = !DILocation(line: 1579, column: 3, scope: !4579)
!4597 = !DILocation(line: 1582, column: 3, scope: !4579)
!4598 = !DILocation(line: 1583, column: 12, scope: !4579)
!4599 = !DILocation(line: 1584, column: 3, scope: !4579)
!4600 = distinct !DISubprogram(name: "Hacl_Impl_Ed25519_PointEqual_eq", scope: !1, file: !1, line: 1537, type: !4531, scopeLine: 1538, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !4601)
!4601 = !{!4602, !4603, !4604, !4605, !4606, !4607, !4608, !4609, !4610, !4611, !4612, !4613, !4614}
!4602 = !DILocalVariable(name: "a", arg: 1, scope: !4600, file: !1, line: 1537, type: !112)
!4603 = !DILocalVariable(name: "b", arg: 2, scope: !4600, file: !1, line: 1537, type: !112)
!4604 = !DILocalVariable(name: "a0", scope: !4600, file: !1, line: 1539, type: !11)
!4605 = !DILocalVariable(name: "a1", scope: !4600, file: !1, line: 1540, type: !11)
!4606 = !DILocalVariable(name: "a2", scope: !4600, file: !1, line: 1541, type: !11)
!4607 = !DILocalVariable(name: "a3", scope: !4600, file: !1, line: 1542, type: !11)
!4608 = !DILocalVariable(name: "a4", scope: !4600, file: !1, line: 1543, type: !11)
!4609 = !DILocalVariable(name: "b0", scope: !4600, file: !1, line: 1544, type: !11)
!4610 = !DILocalVariable(name: "b1", scope: !4600, file: !1, line: 1545, type: !11)
!4611 = !DILocalVariable(name: "b2", scope: !4600, file: !1, line: 1546, type: !11)
!4612 = !DILocalVariable(name: "b3", scope: !4600, file: !1, line: 1547, type: !11)
!4613 = !DILocalVariable(name: "b4", scope: !4600, file: !1, line: 1548, type: !11)
!4614 = !DILocalVariable(name: "z", scope: !4600, file: !1, line: 1549, type: !50)
!4615 = !DILocation(line: 0, scope: !4600)
!4616 = !DILocation(line: 1539, column: 17, scope: !4600)
!4617 = !DILocation(line: 1544, column: 17, scope: !4600)
!4618 = !DILocation(line: 1549, column: 15, scope: !4600)
!4619 = !DILocation(line: 1549, column: 21, scope: !4600)
!4620 = !DILocation(line: 1548, column: 17, scope: !4600)
!4621 = !DILocation(line: 1547, column: 17, scope: !4600)
!4622 = !DILocation(line: 1546, column: 17, scope: !4600)
!4623 = !DILocation(line: 1543, column: 17, scope: !4600)
!4624 = !DILocation(line: 1542, column: 17, scope: !4600)
!4625 = !DILocation(line: 1541, column: 17, scope: !4600)
!4626 = !DILocation(line: 1545, column: 17, scope: !4600)
!4627 = !DILocation(line: 1540, column: 17, scope: !4600)
!4628 = !DILocation(line: 1549, column: 27, scope: !4600)
!4629 = !DILocation(line: 1549, column: 33, scope: !4600)
!4630 = !DILocation(line: 1550, column: 3, scope: !4600)
!4631 = distinct !DISubprogram(name: "Hacl_Impl_Ed25519_SecretToPublic_secret_to_public_", scope: !1, file: !1, line: 1491, type: !255, scopeLine: 1496, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !4632)
!4632 = !{!4633, !4634, !4635, !4636, !4637}
!4633 = !DILocalVariable(name: "out", arg: 1, scope: !4631, file: !1, line: 1492, type: !29)
!4634 = !DILocalVariable(name: "secret", arg: 2, scope: !4631, file: !1, line: 1493, type: !29)
!4635 = !DILocalVariable(name: "expanded_secret", arg: 3, scope: !4631, file: !1, line: 1494, type: !29)
!4636 = !DILocalVariable(name: "a", scope: !4631, file: !1, line: 1497, type: !29)
!4637 = !DILocalVariable(name: "res", scope: !4631, file: !1, line: 1498, type: !205)
!4638 = !DILocation(line: 0, scope: !4631)
!4639 = !DILocation(line: 1498, column: 3, scope: !4631)
!4640 = !DILocation(line: 1498, column: 12, scope: !4631)
!4641 = !DILocation(line: 1499, column: 48, scope: !4631)
!4642 = !DILocation(line: 1499, column: 3, scope: !4631)
!4643 = !DILocation(line: 1500, column: 3, scope: !4631)
!4644 = !DILocation(line: 1501, column: 1, scope: !4631)
!4645 = distinct !DISubprogram(name: "Hacl_Impl_Ed25519_SecretToPublic_point_mul_g", scope: !1, file: !1, line: 1483, type: !630, scopeLine: 1484, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !4646)
!4646 = !{!4647, !4648, !4649}
!4647 = !DILocalVariable(name: "result", arg: 1, scope: !4645, file: !1, line: 1483, type: !112)
!4648 = !DILocalVariable(name: "scalar", arg: 2, scope: !4645, file: !1, line: 1483, type: !29)
!4649 = !DILocalVariable(name: "g1", scope: !4645, file: !1, line: 1485, type: !205)
!4650 = !DILocation(line: 0, scope: !4645)
!4651 = !DILocation(line: 1485, column: 3, scope: !4645)
!4652 = !DILocation(line: 1485, column: 12, scope: !4645)
!4653 = !DILocation(line: 1486, column: 30, scope: !4645)
!4654 = !DILocation(line: 1486, column: 3, scope: !4645)
!4655 = !DILocation(line: 1487, column: 3, scope: !4645)
!4656 = !DILocation(line: 1488, column: 1, scope: !4645)
