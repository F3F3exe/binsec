; ModuleID = 'hacl-c/hacl-c/haclnacl.c'
source_filename = "hacl-c/hacl-c/haclnacl.c"
target datalayout = "e-m:e-p:32:32-p270:32:32-p271:32:32-p272:64:64-f64:32:64-f80:32-n8:16:32-S128"
target triple = "i386-pc-linux-gnu"

@__const.crypto_scalarmult_base.basepoint = private unnamed_addr constant <{ i8, [31 x i8] }> <{ i8 9, [31 x i8] zeroinitializer }>, align 1

; Function Attrs: noinline nounwind uwtable
define dso_local void @curve25519_scalarmult(i8* noundef %0, i8* noundef %1, i8* noundef %2) local_unnamed_addr #0 !dbg !22 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !26, metadata !DIExpression()), !dbg !29
  call void @llvm.dbg.value(metadata i8* %1, metadata !27, metadata !DIExpression()), !dbg !29
  call void @llvm.dbg.value(metadata i8* %2, metadata !28, metadata !DIExpression()), !dbg !29
  call void @Hacl_Curve25519_crypto_scalarmult(i8* noundef %0, i8* noundef %1, i8* noundef %2) #8, !dbg !30
  ret void, !dbg !31
}

; Function Attrs: mustprogress nofree nosync nounwind readnone speculatable willreturn
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

declare !dbg !32 void @Hacl_Curve25519_crypto_scalarmult(i8* noundef, i8* noundef, i8* noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind uwtable
define dso_local void @chacha20(i8* noundef %0, i8* noundef %1, i32 noundef %2, i8* noundef %3, i8* noundef %4, i32 noundef %5) local_unnamed_addr #0 !dbg !35 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !42, metadata !DIExpression()), !dbg !48
  call void @llvm.dbg.value(metadata i8* %1, metadata !43, metadata !DIExpression()), !dbg !48
  call void @llvm.dbg.value(metadata i32 %2, metadata !44, metadata !DIExpression()), !dbg !48
  call void @llvm.dbg.value(metadata i8* %3, metadata !45, metadata !DIExpression()), !dbg !48
  call void @llvm.dbg.value(metadata i8* %4, metadata !46, metadata !DIExpression()), !dbg !48
  call void @llvm.dbg.value(metadata i32 %5, metadata !47, metadata !DIExpression()), !dbg !48
  call void @Hacl_Chacha20_chacha20(i8* noundef %0, i8* noundef %1, i32 noundef %2, i8* noundef %3, i8* noundef %4, i32 noundef %5) #8, !dbg !49
  ret void, !dbg !50
}

declare !dbg !51 void @Hacl_Chacha20_chacha20(i8* noundef, i8* noundef, i32 noundef, i8* noundef, i8* noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind uwtable
define dso_local void @salsa20(i8* noundef %0, i8* noundef %1, i32 noundef %2, i8* noundef %3, i8* noundef %4, i64 noundef %5) local_unnamed_addr #0 !dbg !53 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !60, metadata !DIExpression()), !dbg !66
  call void @llvm.dbg.value(metadata i8* %1, metadata !61, metadata !DIExpression()), !dbg !66
  call void @llvm.dbg.value(metadata i32 %2, metadata !62, metadata !DIExpression()), !dbg !66
  call void @llvm.dbg.value(metadata i8* %3, metadata !63, metadata !DIExpression()), !dbg !66
  call void @llvm.dbg.value(metadata i8* %4, metadata !64, metadata !DIExpression()), !dbg !66
  call void @llvm.dbg.value(metadata i64 %5, metadata !65, metadata !DIExpression()), !dbg !66
  call void @Hacl_Salsa20_salsa20(i8* noundef %0, i8* noundef %1, i32 noundef %2, i8* noundef %3, i8* noundef %4, i64 noundef %5) #8, !dbg !67
  ret void, !dbg !68
}

declare !dbg !69 void @Hacl_Salsa20_salsa20(i8* noundef, i8* noundef, i32 noundef, i8* noundef, i8* noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind uwtable
define dso_local void @poly1305_onetimeauth(i8* noundef %0, i8* noundef %1, i64 noundef %2, i8* noundef %3) local_unnamed_addr #0 !dbg !71 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !75, metadata !DIExpression()), !dbg !79
  call void @llvm.dbg.value(metadata i8* %1, metadata !76, metadata !DIExpression()), !dbg !79
  call void @llvm.dbg.value(metadata i64 %2, metadata !77, metadata !DIExpression()), !dbg !79
  call void @llvm.dbg.value(metadata i8* %3, metadata !78, metadata !DIExpression()), !dbg !79
  call void @Hacl_Poly1305_64_crypto_onetimeauth(i8* noundef %0, i8* noundef %1, i64 noundef %2, i8* noundef %3) #8, !dbg !80
  ret void, !dbg !81
}

declare !dbg !82 void @Hacl_Poly1305_64_crypto_onetimeauth(i8* noundef, i8* noundef, i64 noundef, i8* noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @aead_chacha20_poly1305_encrypt(i8* noundef %0, i8* noundef %1, i8* noundef %2, i32 noundef %3, i8* noundef %4, i32 noundef %5, i8* noundef %6, i8* noundef %7) local_unnamed_addr #0 !dbg !84 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !88, metadata !DIExpression()), !dbg !96
  call void @llvm.dbg.value(metadata i8* %1, metadata !89, metadata !DIExpression()), !dbg !96
  call void @llvm.dbg.value(metadata i8* %2, metadata !90, metadata !DIExpression()), !dbg !96
  call void @llvm.dbg.value(metadata i32 %3, metadata !91, metadata !DIExpression()), !dbg !96
  call void @llvm.dbg.value(metadata i8* %4, metadata !92, metadata !DIExpression()), !dbg !96
  call void @llvm.dbg.value(metadata i32 %5, metadata !93, metadata !DIExpression()), !dbg !96
  call void @llvm.dbg.value(metadata i8* %6, metadata !94, metadata !DIExpression()), !dbg !96
  call void @llvm.dbg.value(metadata i8* %7, metadata !95, metadata !DIExpression()), !dbg !96
  %9 = call i32 @Hacl_Chacha20Poly1305_aead_encrypt(i8* noundef %0, i8* noundef %1, i8* noundef %2, i32 noundef %3, i8* noundef %4, i32 noundef %5, i8* noundef %6, i8* noundef %7) #8, !dbg !97
  ret i32 %9, !dbg !98
}

declare !dbg !99 i32 @Hacl_Chacha20Poly1305_aead_encrypt(i8* noundef, i8* noundef, i8* noundef, i32 noundef, i8* noundef, i32 noundef, i8* noundef, i8* noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @aead_chacha20_poly1305_decrypt(i8* noundef %0, i8* noundef %1, i32 noundef %2, i8* noundef %3, i8* noundef %4, i32 noundef %5, i8* noundef %6, i8* noundef %7) local_unnamed_addr #0 !dbg !101 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !105, metadata !DIExpression()), !dbg !113
  call void @llvm.dbg.value(metadata i8* %1, metadata !106, metadata !DIExpression()), !dbg !113
  call void @llvm.dbg.value(metadata i32 %2, metadata !107, metadata !DIExpression()), !dbg !113
  call void @llvm.dbg.value(metadata i8* %3, metadata !108, metadata !DIExpression()), !dbg !113
  call void @llvm.dbg.value(metadata i8* %4, metadata !109, metadata !DIExpression()), !dbg !113
  call void @llvm.dbg.value(metadata i32 %5, metadata !110, metadata !DIExpression()), !dbg !113
  call void @llvm.dbg.value(metadata i8* %6, metadata !111, metadata !DIExpression()), !dbg !113
  call void @llvm.dbg.value(metadata i8* %7, metadata !112, metadata !DIExpression()), !dbg !113
  %9 = call i32 @Hacl_Chacha20Poly1305_aead_decrypt(i8* noundef %0, i8* noundef %1, i32 noundef %2, i8* noundef %3, i8* noundef %4, i32 noundef %5, i8* noundef %6, i8* noundef %7) #8, !dbg !114
  ret i32 %9, !dbg !115
}

declare !dbg !116 i32 @Hacl_Chacha20Poly1305_aead_decrypt(i8* noundef, i8* noundef, i32 noundef, i8* noundef, i8* noundef, i32 noundef, i8* noundef, i8* noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind uwtable
define dso_local void @ed25519_secret_to_public(i8* noundef %0, i8* noundef %1) local_unnamed_addr #0 !dbg !117 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !121, metadata !DIExpression()), !dbg !123
  call void @llvm.dbg.value(metadata i8* %1, metadata !122, metadata !DIExpression()), !dbg !123
  call void @Hacl_Ed25519_secret_to_public(i8* noundef %0, i8* noundef %1) #8, !dbg !124
  ret void, !dbg !125
}

declare !dbg !126 void @Hacl_Ed25519_secret_to_public(i8* noundef, i8* noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind uwtable
define dso_local void @ed25519_sign(i8* noundef %0, i8* noundef %1, i8* noundef %2, i32 noundef %3) local_unnamed_addr #0 !dbg !128 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !132, metadata !DIExpression()), !dbg !136
  call void @llvm.dbg.value(metadata i8* %1, metadata !133, metadata !DIExpression()), !dbg !136
  call void @llvm.dbg.value(metadata i8* %2, metadata !134, metadata !DIExpression()), !dbg !136
  call void @llvm.dbg.value(metadata i32 %3, metadata !135, metadata !DIExpression()), !dbg !136
  call void @Hacl_Ed25519_sign(i8* noundef %0, i8* noundef %1, i8* noundef %2, i32 noundef %3) #8, !dbg !137
  ret void, !dbg !138
}

declare !dbg !139 void @Hacl_Ed25519_sign(i8* noundef, i8* noundef, i8* noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind uwtable
define dso_local zeroext i1 @ed25519_verify(i8* noundef %0, i8* noundef %1, i32 noundef %2, i8* noundef %3) local_unnamed_addr #0 !dbg !140 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !145, metadata !DIExpression()), !dbg !149
  call void @llvm.dbg.value(metadata i8* %1, metadata !146, metadata !DIExpression()), !dbg !149
  call void @llvm.dbg.value(metadata i32 %2, metadata !147, metadata !DIExpression()), !dbg !149
  call void @llvm.dbg.value(metadata i8* %3, metadata !148, metadata !DIExpression()), !dbg !149
  %5 = call zeroext i1 @Hacl_Ed25519_verify(i8* noundef %0, i8* noundef %1, i32 noundef %2, i8* noundef %3) #8, !dbg !150
  ret i1 %5, !dbg !151
}

declare !dbg !152 zeroext i1 @Hacl_Ed25519_verify(i8* noundef, i8* noundef, i32 noundef, i8* noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind uwtable
define dso_local void @sha2_512_hash(i8* noundef %0, i8* noundef %1, i32 noundef %2) local_unnamed_addr #0 !dbg !153 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !157, metadata !DIExpression()), !dbg !160
  call void @llvm.dbg.value(metadata i8* %1, metadata !158, metadata !DIExpression()), !dbg !160
  call void @llvm.dbg.value(metadata i32 %2, metadata !159, metadata !DIExpression()), !dbg !160
  call void @Hacl_SHA2_512_hash(i8* noundef %0, i8* noundef %1, i32 noundef %2) #8, !dbg !161
  ret void, !dbg !162
}

declare !dbg !163 void @Hacl_SHA2_512_hash(i8* noundef, i8* noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @crypto_auth(i8* noundef %0, i8* noundef %1, i64 noundef %2, i8* noundef %3) local_unnamed_addr #0 !dbg !165 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !171, metadata !DIExpression()), !dbg !175
  call void @llvm.dbg.value(metadata i8* %1, metadata !172, metadata !DIExpression()), !dbg !175
  call void @llvm.dbg.value(metadata i64 %2, metadata !173, metadata !DIExpression()), !dbg !175
  call void @llvm.dbg.value(metadata i8* %3, metadata !174, metadata !DIExpression()), !dbg !175
  %5 = trunc i64 %2 to i32, !dbg !176
  call void @Hacl_HMAC_SHA2_256_hmac_core(i8* noundef %0, i8* noundef %3, i8* noundef %1, i32 noundef %5) #8, !dbg !177
  ret i32 0, !dbg !178
}

declare !dbg !179 void @Hacl_HMAC_SHA2_256_hmac_core(i8* noundef, i8* noundef, i8* noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @crypto_auth_verify(i8* nocapture noundef readonly %0, i8* noundef %1, i64 noundef %2, i8* noundef %3) local_unnamed_addr #0 !dbg !181 {
  %5 = alloca [32 x i8], align 1
  call void @llvm.dbg.value(metadata i8* %0, metadata !185, metadata !DIExpression()), !dbg !196
  call void @llvm.dbg.value(metadata i8* %1, metadata !186, metadata !DIExpression()), !dbg !196
  call void @llvm.dbg.value(metadata i64 %2, metadata !187, metadata !DIExpression()), !dbg !196
  call void @llvm.dbg.value(metadata i8* %3, metadata !188, metadata !DIExpression()), !dbg !196
  %6 = getelementptr inbounds [32 x i8], [32 x i8]* %5, i32 0, i32 0, !dbg !197
  call void @llvm.lifetime.start.p0i8(i64 32, i8* nonnull %6) #8, !dbg !197
  call void @llvm.dbg.declare(metadata [32 x i8]* %5, metadata !189, metadata !DIExpression()), !dbg !198
  call void @llvm.dbg.value(metadata i8 -1, metadata !193, metadata !DIExpression()), !dbg !196
  %7 = trunc i64 %2 to i32, !dbg !199
  call void @Hacl_HMAC_SHA2_256_hmac_core(i8* noundef nonnull %6, i8* noundef %3, i8* noundef %1, i32 noundef %7) #8, !dbg !200
  call void @llvm.dbg.value(metadata i32 0, metadata !194, metadata !DIExpression()), !dbg !201
  call void @llvm.dbg.value(metadata i8 undef, metadata !193, metadata !DIExpression()), !dbg !196
  br label %11, !dbg !202

8:                                                ; preds = %11
  %9 = lshr i32 %20, 7, !dbg !203
  call void @llvm.dbg.value(metadata i32 %9, metadata !193, metadata !DIExpression()), !dbg !196
  %10 = add nsw i32 %9, -1, !dbg !204
  call void @llvm.lifetime.end.p0i8(i64 32, i8* nonnull %6) #8, !dbg !205
  ret i32 %10, !dbg !206

11:                                               ; preds = %4, %11
  %12 = phi i32 [ 0, %4 ], [ %21, %11 ]
  %13 = phi i32 [ 255, %4 ], [ %20, %11 ]
  call void @llvm.dbg.value(metadata i32 %12, metadata !194, metadata !DIExpression()), !dbg !201
  %14 = getelementptr inbounds i8, i8* %0, i32 %12, !dbg !207
  %15 = load i8, i8* %14, align 1, !dbg !207, !tbaa !210
  %16 = getelementptr inbounds [32 x i8], [32 x i8]* %5, i32 0, i32 %12, !dbg !213
  %17 = load i8, i8* %16, align 1, !dbg !213, !tbaa !210
  %18 = call fastcc zeroext i8 @FStar_UInt8_eq_mask(i8 noundef zeroext %15, i8 noundef zeroext %17), !dbg !214
  %19 = zext i8 %18 to i32, !dbg !214
  %20 = and i32 %13, %19, !dbg !215
  call void @llvm.dbg.value(metadata i32 %20, metadata !193, metadata !DIExpression(DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !196
  %21 = add nuw nsw i32 %12, 1, !dbg !216
  call void @llvm.dbg.value(metadata i32 %21, metadata !194, metadata !DIExpression()), !dbg !201
  call void @llvm.dbg.value(metadata i8 undef, metadata !193, metadata !DIExpression()), !dbg !196
  %22 = icmp eq i32 %21, 32, !dbg !217
  br i1 %22, label %8, label %11, !dbg !202, !llvm.loop !218
}

; Function Attrs: argmemonly mustprogress nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0i8(i64 immarg, i8* nocapture) #3

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readnone uwtable willreturn
define internal fastcc zeroext i8 @FStar_UInt8_eq_mask(i8 noundef zeroext %0, i8 noundef zeroext %1) unnamed_addr #4 !dbg !222 {
  call void @llvm.dbg.value(metadata i8 %0, metadata !227, metadata !DIExpression()), !dbg !229
  call void @llvm.dbg.value(metadata i8 %1, metadata !228, metadata !DIExpression()), !dbg !229
  %3 = xor i8 %0, %1, !dbg !230
  %4 = xor i8 %3, -1, !dbg !230
  call void @llvm.dbg.value(metadata i8 %4, metadata !227, metadata !DIExpression()), !dbg !229
  %5 = shl i8 %4, 4, !dbg !231
  %6 = and i8 %5, %4, !dbg !231
  call void @llvm.dbg.value(metadata i8 %6, metadata !227, metadata !DIExpression()), !dbg !229
  %7 = shl i8 %6, 2, !dbg !232
  %8 = and i8 %7, %6, !dbg !232
  call void @llvm.dbg.value(metadata i8 %8, metadata !227, metadata !DIExpression()), !dbg !229
  %9 = shl i8 %8, 1, !dbg !233
  %10 = and i8 %9, %8, !dbg !233
  call void @llvm.dbg.value(metadata i8 %10, metadata !227, metadata !DIExpression()), !dbg !229
  %11 = ashr exact i8 %10, 7, !dbg !234
  ret i8 %11, !dbg !235
}

; Function Attrs: argmemonly mustprogress nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0i8(i64 immarg, i8* nocapture) #3

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @crypto_box_keypair(i8* noundef %0, i8* noundef %1) local_unnamed_addr #0 !dbg !236 {
  %3 = alloca [32 x i8], align 1
  call void @llvm.dbg.value(metadata i8* %0, metadata !240, metadata !DIExpression()), !dbg !243
  call void @llvm.dbg.value(metadata i8* %1, metadata !241, metadata !DIExpression()), !dbg !243
  call void @randombytes(i8* noundef %1, i64 noundef 32) #8, !dbg !244
  %4 = getelementptr inbounds [32 x i8], [32 x i8]* %3, i32 0, i32 0, !dbg !245
  call void @llvm.lifetime.start.p0i8(i64 32, i8* nonnull %4) #8, !dbg !245
  call void @llvm.dbg.declare(metadata [32 x i8]* %3, metadata !242, metadata !DIExpression()), !dbg !246
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* noundef nonnull align 1 dereferenceable(32) %4, i8* noundef nonnull align 1 dereferenceable(32) getelementptr inbounds (<{ i8, [31 x i8] }>, <{ i8, [31 x i8] }>* @__const.crypto_scalarmult_base.basepoint, i32 0, i32 0), i32 32, i1 false), !dbg !246
  call void @curve25519_scalarmult(i8* noundef %0, i8* noundef %1, i8* noundef nonnull %4), !dbg !247
  call void @llvm.lifetime.end.p0i8(i64 32, i8* nonnull %4) #8, !dbg !248
  ret i32 0, !dbg !249
}

declare !dbg !250 void @randombytes(i8* noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: argmemonly mustprogress nofree nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i32(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i32, i1 immarg) #5

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @crypto_box_easy(i8* noundef %0, i8* noundef %1, i64 noundef %2, i8* noundef %3, i8* noundef %4, i8* noundef %5) local_unnamed_addr #0 !dbg !253 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !257, metadata !DIExpression()), !dbg !263
  call void @llvm.dbg.value(metadata i8* %1, metadata !258, metadata !DIExpression()), !dbg !263
  call void @llvm.dbg.value(metadata i64 %2, metadata !259, metadata !DIExpression()), !dbg !263
  call void @llvm.dbg.value(metadata i8* %3, metadata !260, metadata !DIExpression()), !dbg !263
  call void @llvm.dbg.value(metadata i8* %4, metadata !261, metadata !DIExpression()), !dbg !263
  call void @llvm.dbg.value(metadata i8* %5, metadata !262, metadata !DIExpression()), !dbg !263
  %7 = call i32 @NaCl_crypto_box_easy(i8* noundef %0, i8* noundef %1, i64 noundef %2, i8* noundef %3, i8* noundef %4, i8* noundef %5) #8, !dbg !264
  ret i32 %7, !dbg !265
}

declare !dbg !266 i32 @NaCl_crypto_box_easy(i8* noundef, i8* noundef, i64 noundef, i8* noundef, i8* noundef, i8* noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @crypto_box_open_easy(i8* noundef %0, i8* noundef %1, i64 noundef %2, i8* noundef %3, i8* noundef %4, i8* noundef %5) local_unnamed_addr #0 !dbg !270 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !272, metadata !DIExpression()), !dbg !278
  call void @llvm.dbg.value(metadata i8* %1, metadata !273, metadata !DIExpression()), !dbg !278
  call void @llvm.dbg.value(metadata i64 %2, metadata !274, metadata !DIExpression()), !dbg !278
  call void @llvm.dbg.value(metadata i8* %3, metadata !275, metadata !DIExpression()), !dbg !278
  call void @llvm.dbg.value(metadata i8* %4, metadata !276, metadata !DIExpression()), !dbg !278
  call void @llvm.dbg.value(metadata i8* %5, metadata !277, metadata !DIExpression()), !dbg !278
  %7 = call i32 @NaCl_crypto_box_open_easy(i8* noundef %0, i8* noundef %1, i64 noundef %2, i8* noundef %3, i8* noundef %4, i8* noundef %5) #8, !dbg !279
  ret i32 %7, !dbg !280
}

declare !dbg !281 i32 @NaCl_crypto_box_open_easy(i8* noundef, i8* noundef, i64 noundef, i8* noundef, i8* noundef, i8* noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @crypto_box_beforenm(i8* noundef %0, i8* noundef %1, i8* noundef %2) local_unnamed_addr #0 !dbg !282 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !286, metadata !DIExpression()), !dbg !289
  call void @llvm.dbg.value(metadata i8* %1, metadata !287, metadata !DIExpression()), !dbg !289
  call void @llvm.dbg.value(metadata i8* %2, metadata !288, metadata !DIExpression()), !dbg !289
  %4 = call i32 @NaCl_crypto_box_beforenm(i8* noundef %0, i8* noundef %1, i8* noundef %2) #8, !dbg !290
  ret i32 %4, !dbg !291
}

declare !dbg !292 i32 @NaCl_crypto_box_beforenm(i8* noundef, i8* noundef, i8* noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @crypto_box_easy_afternm(i8* noundef %0, i8* noundef %1, i64 noundef %2, i8* noundef %3, i8* noundef %4) local_unnamed_addr #0 !dbg !295 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !299, metadata !DIExpression()), !dbg !304
  call void @llvm.dbg.value(metadata i8* %1, metadata !300, metadata !DIExpression()), !dbg !304
  call void @llvm.dbg.value(metadata i64 %2, metadata !301, metadata !DIExpression()), !dbg !304
  call void @llvm.dbg.value(metadata i8* %3, metadata !302, metadata !DIExpression()), !dbg !304
  call void @llvm.dbg.value(metadata i8* %4, metadata !303, metadata !DIExpression()), !dbg !304
  %6 = call i32 @NaCl_crypto_box_easy_afternm(i8* noundef %0, i8* noundef %1, i64 noundef %2, i8* noundef %3, i8* noundef %4) #8, !dbg !305
  ret i32 %6, !dbg !306
}

declare !dbg !307 i32 @NaCl_crypto_box_easy_afternm(i8* noundef, i8* noundef, i64 noundef, i8* noundef, i8* noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @crypto_box_open_easy_afternm(i8* noundef %0, i8* noundef %1, i64 noundef %2, i8* noundef %3, i8* noundef %4) local_unnamed_addr #0 !dbg !310 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !312, metadata !DIExpression()), !dbg !317
  call void @llvm.dbg.value(metadata i8* %1, metadata !313, metadata !DIExpression()), !dbg !317
  call void @llvm.dbg.value(metadata i64 %2, metadata !314, metadata !DIExpression()), !dbg !317
  call void @llvm.dbg.value(metadata i8* %3, metadata !315, metadata !DIExpression()), !dbg !317
  call void @llvm.dbg.value(metadata i8* %4, metadata !316, metadata !DIExpression()), !dbg !317
  %6 = call i32 @NaCl_crypto_box_open_easy_afternm(i8* noundef %0, i8* noundef %1, i64 noundef %2, i8* noundef %3, i8* noundef %4) #8, !dbg !318
  ret i32 %6, !dbg !319
}

declare !dbg !320 i32 @NaCl_crypto_box_open_easy_afternm(i8* noundef, i8* noundef, i64 noundef, i8* noundef, i8* noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @crypto_box_detached_afternm(i8* noundef %0, i8* noundef %1, i8* noundef %2, i64 noundef %3, i8* noundef %4, i8* noundef %5) local_unnamed_addr #0 !dbg !321 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !325, metadata !DIExpression()), !dbg !331
  call void @llvm.dbg.value(metadata i8* %1, metadata !326, metadata !DIExpression()), !dbg !331
  call void @llvm.dbg.value(metadata i8* %2, metadata !327, metadata !DIExpression()), !dbg !331
  call void @llvm.dbg.value(metadata i64 %3, metadata !328, metadata !DIExpression()), !dbg !331
  call void @llvm.dbg.value(metadata i8* %4, metadata !329, metadata !DIExpression()), !dbg !331
  call void @llvm.dbg.value(metadata i8* %5, metadata !330, metadata !DIExpression()), !dbg !331
  %7 = call i32 @NaCl_crypto_box_detached_afternm(i8* noundef %0, i8* noundef %1, i8* noundef %2, i64 noundef %3, i8* noundef %4, i8* noundef %5) #8, !dbg !332
  ret i32 %7, !dbg !333
}

declare !dbg !334 i32 @NaCl_crypto_box_detached_afternm(i8* noundef, i8* noundef, i8* noundef, i64 noundef, i8* noundef, i8* noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @crypto_box_detached(i8* noundef %0, i8* noundef %1, i8* noundef %2, i64 noundef %3, i8* noundef %4, i8* noundef %5, i8* noundef %6) local_unnamed_addr #0 !dbg !335 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !339, metadata !DIExpression()), !dbg !346
  call void @llvm.dbg.value(metadata i8* %1, metadata !340, metadata !DIExpression()), !dbg !346
  call void @llvm.dbg.value(metadata i8* %2, metadata !341, metadata !DIExpression()), !dbg !346
  call void @llvm.dbg.value(metadata i64 %3, metadata !342, metadata !DIExpression()), !dbg !346
  call void @llvm.dbg.value(metadata i8* %4, metadata !343, metadata !DIExpression()), !dbg !346
  call void @llvm.dbg.value(metadata i8* %5, metadata !344, metadata !DIExpression()), !dbg !346
  call void @llvm.dbg.value(metadata i8* %6, metadata !345, metadata !DIExpression()), !dbg !346
  %8 = call i32 @NaCl_crypto_box_detached(i8* noundef %0, i8* noundef %1, i8* noundef %2, i64 noundef %3, i8* noundef %4, i8* noundef %5, i8* noundef %6) #8, !dbg !347
  ret i32 %8, !dbg !348
}

declare !dbg !349 i32 @NaCl_crypto_box_detached(i8* noundef, i8* noundef, i8* noundef, i64 noundef, i8* noundef, i8* noundef, i8* noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @crypto_box_open_detached(i8* noundef %0, i8* noundef %1, i8* noundef %2, i64 noundef %3, i8* noundef %4, i8* noundef %5, i8* noundef %6) local_unnamed_addr #0 !dbg !350 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !352, metadata !DIExpression()), !dbg !359
  call void @llvm.dbg.value(metadata i8* %1, metadata !353, metadata !DIExpression()), !dbg !359
  call void @llvm.dbg.value(metadata i8* %2, metadata !354, metadata !DIExpression()), !dbg !359
  call void @llvm.dbg.value(metadata i64 %3, metadata !355, metadata !DIExpression()), !dbg !359
  call void @llvm.dbg.value(metadata i8* %4, metadata !356, metadata !DIExpression()), !dbg !359
  call void @llvm.dbg.value(metadata i8* %5, metadata !357, metadata !DIExpression()), !dbg !359
  call void @llvm.dbg.value(metadata i8* %6, metadata !358, metadata !DIExpression()), !dbg !359
  %8 = call i32 @NaCl_crypto_box_open_detached(i8* noundef %0, i8* noundef %1, i8* noundef %2, i64 noundef %3, i8* noundef %4, i8* noundef %5, i8* noundef %6) #8, !dbg !360
  ret i32 %8, !dbg !361
}

declare !dbg !362 i32 @NaCl_crypto_box_open_detached(i8* noundef, i8* noundef, i8* noundef, i64 noundef, i8* noundef, i8* noundef, i8* noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @crypto_box_open_detached_afternm(i8* noundef %0, i8* noundef %1, i8* noundef %2, i64 noundef %3, i8* noundef %4, i8* noundef %5) local_unnamed_addr #0 !dbg !363 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !365, metadata !DIExpression()), !dbg !371
  call void @llvm.dbg.value(metadata i8* %1, metadata !366, metadata !DIExpression()), !dbg !371
  call void @llvm.dbg.value(metadata i8* %2, metadata !367, metadata !DIExpression()), !dbg !371
  call void @llvm.dbg.value(metadata i64 %3, metadata !368, metadata !DIExpression()), !dbg !371
  call void @llvm.dbg.value(metadata i8* %4, metadata !369, metadata !DIExpression()), !dbg !371
  call void @llvm.dbg.value(metadata i8* %5, metadata !370, metadata !DIExpression()), !dbg !371
  %7 = call i32 @NaCl_crypto_box_detached_afternm(i8* noundef %0, i8* noundef %1, i8* noundef %2, i64 noundef %3, i8* noundef %4, i8* noundef %5) #8, !dbg !372
  ret i32 %7, !dbg !373
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @crypto_box(i8* noundef %0, i8* noundef %1, i64 noundef %2, i8* noundef %3, i8* noundef %4, i8* noundef %5) local_unnamed_addr #0 !dbg !374 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !376, metadata !DIExpression()), !dbg !382
  call void @llvm.dbg.value(metadata i8* %1, metadata !377, metadata !DIExpression()), !dbg !382
  call void @llvm.dbg.value(metadata i64 %2, metadata !378, metadata !DIExpression()), !dbg !382
  call void @llvm.dbg.value(metadata i8* %3, metadata !379, metadata !DIExpression()), !dbg !382
  call void @llvm.dbg.value(metadata i8* %4, metadata !380, metadata !DIExpression()), !dbg !382
  call void @llvm.dbg.value(metadata i8* %5, metadata !381, metadata !DIExpression()), !dbg !382
  %7 = add i64 %2, -32, !dbg !383
  %8 = call i32 @crypto_box_easy(i8* noundef %0, i8* noundef %1, i64 noundef %7, i8* noundef %3, i8* noundef %4, i8* noundef %5), !dbg !384
  ret i32 %8, !dbg !385
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @crypto_box_open(i8* noundef %0, i8* noundef %1, i64 noundef %2, i8* noundef %3, i8* noundef %4, i8* noundef %5) local_unnamed_addr #0 !dbg !386 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !388, metadata !DIExpression()), !dbg !394
  call void @llvm.dbg.value(metadata i8* %1, metadata !389, metadata !DIExpression()), !dbg !394
  call void @llvm.dbg.value(metadata i64 %2, metadata !390, metadata !DIExpression()), !dbg !394
  call void @llvm.dbg.value(metadata i8* %3, metadata !391, metadata !DIExpression()), !dbg !394
  call void @llvm.dbg.value(metadata i8* %4, metadata !392, metadata !DIExpression()), !dbg !394
  call void @llvm.dbg.value(metadata i8* %5, metadata !393, metadata !DIExpression()), !dbg !394
  %7 = add i64 %2, -32, !dbg !395
  %8 = call i32 @crypto_box_open_easy(i8* noundef %0, i8* noundef %1, i64 noundef %7, i8* noundef %3, i8* noundef %4, i8* noundef %5), !dbg !396
  ret i32 %8, !dbg !397
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @crypto_box_afternm(i8* noundef %0, i8* noundef %1, i64 noundef %2, i8* noundef %3, i8* noundef %4) local_unnamed_addr #0 !dbg !398 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !400, metadata !DIExpression()), !dbg !405
  call void @llvm.dbg.value(metadata i8* %1, metadata !401, metadata !DIExpression()), !dbg !405
  call void @llvm.dbg.value(metadata i64 %2, metadata !402, metadata !DIExpression()), !dbg !405
  call void @llvm.dbg.value(metadata i8* %3, metadata !403, metadata !DIExpression()), !dbg !405
  call void @llvm.dbg.value(metadata i8* %4, metadata !404, metadata !DIExpression()), !dbg !405
  %6 = call i32 @NaCl_crypto_box_easy_afternm(i8* noundef %0, i8* noundef %1, i64 noundef %2, i8* noundef %3, i8* noundef %4) #8, !dbg !406
  ret i32 %6, !dbg !407
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @crypto_box_open_afternm(i8* noundef %0, i8* noundef %1, i64 noundef %2, i8* noundef %3, i8* noundef %4) local_unnamed_addr #0 !dbg !408 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !410, metadata !DIExpression()), !dbg !415
  call void @llvm.dbg.value(metadata i8* %1, metadata !411, metadata !DIExpression()), !dbg !415
  call void @llvm.dbg.value(metadata i64 %2, metadata !412, metadata !DIExpression()), !dbg !415
  call void @llvm.dbg.value(metadata i8* %3, metadata !413, metadata !DIExpression()), !dbg !415
  call void @llvm.dbg.value(metadata i8* %4, metadata !414, metadata !DIExpression()), !dbg !415
  %6 = call i32 @NaCl_crypto_box_open_easy_afternm(i8* noundef %0, i8* noundef %1, i64 noundef %2, i8* noundef %3, i8* noundef %4) #8, !dbg !416
  ret i32 %6, !dbg !417
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @crypto_hash(i8* noundef %0, i8* noundef %1, i64 noundef %2) local_unnamed_addr #0 !dbg !418 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !422, metadata !DIExpression()), !dbg !425
  call void @llvm.dbg.value(metadata i8* %1, metadata !423, metadata !DIExpression()), !dbg !425
  call void @llvm.dbg.value(metadata i64 %2, metadata !424, metadata !DIExpression()), !dbg !425
  %4 = trunc i64 %2 to i32, !dbg !426
  call void @Hacl_SHA2_256_hash(i8* noundef %0, i8* noundef %1, i32 noundef %4) #8, !dbg !427
  ret i32 0, !dbg !428
}

declare !dbg !429 void @Hacl_SHA2_256_hash(i8* noundef, i8* noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @crypto_onetimeauth(i8* noundef %0, i8* noundef %1, i64 noundef %2, i8* noundef %3) local_unnamed_addr #0 !dbg !431 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !433, metadata !DIExpression()), !dbg !437
  call void @llvm.dbg.value(metadata i8* %1, metadata !434, metadata !DIExpression()), !dbg !437
  call void @llvm.dbg.value(metadata i64 %2, metadata !435, metadata !DIExpression()), !dbg !437
  call void @llvm.dbg.value(metadata i8* %3, metadata !436, metadata !DIExpression()), !dbg !437
  call void @poly1305_onetimeauth(i8* noundef %0, i8* noundef %1, i64 noundef %2, i8* noundef %3), !dbg !438
  ret i32 0, !dbg !439
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @crypto_onetimeauth_verify(i8* nocapture noundef readonly %0, i8* noundef %1, i64 noundef %2, i8* noundef %3) local_unnamed_addr #0 !dbg !440 {
  %5 = alloca [16 x i8], align 1
  call void @llvm.dbg.value(metadata i8* %0, metadata !442, metadata !DIExpression()), !dbg !453
  call void @llvm.dbg.value(metadata i8* %1, metadata !443, metadata !DIExpression()), !dbg !453
  call void @llvm.dbg.value(metadata i64 %2, metadata !444, metadata !DIExpression()), !dbg !453
  call void @llvm.dbg.value(metadata i8* %3, metadata !445, metadata !DIExpression()), !dbg !453
  %6 = getelementptr inbounds [16 x i8], [16 x i8]* %5, i32 0, i32 0, !dbg !454
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %6) #8, !dbg !454
  call void @llvm.dbg.declare(metadata [16 x i8]* %5, metadata !446, metadata !DIExpression()), !dbg !455
  call void @llvm.dbg.value(metadata i8 -1, metadata !450, metadata !DIExpression()), !dbg !453
  call void @poly1305_onetimeauth(i8* noundef nonnull %6, i8* noundef %1, i64 noundef %2, i8* noundef %3), !dbg !456
  call void @llvm.dbg.value(metadata i32 0, metadata !451, metadata !DIExpression()), !dbg !457
  call void @llvm.dbg.value(metadata i8 undef, metadata !450, metadata !DIExpression()), !dbg !453
  br label %10, !dbg !458

7:                                                ; preds = %10
  %8 = lshr i32 %19, 7, !dbg !459
  call void @llvm.dbg.value(metadata i32 %8, metadata !450, metadata !DIExpression()), !dbg !453
  %9 = add nsw i32 %8, -1, !dbg !460
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %6) #8, !dbg !461
  ret i32 %9, !dbg !462

10:                                               ; preds = %4, %10
  %11 = phi i32 [ 0, %4 ], [ %20, %10 ]
  %12 = phi i32 [ 255, %4 ], [ %19, %10 ]
  call void @llvm.dbg.value(metadata i32 %11, metadata !451, metadata !DIExpression()), !dbg !457
  %13 = getelementptr inbounds [16 x i8], [16 x i8]* %5, i32 0, i32 %11, !dbg !463
  %14 = load i8, i8* %13, align 1, !dbg !463, !tbaa !210
  %15 = getelementptr inbounds i8, i8* %0, i32 %11, !dbg !466
  %16 = load i8, i8* %15, align 1, !dbg !466, !tbaa !210
  %17 = call fastcc zeroext i8 @FStar_UInt8_eq_mask(i8 noundef zeroext %14, i8 noundef zeroext %16), !dbg !467
  %18 = zext i8 %17 to i32, !dbg !467
  %19 = and i32 %12, %18, !dbg !468
  call void @llvm.dbg.value(metadata i32 %19, metadata !450, metadata !DIExpression(DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !453
  %20 = add nuw nsw i32 %11, 1, !dbg !469
  call void @llvm.dbg.value(metadata i32 %20, metadata !451, metadata !DIExpression()), !dbg !457
  call void @llvm.dbg.value(metadata i8 undef, metadata !450, metadata !DIExpression()), !dbg !453
  %21 = icmp eq i32 %20, 16, !dbg !470
  br i1 %21, label %7, label %10, !dbg !458, !llvm.loop !471
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @crypto_scalarmult_base(i8* noundef %0, i8* noundef %1) local_unnamed_addr #0 !dbg !473 {
  %3 = alloca [32 x i8], align 1
  call void @llvm.dbg.value(metadata i8* %0, metadata !477, metadata !DIExpression()), !dbg !480
  call void @llvm.dbg.value(metadata i8* %1, metadata !478, metadata !DIExpression()), !dbg !480
  %4 = getelementptr inbounds [32 x i8], [32 x i8]* %3, i32 0, i32 0, !dbg !481
  call void @llvm.lifetime.start.p0i8(i64 32, i8* nonnull %4) #8, !dbg !481
  call void @llvm.dbg.declare(metadata [32 x i8]* %3, metadata !479, metadata !DIExpression()), !dbg !482
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* noundef nonnull align 1 dereferenceable(32) %4, i8* noundef nonnull align 1 dereferenceable(32) getelementptr inbounds (<{ i8, [31 x i8] }>, <{ i8, [31 x i8] }>* @__const.crypto_scalarmult_base.basepoint, i32 0, i32 0), i32 32, i1 false), !dbg !482
  call void @Hacl_Curve25519_crypto_scalarmult(i8* noundef %0, i8* noundef %1, i8* noundef nonnull %4) #8, !dbg !483
  call void @llvm.lifetime.end.p0i8(i64 32, i8* nonnull %4) #8, !dbg !484
  ret i32 0, !dbg !485
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @crypto_scalarmult(i8* noundef %0, i8* noundef %1, i8* noundef %2) local_unnamed_addr #0 !dbg !486 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !488, metadata !DIExpression()), !dbg !491
  call void @llvm.dbg.value(metadata i8* %1, metadata !489, metadata !DIExpression()), !dbg !491
  call void @llvm.dbg.value(metadata i8* %2, metadata !490, metadata !DIExpression()), !dbg !491
  call void @Hacl_Curve25519_crypto_scalarmult(i8* noundef %0, i8* noundef %1, i8* noundef %2) #8, !dbg !492
  ret i32 0, !dbg !493
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @crypto_secretbox_detached(i8* noundef %0, i8* noundef %1, i8* noundef %2, i64 noundef %3, i8* noundef %4, i8* noundef %5) local_unnamed_addr #0 !dbg !494 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !496, metadata !DIExpression()), !dbg !502
  call void @llvm.dbg.value(metadata i8* %1, metadata !497, metadata !DIExpression()), !dbg !502
  call void @llvm.dbg.value(metadata i8* %2, metadata !498, metadata !DIExpression()), !dbg !502
  call void @llvm.dbg.value(metadata i64 %3, metadata !499, metadata !DIExpression()), !dbg !502
  call void @llvm.dbg.value(metadata i8* %4, metadata !500, metadata !DIExpression()), !dbg !502
  call void @llvm.dbg.value(metadata i8* %5, metadata !501, metadata !DIExpression()), !dbg !502
  %7 = call i32 @NaCl_crypto_secretbox_detached(i8* noundef %0, i8* noundef %1, i8* noundef %2, i64 noundef %3, i8* noundef %4, i8* noundef %5) #8, !dbg !503
  ret i32 %7, !dbg !504
}

declare !dbg !505 i32 @NaCl_crypto_secretbox_detached(i8* noundef, i8* noundef, i8* noundef, i64 noundef, i8* noundef, i8* noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @crypto_secretbox_open_detached(i8* noundef %0, i8* noundef %1, i8* noundef %2, i64 noundef %3, i8* noundef %4, i8* noundef %5) local_unnamed_addr #0 !dbg !506 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !508, metadata !DIExpression()), !dbg !514
  call void @llvm.dbg.value(metadata i8* %1, metadata !509, metadata !DIExpression()), !dbg !514
  call void @llvm.dbg.value(metadata i8* %2, metadata !510, metadata !DIExpression()), !dbg !514
  call void @llvm.dbg.value(metadata i64 %3, metadata !511, metadata !DIExpression()), !dbg !514
  call void @llvm.dbg.value(metadata i8* %4, metadata !512, metadata !DIExpression()), !dbg !514
  call void @llvm.dbg.value(metadata i8* %5, metadata !513, metadata !DIExpression()), !dbg !514
  %7 = call i32 @NaCl_crypto_secretbox_open_detached(i8* noundef %0, i8* noundef %1, i8* noundef %2, i64 noundef %3, i8* noundef %4, i8* noundef %5) #8, !dbg !515
  ret i32 %7, !dbg !516
}

declare !dbg !517 i32 @NaCl_crypto_secretbox_open_detached(i8* noundef, i8* noundef, i8* noundef, i64 noundef, i8* noundef, i8* noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @crypto_secretbox_easy(i8* noundef %0, i8* noundef %1, i64 noundef %2, i8* noundef %3, i8* noundef %4) local_unnamed_addr #0 !dbg !518 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !520, metadata !DIExpression()), !dbg !525
  call void @llvm.dbg.value(metadata i8* %1, metadata !521, metadata !DIExpression()), !dbg !525
  call void @llvm.dbg.value(metadata i64 %2, metadata !522, metadata !DIExpression()), !dbg !525
  call void @llvm.dbg.value(metadata i8* %3, metadata !523, metadata !DIExpression()), !dbg !525
  call void @llvm.dbg.value(metadata i8* %4, metadata !524, metadata !DIExpression()), !dbg !525
  %6 = call i32 @NaCl_crypto_secretbox_easy(i8* noundef %0, i8* noundef %1, i64 noundef %2, i8* noundef %3, i8* noundef %4) #8, !dbg !526
  ret i32 %6, !dbg !527
}

declare !dbg !528 i32 @NaCl_crypto_secretbox_easy(i8* noundef, i8* noundef, i64 noundef, i8* noundef, i8* noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @crypto_secretbox_open_easy(i8* noundef %0, i8* noundef %1, i64 noundef %2, i8* noundef %3, i8* noundef %4) local_unnamed_addr #0 !dbg !529 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !531, metadata !DIExpression()), !dbg !536
  call void @llvm.dbg.value(metadata i8* %1, metadata !532, metadata !DIExpression()), !dbg !536
  call void @llvm.dbg.value(metadata i64 %2, metadata !533, metadata !DIExpression()), !dbg !536
  call void @llvm.dbg.value(metadata i8* %3, metadata !534, metadata !DIExpression()), !dbg !536
  call void @llvm.dbg.value(metadata i8* %4, metadata !535, metadata !DIExpression()), !dbg !536
  %6 = call i32 @NaCl_crypto_secretbox_open_easy(i8* noundef %0, i8* noundef %1, i64 noundef %2, i8* noundef %3, i8* noundef %4) #8, !dbg !537
  ret i32 %6, !dbg !538
}

declare !dbg !539 i32 @NaCl_crypto_secretbox_open_easy(i8* noundef, i8* noundef, i64 noundef, i8* noundef, i8* noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @crypto_secretbox(i8* noundef %0, i8* noundef %1, i64 noundef %2, i8* noundef %3, i8* noundef %4) local_unnamed_addr #0 !dbg !540 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !542, metadata !DIExpression()), !dbg !547
  call void @llvm.dbg.value(metadata i8* %1, metadata !543, metadata !DIExpression()), !dbg !547
  call void @llvm.dbg.value(metadata i64 %2, metadata !544, metadata !DIExpression()), !dbg !547
  call void @llvm.dbg.value(metadata i8* %3, metadata !545, metadata !DIExpression()), !dbg !547
  call void @llvm.dbg.value(metadata i8* %4, metadata !546, metadata !DIExpression()), !dbg !547
  %6 = add i64 %2, -32, !dbg !548
  %7 = call i32 @crypto_secretbox_easy(i8* noundef %0, i8* noundef %1, i64 noundef %6, i8* noundef %3, i8* noundef %4), !dbg !549
  ret i32 %7, !dbg !550
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @crypto_secretbox_open(i8* noundef %0, i8* noundef %1, i64 noundef %2, i8* noundef %3, i8* noundef %4) local_unnamed_addr #0 !dbg !551 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !553, metadata !DIExpression()), !dbg !558
  call void @llvm.dbg.value(metadata i8* %1, metadata !554, metadata !DIExpression()), !dbg !558
  call void @llvm.dbg.value(metadata i64 %2, metadata !555, metadata !DIExpression()), !dbg !558
  call void @llvm.dbg.value(metadata i8* %3, metadata !556, metadata !DIExpression()), !dbg !558
  call void @llvm.dbg.value(metadata i8* %4, metadata !557, metadata !DIExpression()), !dbg !558
  %6 = getelementptr inbounds i8, i8* %1, i32 16, !dbg !559
  %7 = add i64 %2, -32, !dbg !560
  %8 = call i32 @crypto_secretbox_open_detached(i8* noundef %0, i8* noundef %1, i8* noundef nonnull %6, i64 noundef %7, i8* noundef %3, i8* noundef %4), !dbg !561
  ret i32 %8, !dbg !562
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @crypto_sign(i8* noundef %0, i64* nocapture noundef writeonly %1, i8* noundef %2, i64 noundef %3, i8* noundef %4) local_unnamed_addr #0 !dbg !563 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !568, metadata !DIExpression()), !dbg !573
  call void @llvm.dbg.value(metadata i64* %1, metadata !569, metadata !DIExpression()), !dbg !573
  call void @llvm.dbg.value(metadata i8* %2, metadata !570, metadata !DIExpression()), !dbg !573
  call void @llvm.dbg.value(metadata i64 %3, metadata !571, metadata !DIExpression()), !dbg !573
  call void @llvm.dbg.value(metadata i8* %4, metadata !572, metadata !DIExpression()), !dbg !573
  %6 = trunc i64 %3 to i32, !dbg !574
  call void @Hacl_Ed25519_sign(i8* noundef %0, i8* noundef %4, i8* noundef %2, i32 noundef %6) #8, !dbg !575
  %7 = getelementptr inbounds i8, i8* %0, i32 64, !dbg !576
  call void @llvm.memmove.p0i8.p0i8.i32(i8* nonnull align 1 %7, i8* align 1 %2, i32 %6, i1 false), !dbg !577
  %8 = add i64 %3, 64, !dbg !578
  store i64 %8, i64* %1, align 4, !dbg !579, !tbaa !580
  ret i32 0, !dbg !582
}

; Function Attrs: argmemonly mustprogress nofree nounwind willreturn
declare void @llvm.memmove.p0i8.p0i8.i32(i8* nocapture writeonly, i8* nocapture readonly, i32, i1 immarg) #5

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @crypto_sign_open(i8* nocapture noundef writeonly %0, i64* nocapture noundef writeonly %1, i8* noundef %2, i64 noundef %3, i8* noundef %4) local_unnamed_addr #0 !dbg !583 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !585, metadata !DIExpression()), !dbg !591
  call void @llvm.dbg.value(metadata i64* %1, metadata !586, metadata !DIExpression()), !dbg !591
  call void @llvm.dbg.value(metadata i8* %2, metadata !587, metadata !DIExpression()), !dbg !591
  call void @llvm.dbg.value(metadata i64 %3, metadata !588, metadata !DIExpression()), !dbg !591
  call void @llvm.dbg.value(metadata i8* %4, metadata !589, metadata !DIExpression()), !dbg !591
  %6 = getelementptr inbounds i8, i8* %2, i32 64, !dbg !592
  %7 = add i64 %3, -64, !dbg !593
  %8 = trunc i64 %7 to i32, !dbg !594
  %9 = call zeroext i1 @Hacl_Ed25519_verify(i8* noundef %4, i8* noundef nonnull %6, i32 noundef %8, i8* noundef %2) #8, !dbg !595
  call void @llvm.dbg.value(metadata i1 %9, metadata !590, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !591
  br i1 %9, label %10, label %11, !dbg !596

10:                                               ; preds = %5
  call void @llvm.memmove.p0i8.p0i8.i32(i8* align 1 %0, i8* nonnull align 1 %6, i32 %8, i1 false), !dbg !597
  store i64 %7, i64* %1, align 4, !dbg !600, !tbaa !580
  br label %11, !dbg !601

11:                                               ; preds = %5, %10
  %12 = phi i32 [ 0, %10 ], [ -1, %5 ], !dbg !602
  ret i32 %12, !dbg !603
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @crypto_sign_keypair(i8* noundef %0, i8* noundef %1) local_unnamed_addr #0 !dbg !604 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !606, metadata !DIExpression()), !dbg !610
  call void @llvm.dbg.value(metadata i8* %1, metadata !607, metadata !DIExpression()), !dbg !610
  call void @randombytes(i8* noundef %1, i64 noundef 32) #8, !dbg !611
  call void @Hacl_Ed25519_secret_to_public(i8* noundef %0, i8* noundef %1) #8, !dbg !612
  call void @llvm.dbg.value(metadata i32 0, metadata !608, metadata !DIExpression()), !dbg !613
  br label %4, !dbg !614

3:                                                ; preds = %4
  ret i32 0, !dbg !615

4:                                                ; preds = %2, %4
  %5 = phi i32 [ 0, %2 ], [ %10, %4 ]
  call void @llvm.dbg.value(metadata i32 %5, metadata !608, metadata !DIExpression()), !dbg !613
  %6 = getelementptr inbounds i8, i8* %0, i32 %5, !dbg !616
  %7 = load i8, i8* %6, align 1, !dbg !616, !tbaa !210
  %8 = add nuw nsw i32 %5, 32, !dbg !618
  %9 = getelementptr inbounds i8, i8* %1, i32 %8, !dbg !619
  store i8 %7, i8* %9, align 1, !dbg !620, !tbaa !210
  %10 = add nuw nsw i32 %5, 1, !dbg !621
  call void @llvm.dbg.value(metadata i32 %10, metadata !608, metadata !DIExpression()), !dbg !613
  %11 = icmp eq i32 %10, 32, !dbg !622
  br i1 %11, label %3, label %4, !dbg !614, !llvm.loop !623
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @crypto_sign_secret_to_public(i8* noundef %0, i8* noundef %1) local_unnamed_addr #0 !dbg !625 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !627, metadata !DIExpression()), !dbg !629
  call void @llvm.dbg.value(metadata i8* %1, metadata !628, metadata !DIExpression()), !dbg !629
  call void @Hacl_Ed25519_secret_to_public(i8* noundef %0, i8* noundef %1) #8, !dbg !630
  ret i32 0, !dbg !631
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @crypto_stream(i8* noundef %0, i64 noundef %1, i8* noundef %2, i8* noundef %3) local_unnamed_addr #0 !dbg !632 {
  %5 = alloca [32 x i8], align 1
  call void @llvm.dbg.value(metadata i8* %0, metadata !636, metadata !DIExpression()), !dbg !641
  call void @llvm.dbg.value(metadata i64 %1, metadata !637, metadata !DIExpression()), !dbg !641
  call void @llvm.dbg.value(metadata i8* %2, metadata !638, metadata !DIExpression()), !dbg !641
  call void @llvm.dbg.value(metadata i8* %3, metadata !639, metadata !DIExpression()), !dbg !641
  %6 = getelementptr inbounds [32 x i8], [32 x i8]* %5, i32 0, i32 0, !dbg !642
  call void @llvm.lifetime.start.p0i8(i64 32, i8* nonnull %6) #8, !dbg !642
  call void @llvm.dbg.declare(metadata [32 x i8]* %5, metadata !640, metadata !DIExpression()), !dbg !643
  %7 = trunc i64 %1 to i32, !dbg !644
  call void @llvm.memset.p0i8.i32(i8* align 1 %0, i8 0, i32 %7, i1 false), !dbg !645
  call void @Hacl_Salsa20_hsalsa20(i8* noundef nonnull %6, i8* noundef %3, i8* noundef %2) #8, !dbg !646
  %8 = getelementptr inbounds i8, i8* %2, i32 16, !dbg !647
  call void @Hacl_Salsa20_salsa20(i8* noundef %0, i8* noundef %0, i32 noundef %7, i8* noundef nonnull %6, i8* noundef nonnull %8, i64 noundef 0) #8, !dbg !648
  call void @llvm.lifetime.end.p0i8(i64 32, i8* nonnull %6) #8, !dbg !649
  ret i32 0, !dbg !650
}

; Function Attrs: argmemonly mustprogress nofree nounwind willreturn writeonly
declare void @llvm.memset.p0i8.i32(i8* nocapture writeonly, i8, i32, i1 immarg) #6

declare !dbg !651 void @Hacl_Salsa20_hsalsa20(i8* noundef, i8* noundef, i8* noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @crypto_stream_xor(i8* noundef %0, i8* noundef %1, i64 noundef %2, i8* noundef %3, i8* noundef %4) local_unnamed_addr #0 !dbg !652 {
  %6 = alloca [32 x i8], align 1
  call void @llvm.dbg.value(metadata i8* %0, metadata !654, metadata !DIExpression()), !dbg !660
  call void @llvm.dbg.value(metadata i8* %1, metadata !655, metadata !DIExpression()), !dbg !660
  call void @llvm.dbg.value(metadata i64 %2, metadata !656, metadata !DIExpression()), !dbg !660
  call void @llvm.dbg.value(metadata i8* %3, metadata !657, metadata !DIExpression()), !dbg !660
  call void @llvm.dbg.value(metadata i8* %4, metadata !658, metadata !DIExpression()), !dbg !660
  %7 = getelementptr inbounds [32 x i8], [32 x i8]* %6, i32 0, i32 0, !dbg !661
  call void @llvm.lifetime.start.p0i8(i64 32, i8* nonnull %7) #8, !dbg !661
  call void @llvm.dbg.declare(metadata [32 x i8]* %6, metadata !659, metadata !DIExpression()), !dbg !662
  %8 = trunc i64 %2 to i32, !dbg !663
  call void @llvm.memset.p0i8.i32(i8* align 1 %0, i8 0, i32 %8, i1 false), !dbg !664
  call void @Hacl_Salsa20_hsalsa20(i8* noundef nonnull %7, i8* noundef %4, i8* noundef %3) #8, !dbg !665
  %9 = getelementptr inbounds i8, i8* %3, i32 16, !dbg !666
  call void @Hacl_Salsa20_salsa20(i8* noundef %0, i8* noundef %1, i32 noundef %8, i8* noundef nonnull %7, i8* noundef nonnull %9, i64 noundef 0) #8, !dbg !667
  call void @llvm.lifetime.end.p0i8(i64 32, i8* nonnull %7) #8, !dbg !668
  ret i32 0, !dbg !669
}

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare void @llvm.dbg.value(metadata, metadata, metadata) #7

attributes #0 = { noinline nounwind uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="i686" "target-features"="+cx8,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nofree nosync nounwind readnone speculatable willreturn }
attributes #2 = { "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="i686" "target-features"="+cx8,+x87" "tune-cpu"="generic" }
attributes #3 = { argmemonly mustprogress nofree nosync nounwind willreturn }
attributes #4 = { mustprogress nofree noinline norecurse nosync nounwind readnone uwtable willreturn "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="i686" "target-features"="+cx8,+x87" "tune-cpu"="generic" }
attributes #5 = { argmemonly mustprogress nofree nounwind willreturn }
attributes #6 = { argmemonly mustprogress nofree nounwind willreturn writeonly }
attributes #7 = { nofree nosync nounwind readnone speculatable willreturn }
attributes #8 = { nounwind }

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!14, !15, !16, !17, !18, !19, !20}
!llvm.ident = !{!21}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "Ubuntu clang version 14.0.0-1ubuntu1.1", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !2, splitDebugInlining: false, nameTableKind: None)
!1 = !DIFile(filename: "hacl-c/hacl-c/haclnacl.c", directory: "/mnt/c/Users/fwill/Documents/HS24/semester_project/tools/binsec/binsec/examples/hacl", checksumkind: CSK_MD5, checksum: "4c5418a9faef57031256bfcf898be03f")
!2 = !{!3, !4, !9, !10}
!3 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4, size: 32)
!4 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint8_t", file: !5, line: 24, baseType: !6)
!5 = !DIFile(filename: "/usr/include/bits/stdint-uintn.h", directory: "", checksumkind: CSK_MD5, checksum: "2bf2ae53c58c01b1a1b9383b5195125c")
!6 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uint8_t", file: !7, line: 38, baseType: !8)
!7 = !DIFile(filename: "/usr/include/bits/types.h", directory: "", checksumkind: CSK_MD5, checksum: "d108b5f93a74c50510d7d9bc0ab36df9")
!8 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!9 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!10 = !DIDerivedType(tag: DW_TAG_typedef, name: "int8_t", file: !11, line: 24, baseType: !12)
!11 = !DIFile(filename: "/usr/include/bits/stdint-intn.h", directory: "", checksumkind: CSK_MD5, checksum: "55bcbdc3159515ebd91d351a70d505f4")
!12 = !DIDerivedType(tag: DW_TAG_typedef, name: "__int8_t", file: !7, line: 37, baseType: !13)
!13 = !DIBasicType(name: "signed char", size: 8, encoding: DW_ATE_signed_char)
!14 = !{i32 1, !"NumRegisterParameters", i32 0}
!15 = !{i32 7, !"Dwarf Version", i32 5}
!16 = !{i32 2, !"Debug Info Version", i32 3}
!17 = !{i32 1, !"wchar_size", i32 4}
!18 = !{i32 7, !"PIC Level", i32 2}
!19 = !{i32 7, !"PIE Level", i32 2}
!20 = !{i32 7, !"uwtable", i32 1}
!21 = !{!"Ubuntu clang version 14.0.0-1ubuntu1.1"}
!22 = distinct !DISubprogram(name: "curve25519_scalarmult", scope: !1, file: !1, line: 58, type: !23, scopeLine: 58, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !25)
!23 = !DISubroutineType(types: !24)
!24 = !{null, !3, !3, !3}
!25 = !{!26, !27, !28}
!26 = !DILocalVariable(name: "out", arg: 1, scope: !22, file: !1, line: 58, type: !3)
!27 = !DILocalVariable(name: "secret", arg: 2, scope: !22, file: !1, line: 58, type: !3)
!28 = !DILocalVariable(name: "point", arg: 3, scope: !22, file: !1, line: 58, type: !3)
!29 = !DILocation(line: 0, scope: !22)
!30 = !DILocation(line: 59, column: 3, scope: !22)
!31 = !DILocation(line: 60, column: 1, scope: !22)
!32 = !DISubprogram(name: "Hacl_Curve25519_crypto_scalarmult", scope: !33, file: !33, line: 68, type: !23, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !34)
!33 = !DIFile(filename: "hacl-c/hacl-c/Hacl_Curve25519.h", directory: "/mnt/c/Users/fwill/Documents/HS24/semester_project/tools/binsec/binsec/examples/hacl", checksumkind: CSK_MD5, checksum: "0930fbd245ca299bedaa6fe9354e9123")
!34 = !{}
!35 = distinct !DISubprogram(name: "chacha20", scope: !1, file: !1, line: 62, type: !36, scopeLine: 62, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !41)
!36 = !DISubroutineType(types: !37)
!37 = !{null, !3, !3, !38, !3, !3, !38}
!38 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint32_t", file: !5, line: 26, baseType: !39)
!39 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uint32_t", file: !7, line: 42, baseType: !40)
!40 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!41 = !{!42, !43, !44, !45, !46, !47}
!42 = !DILocalVariable(name: "output", arg: 1, scope: !35, file: !1, line: 62, type: !3)
!43 = !DILocalVariable(name: "plain", arg: 2, scope: !35, file: !1, line: 62, type: !3)
!44 = !DILocalVariable(name: "plain_len", arg: 3, scope: !35, file: !1, line: 62, type: !38)
!45 = !DILocalVariable(name: "key", arg: 4, scope: !35, file: !1, line: 62, type: !3)
!46 = !DILocalVariable(name: "nonce", arg: 5, scope: !35, file: !1, line: 62, type: !3)
!47 = !DILocalVariable(name: "ctr", arg: 6, scope: !35, file: !1, line: 62, type: !38)
!48 = !DILocation(line: 0, scope: !35)
!49 = !DILocation(line: 63, column: 3, scope: !35)
!50 = !DILocation(line: 64, column: 1, scope: !35)
!51 = !DISubprogram(name: "Hacl_Chacha20_chacha20", scope: !52, file: !52, line: 87, type: !36, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !34)
!52 = !DIFile(filename: "hacl-c/hacl-c/Hacl_Chacha20.h", directory: "/mnt/c/Users/fwill/Documents/HS24/semester_project/tools/binsec/binsec/examples/hacl", checksumkind: CSK_MD5, checksum: "b8e93b3d1bc695311f402d98a2bec733")
!53 = distinct !DISubprogram(name: "salsa20", scope: !1, file: !1, line: 66, type: !54, scopeLine: 66, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !59)
!54 = !DISubroutineType(types: !55)
!55 = !{null, !3, !3, !38, !3, !3, !56}
!56 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint64_t", file: !5, line: 27, baseType: !57)
!57 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uint64_t", file: !7, line: 48, baseType: !58)
!58 = !DIBasicType(name: "unsigned long long", size: 64, encoding: DW_ATE_unsigned)
!59 = !{!60, !61, !62, !63, !64, !65}
!60 = !DILocalVariable(name: "output", arg: 1, scope: !53, file: !1, line: 66, type: !3)
!61 = !DILocalVariable(name: "plain", arg: 2, scope: !53, file: !1, line: 66, type: !3)
!62 = !DILocalVariable(name: "len", arg: 3, scope: !53, file: !1, line: 66, type: !38)
!63 = !DILocalVariable(name: "key", arg: 4, scope: !53, file: !1, line: 66, type: !3)
!64 = !DILocalVariable(name: "nonce", arg: 5, scope: !53, file: !1, line: 66, type: !3)
!65 = !DILocalVariable(name: "ctr", arg: 6, scope: !53, file: !1, line: 66, type: !56)
!66 = !DILocation(line: 0, scope: !53)
!67 = !DILocation(line: 67, column: 3, scope: !53)
!68 = !DILocation(line: 68, column: 1, scope: !53)
!69 = !DISubprogram(name: "Hacl_Salsa20_salsa20", scope: !70, file: !70, line: 74, type: !54, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !34)
!70 = !DIFile(filename: "hacl-c/hacl-c/Hacl_Salsa20.h", directory: "/mnt/c/Users/fwill/Documents/HS24/semester_project/tools/binsec/binsec/examples/hacl", checksumkind: CSK_MD5, checksum: "8d4b539cd3d7eb7155073ae2eacb2e38")
!71 = distinct !DISubprogram(name: "poly1305_onetimeauth", scope: !1, file: !1, line: 70, type: !72, scopeLine: 70, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !74)
!72 = !DISubroutineType(types: !73)
!73 = !{null, !3, !3, !56, !3}
!74 = !{!75, !76, !77, !78}
!75 = !DILocalVariable(name: "output", arg: 1, scope: !71, file: !1, line: 70, type: !3)
!76 = !DILocalVariable(name: "input", arg: 2, scope: !71, file: !1, line: 70, type: !3)
!77 = !DILocalVariable(name: "input_len", arg: 3, scope: !71, file: !1, line: 70, type: !56)
!78 = !DILocalVariable(name: "key", arg: 4, scope: !71, file: !1, line: 70, type: !3)
!79 = !DILocation(line: 0, scope: !71)
!80 = !DILocation(line: 71, column: 3, scope: !71)
!81 = !DILocation(line: 72, column: 1, scope: !71)
!82 = !DISubprogram(name: "Hacl_Poly1305_64_crypto_onetimeauth", scope: !83, file: !83, line: 110, type: !72, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !34)
!83 = !DIFile(filename: "hacl-c/hacl-c/Hacl_Poly1305_64.h", directory: "/mnt/c/Users/fwill/Documents/HS24/semester_project/tools/binsec/binsec/examples/hacl", checksumkind: CSK_MD5, checksum: "5b2076ce0bf121af206cc3eb1c4c121c")
!84 = distinct !DISubprogram(name: "aead_chacha20_poly1305_encrypt", scope: !1, file: !1, line: 74, type: !85, scopeLine: 74, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !87)
!85 = !DISubroutineType(types: !86)
!86 = !{!38, !3, !3, !3, !38, !3, !38, !3, !3}
!87 = !{!88, !89, !90, !91, !92, !93, !94, !95}
!88 = !DILocalVariable(name: "cipher", arg: 1, scope: !84, file: !1, line: 74, type: !3)
!89 = !DILocalVariable(name: "mac", arg: 2, scope: !84, file: !1, line: 74, type: !3)
!90 = !DILocalVariable(name: "msg", arg: 3, scope: !84, file: !1, line: 74, type: !3)
!91 = !DILocalVariable(name: "msg_len", arg: 4, scope: !84, file: !1, line: 74, type: !38)
!92 = !DILocalVariable(name: "aad", arg: 5, scope: !84, file: !1, line: 74, type: !3)
!93 = !DILocalVariable(name: "aad_len", arg: 6, scope: !84, file: !1, line: 74, type: !38)
!94 = !DILocalVariable(name: "key", arg: 7, scope: !84, file: !1, line: 74, type: !3)
!95 = !DILocalVariable(name: "nonce", arg: 8, scope: !84, file: !1, line: 74, type: !3)
!96 = !DILocation(line: 0, scope: !84)
!97 = !DILocation(line: 75, column: 10, scope: !84)
!98 = !DILocation(line: 75, column: 3, scope: !84)
!99 = !DISubprogram(name: "Hacl_Chacha20Poly1305_aead_encrypt", scope: !100, file: !100, line: 58, type: !85, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !34)
!100 = !DIFile(filename: "hacl-c/hacl-c/Hacl_Chacha20Poly1305.h", directory: "/mnt/c/Users/fwill/Documents/HS24/semester_project/tools/binsec/binsec/examples/hacl", checksumkind: CSK_MD5, checksum: "fc15e9a6441323501ed29c5e316ed68d")
!101 = distinct !DISubprogram(name: "aead_chacha20_poly1305_decrypt", scope: !1, file: !1, line: 78, type: !102, scopeLine: 78, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !104)
!102 = !DISubroutineType(types: !103)
!103 = !{!38, !3, !3, !38, !3, !3, !38, !3, !3}
!104 = !{!105, !106, !107, !108, !109, !110, !111, !112}
!105 = !DILocalVariable(name: "msg", arg: 1, scope: !101, file: !1, line: 78, type: !3)
!106 = !DILocalVariable(name: "cipher", arg: 2, scope: !101, file: !1, line: 78, type: !3)
!107 = !DILocalVariable(name: "msg_len", arg: 3, scope: !101, file: !1, line: 78, type: !38)
!108 = !DILocalVariable(name: "mac", arg: 4, scope: !101, file: !1, line: 78, type: !3)
!109 = !DILocalVariable(name: "aad", arg: 5, scope: !101, file: !1, line: 78, type: !3)
!110 = !DILocalVariable(name: "aad_len", arg: 6, scope: !101, file: !1, line: 78, type: !38)
!111 = !DILocalVariable(name: "key", arg: 7, scope: !101, file: !1, line: 78, type: !3)
!112 = !DILocalVariable(name: "nonce", arg: 8, scope: !101, file: !1, line: 78, type: !3)
!113 = !DILocation(line: 0, scope: !101)
!114 = !DILocation(line: 79, column: 10, scope: !101)
!115 = !DILocation(line: 79, column: 3, scope: !101)
!116 = !DISubprogram(name: "Hacl_Chacha20Poly1305_aead_decrypt", scope: !100, file: !100, line: 70, type: !102, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !34)
!117 = distinct !DISubprogram(name: "ed25519_secret_to_public", scope: !1, file: !1, line: 82, type: !118, scopeLine: 82, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !120)
!118 = !DISubroutineType(types: !119)
!119 = !{null, !3, !3}
!120 = !{!121, !122}
!121 = !DILocalVariable(name: "public_key", arg: 1, scope: !117, file: !1, line: 82, type: !3)
!122 = !DILocalVariable(name: "secret_key", arg: 2, scope: !117, file: !1, line: 82, type: !3)
!123 = !DILocation(line: 0, scope: !117)
!124 = !DILocation(line: 83, column: 3, scope: !117)
!125 = !DILocation(line: 84, column: 1, scope: !117)
!126 = !DISubprogram(name: "Hacl_Ed25519_secret_to_public", scope: !127, file: !127, line: 229, type: !118, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !34)
!127 = !DIFile(filename: "hacl-c/hacl-c/Hacl_Ed25519.h", directory: "/mnt/c/Users/fwill/Documents/HS24/semester_project/tools/binsec/binsec/examples/hacl", checksumkind: CSK_MD5, checksum: "4ea8e221f6b18e915e772589f36908f6")
!128 = distinct !DISubprogram(name: "ed25519_sign", scope: !1, file: !1, line: 86, type: !129, scopeLine: 86, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !131)
!129 = !DISubroutineType(types: !130)
!130 = !{null, !3, !3, !3, !38}
!131 = !{!132, !133, !134, !135}
!132 = !DILocalVariable(name: "signature", arg: 1, scope: !128, file: !1, line: 86, type: !3)
!133 = !DILocalVariable(name: "secret", arg: 2, scope: !128, file: !1, line: 86, type: !3)
!134 = !DILocalVariable(name: "msg", arg: 3, scope: !128, file: !1, line: 86, type: !3)
!135 = !DILocalVariable(name: "msg_len", arg: 4, scope: !128, file: !1, line: 86, type: !38)
!136 = !DILocation(line: 0, scope: !128)
!137 = !DILocation(line: 87, column: 3, scope: !128)
!138 = !DILocation(line: 88, column: 1, scope: !128)
!139 = !DISubprogram(name: "Hacl_Ed25519_sign", scope: !127, file: !127, line: 225, type: !129, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !34)
!140 = distinct !DISubprogram(name: "ed25519_verify", scope: !1, file: !1, line: 90, type: !141, scopeLine: 90, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !144)
!141 = !DISubroutineType(types: !142)
!142 = !{!143, !3, !3, !38, !3}
!143 = !DIBasicType(name: "_Bool", size: 8, encoding: DW_ATE_boolean)
!144 = !{!145, !146, !147, !148}
!145 = !DILocalVariable(name: "public", arg: 1, scope: !140, file: !1, line: 90, type: !3)
!146 = !DILocalVariable(name: "msg", arg: 2, scope: !140, file: !1, line: 90, type: !3)
!147 = !DILocalVariable(name: "msg_len", arg: 3, scope: !140, file: !1, line: 90, type: !38)
!148 = !DILocalVariable(name: "signature", arg: 4, scope: !140, file: !1, line: 90, type: !3)
!149 = !DILocation(line: 0, scope: !140)
!150 = !DILocation(line: 91, column: 10, scope: !140)
!151 = !DILocation(line: 91, column: 3, scope: !140)
!152 = !DISubprogram(name: "Hacl_Ed25519_verify", scope: !127, file: !127, line: 227, type: !141, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !34)
!153 = distinct !DISubprogram(name: "sha2_512_hash", scope: !1, file: !1, line: 94, type: !154, scopeLine: 94, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !156)
!154 = !DISubroutineType(types: !155)
!155 = !{null, !3, !3, !38}
!156 = !{!157, !158, !159}
!157 = !DILocalVariable(name: "hash", arg: 1, scope: !153, file: !1, line: 94, type: !3)
!158 = !DILocalVariable(name: "input", arg: 2, scope: !153, file: !1, line: 94, type: !3)
!159 = !DILocalVariable(name: "len", arg: 3, scope: !153, file: !1, line: 94, type: !38)
!160 = !DILocation(line: 0, scope: !153)
!161 = !DILocation(line: 95, column: 3, scope: !153)
!162 = !DILocation(line: 96, column: 1, scope: !153)
!163 = !DISubprogram(name: "Hacl_SHA2_512_hash", scope: !164, file: !164, line: 128, type: !154, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !34)
!164 = !DIFile(filename: "hacl-c/hacl-c/Hacl_SHA2_512.h", directory: "/mnt/c/Users/fwill/Documents/HS24/semester_project/tools/binsec/binsec/examples/hacl", checksumkind: CSK_MD5, checksum: "00ed7d003f8a018c4fba9fd767e0d022")
!165 = distinct !DISubprogram(name: "crypto_auth", scope: !1, file: !1, line: 101, type: !166, scopeLine: 101, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !170)
!166 = !DISubroutineType(types: !167)
!167 = !{!9, !3, !168, !56, !168}
!168 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !169, size: 32)
!169 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4)
!170 = !{!171, !172, !173, !174}
!171 = !DILocalVariable(name: "output", arg: 1, scope: !165, file: !1, line: 101, type: !3)
!172 = !DILocalVariable(name: "input", arg: 2, scope: !165, file: !1, line: 101, type: !168)
!173 = !DILocalVariable(name: "input_len", arg: 3, scope: !165, file: !1, line: 101, type: !56)
!174 = !DILocalVariable(name: "key", arg: 4, scope: !165, file: !1, line: 101, type: !168)
!175 = !DILocation(line: 0, scope: !165)
!176 = !DILocation(line: 102, column: 74, scope: !165)
!177 = !DILocation(line: 102, column: 3, scope: !165)
!178 = !DILocation(line: 103, column: 3, scope: !165)
!179 = !DISubprogram(name: "Hacl_HMAC_SHA2_256_hmac_core", scope: !180, file: !180, line: 90, type: !129, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !34)
!180 = !DIFile(filename: "hacl-c/hacl-c/Hacl_HMAC_SHA2_256.h", directory: "/mnt/c/Users/fwill/Documents/HS24/semester_project/tools/binsec/binsec/examples/hacl", checksumkind: CSK_MD5, checksum: "447d30764229bec8071332f68c46808b")
!181 = distinct !DISubprogram(name: "crypto_auth_verify", scope: !1, file: !1, line: 106, type: !182, scopeLine: 106, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !184)
!182 = !DISubroutineType(types: !183)
!183 = !{!9, !168, !168, !56, !168}
!184 = !{!185, !186, !187, !188, !189, !193, !194}
!185 = !DILocalVariable(name: "tag", arg: 1, scope: !181, file: !1, line: 106, type: !168)
!186 = !DILocalVariable(name: "input", arg: 2, scope: !181, file: !1, line: 106, type: !168)
!187 = !DILocalVariable(name: "input_len", arg: 3, scope: !181, file: !1, line: 106, type: !56)
!188 = !DILocalVariable(name: "key", arg: 4, scope: !181, file: !1, line: 106, type: !168)
!189 = !DILocalVariable(name: "recomputed_tag", scope: !181, file: !1, line: 107, type: !190)
!190 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 256, elements: !191)
!191 = !{!192}
!192 = !DISubrange(count: 32)
!193 = !DILocalVariable(name: "tmp", scope: !181, file: !1, line: 107, type: !4)
!194 = !DILocalVariable(name: "i", scope: !195, file: !1, line: 109, type: !9)
!195 = distinct !DILexicalBlock(scope: !181, file: !1, line: 109, column: 3)
!196 = !DILocation(line: 0, scope: !181)
!197 = !DILocation(line: 107, column: 3, scope: !181)
!198 = !DILocation(line: 107, column: 11, scope: !181)
!199 = !DILocation(line: 108, column: 82, scope: !181)
!200 = !DILocation(line: 108, column: 3, scope: !181)
!201 = !DILocation(line: 0, scope: !195)
!202 = !DILocation(line: 109, column: 3, scope: !195)
!203 = !DILocation(line: 112, column: 7, scope: !181)
!204 = !DILocation(line: 113, column: 19, scope: !181)
!205 = !DILocation(line: 114, column: 1, scope: !181)
!206 = !DILocation(line: 113, column: 3, scope: !181)
!207 = !DILocation(line: 110, column: 46, scope: !208)
!208 = distinct !DILexicalBlock(scope: !209, file: !1, line: 109, column: 31)
!209 = distinct !DILexicalBlock(scope: !195, file: !1, line: 109, column: 3)
!210 = !{!211, !211, i64 0}
!211 = !{!"omnipotent char", !212, i64 0}
!212 = !{!"Simple C/C++ TBAA"}
!213 = !DILocation(line: 110, column: 54, scope: !208)
!214 = !DILocation(line: 110, column: 17, scope: !208)
!215 = !DILocation(line: 110, column: 15, scope: !208)
!216 = !DILocation(line: 109, column: 28, scope: !209)
!217 = !DILocation(line: 109, column: 21, scope: !209)
!218 = distinct !{!218, !202, !219, !220, !221}
!219 = !DILocation(line: 111, column: 3, scope: !195)
!220 = !{!"llvm.loop.mustprogress"}
!221 = !{!"llvm.loop.unroll.disable"}
!222 = distinct !DISubprogram(name: "FStar_UInt8_eq_mask", scope: !223, file: !223, line: 118, type: !224, scopeLine: 118, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !226)
!223 = !DIFile(filename: "hacl-c/hacl-c/kremlib_base.h", directory: "/mnt/c/Users/fwill/Documents/HS24/semester_project/tools/binsec/binsec/examples/hacl", checksumkind: CSK_MD5, checksum: "d6560fd4701aab11aac1f04efb4ba74f")
!224 = !DISubroutineType(types: !225)
!225 = !{!4, !4, !4}
!226 = !{!227, !228}
!227 = !DILocalVariable(name: "x", arg: 1, scope: !222, file: !223, line: 118, type: !4)
!228 = !DILocalVariable(name: "y", arg: 2, scope: !222, file: !223, line: 118, type: !4)
!229 = !DILocation(line: 0, scope: !222)
!230 = !DILocation(line: 119, column: 7, scope: !222)
!231 = !DILocation(line: 120, column: 5, scope: !222)
!232 = !DILocation(line: 121, column: 5, scope: !222)
!233 = !DILocation(line: 122, column: 5, scope: !222)
!234 = !DILocation(line: 123, column: 20, scope: !222)
!235 = !DILocation(line: 123, column: 3, scope: !222)
!236 = distinct !DISubprogram(name: "crypto_box_keypair", scope: !1, file: !1, line: 117, type: !237, scopeLine: 117, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !239)
!237 = !DISubroutineType(types: !238)
!238 = !{!9, !3, !3}
!239 = !{!240, !241, !242}
!240 = !DILocalVariable(name: "pk", arg: 1, scope: !236, file: !1, line: 117, type: !3)
!241 = !DILocalVariable(name: "sk", arg: 2, scope: !236, file: !1, line: 117, type: !3)
!242 = !DILocalVariable(name: "basepoint", scope: !236, file: !1, line: 119, type: !190)
!243 = !DILocation(line: 0, scope: !236)
!244 = !DILocation(line: 118, column: 3, scope: !236)
!245 = !DILocation(line: 119, column: 3, scope: !236)
!246 = !DILocation(line: 119, column: 11, scope: !236)
!247 = !DILocation(line: 120, column: 3, scope: !236)
!248 = !DILocation(line: 122, column: 1, scope: !236)
!249 = !DILocation(line: 121, column: 3, scope: !236)
!250 = !DISubprogram(name: "randombytes", scope: !1, file: !1, line: 53, type: !251, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !34)
!251 = !DISubroutineType(types: !252)
!252 = !{null, !3, !56}
!253 = distinct !DISubprogram(name: "crypto_box_easy", scope: !1, file: !1, line: 124, type: !254, scopeLine: 126, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !256)
!254 = !DISubroutineType(types: !255)
!255 = !{!9, !3, !168, !56, !168, !168, !168}
!256 = !{!257, !258, !259, !260, !261, !262}
!257 = !DILocalVariable(name: "c", arg: 1, scope: !253, file: !1, line: 124, type: !3)
!258 = !DILocalVariable(name: "m", arg: 2, scope: !253, file: !1, line: 124, type: !168)
!259 = !DILocalVariable(name: "mlen", arg: 3, scope: !253, file: !1, line: 125, type: !56)
!260 = !DILocalVariable(name: "n", arg: 4, scope: !253, file: !1, line: 125, type: !168)
!261 = !DILocalVariable(name: "pk", arg: 5, scope: !253, file: !1, line: 126, type: !168)
!262 = !DILocalVariable(name: "sk", arg: 6, scope: !253, file: !1, line: 126, type: !168)
!263 = !DILocation(line: 0, scope: !253)
!264 = !DILocation(line: 127, column: 10, scope: !253)
!265 = !DILocation(line: 127, column: 3, scope: !253)
!266 = !DISubprogram(name: "NaCl_crypto_box_easy", scope: !267, file: !267, line: 119, type: !268, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !34)
!267 = !DIFile(filename: "hacl-c/hacl-c/NaCl.h", directory: "/mnt/c/Users/fwill/Documents/HS24/semester_project/tools/binsec/binsec/examples/hacl", checksumkind: CSK_MD5, checksum: "4d9f0d8717fa9519ee4eacd5231c692d")
!268 = !DISubroutineType(types: !269)
!269 = !{!38, !3, !3, !56, !3, !3, !3}
!270 = distinct !DISubprogram(name: "crypto_box_open_easy", scope: !1, file: !1, line: 130, type: !254, scopeLine: 132, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !271)
!271 = !{!272, !273, !274, !275, !276, !277}
!272 = !DILocalVariable(name: "m", arg: 1, scope: !270, file: !1, line: 130, type: !3)
!273 = !DILocalVariable(name: "c", arg: 2, scope: !270, file: !1, line: 130, type: !168)
!274 = !DILocalVariable(name: "clen", arg: 3, scope: !270, file: !1, line: 131, type: !56)
!275 = !DILocalVariable(name: "n", arg: 4, scope: !270, file: !1, line: 131, type: !168)
!276 = !DILocalVariable(name: "pk", arg: 5, scope: !270, file: !1, line: 132, type: !168)
!277 = !DILocalVariable(name: "sk", arg: 6, scope: !270, file: !1, line: 132, type: !168)
!278 = !DILocation(line: 0, scope: !270)
!279 = !DILocation(line: 133, column: 10, scope: !270)
!280 = !DILocation(line: 133, column: 3, scope: !270)
!281 = !DISubprogram(name: "NaCl_crypto_box_open_easy", scope: !267, file: !267, line: 129, type: !268, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !34)
!282 = distinct !DISubprogram(name: "crypto_box_beforenm", scope: !1, file: !1, line: 136, type: !283, scopeLine: 137, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !285)
!283 = !DISubroutineType(types: !284)
!284 = !{!9, !3, !168, !168}
!285 = !{!286, !287, !288}
!286 = !DILocalVariable(name: "k", arg: 1, scope: !282, file: !1, line: 136, type: !3)
!287 = !DILocalVariable(name: "pk", arg: 2, scope: !282, file: !1, line: 136, type: !168)
!288 = !DILocalVariable(name: "sk", arg: 3, scope: !282, file: !1, line: 137, type: !168)
!289 = !DILocation(line: 0, scope: !282)
!290 = !DILocation(line: 138, column: 10, scope: !282)
!291 = !DILocation(line: 138, column: 3, scope: !282)
!292 = !DISubprogram(name: "NaCl_crypto_box_beforenm", scope: !267, file: !267, line: 81, type: !293, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !34)
!293 = !DISubroutineType(types: !294)
!294 = !{!38, !3, !3, !3}
!295 = distinct !DISubprogram(name: "crypto_box_easy_afternm", scope: !1, file: !1, line: 141, type: !296, scopeLine: 143, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !298)
!296 = !DISubroutineType(types: !297)
!297 = !{!9, !3, !168, !56, !168, !168}
!298 = !{!299, !300, !301, !302, !303}
!299 = !DILocalVariable(name: "c", arg: 1, scope: !295, file: !1, line: 141, type: !3)
!300 = !DILocalVariable(name: "m", arg: 2, scope: !295, file: !1, line: 141, type: !168)
!301 = !DILocalVariable(name: "mlen", arg: 3, scope: !295, file: !1, line: 142, type: !56)
!302 = !DILocalVariable(name: "n", arg: 4, scope: !295, file: !1, line: 142, type: !168)
!303 = !DILocalVariable(name: "k", arg: 5, scope: !295, file: !1, line: 143, type: !168)
!304 = !DILocation(line: 0, scope: !295)
!305 = !DILocation(line: 144, column: 10, scope: !295)
!306 = !DILocation(line: 144, column: 3, scope: !295)
!307 = !DISubprogram(name: "NaCl_crypto_box_easy_afternm", scope: !267, file: !267, line: 116, type: !308, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !34)
!308 = !DISubroutineType(types: !309)
!309 = !{!38, !3, !3, !56, !3, !3}
!310 = distinct !DISubprogram(name: "crypto_box_open_easy_afternm", scope: !1, file: !1, line: 147, type: !296, scopeLine: 149, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !311)
!311 = !{!312, !313, !314, !315, !316}
!312 = !DILocalVariable(name: "m", arg: 1, scope: !310, file: !1, line: 147, type: !3)
!313 = !DILocalVariable(name: "c", arg: 2, scope: !310, file: !1, line: 147, type: !168)
!314 = !DILocalVariable(name: "clen", arg: 3, scope: !310, file: !1, line: 148, type: !56)
!315 = !DILocalVariable(name: "n", arg: 4, scope: !310, file: !1, line: 148, type: !168)
!316 = !DILocalVariable(name: "k", arg: 5, scope: !310, file: !1, line: 149, type: !168)
!317 = !DILocation(line: 0, scope: !310)
!318 = !DILocation(line: 150, column: 10, scope: !310)
!319 = !DILocation(line: 150, column: 3, scope: !310)
!320 = !DISubprogram(name: "NaCl_crypto_box_open_easy_afternm", scope: !267, file: !267, line: 149, type: !308, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !34)
!321 = distinct !DISubprogram(name: "crypto_box_detached_afternm", scope: !1, file: !1, line: 153, type: !322, scopeLine: 153, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !324)
!322 = !DISubroutineType(types: !323)
!323 = !{!38, !3, !3, !3, !56, !3, !3}
!324 = !{!325, !326, !327, !328, !329, !330}
!325 = !DILocalVariable(name: "c", arg: 1, scope: !321, file: !1, line: 153, type: !3)
!326 = !DILocalVariable(name: "mac", arg: 2, scope: !321, file: !1, line: 153, type: !3)
!327 = !DILocalVariable(name: "m", arg: 3, scope: !321, file: !1, line: 153, type: !3)
!328 = !DILocalVariable(name: "mlen", arg: 4, scope: !321, file: !1, line: 153, type: !56)
!329 = !DILocalVariable(name: "n", arg: 5, scope: !321, file: !1, line: 153, type: !3)
!330 = !DILocalVariable(name: "k", arg: 6, scope: !321, file: !1, line: 153, type: !3)
!331 = !DILocation(line: 0, scope: !321)
!332 = !DILocation(line: 154, column: 10, scope: !321)
!333 = !DILocation(line: 154, column: 3, scope: !321)
!334 = !DISubprogram(name: "NaCl_crypto_box_detached_afternm", scope: !267, file: !267, line: 84, type: !322, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !34)
!335 = distinct !DISubprogram(name: "crypto_box_detached", scope: !1, file: !1, line: 157, type: !336, scopeLine: 157, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !338)
!336 = !DISubroutineType(types: !337)
!337 = !{!38, !3, !3, !3, !56, !3, !3, !3}
!338 = !{!339, !340, !341, !342, !343, !344, !345}
!339 = !DILocalVariable(name: "c", arg: 1, scope: !335, file: !1, line: 157, type: !3)
!340 = !DILocalVariable(name: "mac", arg: 2, scope: !335, file: !1, line: 157, type: !3)
!341 = !DILocalVariable(name: "m", arg: 3, scope: !335, file: !1, line: 157, type: !3)
!342 = !DILocalVariable(name: "mlen", arg: 4, scope: !335, file: !1, line: 157, type: !56)
!343 = !DILocalVariable(name: "n", arg: 5, scope: !335, file: !1, line: 157, type: !3)
!344 = !DILocalVariable(name: "pk", arg: 6, scope: !335, file: !1, line: 157, type: !3)
!345 = !DILocalVariable(name: "sk", arg: 7, scope: !335, file: !1, line: 157, type: !3)
!346 = !DILocation(line: 0, scope: !335)
!347 = !DILocation(line: 158, column: 10, scope: !335)
!348 = !DILocation(line: 158, column: 3, scope: !335)
!349 = !DISubprogram(name: "NaCl_crypto_box_detached", scope: !267, file: !267, line: 94, type: !336, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !34)
!350 = distinct !DISubprogram(name: "crypto_box_open_detached", scope: !1, file: !1, line: 161, type: !336, scopeLine: 161, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !351)
!351 = !{!352, !353, !354, !355, !356, !357, !358}
!352 = !DILocalVariable(name: "m", arg: 1, scope: !350, file: !1, line: 161, type: !3)
!353 = !DILocalVariable(name: "c", arg: 2, scope: !350, file: !1, line: 161, type: !3)
!354 = !DILocalVariable(name: "mac", arg: 3, scope: !350, file: !1, line: 161, type: !3)
!355 = !DILocalVariable(name: "mlen", arg: 4, scope: !350, file: !1, line: 161, type: !56)
!356 = !DILocalVariable(name: "n", arg: 5, scope: !350, file: !1, line: 161, type: !3)
!357 = !DILocalVariable(name: "pk", arg: 6, scope: !350, file: !1, line: 161, type: !3)
!358 = !DILocalVariable(name: "sk", arg: 7, scope: !350, file: !1, line: 161, type: !3)
!359 = !DILocation(line: 0, scope: !350)
!360 = !DILocation(line: 162, column: 10, scope: !350)
!361 = !DILocation(line: 162, column: 3, scope: !350)
!362 = !DISubprogram(name: "NaCl_crypto_box_open_detached", scope: !267, file: !267, line: 105, type: !336, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !34)
!363 = distinct !DISubprogram(name: "crypto_box_open_detached_afternm", scope: !1, file: !1, line: 165, type: !322, scopeLine: 165, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !364)
!364 = !{!365, !366, !367, !368, !369, !370}
!365 = !DILocalVariable(name: "m", arg: 1, scope: !363, file: !1, line: 165, type: !3)
!366 = !DILocalVariable(name: "c", arg: 2, scope: !363, file: !1, line: 165, type: !3)
!367 = !DILocalVariable(name: "mac", arg: 3, scope: !363, file: !1, line: 165, type: !3)
!368 = !DILocalVariable(name: "mlen", arg: 4, scope: !363, file: !1, line: 165, type: !56)
!369 = !DILocalVariable(name: "n", arg: 5, scope: !363, file: !1, line: 165, type: !3)
!370 = !DILocalVariable(name: "k", arg: 6, scope: !363, file: !1, line: 165, type: !3)
!371 = !DILocation(line: 0, scope: !363)
!372 = !DILocation(line: 166, column: 10, scope: !363)
!373 = !DILocation(line: 166, column: 3, scope: !363)
!374 = distinct !DISubprogram(name: "crypto_box", scope: !1, file: !1, line: 170, type: !254, scopeLine: 170, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !375)
!375 = !{!376, !377, !378, !379, !380, !381}
!376 = !DILocalVariable(name: "cipher", arg: 1, scope: !374, file: !1, line: 170, type: !3)
!377 = !DILocalVariable(name: "msg", arg: 2, scope: !374, file: !1, line: 170, type: !168)
!378 = !DILocalVariable(name: "msg_len", arg: 3, scope: !374, file: !1, line: 170, type: !56)
!379 = !DILocalVariable(name: "nonce", arg: 4, scope: !374, file: !1, line: 170, type: !168)
!380 = !DILocalVariable(name: "pk", arg: 5, scope: !374, file: !1, line: 170, type: !168)
!381 = !DILocalVariable(name: "sk", arg: 6, scope: !374, file: !1, line: 170, type: !168)
!382 = !DILocation(line: 0, scope: !374)
!383 = !DILocation(line: 171, column: 58, scope: !374)
!384 = !DILocation(line: 171, column: 10, scope: !374)
!385 = !DILocation(line: 171, column: 3, scope: !374)
!386 = distinct !DISubprogram(name: "crypto_box_open", scope: !1, file: !1, line: 174, type: !254, scopeLine: 174, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !387)
!387 = !{!388, !389, !390, !391, !392, !393}
!388 = !DILocalVariable(name: "msg", arg: 1, scope: !386, file: !1, line: 174, type: !3)
!389 = !DILocalVariable(name: "cipher", arg: 2, scope: !386, file: !1, line: 174, type: !168)
!390 = !DILocalVariable(name: "cipher_len", arg: 3, scope: !386, file: !1, line: 174, type: !56)
!391 = !DILocalVariable(name: "nonce", arg: 4, scope: !386, file: !1, line: 174, type: !168)
!392 = !DILocalVariable(name: "pk", arg: 5, scope: !386, file: !1, line: 174, type: !168)
!393 = !DILocalVariable(name: "sk", arg: 6, scope: !386, file: !1, line: 174, type: !168)
!394 = !DILocation(line: 0, scope: !386)
!395 = !DILocation(line: 175, column: 55, scope: !386)
!396 = !DILocation(line: 175, column: 10, scope: !386)
!397 = !DILocation(line: 175, column: 3, scope: !386)
!398 = distinct !DISubprogram(name: "crypto_box_afternm", scope: !1, file: !1, line: 178, type: !296, scopeLine: 178, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !399)
!399 = !{!400, !401, !402, !403, !404}
!400 = !DILocalVariable(name: "cipher", arg: 1, scope: !398, file: !1, line: 178, type: !3)
!401 = !DILocalVariable(name: "msg", arg: 2, scope: !398, file: !1, line: 178, type: !168)
!402 = !DILocalVariable(name: "msg_len", arg: 3, scope: !398, file: !1, line: 178, type: !56)
!403 = !DILocalVariable(name: "nonce", arg: 4, scope: !398, file: !1, line: 178, type: !168)
!404 = !DILocalVariable(name: "key", arg: 5, scope: !398, file: !1, line: 178, type: !168)
!405 = !DILocation(line: 0, scope: !398)
!406 = !DILocation(line: 179, column: 10, scope: !398)
!407 = !DILocation(line: 179, column: 3, scope: !398)
!408 = distinct !DISubprogram(name: "crypto_box_open_afternm", scope: !1, file: !1, line: 182, type: !296, scopeLine: 182, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !409)
!409 = !{!410, !411, !412, !413, !414}
!410 = !DILocalVariable(name: "msg", arg: 1, scope: !408, file: !1, line: 182, type: !3)
!411 = !DILocalVariable(name: "cipher", arg: 2, scope: !408, file: !1, line: 182, type: !168)
!412 = !DILocalVariable(name: "cipher_len", arg: 3, scope: !408, file: !1, line: 182, type: !56)
!413 = !DILocalVariable(name: "nonce", arg: 4, scope: !408, file: !1, line: 182, type: !168)
!414 = !DILocalVariable(name: "key", arg: 5, scope: !408, file: !1, line: 182, type: !168)
!415 = !DILocation(line: 0, scope: !408)
!416 = !DILocation(line: 183, column: 10, scope: !408)
!417 = !DILocation(line: 183, column: 3, scope: !408)
!418 = distinct !DISubprogram(name: "crypto_hash", scope: !1, file: !1, line: 187, type: !419, scopeLine: 187, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !421)
!419 = !DISubroutineType(types: !420)
!420 = !{!9, !3, !168, !56}
!421 = !{!422, !423, !424}
!422 = !DILocalVariable(name: "output", arg: 1, scope: !418, file: !1, line: 187, type: !3)
!423 = !DILocalVariable(name: "input", arg: 2, scope: !418, file: !1, line: 187, type: !168)
!424 = !DILocalVariable(name: "input_len", arg: 3, scope: !418, file: !1, line: 187, type: !56)
!425 = !DILocation(line: 0, scope: !418)
!426 = !DILocation(line: 188, column: 48, scope: !418)
!427 = !DILocation(line: 188, column: 3, scope: !418)
!428 = !DILocation(line: 189, column: 3, scope: !418)
!429 = !DISubprogram(name: "Hacl_SHA2_256_hash", scope: !430, file: !430, line: 98, type: !154, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !34)
!430 = !DIFile(filename: "hacl-c/hacl-c/Hacl_SHA2_256.h", directory: "/mnt/c/Users/fwill/Documents/HS24/semester_project/tools/binsec/binsec/examples/hacl", checksumkind: CSK_MD5, checksum: "ecaab8545121d26d8982b2edfd3d0b89")
!431 = distinct !DISubprogram(name: "crypto_onetimeauth", scope: !1, file: !1, line: 192, type: !166, scopeLine: 192, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !432)
!432 = !{!433, !434, !435, !436}
!433 = !DILocalVariable(name: "output", arg: 1, scope: !431, file: !1, line: 192, type: !3)
!434 = !DILocalVariable(name: "input", arg: 2, scope: !431, file: !1, line: 192, type: !168)
!435 = !DILocalVariable(name: "input_len", arg: 3, scope: !431, file: !1, line: 192, type: !56)
!436 = !DILocalVariable(name: "key", arg: 4, scope: !431, file: !1, line: 192, type: !168)
!437 = !DILocation(line: 0, scope: !431)
!438 = !DILocation(line: 193, column: 3, scope: !431)
!439 = !DILocation(line: 194, column: 3, scope: !431)
!440 = distinct !DISubprogram(name: "crypto_onetimeauth_verify", scope: !1, file: !1, line: 197, type: !182, scopeLine: 197, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !441)
!441 = !{!442, !443, !444, !445, !446, !450, !451}
!442 = !DILocalVariable(name: "auth", arg: 1, scope: !440, file: !1, line: 197, type: !168)
!443 = !DILocalVariable(name: "input", arg: 2, scope: !440, file: !1, line: 197, type: !168)
!444 = !DILocalVariable(name: "input_len", arg: 3, scope: !440, file: !1, line: 197, type: !56)
!445 = !DILocalVariable(name: "key", arg: 4, scope: !440, file: !1, line: 197, type: !168)
!446 = !DILocalVariable(name: "tag", scope: !440, file: !1, line: 198, type: !447)
!447 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 128, elements: !448)
!448 = !{!449}
!449 = !DISubrange(count: 16)
!450 = !DILocalVariable(name: "tmp", scope: !440, file: !1, line: 198, type: !4)
!451 = !DILocalVariable(name: "i", scope: !452, file: !1, line: 200, type: !9)
!452 = distinct !DILexicalBlock(scope: !440, file: !1, line: 200, column: 3)
!453 = !DILocation(line: 0, scope: !440)
!454 = !DILocation(line: 198, column: 3, scope: !440)
!455 = !DILocation(line: 198, column: 11, scope: !440)
!456 = !DILocation(line: 199, column: 3, scope: !440)
!457 = !DILocation(line: 0, scope: !452)
!458 = !DILocation(line: 200, column: 3, scope: !452)
!459 = !DILocation(line: 203, column: 7, scope: !440)
!460 = !DILocation(line: 204, column: 19, scope: !440)
!461 = !DILocation(line: 205, column: 1, scope: !440)
!462 = !DILocation(line: 204, column: 3, scope: !440)
!463 = !DILocation(line: 201, column: 37, scope: !464)
!464 = distinct !DILexicalBlock(scope: !465, file: !1, line: 200, column: 31)
!465 = distinct !DILexicalBlock(scope: !452, file: !1, line: 200, column: 3)
!466 = !DILocation(line: 201, column: 54, scope: !464)
!467 = !DILocation(line: 201, column: 17, scope: !464)
!468 = !DILocation(line: 201, column: 15, scope: !464)
!469 = !DILocation(line: 200, column: 28, scope: !465)
!470 = !DILocation(line: 200, column: 21, scope: !465)
!471 = distinct !{!471, !458, !472, !220, !221}
!472 = !DILocation(line: 202, column: 3, scope: !452)
!473 = distinct !DISubprogram(name: "crypto_scalarmult_base", scope: !1, file: !1, line: 208, type: !474, scopeLine: 208, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !476)
!474 = !DISubroutineType(types: !475)
!475 = !{!9, !3, !168}
!476 = !{!477, !478, !479}
!477 = !DILocalVariable(name: "q", arg: 1, scope: !473, file: !1, line: 208, type: !3)
!478 = !DILocalVariable(name: "n", arg: 2, scope: !473, file: !1, line: 208, type: !168)
!479 = !DILocalVariable(name: "basepoint", scope: !473, file: !1, line: 210, type: !190)
!480 = !DILocation(line: 0, scope: !473)
!481 = !DILocation(line: 210, column: 3, scope: !473)
!482 = !DILocation(line: 210, column: 11, scope: !473)
!483 = !DILocation(line: 211, column: 3, scope: !473)
!484 = !DILocation(line: 213, column: 1, scope: !473)
!485 = !DILocation(line: 212, column: 3, scope: !473)
!486 = distinct !DISubprogram(name: "crypto_scalarmult", scope: !1, file: !1, line: 215, type: !283, scopeLine: 215, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !487)
!487 = !{!488, !489, !490}
!488 = !DILocalVariable(name: "q", arg: 1, scope: !486, file: !1, line: 215, type: !3)
!489 = !DILocalVariable(name: "n", arg: 2, scope: !486, file: !1, line: 215, type: !168)
!490 = !DILocalVariable(name: "p", arg: 3, scope: !486, file: !1, line: 215, type: !168)
!491 = !DILocation(line: 0, scope: !486)
!492 = !DILocation(line: 216, column: 3, scope: !486)
!493 = !DILocation(line: 217, column: 3, scope: !486)
!494 = distinct !DISubprogram(name: "crypto_secretbox_detached", scope: !1, file: !1, line: 221, type: !322, scopeLine: 221, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !495)
!495 = !{!496, !497, !498, !499, !500, !501}
!496 = !DILocalVariable(name: "c", arg: 1, scope: !494, file: !1, line: 221, type: !3)
!497 = !DILocalVariable(name: "mac", arg: 2, scope: !494, file: !1, line: 221, type: !3)
!498 = !DILocalVariable(name: "m", arg: 3, scope: !494, file: !1, line: 221, type: !3)
!499 = !DILocalVariable(name: "mlen", arg: 4, scope: !494, file: !1, line: 221, type: !56)
!500 = !DILocalVariable(name: "n", arg: 5, scope: !494, file: !1, line: 221, type: !3)
!501 = !DILocalVariable(name: "k", arg: 6, scope: !494, file: !1, line: 221, type: !3)
!502 = !DILocation(line: 0, scope: !494)
!503 = !DILocation(line: 222, column: 10, scope: !494)
!504 = !DILocation(line: 222, column: 3, scope: !494)
!505 = !DISubprogram(name: "NaCl_crypto_secretbox_detached", scope: !267, file: !267, line: 50, type: !322, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !34)
!506 = distinct !DISubprogram(name: "crypto_secretbox_open_detached", scope: !1, file: !1, line: 225, type: !322, scopeLine: 225, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !507)
!507 = !{!508, !509, !510, !511, !512, !513}
!508 = !DILocalVariable(name: "m", arg: 1, scope: !506, file: !1, line: 225, type: !3)
!509 = !DILocalVariable(name: "c", arg: 2, scope: !506, file: !1, line: 225, type: !3)
!510 = !DILocalVariable(name: "mac", arg: 3, scope: !506, file: !1, line: 225, type: !3)
!511 = !DILocalVariable(name: "clen", arg: 4, scope: !506, file: !1, line: 225, type: !56)
!512 = !DILocalVariable(name: "n", arg: 5, scope: !506, file: !1, line: 225, type: !3)
!513 = !DILocalVariable(name: "k", arg: 6, scope: !506, file: !1, line: 225, type: !3)
!514 = !DILocation(line: 0, scope: !506)
!515 = !DILocation(line: 226, column: 10, scope: !506)
!516 = !DILocation(line: 226, column: 3, scope: !506)
!517 = !DISubprogram(name: "NaCl_crypto_secretbox_open_detached", scope: !267, file: !267, line: 60, type: !322, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !34)
!518 = distinct !DISubprogram(name: "crypto_secretbox_easy", scope: !1, file: !1, line: 229, type: !308, scopeLine: 229, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !519)
!519 = !{!520, !521, !522, !523, !524}
!520 = !DILocalVariable(name: "c", arg: 1, scope: !518, file: !1, line: 229, type: !3)
!521 = !DILocalVariable(name: "m", arg: 2, scope: !518, file: !1, line: 229, type: !3)
!522 = !DILocalVariable(name: "mlen", arg: 3, scope: !518, file: !1, line: 229, type: !56)
!523 = !DILocalVariable(name: "n", arg: 4, scope: !518, file: !1, line: 229, type: !3)
!524 = !DILocalVariable(name: "k", arg: 5, scope: !518, file: !1, line: 229, type: !3)
!525 = !DILocation(line: 0, scope: !518)
!526 = !DILocation(line: 230, column: 10, scope: !518)
!527 = !DILocation(line: 230, column: 3, scope: !518)
!528 = !DISubprogram(name: "NaCl_crypto_secretbox_easy", scope: !267, file: !267, line: 70, type: !308, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !34)
!529 = distinct !DISubprogram(name: "crypto_secretbox_open_easy", scope: !1, file: !1, line: 233, type: !308, scopeLine: 233, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !530)
!530 = !{!531, !532, !533, !534, !535}
!531 = !DILocalVariable(name: "m", arg: 1, scope: !529, file: !1, line: 233, type: !3)
!532 = !DILocalVariable(name: "c", arg: 2, scope: !529, file: !1, line: 233, type: !3)
!533 = !DILocalVariable(name: "clen", arg: 3, scope: !529, file: !1, line: 233, type: !56)
!534 = !DILocalVariable(name: "n", arg: 4, scope: !529, file: !1, line: 233, type: !3)
!535 = !DILocalVariable(name: "k", arg: 5, scope: !529, file: !1, line: 233, type: !3)
!536 = !DILocation(line: 0, scope: !529)
!537 = !DILocation(line: 234, column: 10, scope: !529)
!538 = !DILocation(line: 234, column: 3, scope: !529)
!539 = !DISubprogram(name: "NaCl_crypto_secretbox_open_easy", scope: !267, file: !267, line: 73, type: !308, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !34)
!540 = distinct !DISubprogram(name: "crypto_secretbox", scope: !1, file: !1, line: 237, type: !296, scopeLine: 237, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !541)
!541 = !{!542, !543, !544, !545, !546}
!542 = !DILocalVariable(name: "cipher", arg: 1, scope: !540, file: !1, line: 237, type: !3)
!543 = !DILocalVariable(name: "msg", arg: 2, scope: !540, file: !1, line: 237, type: !168)
!544 = !DILocalVariable(name: "msg_len", arg: 3, scope: !540, file: !1, line: 237, type: !56)
!545 = !DILocalVariable(name: "nonce", arg: 4, scope: !540, file: !1, line: 237, type: !168)
!546 = !DILocalVariable(name: "key", arg: 5, scope: !540, file: !1, line: 237, type: !168)
!547 = !DILocation(line: 0, scope: !540)
!548 = !DILocation(line: 238, column: 64, scope: !540)
!549 = !DILocation(line: 238, column: 10, scope: !540)
!550 = !DILocation(line: 238, column: 3, scope: !540)
!551 = distinct !DISubprogram(name: "crypto_secretbox_open", scope: !1, file: !1, line: 241, type: !296, scopeLine: 241, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !552)
!552 = !{!553, !554, !555, !556, !557}
!553 = !DILocalVariable(name: "msg", arg: 1, scope: !551, file: !1, line: 241, type: !3)
!554 = !DILocalVariable(name: "cipher", arg: 2, scope: !551, file: !1, line: 241, type: !168)
!555 = !DILocalVariable(name: "cipher_len", arg: 3, scope: !551, file: !1, line: 241, type: !56)
!556 = !DILocalVariable(name: "nonce", arg: 4, scope: !551, file: !1, line: 241, type: !168)
!557 = !DILocalVariable(name: "key", arg: 5, scope: !551, file: !1, line: 241, type: !168)
!558 = !DILocation(line: 0, scope: !551)
!559 = !DILocation(line: 242, column: 83, scope: !551)
!560 = !DILocation(line: 242, column: 100, scope: !551)
!561 = !DILocation(line: 242, column: 10, scope: !551)
!562 = !DILocation(line: 242, column: 3, scope: !551)
!563 = distinct !DISubprogram(name: "crypto_sign", scope: !1, file: !1, line: 246, type: !564, scopeLine: 246, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !567)
!564 = !DISubroutineType(types: !565)
!565 = !{!9, !3, !566, !168, !56, !168}
!566 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !56, size: 32)
!567 = !{!568, !569, !570, !571, !572}
!568 = !DILocalVariable(name: "signed_msg", arg: 1, scope: !563, file: !1, line: 246, type: !3)
!569 = !DILocalVariable(name: "signed_len", arg: 2, scope: !563, file: !1, line: 246, type: !566)
!570 = !DILocalVariable(name: "msg", arg: 3, scope: !563, file: !1, line: 246, type: !168)
!571 = !DILocalVariable(name: "msg_len", arg: 4, scope: !563, file: !1, line: 246, type: !56)
!572 = !DILocalVariable(name: "sk", arg: 5, scope: !563, file: !1, line: 246, type: !168)
!573 = !DILocation(line: 0, scope: !563)
!574 = !DILocation(line: 247, column: 64, scope: !563)
!575 = !DILocation(line: 247, column: 3, scope: !563)
!576 = !DILocation(line: 248, column: 21, scope: !563)
!577 = !DILocation(line: 248, column: 3, scope: !563)
!578 = !DILocation(line: 249, column: 25, scope: !563)
!579 = !DILocation(line: 249, column: 15, scope: !563)
!580 = !{!581, !581, i64 0}
!581 = !{!"long long", !211, i64 0}
!582 = !DILocation(line: 250, column: 3, scope: !563)
!583 = distinct !DISubprogram(name: "crypto_sign_open", scope: !1, file: !1, line: 253, type: !564, scopeLine: 253, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !584)
!584 = !{!585, !586, !587, !588, !589, !590}
!585 = !DILocalVariable(name: "unsigned_msg", arg: 1, scope: !583, file: !1, line: 253, type: !3)
!586 = !DILocalVariable(name: "unsigned_msg_len", arg: 2, scope: !583, file: !1, line: 253, type: !566)
!587 = !DILocalVariable(name: "msg", arg: 3, scope: !583, file: !1, line: 253, type: !168)
!588 = !DILocalVariable(name: "msg_len", arg: 4, scope: !583, file: !1, line: 253, type: !56)
!589 = !DILocalVariable(name: "pk", arg: 5, scope: !583, file: !1, line: 253, type: !168)
!590 = !DILocalVariable(name: "res", scope: !583, file: !1, line: 254, type: !38)
!591 = !DILocation(line: 0, scope: !583)
!592 = !DILocation(line: 255, column: 58, scope: !583)
!593 = !DILocation(line: 255, column: 71, scope: !583)
!594 = !DILocation(line: 255, column: 63, scope: !583)
!595 = !DILocation(line: 255, column: 9, scope: !583)
!596 = !DILocation(line: 256, column: 7, scope: !583)
!597 = !DILocation(line: 257, column: 5, scope: !598)
!598 = distinct !DILexicalBlock(scope: !599, file: !1, line: 256, column: 11)
!599 = distinct !DILexicalBlock(scope: !583, file: !1, line: 256, column: 7)
!600 = !DILocation(line: 258, column: 23, scope: !598)
!601 = !DILocation(line: 259, column: 5, scope: !598)
!602 = !DILocation(line: 0, scope: !599)
!603 = !DILocation(line: 263, column: 1, scope: !583)
!604 = distinct !DISubprogram(name: "crypto_sign_keypair", scope: !1, file: !1, line: 265, type: !237, scopeLine: 265, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !605)
!605 = !{!606, !607, !608}
!606 = !DILocalVariable(name: "pk", arg: 1, scope: !604, file: !1, line: 265, type: !3)
!607 = !DILocalVariable(name: "sk", arg: 2, scope: !604, file: !1, line: 265, type: !3)
!608 = !DILocalVariable(name: "i", scope: !609, file: !1, line: 268, type: !9)
!609 = distinct !DILexicalBlock(scope: !604, file: !1, line: 268, column: 3)
!610 = !DILocation(line: 0, scope: !604)
!611 = !DILocation(line: 266, column: 3, scope: !604)
!612 = !DILocation(line: 267, column: 3, scope: !604)
!613 = !DILocation(line: 0, scope: !609)
!614 = !DILocation(line: 268, column: 3, scope: !609)
!615 = !DILocation(line: 269, column: 3, scope: !604)
!616 = !DILocation(line: 268, column: 43, scope: !617)
!617 = distinct !DILexicalBlock(scope: !609, file: !1, line: 268, column: 3)
!618 = !DILocation(line: 268, column: 37, scope: !617)
!619 = !DILocation(line: 268, column: 32, scope: !617)
!620 = !DILocation(line: 268, column: 41, scope: !617)
!621 = !DILocation(line: 268, column: 28, scope: !617)
!622 = !DILocation(line: 268, column: 21, scope: !617)
!623 = distinct !{!623, !614, !624, !220, !221}
!624 = !DILocation(line: 268, column: 47, scope: !609)
!625 = distinct !DISubprogram(name: "crypto_sign_secret_to_public", scope: !1, file: !1, line: 272, type: !237, scopeLine: 272, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !626)
!626 = !{!627, !628}
!627 = !DILocalVariable(name: "public_key", arg: 1, scope: !625, file: !1, line: 272, type: !3)
!628 = !DILocalVariable(name: "secret_key", arg: 2, scope: !625, file: !1, line: 272, type: !3)
!629 = !DILocation(line: 0, scope: !625)
!630 = !DILocation(line: 273, column: 3, scope: !625)
!631 = !DILocation(line: 274, column: 3, scope: !625)
!632 = distinct !DISubprogram(name: "crypto_stream", scope: !1, file: !1, line: 278, type: !633, scopeLine: 278, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !635)
!633 = !DISubroutineType(types: !634)
!634 = !{!9, !3, !56, !168, !168}
!635 = !{!636, !637, !638, !639, !640}
!636 = !DILocalVariable(name: "cipher", arg: 1, scope: !632, file: !1, line: 278, type: !3)
!637 = !DILocalVariable(name: "cipher_len", arg: 2, scope: !632, file: !1, line: 278, type: !56)
!638 = !DILocalVariable(name: "nonce", arg: 3, scope: !632, file: !1, line: 278, type: !168)
!639 = !DILocalVariable(name: "key", arg: 4, scope: !632, file: !1, line: 278, type: !168)
!640 = !DILocalVariable(name: "subkey", scope: !632, file: !1, line: 279, type: !190)
!641 = !DILocation(line: 0, scope: !632)
!642 = !DILocation(line: 279, column: 3, scope: !632)
!643 = !DILocation(line: 279, column: 11, scope: !632)
!644 = !DILocation(line: 280, column: 21, scope: !632)
!645 = !DILocation(line: 280, column: 3, scope: !632)
!646 = !DILocation(line: 281, column: 3, scope: !632)
!647 = !DILocation(line: 282, column: 77, scope: !632)
!648 = !DILocation(line: 282, column: 3, scope: !632)
!649 = !DILocation(line: 284, column: 1, scope: !632)
!650 = !DILocation(line: 283, column: 3, scope: !632)
!651 = !DISubprogram(name: "Hacl_Salsa20_hsalsa20", scope: !70, file: !70, line: 83, type: !23, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !34)
!652 = distinct !DISubprogram(name: "crypto_stream_xor", scope: !1, file: !1, line: 286, type: !296, scopeLine: 286, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !653)
!653 = !{!654, !655, !656, !657, !658, !659}
!654 = !DILocalVariable(name: "cipher", arg: 1, scope: !652, file: !1, line: 286, type: !3)
!655 = !DILocalVariable(name: "msg", arg: 2, scope: !652, file: !1, line: 286, type: !168)
!656 = !DILocalVariable(name: "cipher_len", arg: 3, scope: !652, file: !1, line: 286, type: !56)
!657 = !DILocalVariable(name: "nonce", arg: 4, scope: !652, file: !1, line: 286, type: !168)
!658 = !DILocalVariable(name: "key", arg: 5, scope: !652, file: !1, line: 286, type: !168)
!659 = !DILocalVariable(name: "subkey", scope: !652, file: !1, line: 287, type: !190)
!660 = !DILocation(line: 0, scope: !652)
!661 = !DILocation(line: 287, column: 3, scope: !652)
!662 = !DILocation(line: 287, column: 11, scope: !652)
!663 = !DILocation(line: 288, column: 21, scope: !652)
!664 = !DILocation(line: 288, column: 3, scope: !652)
!665 = !DILocation(line: 289, column: 3, scope: !652)
!666 = !DILocation(line: 290, column: 85, scope: !652)
!667 = !DILocation(line: 290, column: 3, scope: !652)
!668 = !DILocation(line: 292, column: 1, scope: !652)
!669 = !DILocation(line: 291, column: 3, scope: !652)
