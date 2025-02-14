; ModuleID = 'hacl-c/hacl-c/NaCl.c'
source_filename = "hacl-c/hacl-c/NaCl.c"
target datalayout = "e-m:e-p:32:32-p270:32:32-p271:32:32-p272:64:64-f64:32:64-f80:32-n8:16:32-S128"
target triple = "i386-pc-linux-gnu"

@NaCl_crypto_box_NONCEBYTES = dso_local local_unnamed_addr global i32 24, align 4, !dbg !0
@NaCl_crypto_box_PUBLICKEYBYTES = dso_local local_unnamed_addr global i32 32, align 4, !dbg !17
@NaCl_crypto_box_SECRETKEYBYTES = dso_local local_unnamed_addr global i32 32, align 4, !dbg !25
@NaCl_crypto_box_MACBYTES = dso_local local_unnamed_addr global i32 16, align 4, !dbg !27
@NaCl_crypto_secretbox_NONCEBYTES = dso_local local_unnamed_addr global i32 24, align 4, !dbg !29
@NaCl_crypto_secretbox_KEYBYTES = dso_local local_unnamed_addr global i32 32, align 4, !dbg !31
@NaCl_crypto_secretbox_MACBYTES = dso_local local_unnamed_addr global i32 16, align 4, !dbg !33

; Function Attrs: nounwind uwtable
define dso_local i32 @NaCl_crypto_secretbox_detached(i8* noundef %0, i8* noundef %1, i8* noundef %2, i64 noundef %3, i8* noundef %4, i8* noundef %5) local_unnamed_addr #0 !dbg !43 {
  %7 = alloca [32 x i8], align 1
  call void @llvm.dbg.value(metadata i8* %0, metadata !48, metadata !DIExpression()), !dbg !54
  call void @llvm.dbg.value(metadata i8* %1, metadata !49, metadata !DIExpression()), !dbg !54
  call void @llvm.dbg.value(metadata i8* %2, metadata !50, metadata !DIExpression()), !dbg !54
  call void @llvm.dbg.value(metadata i64 %3, metadata !51, metadata !DIExpression()), !dbg !54
  call void @llvm.dbg.value(metadata i8* %4, metadata !52, metadata !DIExpression()), !dbg !54
  call void @llvm.dbg.value(metadata i8* %5, metadata !53, metadata !DIExpression()), !dbg !54
  call void @llvm.dbg.value(metadata i8* %0, metadata !55, metadata !DIExpression()) #8, !dbg !68
  call void @llvm.dbg.value(metadata i8* %1, metadata !58, metadata !DIExpression()) #8, !dbg !68
  call void @llvm.dbg.value(metadata i8* %2, metadata !59, metadata !DIExpression()) #8, !dbg !68
  call void @llvm.dbg.value(metadata i64 %3, metadata !60, metadata !DIExpression()) #8, !dbg !68
  call void @llvm.dbg.value(metadata i8* %4, metadata !61, metadata !DIExpression()) #8, !dbg !68
  call void @llvm.dbg.value(metadata i8* %5, metadata !62, metadata !DIExpression()) #8, !dbg !68
  %8 = trunc i64 %3 to i32, !dbg !70
  call void @llvm.dbg.value(metadata i32 %8, metadata !63, metadata !DIExpression()) #8, !dbg !68
  %9 = getelementptr inbounds [32 x i8], [32 x i8]* %7, i32 0, i32 0, !dbg !71
  call void @llvm.lifetime.start.p0i8(i64 32, i8* nonnull %9) #8, !dbg !71
  call void @llvm.dbg.declare(metadata [32 x i8]* %7, metadata !64, metadata !DIExpression()) #8, !dbg !72
  call void @llvm.memset.p0i8.i32(i8* noundef nonnull align 1 dereferenceable(32) %9, i8 0, i32 32, i1 false) #8, !dbg !72
  call void @Hacl_Salsa20_hsalsa20(i8* noundef nonnull %9, i8* noundef %5, i8* noundef %4) #8, !dbg !73
  %10 = add i32 %8, 32, !dbg !74
  %11 = getelementptr inbounds i8, i8* %4, i32 16, !dbg !75
  call void @Hacl_Salsa20_salsa20(i8* noundef %0, i8* noundef %2, i32 noundef %10, i8* noundef nonnull %9, i8* noundef nonnull %11, i64 noundef 0) #8, !dbg !76
  %12 = getelementptr inbounds i8, i8* %0, i32 32, !dbg !77
  call void @Hacl_Poly1305_64_crypto_onetimeauth(i8* noundef %1, i8* noundef nonnull %12, i64 noundef %3, i8* noundef %0) #8, !dbg !78
  call void @llvm.dbg.value(metadata i8* %0, metadata !79, metadata !DIExpression()) #8, !dbg !85
  call void @llvm.dbg.value(metadata i8 0, metadata !84, metadata !DIExpression()) #8, !dbg !85
  call void @llvm.memset.p0i8.i64(i8* noundef nonnull align 1 dereferenceable(32) %0, i8 0, i64 32, i1 false) #8, !dbg !87
  call void @llvm.dbg.value(metadata i8* %9, metadata !79, metadata !DIExpression()) #8, !dbg !88
  call void @llvm.dbg.value(metadata i8 0, metadata !84, metadata !DIExpression()) #8, !dbg !88
  call void @llvm.memset.p0i8.i64(i8* noundef nonnull align 1 dereferenceable(32) %9, i8 0, i64 32, i1 false) #8, !dbg !90
  call void @llvm.lifetime.end.p0i8(i64 32, i8* nonnull %9) #8, !dbg !91
  ret i32 0, !dbg !92
}

; Function Attrs: mustprogress nofree nosync nounwind readnone speculatable willreturn
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: nounwind uwtable
define dso_local i32 @NaCl_crypto_secretbox_open_detached(i8* noundef %0, i8* noundef %1, i8* noundef %2, i64 noundef %3, i8* noundef %4, i8* noundef %5) local_unnamed_addr #0 !dbg !93 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !95, metadata !DIExpression()), !dbg !101
  call void @llvm.dbg.value(metadata i8* %1, metadata !96, metadata !DIExpression()), !dbg !101
  call void @llvm.dbg.value(metadata i8* %2, metadata !97, metadata !DIExpression()), !dbg !101
  call void @llvm.dbg.value(metadata i64 %3, metadata !98, metadata !DIExpression()), !dbg !101
  call void @llvm.dbg.value(metadata i8* %4, metadata !99, metadata !DIExpression()), !dbg !101
  call void @llvm.dbg.value(metadata i8* %5, metadata !100, metadata !DIExpression()), !dbg !101
  %7 = call fastcc i32 @Hacl_SecretBox_ZeroPad_crypto_secretbox_open_detached(i8* noundef %0, i8* noundef %1, i8* noundef %2, i64 noundef %3, i8* noundef %4, i8* noundef %5), !dbg !102
  ret i32 %7, !dbg !103
}

; Function Attrs: nounwind uwtable
define internal fastcc i32 @Hacl_SecretBox_ZeroPad_crypto_secretbox_open_detached(i8* noundef %0, i8* noundef %1, i8* noundef %2, i64 noundef %3, i8* noundef %4, i8* noundef %5) unnamed_addr #0 !dbg !104 {
  %7 = alloca [112 x i8], align 1
  call void @llvm.dbg.value(metadata i8* %0, metadata !106, metadata !DIExpression()), !dbg !123
  call void @llvm.dbg.value(metadata i8* %1, metadata !107, metadata !DIExpression()), !dbg !123
  call void @llvm.dbg.value(metadata i8* %2, metadata !108, metadata !DIExpression()), !dbg !123
  call void @llvm.dbg.value(metadata i64 %3, metadata !109, metadata !DIExpression()), !dbg !123
  call void @llvm.dbg.value(metadata i8* %4, metadata !110, metadata !DIExpression()), !dbg !123
  call void @llvm.dbg.value(metadata i8* %5, metadata !111, metadata !DIExpression()), !dbg !123
  %8 = getelementptr inbounds [112 x i8], [112 x i8]* %7, i32 0, i32 0, !dbg !124
  call void @llvm.lifetime.start.p0i8(i64 112, i8* nonnull %8) #8, !dbg !124
  call void @llvm.dbg.declare(metadata [112 x i8]* %7, metadata !112, metadata !DIExpression()), !dbg !125
  call void @llvm.memset.p0i8.i32(i8* noundef nonnull align 1 dereferenceable(112) %8, i8 0, i32 112, i1 false), !dbg !125
  call void @llvm.dbg.value(metadata i8* %8, metadata !116, metadata !DIExpression()), !dbg !123
  %9 = getelementptr inbounds [112 x i8], [112 x i8]* %7, i32 0, i32 32, !dbg !126
  call void @llvm.dbg.value(metadata i8* %9, metadata !117, metadata !DIExpression()), !dbg !123
  %10 = getelementptr inbounds [112 x i8], [112 x i8]* %7, i32 0, i32 64, !dbg !127
  call void @llvm.dbg.value(metadata i8* %10, metadata !118, metadata !DIExpression()), !dbg !123
  %11 = getelementptr inbounds [112 x i8], [112 x i8]* %7, i32 0, i32 96, !dbg !128
  call void @llvm.dbg.value(metadata i8* %11, metadata !119, metadata !DIExpression()), !dbg !123
  call void @Hacl_Salsa20_hsalsa20(i8* noundef nonnull %8, i8* noundef %5, i8* noundef %4) #8, !dbg !129
  %12 = getelementptr inbounds i8, i8* %4, i32 16, !dbg !130
  call void @Hacl_Salsa20_salsa20(i8* noundef nonnull %9, i8* noundef nonnull %10, i32 noundef 32, i8* noundef nonnull %8, i8* noundef nonnull %12, i64 noundef 0) #8, !dbg !131
  %13 = getelementptr inbounds i8, i8* %1, i32 32, !dbg !132
  call void @Hacl_Poly1305_64_crypto_onetimeauth(i8* noundef nonnull %11, i8* noundef nonnull %13, i64 noundef %3, i8* noundef nonnull %9) #8, !dbg !133
  %14 = call zeroext i8 @Hacl_Policies_cmp_bytes(i8* noundef %2, i8* noundef nonnull %11, i32 noundef 16) #8, !dbg !134
  call void @llvm.dbg.value(metadata i8 %14, metadata !120, metadata !DIExpression()), !dbg !123
  call void @llvm.dbg.value(metadata i8 %14, metadata !121, metadata !DIExpression()), !dbg !123
  call void @llvm.dbg.value(metadata i8* %0, metadata !135, metadata !DIExpression()) #8, !dbg !146
  call void @llvm.dbg.value(metadata i8* %1, metadata !140, metadata !DIExpression()) #8, !dbg !146
  call void @llvm.dbg.value(metadata i64 %3, metadata !141, metadata !DIExpression()) #8, !dbg !146
  call void @llvm.dbg.value(metadata i8* %4, metadata !142, metadata !DIExpression()) #8, !dbg !146
  call void @llvm.dbg.value(metadata i8* %8, metadata !143, metadata !DIExpression()) #8, !dbg !146
  call void @llvm.dbg.value(metadata i8 %14, metadata !144, metadata !DIExpression()) #8, !dbg !146
  call void @llvm.dbg.value(metadata i64 %3, metadata !145, metadata !DIExpression(DW_OP_LLVM_convert, 64, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)) #8, !dbg !146
  %15 = icmp eq i8 %14, 0, !dbg !148
  br i1 %15, label %16, label %19, !dbg !150

16:                                               ; preds = %6
  %17 = trunc i64 %3 to i32, !dbg !151
  call void @llvm.dbg.value(metadata i32 %17, metadata !145, metadata !DIExpression()) #8, !dbg !146
  %18 = add i32 %17, 32, !dbg !152
  call void @Hacl_Salsa20_salsa20(i8* noundef %0, i8* noundef %1, i32 noundef %18, i8* noundef nonnull %8, i8* noundef nonnull %12, i64 noundef 0) #8, !dbg !154
  call void @llvm.dbg.value(metadata i8* %8, metadata !79, metadata !DIExpression()) #8, !dbg !155
  call void @llvm.dbg.value(metadata i8 0, metadata !84, metadata !DIExpression()) #8, !dbg !155
  call void @llvm.memset.p0i8.i64(i8* noundef nonnull align 1 dereferenceable(32) %8, i8 0, i64 32, i1 false) #8, !dbg !157
  call void @llvm.dbg.value(metadata i8* %0, metadata !79, metadata !DIExpression()) #8, !dbg !158
  call void @llvm.dbg.value(metadata i8 0, metadata !84, metadata !DIExpression()) #8, !dbg !158
  call void @llvm.memset.p0i8.i64(i8* noundef nonnull align 1 dereferenceable(32) %0, i8 0, i64 32, i1 false) #8, !dbg !160
  br label %19, !dbg !161

19:                                               ; preds = %6, %16
  %20 = phi i32 [ 0, %16 ], [ -1, %6 ], !dbg !162
  call void @llvm.dbg.value(metadata i32 %20, metadata !122, metadata !DIExpression()), !dbg !123
  call void @llvm.lifetime.end.p0i8(i64 112, i8* nonnull %8) #8, !dbg !163
  ret i32 %20, !dbg !164
}

; Function Attrs: nounwind uwtable
define dso_local i32 @NaCl_crypto_secretbox_easy(i8* noundef %0, i8* noundef %1, i64 noundef %2, i8* noundef %3, i8* noundef %4) local_unnamed_addr #0 !dbg !165 {
  %6 = alloca [32 x i8], align 1
  %7 = alloca [16 x i8], align 1
  call void @llvm.dbg.value(metadata i8* %0, metadata !169, metadata !DIExpression()), !dbg !174
  call void @llvm.dbg.value(metadata i8* %1, metadata !170, metadata !DIExpression()), !dbg !174
  call void @llvm.dbg.value(metadata i64 %2, metadata !171, metadata !DIExpression()), !dbg !174
  call void @llvm.dbg.value(metadata i8* %3, metadata !172, metadata !DIExpression()), !dbg !174
  call void @llvm.dbg.value(metadata i8* %4, metadata !173, metadata !DIExpression()), !dbg !174
  call void @llvm.dbg.value(metadata i8* %0, metadata !175, metadata !DIExpression()) #8, !dbg !187
  call void @llvm.dbg.value(metadata i8* %1, metadata !178, metadata !DIExpression()) #8, !dbg !187
  call void @llvm.dbg.value(metadata i64 %2, metadata !179, metadata !DIExpression()) #8, !dbg !187
  call void @llvm.dbg.value(metadata i8* %3, metadata !180, metadata !DIExpression()) #8, !dbg !187
  call void @llvm.dbg.value(metadata i8* %4, metadata !181, metadata !DIExpression()) #8, !dbg !187
  %8 = getelementptr inbounds [16 x i8], [16 x i8]* %7, i32 0, i32 0, !dbg !189
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %8) #8, !dbg !189
  call void @llvm.dbg.declare(metadata [16 x i8]* %7, metadata !182, metadata !DIExpression()) #8, !dbg !190
  call void @llvm.memset.p0i8.i32(i8* noundef nonnull align 1 dereferenceable(16) %8, i8 0, i32 16, i1 false) #8, !dbg !190
  call void @llvm.dbg.value(metadata i8* %0, metadata !55, metadata !DIExpression()) #8, !dbg !191
  call void @llvm.dbg.value(metadata i8* %8, metadata !58, metadata !DIExpression()) #8, !dbg !191
  call void @llvm.dbg.value(metadata i8* %1, metadata !59, metadata !DIExpression()) #8, !dbg !191
  call void @llvm.dbg.value(metadata i64 %2, metadata !60, metadata !DIExpression()) #8, !dbg !191
  call void @llvm.dbg.value(metadata i8* %3, metadata !61, metadata !DIExpression()) #8, !dbg !191
  call void @llvm.dbg.value(metadata i8* %4, metadata !62, metadata !DIExpression()) #8, !dbg !191
  %9 = trunc i64 %2 to i32, !dbg !193
  call void @llvm.dbg.value(metadata i32 %9, metadata !63, metadata !DIExpression()) #8, !dbg !191
  %10 = getelementptr inbounds [32 x i8], [32 x i8]* %6, i32 0, i32 0, !dbg !194
  call void @llvm.lifetime.start.p0i8(i64 32, i8* nonnull %10) #8, !dbg !194
  call void @llvm.dbg.declare(metadata [32 x i8]* %6, metadata !64, metadata !DIExpression()) #8, !dbg !195
  call void @llvm.memset.p0i8.i32(i8* noundef nonnull align 1 dereferenceable(32) %10, i8 0, i32 32, i1 false) #8, !dbg !195
  call void @Hacl_Salsa20_hsalsa20(i8* noundef nonnull %10, i8* noundef %4, i8* noundef %3) #8, !dbg !196
  %11 = add i32 %9, 32, !dbg !197
  %12 = getelementptr inbounds i8, i8* %3, i32 16, !dbg !198
  call void @Hacl_Salsa20_salsa20(i8* noundef %0, i8* noundef %1, i32 noundef %11, i8* noundef nonnull %10, i8* noundef nonnull %12, i64 noundef 0) #8, !dbg !199
  %13 = getelementptr inbounds i8, i8* %0, i32 32, !dbg !200
  call void @Hacl_Poly1305_64_crypto_onetimeauth(i8* noundef nonnull %8, i8* noundef nonnull %13, i64 noundef %2, i8* noundef %0) #8, !dbg !201
  call void @llvm.dbg.value(metadata i8* %0, metadata !79, metadata !DIExpression()) #8, !dbg !202
  call void @llvm.dbg.value(metadata i8 0, metadata !84, metadata !DIExpression()) #8, !dbg !202
  call void @llvm.memset.p0i8.i64(i8* noundef nonnull align 1 dereferenceable(32) %0, i8 0, i64 32, i1 false) #8, !dbg !204
  call void @llvm.dbg.value(metadata i8* %10, metadata !79, metadata !DIExpression()) #8, !dbg !205
  call void @llvm.dbg.value(metadata i8 0, metadata !84, metadata !DIExpression()) #8, !dbg !205
  call void @llvm.memset.p0i8.i64(i8* noundef nonnull align 1 dereferenceable(32) %10, i8 0, i64 32, i1 false) #8, !dbg !207
  call void @llvm.lifetime.end.p0i8(i64 32, i8* nonnull %10) #8, !dbg !208
  call void @llvm.dbg.value(metadata i32 0, metadata !186, metadata !DIExpression()) #8, !dbg !187
  %14 = getelementptr inbounds i8, i8* %0, i32 16, !dbg !209
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* noundef nonnull align 1 dereferenceable(16) %14, i8* noundef nonnull align 1 dereferenceable(16) %8, i32 16, i1 false) #8, !dbg !210
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %8) #8, !dbg !211
  ret i32 0, !dbg !212
}

; Function Attrs: nounwind uwtable
define dso_local i32 @NaCl_crypto_secretbox_open_easy(i8* noundef %0, i8* noundef %1, i64 noundef %2, i8* noundef %3, i8* noundef %4) local_unnamed_addr #0 !dbg !213 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !215, metadata !DIExpression()), !dbg !220
  call void @llvm.dbg.value(metadata i8* %1, metadata !216, metadata !DIExpression()), !dbg !220
  call void @llvm.dbg.value(metadata i64 %2, metadata !217, metadata !DIExpression()), !dbg !220
  call void @llvm.dbg.value(metadata i8* %3, metadata !218, metadata !DIExpression()), !dbg !220
  call void @llvm.dbg.value(metadata i8* %4, metadata !219, metadata !DIExpression()), !dbg !220
  call void @llvm.dbg.value(metadata i8* %0, metadata !221, metadata !DIExpression()) #8, !dbg !229
  call void @llvm.dbg.value(metadata i8* %1, metadata !224, metadata !DIExpression()) #8, !dbg !229
  call void @llvm.dbg.value(metadata i64 %2, metadata !225, metadata !DIExpression()) #8, !dbg !229
  call void @llvm.dbg.value(metadata i8* %3, metadata !226, metadata !DIExpression()) #8, !dbg !229
  call void @llvm.dbg.value(metadata i8* %4, metadata !227, metadata !DIExpression()) #8, !dbg !229
  call void @llvm.dbg.value(metadata i8* %1, metadata !228, metadata !DIExpression()) #8, !dbg !229
  %6 = call fastcc i32 @Hacl_SecretBox_ZeroPad_crypto_secretbox_open_detached(i8* noundef %0, i8* noundef %1, i8* noundef %1, i64 noundef %2, i8* noundef %3, i8* noundef %4) #8, !dbg !231
  ret i32 %6, !dbg !232
}

; Function Attrs: nounwind uwtable
define dso_local i32 @NaCl_crypto_box_beforenm(i8* noundef %0, i8* noundef %1, i8* noundef %2) local_unnamed_addr #0 !dbg !233 {
  %4 = alloca [48 x i8], align 1
  call void @llvm.dbg.value(metadata i8* %0, metadata !237, metadata !DIExpression()), !dbg !240
  call void @llvm.dbg.value(metadata i8* %1, metadata !238, metadata !DIExpression()), !dbg !240
  call void @llvm.dbg.value(metadata i8* %2, metadata !239, metadata !DIExpression()), !dbg !240
  call void @llvm.dbg.value(metadata i8* %0, metadata !241, metadata !DIExpression()) #8, !dbg !252
  call void @llvm.dbg.value(metadata i8* %1, metadata !244, metadata !DIExpression()) #8, !dbg !252
  call void @llvm.dbg.value(metadata i8* %2, metadata !245, metadata !DIExpression()) #8, !dbg !252
  %5 = getelementptr inbounds [48 x i8], [48 x i8]* %4, i32 0, i32 0, !dbg !254
  call void @llvm.lifetime.start.p0i8(i64 48, i8* nonnull %5) #8, !dbg !254
  call void @llvm.dbg.declare(metadata [48 x i8]* %4, metadata !246, metadata !DIExpression()) #8, !dbg !255
  call void @llvm.memset.p0i8.i32(i8* noundef nonnull align 1 dereferenceable(48) %5, i8 0, i32 48, i1 false) #8, !dbg !255
  call void @llvm.dbg.value(metadata i8* %5, metadata !250, metadata !DIExpression()) #8, !dbg !252
  %6 = getelementptr inbounds [48 x i8], [48 x i8]* %4, i32 0, i32 32, !dbg !256
  call void @llvm.dbg.value(metadata i8* %6, metadata !251, metadata !DIExpression()) #8, !dbg !252
  call void @Hacl_Curve25519_crypto_scalarmult(i8* noundef nonnull %5, i8* noundef %2, i8* noundef %1) #8, !dbg !257
  call void @Hacl_Salsa20_hsalsa20(i8* noundef %0, i8* noundef nonnull %5, i8* noundef nonnull %6) #8, !dbg !258
  call void @llvm.lifetime.end.p0i8(i64 48, i8* nonnull %5) #8, !dbg !259
  ret i32 0, !dbg !260
}

; Function Attrs: nounwind uwtable
define dso_local i32 @NaCl_crypto_box_detached_afternm(i8* noundef %0, i8* noundef %1, i8* noundef %2, i64 noundef %3, i8* noundef %4, i8* noundef %5) local_unnamed_addr #0 !dbg !261 {
  %7 = alloca [32 x i8], align 1
  call void @llvm.dbg.value(metadata i8* %0, metadata !263, metadata !DIExpression()), !dbg !269
  call void @llvm.dbg.value(metadata i8* %1, metadata !264, metadata !DIExpression()), !dbg !269
  call void @llvm.dbg.value(metadata i8* %2, metadata !265, metadata !DIExpression()), !dbg !269
  call void @llvm.dbg.value(metadata i64 %3, metadata !266, metadata !DIExpression()), !dbg !269
  call void @llvm.dbg.value(metadata i8* %4, metadata !267, metadata !DIExpression()), !dbg !269
  call void @llvm.dbg.value(metadata i8* %5, metadata !268, metadata !DIExpression()), !dbg !269
  call void @llvm.dbg.value(metadata i8* %0, metadata !270, metadata !DIExpression()) #8, !dbg !278
  call void @llvm.dbg.value(metadata i8* %1, metadata !273, metadata !DIExpression()) #8, !dbg !278
  call void @llvm.dbg.value(metadata i8* %2, metadata !274, metadata !DIExpression()) #8, !dbg !278
  call void @llvm.dbg.value(metadata i64 %3, metadata !275, metadata !DIExpression()) #8, !dbg !278
  call void @llvm.dbg.value(metadata i8* %4, metadata !276, metadata !DIExpression()) #8, !dbg !278
  call void @llvm.dbg.value(metadata i8* %5, metadata !277, metadata !DIExpression()) #8, !dbg !278
  call void @llvm.dbg.value(metadata i8* %0, metadata !55, metadata !DIExpression()) #8, !dbg !280
  call void @llvm.dbg.value(metadata i8* %1, metadata !58, metadata !DIExpression()) #8, !dbg !280
  call void @llvm.dbg.value(metadata i8* %2, metadata !59, metadata !DIExpression()) #8, !dbg !280
  call void @llvm.dbg.value(metadata i64 %3, metadata !60, metadata !DIExpression()) #8, !dbg !280
  call void @llvm.dbg.value(metadata i8* %4, metadata !61, metadata !DIExpression()) #8, !dbg !280
  call void @llvm.dbg.value(metadata i8* %5, metadata !62, metadata !DIExpression()) #8, !dbg !280
  %8 = trunc i64 %3 to i32, !dbg !282
  call void @llvm.dbg.value(metadata i32 %8, metadata !63, metadata !DIExpression()) #8, !dbg !280
  %9 = getelementptr inbounds [32 x i8], [32 x i8]* %7, i32 0, i32 0, !dbg !283
  call void @llvm.lifetime.start.p0i8(i64 32, i8* nonnull %9) #8, !dbg !283
  call void @llvm.dbg.declare(metadata [32 x i8]* %7, metadata !64, metadata !DIExpression()) #8, !dbg !284
  call void @llvm.memset.p0i8.i32(i8* noundef nonnull align 1 dereferenceable(32) %9, i8 0, i32 32, i1 false) #8, !dbg !284
  call void @Hacl_Salsa20_hsalsa20(i8* noundef nonnull %9, i8* noundef %5, i8* noundef %4) #8, !dbg !285
  %10 = add i32 %8, 32, !dbg !286
  %11 = getelementptr inbounds i8, i8* %4, i32 16, !dbg !287
  call void @Hacl_Salsa20_salsa20(i8* noundef %0, i8* noundef %2, i32 noundef %10, i8* noundef nonnull %9, i8* noundef nonnull %11, i64 noundef 0) #8, !dbg !288
  %12 = getelementptr inbounds i8, i8* %0, i32 32, !dbg !289
  call void @Hacl_Poly1305_64_crypto_onetimeauth(i8* noundef %1, i8* noundef nonnull %12, i64 noundef %3, i8* noundef %0) #8, !dbg !290
  call void @llvm.dbg.value(metadata i8* %0, metadata !79, metadata !DIExpression()) #8, !dbg !291
  call void @llvm.dbg.value(metadata i8 0, metadata !84, metadata !DIExpression()) #8, !dbg !291
  call void @llvm.memset.p0i8.i64(i8* noundef nonnull align 1 dereferenceable(32) %0, i8 0, i64 32, i1 false) #8, !dbg !293
  call void @llvm.dbg.value(metadata i8* %9, metadata !79, metadata !DIExpression()) #8, !dbg !294
  call void @llvm.dbg.value(metadata i8 0, metadata !84, metadata !DIExpression()) #8, !dbg !294
  call void @llvm.memset.p0i8.i64(i8* noundef nonnull align 1 dereferenceable(32) %9, i8 0, i64 32, i1 false) #8, !dbg !296
  call void @llvm.lifetime.end.p0i8(i64 32, i8* nonnull %9) #8, !dbg !297
  ret i32 0, !dbg !298
}

; Function Attrs: nounwind uwtable
define dso_local i32 @NaCl_crypto_box_detached(i8* noundef %0, i8* noundef %1, i8* noundef %2, i64 noundef %3, i8* noundef %4, i8* noundef %5, i8* noundef %6) local_unnamed_addr #0 !dbg !299 {
  %8 = alloca [32 x i8], align 1
  %9 = alloca [80 x i8], align 1
  call void @llvm.dbg.value(metadata i8* %0, metadata !303, metadata !DIExpression()), !dbg !310
  call void @llvm.dbg.value(metadata i8* %1, metadata !304, metadata !DIExpression()), !dbg !310
  call void @llvm.dbg.value(metadata i8* %2, metadata !305, metadata !DIExpression()), !dbg !310
  call void @llvm.dbg.value(metadata i64 %3, metadata !306, metadata !DIExpression()), !dbg !310
  call void @llvm.dbg.value(metadata i8* %4, metadata !307, metadata !DIExpression()), !dbg !310
  call void @llvm.dbg.value(metadata i8* %5, metadata !308, metadata !DIExpression()), !dbg !310
  call void @llvm.dbg.value(metadata i8* %6, metadata !309, metadata !DIExpression()), !dbg !310
  call void @llvm.dbg.value(metadata i8* %0, metadata !311, metadata !DIExpression()) #8, !dbg !328
  call void @llvm.dbg.value(metadata i8* %1, metadata !314, metadata !DIExpression()) #8, !dbg !328
  call void @llvm.dbg.value(metadata i8* %2, metadata !315, metadata !DIExpression()) #8, !dbg !328
  call void @llvm.dbg.value(metadata i64 %3, metadata !316, metadata !DIExpression()) #8, !dbg !328
  call void @llvm.dbg.value(metadata i8* %4, metadata !317, metadata !DIExpression()) #8, !dbg !328
  call void @llvm.dbg.value(metadata i8* %5, metadata !318, metadata !DIExpression()) #8, !dbg !328
  call void @llvm.dbg.value(metadata i8* %6, metadata !319, metadata !DIExpression()) #8, !dbg !328
  %10 = getelementptr inbounds [80 x i8], [80 x i8]* %9, i32 0, i32 0, !dbg !330
  call void @llvm.lifetime.start.p0i8(i64 80, i8* nonnull %10) #8, !dbg !330
  call void @llvm.dbg.declare(metadata [80 x i8]* %9, metadata !320, metadata !DIExpression()) #8, !dbg !331
  call void @llvm.memset.p0i8.i32(i8* noundef nonnull align 1 dereferenceable(80) %10, i8 0, i32 80, i1 false) #8, !dbg !331
  call void @llvm.dbg.value(metadata i8* %10, metadata !324, metadata !DIExpression()) #8, !dbg !328
  %11 = getelementptr inbounds [80 x i8], [80 x i8]* %9, i32 0, i32 32, !dbg !332
  call void @llvm.dbg.value(metadata i8* %11, metadata !325, metadata !DIExpression()) #8, !dbg !328
  %12 = getelementptr inbounds [80 x i8], [80 x i8]* %9, i32 0, i32 64, !dbg !333
  call void @llvm.dbg.value(metadata i8* %12, metadata !326, metadata !DIExpression()) #8, !dbg !328
  call void @Hacl_Curve25519_crypto_scalarmult(i8* noundef nonnull %10, i8* noundef %6, i8* noundef %5) #8, !dbg !334
  call void @Hacl_Salsa20_hsalsa20(i8* noundef nonnull %11, i8* noundef nonnull %10, i8* noundef nonnull %12) #8, !dbg !335
  call void @llvm.dbg.value(metadata i8* %0, metadata !55, metadata !DIExpression()) #8, !dbg !336
  call void @llvm.dbg.value(metadata i8* %1, metadata !58, metadata !DIExpression()) #8, !dbg !336
  call void @llvm.dbg.value(metadata i8* %2, metadata !59, metadata !DIExpression()) #8, !dbg !336
  call void @llvm.dbg.value(metadata i64 %3, metadata !60, metadata !DIExpression()) #8, !dbg !336
  call void @llvm.dbg.value(metadata i8* %4, metadata !61, metadata !DIExpression()) #8, !dbg !336
  call void @llvm.dbg.value(metadata i8* %11, metadata !62, metadata !DIExpression()) #8, !dbg !336
  %13 = trunc i64 %3 to i32, !dbg !338
  call void @llvm.dbg.value(metadata i32 %13, metadata !63, metadata !DIExpression()) #8, !dbg !336
  %14 = getelementptr inbounds [32 x i8], [32 x i8]* %8, i32 0, i32 0, !dbg !339
  call void @llvm.lifetime.start.p0i8(i64 32, i8* nonnull %14) #8, !dbg !339
  call void @llvm.dbg.declare(metadata [32 x i8]* %8, metadata !64, metadata !DIExpression()) #8, !dbg !340
  call void @llvm.memset.p0i8.i32(i8* noundef nonnull align 1 dereferenceable(32) %14, i8 0, i32 32, i1 false) #8, !dbg !340
  call void @Hacl_Salsa20_hsalsa20(i8* noundef nonnull %14, i8* noundef nonnull %11, i8* noundef %4) #8, !dbg !341
  %15 = add i32 %13, 32, !dbg !342
  %16 = getelementptr inbounds i8, i8* %4, i32 16, !dbg !343
  call void @Hacl_Salsa20_salsa20(i8* noundef %0, i8* noundef %2, i32 noundef %15, i8* noundef nonnull %14, i8* noundef nonnull %16, i64 noundef 0) #8, !dbg !344
  %17 = getelementptr inbounds i8, i8* %0, i32 32, !dbg !345
  call void @Hacl_Poly1305_64_crypto_onetimeauth(i8* noundef %1, i8* noundef nonnull %17, i64 noundef %3, i8* noundef %0) #8, !dbg !346
  call void @llvm.dbg.value(metadata i8* %0, metadata !79, metadata !DIExpression()) #8, !dbg !347
  call void @llvm.dbg.value(metadata i8 0, metadata !84, metadata !DIExpression()) #8, !dbg !347
  call void @llvm.memset.p0i8.i64(i8* noundef nonnull align 1 dereferenceable(32) %0, i8 0, i64 32, i1 false) #8, !dbg !349
  call void @llvm.dbg.value(metadata i8* %14, metadata !79, metadata !DIExpression()) #8, !dbg !350
  call void @llvm.dbg.value(metadata i8 0, metadata !84, metadata !DIExpression()) #8, !dbg !350
  call void @llvm.memset.p0i8.i64(i8* noundef nonnull align 1 dereferenceable(32) %14, i8 0, i64 32, i1 false) #8, !dbg !352
  call void @llvm.lifetime.end.p0i8(i64 32, i8* nonnull %14) #8, !dbg !353
  call void @llvm.dbg.value(metadata i32 0, metadata !327, metadata !DIExpression()) #8, !dbg !328
  call void @llvm.lifetime.end.p0i8(i64 80, i8* nonnull %10) #8, !dbg !354
  ret i32 0, !dbg !355
}

; Function Attrs: nounwind uwtable
define dso_local i32 @NaCl_crypto_box_open_detached(i8* noundef %0, i8* noundef %1, i8* noundef %2, i64 noundef %3, i8* noundef %4, i8* noundef %5, i8* noundef %6) local_unnamed_addr #0 !dbg !356 {
  %8 = alloca [80 x i8], align 1
  call void @llvm.dbg.value(metadata i8* %0, metadata !358, metadata !DIExpression()), !dbg !365
  call void @llvm.dbg.value(metadata i8* %1, metadata !359, metadata !DIExpression()), !dbg !365
  call void @llvm.dbg.value(metadata i8* %2, metadata !360, metadata !DIExpression()), !dbg !365
  call void @llvm.dbg.value(metadata i64 %3, metadata !361, metadata !DIExpression()), !dbg !365
  call void @llvm.dbg.value(metadata i8* %4, metadata !362, metadata !DIExpression()), !dbg !365
  call void @llvm.dbg.value(metadata i8* %5, metadata !363, metadata !DIExpression()), !dbg !365
  call void @llvm.dbg.value(metadata i8* %6, metadata !364, metadata !DIExpression()), !dbg !365
  call void @llvm.dbg.value(metadata i8* %0, metadata !366, metadata !DIExpression()) #8, !dbg !380
  call void @llvm.dbg.value(metadata i8* %1, metadata !369, metadata !DIExpression()) #8, !dbg !380
  call void @llvm.dbg.value(metadata i8* %2, metadata !370, metadata !DIExpression()) #8, !dbg !380
  call void @llvm.dbg.value(metadata i64 %3, metadata !371, metadata !DIExpression()) #8, !dbg !380
  call void @llvm.dbg.value(metadata i8* %4, metadata !372, metadata !DIExpression()) #8, !dbg !380
  call void @llvm.dbg.value(metadata i8* %5, metadata !373, metadata !DIExpression()) #8, !dbg !380
  call void @llvm.dbg.value(metadata i8* %6, metadata !374, metadata !DIExpression()) #8, !dbg !380
  %9 = getelementptr inbounds [80 x i8], [80 x i8]* %8, i32 0, i32 0, !dbg !382
  call void @llvm.lifetime.start.p0i8(i64 80, i8* nonnull %9) #8, !dbg !382
  call void @llvm.dbg.declare(metadata [80 x i8]* %8, metadata !375, metadata !DIExpression()) #8, !dbg !383
  call void @llvm.memset.p0i8.i32(i8* noundef nonnull align 1 dereferenceable(80) %9, i8 0, i32 80, i1 false) #8, !dbg !383
  call void @llvm.dbg.value(metadata i8* %9, metadata !376, metadata !DIExpression()) #8, !dbg !380
  %10 = getelementptr inbounds [80 x i8], [80 x i8]* %8, i32 0, i32 32, !dbg !384
  call void @llvm.dbg.value(metadata i8* %10, metadata !377, metadata !DIExpression()) #8, !dbg !380
  %11 = getelementptr inbounds [80 x i8], [80 x i8]* %8, i32 0, i32 64, !dbg !385
  call void @llvm.dbg.value(metadata i8* %11, metadata !378, metadata !DIExpression()) #8, !dbg !380
  call void @Hacl_Curve25519_crypto_scalarmult(i8* noundef nonnull %9, i8* noundef %6, i8* noundef %5) #8, !dbg !386
  call void @Hacl_Salsa20_hsalsa20(i8* noundef nonnull %10, i8* noundef nonnull %9, i8* noundef nonnull %11) #8, !dbg !387
  %12 = call fastcc i32 @Hacl_SecretBox_ZeroPad_crypto_secretbox_open_detached(i8* noundef %0, i8* noundef %1, i8* noundef %2, i64 noundef %3, i8* noundef %4, i8* noundef nonnull %10) #8, !dbg !388
  call void @llvm.dbg.value(metadata i32 %12, metadata !379, metadata !DIExpression()) #8, !dbg !380
  call void @llvm.lifetime.end.p0i8(i64 80, i8* nonnull %9) #8, !dbg !389
  ret i32 %12, !dbg !390
}

; Function Attrs: nounwind uwtable
define dso_local i32 @NaCl_crypto_box_easy_afternm(i8* noundef %0, i8* noundef %1, i64 noundef %2, i8* noundef %3, i8* noundef %4) local_unnamed_addr #0 !dbg !391 {
  %6 = alloca [32 x i8], align 1
  %7 = alloca [16 x i8], align 1
  call void @llvm.dbg.value(metadata i8* %0, metadata !393, metadata !DIExpression()), !dbg !398
  call void @llvm.dbg.value(metadata i8* %1, metadata !394, metadata !DIExpression()), !dbg !398
  call void @llvm.dbg.value(metadata i64 %2, metadata !395, metadata !DIExpression()), !dbg !398
  call void @llvm.dbg.value(metadata i8* %3, metadata !396, metadata !DIExpression()), !dbg !398
  call void @llvm.dbg.value(metadata i8* %4, metadata !397, metadata !DIExpression()), !dbg !398
  call void @llvm.dbg.value(metadata i8* %0, metadata !399, metadata !DIExpression()) #8, !dbg !408
  call void @llvm.dbg.value(metadata i8* %1, metadata !402, metadata !DIExpression()) #8, !dbg !408
  call void @llvm.dbg.value(metadata i64 %2, metadata !403, metadata !DIExpression()) #8, !dbg !408
  call void @llvm.dbg.value(metadata i8* %3, metadata !404, metadata !DIExpression()) #8, !dbg !408
  call void @llvm.dbg.value(metadata i8* %4, metadata !405, metadata !DIExpression()) #8, !dbg !408
  %8 = getelementptr inbounds [16 x i8], [16 x i8]* %7, i32 0, i32 0, !dbg !410
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %8) #8, !dbg !410
  call void @llvm.dbg.declare(metadata [16 x i8]* %7, metadata !406, metadata !DIExpression()) #8, !dbg !411
  call void @llvm.memset.p0i8.i32(i8* noundef nonnull align 1 dereferenceable(16) %8, i8 0, i32 16, i1 false) #8, !dbg !411
  call void @llvm.dbg.value(metadata i8* %0, metadata !270, metadata !DIExpression()) #8, !dbg !412
  call void @llvm.dbg.value(metadata i8* %8, metadata !273, metadata !DIExpression()) #8, !dbg !412
  call void @llvm.dbg.value(metadata i8* %1, metadata !274, metadata !DIExpression()) #8, !dbg !412
  call void @llvm.dbg.value(metadata i64 %2, metadata !275, metadata !DIExpression()) #8, !dbg !412
  call void @llvm.dbg.value(metadata i8* %3, metadata !276, metadata !DIExpression()) #8, !dbg !412
  call void @llvm.dbg.value(metadata i8* %4, metadata !277, metadata !DIExpression()) #8, !dbg !412
  call void @llvm.dbg.value(metadata i8* %0, metadata !55, metadata !DIExpression()) #8, !dbg !414
  call void @llvm.dbg.value(metadata i8* %8, metadata !58, metadata !DIExpression()) #8, !dbg !414
  call void @llvm.dbg.value(metadata i8* %1, metadata !59, metadata !DIExpression()) #8, !dbg !414
  call void @llvm.dbg.value(metadata i64 %2, metadata !60, metadata !DIExpression()) #8, !dbg !414
  call void @llvm.dbg.value(metadata i8* %3, metadata !61, metadata !DIExpression()) #8, !dbg !414
  call void @llvm.dbg.value(metadata i8* %4, metadata !62, metadata !DIExpression()) #8, !dbg !414
  %9 = trunc i64 %2 to i32, !dbg !416
  call void @llvm.dbg.value(metadata i32 %9, metadata !63, metadata !DIExpression()) #8, !dbg !414
  %10 = getelementptr inbounds [32 x i8], [32 x i8]* %6, i32 0, i32 0, !dbg !417
  call void @llvm.lifetime.start.p0i8(i64 32, i8* nonnull %10) #8, !dbg !417
  call void @llvm.dbg.declare(metadata [32 x i8]* %6, metadata !64, metadata !DIExpression()) #8, !dbg !418
  call void @llvm.memset.p0i8.i32(i8* noundef nonnull align 1 dereferenceable(32) %10, i8 0, i32 32, i1 false) #8, !dbg !418
  call void @Hacl_Salsa20_hsalsa20(i8* noundef nonnull %10, i8* noundef %4, i8* noundef %3) #8, !dbg !419
  %11 = add i32 %9, 32, !dbg !420
  %12 = getelementptr inbounds i8, i8* %3, i32 16, !dbg !421
  call void @Hacl_Salsa20_salsa20(i8* noundef %0, i8* noundef %1, i32 noundef %11, i8* noundef nonnull %10, i8* noundef nonnull %12, i64 noundef 0) #8, !dbg !422
  %13 = getelementptr inbounds i8, i8* %0, i32 32, !dbg !423
  call void @Hacl_Poly1305_64_crypto_onetimeauth(i8* noundef nonnull %8, i8* noundef nonnull %13, i64 noundef %2, i8* noundef %0) #8, !dbg !424
  call void @llvm.dbg.value(metadata i8* %0, metadata !79, metadata !DIExpression()) #8, !dbg !425
  call void @llvm.dbg.value(metadata i8 0, metadata !84, metadata !DIExpression()) #8, !dbg !425
  call void @llvm.memset.p0i8.i64(i8* noundef nonnull align 1 dereferenceable(32) %0, i8 0, i64 32, i1 false) #8, !dbg !427
  call void @llvm.dbg.value(metadata i8* %10, metadata !79, metadata !DIExpression()) #8, !dbg !428
  call void @llvm.dbg.value(metadata i8 0, metadata !84, metadata !DIExpression()) #8, !dbg !428
  call void @llvm.memset.p0i8.i64(i8* noundef nonnull align 1 dereferenceable(32) %10, i8 0, i64 32, i1 false) #8, !dbg !430
  call void @llvm.lifetime.end.p0i8(i64 32, i8* nonnull %10) #8, !dbg !431
  call void @llvm.dbg.value(metadata i32 0, metadata !407, metadata !DIExpression()) #8, !dbg !408
  %14 = getelementptr inbounds i8, i8* %0, i32 16, !dbg !432
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* noundef nonnull align 1 dereferenceable(16) %14, i8* noundef nonnull align 1 dereferenceable(16) %8, i32 16, i1 false) #8, !dbg !433
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %8) #8, !dbg !434
  ret i32 0, !dbg !435
}

; Function Attrs: nounwind uwtable
define dso_local i32 @NaCl_crypto_box_easy(i8* noundef %0, i8* noundef %1, i64 noundef %2, i8* noundef %3, i8* noundef %4, i8* noundef %5) local_unnamed_addr #0 !dbg !436 {
  %7 = alloca [32 x i8], align 1
  %8 = alloca [80 x i8], align 1
  %9 = alloca [16 x i8], align 1
  call void @llvm.dbg.value(metadata i8* %0, metadata !440, metadata !DIExpression()), !dbg !446
  call void @llvm.dbg.value(metadata i8* %1, metadata !441, metadata !DIExpression()), !dbg !446
  call void @llvm.dbg.value(metadata i64 %2, metadata !442, metadata !DIExpression()), !dbg !446
  call void @llvm.dbg.value(metadata i8* %3, metadata !443, metadata !DIExpression()), !dbg !446
  call void @llvm.dbg.value(metadata i8* %4, metadata !444, metadata !DIExpression()), !dbg !446
  call void @llvm.dbg.value(metadata i8* %5, metadata !445, metadata !DIExpression()), !dbg !446
  call void @llvm.dbg.value(metadata i8* %0, metadata !447, metadata !DIExpression()) #8, !dbg !457
  call void @llvm.dbg.value(metadata i8* %1, metadata !450, metadata !DIExpression()) #8, !dbg !457
  call void @llvm.dbg.value(metadata i64 %2, metadata !451, metadata !DIExpression()) #8, !dbg !457
  call void @llvm.dbg.value(metadata i8* %3, metadata !452, metadata !DIExpression()) #8, !dbg !457
  call void @llvm.dbg.value(metadata i8* %4, metadata !453, metadata !DIExpression()) #8, !dbg !457
  call void @llvm.dbg.value(metadata i8* %5, metadata !454, metadata !DIExpression()) #8, !dbg !457
  %10 = getelementptr inbounds [16 x i8], [16 x i8]* %9, i32 0, i32 0, !dbg !459
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %10) #8, !dbg !459
  call void @llvm.dbg.declare(metadata [16 x i8]* %9, metadata !455, metadata !DIExpression()) #8, !dbg !460
  call void @llvm.memset.p0i8.i32(i8* noundef nonnull align 1 dereferenceable(16) %10, i8 0, i32 16, i1 false) #8, !dbg !460
  call void @llvm.dbg.value(metadata i8* %0, metadata !311, metadata !DIExpression()) #8, !dbg !461
  call void @llvm.dbg.value(metadata i8* %10, metadata !314, metadata !DIExpression()) #8, !dbg !461
  call void @llvm.dbg.value(metadata i8* %1, metadata !315, metadata !DIExpression()) #8, !dbg !461
  call void @llvm.dbg.value(metadata i64 %2, metadata !316, metadata !DIExpression()) #8, !dbg !461
  call void @llvm.dbg.value(metadata i8* %3, metadata !317, metadata !DIExpression()) #8, !dbg !461
  call void @llvm.dbg.value(metadata i8* %4, metadata !318, metadata !DIExpression()) #8, !dbg !461
  call void @llvm.dbg.value(metadata i8* %5, metadata !319, metadata !DIExpression()) #8, !dbg !461
  %11 = getelementptr inbounds [80 x i8], [80 x i8]* %8, i32 0, i32 0, !dbg !463
  call void @llvm.lifetime.start.p0i8(i64 80, i8* nonnull %11) #8, !dbg !463
  call void @llvm.dbg.declare(metadata [80 x i8]* %8, metadata !320, metadata !DIExpression()) #8, !dbg !464
  call void @llvm.memset.p0i8.i32(i8* noundef nonnull align 1 dereferenceable(80) %11, i8 0, i32 80, i1 false) #8, !dbg !464
  call void @llvm.dbg.value(metadata i8* %11, metadata !324, metadata !DIExpression()) #8, !dbg !461
  %12 = getelementptr inbounds [80 x i8], [80 x i8]* %8, i32 0, i32 32, !dbg !465
  call void @llvm.dbg.value(metadata i8* %12, metadata !325, metadata !DIExpression()) #8, !dbg !461
  %13 = getelementptr inbounds [80 x i8], [80 x i8]* %8, i32 0, i32 64, !dbg !466
  call void @llvm.dbg.value(metadata i8* %13, metadata !326, metadata !DIExpression()) #8, !dbg !461
  call void @Hacl_Curve25519_crypto_scalarmult(i8* noundef nonnull %11, i8* noundef %5, i8* noundef %4) #8, !dbg !467
  call void @Hacl_Salsa20_hsalsa20(i8* noundef nonnull %12, i8* noundef nonnull %11, i8* noundef nonnull %13) #8, !dbg !468
  call void @llvm.dbg.value(metadata i8* %0, metadata !55, metadata !DIExpression()) #8, !dbg !469
  call void @llvm.dbg.value(metadata i8* %10, metadata !58, metadata !DIExpression()) #8, !dbg !469
  call void @llvm.dbg.value(metadata i8* %1, metadata !59, metadata !DIExpression()) #8, !dbg !469
  call void @llvm.dbg.value(metadata i64 %2, metadata !60, metadata !DIExpression()) #8, !dbg !469
  call void @llvm.dbg.value(metadata i8* %3, metadata !61, metadata !DIExpression()) #8, !dbg !469
  call void @llvm.dbg.value(metadata i8* %12, metadata !62, metadata !DIExpression()) #8, !dbg !469
  %14 = trunc i64 %2 to i32, !dbg !471
  call void @llvm.dbg.value(metadata i32 %14, metadata !63, metadata !DIExpression()) #8, !dbg !469
  %15 = getelementptr inbounds [32 x i8], [32 x i8]* %7, i32 0, i32 0, !dbg !472
  call void @llvm.lifetime.start.p0i8(i64 32, i8* nonnull %15) #8, !dbg !472
  call void @llvm.dbg.declare(metadata [32 x i8]* %7, metadata !64, metadata !DIExpression()) #8, !dbg !473
  call void @llvm.memset.p0i8.i32(i8* noundef nonnull align 1 dereferenceable(32) %15, i8 0, i32 32, i1 false) #8, !dbg !473
  call void @Hacl_Salsa20_hsalsa20(i8* noundef nonnull %15, i8* noundef nonnull %12, i8* noundef %3) #8, !dbg !474
  %16 = add i32 %14, 32, !dbg !475
  %17 = getelementptr inbounds i8, i8* %3, i32 16, !dbg !476
  call void @Hacl_Salsa20_salsa20(i8* noundef %0, i8* noundef %1, i32 noundef %16, i8* noundef nonnull %15, i8* noundef nonnull %17, i64 noundef 0) #8, !dbg !477
  %18 = getelementptr inbounds i8, i8* %0, i32 32, !dbg !478
  call void @Hacl_Poly1305_64_crypto_onetimeauth(i8* noundef nonnull %10, i8* noundef nonnull %18, i64 noundef %2, i8* noundef %0) #8, !dbg !479
  call void @llvm.dbg.value(metadata i8* %0, metadata !79, metadata !DIExpression()) #8, !dbg !480
  call void @llvm.dbg.value(metadata i8 0, metadata !84, metadata !DIExpression()) #8, !dbg !480
  call void @llvm.memset.p0i8.i64(i8* noundef nonnull align 1 dereferenceable(32) %0, i8 0, i64 32, i1 false) #8, !dbg !482
  call void @llvm.dbg.value(metadata i8* %15, metadata !79, metadata !DIExpression()) #8, !dbg !483
  call void @llvm.dbg.value(metadata i8 0, metadata !84, metadata !DIExpression()) #8, !dbg !483
  call void @llvm.memset.p0i8.i64(i8* noundef nonnull align 1 dereferenceable(32) %15, i8 0, i64 32, i1 false) #8, !dbg !485
  call void @llvm.lifetime.end.p0i8(i64 32, i8* nonnull %15) #8, !dbg !486
  call void @llvm.dbg.value(metadata i32 0, metadata !327, metadata !DIExpression()) #8, !dbg !461
  call void @llvm.lifetime.end.p0i8(i64 80, i8* nonnull %11) #8, !dbg !487
  call void @llvm.dbg.value(metadata i32 0, metadata !456, metadata !DIExpression()) #8, !dbg !457
  %19 = getelementptr inbounds i8, i8* %0, i32 16, !dbg !488
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* noundef nonnull align 1 dereferenceable(16) %19, i8* noundef nonnull align 1 dereferenceable(16) %10, i32 16, i1 false) #8, !dbg !489
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %10) #8, !dbg !490
  ret i32 0, !dbg !491
}

; Function Attrs: nounwind uwtable
define dso_local i32 @NaCl_crypto_box_open_easy(i8* noundef %0, i8* noundef %1, i64 noundef %2, i8* noundef %3, i8* noundef %4, i8* noundef %5) local_unnamed_addr #0 !dbg !492 {
  %7 = alloca [80 x i8], align 1
  call void @llvm.dbg.value(metadata i8* %0, metadata !494, metadata !DIExpression()), !dbg !500
  call void @llvm.dbg.value(metadata i8* %1, metadata !495, metadata !DIExpression()), !dbg !500
  call void @llvm.dbg.value(metadata i64 %2, metadata !496, metadata !DIExpression()), !dbg !500
  call void @llvm.dbg.value(metadata i8* %3, metadata !497, metadata !DIExpression()), !dbg !500
  call void @llvm.dbg.value(metadata i8* %4, metadata !498, metadata !DIExpression()), !dbg !500
  call void @llvm.dbg.value(metadata i8* %5, metadata !499, metadata !DIExpression()), !dbg !500
  call void @llvm.dbg.value(metadata i8* %0, metadata !501, metadata !DIExpression()) #8, !dbg !510
  call void @llvm.dbg.value(metadata i8* %1, metadata !504, metadata !DIExpression()) #8, !dbg !510
  call void @llvm.dbg.value(metadata i64 %2, metadata !505, metadata !DIExpression()) #8, !dbg !510
  call void @llvm.dbg.value(metadata i8* %3, metadata !506, metadata !DIExpression()) #8, !dbg !510
  call void @llvm.dbg.value(metadata i8* %4, metadata !507, metadata !DIExpression()) #8, !dbg !510
  call void @llvm.dbg.value(metadata i8* %5, metadata !508, metadata !DIExpression()) #8, !dbg !510
  %8 = getelementptr inbounds i8, i8* %1, i32 16, !dbg !512
  call void @llvm.dbg.value(metadata i8* %8, metadata !509, metadata !DIExpression()) #8, !dbg !510
  call void @llvm.dbg.value(metadata i8* %0, metadata !366, metadata !DIExpression()) #8, !dbg !513
  call void @llvm.dbg.value(metadata i8* %1, metadata !369, metadata !DIExpression()) #8, !dbg !513
  call void @llvm.dbg.value(metadata i8* %8, metadata !370, metadata !DIExpression()) #8, !dbg !513
  call void @llvm.dbg.value(metadata i64 %2, metadata !371, metadata !DIExpression()) #8, !dbg !513
  call void @llvm.dbg.value(metadata i8* %3, metadata !372, metadata !DIExpression()) #8, !dbg !513
  call void @llvm.dbg.value(metadata i8* %4, metadata !373, metadata !DIExpression()) #8, !dbg !513
  call void @llvm.dbg.value(metadata i8* %5, metadata !374, metadata !DIExpression()) #8, !dbg !513
  %9 = getelementptr inbounds [80 x i8], [80 x i8]* %7, i32 0, i32 0, !dbg !515
  call void @llvm.lifetime.start.p0i8(i64 80, i8* nonnull %9) #8, !dbg !515
  call void @llvm.dbg.declare(metadata [80 x i8]* %7, metadata !375, metadata !DIExpression()) #8, !dbg !516
  call void @llvm.memset.p0i8.i32(i8* noundef nonnull align 1 dereferenceable(80) %9, i8 0, i32 80, i1 false) #8, !dbg !516
  call void @llvm.dbg.value(metadata i8* %9, metadata !376, metadata !DIExpression()) #8, !dbg !513
  %10 = getelementptr inbounds [80 x i8], [80 x i8]* %7, i32 0, i32 32, !dbg !517
  call void @llvm.dbg.value(metadata i8* %10, metadata !377, metadata !DIExpression()) #8, !dbg !513
  %11 = getelementptr inbounds [80 x i8], [80 x i8]* %7, i32 0, i32 64, !dbg !518
  call void @llvm.dbg.value(metadata i8* %11, metadata !378, metadata !DIExpression()) #8, !dbg !513
  call void @Hacl_Curve25519_crypto_scalarmult(i8* noundef nonnull %9, i8* noundef %5, i8* noundef %4) #8, !dbg !519
  call void @Hacl_Salsa20_hsalsa20(i8* noundef nonnull %10, i8* noundef nonnull %9, i8* noundef nonnull %11) #8, !dbg !520
  %12 = call fastcc i32 @Hacl_SecretBox_ZeroPad_crypto_secretbox_open_detached(i8* noundef %0, i8* noundef %1, i8* noundef nonnull %8, i64 noundef %2, i8* noundef %3, i8* noundef nonnull %10) #8, !dbg !521
  call void @llvm.dbg.value(metadata i32 %12, metadata !379, metadata !DIExpression()) #8, !dbg !513
  call void @llvm.lifetime.end.p0i8(i64 80, i8* nonnull %9) #8, !dbg !522
  ret i32 %12, !dbg !523
}

; Function Attrs: nounwind uwtable
define dso_local i32 @NaCl_crypto_box_open_detached_afternm(i8* noundef %0, i8* noundef %1, i8* noundef %2, i64 noundef %3, i8* noundef %4, i8* noundef %5) local_unnamed_addr #0 !dbg !524 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !526, metadata !DIExpression()), !dbg !532
  call void @llvm.dbg.value(metadata i8* %1, metadata !527, metadata !DIExpression()), !dbg !532
  call void @llvm.dbg.value(metadata i8* %2, metadata !528, metadata !DIExpression()), !dbg !532
  call void @llvm.dbg.value(metadata i64 %3, metadata !529, metadata !DIExpression()), !dbg !532
  call void @llvm.dbg.value(metadata i8* %4, metadata !530, metadata !DIExpression()), !dbg !532
  call void @llvm.dbg.value(metadata i8* %5, metadata !531, metadata !DIExpression()), !dbg !532
  call void @llvm.dbg.value(metadata i8* %0, metadata !533, metadata !DIExpression()) #8, !dbg !541
  call void @llvm.dbg.value(metadata i8* %1, metadata !536, metadata !DIExpression()) #8, !dbg !541
  call void @llvm.dbg.value(metadata i8* %2, metadata !537, metadata !DIExpression()) #8, !dbg !541
  call void @llvm.dbg.value(metadata i64 %3, metadata !538, metadata !DIExpression()) #8, !dbg !541
  call void @llvm.dbg.value(metadata i8* %4, metadata !539, metadata !DIExpression()) #8, !dbg !541
  call void @llvm.dbg.value(metadata i8* %5, metadata !540, metadata !DIExpression()) #8, !dbg !541
  %7 = call fastcc i32 @Hacl_SecretBox_ZeroPad_crypto_secretbox_open_detached(i8* noundef %0, i8* noundef %1, i8* noundef %2, i64 noundef %3, i8* noundef %4, i8* noundef %5) #8, !dbg !543
  ret i32 %7, !dbg !544
}

; Function Attrs: nounwind uwtable
define dso_local i32 @NaCl_crypto_box_open_easy_afternm(i8* noundef %0, i8* noundef %1, i64 noundef %2, i8* noundef %3, i8* noundef %4) local_unnamed_addr #0 !dbg !545 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !547, metadata !DIExpression()), !dbg !552
  call void @llvm.dbg.value(metadata i8* %1, metadata !548, metadata !DIExpression()), !dbg !552
  call void @llvm.dbg.value(metadata i64 %2, metadata !549, metadata !DIExpression()), !dbg !552
  call void @llvm.dbg.value(metadata i8* %3, metadata !550, metadata !DIExpression()), !dbg !552
  call void @llvm.dbg.value(metadata i8* %4, metadata !551, metadata !DIExpression()), !dbg !552
  call void @llvm.dbg.value(metadata i8* %0, metadata !553, metadata !DIExpression()) #8, !dbg !562
  call void @llvm.dbg.value(metadata i8* %1, metadata !556, metadata !DIExpression()) #8, !dbg !562
  call void @llvm.dbg.value(metadata i64 %2, metadata !557, metadata !DIExpression()) #8, !dbg !562
  call void @llvm.dbg.value(metadata i8* %3, metadata !558, metadata !DIExpression()) #8, !dbg !562
  call void @llvm.dbg.value(metadata i8* %4, metadata !559, metadata !DIExpression()) #8, !dbg !562
  %6 = getelementptr inbounds i8, i8* %1, i32 16, !dbg !564
  call void @llvm.dbg.value(metadata i8* %6, metadata !560, metadata !DIExpression()) #8, !dbg !562
  call void @llvm.dbg.value(metadata i8* %0, metadata !533, metadata !DIExpression()) #8, !dbg !565
  call void @llvm.dbg.value(metadata i8* %1, metadata !536, metadata !DIExpression()) #8, !dbg !565
  call void @llvm.dbg.value(metadata i8* %6, metadata !537, metadata !DIExpression()) #8, !dbg !565
  call void @llvm.dbg.value(metadata i64 %2, metadata !538, metadata !DIExpression()) #8, !dbg !565
  call void @llvm.dbg.value(metadata i8* %3, metadata !539, metadata !DIExpression()) #8, !dbg !565
  call void @llvm.dbg.value(metadata i8* %4, metadata !540, metadata !DIExpression()) #8, !dbg !565
  %7 = call fastcc i32 @Hacl_SecretBox_ZeroPad_crypto_secretbox_open_detached(i8* noundef %0, i8* noundef %1, i8* noundef nonnull %6, i64 noundef %2, i8* noundef %3, i8* noundef %4) #8, !dbg !567
  call void @llvm.dbg.value(metadata i32 %7, metadata !561, metadata !DIExpression()) #8, !dbg !562
  ret i32 %7, !dbg !568
}

; Function Attrs: argmemonly mustprogress nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0i8(i64 immarg, i8* nocapture) #2

; Function Attrs: argmemonly mustprogress nofree nounwind willreturn writeonly
declare void @llvm.memset.p0i8.i32(i8* nocapture writeonly, i8, i32, i1 immarg) #3

declare !dbg !569 void @Hacl_Salsa20_hsalsa20(i8* noundef, i8* noundef, i8* noundef) local_unnamed_addr #4

declare !dbg !574 void @Hacl_Salsa20_salsa20(i8* noundef, i8* noundef, i32 noundef, i8* noundef, i8* noundef, i64 noundef) local_unnamed_addr #4

declare !dbg !577 void @Hacl_Poly1305_64_crypto_onetimeauth(i8* noundef, i8* noundef, i64 noundef, i8* noundef) local_unnamed_addr #4

; Function Attrs: argmemonly mustprogress nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0i8(i64 immarg, i8* nocapture) #2

declare !dbg !581 zeroext i8 @Hacl_Policies_cmp_bytes(i8* noundef, i8* noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: argmemonly mustprogress nofree nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i32(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i32, i1 immarg) #5

declare !dbg !585 void @Hacl_Curve25519_crypto_scalarmult(i8* noundef, i8* noundef, i8* noundef) local_unnamed_addr #4

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare void @llvm.dbg.value(metadata, metadata, metadata) #6

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #7

attributes #0 = { nounwind uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="i686" "target-features"="+cx8,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nofree nosync nounwind readnone speculatable willreturn }
attributes #2 = { argmemonly mustprogress nofree nosync nounwind willreturn }
attributes #3 = { argmemonly mustprogress nofree nounwind willreturn writeonly }
attributes #4 = { "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="i686" "target-features"="+cx8,+x87" "tune-cpu"="generic" }
attributes #5 = { argmemonly mustprogress nofree nounwind willreturn }
attributes #6 = { nofree nosync nounwind readnone speculatable willreturn }
attributes #7 = { argmemonly nofree nounwind willreturn writeonly }
attributes #8 = { nounwind }

!llvm.dbg.cu = !{!2}
!llvm.module.flags = !{!35, !36, !37, !38, !39, !40, !41}
!llvm.ident = !{!42}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(name: "NaCl_crypto_box_NONCEBYTES", scope: !2, file: !3, line: 303, type: !19, isLocal: false, isDefinition: true)
!2 = distinct !DICompileUnit(language: DW_LANG_C99, file: !3, producer: "Ubuntu clang version 14.0.0-1ubuntu1.1", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !4, globals: !16, splitDebugInlining: false, nameTableKind: None)
!3 = !DIFile(filename: "hacl-c/hacl-c/NaCl.c", directory: "/mnt/c/Users/fwill/Documents/HS24/semester_project/tools/binsec/binsec/examples/hacl", checksumkind: CSK_MD5, checksum: "25255f5dd4dec275fa7a74a04d4e141e")
!4 = !{!5, !10, !13}
!5 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint32_t", file: !6, line: 26, baseType: !7)
!6 = !DIFile(filename: "/usr/include/bits/stdint-uintn.h", directory: "", checksumkind: CSK_MD5, checksum: "2bf2ae53c58c01b1a1b9383b5195125c")
!7 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uint32_t", file: !8, line: 42, baseType: !9)
!8 = !DIFile(filename: "/usr/include/bits/types.h", directory: "", checksumkind: CSK_MD5, checksum: "d108b5f93a74c50510d7d9bc0ab36df9")
!9 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!10 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint64_t", file: !6, line: 27, baseType: !11)
!11 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uint64_t", file: !8, line: 48, baseType: !12)
!12 = !DIBasicType(name: "unsigned long long", size: 64, encoding: DW_ATE_unsigned)
!13 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint8_t", file: !6, line: 24, baseType: !14)
!14 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uint8_t", file: !8, line: 38, baseType: !15)
!15 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!16 = !{!0, !17, !25, !27, !29, !31, !33}
!17 = !DIGlobalVariableExpression(var: !18, expr: !DIExpression())
!18 = distinct !DIGlobalVariable(name: "NaCl_crypto_box_PUBLICKEYBYTES", scope: !2, file: !3, line: 305, type: !19, isLocal: false, isDefinition: true)
!19 = !DIDerivedType(tag: DW_TAG_typedef, name: "Prims_int", file: !20, line: 378, baseType: !21)
!20 = !DIFile(filename: "hacl-c/hacl-c/kremlib.h", directory: "/mnt/c/Users/fwill/Documents/HS24/semester_project/tools/binsec/binsec/examples/hacl", checksumkind: CSK_MD5, checksum: "cde125f1f98cb7b9ee1f380d4178ebe4")
!21 = !DIDerivedType(tag: DW_TAG_typedef, name: "int32_t", file: !22, line: 26, baseType: !23)
!22 = !DIFile(filename: "/usr/include/bits/stdint-intn.h", directory: "", checksumkind: CSK_MD5, checksum: "55bcbdc3159515ebd91d351a70d505f4")
!23 = !DIDerivedType(tag: DW_TAG_typedef, name: "__int32_t", file: !8, line: 41, baseType: !24)
!24 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!25 = !DIGlobalVariableExpression(var: !26, expr: !DIExpression())
!26 = distinct !DIGlobalVariable(name: "NaCl_crypto_box_SECRETKEYBYTES", scope: !2, file: !3, line: 307, type: !19, isLocal: false, isDefinition: true)
!27 = !DIGlobalVariableExpression(var: !28, expr: !DIExpression())
!28 = distinct !DIGlobalVariable(name: "NaCl_crypto_box_MACBYTES", scope: !2, file: !3, line: 309, type: !19, isLocal: false, isDefinition: true)
!29 = !DIGlobalVariableExpression(var: !30, expr: !DIExpression())
!30 = distinct !DIGlobalVariable(name: "NaCl_crypto_secretbox_NONCEBYTES", scope: !2, file: !3, line: 311, type: !19, isLocal: false, isDefinition: true)
!31 = !DIGlobalVariableExpression(var: !32, expr: !DIExpression())
!32 = distinct !DIGlobalVariable(name: "NaCl_crypto_secretbox_KEYBYTES", scope: !2, file: !3, line: 313, type: !19, isLocal: false, isDefinition: true)
!33 = !DIGlobalVariableExpression(var: !34, expr: !DIExpression())
!34 = distinct !DIGlobalVariable(name: "NaCl_crypto_secretbox_MACBYTES", scope: !2, file: !3, line: 315, type: !19, isLocal: false, isDefinition: true)
!35 = !{i32 1, !"NumRegisterParameters", i32 0}
!36 = !{i32 7, !"Dwarf Version", i32 5}
!37 = !{i32 2, !"Debug Info Version", i32 3}
!38 = !{i32 1, !"wchar_size", i32 4}
!39 = !{i32 7, !"PIC Level", i32 2}
!40 = !{i32 7, !"PIE Level", i32 2}
!41 = !{i32 7, !"uwtable", i32 1}
!42 = !{!"Ubuntu clang version 14.0.0-1ubuntu1.1"}
!43 = distinct !DISubprogram(name: "NaCl_crypto_secretbox_detached", scope: !3, file: !3, line: 318, type: !44, scopeLine: 326, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !47)
!44 = !DISubroutineType(types: !45)
!45 = !{!5, !46, !46, !46, !10, !46, !46}
!46 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !13, size: 32)
!47 = !{!48, !49, !50, !51, !52, !53}
!48 = !DILocalVariable(name: "c", arg: 1, scope: !43, file: !3, line: 319, type: !46)
!49 = !DILocalVariable(name: "mac", arg: 2, scope: !43, file: !3, line: 320, type: !46)
!50 = !DILocalVariable(name: "m", arg: 3, scope: !43, file: !3, line: 321, type: !46)
!51 = !DILocalVariable(name: "mlen", arg: 4, scope: !43, file: !3, line: 322, type: !10)
!52 = !DILocalVariable(name: "n1", arg: 5, scope: !43, file: !3, line: 323, type: !46)
!53 = !DILocalVariable(name: "k1", arg: 6, scope: !43, file: !3, line: 324, type: !46)
!54 = !DILocation(line: 0, scope: !43)
!55 = !DILocalVariable(name: "c", arg: 1, scope: !56, file: !3, line: 66, type: !46)
!56 = distinct !DISubprogram(name: "Hacl_SecretBox_ZeroPad_crypto_secretbox_detached", scope: !3, file: !3, line: 65, type: !44, scopeLine: 73, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !57)
!57 = !{!55, !58, !59, !60, !61, !62, !63, !64}
!58 = !DILocalVariable(name: "mac", arg: 2, scope: !56, file: !3, line: 67, type: !46)
!59 = !DILocalVariable(name: "m", arg: 3, scope: !56, file: !3, line: 68, type: !46)
!60 = !DILocalVariable(name: "mlen", arg: 4, scope: !56, file: !3, line: 69, type: !10)
!61 = !DILocalVariable(name: "n1", arg: 5, scope: !56, file: !3, line: 70, type: !46)
!62 = !DILocalVariable(name: "k1", arg: 6, scope: !56, file: !3, line: 71, type: !46)
!63 = !DILocalVariable(name: "mlen_", scope: !56, file: !3, line: 74, type: !5)
!64 = !DILocalVariable(name: "subkey", scope: !56, file: !3, line: 75, type: !65)
!65 = !DICompositeType(tag: DW_TAG_array_type, baseType: !13, size: 256, elements: !66)
!66 = !{!67}
!67 = !DISubrange(count: 32)
!68 = !DILocation(line: 0, scope: !56, inlinedAt: !69)
!69 = distinct !DILocation(line: 327, column: 10, scope: !43)
!70 = !DILocation(line: 74, column: 20, scope: !56, inlinedAt: !69)
!71 = !DILocation(line: 75, column: 3, scope: !56, inlinedAt: !69)
!72 = !DILocation(line: 75, column: 11, scope: !56, inlinedAt: !69)
!73 = !DILocation(line: 76, column: 3, scope: !56, inlinedAt: !69)
!74 = !DILocation(line: 77, column: 36, scope: !56, inlinedAt: !69)
!75 = !DILocation(line: 77, column: 64, scope: !56, inlinedAt: !69)
!76 = !DILocation(line: 77, column: 3, scope: !56, inlinedAt: !69)
!77 = !DILocation(line: 78, column: 46, scope: !56, inlinedAt: !69)
!78 = !DILocation(line: 78, column: 3, scope: !56, inlinedAt: !69)
!79 = !DILocalVariable(name: "b", arg: 1, scope: !80, file: !3, line: 27, type: !46)
!80 = distinct !DISubprogram(name: "Hacl_SecretBox_ZeroPad_set_zero_bytes", scope: !3, file: !3, line: 27, type: !81, scopeLine: 28, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !83)
!81 = !DISubroutineType(types: !82)
!82 = !{null, !46}
!83 = !{!79, !84}
!84 = !DILocalVariable(name: "zero1", scope: !80, file: !3, line: 29, type: !13)
!85 = !DILocation(line: 0, scope: !80, inlinedAt: !86)
!86 = distinct !DILocation(line: 79, column: 3, scope: !56, inlinedAt: !69)
!87 = !DILocation(line: 31, column: 9, scope: !80, inlinedAt: !86)
!88 = !DILocation(line: 0, scope: !80, inlinedAt: !89)
!89 = distinct !DILocation(line: 80, column: 3, scope: !56, inlinedAt: !69)
!90 = !DILocation(line: 31, column: 9, scope: !80, inlinedAt: !89)
!91 = !DILocation(line: 82, column: 1, scope: !56, inlinedAt: !69)
!92 = !DILocation(line: 327, column: 3, scope: !43)
!93 = distinct !DISubprogram(name: "NaCl_crypto_secretbox_open_detached", scope: !3, file: !3, line: 331, type: !44, scopeLine: 339, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !94)
!94 = !{!95, !96, !97, !98, !99, !100}
!95 = !DILocalVariable(name: "m", arg: 1, scope: !93, file: !3, line: 332, type: !46)
!96 = !DILocalVariable(name: "c", arg: 2, scope: !93, file: !3, line: 333, type: !46)
!97 = !DILocalVariable(name: "mac", arg: 3, scope: !93, file: !3, line: 334, type: !46)
!98 = !DILocalVariable(name: "clen", arg: 4, scope: !93, file: !3, line: 335, type: !10)
!99 = !DILocalVariable(name: "n1", arg: 5, scope: !93, file: !3, line: 336, type: !46)
!100 = !DILocalVariable(name: "k1", arg: 6, scope: !93, file: !3, line: 337, type: !46)
!101 = !DILocation(line: 0, scope: !93)
!102 = !DILocation(line: 340, column: 10, scope: !93)
!103 = !DILocation(line: 340, column: 3, scope: !93)
!104 = distinct !DISubprogram(name: "Hacl_SecretBox_ZeroPad_crypto_secretbox_open_detached", scope: !3, file: !3, line: 107, type: !44, scopeLine: 115, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !105)
!105 = !{!106, !107, !108, !109, !110, !111, !112, !116, !117, !118, !119, !120, !121, !122}
!106 = !DILocalVariable(name: "m", arg: 1, scope: !104, file: !3, line: 108, type: !46)
!107 = !DILocalVariable(name: "c", arg: 2, scope: !104, file: !3, line: 109, type: !46)
!108 = !DILocalVariable(name: "mac", arg: 3, scope: !104, file: !3, line: 110, type: !46)
!109 = !DILocalVariable(name: "clen", arg: 4, scope: !104, file: !3, line: 111, type: !10)
!110 = !DILocalVariable(name: "n1", arg: 5, scope: !104, file: !3, line: 112, type: !46)
!111 = !DILocalVariable(name: "k1", arg: 6, scope: !104, file: !3, line: 113, type: !46)
!112 = !DILocalVariable(name: "tmp", scope: !104, file: !3, line: 116, type: !113)
!113 = !DICompositeType(tag: DW_TAG_array_type, baseType: !13, size: 896, elements: !114)
!114 = !{!115}
!115 = !DISubrange(count: 112)
!116 = !DILocalVariable(name: "subkey", scope: !104, file: !3, line: 117, type: !46)
!117 = !DILocalVariable(name: "mackey", scope: !104, file: !3, line: 118, type: !46)
!118 = !DILocalVariable(name: "mackey_", scope: !104, file: !3, line: 119, type: !46)
!119 = !DILocalVariable(name: "cmac", scope: !104, file: !3, line: 120, type: !46)
!120 = !DILocalVariable(name: "result", scope: !104, file: !3, line: 124, type: !13)
!121 = !DILocalVariable(name: "verify", scope: !104, file: !3, line: 125, type: !13)
!122 = !DILocalVariable(name: "z", scope: !104, file: !3, line: 127, type: !5)
!123 = !DILocation(line: 0, scope: !104)
!124 = !DILocation(line: 116, column: 3, scope: !104)
!125 = !DILocation(line: 116, column: 11, scope: !104)
!126 = !DILocation(line: 118, column: 25, scope: !104)
!127 = !DILocation(line: 119, column: 26, scope: !104)
!128 = !DILocation(line: 120, column: 23, scope: !104)
!129 = !DILocation(line: 121, column: 3, scope: !104)
!130 = !DILocation(line: 122, column: 67, scope: !104)
!131 = !DILocation(line: 122, column: 3, scope: !104)
!132 = !DILocation(line: 123, column: 47, scope: !104)
!133 = !DILocation(line: 123, column: 3, scope: !104)
!134 = !DILocation(line: 124, column: 20, scope: !104)
!135 = !DILocalVariable(name: "m", arg: 1, scope: !136, file: !3, line: 86, type: !46)
!136 = distinct !DISubprogram(name: "Hacl_SecretBox_ZeroPad_crypto_secretbox_open_detached_decrypt", scope: !3, file: !3, line: 85, type: !137, scopeLine: 93, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !139)
!137 = !DISubroutineType(types: !138)
!138 = !{!5, !46, !46, !10, !46, !46, !13}
!139 = !{!135, !140, !141, !142, !143, !144, !145}
!140 = !DILocalVariable(name: "c", arg: 2, scope: !136, file: !3, line: 87, type: !46)
!141 = !DILocalVariable(name: "clen", arg: 3, scope: !136, file: !3, line: 88, type: !10)
!142 = !DILocalVariable(name: "n1", arg: 4, scope: !136, file: !3, line: 89, type: !46)
!143 = !DILocalVariable(name: "subkey", arg: 5, scope: !136, file: !3, line: 90, type: !46)
!144 = !DILocalVariable(name: "verify", arg: 6, scope: !136, file: !3, line: 91, type: !13)
!145 = !DILocalVariable(name: "clen_", scope: !136, file: !3, line: 94, type: !5)
!146 = !DILocation(line: 0, scope: !136, inlinedAt: !147)
!147 = distinct !DILocation(line: 128, column: 5, scope: !104)
!148 = !DILocation(line: 95, column: 14, scope: !149, inlinedAt: !147)
!149 = distinct !DILexicalBlock(scope: !136, file: !3, line: 95, column: 7)
!150 = !DILocation(line: 95, column: 7, scope: !136, inlinedAt: !147)
!151 = !DILocation(line: 94, column: 20, scope: !136, inlinedAt: !147)
!152 = !DILocation(line: 97, column: 38, scope: !153, inlinedAt: !147)
!153 = distinct !DILexicalBlock(scope: !149, file: !3, line: 96, column: 3)
!154 = !DILocation(line: 97, column: 5, scope: !153, inlinedAt: !147)
!155 = !DILocation(line: 0, scope: !80, inlinedAt: !156)
!156 = distinct !DILocation(line: 98, column: 5, scope: !153, inlinedAt: !147)
!157 = !DILocation(line: 31, column: 9, scope: !80, inlinedAt: !156)
!158 = !DILocation(line: 0, scope: !80, inlinedAt: !159)
!159 = distinct !DILocation(line: 99, column: 5, scope: !153, inlinedAt: !147)
!160 = !DILocation(line: 31, column: 9, scope: !80, inlinedAt: !159)
!161 = !DILocation(line: 100, column: 5, scope: !153, inlinedAt: !147)
!162 = !DILocation(line: 0, scope: !149, inlinedAt: !147)
!163 = !DILocation(line: 135, column: 1, scope: !104)
!164 = !DILocation(line: 134, column: 3, scope: !104)
!165 = distinct !DISubprogram(name: "NaCl_crypto_secretbox_easy", scope: !3, file: !3, line: 344, type: !166, scopeLine: 345, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !168)
!166 = !DISubroutineType(types: !167)
!167 = !{!5, !46, !46, !10, !46, !46}
!168 = !{!169, !170, !171, !172, !173}
!169 = !DILocalVariable(name: "c", arg: 1, scope: !165, file: !3, line: 344, type: !46)
!170 = !DILocalVariable(name: "m", arg: 2, scope: !165, file: !3, line: 344, type: !46)
!171 = !DILocalVariable(name: "mlen", arg: 3, scope: !165, file: !3, line: 344, type: !10)
!172 = !DILocalVariable(name: "n1", arg: 4, scope: !165, file: !3, line: 344, type: !46)
!173 = !DILocalVariable(name: "k1", arg: 5, scope: !165, file: !3, line: 344, type: !46)
!174 = !DILocation(line: 0, scope: !165)
!175 = !DILocalVariable(name: "c", arg: 1, scope: !176, file: !3, line: 139, type: !46)
!176 = distinct !DISubprogram(name: "Hacl_SecretBox_ZeroPad_crypto_secretbox_easy", scope: !3, file: !3, line: 138, type: !166, scopeLine: 145, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !177)
!177 = !{!175, !178, !179, !180, !181, !182, !186}
!178 = !DILocalVariable(name: "m", arg: 2, scope: !176, file: !3, line: 140, type: !46)
!179 = !DILocalVariable(name: "mlen", arg: 3, scope: !176, file: !3, line: 141, type: !10)
!180 = !DILocalVariable(name: "n1", arg: 4, scope: !176, file: !3, line: 142, type: !46)
!181 = !DILocalVariable(name: "k1", arg: 5, scope: !176, file: !3, line: 143, type: !46)
!182 = !DILocalVariable(name: "cmac", scope: !176, file: !3, line: 146, type: !183)
!183 = !DICompositeType(tag: DW_TAG_array_type, baseType: !13, size: 128, elements: !184)
!184 = !{!185}
!185 = !DISubrange(count: 16)
!186 = !DILocalVariable(name: "res", scope: !176, file: !3, line: 147, type: !5)
!187 = !DILocation(line: 0, scope: !176, inlinedAt: !188)
!188 = distinct !DILocation(line: 346, column: 10, scope: !165)
!189 = !DILocation(line: 146, column: 3, scope: !176, inlinedAt: !188)
!190 = !DILocation(line: 146, column: 11, scope: !176, inlinedAt: !188)
!191 = !DILocation(line: 0, scope: !56, inlinedAt: !192)
!192 = distinct !DILocation(line: 147, column: 18, scope: !176, inlinedAt: !188)
!193 = !DILocation(line: 74, column: 20, scope: !56, inlinedAt: !192)
!194 = !DILocation(line: 75, column: 3, scope: !56, inlinedAt: !192)
!195 = !DILocation(line: 75, column: 11, scope: !56, inlinedAt: !192)
!196 = !DILocation(line: 76, column: 3, scope: !56, inlinedAt: !192)
!197 = !DILocation(line: 77, column: 36, scope: !56, inlinedAt: !192)
!198 = !DILocation(line: 77, column: 64, scope: !56, inlinedAt: !192)
!199 = !DILocation(line: 77, column: 3, scope: !56, inlinedAt: !192)
!200 = !DILocation(line: 78, column: 46, scope: !56, inlinedAt: !192)
!201 = !DILocation(line: 78, column: 3, scope: !56, inlinedAt: !192)
!202 = !DILocation(line: 0, scope: !80, inlinedAt: !203)
!203 = distinct !DILocation(line: 79, column: 3, scope: !56, inlinedAt: !192)
!204 = !DILocation(line: 31, column: 9, scope: !80, inlinedAt: !203)
!205 = !DILocation(line: 0, scope: !80, inlinedAt: !206)
!206 = distinct !DILocation(line: 80, column: 3, scope: !56, inlinedAt: !192)
!207 = !DILocation(line: 31, column: 9, scope: !80, inlinedAt: !206)
!208 = !DILocation(line: 82, column: 1, scope: !56, inlinedAt: !192)
!209 = !DILocation(line: 148, column: 12, scope: !176, inlinedAt: !188)
!210 = !DILocation(line: 148, column: 3, scope: !176, inlinedAt: !188)
!211 = !DILocation(line: 150, column: 1, scope: !176, inlinedAt: !188)
!212 = !DILocation(line: 346, column: 3, scope: !165)
!213 = distinct !DISubprogram(name: "NaCl_crypto_secretbox_open_easy", scope: !3, file: !3, line: 350, type: !166, scopeLine: 357, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !214)
!214 = !{!215, !216, !217, !218, !219}
!215 = !DILocalVariable(name: "m", arg: 1, scope: !213, file: !3, line: 351, type: !46)
!216 = !DILocalVariable(name: "c", arg: 2, scope: !213, file: !3, line: 352, type: !46)
!217 = !DILocalVariable(name: "clen", arg: 3, scope: !213, file: !3, line: 353, type: !10)
!218 = !DILocalVariable(name: "n1", arg: 4, scope: !213, file: !3, line: 354, type: !46)
!219 = !DILocalVariable(name: "k1", arg: 5, scope: !213, file: !3, line: 355, type: !46)
!220 = !DILocation(line: 0, scope: !213)
!221 = !DILocalVariable(name: "m", arg: 1, scope: !222, file: !3, line: 154, type: !46)
!222 = distinct !DISubprogram(name: "Hacl_SecretBox_ZeroPad_crypto_secretbox_open_easy", scope: !3, file: !3, line: 153, type: !166, scopeLine: 160, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !223)
!223 = !{!221, !224, !225, !226, !227, !228}
!224 = !DILocalVariable(name: "c", arg: 2, scope: !222, file: !3, line: 155, type: !46)
!225 = !DILocalVariable(name: "clen", arg: 3, scope: !222, file: !3, line: 156, type: !10)
!226 = !DILocalVariable(name: "n1", arg: 4, scope: !222, file: !3, line: 157, type: !46)
!227 = !DILocalVariable(name: "k1", arg: 5, scope: !222, file: !3, line: 158, type: !46)
!228 = !DILocalVariable(name: "mac", scope: !222, file: !3, line: 161, type: !46)
!229 = !DILocation(line: 0, scope: !222, inlinedAt: !230)
!230 = distinct !DILocation(line: 358, column: 10, scope: !213)
!231 = !DILocation(line: 162, column: 10, scope: !222, inlinedAt: !230)
!232 = !DILocation(line: 358, column: 3, scope: !213)
!233 = distinct !DISubprogram(name: "NaCl_crypto_box_beforenm", scope: !3, file: !3, line: 361, type: !234, scopeLine: 362, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !236)
!234 = !DISubroutineType(types: !235)
!235 = !{!5, !46, !46, !46}
!236 = !{!237, !238, !239}
!237 = !DILocalVariable(name: "k1", arg: 1, scope: !233, file: !3, line: 361, type: !46)
!238 = !DILocalVariable(name: "pk", arg: 2, scope: !233, file: !3, line: 361, type: !46)
!239 = !DILocalVariable(name: "sk", arg: 3, scope: !233, file: !3, line: 361, type: !46)
!240 = !DILocation(line: 0, scope: !233)
!241 = !DILocalVariable(name: "k1", arg: 1, scope: !242, file: !3, line: 165, type: !46)
!242 = distinct !DISubprogram(name: "Hacl_Box_ZeroPad_crypto_box_beforenm", scope: !3, file: !3, line: 165, type: !234, scopeLine: 166, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !243)
!243 = !{!241, !244, !245, !246, !250, !251}
!244 = !DILocalVariable(name: "pk", arg: 2, scope: !242, file: !3, line: 165, type: !46)
!245 = !DILocalVariable(name: "sk", arg: 3, scope: !242, file: !3, line: 165, type: !46)
!246 = !DILocalVariable(name: "tmp", scope: !242, file: !3, line: 167, type: !247)
!247 = !DICompositeType(tag: DW_TAG_array_type, baseType: !13, size: 384, elements: !248)
!248 = !{!249}
!249 = !DISubrange(count: 48)
!250 = !DILocalVariable(name: "hsalsa_k", scope: !242, file: !3, line: 168, type: !46)
!251 = !DILocalVariable(name: "hsalsa_n", scope: !242, file: !3, line: 169, type: !46)
!252 = !DILocation(line: 0, scope: !242, inlinedAt: !253)
!253 = distinct !DILocation(line: 363, column: 10, scope: !233)
!254 = !DILocation(line: 167, column: 3, scope: !242, inlinedAt: !253)
!255 = !DILocation(line: 167, column: 11, scope: !242, inlinedAt: !253)
!256 = !DILocation(line: 169, column: 27, scope: !242, inlinedAt: !253)
!257 = !DILocation(line: 170, column: 3, scope: !242, inlinedAt: !253)
!258 = !DILocation(line: 171, column: 3, scope: !242, inlinedAt: !253)
!259 = !DILocation(line: 173, column: 1, scope: !242, inlinedAt: !253)
!260 = !DILocation(line: 363, column: 3, scope: !233)
!261 = distinct !DISubprogram(name: "NaCl_crypto_box_detached_afternm", scope: !3, file: !3, line: 367, type: !44, scopeLine: 375, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !262)
!262 = !{!263, !264, !265, !266, !267, !268}
!263 = !DILocalVariable(name: "c", arg: 1, scope: !261, file: !3, line: 368, type: !46)
!264 = !DILocalVariable(name: "mac", arg: 2, scope: !261, file: !3, line: 369, type: !46)
!265 = !DILocalVariable(name: "m", arg: 3, scope: !261, file: !3, line: 370, type: !46)
!266 = !DILocalVariable(name: "mlen", arg: 4, scope: !261, file: !3, line: 371, type: !10)
!267 = !DILocalVariable(name: "n1", arg: 5, scope: !261, file: !3, line: 372, type: !46)
!268 = !DILocalVariable(name: "k1", arg: 6, scope: !261, file: !3, line: 373, type: !46)
!269 = !DILocation(line: 0, scope: !261)
!270 = !DILocalVariable(name: "c", arg: 1, scope: !271, file: !3, line: 177, type: !46)
!271 = distinct !DISubprogram(name: "Hacl_Box_ZeroPad_crypto_box_detached_afternm", scope: !3, file: !3, line: 176, type: !44, scopeLine: 184, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !272)
!272 = !{!270, !273, !274, !275, !276, !277}
!273 = !DILocalVariable(name: "mac", arg: 2, scope: !271, file: !3, line: 178, type: !46)
!274 = !DILocalVariable(name: "m", arg: 3, scope: !271, file: !3, line: 179, type: !46)
!275 = !DILocalVariable(name: "mlen", arg: 4, scope: !271, file: !3, line: 180, type: !10)
!276 = !DILocalVariable(name: "n1", arg: 5, scope: !271, file: !3, line: 181, type: !46)
!277 = !DILocalVariable(name: "k1", arg: 6, scope: !271, file: !3, line: 182, type: !46)
!278 = !DILocation(line: 0, scope: !271, inlinedAt: !279)
!279 = distinct !DILocation(line: 376, column: 10, scope: !261)
!280 = !DILocation(line: 0, scope: !56, inlinedAt: !281)
!281 = distinct !DILocation(line: 185, column: 10, scope: !271, inlinedAt: !279)
!282 = !DILocation(line: 74, column: 20, scope: !56, inlinedAt: !281)
!283 = !DILocation(line: 75, column: 3, scope: !56, inlinedAt: !281)
!284 = !DILocation(line: 75, column: 11, scope: !56, inlinedAt: !281)
!285 = !DILocation(line: 76, column: 3, scope: !56, inlinedAt: !281)
!286 = !DILocation(line: 77, column: 36, scope: !56, inlinedAt: !281)
!287 = !DILocation(line: 77, column: 64, scope: !56, inlinedAt: !281)
!288 = !DILocation(line: 77, column: 3, scope: !56, inlinedAt: !281)
!289 = !DILocation(line: 78, column: 46, scope: !56, inlinedAt: !281)
!290 = !DILocation(line: 78, column: 3, scope: !56, inlinedAt: !281)
!291 = !DILocation(line: 0, scope: !80, inlinedAt: !292)
!292 = distinct !DILocation(line: 79, column: 3, scope: !56, inlinedAt: !281)
!293 = !DILocation(line: 31, column: 9, scope: !80, inlinedAt: !292)
!294 = !DILocation(line: 0, scope: !80, inlinedAt: !295)
!295 = distinct !DILocation(line: 80, column: 3, scope: !56, inlinedAt: !281)
!296 = !DILocation(line: 31, column: 9, scope: !80, inlinedAt: !295)
!297 = !DILocation(line: 82, column: 1, scope: !56, inlinedAt: !281)
!298 = !DILocation(line: 376, column: 3, scope: !261)
!299 = distinct !DISubprogram(name: "NaCl_crypto_box_detached", scope: !3, file: !3, line: 380, type: !300, scopeLine: 389, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !302)
!300 = !DISubroutineType(types: !301)
!301 = !{!5, !46, !46, !46, !10, !46, !46, !46}
!302 = !{!303, !304, !305, !306, !307, !308, !309}
!303 = !DILocalVariable(name: "c", arg: 1, scope: !299, file: !3, line: 381, type: !46)
!304 = !DILocalVariable(name: "mac", arg: 2, scope: !299, file: !3, line: 382, type: !46)
!305 = !DILocalVariable(name: "m", arg: 3, scope: !299, file: !3, line: 383, type: !46)
!306 = !DILocalVariable(name: "mlen", arg: 4, scope: !299, file: !3, line: 384, type: !10)
!307 = !DILocalVariable(name: "n1", arg: 5, scope: !299, file: !3, line: 385, type: !46)
!308 = !DILocalVariable(name: "pk", arg: 6, scope: !299, file: !3, line: 386, type: !46)
!309 = !DILocalVariable(name: "sk", arg: 7, scope: !299, file: !3, line: 387, type: !46)
!310 = !DILocation(line: 0, scope: !299)
!311 = !DILocalVariable(name: "c", arg: 1, scope: !312, file: !3, line: 190, type: !46)
!312 = distinct !DISubprogram(name: "Hacl_Box_ZeroPad_crypto_box_detached", scope: !3, file: !3, line: 189, type: !300, scopeLine: 198, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !313)
!313 = !{!311, !314, !315, !316, !317, !318, !319, !320, !324, !325, !326, !327}
!314 = !DILocalVariable(name: "mac", arg: 2, scope: !312, file: !3, line: 191, type: !46)
!315 = !DILocalVariable(name: "m", arg: 3, scope: !312, file: !3, line: 192, type: !46)
!316 = !DILocalVariable(name: "mlen", arg: 4, scope: !312, file: !3, line: 193, type: !10)
!317 = !DILocalVariable(name: "n1", arg: 5, scope: !312, file: !3, line: 194, type: !46)
!318 = !DILocalVariable(name: "pk", arg: 6, scope: !312, file: !3, line: 195, type: !46)
!319 = !DILocalVariable(name: "sk", arg: 7, scope: !312, file: !3, line: 196, type: !46)
!320 = !DILocalVariable(name: "key", scope: !312, file: !3, line: 199, type: !321)
!321 = !DICompositeType(tag: DW_TAG_array_type, baseType: !13, size: 640, elements: !322)
!322 = !{!323}
!323 = !DISubrange(count: 80)
!324 = !DILocalVariable(name: "k1", scope: !312, file: !3, line: 200, type: !46)
!325 = !DILocalVariable(name: "subkey", scope: !312, file: !3, line: 201, type: !46)
!326 = !DILocalVariable(name: "hsalsa_n", scope: !312, file: !3, line: 202, type: !46)
!327 = !DILocalVariable(name: "z", scope: !312, file: !3, line: 205, type: !5)
!328 = !DILocation(line: 0, scope: !312, inlinedAt: !329)
!329 = distinct !DILocation(line: 390, column: 10, scope: !299)
!330 = !DILocation(line: 199, column: 3, scope: !312, inlinedAt: !329)
!331 = !DILocation(line: 199, column: 11, scope: !312, inlinedAt: !329)
!332 = !DILocation(line: 201, column: 25, scope: !312, inlinedAt: !329)
!333 = !DILocation(line: 202, column: 27, scope: !312, inlinedAt: !329)
!334 = !DILocation(line: 203, column: 3, scope: !312, inlinedAt: !329)
!335 = !DILocation(line: 204, column: 3, scope: !312, inlinedAt: !329)
!336 = !DILocation(line: 0, scope: !56, inlinedAt: !337)
!337 = distinct !DILocation(line: 205, column: 16, scope: !312, inlinedAt: !329)
!338 = !DILocation(line: 74, column: 20, scope: !56, inlinedAt: !337)
!339 = !DILocation(line: 75, column: 3, scope: !56, inlinedAt: !337)
!340 = !DILocation(line: 75, column: 11, scope: !56, inlinedAt: !337)
!341 = !DILocation(line: 76, column: 3, scope: !56, inlinedAt: !337)
!342 = !DILocation(line: 77, column: 36, scope: !56, inlinedAt: !337)
!343 = !DILocation(line: 77, column: 64, scope: !56, inlinedAt: !337)
!344 = !DILocation(line: 77, column: 3, scope: !56, inlinedAt: !337)
!345 = !DILocation(line: 78, column: 46, scope: !56, inlinedAt: !337)
!346 = !DILocation(line: 78, column: 3, scope: !56, inlinedAt: !337)
!347 = !DILocation(line: 0, scope: !80, inlinedAt: !348)
!348 = distinct !DILocation(line: 79, column: 3, scope: !56, inlinedAt: !337)
!349 = !DILocation(line: 31, column: 9, scope: !80, inlinedAt: !348)
!350 = !DILocation(line: 0, scope: !80, inlinedAt: !351)
!351 = distinct !DILocation(line: 80, column: 3, scope: !56, inlinedAt: !337)
!352 = !DILocation(line: 31, column: 9, scope: !80, inlinedAt: !351)
!353 = !DILocation(line: 82, column: 1, scope: !56, inlinedAt: !337)
!354 = !DILocation(line: 207, column: 1, scope: !312, inlinedAt: !329)
!355 = !DILocation(line: 390, column: 3, scope: !299)
!356 = distinct !DISubprogram(name: "NaCl_crypto_box_open_detached", scope: !3, file: !3, line: 394, type: !300, scopeLine: 403, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !357)
!357 = !{!358, !359, !360, !361, !362, !363, !364}
!358 = !DILocalVariable(name: "m", arg: 1, scope: !356, file: !3, line: 395, type: !46)
!359 = !DILocalVariable(name: "c", arg: 2, scope: !356, file: !3, line: 396, type: !46)
!360 = !DILocalVariable(name: "mac", arg: 3, scope: !356, file: !3, line: 397, type: !46)
!361 = !DILocalVariable(name: "mlen", arg: 4, scope: !356, file: !3, line: 398, type: !10)
!362 = !DILocalVariable(name: "n1", arg: 5, scope: !356, file: !3, line: 399, type: !46)
!363 = !DILocalVariable(name: "pk", arg: 6, scope: !356, file: !3, line: 400, type: !46)
!364 = !DILocalVariable(name: "sk", arg: 7, scope: !356, file: !3, line: 401, type: !46)
!365 = !DILocation(line: 0, scope: !356)
!366 = !DILocalVariable(name: "m", arg: 1, scope: !367, file: !3, line: 211, type: !46)
!367 = distinct !DISubprogram(name: "Hacl_Box_ZeroPad_crypto_box_open_detached", scope: !3, file: !3, line: 210, type: !300, scopeLine: 219, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !368)
!368 = !{!366, !369, !370, !371, !372, !373, !374, !375, !376, !377, !378, !379}
!369 = !DILocalVariable(name: "c", arg: 2, scope: !367, file: !3, line: 212, type: !46)
!370 = !DILocalVariable(name: "mac", arg: 3, scope: !367, file: !3, line: 213, type: !46)
!371 = !DILocalVariable(name: "mlen", arg: 4, scope: !367, file: !3, line: 214, type: !10)
!372 = !DILocalVariable(name: "n1", arg: 5, scope: !367, file: !3, line: 215, type: !46)
!373 = !DILocalVariable(name: "pk", arg: 6, scope: !367, file: !3, line: 216, type: !46)
!374 = !DILocalVariable(name: "sk", arg: 7, scope: !367, file: !3, line: 217, type: !46)
!375 = !DILocalVariable(name: "key", scope: !367, file: !3, line: 220, type: !321)
!376 = !DILocalVariable(name: "k1", scope: !367, file: !3, line: 221, type: !46)
!377 = !DILocalVariable(name: "subkey", scope: !367, file: !3, line: 222, type: !46)
!378 = !DILocalVariable(name: "hsalsa_n", scope: !367, file: !3, line: 223, type: !46)
!379 = !DILocalVariable(name: "z", scope: !367, file: !3, line: 227, type: !5)
!380 = !DILocation(line: 0, scope: !367, inlinedAt: !381)
!381 = distinct !DILocation(line: 404, column: 10, scope: !356)
!382 = !DILocation(line: 220, column: 3, scope: !367, inlinedAt: !381)
!383 = !DILocation(line: 220, column: 11, scope: !367, inlinedAt: !381)
!384 = !DILocation(line: 222, column: 25, scope: !367, inlinedAt: !381)
!385 = !DILocation(line: 223, column: 27, scope: !367, inlinedAt: !381)
!386 = !DILocation(line: 224, column: 3, scope: !367, inlinedAt: !381)
!387 = !DILocation(line: 225, column: 3, scope: !367, inlinedAt: !381)
!388 = !DILocation(line: 227, column: 7, scope: !367, inlinedAt: !381)
!389 = !DILocation(line: 229, column: 1, scope: !367, inlinedAt: !381)
!390 = !DILocation(line: 404, column: 3, scope: !356)
!391 = distinct !DISubprogram(name: "NaCl_crypto_box_easy_afternm", scope: !3, file: !3, line: 408, type: !166, scopeLine: 409, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !392)
!392 = !{!393, !394, !395, !396, !397}
!393 = !DILocalVariable(name: "c", arg: 1, scope: !391, file: !3, line: 408, type: !46)
!394 = !DILocalVariable(name: "m", arg: 2, scope: !391, file: !3, line: 408, type: !46)
!395 = !DILocalVariable(name: "mlen", arg: 3, scope: !391, file: !3, line: 408, type: !10)
!396 = !DILocalVariable(name: "n1", arg: 4, scope: !391, file: !3, line: 408, type: !46)
!397 = !DILocalVariable(name: "k1", arg: 5, scope: !391, file: !3, line: 408, type: !46)
!398 = !DILocation(line: 0, scope: !391)
!399 = !DILocalVariable(name: "c", arg: 1, scope: !400, file: !3, line: 233, type: !46)
!400 = distinct !DISubprogram(name: "Hacl_Box_ZeroPad_crypto_box_easy_afternm", scope: !3, file: !3, line: 232, type: !166, scopeLine: 239, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !401)
!401 = !{!399, !402, !403, !404, !405, !406, !407}
!402 = !DILocalVariable(name: "m", arg: 2, scope: !400, file: !3, line: 234, type: !46)
!403 = !DILocalVariable(name: "mlen", arg: 3, scope: !400, file: !3, line: 235, type: !10)
!404 = !DILocalVariable(name: "n1", arg: 4, scope: !400, file: !3, line: 236, type: !46)
!405 = !DILocalVariable(name: "k1", arg: 5, scope: !400, file: !3, line: 237, type: !46)
!406 = !DILocalVariable(name: "cmac", scope: !400, file: !3, line: 240, type: !183)
!407 = !DILocalVariable(name: "z", scope: !400, file: !3, line: 241, type: !5)
!408 = !DILocation(line: 0, scope: !400, inlinedAt: !409)
!409 = distinct !DILocation(line: 410, column: 10, scope: !391)
!410 = !DILocation(line: 240, column: 3, scope: !400, inlinedAt: !409)
!411 = !DILocation(line: 240, column: 11, scope: !400, inlinedAt: !409)
!412 = !DILocation(line: 0, scope: !271, inlinedAt: !413)
!413 = distinct !DILocation(line: 241, column: 16, scope: !400, inlinedAt: !409)
!414 = !DILocation(line: 0, scope: !56, inlinedAt: !415)
!415 = distinct !DILocation(line: 185, column: 10, scope: !271, inlinedAt: !413)
!416 = !DILocation(line: 74, column: 20, scope: !56, inlinedAt: !415)
!417 = !DILocation(line: 75, column: 3, scope: !56, inlinedAt: !415)
!418 = !DILocation(line: 75, column: 11, scope: !56, inlinedAt: !415)
!419 = !DILocation(line: 76, column: 3, scope: !56, inlinedAt: !415)
!420 = !DILocation(line: 77, column: 36, scope: !56, inlinedAt: !415)
!421 = !DILocation(line: 77, column: 64, scope: !56, inlinedAt: !415)
!422 = !DILocation(line: 77, column: 3, scope: !56, inlinedAt: !415)
!423 = !DILocation(line: 78, column: 46, scope: !56, inlinedAt: !415)
!424 = !DILocation(line: 78, column: 3, scope: !56, inlinedAt: !415)
!425 = !DILocation(line: 0, scope: !80, inlinedAt: !426)
!426 = distinct !DILocation(line: 79, column: 3, scope: !56, inlinedAt: !415)
!427 = !DILocation(line: 31, column: 9, scope: !80, inlinedAt: !426)
!428 = !DILocation(line: 0, scope: !80, inlinedAt: !429)
!429 = distinct !DILocation(line: 80, column: 3, scope: !56, inlinedAt: !415)
!430 = !DILocation(line: 31, column: 9, scope: !80, inlinedAt: !429)
!431 = !DILocation(line: 82, column: 1, scope: !56, inlinedAt: !415)
!432 = !DILocation(line: 242, column: 12, scope: !400, inlinedAt: !409)
!433 = !DILocation(line: 242, column: 3, scope: !400, inlinedAt: !409)
!434 = !DILocation(line: 244, column: 1, scope: !400, inlinedAt: !409)
!435 = !DILocation(line: 410, column: 3, scope: !391)
!436 = distinct !DISubprogram(name: "NaCl_crypto_box_easy", scope: !3, file: !3, line: 414, type: !437, scopeLine: 422, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !439)
!437 = !DISubroutineType(types: !438)
!438 = !{!5, !46, !46, !10, !46, !46, !46}
!439 = !{!440, !441, !442, !443, !444, !445}
!440 = !DILocalVariable(name: "c", arg: 1, scope: !436, file: !3, line: 415, type: !46)
!441 = !DILocalVariable(name: "m", arg: 2, scope: !436, file: !3, line: 416, type: !46)
!442 = !DILocalVariable(name: "mlen", arg: 3, scope: !436, file: !3, line: 417, type: !10)
!443 = !DILocalVariable(name: "n1", arg: 4, scope: !436, file: !3, line: 418, type: !46)
!444 = !DILocalVariable(name: "pk", arg: 5, scope: !436, file: !3, line: 419, type: !46)
!445 = !DILocalVariable(name: "sk", arg: 6, scope: !436, file: !3, line: 420, type: !46)
!446 = !DILocation(line: 0, scope: !436)
!447 = !DILocalVariable(name: "c", arg: 1, scope: !448, file: !3, line: 248, type: !46)
!448 = distinct !DISubprogram(name: "Hacl_Box_ZeroPad_crypto_box_easy", scope: !3, file: !3, line: 247, type: !437, scopeLine: 255, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !449)
!449 = !{!447, !450, !451, !452, !453, !454, !455, !456}
!450 = !DILocalVariable(name: "m", arg: 2, scope: !448, file: !3, line: 249, type: !46)
!451 = !DILocalVariable(name: "mlen", arg: 3, scope: !448, file: !3, line: 250, type: !10)
!452 = !DILocalVariable(name: "n1", arg: 4, scope: !448, file: !3, line: 251, type: !46)
!453 = !DILocalVariable(name: "pk", arg: 5, scope: !448, file: !3, line: 252, type: !46)
!454 = !DILocalVariable(name: "sk", arg: 6, scope: !448, file: !3, line: 253, type: !46)
!455 = !DILocalVariable(name: "cmac", scope: !448, file: !3, line: 256, type: !183)
!456 = !DILocalVariable(name: "res", scope: !448, file: !3, line: 257, type: !5)
!457 = !DILocation(line: 0, scope: !448, inlinedAt: !458)
!458 = distinct !DILocation(line: 423, column: 10, scope: !436)
!459 = !DILocation(line: 256, column: 3, scope: !448, inlinedAt: !458)
!460 = !DILocation(line: 256, column: 11, scope: !448, inlinedAt: !458)
!461 = !DILocation(line: 0, scope: !312, inlinedAt: !462)
!462 = distinct !DILocation(line: 257, column: 18, scope: !448, inlinedAt: !458)
!463 = !DILocation(line: 199, column: 3, scope: !312, inlinedAt: !462)
!464 = !DILocation(line: 199, column: 11, scope: !312, inlinedAt: !462)
!465 = !DILocation(line: 201, column: 25, scope: !312, inlinedAt: !462)
!466 = !DILocation(line: 202, column: 27, scope: !312, inlinedAt: !462)
!467 = !DILocation(line: 203, column: 3, scope: !312, inlinedAt: !462)
!468 = !DILocation(line: 204, column: 3, scope: !312, inlinedAt: !462)
!469 = !DILocation(line: 0, scope: !56, inlinedAt: !470)
!470 = distinct !DILocation(line: 205, column: 16, scope: !312, inlinedAt: !462)
!471 = !DILocation(line: 74, column: 20, scope: !56, inlinedAt: !470)
!472 = !DILocation(line: 75, column: 3, scope: !56, inlinedAt: !470)
!473 = !DILocation(line: 75, column: 11, scope: !56, inlinedAt: !470)
!474 = !DILocation(line: 76, column: 3, scope: !56, inlinedAt: !470)
!475 = !DILocation(line: 77, column: 36, scope: !56, inlinedAt: !470)
!476 = !DILocation(line: 77, column: 64, scope: !56, inlinedAt: !470)
!477 = !DILocation(line: 77, column: 3, scope: !56, inlinedAt: !470)
!478 = !DILocation(line: 78, column: 46, scope: !56, inlinedAt: !470)
!479 = !DILocation(line: 78, column: 3, scope: !56, inlinedAt: !470)
!480 = !DILocation(line: 0, scope: !80, inlinedAt: !481)
!481 = distinct !DILocation(line: 79, column: 3, scope: !56, inlinedAt: !470)
!482 = !DILocation(line: 31, column: 9, scope: !80, inlinedAt: !481)
!483 = !DILocation(line: 0, scope: !80, inlinedAt: !484)
!484 = distinct !DILocation(line: 80, column: 3, scope: !56, inlinedAt: !470)
!485 = !DILocation(line: 31, column: 9, scope: !80, inlinedAt: !484)
!486 = !DILocation(line: 82, column: 1, scope: !56, inlinedAt: !470)
!487 = !DILocation(line: 207, column: 1, scope: !312, inlinedAt: !462)
!488 = !DILocation(line: 258, column: 12, scope: !448, inlinedAt: !458)
!489 = !DILocation(line: 258, column: 3, scope: !448, inlinedAt: !458)
!490 = !DILocation(line: 260, column: 1, scope: !448, inlinedAt: !458)
!491 = !DILocation(line: 423, column: 3, scope: !436)
!492 = distinct !DISubprogram(name: "NaCl_crypto_box_open_easy", scope: !3, file: !3, line: 427, type: !437, scopeLine: 435, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !493)
!493 = !{!494, !495, !496, !497, !498, !499}
!494 = !DILocalVariable(name: "m", arg: 1, scope: !492, file: !3, line: 428, type: !46)
!495 = !DILocalVariable(name: "c", arg: 2, scope: !492, file: !3, line: 429, type: !46)
!496 = !DILocalVariable(name: "mlen", arg: 3, scope: !492, file: !3, line: 430, type: !10)
!497 = !DILocalVariable(name: "n1", arg: 4, scope: !492, file: !3, line: 431, type: !46)
!498 = !DILocalVariable(name: "pk", arg: 5, scope: !492, file: !3, line: 432, type: !46)
!499 = !DILocalVariable(name: "sk", arg: 6, scope: !492, file: !3, line: 433, type: !46)
!500 = !DILocation(line: 0, scope: !492)
!501 = !DILocalVariable(name: "m", arg: 1, scope: !502, file: !3, line: 264, type: !46)
!502 = distinct !DISubprogram(name: "Hacl_Box_ZeroPad_crypto_box_open_easy", scope: !3, file: !3, line: 263, type: !437, scopeLine: 271, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !503)
!503 = !{!501, !504, !505, !506, !507, !508, !509}
!504 = !DILocalVariable(name: "c", arg: 2, scope: !502, file: !3, line: 265, type: !46)
!505 = !DILocalVariable(name: "mlen", arg: 3, scope: !502, file: !3, line: 266, type: !10)
!506 = !DILocalVariable(name: "n1", arg: 4, scope: !502, file: !3, line: 267, type: !46)
!507 = !DILocalVariable(name: "pk", arg: 5, scope: !502, file: !3, line: 268, type: !46)
!508 = !DILocalVariable(name: "sk", arg: 6, scope: !502, file: !3, line: 269, type: !46)
!509 = !DILocalVariable(name: "mac", scope: !502, file: !3, line: 272, type: !46)
!510 = !DILocation(line: 0, scope: !502, inlinedAt: !511)
!511 = distinct !DILocation(line: 436, column: 10, scope: !492)
!512 = !DILocation(line: 272, column: 20, scope: !502, inlinedAt: !511)
!513 = !DILocation(line: 0, scope: !367, inlinedAt: !514)
!514 = distinct !DILocation(line: 273, column: 10, scope: !502, inlinedAt: !511)
!515 = !DILocation(line: 220, column: 3, scope: !367, inlinedAt: !514)
!516 = !DILocation(line: 220, column: 11, scope: !367, inlinedAt: !514)
!517 = !DILocation(line: 222, column: 25, scope: !367, inlinedAt: !514)
!518 = !DILocation(line: 223, column: 27, scope: !367, inlinedAt: !514)
!519 = !DILocation(line: 224, column: 3, scope: !367, inlinedAt: !514)
!520 = !DILocation(line: 225, column: 3, scope: !367, inlinedAt: !514)
!521 = !DILocation(line: 227, column: 7, scope: !367, inlinedAt: !514)
!522 = !DILocation(line: 229, column: 1, scope: !367, inlinedAt: !514)
!523 = !DILocation(line: 436, column: 3, scope: !492)
!524 = distinct !DISubprogram(name: "NaCl_crypto_box_open_detached_afternm", scope: !3, file: !3, line: 440, type: !44, scopeLine: 448, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !525)
!525 = !{!526, !527, !528, !529, !530, !531}
!526 = !DILocalVariable(name: "m", arg: 1, scope: !524, file: !3, line: 441, type: !46)
!527 = !DILocalVariable(name: "c", arg: 2, scope: !524, file: !3, line: 442, type: !46)
!528 = !DILocalVariable(name: "mac", arg: 3, scope: !524, file: !3, line: 443, type: !46)
!529 = !DILocalVariable(name: "mlen", arg: 4, scope: !524, file: !3, line: 444, type: !10)
!530 = !DILocalVariable(name: "n1", arg: 5, scope: !524, file: !3, line: 445, type: !46)
!531 = !DILocalVariable(name: "k1", arg: 6, scope: !524, file: !3, line: 446, type: !46)
!532 = !DILocation(line: 0, scope: !524)
!533 = !DILocalVariable(name: "m", arg: 1, scope: !534, file: !3, line: 278, type: !46)
!534 = distinct !DISubprogram(name: "Hacl_Box_ZeroPad_crypto_box_open_detached_afternm", scope: !3, file: !3, line: 277, type: !44, scopeLine: 285, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !535)
!535 = !{!533, !536, !537, !538, !539, !540}
!536 = !DILocalVariable(name: "c", arg: 2, scope: !534, file: !3, line: 279, type: !46)
!537 = !DILocalVariable(name: "mac", arg: 3, scope: !534, file: !3, line: 280, type: !46)
!538 = !DILocalVariable(name: "mlen", arg: 4, scope: !534, file: !3, line: 281, type: !10)
!539 = !DILocalVariable(name: "n1", arg: 5, scope: !534, file: !3, line: 282, type: !46)
!540 = !DILocalVariable(name: "k1", arg: 6, scope: !534, file: !3, line: 283, type: !46)
!541 = !DILocation(line: 0, scope: !534, inlinedAt: !542)
!542 = distinct !DILocation(line: 449, column: 10, scope: !524)
!543 = !DILocation(line: 286, column: 10, scope: !534, inlinedAt: !542)
!544 = !DILocation(line: 449, column: 3, scope: !524)
!545 = distinct !DISubprogram(name: "NaCl_crypto_box_open_easy_afternm", scope: !3, file: !3, line: 453, type: !166, scopeLine: 460, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !546)
!546 = !{!547, !548, !549, !550, !551}
!547 = !DILocalVariable(name: "m", arg: 1, scope: !545, file: !3, line: 454, type: !46)
!548 = !DILocalVariable(name: "c", arg: 2, scope: !545, file: !3, line: 455, type: !46)
!549 = !DILocalVariable(name: "mlen", arg: 3, scope: !545, file: !3, line: 456, type: !10)
!550 = !DILocalVariable(name: "n1", arg: 4, scope: !545, file: !3, line: 457, type: !46)
!551 = !DILocalVariable(name: "k1", arg: 5, scope: !545, file: !3, line: 458, type: !46)
!552 = !DILocation(line: 0, scope: !545)
!553 = !DILocalVariable(name: "m", arg: 1, scope: !554, file: !3, line: 291, type: !46)
!554 = distinct !DISubprogram(name: "Hacl_Box_ZeroPad_crypto_box_open_easy_afternm", scope: !3, file: !3, line: 290, type: !166, scopeLine: 297, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !555)
!555 = !{!553, !556, !557, !558, !559, !560, !561}
!556 = !DILocalVariable(name: "c", arg: 2, scope: !554, file: !3, line: 292, type: !46)
!557 = !DILocalVariable(name: "mlen", arg: 3, scope: !554, file: !3, line: 293, type: !10)
!558 = !DILocalVariable(name: "n1", arg: 4, scope: !554, file: !3, line: 294, type: !46)
!559 = !DILocalVariable(name: "k1", arg: 5, scope: !554, file: !3, line: 295, type: !46)
!560 = !DILocalVariable(name: "mac", scope: !554, file: !3, line: 298, type: !46)
!561 = !DILocalVariable(name: "t", scope: !554, file: !3, line: 299, type: !5)
!562 = !DILocation(line: 0, scope: !554, inlinedAt: !563)
!563 = distinct !DILocation(line: 461, column: 10, scope: !545)
!564 = !DILocation(line: 298, column: 20, scope: !554, inlinedAt: !563)
!565 = !DILocation(line: 0, scope: !534, inlinedAt: !566)
!566 = distinct !DILocation(line: 299, column: 16, scope: !554, inlinedAt: !563)
!567 = !DILocation(line: 286, column: 10, scope: !534, inlinedAt: !566)
!568 = !DILocation(line: 461, column: 3, scope: !545)
!569 = !DISubprogram(name: "Hacl_Salsa20_hsalsa20", scope: !570, file: !570, line: 83, type: !571, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !573)
!570 = !DIFile(filename: "hacl-c/hacl-c/Hacl_Salsa20.h", directory: "/mnt/c/Users/fwill/Documents/HS24/semester_project/tools/binsec/binsec/examples/hacl", checksumkind: CSK_MD5, checksum: "8d4b539cd3d7eb7155073ae2eacb2e38")
!571 = !DISubroutineType(types: !572)
!572 = !{null, !46, !46, !46}
!573 = !{}
!574 = !DISubprogram(name: "Hacl_Salsa20_salsa20", scope: !570, file: !570, line: 74, type: !575, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !573)
!575 = !DISubroutineType(types: !576)
!576 = !{null, !46, !46, !5, !46, !46, !10}
!577 = !DISubprogram(name: "Hacl_Poly1305_64_crypto_onetimeauth", scope: !578, file: !578, line: 110, type: !579, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !573)
!578 = !DIFile(filename: "hacl-c/hacl-c/Hacl_Poly1305_64.h", directory: "/mnt/c/Users/fwill/Documents/HS24/semester_project/tools/binsec/binsec/examples/hacl", checksumkind: CSK_MD5, checksum: "5b2076ce0bf121af206cc3eb1c4c121c")
!579 = !DISubroutineType(types: !580)
!580 = !{null, !46, !46, !10, !46}
!581 = !DISubprogram(name: "Hacl_Policies_cmp_bytes", scope: !582, file: !582, line: 42, type: !583, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !573)
!582 = !DIFile(filename: "hacl-c/hacl-c/Hacl_Policies.h", directory: "/mnt/c/Users/fwill/Documents/HS24/semester_project/tools/binsec/binsec/examples/hacl", checksumkind: CSK_MD5, checksum: "a8a37306bf5433ee7d02dfa3ffcf6ed4")
!583 = !DISubroutineType(types: !584)
!584 = !{!13, !46, !46, !5}
!585 = !DISubprogram(name: "Hacl_Curve25519_crypto_scalarmult", scope: !586, file: !586, line: 68, type: !571, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !573)
!586 = !DIFile(filename: "hacl-c/hacl-c/Hacl_Curve25519.h", directory: "/mnt/c/Users/fwill/Documents/HS24/semester_project/tools/binsec/binsec/examples/hacl", checksumkind: CSK_MD5, checksum: "0930fbd245ca299bedaa6fe9354e9123")
