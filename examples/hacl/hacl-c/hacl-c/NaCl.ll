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

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @NaCl_crypto_secretbox_detached(i8* noundef %0, i8* noundef %1, i8* noundef %2, i64 noundef %3, i8* noundef %4, i8* noundef %5) local_unnamed_addr #0 !dbg !43 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !48, metadata !DIExpression()), !dbg !54
  call void @llvm.dbg.value(metadata i8* %1, metadata !49, metadata !DIExpression()), !dbg !54
  call void @llvm.dbg.value(metadata i8* %2, metadata !50, metadata !DIExpression()), !dbg !54
  call void @llvm.dbg.value(metadata i64 %3, metadata !51, metadata !DIExpression()), !dbg !54
  call void @llvm.dbg.value(metadata i8* %4, metadata !52, metadata !DIExpression()), !dbg !54
  call void @llvm.dbg.value(metadata i8* %5, metadata !53, metadata !DIExpression()), !dbg !54
  call fastcc void @Hacl_SecretBox_ZeroPad_crypto_secretbox_detached(i8* noundef %0, i8* noundef %1, i8* noundef %2, i64 noundef %3, i8* noundef %4, i8* noundef %5), !dbg !55
  ret i32 0, !dbg !56
}

; Function Attrs: mustprogress nofree nosync nounwind readnone speculatable willreturn
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: noinline nounwind uwtable
define internal fastcc void @Hacl_SecretBox_ZeroPad_crypto_secretbox_detached(i8* noundef %0, i8* noundef %1, i8* noundef %2, i64 noundef %3, i8* noundef %4, i8* noundef %5) unnamed_addr #0 !dbg !57 {
  %7 = alloca [32 x i8], align 1
  call void @llvm.dbg.value(metadata i8* %0, metadata !59, metadata !DIExpression()), !dbg !70
  call void @llvm.dbg.value(metadata i8* %1, metadata !60, metadata !DIExpression()), !dbg !70
  call void @llvm.dbg.value(metadata i8* %2, metadata !61, metadata !DIExpression()), !dbg !70
  call void @llvm.dbg.value(metadata i64 %3, metadata !62, metadata !DIExpression()), !dbg !70
  call void @llvm.dbg.value(metadata i8* %4, metadata !63, metadata !DIExpression()), !dbg !70
  call void @llvm.dbg.value(metadata i8* %5, metadata !64, metadata !DIExpression()), !dbg !70
  %8 = trunc i64 %3 to i32, !dbg !71
  call void @llvm.dbg.value(metadata i32 %8, metadata !65, metadata !DIExpression()), !dbg !70
  %9 = getelementptr inbounds [32 x i8], [32 x i8]* %7, i32 0, i32 0, !dbg !72
  call void @llvm.lifetime.start.p0i8(i64 32, i8* nonnull %9) #9, !dbg !72
  call void @llvm.dbg.declare(metadata [32 x i8]* %7, metadata !66, metadata !DIExpression()), !dbg !73
  call void @llvm.memset.p0i8.i32(i8* noundef nonnull align 1 dereferenceable(32) %9, i8 0, i32 32, i1 false), !dbg !73
  call void @Hacl_Salsa20_hsalsa20(i8* noundef nonnull %9, i8* noundef %5, i8* noundef %4) #9, !dbg !74
  %10 = add i32 %8, 32, !dbg !75
  %11 = getelementptr inbounds i8, i8* %4, i32 16, !dbg !76
  call void @Hacl_Salsa20_salsa20(i8* noundef %0, i8* noundef %2, i32 noundef %10, i8* noundef nonnull %9, i8* noundef nonnull %11, i64 noundef 0) #9, !dbg !77
  %12 = getelementptr inbounds i8, i8* %0, i32 32, !dbg !78
  call void @Hacl_Poly1305_64_crypto_onetimeauth(i8* noundef %1, i8* noundef nonnull %12, i64 noundef %3, i8* noundef %0) #9, !dbg !79
  call fastcc void @Hacl_SecretBox_ZeroPad_set_zero_bytes(i8* noundef %0), !dbg !80
  call fastcc void @Hacl_SecretBox_ZeroPad_set_zero_bytes(i8* noundef nonnull %9), !dbg !81
  call void @llvm.lifetime.end.p0i8(i64 32, i8* nonnull %9) #9, !dbg !82
  ret void, !dbg !83
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @NaCl_crypto_secretbox_open_detached(i8* noundef %0, i8* noundef %1, i8* noundef %2, i64 noundef %3, i8* noundef %4, i8* noundef %5) local_unnamed_addr #0 !dbg !84 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !86, metadata !DIExpression()), !dbg !92
  call void @llvm.dbg.value(metadata i8* %1, metadata !87, metadata !DIExpression()), !dbg !92
  call void @llvm.dbg.value(metadata i8* %2, metadata !88, metadata !DIExpression()), !dbg !92
  call void @llvm.dbg.value(metadata i64 %3, metadata !89, metadata !DIExpression()), !dbg !92
  call void @llvm.dbg.value(metadata i8* %4, metadata !90, metadata !DIExpression()), !dbg !92
  call void @llvm.dbg.value(metadata i8* %5, metadata !91, metadata !DIExpression()), !dbg !92
  %7 = call fastcc i32 @Hacl_SecretBox_ZeroPad_crypto_secretbox_open_detached(i8* noundef %0, i8* noundef %1, i8* noundef %2, i64 noundef %3, i8* noundef %4, i8* noundef %5), !dbg !93
  ret i32 %7, !dbg !94
}

; Function Attrs: noinline nounwind uwtable
define internal fastcc i32 @Hacl_SecretBox_ZeroPad_crypto_secretbox_open_detached(i8* noundef %0, i8* noundef %1, i8* noundef %2, i64 noundef %3, i8* noundef %4, i8* noundef %5) unnamed_addr #0 !dbg !95 {
  %7 = alloca [112 x i8], align 1
  call void @llvm.dbg.value(metadata i8* %0, metadata !97, metadata !DIExpression()), !dbg !114
  call void @llvm.dbg.value(metadata i8* %1, metadata !98, metadata !DIExpression()), !dbg !114
  call void @llvm.dbg.value(metadata i8* %2, metadata !99, metadata !DIExpression()), !dbg !114
  call void @llvm.dbg.value(metadata i64 %3, metadata !100, metadata !DIExpression()), !dbg !114
  call void @llvm.dbg.value(metadata i8* %4, metadata !101, metadata !DIExpression()), !dbg !114
  call void @llvm.dbg.value(metadata i8* %5, metadata !102, metadata !DIExpression()), !dbg !114
  %8 = getelementptr inbounds [112 x i8], [112 x i8]* %7, i32 0, i32 0, !dbg !115
  call void @llvm.lifetime.start.p0i8(i64 112, i8* nonnull %8) #9, !dbg !115
  call void @llvm.dbg.declare(metadata [112 x i8]* %7, metadata !103, metadata !DIExpression()), !dbg !116
  call void @llvm.memset.p0i8.i32(i8* noundef nonnull align 1 dereferenceable(112) %8, i8 0, i32 112, i1 false), !dbg !116
  call void @llvm.dbg.value(metadata i8* %8, metadata !107, metadata !DIExpression()), !dbg !114
  %9 = getelementptr inbounds [112 x i8], [112 x i8]* %7, i32 0, i32 32, !dbg !117
  call void @llvm.dbg.value(metadata i8* %9, metadata !108, metadata !DIExpression()), !dbg !114
  %10 = getelementptr inbounds [112 x i8], [112 x i8]* %7, i32 0, i32 64, !dbg !118
  call void @llvm.dbg.value(metadata i8* %10, metadata !109, metadata !DIExpression()), !dbg !114
  %11 = getelementptr inbounds [112 x i8], [112 x i8]* %7, i32 0, i32 96, !dbg !119
  call void @llvm.dbg.value(metadata i8* %11, metadata !110, metadata !DIExpression()), !dbg !114
  call void @Hacl_Salsa20_hsalsa20(i8* noundef nonnull %8, i8* noundef %5, i8* noundef %4) #9, !dbg !120
  %12 = getelementptr inbounds i8, i8* %4, i32 16, !dbg !121
  call void @Hacl_Salsa20_salsa20(i8* noundef nonnull %9, i8* noundef nonnull %10, i32 noundef 32, i8* noundef nonnull %8, i8* noundef nonnull %12, i64 noundef 0) #9, !dbg !122
  %13 = getelementptr inbounds i8, i8* %1, i32 32, !dbg !123
  call void @Hacl_Poly1305_64_crypto_onetimeauth(i8* noundef nonnull %11, i8* noundef nonnull %13, i64 noundef %3, i8* noundef nonnull %9) #9, !dbg !124
  %14 = call zeroext i8 @Hacl_Policies_cmp_bytes(i8* noundef %2, i8* noundef nonnull %11, i32 noundef 16) #9, !dbg !125
  call void @llvm.dbg.value(metadata i8 %14, metadata !111, metadata !DIExpression()), !dbg !114
  call void @llvm.dbg.value(metadata i8 %14, metadata !112, metadata !DIExpression()), !dbg !114
  %15 = call fastcc i32 @Hacl_SecretBox_ZeroPad_crypto_secretbox_open_detached_decrypt(i8* noundef %0, i8* noundef %1, i64 noundef %3, i8* noundef %4, i8* noundef nonnull %8, i8 noundef zeroext %14), !dbg !126
  call void @llvm.dbg.value(metadata i32 %15, metadata !113, metadata !DIExpression()), !dbg !114
  call void @llvm.lifetime.end.p0i8(i64 112, i8* nonnull %8) #9, !dbg !127
  ret i32 %15, !dbg !128
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @NaCl_crypto_secretbox_easy(i8* noundef %0, i8* noundef %1, i64 noundef %2, i8* noundef %3, i8* noundef %4) local_unnamed_addr #0 !dbg !129 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !133, metadata !DIExpression()), !dbg !138
  call void @llvm.dbg.value(metadata i8* %1, metadata !134, metadata !DIExpression()), !dbg !138
  call void @llvm.dbg.value(metadata i64 %2, metadata !135, metadata !DIExpression()), !dbg !138
  call void @llvm.dbg.value(metadata i8* %3, metadata !136, metadata !DIExpression()), !dbg !138
  call void @llvm.dbg.value(metadata i8* %4, metadata !137, metadata !DIExpression()), !dbg !138
  call fastcc void @Hacl_SecretBox_ZeroPad_crypto_secretbox_easy(i8* noundef %0, i8* noundef %1, i64 noundef %2, i8* noundef %3, i8* noundef %4), !dbg !139
  ret i32 0, !dbg !140
}

; Function Attrs: noinline nounwind uwtable
define internal fastcc void @Hacl_SecretBox_ZeroPad_crypto_secretbox_easy(i8* noundef %0, i8* noundef %1, i64 noundef %2, i8* noundef %3, i8* noundef %4) unnamed_addr #0 !dbg !141 {
  %6 = alloca [16 x i8], align 1
  call void @llvm.dbg.value(metadata i8* %0, metadata !143, metadata !DIExpression()), !dbg !153
  call void @llvm.dbg.value(metadata i8* %1, metadata !144, metadata !DIExpression()), !dbg !153
  call void @llvm.dbg.value(metadata i64 %2, metadata !145, metadata !DIExpression()), !dbg !153
  call void @llvm.dbg.value(metadata i8* %3, metadata !146, metadata !DIExpression()), !dbg !153
  call void @llvm.dbg.value(metadata i8* %4, metadata !147, metadata !DIExpression()), !dbg !153
  %7 = getelementptr inbounds [16 x i8], [16 x i8]* %6, i32 0, i32 0, !dbg !154
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %7) #9, !dbg !154
  call void @llvm.dbg.declare(metadata [16 x i8]* %6, metadata !148, metadata !DIExpression()), !dbg !155
  call void @llvm.memset.p0i8.i32(i8* noundef nonnull align 1 dereferenceable(16) %7, i8 0, i32 16, i1 false), !dbg !155
  call fastcc void @Hacl_SecretBox_ZeroPad_crypto_secretbox_detached(i8* noundef %0, i8* noundef nonnull %7, i8* noundef %1, i64 noundef %2, i8* noundef %3, i8* noundef %4), !dbg !156
  call void @llvm.dbg.value(metadata i32 0, metadata !152, metadata !DIExpression()), !dbg !153
  %8 = getelementptr inbounds i8, i8* %0, i32 16, !dbg !157
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* noundef nonnull align 1 dereferenceable(16) %8, i8* noundef nonnull align 1 dereferenceable(16) %7, i32 16, i1 false), !dbg !158
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %7) #9, !dbg !159
  ret void, !dbg !160
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @NaCl_crypto_secretbox_open_easy(i8* noundef %0, i8* noundef %1, i64 noundef %2, i8* noundef %3, i8* noundef %4) local_unnamed_addr #0 !dbg !161 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !163, metadata !DIExpression()), !dbg !168
  call void @llvm.dbg.value(metadata i8* %1, metadata !164, metadata !DIExpression()), !dbg !168
  call void @llvm.dbg.value(metadata i64 %2, metadata !165, metadata !DIExpression()), !dbg !168
  call void @llvm.dbg.value(metadata i8* %3, metadata !166, metadata !DIExpression()), !dbg !168
  call void @llvm.dbg.value(metadata i8* %4, metadata !167, metadata !DIExpression()), !dbg !168
  %6 = call fastcc i32 @Hacl_SecretBox_ZeroPad_crypto_secretbox_open_easy(i8* noundef %0, i8* noundef %1, i64 noundef %2, i8* noundef %3, i8* noundef %4), !dbg !169
  ret i32 %6, !dbg !170
}

; Function Attrs: noinline nounwind uwtable
define internal fastcc i32 @Hacl_SecretBox_ZeroPad_crypto_secretbox_open_easy(i8* noundef %0, i8* noundef %1, i64 noundef %2, i8* noundef %3, i8* noundef %4) unnamed_addr #0 !dbg !171 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !173, metadata !DIExpression()), !dbg !179
  call void @llvm.dbg.value(metadata i8* %1, metadata !174, metadata !DIExpression()), !dbg !179
  call void @llvm.dbg.value(metadata i64 %2, metadata !175, metadata !DIExpression()), !dbg !179
  call void @llvm.dbg.value(metadata i8* %3, metadata !176, metadata !DIExpression()), !dbg !179
  call void @llvm.dbg.value(metadata i8* %4, metadata !177, metadata !DIExpression()), !dbg !179
  call void @llvm.dbg.value(metadata i8* %1, metadata !178, metadata !DIExpression()), !dbg !179
  %6 = call fastcc i32 @Hacl_SecretBox_ZeroPad_crypto_secretbox_open_detached(i8* noundef %0, i8* noundef %1, i8* noundef %1, i64 noundef %2, i8* noundef %3, i8* noundef %4), !dbg !180
  ret i32 %6, !dbg !181
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @NaCl_crypto_box_beforenm(i8* noundef %0, i8* noundef %1, i8* noundef %2) local_unnamed_addr #0 !dbg !182 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !186, metadata !DIExpression()), !dbg !189
  call void @llvm.dbg.value(metadata i8* %1, metadata !187, metadata !DIExpression()), !dbg !189
  call void @llvm.dbg.value(metadata i8* %2, metadata !188, metadata !DIExpression()), !dbg !189
  call fastcc void @Hacl_Box_ZeroPad_crypto_box_beforenm(i8* noundef %0, i8* noundef %1, i8* noundef %2), !dbg !190
  ret i32 0, !dbg !191
}

; Function Attrs: noinline nounwind uwtable
define internal fastcc void @Hacl_Box_ZeroPad_crypto_box_beforenm(i8* noundef %0, i8* noundef %1, i8* noundef %2) unnamed_addr #0 !dbg !192 {
  %4 = alloca [48 x i8], align 1
  call void @llvm.dbg.value(metadata i8* %0, metadata !194, metadata !DIExpression()), !dbg !203
  call void @llvm.dbg.value(metadata i8* %1, metadata !195, metadata !DIExpression()), !dbg !203
  call void @llvm.dbg.value(metadata i8* %2, metadata !196, metadata !DIExpression()), !dbg !203
  %5 = getelementptr inbounds [48 x i8], [48 x i8]* %4, i32 0, i32 0, !dbg !204
  call void @llvm.lifetime.start.p0i8(i64 48, i8* nonnull %5) #9, !dbg !204
  call void @llvm.dbg.declare(metadata [48 x i8]* %4, metadata !197, metadata !DIExpression()), !dbg !205
  call void @llvm.memset.p0i8.i32(i8* noundef nonnull align 1 dereferenceable(48) %5, i8 0, i32 48, i1 false), !dbg !205
  call void @llvm.dbg.value(metadata i8* %5, metadata !201, metadata !DIExpression()), !dbg !203
  %6 = getelementptr inbounds [48 x i8], [48 x i8]* %4, i32 0, i32 32, !dbg !206
  call void @llvm.dbg.value(metadata i8* %6, metadata !202, metadata !DIExpression()), !dbg !203
  call void @Hacl_Curve25519_crypto_scalarmult(i8* noundef nonnull %5, i8* noundef %2, i8* noundef %1) #9, !dbg !207
  call void @Hacl_Salsa20_hsalsa20(i8* noundef %0, i8* noundef nonnull %5, i8* noundef nonnull %6) #9, !dbg !208
  call void @llvm.lifetime.end.p0i8(i64 48, i8* nonnull %5) #9, !dbg !209
  ret void, !dbg !210
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @NaCl_crypto_box_detached_afternm(i8* noundef %0, i8* noundef %1, i8* noundef %2, i64 noundef %3, i8* noundef %4, i8* noundef %5) local_unnamed_addr #0 !dbg !211 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !213, metadata !DIExpression()), !dbg !219
  call void @llvm.dbg.value(metadata i8* %1, metadata !214, metadata !DIExpression()), !dbg !219
  call void @llvm.dbg.value(metadata i8* %2, metadata !215, metadata !DIExpression()), !dbg !219
  call void @llvm.dbg.value(metadata i64 %3, metadata !216, metadata !DIExpression()), !dbg !219
  call void @llvm.dbg.value(metadata i8* %4, metadata !217, metadata !DIExpression()), !dbg !219
  call void @llvm.dbg.value(metadata i8* %5, metadata !218, metadata !DIExpression()), !dbg !219
  call fastcc void @Hacl_Box_ZeroPad_crypto_box_detached_afternm(i8* noundef %0, i8* noundef %1, i8* noundef %2, i64 noundef %3, i8* noundef %4, i8* noundef %5), !dbg !220
  ret i32 0, !dbg !221
}

; Function Attrs: noinline nounwind uwtable
define internal fastcc void @Hacl_Box_ZeroPad_crypto_box_detached_afternm(i8* noundef %0, i8* noundef %1, i8* noundef %2, i64 noundef %3, i8* noundef %4, i8* noundef %5) unnamed_addr #0 !dbg !222 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !224, metadata !DIExpression()), !dbg !230
  call void @llvm.dbg.value(metadata i8* %1, metadata !225, metadata !DIExpression()), !dbg !230
  call void @llvm.dbg.value(metadata i8* %2, metadata !226, metadata !DIExpression()), !dbg !230
  call void @llvm.dbg.value(metadata i64 %3, metadata !227, metadata !DIExpression()), !dbg !230
  call void @llvm.dbg.value(metadata i8* %4, metadata !228, metadata !DIExpression()), !dbg !230
  call void @llvm.dbg.value(metadata i8* %5, metadata !229, metadata !DIExpression()), !dbg !230
  call fastcc void @Hacl_SecretBox_ZeroPad_crypto_secretbox_detached(i8* noundef %0, i8* noundef %1, i8* noundef %2, i64 noundef %3, i8* noundef %4, i8* noundef %5), !dbg !231
  ret void, !dbg !232
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @NaCl_crypto_box_detached(i8* noundef %0, i8* noundef %1, i8* noundef %2, i64 noundef %3, i8* noundef %4, i8* noundef %5, i8* noundef %6) local_unnamed_addr #0 !dbg !233 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !237, metadata !DIExpression()), !dbg !244
  call void @llvm.dbg.value(metadata i8* %1, metadata !238, metadata !DIExpression()), !dbg !244
  call void @llvm.dbg.value(metadata i8* %2, metadata !239, metadata !DIExpression()), !dbg !244
  call void @llvm.dbg.value(metadata i64 %3, metadata !240, metadata !DIExpression()), !dbg !244
  call void @llvm.dbg.value(metadata i8* %4, metadata !241, metadata !DIExpression()), !dbg !244
  call void @llvm.dbg.value(metadata i8* %5, metadata !242, metadata !DIExpression()), !dbg !244
  call void @llvm.dbg.value(metadata i8* %6, metadata !243, metadata !DIExpression()), !dbg !244
  call fastcc void @Hacl_Box_ZeroPad_crypto_box_detached(i8* noundef %0, i8* noundef %1, i8* noundef %2, i64 noundef %3, i8* noundef %4, i8* noundef %5, i8* noundef %6), !dbg !245
  ret i32 0, !dbg !246
}

; Function Attrs: noinline nounwind uwtable
define internal fastcc void @Hacl_Box_ZeroPad_crypto_box_detached(i8* noundef %0, i8* noundef %1, i8* noundef %2, i64 noundef %3, i8* noundef %4, i8* noundef %5, i8* noundef %6) unnamed_addr #0 !dbg !247 {
  %8 = alloca [80 x i8], align 1
  call void @llvm.dbg.value(metadata i8* %0, metadata !249, metadata !DIExpression()), !dbg !264
  call void @llvm.dbg.value(metadata i8* %1, metadata !250, metadata !DIExpression()), !dbg !264
  call void @llvm.dbg.value(metadata i8* %2, metadata !251, metadata !DIExpression()), !dbg !264
  call void @llvm.dbg.value(metadata i64 %3, metadata !252, metadata !DIExpression()), !dbg !264
  call void @llvm.dbg.value(metadata i8* %4, metadata !253, metadata !DIExpression()), !dbg !264
  call void @llvm.dbg.value(metadata i8* %5, metadata !254, metadata !DIExpression()), !dbg !264
  call void @llvm.dbg.value(metadata i8* %6, metadata !255, metadata !DIExpression()), !dbg !264
  %9 = getelementptr inbounds [80 x i8], [80 x i8]* %8, i32 0, i32 0, !dbg !265
  call void @llvm.lifetime.start.p0i8(i64 80, i8* nonnull %9) #9, !dbg !265
  call void @llvm.dbg.declare(metadata [80 x i8]* %8, metadata !256, metadata !DIExpression()), !dbg !266
  call void @llvm.memset.p0i8.i32(i8* noundef nonnull align 1 dereferenceable(80) %9, i8 0, i32 80, i1 false), !dbg !266
  call void @llvm.dbg.value(metadata i8* %9, metadata !260, metadata !DIExpression()), !dbg !264
  %10 = getelementptr inbounds [80 x i8], [80 x i8]* %8, i32 0, i32 32, !dbg !267
  call void @llvm.dbg.value(metadata i8* %10, metadata !261, metadata !DIExpression()), !dbg !264
  %11 = getelementptr inbounds [80 x i8], [80 x i8]* %8, i32 0, i32 64, !dbg !268
  call void @llvm.dbg.value(metadata i8* %11, metadata !262, metadata !DIExpression()), !dbg !264
  call void @Hacl_Curve25519_crypto_scalarmult(i8* noundef nonnull %9, i8* noundef %6, i8* noundef %5) #9, !dbg !269
  call void @Hacl_Salsa20_hsalsa20(i8* noundef nonnull %10, i8* noundef nonnull %9, i8* noundef nonnull %11) #9, !dbg !270
  call fastcc void @Hacl_SecretBox_ZeroPad_crypto_secretbox_detached(i8* noundef %0, i8* noundef %1, i8* noundef %2, i64 noundef %3, i8* noundef %4, i8* noundef nonnull %10), !dbg !271
  call void @llvm.dbg.value(metadata i32 0, metadata !263, metadata !DIExpression()), !dbg !264
  call void @llvm.lifetime.end.p0i8(i64 80, i8* nonnull %9) #9, !dbg !272
  ret void, !dbg !273
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @NaCl_crypto_box_open_detached(i8* noundef %0, i8* noundef %1, i8* noundef %2, i64 noundef %3, i8* noundef %4, i8* noundef %5, i8* noundef %6) local_unnamed_addr #0 !dbg !274 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !276, metadata !DIExpression()), !dbg !283
  call void @llvm.dbg.value(metadata i8* %1, metadata !277, metadata !DIExpression()), !dbg !283
  call void @llvm.dbg.value(metadata i8* %2, metadata !278, metadata !DIExpression()), !dbg !283
  call void @llvm.dbg.value(metadata i64 %3, metadata !279, metadata !DIExpression()), !dbg !283
  call void @llvm.dbg.value(metadata i8* %4, metadata !280, metadata !DIExpression()), !dbg !283
  call void @llvm.dbg.value(metadata i8* %5, metadata !281, metadata !DIExpression()), !dbg !283
  call void @llvm.dbg.value(metadata i8* %6, metadata !282, metadata !DIExpression()), !dbg !283
  %8 = call fastcc i32 @Hacl_Box_ZeroPad_crypto_box_open_detached(i8* noundef %0, i8* noundef %1, i8* noundef %2, i64 noundef %3, i8* noundef %4, i8* noundef %5, i8* noundef %6), !dbg !284
  ret i32 %8, !dbg !285
}

; Function Attrs: noinline nounwind uwtable
define internal fastcc i32 @Hacl_Box_ZeroPad_crypto_box_open_detached(i8* noundef %0, i8* noundef %1, i8* noundef %2, i64 noundef %3, i8* noundef %4, i8* noundef %5, i8* noundef %6) unnamed_addr #0 !dbg !286 {
  %8 = alloca [80 x i8], align 1
  call void @llvm.dbg.value(metadata i8* %0, metadata !288, metadata !DIExpression()), !dbg !300
  call void @llvm.dbg.value(metadata i8* %1, metadata !289, metadata !DIExpression()), !dbg !300
  call void @llvm.dbg.value(metadata i8* %2, metadata !290, metadata !DIExpression()), !dbg !300
  call void @llvm.dbg.value(metadata i64 %3, metadata !291, metadata !DIExpression()), !dbg !300
  call void @llvm.dbg.value(metadata i8* %4, metadata !292, metadata !DIExpression()), !dbg !300
  call void @llvm.dbg.value(metadata i8* %5, metadata !293, metadata !DIExpression()), !dbg !300
  call void @llvm.dbg.value(metadata i8* %6, metadata !294, metadata !DIExpression()), !dbg !300
  %9 = getelementptr inbounds [80 x i8], [80 x i8]* %8, i32 0, i32 0, !dbg !301
  call void @llvm.lifetime.start.p0i8(i64 80, i8* nonnull %9) #9, !dbg !301
  call void @llvm.dbg.declare(metadata [80 x i8]* %8, metadata !295, metadata !DIExpression()), !dbg !302
  call void @llvm.memset.p0i8.i32(i8* noundef nonnull align 1 dereferenceable(80) %9, i8 0, i32 80, i1 false), !dbg !302
  call void @llvm.dbg.value(metadata i8* %9, metadata !296, metadata !DIExpression()), !dbg !300
  %10 = getelementptr inbounds [80 x i8], [80 x i8]* %8, i32 0, i32 32, !dbg !303
  call void @llvm.dbg.value(metadata i8* %10, metadata !297, metadata !DIExpression()), !dbg !300
  %11 = getelementptr inbounds [80 x i8], [80 x i8]* %8, i32 0, i32 64, !dbg !304
  call void @llvm.dbg.value(metadata i8* %11, metadata !298, metadata !DIExpression()), !dbg !300
  call void @Hacl_Curve25519_crypto_scalarmult(i8* noundef nonnull %9, i8* noundef %6, i8* noundef %5) #9, !dbg !305
  call void @Hacl_Salsa20_hsalsa20(i8* noundef nonnull %10, i8* noundef nonnull %9, i8* noundef nonnull %11) #9, !dbg !306
  %12 = call fastcc i32 @Hacl_SecretBox_ZeroPad_crypto_secretbox_open_detached(i8* noundef %0, i8* noundef %1, i8* noundef %2, i64 noundef %3, i8* noundef %4, i8* noundef nonnull %10), !dbg !307
  call void @llvm.dbg.value(metadata i32 %12, metadata !299, metadata !DIExpression()), !dbg !300
  call void @llvm.lifetime.end.p0i8(i64 80, i8* nonnull %9) #9, !dbg !308
  ret i32 %12, !dbg !309
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @NaCl_crypto_box_easy_afternm(i8* noundef %0, i8* noundef %1, i64 noundef %2, i8* noundef %3, i8* noundef %4) local_unnamed_addr #0 !dbg !310 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !312, metadata !DIExpression()), !dbg !317
  call void @llvm.dbg.value(metadata i8* %1, metadata !313, metadata !DIExpression()), !dbg !317
  call void @llvm.dbg.value(metadata i64 %2, metadata !314, metadata !DIExpression()), !dbg !317
  call void @llvm.dbg.value(metadata i8* %3, metadata !315, metadata !DIExpression()), !dbg !317
  call void @llvm.dbg.value(metadata i8* %4, metadata !316, metadata !DIExpression()), !dbg !317
  call fastcc void @Hacl_Box_ZeroPad_crypto_box_easy_afternm(i8* noundef %0, i8* noundef %1, i64 noundef %2, i8* noundef %3, i8* noundef %4), !dbg !318
  ret i32 0, !dbg !319
}

; Function Attrs: noinline nounwind uwtable
define internal fastcc void @Hacl_Box_ZeroPad_crypto_box_easy_afternm(i8* noundef %0, i8* noundef %1, i64 noundef %2, i8* noundef %3, i8* noundef %4) unnamed_addr #0 !dbg !320 {
  %6 = alloca [16 x i8], align 1
  call void @llvm.dbg.value(metadata i8* %0, metadata !322, metadata !DIExpression()), !dbg !329
  call void @llvm.dbg.value(metadata i8* %1, metadata !323, metadata !DIExpression()), !dbg !329
  call void @llvm.dbg.value(metadata i64 %2, metadata !324, metadata !DIExpression()), !dbg !329
  call void @llvm.dbg.value(metadata i8* %3, metadata !325, metadata !DIExpression()), !dbg !329
  call void @llvm.dbg.value(metadata i8* %4, metadata !326, metadata !DIExpression()), !dbg !329
  %7 = getelementptr inbounds [16 x i8], [16 x i8]* %6, i32 0, i32 0, !dbg !330
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %7) #9, !dbg !330
  call void @llvm.dbg.declare(metadata [16 x i8]* %6, metadata !327, metadata !DIExpression()), !dbg !331
  call void @llvm.memset.p0i8.i32(i8* noundef nonnull align 1 dereferenceable(16) %7, i8 0, i32 16, i1 false), !dbg !331
  call fastcc void @Hacl_Box_ZeroPad_crypto_box_detached_afternm(i8* noundef %0, i8* noundef nonnull %7, i8* noundef %1, i64 noundef %2, i8* noundef %3, i8* noundef %4), !dbg !332
  call void @llvm.dbg.value(metadata i32 0, metadata !328, metadata !DIExpression()), !dbg !329
  %8 = getelementptr inbounds i8, i8* %0, i32 16, !dbg !333
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* noundef nonnull align 1 dereferenceable(16) %8, i8* noundef nonnull align 1 dereferenceable(16) %7, i32 16, i1 false), !dbg !334
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %7) #9, !dbg !335
  ret void, !dbg !336
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @NaCl_crypto_box_easy(i8* noundef %0, i8* noundef %1, i64 noundef %2, i8* noundef %3, i8* noundef %4, i8* noundef %5) local_unnamed_addr #0 !dbg !337 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !341, metadata !DIExpression()), !dbg !347
  call void @llvm.dbg.value(metadata i8* %1, metadata !342, metadata !DIExpression()), !dbg !347
  call void @llvm.dbg.value(metadata i64 %2, metadata !343, metadata !DIExpression()), !dbg !347
  call void @llvm.dbg.value(metadata i8* %3, metadata !344, metadata !DIExpression()), !dbg !347
  call void @llvm.dbg.value(metadata i8* %4, metadata !345, metadata !DIExpression()), !dbg !347
  call void @llvm.dbg.value(metadata i8* %5, metadata !346, metadata !DIExpression()), !dbg !347
  call fastcc void @Hacl_Box_ZeroPad_crypto_box_easy(i8* noundef %0, i8* noundef %1, i64 noundef %2, i8* noundef %3, i8* noundef %4, i8* noundef %5), !dbg !348
  ret i32 0, !dbg !349
}

; Function Attrs: noinline nounwind uwtable
define internal fastcc void @Hacl_Box_ZeroPad_crypto_box_easy(i8* noundef %0, i8* noundef %1, i64 noundef %2, i8* noundef %3, i8* noundef %4, i8* noundef %5) unnamed_addr #0 !dbg !350 {
  %7 = alloca [16 x i8], align 1
  call void @llvm.dbg.value(metadata i8* %0, metadata !352, metadata !DIExpression()), !dbg !360
  call void @llvm.dbg.value(metadata i8* %1, metadata !353, metadata !DIExpression()), !dbg !360
  call void @llvm.dbg.value(metadata i64 %2, metadata !354, metadata !DIExpression()), !dbg !360
  call void @llvm.dbg.value(metadata i8* %3, metadata !355, metadata !DIExpression()), !dbg !360
  call void @llvm.dbg.value(metadata i8* %4, metadata !356, metadata !DIExpression()), !dbg !360
  call void @llvm.dbg.value(metadata i8* %5, metadata !357, metadata !DIExpression()), !dbg !360
  %8 = getelementptr inbounds [16 x i8], [16 x i8]* %7, i32 0, i32 0, !dbg !361
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %8) #9, !dbg !361
  call void @llvm.dbg.declare(metadata [16 x i8]* %7, metadata !358, metadata !DIExpression()), !dbg !362
  call void @llvm.memset.p0i8.i32(i8* noundef nonnull align 1 dereferenceable(16) %8, i8 0, i32 16, i1 false), !dbg !362
  call fastcc void @Hacl_Box_ZeroPad_crypto_box_detached(i8* noundef %0, i8* noundef nonnull %8, i8* noundef %1, i64 noundef %2, i8* noundef %3, i8* noundef %4, i8* noundef %5), !dbg !363
  call void @llvm.dbg.value(metadata i32 0, metadata !359, metadata !DIExpression()), !dbg !360
  %9 = getelementptr inbounds i8, i8* %0, i32 16, !dbg !364
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* noundef nonnull align 1 dereferenceable(16) %9, i8* noundef nonnull align 1 dereferenceable(16) %8, i32 16, i1 false), !dbg !365
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %8) #9, !dbg !366
  ret void, !dbg !367
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @NaCl_crypto_box_open_easy(i8* noundef %0, i8* noundef %1, i64 noundef %2, i8* noundef %3, i8* noundef %4, i8* noundef %5) local_unnamed_addr #0 !dbg !368 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !370, metadata !DIExpression()), !dbg !376
  call void @llvm.dbg.value(metadata i8* %1, metadata !371, metadata !DIExpression()), !dbg !376
  call void @llvm.dbg.value(metadata i64 %2, metadata !372, metadata !DIExpression()), !dbg !376
  call void @llvm.dbg.value(metadata i8* %3, metadata !373, metadata !DIExpression()), !dbg !376
  call void @llvm.dbg.value(metadata i8* %4, metadata !374, metadata !DIExpression()), !dbg !376
  call void @llvm.dbg.value(metadata i8* %5, metadata !375, metadata !DIExpression()), !dbg !376
  %7 = call fastcc i32 @Hacl_Box_ZeroPad_crypto_box_open_easy(i8* noundef %0, i8* noundef %1, i64 noundef %2, i8* noundef %3, i8* noundef %4, i8* noundef %5), !dbg !377
  ret i32 %7, !dbg !378
}

; Function Attrs: noinline nounwind uwtable
define internal fastcc i32 @Hacl_Box_ZeroPad_crypto_box_open_easy(i8* noundef %0, i8* noundef %1, i64 noundef %2, i8* noundef %3, i8* noundef %4, i8* noundef %5) unnamed_addr #0 !dbg !379 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !381, metadata !DIExpression()), !dbg !388
  call void @llvm.dbg.value(metadata i8* %1, metadata !382, metadata !DIExpression()), !dbg !388
  call void @llvm.dbg.value(metadata i64 %2, metadata !383, metadata !DIExpression()), !dbg !388
  call void @llvm.dbg.value(metadata i8* %3, metadata !384, metadata !DIExpression()), !dbg !388
  call void @llvm.dbg.value(metadata i8* %4, metadata !385, metadata !DIExpression()), !dbg !388
  call void @llvm.dbg.value(metadata i8* %5, metadata !386, metadata !DIExpression()), !dbg !388
  %7 = getelementptr inbounds i8, i8* %1, i32 16, !dbg !389
  call void @llvm.dbg.value(metadata i8* %7, metadata !387, metadata !DIExpression()), !dbg !388
  %8 = call fastcc i32 @Hacl_Box_ZeroPad_crypto_box_open_detached(i8* noundef %0, i8* noundef %1, i8* noundef nonnull %7, i64 noundef %2, i8* noundef %3, i8* noundef %4, i8* noundef %5), !dbg !390
  ret i32 %8, !dbg !391
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @NaCl_crypto_box_open_detached_afternm(i8* noundef %0, i8* noundef %1, i8* noundef %2, i64 noundef %3, i8* noundef %4, i8* noundef %5) local_unnamed_addr #0 !dbg !392 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !394, metadata !DIExpression()), !dbg !400
  call void @llvm.dbg.value(metadata i8* %1, metadata !395, metadata !DIExpression()), !dbg !400
  call void @llvm.dbg.value(metadata i8* %2, metadata !396, metadata !DIExpression()), !dbg !400
  call void @llvm.dbg.value(metadata i64 %3, metadata !397, metadata !DIExpression()), !dbg !400
  call void @llvm.dbg.value(metadata i8* %4, metadata !398, metadata !DIExpression()), !dbg !400
  call void @llvm.dbg.value(metadata i8* %5, metadata !399, metadata !DIExpression()), !dbg !400
  %7 = call fastcc i32 @Hacl_Box_ZeroPad_crypto_box_open_detached_afternm(i8* noundef %0, i8* noundef %1, i8* noundef %2, i64 noundef %3, i8* noundef %4, i8* noundef %5), !dbg !401
  ret i32 %7, !dbg !402
}

; Function Attrs: noinline nounwind uwtable
define internal fastcc i32 @Hacl_Box_ZeroPad_crypto_box_open_detached_afternm(i8* noundef %0, i8* noundef %1, i8* noundef %2, i64 noundef %3, i8* noundef %4, i8* noundef %5) unnamed_addr #0 !dbg !403 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !405, metadata !DIExpression()), !dbg !411
  call void @llvm.dbg.value(metadata i8* %1, metadata !406, metadata !DIExpression()), !dbg !411
  call void @llvm.dbg.value(metadata i8* %2, metadata !407, metadata !DIExpression()), !dbg !411
  call void @llvm.dbg.value(metadata i64 %3, metadata !408, metadata !DIExpression()), !dbg !411
  call void @llvm.dbg.value(metadata i8* %4, metadata !409, metadata !DIExpression()), !dbg !411
  call void @llvm.dbg.value(metadata i8* %5, metadata !410, metadata !DIExpression()), !dbg !411
  %7 = call fastcc i32 @Hacl_SecretBox_ZeroPad_crypto_secretbox_open_detached(i8* noundef %0, i8* noundef %1, i8* noundef %2, i64 noundef %3, i8* noundef %4, i8* noundef %5), !dbg !412
  ret i32 %7, !dbg !413
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @NaCl_crypto_box_open_easy_afternm(i8* noundef %0, i8* noundef %1, i64 noundef %2, i8* noundef %3, i8* noundef %4) local_unnamed_addr #0 !dbg !414 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !416, metadata !DIExpression()), !dbg !421
  call void @llvm.dbg.value(metadata i8* %1, metadata !417, metadata !DIExpression()), !dbg !421
  call void @llvm.dbg.value(metadata i64 %2, metadata !418, metadata !DIExpression()), !dbg !421
  call void @llvm.dbg.value(metadata i8* %3, metadata !419, metadata !DIExpression()), !dbg !421
  call void @llvm.dbg.value(metadata i8* %4, metadata !420, metadata !DIExpression()), !dbg !421
  %6 = call fastcc i32 @Hacl_Box_ZeroPad_crypto_box_open_easy_afternm(i8* noundef %0, i8* noundef %1, i64 noundef %2, i8* noundef %3, i8* noundef %4), !dbg !422
  ret i32 %6, !dbg !423
}

; Function Attrs: noinline nounwind uwtable
define internal fastcc i32 @Hacl_Box_ZeroPad_crypto_box_open_easy_afternm(i8* noundef %0, i8* noundef %1, i64 noundef %2, i8* noundef %3, i8* noundef %4) unnamed_addr #0 !dbg !424 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !426, metadata !DIExpression()), !dbg !433
  call void @llvm.dbg.value(metadata i8* %1, metadata !427, metadata !DIExpression()), !dbg !433
  call void @llvm.dbg.value(metadata i64 %2, metadata !428, metadata !DIExpression()), !dbg !433
  call void @llvm.dbg.value(metadata i8* %3, metadata !429, metadata !DIExpression()), !dbg !433
  call void @llvm.dbg.value(metadata i8* %4, metadata !430, metadata !DIExpression()), !dbg !433
  %6 = getelementptr inbounds i8, i8* %1, i32 16, !dbg !434
  call void @llvm.dbg.value(metadata i8* %6, metadata !431, metadata !DIExpression()), !dbg !433
  %7 = call fastcc i32 @Hacl_Box_ZeroPad_crypto_box_open_detached_afternm(i8* noundef %0, i8* noundef %1, i8* noundef nonnull %6, i64 noundef %2, i8* noundef %3, i8* noundef %4), !dbg !435
  call void @llvm.dbg.value(metadata i32 %7, metadata !432, metadata !DIExpression()), !dbg !433
  ret i32 %7, !dbg !436
}

; Function Attrs: argmemonly mustprogress nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0i8(i64 immarg, i8* nocapture) #2

; Function Attrs: argmemonly mustprogress nofree nounwind willreturn writeonly
declare void @llvm.memset.p0i8.i32(i8* nocapture writeonly, i8, i32, i1 immarg) #3

declare !dbg !437 void @Hacl_Salsa20_hsalsa20(i8* noundef, i8* noundef, i8* noundef) local_unnamed_addr #4

declare !dbg !442 void @Hacl_Salsa20_salsa20(i8* noundef, i8* noundef, i32 noundef, i8* noundef, i8* noundef, i64 noundef) local_unnamed_addr #4

declare !dbg !445 void @Hacl_Poly1305_64_crypto_onetimeauth(i8* noundef, i8* noundef, i64 noundef, i8* noundef) local_unnamed_addr #4

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind uwtable willreturn writeonly
define internal fastcc void @Hacl_SecretBox_ZeroPad_set_zero_bytes(i8* noundef writeonly %0) unnamed_addr #5 !dbg !449 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !453, metadata !DIExpression()), !dbg !455
  call void @llvm.dbg.value(metadata i8 0, metadata !454, metadata !DIExpression()), !dbg !455
  call void @llvm.memset.p0i8.i64(i8* noundef nonnull align 1 dereferenceable(32) %0, i8 0, i64 32, i1 false), !dbg !456
  ret void, !dbg !457
}

; Function Attrs: argmemonly mustprogress nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0i8(i64 immarg, i8* nocapture) #2

declare !dbg !458 zeroext i8 @Hacl_Policies_cmp_bytes(i8* noundef, i8* noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: noinline nounwind uwtable
define internal fastcc i32 @Hacl_SecretBox_ZeroPad_crypto_secretbox_open_detached_decrypt(i8* noundef %0, i8* noundef %1, i64 noundef %2, i8* noundef %3, i8* noundef %4, i8 noundef zeroext %5) unnamed_addr #0 !dbg !462 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !466, metadata !DIExpression()), !dbg !473
  call void @llvm.dbg.value(metadata i8* %1, metadata !467, metadata !DIExpression()), !dbg !473
  call void @llvm.dbg.value(metadata i64 %2, metadata !468, metadata !DIExpression()), !dbg !473
  call void @llvm.dbg.value(metadata i8* %3, metadata !469, metadata !DIExpression()), !dbg !473
  call void @llvm.dbg.value(metadata i8* %4, metadata !470, metadata !DIExpression()), !dbg !473
  call void @llvm.dbg.value(metadata i8 %5, metadata !471, metadata !DIExpression()), !dbg !473
  call void @llvm.dbg.value(metadata i64 %2, metadata !472, metadata !DIExpression(DW_OP_LLVM_convert, 64, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !473
  %7 = icmp eq i8 %5, 0, !dbg !474
  br i1 %7, label %8, label %12, !dbg !476

8:                                                ; preds = %6
  %9 = trunc i64 %2 to i32, !dbg !477
  call void @llvm.dbg.value(metadata i32 %9, metadata !472, metadata !DIExpression()), !dbg !473
  %10 = add i32 %9, 32, !dbg !478
  %11 = getelementptr inbounds i8, i8* %3, i32 16, !dbg !480
  call void @Hacl_Salsa20_salsa20(i8* noundef %0, i8* noundef %1, i32 noundef %10, i8* noundef %4, i8* noundef nonnull %11, i64 noundef 0) #9, !dbg !481
  call fastcc void @Hacl_SecretBox_ZeroPad_set_zero_bytes(i8* noundef %4), !dbg !482
  call fastcc void @Hacl_SecretBox_ZeroPad_set_zero_bytes(i8* noundef %0), !dbg !483
  br label %12, !dbg !484

12:                                               ; preds = %6, %8
  %13 = phi i32 [ 0, %8 ], [ -1, %6 ], !dbg !485
  ret i32 %13, !dbg !486
}

; Function Attrs: argmemonly mustprogress nofree nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i32(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i32, i1 immarg) #6

declare !dbg !487 void @Hacl_Curve25519_crypto_scalarmult(i8* noundef, i8* noundef, i8* noundef) local_unnamed_addr #4

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare void @llvm.dbg.value(metadata, metadata, metadata) #7

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #8

attributes #0 = { noinline nounwind uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="i686" "target-features"="+cx8,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nofree nosync nounwind readnone speculatable willreturn }
attributes #2 = { argmemonly mustprogress nofree nosync nounwind willreturn }
attributes #3 = { argmemonly mustprogress nofree nounwind willreturn writeonly }
attributes #4 = { "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="i686" "target-features"="+cx8,+x87" "tune-cpu"="generic" }
attributes #5 = { mustprogress nofree noinline norecurse nosync nounwind uwtable willreturn writeonly "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="i686" "target-features"="+cx8,+x87" "tune-cpu"="generic" }
attributes #6 = { argmemonly mustprogress nofree nounwind willreturn }
attributes #7 = { nofree nosync nounwind readnone speculatable willreturn }
attributes #8 = { argmemonly nofree nounwind willreturn writeonly }
attributes #9 = { nounwind }

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
!55 = !DILocation(line: 327, column: 10, scope: !43)
!56 = !DILocation(line: 327, column: 3, scope: !43)
!57 = distinct !DISubprogram(name: "Hacl_SecretBox_ZeroPad_crypto_secretbox_detached", scope: !3, file: !3, line: 65, type: !44, scopeLine: 73, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !58)
!58 = !{!59, !60, !61, !62, !63, !64, !65, !66}
!59 = !DILocalVariable(name: "c", arg: 1, scope: !57, file: !3, line: 66, type: !46)
!60 = !DILocalVariable(name: "mac", arg: 2, scope: !57, file: !3, line: 67, type: !46)
!61 = !DILocalVariable(name: "m", arg: 3, scope: !57, file: !3, line: 68, type: !46)
!62 = !DILocalVariable(name: "mlen", arg: 4, scope: !57, file: !3, line: 69, type: !10)
!63 = !DILocalVariable(name: "n1", arg: 5, scope: !57, file: !3, line: 70, type: !46)
!64 = !DILocalVariable(name: "k1", arg: 6, scope: !57, file: !3, line: 71, type: !46)
!65 = !DILocalVariable(name: "mlen_", scope: !57, file: !3, line: 74, type: !5)
!66 = !DILocalVariable(name: "subkey", scope: !57, file: !3, line: 75, type: !67)
!67 = !DICompositeType(tag: DW_TAG_array_type, baseType: !13, size: 256, elements: !68)
!68 = !{!69}
!69 = !DISubrange(count: 32)
!70 = !DILocation(line: 0, scope: !57)
!71 = !DILocation(line: 74, column: 20, scope: !57)
!72 = !DILocation(line: 75, column: 3, scope: !57)
!73 = !DILocation(line: 75, column: 11, scope: !57)
!74 = !DILocation(line: 76, column: 3, scope: !57)
!75 = !DILocation(line: 77, column: 36, scope: !57)
!76 = !DILocation(line: 77, column: 64, scope: !57)
!77 = !DILocation(line: 77, column: 3, scope: !57)
!78 = !DILocation(line: 78, column: 46, scope: !57)
!79 = !DILocation(line: 78, column: 3, scope: !57)
!80 = !DILocation(line: 79, column: 3, scope: !57)
!81 = !DILocation(line: 80, column: 3, scope: !57)
!82 = !DILocation(line: 82, column: 1, scope: !57)
!83 = !DILocation(line: 81, column: 3, scope: !57)
!84 = distinct !DISubprogram(name: "NaCl_crypto_secretbox_open_detached", scope: !3, file: !3, line: 331, type: !44, scopeLine: 339, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !85)
!85 = !{!86, !87, !88, !89, !90, !91}
!86 = !DILocalVariable(name: "m", arg: 1, scope: !84, file: !3, line: 332, type: !46)
!87 = !DILocalVariable(name: "c", arg: 2, scope: !84, file: !3, line: 333, type: !46)
!88 = !DILocalVariable(name: "mac", arg: 3, scope: !84, file: !3, line: 334, type: !46)
!89 = !DILocalVariable(name: "clen", arg: 4, scope: !84, file: !3, line: 335, type: !10)
!90 = !DILocalVariable(name: "n1", arg: 5, scope: !84, file: !3, line: 336, type: !46)
!91 = !DILocalVariable(name: "k1", arg: 6, scope: !84, file: !3, line: 337, type: !46)
!92 = !DILocation(line: 0, scope: !84)
!93 = !DILocation(line: 340, column: 10, scope: !84)
!94 = !DILocation(line: 340, column: 3, scope: !84)
!95 = distinct !DISubprogram(name: "Hacl_SecretBox_ZeroPad_crypto_secretbox_open_detached", scope: !3, file: !3, line: 107, type: !44, scopeLine: 115, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !96)
!96 = !{!97, !98, !99, !100, !101, !102, !103, !107, !108, !109, !110, !111, !112, !113}
!97 = !DILocalVariable(name: "m", arg: 1, scope: !95, file: !3, line: 108, type: !46)
!98 = !DILocalVariable(name: "c", arg: 2, scope: !95, file: !3, line: 109, type: !46)
!99 = !DILocalVariable(name: "mac", arg: 3, scope: !95, file: !3, line: 110, type: !46)
!100 = !DILocalVariable(name: "clen", arg: 4, scope: !95, file: !3, line: 111, type: !10)
!101 = !DILocalVariable(name: "n1", arg: 5, scope: !95, file: !3, line: 112, type: !46)
!102 = !DILocalVariable(name: "k1", arg: 6, scope: !95, file: !3, line: 113, type: !46)
!103 = !DILocalVariable(name: "tmp", scope: !95, file: !3, line: 116, type: !104)
!104 = !DICompositeType(tag: DW_TAG_array_type, baseType: !13, size: 896, elements: !105)
!105 = !{!106}
!106 = !DISubrange(count: 112)
!107 = !DILocalVariable(name: "subkey", scope: !95, file: !3, line: 117, type: !46)
!108 = !DILocalVariable(name: "mackey", scope: !95, file: !3, line: 118, type: !46)
!109 = !DILocalVariable(name: "mackey_", scope: !95, file: !3, line: 119, type: !46)
!110 = !DILocalVariable(name: "cmac", scope: !95, file: !3, line: 120, type: !46)
!111 = !DILocalVariable(name: "result", scope: !95, file: !3, line: 124, type: !13)
!112 = !DILocalVariable(name: "verify", scope: !95, file: !3, line: 125, type: !13)
!113 = !DILocalVariable(name: "z", scope: !95, file: !3, line: 127, type: !5)
!114 = !DILocation(line: 0, scope: !95)
!115 = !DILocation(line: 116, column: 3, scope: !95)
!116 = !DILocation(line: 116, column: 11, scope: !95)
!117 = !DILocation(line: 118, column: 25, scope: !95)
!118 = !DILocation(line: 119, column: 26, scope: !95)
!119 = !DILocation(line: 120, column: 23, scope: !95)
!120 = !DILocation(line: 121, column: 3, scope: !95)
!121 = !DILocation(line: 122, column: 67, scope: !95)
!122 = !DILocation(line: 122, column: 3, scope: !95)
!123 = !DILocation(line: 123, column: 47, scope: !95)
!124 = !DILocation(line: 123, column: 3, scope: !95)
!125 = !DILocation(line: 124, column: 20, scope: !95)
!126 = !DILocation(line: 128, column: 5, scope: !95)
!127 = !DILocation(line: 135, column: 1, scope: !95)
!128 = !DILocation(line: 134, column: 3, scope: !95)
!129 = distinct !DISubprogram(name: "NaCl_crypto_secretbox_easy", scope: !3, file: !3, line: 344, type: !130, scopeLine: 345, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !132)
!130 = !DISubroutineType(types: !131)
!131 = !{!5, !46, !46, !10, !46, !46}
!132 = !{!133, !134, !135, !136, !137}
!133 = !DILocalVariable(name: "c", arg: 1, scope: !129, file: !3, line: 344, type: !46)
!134 = !DILocalVariable(name: "m", arg: 2, scope: !129, file: !3, line: 344, type: !46)
!135 = !DILocalVariable(name: "mlen", arg: 3, scope: !129, file: !3, line: 344, type: !10)
!136 = !DILocalVariable(name: "n1", arg: 4, scope: !129, file: !3, line: 344, type: !46)
!137 = !DILocalVariable(name: "k1", arg: 5, scope: !129, file: !3, line: 344, type: !46)
!138 = !DILocation(line: 0, scope: !129)
!139 = !DILocation(line: 346, column: 10, scope: !129)
!140 = !DILocation(line: 346, column: 3, scope: !129)
!141 = distinct !DISubprogram(name: "Hacl_SecretBox_ZeroPad_crypto_secretbox_easy", scope: !3, file: !3, line: 138, type: !130, scopeLine: 145, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !142)
!142 = !{!143, !144, !145, !146, !147, !148, !152}
!143 = !DILocalVariable(name: "c", arg: 1, scope: !141, file: !3, line: 139, type: !46)
!144 = !DILocalVariable(name: "m", arg: 2, scope: !141, file: !3, line: 140, type: !46)
!145 = !DILocalVariable(name: "mlen", arg: 3, scope: !141, file: !3, line: 141, type: !10)
!146 = !DILocalVariable(name: "n1", arg: 4, scope: !141, file: !3, line: 142, type: !46)
!147 = !DILocalVariable(name: "k1", arg: 5, scope: !141, file: !3, line: 143, type: !46)
!148 = !DILocalVariable(name: "cmac", scope: !141, file: !3, line: 146, type: !149)
!149 = !DICompositeType(tag: DW_TAG_array_type, baseType: !13, size: 128, elements: !150)
!150 = !{!151}
!151 = !DISubrange(count: 16)
!152 = !DILocalVariable(name: "res", scope: !141, file: !3, line: 147, type: !5)
!153 = !DILocation(line: 0, scope: !141)
!154 = !DILocation(line: 146, column: 3, scope: !141)
!155 = !DILocation(line: 146, column: 11, scope: !141)
!156 = !DILocation(line: 147, column: 18, scope: !141)
!157 = !DILocation(line: 148, column: 12, scope: !141)
!158 = !DILocation(line: 148, column: 3, scope: !141)
!159 = !DILocation(line: 150, column: 1, scope: !141)
!160 = !DILocation(line: 149, column: 3, scope: !141)
!161 = distinct !DISubprogram(name: "NaCl_crypto_secretbox_open_easy", scope: !3, file: !3, line: 350, type: !130, scopeLine: 357, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !162)
!162 = !{!163, !164, !165, !166, !167}
!163 = !DILocalVariable(name: "m", arg: 1, scope: !161, file: !3, line: 351, type: !46)
!164 = !DILocalVariable(name: "c", arg: 2, scope: !161, file: !3, line: 352, type: !46)
!165 = !DILocalVariable(name: "clen", arg: 3, scope: !161, file: !3, line: 353, type: !10)
!166 = !DILocalVariable(name: "n1", arg: 4, scope: !161, file: !3, line: 354, type: !46)
!167 = !DILocalVariable(name: "k1", arg: 5, scope: !161, file: !3, line: 355, type: !46)
!168 = !DILocation(line: 0, scope: !161)
!169 = !DILocation(line: 358, column: 10, scope: !161)
!170 = !DILocation(line: 358, column: 3, scope: !161)
!171 = distinct !DISubprogram(name: "Hacl_SecretBox_ZeroPad_crypto_secretbox_open_easy", scope: !3, file: !3, line: 153, type: !130, scopeLine: 160, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !172)
!172 = !{!173, !174, !175, !176, !177, !178}
!173 = !DILocalVariable(name: "m", arg: 1, scope: !171, file: !3, line: 154, type: !46)
!174 = !DILocalVariable(name: "c", arg: 2, scope: !171, file: !3, line: 155, type: !46)
!175 = !DILocalVariable(name: "clen", arg: 3, scope: !171, file: !3, line: 156, type: !10)
!176 = !DILocalVariable(name: "n1", arg: 4, scope: !171, file: !3, line: 157, type: !46)
!177 = !DILocalVariable(name: "k1", arg: 5, scope: !171, file: !3, line: 158, type: !46)
!178 = !DILocalVariable(name: "mac", scope: !171, file: !3, line: 161, type: !46)
!179 = !DILocation(line: 0, scope: !171)
!180 = !DILocation(line: 162, column: 10, scope: !171)
!181 = !DILocation(line: 162, column: 3, scope: !171)
!182 = distinct !DISubprogram(name: "NaCl_crypto_box_beforenm", scope: !3, file: !3, line: 361, type: !183, scopeLine: 362, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !185)
!183 = !DISubroutineType(types: !184)
!184 = !{!5, !46, !46, !46}
!185 = !{!186, !187, !188}
!186 = !DILocalVariable(name: "k1", arg: 1, scope: !182, file: !3, line: 361, type: !46)
!187 = !DILocalVariable(name: "pk", arg: 2, scope: !182, file: !3, line: 361, type: !46)
!188 = !DILocalVariable(name: "sk", arg: 3, scope: !182, file: !3, line: 361, type: !46)
!189 = !DILocation(line: 0, scope: !182)
!190 = !DILocation(line: 363, column: 10, scope: !182)
!191 = !DILocation(line: 363, column: 3, scope: !182)
!192 = distinct !DISubprogram(name: "Hacl_Box_ZeroPad_crypto_box_beforenm", scope: !3, file: !3, line: 165, type: !183, scopeLine: 166, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !193)
!193 = !{!194, !195, !196, !197, !201, !202}
!194 = !DILocalVariable(name: "k1", arg: 1, scope: !192, file: !3, line: 165, type: !46)
!195 = !DILocalVariable(name: "pk", arg: 2, scope: !192, file: !3, line: 165, type: !46)
!196 = !DILocalVariable(name: "sk", arg: 3, scope: !192, file: !3, line: 165, type: !46)
!197 = !DILocalVariable(name: "tmp", scope: !192, file: !3, line: 167, type: !198)
!198 = !DICompositeType(tag: DW_TAG_array_type, baseType: !13, size: 384, elements: !199)
!199 = !{!200}
!200 = !DISubrange(count: 48)
!201 = !DILocalVariable(name: "hsalsa_k", scope: !192, file: !3, line: 168, type: !46)
!202 = !DILocalVariable(name: "hsalsa_n", scope: !192, file: !3, line: 169, type: !46)
!203 = !DILocation(line: 0, scope: !192)
!204 = !DILocation(line: 167, column: 3, scope: !192)
!205 = !DILocation(line: 167, column: 11, scope: !192)
!206 = !DILocation(line: 169, column: 27, scope: !192)
!207 = !DILocation(line: 170, column: 3, scope: !192)
!208 = !DILocation(line: 171, column: 3, scope: !192)
!209 = !DILocation(line: 173, column: 1, scope: !192)
!210 = !DILocation(line: 172, column: 3, scope: !192)
!211 = distinct !DISubprogram(name: "NaCl_crypto_box_detached_afternm", scope: !3, file: !3, line: 367, type: !44, scopeLine: 375, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !212)
!212 = !{!213, !214, !215, !216, !217, !218}
!213 = !DILocalVariable(name: "c", arg: 1, scope: !211, file: !3, line: 368, type: !46)
!214 = !DILocalVariable(name: "mac", arg: 2, scope: !211, file: !3, line: 369, type: !46)
!215 = !DILocalVariable(name: "m", arg: 3, scope: !211, file: !3, line: 370, type: !46)
!216 = !DILocalVariable(name: "mlen", arg: 4, scope: !211, file: !3, line: 371, type: !10)
!217 = !DILocalVariable(name: "n1", arg: 5, scope: !211, file: !3, line: 372, type: !46)
!218 = !DILocalVariable(name: "k1", arg: 6, scope: !211, file: !3, line: 373, type: !46)
!219 = !DILocation(line: 0, scope: !211)
!220 = !DILocation(line: 376, column: 10, scope: !211)
!221 = !DILocation(line: 376, column: 3, scope: !211)
!222 = distinct !DISubprogram(name: "Hacl_Box_ZeroPad_crypto_box_detached_afternm", scope: !3, file: !3, line: 176, type: !44, scopeLine: 184, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !223)
!223 = !{!224, !225, !226, !227, !228, !229}
!224 = !DILocalVariable(name: "c", arg: 1, scope: !222, file: !3, line: 177, type: !46)
!225 = !DILocalVariable(name: "mac", arg: 2, scope: !222, file: !3, line: 178, type: !46)
!226 = !DILocalVariable(name: "m", arg: 3, scope: !222, file: !3, line: 179, type: !46)
!227 = !DILocalVariable(name: "mlen", arg: 4, scope: !222, file: !3, line: 180, type: !10)
!228 = !DILocalVariable(name: "n1", arg: 5, scope: !222, file: !3, line: 181, type: !46)
!229 = !DILocalVariable(name: "k1", arg: 6, scope: !222, file: !3, line: 182, type: !46)
!230 = !DILocation(line: 0, scope: !222)
!231 = !DILocation(line: 185, column: 10, scope: !222)
!232 = !DILocation(line: 185, column: 3, scope: !222)
!233 = distinct !DISubprogram(name: "NaCl_crypto_box_detached", scope: !3, file: !3, line: 380, type: !234, scopeLine: 389, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !236)
!234 = !DISubroutineType(types: !235)
!235 = !{!5, !46, !46, !46, !10, !46, !46, !46}
!236 = !{!237, !238, !239, !240, !241, !242, !243}
!237 = !DILocalVariable(name: "c", arg: 1, scope: !233, file: !3, line: 381, type: !46)
!238 = !DILocalVariable(name: "mac", arg: 2, scope: !233, file: !3, line: 382, type: !46)
!239 = !DILocalVariable(name: "m", arg: 3, scope: !233, file: !3, line: 383, type: !46)
!240 = !DILocalVariable(name: "mlen", arg: 4, scope: !233, file: !3, line: 384, type: !10)
!241 = !DILocalVariable(name: "n1", arg: 5, scope: !233, file: !3, line: 385, type: !46)
!242 = !DILocalVariable(name: "pk", arg: 6, scope: !233, file: !3, line: 386, type: !46)
!243 = !DILocalVariable(name: "sk", arg: 7, scope: !233, file: !3, line: 387, type: !46)
!244 = !DILocation(line: 0, scope: !233)
!245 = !DILocation(line: 390, column: 10, scope: !233)
!246 = !DILocation(line: 390, column: 3, scope: !233)
!247 = distinct !DISubprogram(name: "Hacl_Box_ZeroPad_crypto_box_detached", scope: !3, file: !3, line: 189, type: !234, scopeLine: 198, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !248)
!248 = !{!249, !250, !251, !252, !253, !254, !255, !256, !260, !261, !262, !263}
!249 = !DILocalVariable(name: "c", arg: 1, scope: !247, file: !3, line: 190, type: !46)
!250 = !DILocalVariable(name: "mac", arg: 2, scope: !247, file: !3, line: 191, type: !46)
!251 = !DILocalVariable(name: "m", arg: 3, scope: !247, file: !3, line: 192, type: !46)
!252 = !DILocalVariable(name: "mlen", arg: 4, scope: !247, file: !3, line: 193, type: !10)
!253 = !DILocalVariable(name: "n1", arg: 5, scope: !247, file: !3, line: 194, type: !46)
!254 = !DILocalVariable(name: "pk", arg: 6, scope: !247, file: !3, line: 195, type: !46)
!255 = !DILocalVariable(name: "sk", arg: 7, scope: !247, file: !3, line: 196, type: !46)
!256 = !DILocalVariable(name: "key", scope: !247, file: !3, line: 199, type: !257)
!257 = !DICompositeType(tag: DW_TAG_array_type, baseType: !13, size: 640, elements: !258)
!258 = !{!259}
!259 = !DISubrange(count: 80)
!260 = !DILocalVariable(name: "k1", scope: !247, file: !3, line: 200, type: !46)
!261 = !DILocalVariable(name: "subkey", scope: !247, file: !3, line: 201, type: !46)
!262 = !DILocalVariable(name: "hsalsa_n", scope: !247, file: !3, line: 202, type: !46)
!263 = !DILocalVariable(name: "z", scope: !247, file: !3, line: 205, type: !5)
!264 = !DILocation(line: 0, scope: !247)
!265 = !DILocation(line: 199, column: 3, scope: !247)
!266 = !DILocation(line: 199, column: 11, scope: !247)
!267 = !DILocation(line: 201, column: 25, scope: !247)
!268 = !DILocation(line: 202, column: 27, scope: !247)
!269 = !DILocation(line: 203, column: 3, scope: !247)
!270 = !DILocation(line: 204, column: 3, scope: !247)
!271 = !DILocation(line: 205, column: 16, scope: !247)
!272 = !DILocation(line: 207, column: 1, scope: !247)
!273 = !DILocation(line: 206, column: 3, scope: !247)
!274 = distinct !DISubprogram(name: "NaCl_crypto_box_open_detached", scope: !3, file: !3, line: 394, type: !234, scopeLine: 403, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !275)
!275 = !{!276, !277, !278, !279, !280, !281, !282}
!276 = !DILocalVariable(name: "m", arg: 1, scope: !274, file: !3, line: 395, type: !46)
!277 = !DILocalVariable(name: "c", arg: 2, scope: !274, file: !3, line: 396, type: !46)
!278 = !DILocalVariable(name: "mac", arg: 3, scope: !274, file: !3, line: 397, type: !46)
!279 = !DILocalVariable(name: "mlen", arg: 4, scope: !274, file: !3, line: 398, type: !10)
!280 = !DILocalVariable(name: "n1", arg: 5, scope: !274, file: !3, line: 399, type: !46)
!281 = !DILocalVariable(name: "pk", arg: 6, scope: !274, file: !3, line: 400, type: !46)
!282 = !DILocalVariable(name: "sk", arg: 7, scope: !274, file: !3, line: 401, type: !46)
!283 = !DILocation(line: 0, scope: !274)
!284 = !DILocation(line: 404, column: 10, scope: !274)
!285 = !DILocation(line: 404, column: 3, scope: !274)
!286 = distinct !DISubprogram(name: "Hacl_Box_ZeroPad_crypto_box_open_detached", scope: !3, file: !3, line: 210, type: !234, scopeLine: 219, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !287)
!287 = !{!288, !289, !290, !291, !292, !293, !294, !295, !296, !297, !298, !299}
!288 = !DILocalVariable(name: "m", arg: 1, scope: !286, file: !3, line: 211, type: !46)
!289 = !DILocalVariable(name: "c", arg: 2, scope: !286, file: !3, line: 212, type: !46)
!290 = !DILocalVariable(name: "mac", arg: 3, scope: !286, file: !3, line: 213, type: !46)
!291 = !DILocalVariable(name: "mlen", arg: 4, scope: !286, file: !3, line: 214, type: !10)
!292 = !DILocalVariable(name: "n1", arg: 5, scope: !286, file: !3, line: 215, type: !46)
!293 = !DILocalVariable(name: "pk", arg: 6, scope: !286, file: !3, line: 216, type: !46)
!294 = !DILocalVariable(name: "sk", arg: 7, scope: !286, file: !3, line: 217, type: !46)
!295 = !DILocalVariable(name: "key", scope: !286, file: !3, line: 220, type: !257)
!296 = !DILocalVariable(name: "k1", scope: !286, file: !3, line: 221, type: !46)
!297 = !DILocalVariable(name: "subkey", scope: !286, file: !3, line: 222, type: !46)
!298 = !DILocalVariable(name: "hsalsa_n", scope: !286, file: !3, line: 223, type: !46)
!299 = !DILocalVariable(name: "z", scope: !286, file: !3, line: 227, type: !5)
!300 = !DILocation(line: 0, scope: !286)
!301 = !DILocation(line: 220, column: 3, scope: !286)
!302 = !DILocation(line: 220, column: 11, scope: !286)
!303 = !DILocation(line: 222, column: 25, scope: !286)
!304 = !DILocation(line: 223, column: 27, scope: !286)
!305 = !DILocation(line: 224, column: 3, scope: !286)
!306 = !DILocation(line: 225, column: 3, scope: !286)
!307 = !DILocation(line: 227, column: 7, scope: !286)
!308 = !DILocation(line: 229, column: 1, scope: !286)
!309 = !DILocation(line: 228, column: 3, scope: !286)
!310 = distinct !DISubprogram(name: "NaCl_crypto_box_easy_afternm", scope: !3, file: !3, line: 408, type: !130, scopeLine: 409, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !311)
!311 = !{!312, !313, !314, !315, !316}
!312 = !DILocalVariable(name: "c", arg: 1, scope: !310, file: !3, line: 408, type: !46)
!313 = !DILocalVariable(name: "m", arg: 2, scope: !310, file: !3, line: 408, type: !46)
!314 = !DILocalVariable(name: "mlen", arg: 3, scope: !310, file: !3, line: 408, type: !10)
!315 = !DILocalVariable(name: "n1", arg: 4, scope: !310, file: !3, line: 408, type: !46)
!316 = !DILocalVariable(name: "k1", arg: 5, scope: !310, file: !3, line: 408, type: !46)
!317 = !DILocation(line: 0, scope: !310)
!318 = !DILocation(line: 410, column: 10, scope: !310)
!319 = !DILocation(line: 410, column: 3, scope: !310)
!320 = distinct !DISubprogram(name: "Hacl_Box_ZeroPad_crypto_box_easy_afternm", scope: !3, file: !3, line: 232, type: !130, scopeLine: 239, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !321)
!321 = !{!322, !323, !324, !325, !326, !327, !328}
!322 = !DILocalVariable(name: "c", arg: 1, scope: !320, file: !3, line: 233, type: !46)
!323 = !DILocalVariable(name: "m", arg: 2, scope: !320, file: !3, line: 234, type: !46)
!324 = !DILocalVariable(name: "mlen", arg: 3, scope: !320, file: !3, line: 235, type: !10)
!325 = !DILocalVariable(name: "n1", arg: 4, scope: !320, file: !3, line: 236, type: !46)
!326 = !DILocalVariable(name: "k1", arg: 5, scope: !320, file: !3, line: 237, type: !46)
!327 = !DILocalVariable(name: "cmac", scope: !320, file: !3, line: 240, type: !149)
!328 = !DILocalVariable(name: "z", scope: !320, file: !3, line: 241, type: !5)
!329 = !DILocation(line: 0, scope: !320)
!330 = !DILocation(line: 240, column: 3, scope: !320)
!331 = !DILocation(line: 240, column: 11, scope: !320)
!332 = !DILocation(line: 241, column: 16, scope: !320)
!333 = !DILocation(line: 242, column: 12, scope: !320)
!334 = !DILocation(line: 242, column: 3, scope: !320)
!335 = !DILocation(line: 244, column: 1, scope: !320)
!336 = !DILocation(line: 243, column: 3, scope: !320)
!337 = distinct !DISubprogram(name: "NaCl_crypto_box_easy", scope: !3, file: !3, line: 414, type: !338, scopeLine: 422, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !340)
!338 = !DISubroutineType(types: !339)
!339 = !{!5, !46, !46, !10, !46, !46, !46}
!340 = !{!341, !342, !343, !344, !345, !346}
!341 = !DILocalVariable(name: "c", arg: 1, scope: !337, file: !3, line: 415, type: !46)
!342 = !DILocalVariable(name: "m", arg: 2, scope: !337, file: !3, line: 416, type: !46)
!343 = !DILocalVariable(name: "mlen", arg: 3, scope: !337, file: !3, line: 417, type: !10)
!344 = !DILocalVariable(name: "n1", arg: 4, scope: !337, file: !3, line: 418, type: !46)
!345 = !DILocalVariable(name: "pk", arg: 5, scope: !337, file: !3, line: 419, type: !46)
!346 = !DILocalVariable(name: "sk", arg: 6, scope: !337, file: !3, line: 420, type: !46)
!347 = !DILocation(line: 0, scope: !337)
!348 = !DILocation(line: 423, column: 10, scope: !337)
!349 = !DILocation(line: 423, column: 3, scope: !337)
!350 = distinct !DISubprogram(name: "Hacl_Box_ZeroPad_crypto_box_easy", scope: !3, file: !3, line: 247, type: !338, scopeLine: 255, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !351)
!351 = !{!352, !353, !354, !355, !356, !357, !358, !359}
!352 = !DILocalVariable(name: "c", arg: 1, scope: !350, file: !3, line: 248, type: !46)
!353 = !DILocalVariable(name: "m", arg: 2, scope: !350, file: !3, line: 249, type: !46)
!354 = !DILocalVariable(name: "mlen", arg: 3, scope: !350, file: !3, line: 250, type: !10)
!355 = !DILocalVariable(name: "n1", arg: 4, scope: !350, file: !3, line: 251, type: !46)
!356 = !DILocalVariable(name: "pk", arg: 5, scope: !350, file: !3, line: 252, type: !46)
!357 = !DILocalVariable(name: "sk", arg: 6, scope: !350, file: !3, line: 253, type: !46)
!358 = !DILocalVariable(name: "cmac", scope: !350, file: !3, line: 256, type: !149)
!359 = !DILocalVariable(name: "res", scope: !350, file: !3, line: 257, type: !5)
!360 = !DILocation(line: 0, scope: !350)
!361 = !DILocation(line: 256, column: 3, scope: !350)
!362 = !DILocation(line: 256, column: 11, scope: !350)
!363 = !DILocation(line: 257, column: 18, scope: !350)
!364 = !DILocation(line: 258, column: 12, scope: !350)
!365 = !DILocation(line: 258, column: 3, scope: !350)
!366 = !DILocation(line: 260, column: 1, scope: !350)
!367 = !DILocation(line: 259, column: 3, scope: !350)
!368 = distinct !DISubprogram(name: "NaCl_crypto_box_open_easy", scope: !3, file: !3, line: 427, type: !338, scopeLine: 435, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !369)
!369 = !{!370, !371, !372, !373, !374, !375}
!370 = !DILocalVariable(name: "m", arg: 1, scope: !368, file: !3, line: 428, type: !46)
!371 = !DILocalVariable(name: "c", arg: 2, scope: !368, file: !3, line: 429, type: !46)
!372 = !DILocalVariable(name: "mlen", arg: 3, scope: !368, file: !3, line: 430, type: !10)
!373 = !DILocalVariable(name: "n1", arg: 4, scope: !368, file: !3, line: 431, type: !46)
!374 = !DILocalVariable(name: "pk", arg: 5, scope: !368, file: !3, line: 432, type: !46)
!375 = !DILocalVariable(name: "sk", arg: 6, scope: !368, file: !3, line: 433, type: !46)
!376 = !DILocation(line: 0, scope: !368)
!377 = !DILocation(line: 436, column: 10, scope: !368)
!378 = !DILocation(line: 436, column: 3, scope: !368)
!379 = distinct !DISubprogram(name: "Hacl_Box_ZeroPad_crypto_box_open_easy", scope: !3, file: !3, line: 263, type: !338, scopeLine: 271, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !380)
!380 = !{!381, !382, !383, !384, !385, !386, !387}
!381 = !DILocalVariable(name: "m", arg: 1, scope: !379, file: !3, line: 264, type: !46)
!382 = !DILocalVariable(name: "c", arg: 2, scope: !379, file: !3, line: 265, type: !46)
!383 = !DILocalVariable(name: "mlen", arg: 3, scope: !379, file: !3, line: 266, type: !10)
!384 = !DILocalVariable(name: "n1", arg: 4, scope: !379, file: !3, line: 267, type: !46)
!385 = !DILocalVariable(name: "pk", arg: 5, scope: !379, file: !3, line: 268, type: !46)
!386 = !DILocalVariable(name: "sk", arg: 6, scope: !379, file: !3, line: 269, type: !46)
!387 = !DILocalVariable(name: "mac", scope: !379, file: !3, line: 272, type: !46)
!388 = !DILocation(line: 0, scope: !379)
!389 = !DILocation(line: 272, column: 20, scope: !379)
!390 = !DILocation(line: 273, column: 10, scope: !379)
!391 = !DILocation(line: 273, column: 3, scope: !379)
!392 = distinct !DISubprogram(name: "NaCl_crypto_box_open_detached_afternm", scope: !3, file: !3, line: 440, type: !44, scopeLine: 448, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !393)
!393 = !{!394, !395, !396, !397, !398, !399}
!394 = !DILocalVariable(name: "m", arg: 1, scope: !392, file: !3, line: 441, type: !46)
!395 = !DILocalVariable(name: "c", arg: 2, scope: !392, file: !3, line: 442, type: !46)
!396 = !DILocalVariable(name: "mac", arg: 3, scope: !392, file: !3, line: 443, type: !46)
!397 = !DILocalVariable(name: "mlen", arg: 4, scope: !392, file: !3, line: 444, type: !10)
!398 = !DILocalVariable(name: "n1", arg: 5, scope: !392, file: !3, line: 445, type: !46)
!399 = !DILocalVariable(name: "k1", arg: 6, scope: !392, file: !3, line: 446, type: !46)
!400 = !DILocation(line: 0, scope: !392)
!401 = !DILocation(line: 449, column: 10, scope: !392)
!402 = !DILocation(line: 449, column: 3, scope: !392)
!403 = distinct !DISubprogram(name: "Hacl_Box_ZeroPad_crypto_box_open_detached_afternm", scope: !3, file: !3, line: 277, type: !44, scopeLine: 285, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !404)
!404 = !{!405, !406, !407, !408, !409, !410}
!405 = !DILocalVariable(name: "m", arg: 1, scope: !403, file: !3, line: 278, type: !46)
!406 = !DILocalVariable(name: "c", arg: 2, scope: !403, file: !3, line: 279, type: !46)
!407 = !DILocalVariable(name: "mac", arg: 3, scope: !403, file: !3, line: 280, type: !46)
!408 = !DILocalVariable(name: "mlen", arg: 4, scope: !403, file: !3, line: 281, type: !10)
!409 = !DILocalVariable(name: "n1", arg: 5, scope: !403, file: !3, line: 282, type: !46)
!410 = !DILocalVariable(name: "k1", arg: 6, scope: !403, file: !3, line: 283, type: !46)
!411 = !DILocation(line: 0, scope: !403)
!412 = !DILocation(line: 286, column: 10, scope: !403)
!413 = !DILocation(line: 286, column: 3, scope: !403)
!414 = distinct !DISubprogram(name: "NaCl_crypto_box_open_easy_afternm", scope: !3, file: !3, line: 453, type: !130, scopeLine: 460, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !415)
!415 = !{!416, !417, !418, !419, !420}
!416 = !DILocalVariable(name: "m", arg: 1, scope: !414, file: !3, line: 454, type: !46)
!417 = !DILocalVariable(name: "c", arg: 2, scope: !414, file: !3, line: 455, type: !46)
!418 = !DILocalVariable(name: "mlen", arg: 3, scope: !414, file: !3, line: 456, type: !10)
!419 = !DILocalVariable(name: "n1", arg: 4, scope: !414, file: !3, line: 457, type: !46)
!420 = !DILocalVariable(name: "k1", arg: 5, scope: !414, file: !3, line: 458, type: !46)
!421 = !DILocation(line: 0, scope: !414)
!422 = !DILocation(line: 461, column: 10, scope: !414)
!423 = !DILocation(line: 461, column: 3, scope: !414)
!424 = distinct !DISubprogram(name: "Hacl_Box_ZeroPad_crypto_box_open_easy_afternm", scope: !3, file: !3, line: 290, type: !130, scopeLine: 297, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !425)
!425 = !{!426, !427, !428, !429, !430, !431, !432}
!426 = !DILocalVariable(name: "m", arg: 1, scope: !424, file: !3, line: 291, type: !46)
!427 = !DILocalVariable(name: "c", arg: 2, scope: !424, file: !3, line: 292, type: !46)
!428 = !DILocalVariable(name: "mlen", arg: 3, scope: !424, file: !3, line: 293, type: !10)
!429 = !DILocalVariable(name: "n1", arg: 4, scope: !424, file: !3, line: 294, type: !46)
!430 = !DILocalVariable(name: "k1", arg: 5, scope: !424, file: !3, line: 295, type: !46)
!431 = !DILocalVariable(name: "mac", scope: !424, file: !3, line: 298, type: !46)
!432 = !DILocalVariable(name: "t", scope: !424, file: !3, line: 299, type: !5)
!433 = !DILocation(line: 0, scope: !424)
!434 = !DILocation(line: 298, column: 20, scope: !424)
!435 = !DILocation(line: 299, column: 16, scope: !424)
!436 = !DILocation(line: 300, column: 3, scope: !424)
!437 = !DISubprogram(name: "Hacl_Salsa20_hsalsa20", scope: !438, file: !438, line: 83, type: !439, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !441)
!438 = !DIFile(filename: "hacl-c/hacl-c/Hacl_Salsa20.h", directory: "/mnt/c/Users/fwill/Documents/HS24/semester_project/tools/binsec/binsec/examples/hacl", checksumkind: CSK_MD5, checksum: "8d4b539cd3d7eb7155073ae2eacb2e38")
!439 = !DISubroutineType(types: !440)
!440 = !{null, !46, !46, !46}
!441 = !{}
!442 = !DISubprogram(name: "Hacl_Salsa20_salsa20", scope: !438, file: !438, line: 74, type: !443, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !441)
!443 = !DISubroutineType(types: !444)
!444 = !{null, !46, !46, !5, !46, !46, !10}
!445 = !DISubprogram(name: "Hacl_Poly1305_64_crypto_onetimeauth", scope: !446, file: !446, line: 110, type: !447, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !441)
!446 = !DIFile(filename: "hacl-c/hacl-c/Hacl_Poly1305_64.h", directory: "/mnt/c/Users/fwill/Documents/HS24/semester_project/tools/binsec/binsec/examples/hacl", checksumkind: CSK_MD5, checksum: "5b2076ce0bf121af206cc3eb1c4c121c")
!447 = !DISubroutineType(types: !448)
!448 = !{null, !46, !46, !10, !46}
!449 = distinct !DISubprogram(name: "Hacl_SecretBox_ZeroPad_set_zero_bytes", scope: !3, file: !3, line: 27, type: !450, scopeLine: 28, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !452)
!450 = !DISubroutineType(types: !451)
!451 = !{null, !46}
!452 = !{!453, !454}
!453 = !DILocalVariable(name: "b", arg: 1, scope: !449, file: !3, line: 27, type: !46)
!454 = !DILocalVariable(name: "zero1", scope: !449, file: !3, line: 29, type: !13)
!455 = !DILocation(line: 0, scope: !449)
!456 = !DILocation(line: 31, column: 9, scope: !449)
!457 = !DILocation(line: 62, column: 1, scope: !449)
!458 = !DISubprogram(name: "Hacl_Policies_cmp_bytes", scope: !459, file: !459, line: 42, type: !460, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !441)
!459 = !DIFile(filename: "hacl-c/hacl-c/Hacl_Policies.h", directory: "/mnt/c/Users/fwill/Documents/HS24/semester_project/tools/binsec/binsec/examples/hacl", checksumkind: CSK_MD5, checksum: "a8a37306bf5433ee7d02dfa3ffcf6ed4")
!460 = !DISubroutineType(types: !461)
!461 = !{!13, !46, !46, !5}
!462 = distinct !DISubprogram(name: "Hacl_SecretBox_ZeroPad_crypto_secretbox_open_detached_decrypt", scope: !3, file: !3, line: 85, type: !463, scopeLine: 93, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !465)
!463 = !DISubroutineType(types: !464)
!464 = !{!5, !46, !46, !10, !46, !46, !13}
!465 = !{!466, !467, !468, !469, !470, !471, !472}
!466 = !DILocalVariable(name: "m", arg: 1, scope: !462, file: !3, line: 86, type: !46)
!467 = !DILocalVariable(name: "c", arg: 2, scope: !462, file: !3, line: 87, type: !46)
!468 = !DILocalVariable(name: "clen", arg: 3, scope: !462, file: !3, line: 88, type: !10)
!469 = !DILocalVariable(name: "n1", arg: 4, scope: !462, file: !3, line: 89, type: !46)
!470 = !DILocalVariable(name: "subkey", arg: 5, scope: !462, file: !3, line: 90, type: !46)
!471 = !DILocalVariable(name: "verify", arg: 6, scope: !462, file: !3, line: 91, type: !13)
!472 = !DILocalVariable(name: "clen_", scope: !462, file: !3, line: 94, type: !5)
!473 = !DILocation(line: 0, scope: !462)
!474 = !DILocation(line: 95, column: 14, scope: !475)
!475 = distinct !DILexicalBlock(scope: !462, file: !3, line: 95, column: 7)
!476 = !DILocation(line: 95, column: 7, scope: !462)
!477 = !DILocation(line: 94, column: 20, scope: !462)
!478 = !DILocation(line: 97, column: 38, scope: !479)
!479 = distinct !DILexicalBlock(scope: !475, file: !3, line: 96, column: 3)
!480 = !DILocation(line: 97, column: 66, scope: !479)
!481 = !DILocation(line: 97, column: 5, scope: !479)
!482 = !DILocation(line: 98, column: 5, scope: !479)
!483 = !DILocation(line: 99, column: 5, scope: !479)
!484 = !DILocation(line: 100, column: 5, scope: !479)
!485 = !DILocation(line: 0, scope: !475)
!486 = !DILocation(line: 104, column: 1, scope: !462)
!487 = !DISubprogram(name: "Hacl_Curve25519_crypto_scalarmult", scope: !488, file: !488, line: 68, type: !439, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !441)
!488 = !DIFile(filename: "hacl-c/hacl-c/Hacl_Curve25519.h", directory: "/mnt/c/Users/fwill/Documents/HS24/semester_project/tools/binsec/binsec/examples/hacl", checksumkind: CSK_MD5, checksum: "0930fbd245ca299bedaa6fe9354e9123")
