; ModuleID = 'hacl-c/hacl-c/haclnacl.c'
source_filename = "hacl-c/hacl-c/haclnacl.c"
target datalayout = "e-m:e-p:32:32-p270:32:32-p271:32:32-p272:64:64-f64:32:64-f80:32-n8:16:32-S128"
target triple = "i386-pc-linux-gnu"

@__const.crypto_scalarmult_base.basepoint = private unnamed_addr constant <{ i8, [31 x i8] }> <{ i8 9, [31 x i8] zeroinitializer }>, align 1

; Function Attrs: nounwind uwtable
define dso_local void @curve25519_scalarmult(i8* noundef %0, i8* noundef %1, i8* noundef %2) local_unnamed_addr #0 !dbg !22 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !26, metadata !DIExpression()), !dbg !29
  call void @llvm.dbg.value(metadata i8* %1, metadata !27, metadata !DIExpression()), !dbg !29
  call void @llvm.dbg.value(metadata i8* %2, metadata !28, metadata !DIExpression()), !dbg !29
  call void @Hacl_Curve25519_crypto_scalarmult(i8* noundef %0, i8* noundef %1, i8* noundef %2) #7, !dbg !30
  ret void, !dbg !31
}

; Function Attrs: mustprogress nofree nosync nounwind readnone speculatable willreturn
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

declare !dbg !32 void @Hacl_Curve25519_crypto_scalarmult(i8* noundef, i8* noundef, i8* noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local void @chacha20(i8* noundef %0, i8* noundef %1, i32 noundef %2, i8* noundef %3, i8* noundef %4, i32 noundef %5) local_unnamed_addr #0 !dbg !35 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !42, metadata !DIExpression()), !dbg !48
  call void @llvm.dbg.value(metadata i8* %1, metadata !43, metadata !DIExpression()), !dbg !48
  call void @llvm.dbg.value(metadata i32 %2, metadata !44, metadata !DIExpression()), !dbg !48
  call void @llvm.dbg.value(metadata i8* %3, metadata !45, metadata !DIExpression()), !dbg !48
  call void @llvm.dbg.value(metadata i8* %4, metadata !46, metadata !DIExpression()), !dbg !48
  call void @llvm.dbg.value(metadata i32 %5, metadata !47, metadata !DIExpression()), !dbg !48
  call void @Hacl_Chacha20_chacha20(i8* noundef %0, i8* noundef %1, i32 noundef %2, i8* noundef %3, i8* noundef %4, i32 noundef %5) #7, !dbg !49
  ret void, !dbg !50
}

declare !dbg !51 void @Hacl_Chacha20_chacha20(i8* noundef, i8* noundef, i32 noundef, i8* noundef, i8* noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local void @salsa20(i8* noundef %0, i8* noundef %1, i32 noundef %2, i8* noundef %3, i8* noundef %4, i64 noundef %5) local_unnamed_addr #0 !dbg !53 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !60, metadata !DIExpression()), !dbg !66
  call void @llvm.dbg.value(metadata i8* %1, metadata !61, metadata !DIExpression()), !dbg !66
  call void @llvm.dbg.value(metadata i32 %2, metadata !62, metadata !DIExpression()), !dbg !66
  call void @llvm.dbg.value(metadata i8* %3, metadata !63, metadata !DIExpression()), !dbg !66
  call void @llvm.dbg.value(metadata i8* %4, metadata !64, metadata !DIExpression()), !dbg !66
  call void @llvm.dbg.value(metadata i64 %5, metadata !65, metadata !DIExpression()), !dbg !66
  call void @Hacl_Salsa20_salsa20(i8* noundef %0, i8* noundef %1, i32 noundef %2, i8* noundef %3, i8* noundef %4, i64 noundef %5) #7, !dbg !67
  ret void, !dbg !68
}

declare !dbg !69 void @Hacl_Salsa20_salsa20(i8* noundef, i8* noundef, i32 noundef, i8* noundef, i8* noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local void @poly1305_onetimeauth(i8* noundef %0, i8* noundef %1, i64 noundef %2, i8* noundef %3) local_unnamed_addr #0 !dbg !71 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !75, metadata !DIExpression()), !dbg !79
  call void @llvm.dbg.value(metadata i8* %1, metadata !76, metadata !DIExpression()), !dbg !79
  call void @llvm.dbg.value(metadata i64 %2, metadata !77, metadata !DIExpression()), !dbg !79
  call void @llvm.dbg.value(metadata i8* %3, metadata !78, metadata !DIExpression()), !dbg !79
  call void @Hacl_Poly1305_64_crypto_onetimeauth(i8* noundef %0, i8* noundef %1, i64 noundef %2, i8* noundef %3) #7, !dbg !80
  ret void, !dbg !81
}

declare !dbg !82 void @Hacl_Poly1305_64_crypto_onetimeauth(i8* noundef, i8* noundef, i64 noundef, i8* noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local i32 @aead_chacha20_poly1305_encrypt(i8* noundef %0, i8* noundef %1, i8* noundef %2, i32 noundef %3, i8* noundef %4, i32 noundef %5, i8* noundef %6, i8* noundef %7) local_unnamed_addr #0 !dbg !84 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !88, metadata !DIExpression()), !dbg !96
  call void @llvm.dbg.value(metadata i8* %1, metadata !89, metadata !DIExpression()), !dbg !96
  call void @llvm.dbg.value(metadata i8* %2, metadata !90, metadata !DIExpression()), !dbg !96
  call void @llvm.dbg.value(metadata i32 %3, metadata !91, metadata !DIExpression()), !dbg !96
  call void @llvm.dbg.value(metadata i8* %4, metadata !92, metadata !DIExpression()), !dbg !96
  call void @llvm.dbg.value(metadata i32 %5, metadata !93, metadata !DIExpression()), !dbg !96
  call void @llvm.dbg.value(metadata i8* %6, metadata !94, metadata !DIExpression()), !dbg !96
  call void @llvm.dbg.value(metadata i8* %7, metadata !95, metadata !DIExpression()), !dbg !96
  %9 = call i32 @Hacl_Chacha20Poly1305_aead_encrypt(i8* noundef %0, i8* noundef %1, i8* noundef %2, i32 noundef %3, i8* noundef %4, i32 noundef %5, i8* noundef %6, i8* noundef %7) #7, !dbg !97
  ret i32 %9, !dbg !98
}

declare !dbg !99 i32 @Hacl_Chacha20Poly1305_aead_encrypt(i8* noundef, i8* noundef, i8* noundef, i32 noundef, i8* noundef, i32 noundef, i8* noundef, i8* noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local i32 @aead_chacha20_poly1305_decrypt(i8* noundef %0, i8* noundef %1, i32 noundef %2, i8* noundef %3, i8* noundef %4, i32 noundef %5, i8* noundef %6, i8* noundef %7) local_unnamed_addr #0 !dbg !101 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !105, metadata !DIExpression()), !dbg !113
  call void @llvm.dbg.value(metadata i8* %1, metadata !106, metadata !DIExpression()), !dbg !113
  call void @llvm.dbg.value(metadata i32 %2, metadata !107, metadata !DIExpression()), !dbg !113
  call void @llvm.dbg.value(metadata i8* %3, metadata !108, metadata !DIExpression()), !dbg !113
  call void @llvm.dbg.value(metadata i8* %4, metadata !109, metadata !DIExpression()), !dbg !113
  call void @llvm.dbg.value(metadata i32 %5, metadata !110, metadata !DIExpression()), !dbg !113
  call void @llvm.dbg.value(metadata i8* %6, metadata !111, metadata !DIExpression()), !dbg !113
  call void @llvm.dbg.value(metadata i8* %7, metadata !112, metadata !DIExpression()), !dbg !113
  %9 = call i32 @Hacl_Chacha20Poly1305_aead_decrypt(i8* noundef %0, i8* noundef %1, i32 noundef %2, i8* noundef %3, i8* noundef %4, i32 noundef %5, i8* noundef %6, i8* noundef %7) #7, !dbg !114
  ret i32 %9, !dbg !115
}

declare !dbg !116 i32 @Hacl_Chacha20Poly1305_aead_decrypt(i8* noundef, i8* noundef, i32 noundef, i8* noundef, i8* noundef, i32 noundef, i8* noundef, i8* noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local void @ed25519_secret_to_public(i8* noundef %0, i8* noundef %1) local_unnamed_addr #0 !dbg !117 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !121, metadata !DIExpression()), !dbg !123
  call void @llvm.dbg.value(metadata i8* %1, metadata !122, metadata !DIExpression()), !dbg !123
  call void @Hacl_Ed25519_secret_to_public(i8* noundef %0, i8* noundef %1) #7, !dbg !124
  ret void, !dbg !125
}

declare !dbg !126 void @Hacl_Ed25519_secret_to_public(i8* noundef, i8* noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local void @ed25519_sign(i8* noundef %0, i8* noundef %1, i8* noundef %2, i32 noundef %3) local_unnamed_addr #0 !dbg !128 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !132, metadata !DIExpression()), !dbg !136
  call void @llvm.dbg.value(metadata i8* %1, metadata !133, metadata !DIExpression()), !dbg !136
  call void @llvm.dbg.value(metadata i8* %2, metadata !134, metadata !DIExpression()), !dbg !136
  call void @llvm.dbg.value(metadata i32 %3, metadata !135, metadata !DIExpression()), !dbg !136
  call void @Hacl_Ed25519_sign(i8* noundef %0, i8* noundef %1, i8* noundef %2, i32 noundef %3) #7, !dbg !137
  ret void, !dbg !138
}

declare !dbg !139 void @Hacl_Ed25519_sign(i8* noundef, i8* noundef, i8* noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local zeroext i1 @ed25519_verify(i8* noundef %0, i8* noundef %1, i32 noundef %2, i8* noundef %3) local_unnamed_addr #0 !dbg !140 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !145, metadata !DIExpression()), !dbg !149
  call void @llvm.dbg.value(metadata i8* %1, metadata !146, metadata !DIExpression()), !dbg !149
  call void @llvm.dbg.value(metadata i32 %2, metadata !147, metadata !DIExpression()), !dbg !149
  call void @llvm.dbg.value(metadata i8* %3, metadata !148, metadata !DIExpression()), !dbg !149
  %5 = call zeroext i1 @Hacl_Ed25519_verify(i8* noundef %0, i8* noundef %1, i32 noundef %2, i8* noundef %3) #7, !dbg !150
  ret i1 %5, !dbg !151
}

declare !dbg !152 zeroext i1 @Hacl_Ed25519_verify(i8* noundef, i8* noundef, i32 noundef, i8* noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local void @sha2_512_hash(i8* noundef %0, i8* noundef %1, i32 noundef %2) local_unnamed_addr #0 !dbg !153 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !157, metadata !DIExpression()), !dbg !160
  call void @llvm.dbg.value(metadata i8* %1, metadata !158, metadata !DIExpression()), !dbg !160
  call void @llvm.dbg.value(metadata i32 %2, metadata !159, metadata !DIExpression()), !dbg !160
  call void @Hacl_SHA2_512_hash(i8* noundef %0, i8* noundef %1, i32 noundef %2) #7, !dbg !161
  ret void, !dbg !162
}

declare !dbg !163 void @Hacl_SHA2_512_hash(i8* noundef, i8* noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local i32 @crypto_auth(i8* noundef %0, i8* noundef %1, i64 noundef %2, i8* noundef %3) local_unnamed_addr #0 !dbg !165 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !171, metadata !DIExpression()), !dbg !175
  call void @llvm.dbg.value(metadata i8* %1, metadata !172, metadata !DIExpression()), !dbg !175
  call void @llvm.dbg.value(metadata i64 %2, metadata !173, metadata !DIExpression()), !dbg !175
  call void @llvm.dbg.value(metadata i8* %3, metadata !174, metadata !DIExpression()), !dbg !175
  %5 = trunc i64 %2 to i32, !dbg !176
  call void @Hacl_HMAC_SHA2_256_hmac_core(i8* noundef %0, i8* noundef %3, i8* noundef %1, i32 noundef %5) #7, !dbg !177
  ret i32 0, !dbg !178
}

declare !dbg !179 void @Hacl_HMAC_SHA2_256_hmac_core(i8* noundef, i8* noundef, i8* noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local i32 @crypto_auth_verify(i8* nocapture noundef readonly %0, i8* noundef %1, i64 noundef %2, i8* noundef %3) local_unnamed_addr #0 !dbg !181 {
  %5 = alloca [32 x i8], align 1
  call void @llvm.dbg.value(metadata i8* %0, metadata !185, metadata !DIExpression()), !dbg !196
  call void @llvm.dbg.value(metadata i8* %1, metadata !186, metadata !DIExpression()), !dbg !196
  call void @llvm.dbg.value(metadata i64 %2, metadata !187, metadata !DIExpression()), !dbg !196
  call void @llvm.dbg.value(metadata i8* %3, metadata !188, metadata !DIExpression()), !dbg !196
  %6 = getelementptr inbounds [32 x i8], [32 x i8]* %5, i32 0, i32 0, !dbg !197
  call void @llvm.lifetime.start.p0i8(i64 32, i8* nonnull %6) #7, !dbg !197
  call void @llvm.dbg.declare(metadata [32 x i8]* %5, metadata !189, metadata !DIExpression()), !dbg !198
  call void @llvm.dbg.value(metadata i8 -1, metadata !193, metadata !DIExpression()), !dbg !196
  %7 = trunc i64 %2 to i32, !dbg !199
  call void @Hacl_HMAC_SHA2_256_hmac_core(i8* noundef nonnull %6, i8* noundef %3, i8* noundef %1, i32 noundef %7) #7, !dbg !200
  call void @llvm.dbg.value(metadata i32 0, metadata !194, metadata !DIExpression()), !dbg !201
  call void @llvm.dbg.value(metadata i8 undef, metadata !193, metadata !DIExpression()), !dbg !196
  br label %11, !dbg !202

8:                                                ; preds = %11
  %9 = lshr i32 %28, 7, !dbg !203
  call void @llvm.dbg.value(metadata i32 %9, metadata !193, metadata !DIExpression()), !dbg !196
  %10 = add nsw i32 %9, -1, !dbg !204
  call void @llvm.lifetime.end.p0i8(i64 32, i8* nonnull %6) #7, !dbg !205
  ret i32 %10, !dbg !206

11:                                               ; preds = %4, %11
  %12 = phi i32 [ 0, %4 ], [ %29, %11 ]
  %13 = phi i32 [ 255, %4 ], [ %28, %11 ]
  call void @llvm.dbg.value(metadata i32 %12, metadata !194, metadata !DIExpression()), !dbg !201
  %14 = getelementptr inbounds i8, i8* %0, i32 %12, !dbg !207
  %15 = load i8, i8* %14, align 1, !dbg !207, !tbaa !210
  %16 = getelementptr inbounds [32 x i8], [32 x i8]* %5, i32 0, i32 %12, !dbg !213
  %17 = load i8, i8* %16, align 1, !dbg !213, !tbaa !210
  call void @llvm.dbg.value(metadata i8 %15, metadata !214, metadata !DIExpression()), !dbg !221
  call void @llvm.dbg.value(metadata i8 %17, metadata !220, metadata !DIExpression()), !dbg !221
  %18 = xor i8 %15, %17, !dbg !223
  %19 = xor i8 %18, -1, !dbg !223
  call void @llvm.dbg.value(metadata i8 %19, metadata !214, metadata !DIExpression()), !dbg !221
  %20 = shl i8 %19, 4, !dbg !224
  %21 = and i8 %20, %19, !dbg !224
  call void @llvm.dbg.value(metadata i8 %21, metadata !214, metadata !DIExpression()), !dbg !221
  %22 = shl i8 %21, 2, !dbg !225
  %23 = and i8 %22, %21, !dbg !225
  call void @llvm.dbg.value(metadata i8 %23, metadata !214, metadata !DIExpression()), !dbg !221
  %24 = shl i8 %23, 1, !dbg !226
  %25 = and i8 %24, %23, !dbg !226
  call void @llvm.dbg.value(metadata i8 %25, metadata !214, metadata !DIExpression()), !dbg !221
  %26 = ashr exact i8 %25, 7, !dbg !227
  %27 = zext i8 %26 to i32, !dbg !228
  %28 = and i32 %13, %27, !dbg !229
  call void @llvm.dbg.value(metadata i32 %28, metadata !193, metadata !DIExpression(DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !196
  %29 = add nuw nsw i32 %12, 1, !dbg !230
  call void @llvm.dbg.value(metadata i32 %29, metadata !194, metadata !DIExpression()), !dbg !201
  call void @llvm.dbg.value(metadata i8 undef, metadata !193, metadata !DIExpression()), !dbg !196
  %30 = icmp eq i32 %29, 32, !dbg !231
  br i1 %30, label %8, label %11, !dbg !202, !llvm.loop !232
}

; Function Attrs: argmemonly mustprogress nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0i8(i64 immarg, i8* nocapture) #3

; Function Attrs: argmemonly mustprogress nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0i8(i64 immarg, i8* nocapture) #3

; Function Attrs: nounwind uwtable
define dso_local i32 @crypto_box_keypair(i8* noundef %0, i8* noundef %1) local_unnamed_addr #0 !dbg !236 {
  %3 = alloca [32 x i8], align 1
  call void @llvm.dbg.value(metadata i8* %0, metadata !240, metadata !DIExpression()), !dbg !243
  call void @llvm.dbg.value(metadata i8* %1, metadata !241, metadata !DIExpression()), !dbg !243
  call void @randombytes(i8* noundef %1, i64 noundef 32) #7, !dbg !244
  %4 = getelementptr inbounds [32 x i8], [32 x i8]* %3, i32 0, i32 0, !dbg !245
  call void @llvm.lifetime.start.p0i8(i64 32, i8* nonnull %4) #7, !dbg !245
  call void @llvm.dbg.declare(metadata [32 x i8]* %3, metadata !242, metadata !DIExpression()), !dbg !246
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* noundef nonnull align 1 dereferenceable(32) %4, i8* noundef nonnull align 1 dereferenceable(32) getelementptr inbounds (<{ i8, [31 x i8] }>, <{ i8, [31 x i8] }>* @__const.crypto_scalarmult_base.basepoint, i32 0, i32 0), i32 32, i1 false), !dbg !246
  call void @llvm.dbg.value(metadata i8* %0, metadata !26, metadata !DIExpression()) #7, !dbg !247
  call void @llvm.dbg.value(metadata i8* %1, metadata !27, metadata !DIExpression()) #7, !dbg !247
  call void @llvm.dbg.value(metadata i8* %4, metadata !28, metadata !DIExpression()) #7, !dbg !247
  call void @Hacl_Curve25519_crypto_scalarmult(i8* noundef %0, i8* noundef %1, i8* noundef nonnull %4) #7, !dbg !249
  call void @llvm.lifetime.end.p0i8(i64 32, i8* nonnull %4) #7, !dbg !250
  ret i32 0, !dbg !251
}

declare !dbg !252 void @randombytes(i8* noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: argmemonly mustprogress nofree nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i32(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i32, i1 immarg) #4

; Function Attrs: nounwind uwtable
define dso_local i32 @crypto_box_easy(i8* noundef %0, i8* noundef %1, i64 noundef %2, i8* noundef %3, i8* noundef %4, i8* noundef %5) local_unnamed_addr #0 !dbg !255 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !259, metadata !DIExpression()), !dbg !265
  call void @llvm.dbg.value(metadata i8* %1, metadata !260, metadata !DIExpression()), !dbg !265
  call void @llvm.dbg.value(metadata i64 %2, metadata !261, metadata !DIExpression()), !dbg !265
  call void @llvm.dbg.value(metadata i8* %3, metadata !262, metadata !DIExpression()), !dbg !265
  call void @llvm.dbg.value(metadata i8* %4, metadata !263, metadata !DIExpression()), !dbg !265
  call void @llvm.dbg.value(metadata i8* %5, metadata !264, metadata !DIExpression()), !dbg !265
  %7 = call i32 @NaCl_crypto_box_easy(i8* noundef %0, i8* noundef %1, i64 noundef %2, i8* noundef %3, i8* noundef %4, i8* noundef %5) #7, !dbg !266
  ret i32 %7, !dbg !267
}

declare !dbg !268 i32 @NaCl_crypto_box_easy(i8* noundef, i8* noundef, i64 noundef, i8* noundef, i8* noundef, i8* noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local i32 @crypto_box_open_easy(i8* noundef %0, i8* noundef %1, i64 noundef %2, i8* noundef %3, i8* noundef %4, i8* noundef %5) local_unnamed_addr #0 !dbg !272 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !274, metadata !DIExpression()), !dbg !280
  call void @llvm.dbg.value(metadata i8* %1, metadata !275, metadata !DIExpression()), !dbg !280
  call void @llvm.dbg.value(metadata i64 %2, metadata !276, metadata !DIExpression()), !dbg !280
  call void @llvm.dbg.value(metadata i8* %3, metadata !277, metadata !DIExpression()), !dbg !280
  call void @llvm.dbg.value(metadata i8* %4, metadata !278, metadata !DIExpression()), !dbg !280
  call void @llvm.dbg.value(metadata i8* %5, metadata !279, metadata !DIExpression()), !dbg !280
  %7 = call i32 @NaCl_crypto_box_open_easy(i8* noundef %0, i8* noundef %1, i64 noundef %2, i8* noundef %3, i8* noundef %4, i8* noundef %5) #7, !dbg !281
  ret i32 %7, !dbg !282
}

declare !dbg !283 i32 @NaCl_crypto_box_open_easy(i8* noundef, i8* noundef, i64 noundef, i8* noundef, i8* noundef, i8* noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local i32 @crypto_box_beforenm(i8* noundef %0, i8* noundef %1, i8* noundef %2) local_unnamed_addr #0 !dbg !284 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !288, metadata !DIExpression()), !dbg !291
  call void @llvm.dbg.value(metadata i8* %1, metadata !289, metadata !DIExpression()), !dbg !291
  call void @llvm.dbg.value(metadata i8* %2, metadata !290, metadata !DIExpression()), !dbg !291
  %4 = call i32 @NaCl_crypto_box_beforenm(i8* noundef %0, i8* noundef %1, i8* noundef %2) #7, !dbg !292
  ret i32 %4, !dbg !293
}

declare !dbg !294 i32 @NaCl_crypto_box_beforenm(i8* noundef, i8* noundef, i8* noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local i32 @crypto_box_easy_afternm(i8* noundef %0, i8* noundef %1, i64 noundef %2, i8* noundef %3, i8* noundef %4) local_unnamed_addr #0 !dbg !297 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !301, metadata !DIExpression()), !dbg !306
  call void @llvm.dbg.value(metadata i8* %1, metadata !302, metadata !DIExpression()), !dbg !306
  call void @llvm.dbg.value(metadata i64 %2, metadata !303, metadata !DIExpression()), !dbg !306
  call void @llvm.dbg.value(metadata i8* %3, metadata !304, metadata !DIExpression()), !dbg !306
  call void @llvm.dbg.value(metadata i8* %4, metadata !305, metadata !DIExpression()), !dbg !306
  %6 = call i32 @NaCl_crypto_box_easy_afternm(i8* noundef %0, i8* noundef %1, i64 noundef %2, i8* noundef %3, i8* noundef %4) #7, !dbg !307
  ret i32 %6, !dbg !308
}

declare !dbg !309 i32 @NaCl_crypto_box_easy_afternm(i8* noundef, i8* noundef, i64 noundef, i8* noundef, i8* noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local i32 @crypto_box_open_easy_afternm(i8* noundef %0, i8* noundef %1, i64 noundef %2, i8* noundef %3, i8* noundef %4) local_unnamed_addr #0 !dbg !312 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !314, metadata !DIExpression()), !dbg !319
  call void @llvm.dbg.value(metadata i8* %1, metadata !315, metadata !DIExpression()), !dbg !319
  call void @llvm.dbg.value(metadata i64 %2, metadata !316, metadata !DIExpression()), !dbg !319
  call void @llvm.dbg.value(metadata i8* %3, metadata !317, metadata !DIExpression()), !dbg !319
  call void @llvm.dbg.value(metadata i8* %4, metadata !318, metadata !DIExpression()), !dbg !319
  %6 = call i32 @NaCl_crypto_box_open_easy_afternm(i8* noundef %0, i8* noundef %1, i64 noundef %2, i8* noundef %3, i8* noundef %4) #7, !dbg !320
  ret i32 %6, !dbg !321
}

declare !dbg !322 i32 @NaCl_crypto_box_open_easy_afternm(i8* noundef, i8* noundef, i64 noundef, i8* noundef, i8* noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local i32 @crypto_box_detached_afternm(i8* noundef %0, i8* noundef %1, i8* noundef %2, i64 noundef %3, i8* noundef %4, i8* noundef %5) local_unnamed_addr #0 !dbg !323 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !327, metadata !DIExpression()), !dbg !333
  call void @llvm.dbg.value(metadata i8* %1, metadata !328, metadata !DIExpression()), !dbg !333
  call void @llvm.dbg.value(metadata i8* %2, metadata !329, metadata !DIExpression()), !dbg !333
  call void @llvm.dbg.value(metadata i64 %3, metadata !330, metadata !DIExpression()), !dbg !333
  call void @llvm.dbg.value(metadata i8* %4, metadata !331, metadata !DIExpression()), !dbg !333
  call void @llvm.dbg.value(metadata i8* %5, metadata !332, metadata !DIExpression()), !dbg !333
  %7 = call i32 @NaCl_crypto_box_detached_afternm(i8* noundef %0, i8* noundef %1, i8* noundef %2, i64 noundef %3, i8* noundef %4, i8* noundef %5) #7, !dbg !334
  ret i32 %7, !dbg !335
}

declare !dbg !336 i32 @NaCl_crypto_box_detached_afternm(i8* noundef, i8* noundef, i8* noundef, i64 noundef, i8* noundef, i8* noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local i32 @crypto_box_detached(i8* noundef %0, i8* noundef %1, i8* noundef %2, i64 noundef %3, i8* noundef %4, i8* noundef %5, i8* noundef %6) local_unnamed_addr #0 !dbg !337 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !341, metadata !DIExpression()), !dbg !348
  call void @llvm.dbg.value(metadata i8* %1, metadata !342, metadata !DIExpression()), !dbg !348
  call void @llvm.dbg.value(metadata i8* %2, metadata !343, metadata !DIExpression()), !dbg !348
  call void @llvm.dbg.value(metadata i64 %3, metadata !344, metadata !DIExpression()), !dbg !348
  call void @llvm.dbg.value(metadata i8* %4, metadata !345, metadata !DIExpression()), !dbg !348
  call void @llvm.dbg.value(metadata i8* %5, metadata !346, metadata !DIExpression()), !dbg !348
  call void @llvm.dbg.value(metadata i8* %6, metadata !347, metadata !DIExpression()), !dbg !348
  %8 = call i32 @NaCl_crypto_box_detached(i8* noundef %0, i8* noundef %1, i8* noundef %2, i64 noundef %3, i8* noundef %4, i8* noundef %5, i8* noundef %6) #7, !dbg !349
  ret i32 %8, !dbg !350
}

declare !dbg !351 i32 @NaCl_crypto_box_detached(i8* noundef, i8* noundef, i8* noundef, i64 noundef, i8* noundef, i8* noundef, i8* noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local i32 @crypto_box_open_detached(i8* noundef %0, i8* noundef %1, i8* noundef %2, i64 noundef %3, i8* noundef %4, i8* noundef %5, i8* noundef %6) local_unnamed_addr #0 !dbg !352 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !354, metadata !DIExpression()), !dbg !361
  call void @llvm.dbg.value(metadata i8* %1, metadata !355, metadata !DIExpression()), !dbg !361
  call void @llvm.dbg.value(metadata i8* %2, metadata !356, metadata !DIExpression()), !dbg !361
  call void @llvm.dbg.value(metadata i64 %3, metadata !357, metadata !DIExpression()), !dbg !361
  call void @llvm.dbg.value(metadata i8* %4, metadata !358, metadata !DIExpression()), !dbg !361
  call void @llvm.dbg.value(metadata i8* %5, metadata !359, metadata !DIExpression()), !dbg !361
  call void @llvm.dbg.value(metadata i8* %6, metadata !360, metadata !DIExpression()), !dbg !361
  %8 = call i32 @NaCl_crypto_box_open_detached(i8* noundef %0, i8* noundef %1, i8* noundef %2, i64 noundef %3, i8* noundef %4, i8* noundef %5, i8* noundef %6) #7, !dbg !362
  ret i32 %8, !dbg !363
}

declare !dbg !364 i32 @NaCl_crypto_box_open_detached(i8* noundef, i8* noundef, i8* noundef, i64 noundef, i8* noundef, i8* noundef, i8* noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local i32 @crypto_box_open_detached_afternm(i8* noundef %0, i8* noundef %1, i8* noundef %2, i64 noundef %3, i8* noundef %4, i8* noundef %5) local_unnamed_addr #0 !dbg !365 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !367, metadata !DIExpression()), !dbg !373
  call void @llvm.dbg.value(metadata i8* %1, metadata !368, metadata !DIExpression()), !dbg !373
  call void @llvm.dbg.value(metadata i8* %2, metadata !369, metadata !DIExpression()), !dbg !373
  call void @llvm.dbg.value(metadata i64 %3, metadata !370, metadata !DIExpression()), !dbg !373
  call void @llvm.dbg.value(metadata i8* %4, metadata !371, metadata !DIExpression()), !dbg !373
  call void @llvm.dbg.value(metadata i8* %5, metadata !372, metadata !DIExpression()), !dbg !373
  %7 = call i32 @NaCl_crypto_box_detached_afternm(i8* noundef %0, i8* noundef %1, i8* noundef %2, i64 noundef %3, i8* noundef %4, i8* noundef %5) #7, !dbg !374
  ret i32 %7, !dbg !375
}

; Function Attrs: nounwind uwtable
define dso_local i32 @crypto_box(i8* noundef %0, i8* noundef %1, i64 noundef %2, i8* noundef %3, i8* noundef %4, i8* noundef %5) local_unnamed_addr #0 !dbg !376 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !378, metadata !DIExpression()), !dbg !384
  call void @llvm.dbg.value(metadata i8* %1, metadata !379, metadata !DIExpression()), !dbg !384
  call void @llvm.dbg.value(metadata i64 %2, metadata !380, metadata !DIExpression()), !dbg !384
  call void @llvm.dbg.value(metadata i8* %3, metadata !381, metadata !DIExpression()), !dbg !384
  call void @llvm.dbg.value(metadata i8* %4, metadata !382, metadata !DIExpression()), !dbg !384
  call void @llvm.dbg.value(metadata i8* %5, metadata !383, metadata !DIExpression()), !dbg !384
  %7 = add i64 %2, -32, !dbg !385
  call void @llvm.dbg.value(metadata i8* %0, metadata !259, metadata !DIExpression()) #7, !dbg !386
  call void @llvm.dbg.value(metadata i8* %1, metadata !260, metadata !DIExpression()) #7, !dbg !386
  call void @llvm.dbg.value(metadata i64 %7, metadata !261, metadata !DIExpression()) #7, !dbg !386
  call void @llvm.dbg.value(metadata i8* %3, metadata !262, metadata !DIExpression()) #7, !dbg !386
  call void @llvm.dbg.value(metadata i8* %4, metadata !263, metadata !DIExpression()) #7, !dbg !386
  call void @llvm.dbg.value(metadata i8* %5, metadata !264, metadata !DIExpression()) #7, !dbg !386
  %8 = call i32 @NaCl_crypto_box_easy(i8* noundef %0, i8* noundef %1, i64 noundef %7, i8* noundef %3, i8* noundef %4, i8* noundef %5) #7, !dbg !388
  ret i32 %8, !dbg !389
}

; Function Attrs: nounwind uwtable
define dso_local i32 @crypto_box_open(i8* noundef %0, i8* noundef %1, i64 noundef %2, i8* noundef %3, i8* noundef %4, i8* noundef %5) local_unnamed_addr #0 !dbg !390 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !392, metadata !DIExpression()), !dbg !398
  call void @llvm.dbg.value(metadata i8* %1, metadata !393, metadata !DIExpression()), !dbg !398
  call void @llvm.dbg.value(metadata i64 %2, metadata !394, metadata !DIExpression()), !dbg !398
  call void @llvm.dbg.value(metadata i8* %3, metadata !395, metadata !DIExpression()), !dbg !398
  call void @llvm.dbg.value(metadata i8* %4, metadata !396, metadata !DIExpression()), !dbg !398
  call void @llvm.dbg.value(metadata i8* %5, metadata !397, metadata !DIExpression()), !dbg !398
  %7 = add i64 %2, -32, !dbg !399
  call void @llvm.dbg.value(metadata i8* %0, metadata !274, metadata !DIExpression()) #7, !dbg !400
  call void @llvm.dbg.value(metadata i8* %1, metadata !275, metadata !DIExpression()) #7, !dbg !400
  call void @llvm.dbg.value(metadata i64 %7, metadata !276, metadata !DIExpression()) #7, !dbg !400
  call void @llvm.dbg.value(metadata i8* %3, metadata !277, metadata !DIExpression()) #7, !dbg !400
  call void @llvm.dbg.value(metadata i8* %4, metadata !278, metadata !DIExpression()) #7, !dbg !400
  call void @llvm.dbg.value(metadata i8* %5, metadata !279, metadata !DIExpression()) #7, !dbg !400
  %8 = call i32 @NaCl_crypto_box_open_easy(i8* noundef %0, i8* noundef %1, i64 noundef %7, i8* noundef %3, i8* noundef %4, i8* noundef %5) #7, !dbg !402
  ret i32 %8, !dbg !403
}

; Function Attrs: nounwind uwtable
define dso_local i32 @crypto_box_afternm(i8* noundef %0, i8* noundef %1, i64 noundef %2, i8* noundef %3, i8* noundef %4) local_unnamed_addr #0 !dbg !404 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !406, metadata !DIExpression()), !dbg !411
  call void @llvm.dbg.value(metadata i8* %1, metadata !407, metadata !DIExpression()), !dbg !411
  call void @llvm.dbg.value(metadata i64 %2, metadata !408, metadata !DIExpression()), !dbg !411
  call void @llvm.dbg.value(metadata i8* %3, metadata !409, metadata !DIExpression()), !dbg !411
  call void @llvm.dbg.value(metadata i8* %4, metadata !410, metadata !DIExpression()), !dbg !411
  %6 = call i32 @NaCl_crypto_box_easy_afternm(i8* noundef %0, i8* noundef %1, i64 noundef %2, i8* noundef %3, i8* noundef %4) #7, !dbg !412
  ret i32 %6, !dbg !413
}

; Function Attrs: nounwind uwtable
define dso_local i32 @crypto_box_open_afternm(i8* noundef %0, i8* noundef %1, i64 noundef %2, i8* noundef %3, i8* noundef %4) local_unnamed_addr #0 !dbg !414 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !416, metadata !DIExpression()), !dbg !421
  call void @llvm.dbg.value(metadata i8* %1, metadata !417, metadata !DIExpression()), !dbg !421
  call void @llvm.dbg.value(metadata i64 %2, metadata !418, metadata !DIExpression()), !dbg !421
  call void @llvm.dbg.value(metadata i8* %3, metadata !419, metadata !DIExpression()), !dbg !421
  call void @llvm.dbg.value(metadata i8* %4, metadata !420, metadata !DIExpression()), !dbg !421
  %6 = call i32 @NaCl_crypto_box_open_easy_afternm(i8* noundef %0, i8* noundef %1, i64 noundef %2, i8* noundef %3, i8* noundef %4) #7, !dbg !422
  ret i32 %6, !dbg !423
}

; Function Attrs: nounwind uwtable
define dso_local i32 @crypto_hash(i8* noundef %0, i8* noundef %1, i64 noundef %2) local_unnamed_addr #0 !dbg !424 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !428, metadata !DIExpression()), !dbg !431
  call void @llvm.dbg.value(metadata i8* %1, metadata !429, metadata !DIExpression()), !dbg !431
  call void @llvm.dbg.value(metadata i64 %2, metadata !430, metadata !DIExpression()), !dbg !431
  %4 = trunc i64 %2 to i32, !dbg !432
  call void @Hacl_SHA2_256_hash(i8* noundef %0, i8* noundef %1, i32 noundef %4) #7, !dbg !433
  ret i32 0, !dbg !434
}

declare !dbg !435 void @Hacl_SHA2_256_hash(i8* noundef, i8* noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local i32 @crypto_onetimeauth(i8* noundef %0, i8* noundef %1, i64 noundef %2, i8* noundef %3) local_unnamed_addr #0 !dbg !437 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !439, metadata !DIExpression()), !dbg !443
  call void @llvm.dbg.value(metadata i8* %1, metadata !440, metadata !DIExpression()), !dbg !443
  call void @llvm.dbg.value(metadata i64 %2, metadata !441, metadata !DIExpression()), !dbg !443
  call void @llvm.dbg.value(metadata i8* %3, metadata !442, metadata !DIExpression()), !dbg !443
  call void @llvm.dbg.value(metadata i8* %0, metadata !75, metadata !DIExpression()) #7, !dbg !444
  call void @llvm.dbg.value(metadata i8* %1, metadata !76, metadata !DIExpression()) #7, !dbg !444
  call void @llvm.dbg.value(metadata i64 %2, metadata !77, metadata !DIExpression()) #7, !dbg !444
  call void @llvm.dbg.value(metadata i8* %3, metadata !78, metadata !DIExpression()) #7, !dbg !444
  call void @Hacl_Poly1305_64_crypto_onetimeauth(i8* noundef %0, i8* noundef %1, i64 noundef %2, i8* noundef %3) #7, !dbg !446
  ret i32 0, !dbg !447
}

; Function Attrs: nounwind uwtable
define dso_local i32 @crypto_onetimeauth_verify(i8* nocapture noundef readonly %0, i8* noundef %1, i64 noundef %2, i8* noundef %3) local_unnamed_addr #0 !dbg !448 {
  %5 = alloca [16 x i8], align 1
  call void @llvm.dbg.value(metadata i8* %0, metadata !450, metadata !DIExpression()), !dbg !461
  call void @llvm.dbg.value(metadata i8* %1, metadata !451, metadata !DIExpression()), !dbg !461
  call void @llvm.dbg.value(metadata i64 %2, metadata !452, metadata !DIExpression()), !dbg !461
  call void @llvm.dbg.value(metadata i8* %3, metadata !453, metadata !DIExpression()), !dbg !461
  %6 = getelementptr inbounds [16 x i8], [16 x i8]* %5, i32 0, i32 0, !dbg !462
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %6) #7, !dbg !462
  call void @llvm.dbg.declare(metadata [16 x i8]* %5, metadata !454, metadata !DIExpression()), !dbg !463
  call void @llvm.dbg.value(metadata i8 -1, metadata !458, metadata !DIExpression()), !dbg !461
  call void @llvm.dbg.value(metadata i8* %6, metadata !75, metadata !DIExpression()) #7, !dbg !464
  call void @llvm.dbg.value(metadata i8* %1, metadata !76, metadata !DIExpression()) #7, !dbg !464
  call void @llvm.dbg.value(metadata i64 %2, metadata !77, metadata !DIExpression()) #7, !dbg !464
  call void @llvm.dbg.value(metadata i8* %3, metadata !78, metadata !DIExpression()) #7, !dbg !464
  call void @Hacl_Poly1305_64_crypto_onetimeauth(i8* noundef nonnull %6, i8* noundef %1, i64 noundef %2, i8* noundef %3) #7, !dbg !466
  call void @llvm.dbg.value(metadata i32 0, metadata !459, metadata !DIExpression()), !dbg !467
  call void @llvm.dbg.value(metadata i8 undef, metadata !458, metadata !DIExpression()), !dbg !461
  br label %10, !dbg !468

7:                                                ; preds = %10
  %8 = lshr i32 %27, 7, !dbg !469
  call void @llvm.dbg.value(metadata i32 %8, metadata !458, metadata !DIExpression()), !dbg !461
  %9 = add nsw i32 %8, -1, !dbg !470
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %6) #7, !dbg !471
  ret i32 %9, !dbg !472

10:                                               ; preds = %4, %10
  %11 = phi i32 [ 0, %4 ], [ %28, %10 ]
  %12 = phi i32 [ 255, %4 ], [ %27, %10 ]
  call void @llvm.dbg.value(metadata i32 %11, metadata !459, metadata !DIExpression()), !dbg !467
  %13 = getelementptr inbounds [16 x i8], [16 x i8]* %5, i32 0, i32 %11, !dbg !473
  %14 = load i8, i8* %13, align 1, !dbg !473, !tbaa !210
  %15 = getelementptr inbounds i8, i8* %0, i32 %11, !dbg !476
  %16 = load i8, i8* %15, align 1, !dbg !476, !tbaa !210
  call void @llvm.dbg.value(metadata i8 %14, metadata !214, metadata !DIExpression()), !dbg !477
  call void @llvm.dbg.value(metadata i8 %16, metadata !220, metadata !DIExpression()), !dbg !477
  %17 = xor i8 %14, %16, !dbg !479
  %18 = xor i8 %17, -1, !dbg !479
  call void @llvm.dbg.value(metadata i8 %18, metadata !214, metadata !DIExpression()), !dbg !477
  %19 = shl i8 %18, 4, !dbg !480
  %20 = and i8 %19, %18, !dbg !480
  call void @llvm.dbg.value(metadata i8 %20, metadata !214, metadata !DIExpression()), !dbg !477
  %21 = shl i8 %20, 2, !dbg !481
  %22 = and i8 %21, %20, !dbg !481
  call void @llvm.dbg.value(metadata i8 %22, metadata !214, metadata !DIExpression()), !dbg !477
  %23 = shl i8 %22, 1, !dbg !482
  %24 = and i8 %23, %22, !dbg !482
  call void @llvm.dbg.value(metadata i8 %24, metadata !214, metadata !DIExpression()), !dbg !477
  %25 = ashr exact i8 %24, 7, !dbg !483
  %26 = zext i8 %25 to i32, !dbg !484
  %27 = and i32 %12, %26, !dbg !485
  call void @llvm.dbg.value(metadata i32 %27, metadata !458, metadata !DIExpression(DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !461
  %28 = add nuw nsw i32 %11, 1, !dbg !486
  call void @llvm.dbg.value(metadata i32 %28, metadata !459, metadata !DIExpression()), !dbg !467
  call void @llvm.dbg.value(metadata i8 undef, metadata !458, metadata !DIExpression()), !dbg !461
  %29 = icmp eq i32 %28, 16, !dbg !487
  br i1 %29, label %7, label %10, !dbg !468, !llvm.loop !488
}

; Function Attrs: nounwind uwtable
define dso_local i32 @crypto_scalarmult_base(i8* noundef %0, i8* noundef %1) local_unnamed_addr #0 !dbg !490 {
  %3 = alloca [32 x i8], align 1
  call void @llvm.dbg.value(metadata i8* %0, metadata !494, metadata !DIExpression()), !dbg !497
  call void @llvm.dbg.value(metadata i8* %1, metadata !495, metadata !DIExpression()), !dbg !497
  %4 = getelementptr inbounds [32 x i8], [32 x i8]* %3, i32 0, i32 0, !dbg !498
  call void @llvm.lifetime.start.p0i8(i64 32, i8* nonnull %4) #7, !dbg !498
  call void @llvm.dbg.declare(metadata [32 x i8]* %3, metadata !496, metadata !DIExpression()), !dbg !499
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* noundef nonnull align 1 dereferenceable(32) %4, i8* noundef nonnull align 1 dereferenceable(32) getelementptr inbounds (<{ i8, [31 x i8] }>, <{ i8, [31 x i8] }>* @__const.crypto_scalarmult_base.basepoint, i32 0, i32 0), i32 32, i1 false), !dbg !499
  call void @Hacl_Curve25519_crypto_scalarmult(i8* noundef %0, i8* noundef %1, i8* noundef nonnull %4) #7, !dbg !500
  call void @llvm.lifetime.end.p0i8(i64 32, i8* nonnull %4) #7, !dbg !501
  ret i32 0, !dbg !502
}

; Function Attrs: nounwind uwtable
define dso_local i32 @crypto_scalarmult(i8* noundef %0, i8* noundef %1, i8* noundef %2) local_unnamed_addr #0 !dbg !503 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !505, metadata !DIExpression()), !dbg !508
  call void @llvm.dbg.value(metadata i8* %1, metadata !506, metadata !DIExpression()), !dbg !508
  call void @llvm.dbg.value(metadata i8* %2, metadata !507, metadata !DIExpression()), !dbg !508
  call void @Hacl_Curve25519_crypto_scalarmult(i8* noundef %0, i8* noundef %1, i8* noundef %2) #7, !dbg !509
  ret i32 0, !dbg !510
}

; Function Attrs: nounwind uwtable
define dso_local i32 @crypto_secretbox_detached(i8* noundef %0, i8* noundef %1, i8* noundef %2, i64 noundef %3, i8* noundef %4, i8* noundef %5) local_unnamed_addr #0 !dbg !511 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !513, metadata !DIExpression()), !dbg !519
  call void @llvm.dbg.value(metadata i8* %1, metadata !514, metadata !DIExpression()), !dbg !519
  call void @llvm.dbg.value(metadata i8* %2, metadata !515, metadata !DIExpression()), !dbg !519
  call void @llvm.dbg.value(metadata i64 %3, metadata !516, metadata !DIExpression()), !dbg !519
  call void @llvm.dbg.value(metadata i8* %4, metadata !517, metadata !DIExpression()), !dbg !519
  call void @llvm.dbg.value(metadata i8* %5, metadata !518, metadata !DIExpression()), !dbg !519
  %7 = call i32 @NaCl_crypto_secretbox_detached(i8* noundef %0, i8* noundef %1, i8* noundef %2, i64 noundef %3, i8* noundef %4, i8* noundef %5) #7, !dbg !520
  ret i32 %7, !dbg !521
}

declare !dbg !522 i32 @NaCl_crypto_secretbox_detached(i8* noundef, i8* noundef, i8* noundef, i64 noundef, i8* noundef, i8* noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local i32 @crypto_secretbox_open_detached(i8* noundef %0, i8* noundef %1, i8* noundef %2, i64 noundef %3, i8* noundef %4, i8* noundef %5) local_unnamed_addr #0 !dbg !523 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !525, metadata !DIExpression()), !dbg !531
  call void @llvm.dbg.value(metadata i8* %1, metadata !526, metadata !DIExpression()), !dbg !531
  call void @llvm.dbg.value(metadata i8* %2, metadata !527, metadata !DIExpression()), !dbg !531
  call void @llvm.dbg.value(metadata i64 %3, metadata !528, metadata !DIExpression()), !dbg !531
  call void @llvm.dbg.value(metadata i8* %4, metadata !529, metadata !DIExpression()), !dbg !531
  call void @llvm.dbg.value(metadata i8* %5, metadata !530, metadata !DIExpression()), !dbg !531
  %7 = call i32 @NaCl_crypto_secretbox_open_detached(i8* noundef %0, i8* noundef %1, i8* noundef %2, i64 noundef %3, i8* noundef %4, i8* noundef %5) #7, !dbg !532
  ret i32 %7, !dbg !533
}

declare !dbg !534 i32 @NaCl_crypto_secretbox_open_detached(i8* noundef, i8* noundef, i8* noundef, i64 noundef, i8* noundef, i8* noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local i32 @crypto_secretbox_easy(i8* noundef %0, i8* noundef %1, i64 noundef %2, i8* noundef %3, i8* noundef %4) local_unnamed_addr #0 !dbg !535 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !537, metadata !DIExpression()), !dbg !542
  call void @llvm.dbg.value(metadata i8* %1, metadata !538, metadata !DIExpression()), !dbg !542
  call void @llvm.dbg.value(metadata i64 %2, metadata !539, metadata !DIExpression()), !dbg !542
  call void @llvm.dbg.value(metadata i8* %3, metadata !540, metadata !DIExpression()), !dbg !542
  call void @llvm.dbg.value(metadata i8* %4, metadata !541, metadata !DIExpression()), !dbg !542
  %6 = call i32 @NaCl_crypto_secretbox_easy(i8* noundef %0, i8* noundef %1, i64 noundef %2, i8* noundef %3, i8* noundef %4) #7, !dbg !543
  ret i32 %6, !dbg !544
}

declare !dbg !545 i32 @NaCl_crypto_secretbox_easy(i8* noundef, i8* noundef, i64 noundef, i8* noundef, i8* noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local i32 @crypto_secretbox_open_easy(i8* noundef %0, i8* noundef %1, i64 noundef %2, i8* noundef %3, i8* noundef %4) local_unnamed_addr #0 !dbg !546 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !548, metadata !DIExpression()), !dbg !553
  call void @llvm.dbg.value(metadata i8* %1, metadata !549, metadata !DIExpression()), !dbg !553
  call void @llvm.dbg.value(metadata i64 %2, metadata !550, metadata !DIExpression()), !dbg !553
  call void @llvm.dbg.value(metadata i8* %3, metadata !551, metadata !DIExpression()), !dbg !553
  call void @llvm.dbg.value(metadata i8* %4, metadata !552, metadata !DIExpression()), !dbg !553
  %6 = call i32 @NaCl_crypto_secretbox_open_easy(i8* noundef %0, i8* noundef %1, i64 noundef %2, i8* noundef %3, i8* noundef %4) #7, !dbg !554
  ret i32 %6, !dbg !555
}

declare !dbg !556 i32 @NaCl_crypto_secretbox_open_easy(i8* noundef, i8* noundef, i64 noundef, i8* noundef, i8* noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local i32 @crypto_secretbox(i8* noundef %0, i8* noundef %1, i64 noundef %2, i8* noundef %3, i8* noundef %4) local_unnamed_addr #0 !dbg !557 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !559, metadata !DIExpression()), !dbg !564
  call void @llvm.dbg.value(metadata i8* %1, metadata !560, metadata !DIExpression()), !dbg !564
  call void @llvm.dbg.value(metadata i64 %2, metadata !561, metadata !DIExpression()), !dbg !564
  call void @llvm.dbg.value(metadata i8* %3, metadata !562, metadata !DIExpression()), !dbg !564
  call void @llvm.dbg.value(metadata i8* %4, metadata !563, metadata !DIExpression()), !dbg !564
  %6 = add i64 %2, -32, !dbg !565
  call void @llvm.dbg.value(metadata i8* %0, metadata !537, metadata !DIExpression()) #7, !dbg !566
  call void @llvm.dbg.value(metadata i8* %1, metadata !538, metadata !DIExpression()) #7, !dbg !566
  call void @llvm.dbg.value(metadata i64 %6, metadata !539, metadata !DIExpression()) #7, !dbg !566
  call void @llvm.dbg.value(metadata i8* %3, metadata !540, metadata !DIExpression()) #7, !dbg !566
  call void @llvm.dbg.value(metadata i8* %4, metadata !541, metadata !DIExpression()) #7, !dbg !566
  %7 = call i32 @NaCl_crypto_secretbox_easy(i8* noundef %0, i8* noundef %1, i64 noundef %6, i8* noundef %3, i8* noundef %4) #7, !dbg !568
  ret i32 %7, !dbg !569
}

; Function Attrs: nounwind uwtable
define dso_local i32 @crypto_secretbox_open(i8* noundef %0, i8* noundef %1, i64 noundef %2, i8* noundef %3, i8* noundef %4) local_unnamed_addr #0 !dbg !570 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !572, metadata !DIExpression()), !dbg !577
  call void @llvm.dbg.value(metadata i8* %1, metadata !573, metadata !DIExpression()), !dbg !577
  call void @llvm.dbg.value(metadata i64 %2, metadata !574, metadata !DIExpression()), !dbg !577
  call void @llvm.dbg.value(metadata i8* %3, metadata !575, metadata !DIExpression()), !dbg !577
  call void @llvm.dbg.value(metadata i8* %4, metadata !576, metadata !DIExpression()), !dbg !577
  %6 = getelementptr inbounds i8, i8* %1, i32 16, !dbg !578
  %7 = add i64 %2, -32, !dbg !579
  call void @llvm.dbg.value(metadata i8* %0, metadata !525, metadata !DIExpression()) #7, !dbg !580
  call void @llvm.dbg.value(metadata i8* %1, metadata !526, metadata !DIExpression()) #7, !dbg !580
  call void @llvm.dbg.value(metadata i8* %6, metadata !527, metadata !DIExpression()) #7, !dbg !580
  call void @llvm.dbg.value(metadata i64 %7, metadata !528, metadata !DIExpression()) #7, !dbg !580
  call void @llvm.dbg.value(metadata i8* %3, metadata !529, metadata !DIExpression()) #7, !dbg !580
  call void @llvm.dbg.value(metadata i8* %4, metadata !530, metadata !DIExpression()) #7, !dbg !580
  %8 = call i32 @NaCl_crypto_secretbox_open_detached(i8* noundef %0, i8* noundef %1, i8* noundef nonnull %6, i64 noundef %7, i8* noundef %3, i8* noundef %4) #7, !dbg !582
  ret i32 %8, !dbg !583
}

; Function Attrs: nounwind uwtable
define dso_local i32 @crypto_sign(i8* noundef %0, i64* nocapture noundef writeonly %1, i8* noundef %2, i64 noundef %3, i8* noundef %4) local_unnamed_addr #0 !dbg !584 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !589, metadata !DIExpression()), !dbg !594
  call void @llvm.dbg.value(metadata i64* %1, metadata !590, metadata !DIExpression()), !dbg !594
  call void @llvm.dbg.value(metadata i8* %2, metadata !591, metadata !DIExpression()), !dbg !594
  call void @llvm.dbg.value(metadata i64 %3, metadata !592, metadata !DIExpression()), !dbg !594
  call void @llvm.dbg.value(metadata i8* %4, metadata !593, metadata !DIExpression()), !dbg !594
  %6 = trunc i64 %3 to i32, !dbg !595
  call void @Hacl_Ed25519_sign(i8* noundef %0, i8* noundef %4, i8* noundef %2, i32 noundef %6) #7, !dbg !596
  %7 = getelementptr inbounds i8, i8* %0, i32 64, !dbg !597
  call void @llvm.memmove.p0i8.p0i8.i32(i8* nonnull align 1 %7, i8* align 1 %2, i32 %6, i1 false), !dbg !598
  %8 = add i64 %3, 64, !dbg !599
  store i64 %8, i64* %1, align 4, !dbg !600, !tbaa !601
  ret i32 0, !dbg !603
}

; Function Attrs: argmemonly mustprogress nofree nounwind willreturn
declare void @llvm.memmove.p0i8.p0i8.i32(i8* nocapture writeonly, i8* nocapture readonly, i32, i1 immarg) #4

; Function Attrs: nounwind uwtable
define dso_local i32 @crypto_sign_open(i8* nocapture noundef writeonly %0, i64* nocapture noundef writeonly %1, i8* noundef %2, i64 noundef %3, i8* noundef %4) local_unnamed_addr #0 !dbg !604 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !606, metadata !DIExpression()), !dbg !612
  call void @llvm.dbg.value(metadata i64* %1, metadata !607, metadata !DIExpression()), !dbg !612
  call void @llvm.dbg.value(metadata i8* %2, metadata !608, metadata !DIExpression()), !dbg !612
  call void @llvm.dbg.value(metadata i64 %3, metadata !609, metadata !DIExpression()), !dbg !612
  call void @llvm.dbg.value(metadata i8* %4, metadata !610, metadata !DIExpression()), !dbg !612
  %6 = getelementptr inbounds i8, i8* %2, i32 64, !dbg !613
  %7 = add i64 %3, -64, !dbg !614
  %8 = trunc i64 %7 to i32, !dbg !615
  %9 = call zeroext i1 @Hacl_Ed25519_verify(i8* noundef %4, i8* noundef nonnull %6, i32 noundef %8, i8* noundef %2) #7, !dbg !616
  call void @llvm.dbg.value(metadata i1 %9, metadata !611, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !612
  br i1 %9, label %10, label %11, !dbg !617

10:                                               ; preds = %5
  call void @llvm.memmove.p0i8.p0i8.i32(i8* align 1 %0, i8* nonnull align 1 %6, i32 %8, i1 false), !dbg !618
  store i64 %7, i64* %1, align 4, !dbg !621, !tbaa !601
  br label %11, !dbg !622

11:                                               ; preds = %5, %10
  %12 = phi i32 [ 0, %10 ], [ -1, %5 ], !dbg !623
  ret i32 %12, !dbg !624
}

; Function Attrs: nounwind uwtable
define dso_local i32 @crypto_sign_keypair(i8* noundef %0, i8* noundef %1) local_unnamed_addr #0 !dbg !625 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !627, metadata !DIExpression()), !dbg !631
  call void @llvm.dbg.value(metadata i8* %1, metadata !628, metadata !DIExpression()), !dbg !631
  call void @randombytes(i8* noundef %1, i64 noundef 32) #7, !dbg !632
  call void @Hacl_Ed25519_secret_to_public(i8* noundef %0, i8* noundef %1) #7, !dbg !633
  call void @llvm.dbg.value(metadata i32 0, metadata !629, metadata !DIExpression()), !dbg !634
  br label %4, !dbg !635

3:                                                ; preds = %4
  ret i32 0, !dbg !636

4:                                                ; preds = %2, %4
  %5 = phi i32 [ 0, %2 ], [ %10, %4 ]
  call void @llvm.dbg.value(metadata i32 %5, metadata !629, metadata !DIExpression()), !dbg !634
  %6 = getelementptr inbounds i8, i8* %0, i32 %5, !dbg !637
  %7 = load i8, i8* %6, align 1, !dbg !637, !tbaa !210
  %8 = add nuw nsw i32 %5, 32, !dbg !639
  %9 = getelementptr inbounds i8, i8* %1, i32 %8, !dbg !640
  store i8 %7, i8* %9, align 1, !dbg !641, !tbaa !210
  %10 = add nuw nsw i32 %5, 1, !dbg !642
  call void @llvm.dbg.value(metadata i32 %10, metadata !629, metadata !DIExpression()), !dbg !634
  %11 = icmp eq i32 %10, 32, !dbg !643
  br i1 %11, label %3, label %4, !dbg !635, !llvm.loop !644
}

; Function Attrs: nounwind uwtable
define dso_local i32 @crypto_sign_secret_to_public(i8* noundef %0, i8* noundef %1) local_unnamed_addr #0 !dbg !646 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !648, metadata !DIExpression()), !dbg !650
  call void @llvm.dbg.value(metadata i8* %1, metadata !649, metadata !DIExpression()), !dbg !650
  call void @Hacl_Ed25519_secret_to_public(i8* noundef %0, i8* noundef %1) #7, !dbg !651
  ret i32 0, !dbg !652
}

; Function Attrs: nounwind uwtable
define dso_local i32 @crypto_stream(i8* noundef %0, i64 noundef %1, i8* noundef %2, i8* noundef %3) local_unnamed_addr #0 !dbg !653 {
  %5 = alloca [32 x i8], align 1
  call void @llvm.dbg.value(metadata i8* %0, metadata !657, metadata !DIExpression()), !dbg !662
  call void @llvm.dbg.value(metadata i64 %1, metadata !658, metadata !DIExpression()), !dbg !662
  call void @llvm.dbg.value(metadata i8* %2, metadata !659, metadata !DIExpression()), !dbg !662
  call void @llvm.dbg.value(metadata i8* %3, metadata !660, metadata !DIExpression()), !dbg !662
  %6 = getelementptr inbounds [32 x i8], [32 x i8]* %5, i32 0, i32 0, !dbg !663
  call void @llvm.lifetime.start.p0i8(i64 32, i8* nonnull %6) #7, !dbg !663
  call void @llvm.dbg.declare(metadata [32 x i8]* %5, metadata !661, metadata !DIExpression()), !dbg !664
  %7 = trunc i64 %1 to i32, !dbg !665
  call void @llvm.memset.p0i8.i32(i8* align 1 %0, i8 0, i32 %7, i1 false), !dbg !666
  call void @Hacl_Salsa20_hsalsa20(i8* noundef nonnull %6, i8* noundef %3, i8* noundef %2) #7, !dbg !667
  %8 = getelementptr inbounds i8, i8* %2, i32 16, !dbg !668
  call void @Hacl_Salsa20_salsa20(i8* noundef %0, i8* noundef %0, i32 noundef %7, i8* noundef nonnull %6, i8* noundef nonnull %8, i64 noundef 0) #7, !dbg !669
  call void @llvm.lifetime.end.p0i8(i64 32, i8* nonnull %6) #7, !dbg !670
  ret i32 0, !dbg !671
}

; Function Attrs: argmemonly mustprogress nofree nounwind willreturn writeonly
declare void @llvm.memset.p0i8.i32(i8* nocapture writeonly, i8, i32, i1 immarg) #5

declare !dbg !672 void @Hacl_Salsa20_hsalsa20(i8* noundef, i8* noundef, i8* noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local i32 @crypto_stream_xor(i8* noundef %0, i8* noundef %1, i64 noundef %2, i8* noundef %3, i8* noundef %4) local_unnamed_addr #0 !dbg !673 {
  %6 = alloca [32 x i8], align 1
  call void @llvm.dbg.value(metadata i8* %0, metadata !675, metadata !DIExpression()), !dbg !681
  call void @llvm.dbg.value(metadata i8* %1, metadata !676, metadata !DIExpression()), !dbg !681
  call void @llvm.dbg.value(metadata i64 %2, metadata !677, metadata !DIExpression()), !dbg !681
  call void @llvm.dbg.value(metadata i8* %3, metadata !678, metadata !DIExpression()), !dbg !681
  call void @llvm.dbg.value(metadata i8* %4, metadata !679, metadata !DIExpression()), !dbg !681
  %7 = getelementptr inbounds [32 x i8], [32 x i8]* %6, i32 0, i32 0, !dbg !682
  call void @llvm.lifetime.start.p0i8(i64 32, i8* nonnull %7) #7, !dbg !682
  call void @llvm.dbg.declare(metadata [32 x i8]* %6, metadata !680, metadata !DIExpression()), !dbg !683
  %8 = trunc i64 %2 to i32, !dbg !684
  call void @llvm.memset.p0i8.i32(i8* align 1 %0, i8 0, i32 %8, i1 false), !dbg !685
  call void @Hacl_Salsa20_hsalsa20(i8* noundef nonnull %7, i8* noundef %4, i8* noundef %3) #7, !dbg !686
  %9 = getelementptr inbounds i8, i8* %3, i32 16, !dbg !687
  call void @Hacl_Salsa20_salsa20(i8* noundef %0, i8* noundef %1, i32 noundef %8, i8* noundef nonnull %7, i8* noundef nonnull %9, i64 noundef 0) #7, !dbg !688
  call void @llvm.lifetime.end.p0i8(i64 32, i8* nonnull %7) #7, !dbg !689
  ret i32 0, !dbg !690
}

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare void @llvm.dbg.value(metadata, metadata, metadata) #6

attributes #0 = { nounwind uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="i686" "target-features"="+cx8,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nofree nosync nounwind readnone speculatable willreturn }
attributes #2 = { "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="i686" "target-features"="+cx8,+x87" "tune-cpu"="generic" }
attributes #3 = { argmemonly mustprogress nofree nosync nounwind willreturn }
attributes #4 = { argmemonly mustprogress nofree nounwind willreturn }
attributes #5 = { argmemonly mustprogress nofree nounwind willreturn writeonly }
attributes #6 = { nofree nosync nounwind readnone speculatable willreturn }
attributes #7 = { nounwind }

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
!214 = !DILocalVariable(name: "x", arg: 1, scope: !215, file: !216, line: 118, type: !4)
!215 = distinct !DISubprogram(name: "FStar_UInt8_eq_mask", scope: !216, file: !216, line: 118, type: !217, scopeLine: 118, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !219)
!216 = !DIFile(filename: "hacl-c/hacl-c/kremlib_base.h", directory: "/mnt/c/Users/fwill/Documents/HS24/semester_project/tools/binsec/binsec/examples/hacl", checksumkind: CSK_MD5, checksum: "d6560fd4701aab11aac1f04efb4ba74f")
!217 = !DISubroutineType(types: !218)
!218 = !{!4, !4, !4}
!219 = !{!214, !220}
!220 = !DILocalVariable(name: "y", arg: 2, scope: !215, file: !216, line: 118, type: !4)
!221 = !DILocation(line: 0, scope: !215, inlinedAt: !222)
!222 = distinct !DILocation(line: 110, column: 17, scope: !208)
!223 = !DILocation(line: 119, column: 7, scope: !215, inlinedAt: !222)
!224 = !DILocation(line: 120, column: 5, scope: !215, inlinedAt: !222)
!225 = !DILocation(line: 121, column: 5, scope: !215, inlinedAt: !222)
!226 = !DILocation(line: 122, column: 5, scope: !215, inlinedAt: !222)
!227 = !DILocation(line: 123, column: 20, scope: !215, inlinedAt: !222)
!228 = !DILocation(line: 110, column: 17, scope: !208)
!229 = !DILocation(line: 110, column: 15, scope: !208)
!230 = !DILocation(line: 109, column: 28, scope: !209)
!231 = !DILocation(line: 109, column: 21, scope: !209)
!232 = distinct !{!232, !202, !233, !234, !235}
!233 = !DILocation(line: 111, column: 3, scope: !195)
!234 = !{!"llvm.loop.mustprogress"}
!235 = !{!"llvm.loop.unroll.disable"}
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
!247 = !DILocation(line: 0, scope: !22, inlinedAt: !248)
!248 = distinct !DILocation(line: 120, column: 3, scope: !236)
!249 = !DILocation(line: 59, column: 3, scope: !22, inlinedAt: !248)
!250 = !DILocation(line: 122, column: 1, scope: !236)
!251 = !DILocation(line: 121, column: 3, scope: !236)
!252 = !DISubprogram(name: "randombytes", scope: !1, file: !1, line: 53, type: !253, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !34)
!253 = !DISubroutineType(types: !254)
!254 = !{null, !3, !56}
!255 = distinct !DISubprogram(name: "crypto_box_easy", scope: !1, file: !1, line: 124, type: !256, scopeLine: 126, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !258)
!256 = !DISubroutineType(types: !257)
!257 = !{!9, !3, !168, !56, !168, !168, !168}
!258 = !{!259, !260, !261, !262, !263, !264}
!259 = !DILocalVariable(name: "c", arg: 1, scope: !255, file: !1, line: 124, type: !3)
!260 = !DILocalVariable(name: "m", arg: 2, scope: !255, file: !1, line: 124, type: !168)
!261 = !DILocalVariable(name: "mlen", arg: 3, scope: !255, file: !1, line: 125, type: !56)
!262 = !DILocalVariable(name: "n", arg: 4, scope: !255, file: !1, line: 125, type: !168)
!263 = !DILocalVariable(name: "pk", arg: 5, scope: !255, file: !1, line: 126, type: !168)
!264 = !DILocalVariable(name: "sk", arg: 6, scope: !255, file: !1, line: 126, type: !168)
!265 = !DILocation(line: 0, scope: !255)
!266 = !DILocation(line: 127, column: 10, scope: !255)
!267 = !DILocation(line: 127, column: 3, scope: !255)
!268 = !DISubprogram(name: "NaCl_crypto_box_easy", scope: !269, file: !269, line: 119, type: !270, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !34)
!269 = !DIFile(filename: "hacl-c/hacl-c/NaCl.h", directory: "/mnt/c/Users/fwill/Documents/HS24/semester_project/tools/binsec/binsec/examples/hacl", checksumkind: CSK_MD5, checksum: "4d9f0d8717fa9519ee4eacd5231c692d")
!270 = !DISubroutineType(types: !271)
!271 = !{!38, !3, !3, !56, !3, !3, !3}
!272 = distinct !DISubprogram(name: "crypto_box_open_easy", scope: !1, file: !1, line: 130, type: !256, scopeLine: 132, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !273)
!273 = !{!274, !275, !276, !277, !278, !279}
!274 = !DILocalVariable(name: "m", arg: 1, scope: !272, file: !1, line: 130, type: !3)
!275 = !DILocalVariable(name: "c", arg: 2, scope: !272, file: !1, line: 130, type: !168)
!276 = !DILocalVariable(name: "clen", arg: 3, scope: !272, file: !1, line: 131, type: !56)
!277 = !DILocalVariable(name: "n", arg: 4, scope: !272, file: !1, line: 131, type: !168)
!278 = !DILocalVariable(name: "pk", arg: 5, scope: !272, file: !1, line: 132, type: !168)
!279 = !DILocalVariable(name: "sk", arg: 6, scope: !272, file: !1, line: 132, type: !168)
!280 = !DILocation(line: 0, scope: !272)
!281 = !DILocation(line: 133, column: 10, scope: !272)
!282 = !DILocation(line: 133, column: 3, scope: !272)
!283 = !DISubprogram(name: "NaCl_crypto_box_open_easy", scope: !269, file: !269, line: 129, type: !270, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !34)
!284 = distinct !DISubprogram(name: "crypto_box_beforenm", scope: !1, file: !1, line: 136, type: !285, scopeLine: 137, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !287)
!285 = !DISubroutineType(types: !286)
!286 = !{!9, !3, !168, !168}
!287 = !{!288, !289, !290}
!288 = !DILocalVariable(name: "k", arg: 1, scope: !284, file: !1, line: 136, type: !3)
!289 = !DILocalVariable(name: "pk", arg: 2, scope: !284, file: !1, line: 136, type: !168)
!290 = !DILocalVariable(name: "sk", arg: 3, scope: !284, file: !1, line: 137, type: !168)
!291 = !DILocation(line: 0, scope: !284)
!292 = !DILocation(line: 138, column: 10, scope: !284)
!293 = !DILocation(line: 138, column: 3, scope: !284)
!294 = !DISubprogram(name: "NaCl_crypto_box_beforenm", scope: !269, file: !269, line: 81, type: !295, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !34)
!295 = !DISubroutineType(types: !296)
!296 = !{!38, !3, !3, !3}
!297 = distinct !DISubprogram(name: "crypto_box_easy_afternm", scope: !1, file: !1, line: 141, type: !298, scopeLine: 143, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !300)
!298 = !DISubroutineType(types: !299)
!299 = !{!9, !3, !168, !56, !168, !168}
!300 = !{!301, !302, !303, !304, !305}
!301 = !DILocalVariable(name: "c", arg: 1, scope: !297, file: !1, line: 141, type: !3)
!302 = !DILocalVariable(name: "m", arg: 2, scope: !297, file: !1, line: 141, type: !168)
!303 = !DILocalVariable(name: "mlen", arg: 3, scope: !297, file: !1, line: 142, type: !56)
!304 = !DILocalVariable(name: "n", arg: 4, scope: !297, file: !1, line: 142, type: !168)
!305 = !DILocalVariable(name: "k", arg: 5, scope: !297, file: !1, line: 143, type: !168)
!306 = !DILocation(line: 0, scope: !297)
!307 = !DILocation(line: 144, column: 10, scope: !297)
!308 = !DILocation(line: 144, column: 3, scope: !297)
!309 = !DISubprogram(name: "NaCl_crypto_box_easy_afternm", scope: !269, file: !269, line: 116, type: !310, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !34)
!310 = !DISubroutineType(types: !311)
!311 = !{!38, !3, !3, !56, !3, !3}
!312 = distinct !DISubprogram(name: "crypto_box_open_easy_afternm", scope: !1, file: !1, line: 147, type: !298, scopeLine: 149, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !313)
!313 = !{!314, !315, !316, !317, !318}
!314 = !DILocalVariable(name: "m", arg: 1, scope: !312, file: !1, line: 147, type: !3)
!315 = !DILocalVariable(name: "c", arg: 2, scope: !312, file: !1, line: 147, type: !168)
!316 = !DILocalVariable(name: "clen", arg: 3, scope: !312, file: !1, line: 148, type: !56)
!317 = !DILocalVariable(name: "n", arg: 4, scope: !312, file: !1, line: 148, type: !168)
!318 = !DILocalVariable(name: "k", arg: 5, scope: !312, file: !1, line: 149, type: !168)
!319 = !DILocation(line: 0, scope: !312)
!320 = !DILocation(line: 150, column: 10, scope: !312)
!321 = !DILocation(line: 150, column: 3, scope: !312)
!322 = !DISubprogram(name: "NaCl_crypto_box_open_easy_afternm", scope: !269, file: !269, line: 149, type: !310, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !34)
!323 = distinct !DISubprogram(name: "crypto_box_detached_afternm", scope: !1, file: !1, line: 153, type: !324, scopeLine: 153, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !326)
!324 = !DISubroutineType(types: !325)
!325 = !{!38, !3, !3, !3, !56, !3, !3}
!326 = !{!327, !328, !329, !330, !331, !332}
!327 = !DILocalVariable(name: "c", arg: 1, scope: !323, file: !1, line: 153, type: !3)
!328 = !DILocalVariable(name: "mac", arg: 2, scope: !323, file: !1, line: 153, type: !3)
!329 = !DILocalVariable(name: "m", arg: 3, scope: !323, file: !1, line: 153, type: !3)
!330 = !DILocalVariable(name: "mlen", arg: 4, scope: !323, file: !1, line: 153, type: !56)
!331 = !DILocalVariable(name: "n", arg: 5, scope: !323, file: !1, line: 153, type: !3)
!332 = !DILocalVariable(name: "k", arg: 6, scope: !323, file: !1, line: 153, type: !3)
!333 = !DILocation(line: 0, scope: !323)
!334 = !DILocation(line: 154, column: 10, scope: !323)
!335 = !DILocation(line: 154, column: 3, scope: !323)
!336 = !DISubprogram(name: "NaCl_crypto_box_detached_afternm", scope: !269, file: !269, line: 84, type: !324, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !34)
!337 = distinct !DISubprogram(name: "crypto_box_detached", scope: !1, file: !1, line: 157, type: !338, scopeLine: 157, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !340)
!338 = !DISubroutineType(types: !339)
!339 = !{!38, !3, !3, !3, !56, !3, !3, !3}
!340 = !{!341, !342, !343, !344, !345, !346, !347}
!341 = !DILocalVariable(name: "c", arg: 1, scope: !337, file: !1, line: 157, type: !3)
!342 = !DILocalVariable(name: "mac", arg: 2, scope: !337, file: !1, line: 157, type: !3)
!343 = !DILocalVariable(name: "m", arg: 3, scope: !337, file: !1, line: 157, type: !3)
!344 = !DILocalVariable(name: "mlen", arg: 4, scope: !337, file: !1, line: 157, type: !56)
!345 = !DILocalVariable(name: "n", arg: 5, scope: !337, file: !1, line: 157, type: !3)
!346 = !DILocalVariable(name: "pk", arg: 6, scope: !337, file: !1, line: 157, type: !3)
!347 = !DILocalVariable(name: "sk", arg: 7, scope: !337, file: !1, line: 157, type: !3)
!348 = !DILocation(line: 0, scope: !337)
!349 = !DILocation(line: 158, column: 10, scope: !337)
!350 = !DILocation(line: 158, column: 3, scope: !337)
!351 = !DISubprogram(name: "NaCl_crypto_box_detached", scope: !269, file: !269, line: 94, type: !338, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !34)
!352 = distinct !DISubprogram(name: "crypto_box_open_detached", scope: !1, file: !1, line: 161, type: !338, scopeLine: 161, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !353)
!353 = !{!354, !355, !356, !357, !358, !359, !360}
!354 = !DILocalVariable(name: "m", arg: 1, scope: !352, file: !1, line: 161, type: !3)
!355 = !DILocalVariable(name: "c", arg: 2, scope: !352, file: !1, line: 161, type: !3)
!356 = !DILocalVariable(name: "mac", arg: 3, scope: !352, file: !1, line: 161, type: !3)
!357 = !DILocalVariable(name: "mlen", arg: 4, scope: !352, file: !1, line: 161, type: !56)
!358 = !DILocalVariable(name: "n", arg: 5, scope: !352, file: !1, line: 161, type: !3)
!359 = !DILocalVariable(name: "pk", arg: 6, scope: !352, file: !1, line: 161, type: !3)
!360 = !DILocalVariable(name: "sk", arg: 7, scope: !352, file: !1, line: 161, type: !3)
!361 = !DILocation(line: 0, scope: !352)
!362 = !DILocation(line: 162, column: 10, scope: !352)
!363 = !DILocation(line: 162, column: 3, scope: !352)
!364 = !DISubprogram(name: "NaCl_crypto_box_open_detached", scope: !269, file: !269, line: 105, type: !338, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !34)
!365 = distinct !DISubprogram(name: "crypto_box_open_detached_afternm", scope: !1, file: !1, line: 165, type: !324, scopeLine: 165, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !366)
!366 = !{!367, !368, !369, !370, !371, !372}
!367 = !DILocalVariable(name: "m", arg: 1, scope: !365, file: !1, line: 165, type: !3)
!368 = !DILocalVariable(name: "c", arg: 2, scope: !365, file: !1, line: 165, type: !3)
!369 = !DILocalVariable(name: "mac", arg: 3, scope: !365, file: !1, line: 165, type: !3)
!370 = !DILocalVariable(name: "mlen", arg: 4, scope: !365, file: !1, line: 165, type: !56)
!371 = !DILocalVariable(name: "n", arg: 5, scope: !365, file: !1, line: 165, type: !3)
!372 = !DILocalVariable(name: "k", arg: 6, scope: !365, file: !1, line: 165, type: !3)
!373 = !DILocation(line: 0, scope: !365)
!374 = !DILocation(line: 166, column: 10, scope: !365)
!375 = !DILocation(line: 166, column: 3, scope: !365)
!376 = distinct !DISubprogram(name: "crypto_box", scope: !1, file: !1, line: 170, type: !256, scopeLine: 170, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !377)
!377 = !{!378, !379, !380, !381, !382, !383}
!378 = !DILocalVariable(name: "cipher", arg: 1, scope: !376, file: !1, line: 170, type: !3)
!379 = !DILocalVariable(name: "msg", arg: 2, scope: !376, file: !1, line: 170, type: !168)
!380 = !DILocalVariable(name: "msg_len", arg: 3, scope: !376, file: !1, line: 170, type: !56)
!381 = !DILocalVariable(name: "nonce", arg: 4, scope: !376, file: !1, line: 170, type: !168)
!382 = !DILocalVariable(name: "pk", arg: 5, scope: !376, file: !1, line: 170, type: !168)
!383 = !DILocalVariable(name: "sk", arg: 6, scope: !376, file: !1, line: 170, type: !168)
!384 = !DILocation(line: 0, scope: !376)
!385 = !DILocation(line: 171, column: 58, scope: !376)
!386 = !DILocation(line: 0, scope: !255, inlinedAt: !387)
!387 = distinct !DILocation(line: 171, column: 10, scope: !376)
!388 = !DILocation(line: 127, column: 10, scope: !255, inlinedAt: !387)
!389 = !DILocation(line: 171, column: 3, scope: !376)
!390 = distinct !DISubprogram(name: "crypto_box_open", scope: !1, file: !1, line: 174, type: !256, scopeLine: 174, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !391)
!391 = !{!392, !393, !394, !395, !396, !397}
!392 = !DILocalVariable(name: "msg", arg: 1, scope: !390, file: !1, line: 174, type: !3)
!393 = !DILocalVariable(name: "cipher", arg: 2, scope: !390, file: !1, line: 174, type: !168)
!394 = !DILocalVariable(name: "cipher_len", arg: 3, scope: !390, file: !1, line: 174, type: !56)
!395 = !DILocalVariable(name: "nonce", arg: 4, scope: !390, file: !1, line: 174, type: !168)
!396 = !DILocalVariable(name: "pk", arg: 5, scope: !390, file: !1, line: 174, type: !168)
!397 = !DILocalVariable(name: "sk", arg: 6, scope: !390, file: !1, line: 174, type: !168)
!398 = !DILocation(line: 0, scope: !390)
!399 = !DILocation(line: 175, column: 55, scope: !390)
!400 = !DILocation(line: 0, scope: !272, inlinedAt: !401)
!401 = distinct !DILocation(line: 175, column: 10, scope: !390)
!402 = !DILocation(line: 133, column: 10, scope: !272, inlinedAt: !401)
!403 = !DILocation(line: 175, column: 3, scope: !390)
!404 = distinct !DISubprogram(name: "crypto_box_afternm", scope: !1, file: !1, line: 178, type: !298, scopeLine: 178, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !405)
!405 = !{!406, !407, !408, !409, !410}
!406 = !DILocalVariable(name: "cipher", arg: 1, scope: !404, file: !1, line: 178, type: !3)
!407 = !DILocalVariable(name: "msg", arg: 2, scope: !404, file: !1, line: 178, type: !168)
!408 = !DILocalVariable(name: "msg_len", arg: 3, scope: !404, file: !1, line: 178, type: !56)
!409 = !DILocalVariable(name: "nonce", arg: 4, scope: !404, file: !1, line: 178, type: !168)
!410 = !DILocalVariable(name: "key", arg: 5, scope: !404, file: !1, line: 178, type: !168)
!411 = !DILocation(line: 0, scope: !404)
!412 = !DILocation(line: 179, column: 10, scope: !404)
!413 = !DILocation(line: 179, column: 3, scope: !404)
!414 = distinct !DISubprogram(name: "crypto_box_open_afternm", scope: !1, file: !1, line: 182, type: !298, scopeLine: 182, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !415)
!415 = !{!416, !417, !418, !419, !420}
!416 = !DILocalVariable(name: "msg", arg: 1, scope: !414, file: !1, line: 182, type: !3)
!417 = !DILocalVariable(name: "cipher", arg: 2, scope: !414, file: !1, line: 182, type: !168)
!418 = !DILocalVariable(name: "cipher_len", arg: 3, scope: !414, file: !1, line: 182, type: !56)
!419 = !DILocalVariable(name: "nonce", arg: 4, scope: !414, file: !1, line: 182, type: !168)
!420 = !DILocalVariable(name: "key", arg: 5, scope: !414, file: !1, line: 182, type: !168)
!421 = !DILocation(line: 0, scope: !414)
!422 = !DILocation(line: 183, column: 10, scope: !414)
!423 = !DILocation(line: 183, column: 3, scope: !414)
!424 = distinct !DISubprogram(name: "crypto_hash", scope: !1, file: !1, line: 187, type: !425, scopeLine: 187, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !427)
!425 = !DISubroutineType(types: !426)
!426 = !{!9, !3, !168, !56}
!427 = !{!428, !429, !430}
!428 = !DILocalVariable(name: "output", arg: 1, scope: !424, file: !1, line: 187, type: !3)
!429 = !DILocalVariable(name: "input", arg: 2, scope: !424, file: !1, line: 187, type: !168)
!430 = !DILocalVariable(name: "input_len", arg: 3, scope: !424, file: !1, line: 187, type: !56)
!431 = !DILocation(line: 0, scope: !424)
!432 = !DILocation(line: 188, column: 48, scope: !424)
!433 = !DILocation(line: 188, column: 3, scope: !424)
!434 = !DILocation(line: 189, column: 3, scope: !424)
!435 = !DISubprogram(name: "Hacl_SHA2_256_hash", scope: !436, file: !436, line: 98, type: !154, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !34)
!436 = !DIFile(filename: "hacl-c/hacl-c/Hacl_SHA2_256.h", directory: "/mnt/c/Users/fwill/Documents/HS24/semester_project/tools/binsec/binsec/examples/hacl", checksumkind: CSK_MD5, checksum: "ecaab8545121d26d8982b2edfd3d0b89")
!437 = distinct !DISubprogram(name: "crypto_onetimeauth", scope: !1, file: !1, line: 192, type: !166, scopeLine: 192, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !438)
!438 = !{!439, !440, !441, !442}
!439 = !DILocalVariable(name: "output", arg: 1, scope: !437, file: !1, line: 192, type: !3)
!440 = !DILocalVariable(name: "input", arg: 2, scope: !437, file: !1, line: 192, type: !168)
!441 = !DILocalVariable(name: "input_len", arg: 3, scope: !437, file: !1, line: 192, type: !56)
!442 = !DILocalVariable(name: "key", arg: 4, scope: !437, file: !1, line: 192, type: !168)
!443 = !DILocation(line: 0, scope: !437)
!444 = !DILocation(line: 0, scope: !71, inlinedAt: !445)
!445 = distinct !DILocation(line: 193, column: 3, scope: !437)
!446 = !DILocation(line: 71, column: 3, scope: !71, inlinedAt: !445)
!447 = !DILocation(line: 194, column: 3, scope: !437)
!448 = distinct !DISubprogram(name: "crypto_onetimeauth_verify", scope: !1, file: !1, line: 197, type: !182, scopeLine: 197, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !449)
!449 = !{!450, !451, !452, !453, !454, !458, !459}
!450 = !DILocalVariable(name: "auth", arg: 1, scope: !448, file: !1, line: 197, type: !168)
!451 = !DILocalVariable(name: "input", arg: 2, scope: !448, file: !1, line: 197, type: !168)
!452 = !DILocalVariable(name: "input_len", arg: 3, scope: !448, file: !1, line: 197, type: !56)
!453 = !DILocalVariable(name: "key", arg: 4, scope: !448, file: !1, line: 197, type: !168)
!454 = !DILocalVariable(name: "tag", scope: !448, file: !1, line: 198, type: !455)
!455 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 128, elements: !456)
!456 = !{!457}
!457 = !DISubrange(count: 16)
!458 = !DILocalVariable(name: "tmp", scope: !448, file: !1, line: 198, type: !4)
!459 = !DILocalVariable(name: "i", scope: !460, file: !1, line: 200, type: !9)
!460 = distinct !DILexicalBlock(scope: !448, file: !1, line: 200, column: 3)
!461 = !DILocation(line: 0, scope: !448)
!462 = !DILocation(line: 198, column: 3, scope: !448)
!463 = !DILocation(line: 198, column: 11, scope: !448)
!464 = !DILocation(line: 0, scope: !71, inlinedAt: !465)
!465 = distinct !DILocation(line: 199, column: 3, scope: !448)
!466 = !DILocation(line: 71, column: 3, scope: !71, inlinedAt: !465)
!467 = !DILocation(line: 0, scope: !460)
!468 = !DILocation(line: 200, column: 3, scope: !460)
!469 = !DILocation(line: 203, column: 7, scope: !448)
!470 = !DILocation(line: 204, column: 19, scope: !448)
!471 = !DILocation(line: 205, column: 1, scope: !448)
!472 = !DILocation(line: 204, column: 3, scope: !448)
!473 = !DILocation(line: 201, column: 37, scope: !474)
!474 = distinct !DILexicalBlock(scope: !475, file: !1, line: 200, column: 31)
!475 = distinct !DILexicalBlock(scope: !460, file: !1, line: 200, column: 3)
!476 = !DILocation(line: 201, column: 54, scope: !474)
!477 = !DILocation(line: 0, scope: !215, inlinedAt: !478)
!478 = distinct !DILocation(line: 201, column: 17, scope: !474)
!479 = !DILocation(line: 119, column: 7, scope: !215, inlinedAt: !478)
!480 = !DILocation(line: 120, column: 5, scope: !215, inlinedAt: !478)
!481 = !DILocation(line: 121, column: 5, scope: !215, inlinedAt: !478)
!482 = !DILocation(line: 122, column: 5, scope: !215, inlinedAt: !478)
!483 = !DILocation(line: 123, column: 20, scope: !215, inlinedAt: !478)
!484 = !DILocation(line: 201, column: 17, scope: !474)
!485 = !DILocation(line: 201, column: 15, scope: !474)
!486 = !DILocation(line: 200, column: 28, scope: !475)
!487 = !DILocation(line: 200, column: 21, scope: !475)
!488 = distinct !{!488, !468, !489, !234, !235}
!489 = !DILocation(line: 202, column: 3, scope: !460)
!490 = distinct !DISubprogram(name: "crypto_scalarmult_base", scope: !1, file: !1, line: 208, type: !491, scopeLine: 208, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !493)
!491 = !DISubroutineType(types: !492)
!492 = !{!9, !3, !168}
!493 = !{!494, !495, !496}
!494 = !DILocalVariable(name: "q", arg: 1, scope: !490, file: !1, line: 208, type: !3)
!495 = !DILocalVariable(name: "n", arg: 2, scope: !490, file: !1, line: 208, type: !168)
!496 = !DILocalVariable(name: "basepoint", scope: !490, file: !1, line: 210, type: !190)
!497 = !DILocation(line: 0, scope: !490)
!498 = !DILocation(line: 210, column: 3, scope: !490)
!499 = !DILocation(line: 210, column: 11, scope: !490)
!500 = !DILocation(line: 211, column: 3, scope: !490)
!501 = !DILocation(line: 213, column: 1, scope: !490)
!502 = !DILocation(line: 212, column: 3, scope: !490)
!503 = distinct !DISubprogram(name: "crypto_scalarmult", scope: !1, file: !1, line: 215, type: !285, scopeLine: 215, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !504)
!504 = !{!505, !506, !507}
!505 = !DILocalVariable(name: "q", arg: 1, scope: !503, file: !1, line: 215, type: !3)
!506 = !DILocalVariable(name: "n", arg: 2, scope: !503, file: !1, line: 215, type: !168)
!507 = !DILocalVariable(name: "p", arg: 3, scope: !503, file: !1, line: 215, type: !168)
!508 = !DILocation(line: 0, scope: !503)
!509 = !DILocation(line: 216, column: 3, scope: !503)
!510 = !DILocation(line: 217, column: 3, scope: !503)
!511 = distinct !DISubprogram(name: "crypto_secretbox_detached", scope: !1, file: !1, line: 221, type: !324, scopeLine: 221, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !512)
!512 = !{!513, !514, !515, !516, !517, !518}
!513 = !DILocalVariable(name: "c", arg: 1, scope: !511, file: !1, line: 221, type: !3)
!514 = !DILocalVariable(name: "mac", arg: 2, scope: !511, file: !1, line: 221, type: !3)
!515 = !DILocalVariable(name: "m", arg: 3, scope: !511, file: !1, line: 221, type: !3)
!516 = !DILocalVariable(name: "mlen", arg: 4, scope: !511, file: !1, line: 221, type: !56)
!517 = !DILocalVariable(name: "n", arg: 5, scope: !511, file: !1, line: 221, type: !3)
!518 = !DILocalVariable(name: "k", arg: 6, scope: !511, file: !1, line: 221, type: !3)
!519 = !DILocation(line: 0, scope: !511)
!520 = !DILocation(line: 222, column: 10, scope: !511)
!521 = !DILocation(line: 222, column: 3, scope: !511)
!522 = !DISubprogram(name: "NaCl_crypto_secretbox_detached", scope: !269, file: !269, line: 50, type: !324, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !34)
!523 = distinct !DISubprogram(name: "crypto_secretbox_open_detached", scope: !1, file: !1, line: 225, type: !324, scopeLine: 225, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !524)
!524 = !{!525, !526, !527, !528, !529, !530}
!525 = !DILocalVariable(name: "m", arg: 1, scope: !523, file: !1, line: 225, type: !3)
!526 = !DILocalVariable(name: "c", arg: 2, scope: !523, file: !1, line: 225, type: !3)
!527 = !DILocalVariable(name: "mac", arg: 3, scope: !523, file: !1, line: 225, type: !3)
!528 = !DILocalVariable(name: "clen", arg: 4, scope: !523, file: !1, line: 225, type: !56)
!529 = !DILocalVariable(name: "n", arg: 5, scope: !523, file: !1, line: 225, type: !3)
!530 = !DILocalVariable(name: "k", arg: 6, scope: !523, file: !1, line: 225, type: !3)
!531 = !DILocation(line: 0, scope: !523)
!532 = !DILocation(line: 226, column: 10, scope: !523)
!533 = !DILocation(line: 226, column: 3, scope: !523)
!534 = !DISubprogram(name: "NaCl_crypto_secretbox_open_detached", scope: !269, file: !269, line: 60, type: !324, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !34)
!535 = distinct !DISubprogram(name: "crypto_secretbox_easy", scope: !1, file: !1, line: 229, type: !310, scopeLine: 229, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !536)
!536 = !{!537, !538, !539, !540, !541}
!537 = !DILocalVariable(name: "c", arg: 1, scope: !535, file: !1, line: 229, type: !3)
!538 = !DILocalVariable(name: "m", arg: 2, scope: !535, file: !1, line: 229, type: !3)
!539 = !DILocalVariable(name: "mlen", arg: 3, scope: !535, file: !1, line: 229, type: !56)
!540 = !DILocalVariable(name: "n", arg: 4, scope: !535, file: !1, line: 229, type: !3)
!541 = !DILocalVariable(name: "k", arg: 5, scope: !535, file: !1, line: 229, type: !3)
!542 = !DILocation(line: 0, scope: !535)
!543 = !DILocation(line: 230, column: 10, scope: !535)
!544 = !DILocation(line: 230, column: 3, scope: !535)
!545 = !DISubprogram(name: "NaCl_crypto_secretbox_easy", scope: !269, file: !269, line: 70, type: !310, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !34)
!546 = distinct !DISubprogram(name: "crypto_secretbox_open_easy", scope: !1, file: !1, line: 233, type: !310, scopeLine: 233, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !547)
!547 = !{!548, !549, !550, !551, !552}
!548 = !DILocalVariable(name: "m", arg: 1, scope: !546, file: !1, line: 233, type: !3)
!549 = !DILocalVariable(name: "c", arg: 2, scope: !546, file: !1, line: 233, type: !3)
!550 = !DILocalVariable(name: "clen", arg: 3, scope: !546, file: !1, line: 233, type: !56)
!551 = !DILocalVariable(name: "n", arg: 4, scope: !546, file: !1, line: 233, type: !3)
!552 = !DILocalVariable(name: "k", arg: 5, scope: !546, file: !1, line: 233, type: !3)
!553 = !DILocation(line: 0, scope: !546)
!554 = !DILocation(line: 234, column: 10, scope: !546)
!555 = !DILocation(line: 234, column: 3, scope: !546)
!556 = !DISubprogram(name: "NaCl_crypto_secretbox_open_easy", scope: !269, file: !269, line: 73, type: !310, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !34)
!557 = distinct !DISubprogram(name: "crypto_secretbox", scope: !1, file: !1, line: 237, type: !298, scopeLine: 237, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !558)
!558 = !{!559, !560, !561, !562, !563}
!559 = !DILocalVariable(name: "cipher", arg: 1, scope: !557, file: !1, line: 237, type: !3)
!560 = !DILocalVariable(name: "msg", arg: 2, scope: !557, file: !1, line: 237, type: !168)
!561 = !DILocalVariable(name: "msg_len", arg: 3, scope: !557, file: !1, line: 237, type: !56)
!562 = !DILocalVariable(name: "nonce", arg: 4, scope: !557, file: !1, line: 237, type: !168)
!563 = !DILocalVariable(name: "key", arg: 5, scope: !557, file: !1, line: 237, type: !168)
!564 = !DILocation(line: 0, scope: !557)
!565 = !DILocation(line: 238, column: 64, scope: !557)
!566 = !DILocation(line: 0, scope: !535, inlinedAt: !567)
!567 = distinct !DILocation(line: 238, column: 10, scope: !557)
!568 = !DILocation(line: 230, column: 10, scope: !535, inlinedAt: !567)
!569 = !DILocation(line: 238, column: 3, scope: !557)
!570 = distinct !DISubprogram(name: "crypto_secretbox_open", scope: !1, file: !1, line: 241, type: !298, scopeLine: 241, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !571)
!571 = !{!572, !573, !574, !575, !576}
!572 = !DILocalVariable(name: "msg", arg: 1, scope: !570, file: !1, line: 241, type: !3)
!573 = !DILocalVariable(name: "cipher", arg: 2, scope: !570, file: !1, line: 241, type: !168)
!574 = !DILocalVariable(name: "cipher_len", arg: 3, scope: !570, file: !1, line: 241, type: !56)
!575 = !DILocalVariable(name: "nonce", arg: 4, scope: !570, file: !1, line: 241, type: !168)
!576 = !DILocalVariable(name: "key", arg: 5, scope: !570, file: !1, line: 241, type: !168)
!577 = !DILocation(line: 0, scope: !570)
!578 = !DILocation(line: 242, column: 83, scope: !570)
!579 = !DILocation(line: 242, column: 100, scope: !570)
!580 = !DILocation(line: 0, scope: !523, inlinedAt: !581)
!581 = distinct !DILocation(line: 242, column: 10, scope: !570)
!582 = !DILocation(line: 226, column: 10, scope: !523, inlinedAt: !581)
!583 = !DILocation(line: 242, column: 3, scope: !570)
!584 = distinct !DISubprogram(name: "crypto_sign", scope: !1, file: !1, line: 246, type: !585, scopeLine: 246, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !588)
!585 = !DISubroutineType(types: !586)
!586 = !{!9, !3, !587, !168, !56, !168}
!587 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !56, size: 32)
!588 = !{!589, !590, !591, !592, !593}
!589 = !DILocalVariable(name: "signed_msg", arg: 1, scope: !584, file: !1, line: 246, type: !3)
!590 = !DILocalVariable(name: "signed_len", arg: 2, scope: !584, file: !1, line: 246, type: !587)
!591 = !DILocalVariable(name: "msg", arg: 3, scope: !584, file: !1, line: 246, type: !168)
!592 = !DILocalVariable(name: "msg_len", arg: 4, scope: !584, file: !1, line: 246, type: !56)
!593 = !DILocalVariable(name: "sk", arg: 5, scope: !584, file: !1, line: 246, type: !168)
!594 = !DILocation(line: 0, scope: !584)
!595 = !DILocation(line: 247, column: 64, scope: !584)
!596 = !DILocation(line: 247, column: 3, scope: !584)
!597 = !DILocation(line: 248, column: 21, scope: !584)
!598 = !DILocation(line: 248, column: 3, scope: !584)
!599 = !DILocation(line: 249, column: 25, scope: !584)
!600 = !DILocation(line: 249, column: 15, scope: !584)
!601 = !{!602, !602, i64 0}
!602 = !{!"long long", !211, i64 0}
!603 = !DILocation(line: 250, column: 3, scope: !584)
!604 = distinct !DISubprogram(name: "crypto_sign_open", scope: !1, file: !1, line: 253, type: !585, scopeLine: 253, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !605)
!605 = !{!606, !607, !608, !609, !610, !611}
!606 = !DILocalVariable(name: "unsigned_msg", arg: 1, scope: !604, file: !1, line: 253, type: !3)
!607 = !DILocalVariable(name: "unsigned_msg_len", arg: 2, scope: !604, file: !1, line: 253, type: !587)
!608 = !DILocalVariable(name: "msg", arg: 3, scope: !604, file: !1, line: 253, type: !168)
!609 = !DILocalVariable(name: "msg_len", arg: 4, scope: !604, file: !1, line: 253, type: !56)
!610 = !DILocalVariable(name: "pk", arg: 5, scope: !604, file: !1, line: 253, type: !168)
!611 = !DILocalVariable(name: "res", scope: !604, file: !1, line: 254, type: !38)
!612 = !DILocation(line: 0, scope: !604)
!613 = !DILocation(line: 255, column: 58, scope: !604)
!614 = !DILocation(line: 255, column: 71, scope: !604)
!615 = !DILocation(line: 255, column: 63, scope: !604)
!616 = !DILocation(line: 255, column: 9, scope: !604)
!617 = !DILocation(line: 256, column: 7, scope: !604)
!618 = !DILocation(line: 257, column: 5, scope: !619)
!619 = distinct !DILexicalBlock(scope: !620, file: !1, line: 256, column: 11)
!620 = distinct !DILexicalBlock(scope: !604, file: !1, line: 256, column: 7)
!621 = !DILocation(line: 258, column: 23, scope: !619)
!622 = !DILocation(line: 259, column: 5, scope: !619)
!623 = !DILocation(line: 0, scope: !620)
!624 = !DILocation(line: 263, column: 1, scope: !604)
!625 = distinct !DISubprogram(name: "crypto_sign_keypair", scope: !1, file: !1, line: 265, type: !237, scopeLine: 265, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !626)
!626 = !{!627, !628, !629}
!627 = !DILocalVariable(name: "pk", arg: 1, scope: !625, file: !1, line: 265, type: !3)
!628 = !DILocalVariable(name: "sk", arg: 2, scope: !625, file: !1, line: 265, type: !3)
!629 = !DILocalVariable(name: "i", scope: !630, file: !1, line: 268, type: !9)
!630 = distinct !DILexicalBlock(scope: !625, file: !1, line: 268, column: 3)
!631 = !DILocation(line: 0, scope: !625)
!632 = !DILocation(line: 266, column: 3, scope: !625)
!633 = !DILocation(line: 267, column: 3, scope: !625)
!634 = !DILocation(line: 0, scope: !630)
!635 = !DILocation(line: 268, column: 3, scope: !630)
!636 = !DILocation(line: 269, column: 3, scope: !625)
!637 = !DILocation(line: 268, column: 43, scope: !638)
!638 = distinct !DILexicalBlock(scope: !630, file: !1, line: 268, column: 3)
!639 = !DILocation(line: 268, column: 37, scope: !638)
!640 = !DILocation(line: 268, column: 32, scope: !638)
!641 = !DILocation(line: 268, column: 41, scope: !638)
!642 = !DILocation(line: 268, column: 28, scope: !638)
!643 = !DILocation(line: 268, column: 21, scope: !638)
!644 = distinct !{!644, !635, !645, !234, !235}
!645 = !DILocation(line: 268, column: 47, scope: !630)
!646 = distinct !DISubprogram(name: "crypto_sign_secret_to_public", scope: !1, file: !1, line: 272, type: !237, scopeLine: 272, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !647)
!647 = !{!648, !649}
!648 = !DILocalVariable(name: "public_key", arg: 1, scope: !646, file: !1, line: 272, type: !3)
!649 = !DILocalVariable(name: "secret_key", arg: 2, scope: !646, file: !1, line: 272, type: !3)
!650 = !DILocation(line: 0, scope: !646)
!651 = !DILocation(line: 273, column: 3, scope: !646)
!652 = !DILocation(line: 274, column: 3, scope: !646)
!653 = distinct !DISubprogram(name: "crypto_stream", scope: !1, file: !1, line: 278, type: !654, scopeLine: 278, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !656)
!654 = !DISubroutineType(types: !655)
!655 = !{!9, !3, !56, !168, !168}
!656 = !{!657, !658, !659, !660, !661}
!657 = !DILocalVariable(name: "cipher", arg: 1, scope: !653, file: !1, line: 278, type: !3)
!658 = !DILocalVariable(name: "cipher_len", arg: 2, scope: !653, file: !1, line: 278, type: !56)
!659 = !DILocalVariable(name: "nonce", arg: 3, scope: !653, file: !1, line: 278, type: !168)
!660 = !DILocalVariable(name: "key", arg: 4, scope: !653, file: !1, line: 278, type: !168)
!661 = !DILocalVariable(name: "subkey", scope: !653, file: !1, line: 279, type: !190)
!662 = !DILocation(line: 0, scope: !653)
!663 = !DILocation(line: 279, column: 3, scope: !653)
!664 = !DILocation(line: 279, column: 11, scope: !653)
!665 = !DILocation(line: 280, column: 21, scope: !653)
!666 = !DILocation(line: 280, column: 3, scope: !653)
!667 = !DILocation(line: 281, column: 3, scope: !653)
!668 = !DILocation(line: 282, column: 77, scope: !653)
!669 = !DILocation(line: 282, column: 3, scope: !653)
!670 = !DILocation(line: 284, column: 1, scope: !653)
!671 = !DILocation(line: 283, column: 3, scope: !653)
!672 = !DISubprogram(name: "Hacl_Salsa20_hsalsa20", scope: !70, file: !70, line: 83, type: !23, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !34)
!673 = distinct !DISubprogram(name: "crypto_stream_xor", scope: !1, file: !1, line: 286, type: !298, scopeLine: 286, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !674)
!674 = !{!675, !676, !677, !678, !679, !680}
!675 = !DILocalVariable(name: "cipher", arg: 1, scope: !673, file: !1, line: 286, type: !3)
!676 = !DILocalVariable(name: "msg", arg: 2, scope: !673, file: !1, line: 286, type: !168)
!677 = !DILocalVariable(name: "cipher_len", arg: 3, scope: !673, file: !1, line: 286, type: !56)
!678 = !DILocalVariable(name: "nonce", arg: 4, scope: !673, file: !1, line: 286, type: !168)
!679 = !DILocalVariable(name: "key", arg: 5, scope: !673, file: !1, line: 286, type: !168)
!680 = !DILocalVariable(name: "subkey", scope: !673, file: !1, line: 287, type: !190)
!681 = !DILocation(line: 0, scope: !673)
!682 = !DILocation(line: 287, column: 3, scope: !673)
!683 = !DILocation(line: 287, column: 11, scope: !673)
!684 = !DILocation(line: 288, column: 21, scope: !673)
!685 = !DILocation(line: 288, column: 3, scope: !673)
!686 = !DILocation(line: 289, column: 3, scope: !673)
!687 = !DILocation(line: 290, column: 85, scope: !673)
!688 = !DILocation(line: 290, column: 3, scope: !673)
!689 = !DILocation(line: 292, column: 1, scope: !673)
!690 = !DILocation(line: 291, column: 3, scope: !673)
