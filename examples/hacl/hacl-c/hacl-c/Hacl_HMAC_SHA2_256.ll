; ModuleID = 'hacl-c/hacl-c/Hacl_HMAC_SHA2_256.c'
source_filename = "hacl-c/hacl-c/Hacl_HMAC_SHA2_256.c"
target datalayout = "e-m:e-p:32:32-p270:32:32-p271:32:32-p272:64:64-f64:32:64-f80:32-n8:16:32-S128"
target triple = "i386-pc-linux-gnu"

; Function Attrs: nofree nosync nounwind uwtable
define dso_local void @Hacl_HMAC_SHA2_256_hmac_core(i8* nocapture noundef writeonly %0, i8* nocapture noundef readonly %1, i8* nocapture noundef readonly %2, i32 noundef %3) local_unnamed_addr #0 !dbg !22 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !27, metadata !DIExpression()), !dbg !31
  call void @llvm.dbg.value(metadata i8* %1, metadata !28, metadata !DIExpression()), !dbg !31
  call void @llvm.dbg.value(metadata i8* %2, metadata !29, metadata !DIExpression()), !dbg !31
  call void @llvm.dbg.value(metadata i32 %3, metadata !30, metadata !DIExpression()), !dbg !31
  call fastcc void @Hacl_Impl_HMAC_SHA2_256_hmac_core(i8* noundef %0, i8* noundef %1, i8* noundef %2, i32 noundef %3), !dbg !32
  ret void, !dbg !33
}

; Function Attrs: mustprogress nofree nosync nounwind readnone speculatable willreturn
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: nofree nosync nounwind uwtable
define internal fastcc void @Hacl_Impl_HMAC_SHA2_256_hmac_core(i8* nocapture noundef writeonly %0, i8* nocapture noundef readonly %1, i8* nocapture noundef readonly %2, i32 noundef %3) unnamed_addr #0 !dbg !34 {
  %5 = alloca [128 x i8], align 1
  %6 = alloca [128 x i8], align 1
  %7 = alloca [64 x i8], align 1
  %8 = getelementptr inbounds [64 x i8], [64 x i8]* %7, i32 0, i32 0
  %9 = alloca [64 x i8], align 1
  %10 = alloca [137 x i32], align 4
  %11 = alloca [137 x i32], align 4
  call void @llvm.dbg.value(metadata i8* %0, metadata !36, metadata !DIExpression()), !dbg !60
  call void @llvm.dbg.value(metadata i8* %1, metadata !37, metadata !DIExpression()), !dbg !60
  call void @llvm.dbg.value(metadata i8* %2, metadata !38, metadata !DIExpression()), !dbg !60
  call void @llvm.dbg.value(metadata i32 %3, metadata !39, metadata !DIExpression()), !dbg !60
  %12 = getelementptr inbounds [64 x i8], [64 x i8]* %7, i32 0, i32 0, !dbg !61
  call void @llvm.lifetime.start.p0i8(i64 64, i8* nonnull %12) #6, !dbg !61
  call void @llvm.dbg.declare(metadata [64 x i8]* %7, metadata !40, metadata !DIExpression()), !dbg !62
  call void @llvm.dbg.value(metadata i32 0, metadata !44, metadata !DIExpression()), !dbg !63
  call void @llvm.memset.p0i8.i32(i8* noundef nonnull align 1 dereferenceable(64) %8, i8 54, i32 64, i1 false), !dbg !64, !tbaa !66
  %13 = getelementptr inbounds [64 x i8], [64 x i8]* %9, i32 0, i32 0
  call void @llvm.dbg.value(metadata i32 undef, metadata !44, metadata !DIExpression()), !dbg !63
  call void @llvm.dbg.value(metadata i32 undef, metadata !44, metadata !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value)), !dbg !63
  %14 = getelementptr inbounds [64 x i8], [64 x i8]* %9, i32 0, i32 0, !dbg !69
  call void @llvm.lifetime.start.p0i8(i64 64, i8* nonnull %14) #6, !dbg !69
  call void @llvm.dbg.declare(metadata [64 x i8]* %9, metadata !46, metadata !DIExpression()), !dbg !70
  call void @llvm.dbg.value(metadata i32 0, metadata !47, metadata !DIExpression()), !dbg !71
  call void @llvm.memset.p0i8.i32(i8* noundef nonnull align 1 dereferenceable(64) %13, i8 92, i32 64, i1 false), !dbg !72, !tbaa !66
  call void @llvm.dbg.value(metadata i32 undef, metadata !47, metadata !DIExpression()), !dbg !71
  call void @llvm.dbg.value(metadata i32 undef, metadata !47, metadata !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value)), !dbg !71
  br label %15, !dbg !74

15:                                               ; preds = %4, %15
  %16 = phi i32 [ %22, %15 ], [ 0, %4 ]
  call void @llvm.dbg.value(metadata i32 %16, metadata !83, metadata !DIExpression()), !dbg !89
  %17 = getelementptr inbounds [64 x i8], [64 x i8]* %7, i32 0, i32 %16, !dbg !90
  %18 = load i8, i8* %17, align 1, !dbg !90, !tbaa !66
  call void @llvm.dbg.value(metadata i8 %18, metadata !84, metadata !DIExpression()), !dbg !91
  %19 = getelementptr inbounds i8, i8* %1, i32 %16, !dbg !92
  %20 = load i8, i8* %19, align 1, !dbg !92, !tbaa !66
  call void @llvm.dbg.value(metadata i8 %20, metadata !87, metadata !DIExpression()), !dbg !91
  %21 = xor i8 %20, %18, !dbg !93
  store i8 %21, i8* %17, align 1, !dbg !94, !tbaa !66
  %22 = add nuw nsw i32 %16, 1, !dbg !95
  call void @llvm.dbg.value(metadata i32 %22, metadata !83, metadata !DIExpression()), !dbg !89
  %23 = icmp eq i32 %22, 64, !dbg !96
  br i1 %23, label %24, label %15, !dbg !74, !llvm.loop !97

24:                                               ; preds = %15
  %25 = bitcast [137 x i32]* %10 to i8*, !dbg !101
  call void @llvm.lifetime.start.p0i8(i64 548, i8* nonnull %25) #6, !dbg !101
  call void @llvm.dbg.declare(metadata [137 x i32]* %10, metadata !49, metadata !DIExpression()), !dbg !102
  call void @llvm.memset.p0i8.i32(i8* noundef nonnull align 4 dereferenceable(548) %25, i8 0, i32 548, i1 false), !dbg !102
  %26 = lshr i32 %3, 6, !dbg !103
  call void @llvm.dbg.value(metadata i32 %26, metadata !53, metadata !DIExpression()), !dbg !60
  %27 = and i32 %3, 63, !dbg !104
  call void @llvm.dbg.value(metadata i32 %3, metadata !54, metadata !DIExpression(DW_OP_constu, 63, DW_OP_and, DW_OP_stack_value)), !dbg !60
  call void @llvm.dbg.value(metadata i8* %2, metadata !55, metadata !DIExpression()), !dbg !60
  %28 = and i32 %3, -64, !dbg !105
  %29 = getelementptr inbounds i8, i8* %2, i32 %28, !dbg !106
  call void @llvm.dbg.value(metadata i8* %29, metadata !56, metadata !DIExpression()), !dbg !60
  %30 = getelementptr inbounds [137 x i32], [137 x i32]* %10, i32 0, i32 0, !dbg !107
  call void @llvm.dbg.value(metadata i32* %30, metadata !108, metadata !DIExpression()), !dbg !147
  %31 = getelementptr inbounds [137 x i32], [137 x i32]* %10, i32 0, i32 136, !dbg !149
  call void @llvm.dbg.value(metadata i32* %31, metadata !114, metadata !DIExpression()), !dbg !147
  call void @llvm.dbg.value(metadata i32* %30, metadata !115, metadata !DIExpression()), !dbg !147
  %32 = getelementptr inbounds [137 x i32], [137 x i32]* %10, i32 0, i32 128, !dbg !150
  call void @llvm.dbg.value(metadata i32* %32, metadata !116, metadata !DIExpression()), !dbg !147
  call void @llvm.dbg.value(metadata i32* %30, metadata !117, metadata !DIExpression()), !dbg !147
  %33 = getelementptr inbounds [137 x i32], [137 x i32]* %10, i32 0, i32 16, !dbg !151
  call void @llvm.dbg.value(metadata i32* %33, metadata !118, metadata !DIExpression()), !dbg !147
  %34 = getelementptr inbounds [137 x i32], [137 x i32]* %10, i32 0, i32 32, !dbg !152
  call void @llvm.dbg.value(metadata i32* %34, metadata !119, metadata !DIExpression()), !dbg !147
  %35 = getelementptr inbounds [137 x i32], [137 x i32]* %10, i32 0, i32 48, !dbg !153
  call void @llvm.dbg.value(metadata i32* %35, metadata !120, metadata !DIExpression()), !dbg !147
  call void @llvm.dbg.value(metadata i32* %30, metadata !121, metadata !DIExpression()), !dbg !147
  %36 = getelementptr inbounds [137 x i32], [137 x i32]* %10, i32 0, i32 8, !dbg !154
  call void @llvm.dbg.value(metadata i32* %36, metadata !122, metadata !DIExpression()), !dbg !147
  call void @llvm.dbg.value(metadata i32* %30, metadata !123, metadata !DIExpression()), !dbg !147
  %37 = getelementptr inbounds [137 x i32], [137 x i32]* %10, i32 0, i32 4, !dbg !155
  call void @llvm.dbg.value(metadata i32* %37, metadata !124, metadata !DIExpression()), !dbg !147
  store i32 1116352408, i32* %30, align 4, !dbg !156, !tbaa !157
  %38 = getelementptr inbounds [137 x i32], [137 x i32]* %10, i32 0, i32 1, !dbg !159
  store i32 1899447441, i32* %38, align 4, !dbg !160, !tbaa !157
  %39 = getelementptr inbounds [137 x i32], [137 x i32]* %10, i32 0, i32 2, !dbg !161
  store i32 -1245643825, i32* %39, align 4, !dbg !162, !tbaa !157
  %40 = getelementptr inbounds [137 x i32], [137 x i32]* %10, i32 0, i32 3, !dbg !163
  store i32 -373957723, i32* %40, align 4, !dbg !164, !tbaa !157
  store i32 961987163, i32* %37, align 4, !dbg !165, !tbaa !157
  %41 = getelementptr inbounds [137 x i32], [137 x i32]* %10, i32 0, i32 5, !dbg !166
  store i32 1508970993, i32* %41, align 4, !dbg !167, !tbaa !157
  %42 = getelementptr inbounds [137 x i32], [137 x i32]* %10, i32 0, i32 6, !dbg !168
  store i32 -1841331548, i32* %42, align 4, !dbg !169, !tbaa !157
  %43 = getelementptr inbounds [137 x i32], [137 x i32]* %10, i32 0, i32 7, !dbg !170
  store i32 -1424204075, i32* %43, align 4, !dbg !171, !tbaa !157
  call void @llvm.dbg.value(metadata i32* %36, metadata !125, metadata !DIExpression()), !dbg !147
  %44 = getelementptr inbounds [137 x i32], [137 x i32]* %10, i32 0, i32 12, !dbg !172
  call void @llvm.dbg.value(metadata i32* %44, metadata !126, metadata !DIExpression()), !dbg !147
  store i32 -670586216, i32* %36, align 4, !dbg !173, !tbaa !157
  %45 = getelementptr inbounds [137 x i32], [137 x i32]* %10, i32 0, i32 9, !dbg !174
  store i32 310598401, i32* %45, align 4, !dbg !175, !tbaa !157
  %46 = getelementptr inbounds [137 x i32], [137 x i32]* %10, i32 0, i32 10, !dbg !176
  store i32 607225278, i32* %46, align 4, !dbg !177, !tbaa !157
  %47 = getelementptr inbounds [137 x i32], [137 x i32]* %10, i32 0, i32 11, !dbg !178
  store i32 1426881987, i32* %47, align 4, !dbg !179, !tbaa !157
  store i32 1925078388, i32* %44, align 4, !dbg !180, !tbaa !157
  %48 = getelementptr inbounds [137 x i32], [137 x i32]* %10, i32 0, i32 13, !dbg !181
  store i32 -2132889090, i32* %48, align 4, !dbg !182, !tbaa !157
  %49 = getelementptr inbounds [137 x i32], [137 x i32]* %10, i32 0, i32 14, !dbg !183
  store i32 -1680079193, i32* %49, align 4, !dbg !184, !tbaa !157
  %50 = getelementptr inbounds [137 x i32], [137 x i32]* %10, i32 0, i32 15, !dbg !185
  store i32 -1046744716, i32* %50, align 4, !dbg !186, !tbaa !157
  call void @llvm.dbg.value(metadata i32* %33, metadata !127, metadata !DIExpression()), !dbg !147
  %51 = getelementptr inbounds [137 x i32], [137 x i32]* %10, i32 0, i32 24, !dbg !187
  call void @llvm.dbg.value(metadata i32* %51, metadata !128, metadata !DIExpression()), !dbg !147
  call void @llvm.dbg.value(metadata i32* %33, metadata !129, metadata !DIExpression()), !dbg !147
  %52 = getelementptr inbounds [137 x i32], [137 x i32]* %10, i32 0, i32 20, !dbg !188
  call void @llvm.dbg.value(metadata i32* %52, metadata !130, metadata !DIExpression()), !dbg !147
  store i32 -459576895, i32* %33, align 4, !dbg !189, !tbaa !157
  %53 = getelementptr inbounds [137 x i32], [137 x i32]* %10, i32 0, i32 17, !dbg !190
  store i32 -272742522, i32* %53, align 4, !dbg !191, !tbaa !157
  %54 = getelementptr inbounds [137 x i32], [137 x i32]* %10, i32 0, i32 18, !dbg !192
  store i32 264347078, i32* %54, align 4, !dbg !193, !tbaa !157
  %55 = getelementptr inbounds [137 x i32], [137 x i32]* %10, i32 0, i32 19, !dbg !194
  store i32 604807628, i32* %55, align 4, !dbg !195, !tbaa !157
  store i32 770255983, i32* %52, align 4, !dbg !196, !tbaa !157
  %56 = getelementptr inbounds [137 x i32], [137 x i32]* %10, i32 0, i32 21, !dbg !197
  store i32 1249150122, i32* %56, align 4, !dbg !198, !tbaa !157
  %57 = getelementptr inbounds [137 x i32], [137 x i32]* %10, i32 0, i32 22, !dbg !199
  store i32 1555081692, i32* %57, align 4, !dbg !200, !tbaa !157
  %58 = getelementptr inbounds [137 x i32], [137 x i32]* %10, i32 0, i32 23, !dbg !201
  store i32 1996064986, i32* %58, align 4, !dbg !202, !tbaa !157
  call void @llvm.dbg.value(metadata i32* %51, metadata !131, metadata !DIExpression()), !dbg !147
  %59 = getelementptr inbounds [137 x i32], [137 x i32]* %10, i32 0, i32 28, !dbg !203
  call void @llvm.dbg.value(metadata i32* %59, metadata !132, metadata !DIExpression()), !dbg !147
  store i32 -1740746414, i32* %51, align 4, !dbg !204, !tbaa !157
  %60 = getelementptr inbounds [137 x i32], [137 x i32]* %10, i32 0, i32 25, !dbg !205
  store i32 -1473132947, i32* %60, align 4, !dbg !206, !tbaa !157
  %61 = getelementptr inbounds [137 x i32], [137 x i32]* %10, i32 0, i32 26, !dbg !207
  store i32 -1341970488, i32* %61, align 4, !dbg !208, !tbaa !157
  %62 = getelementptr inbounds [137 x i32], [137 x i32]* %10, i32 0, i32 27, !dbg !209
  store i32 -1084653625, i32* %62, align 4, !dbg !210, !tbaa !157
  store i32 -958395405, i32* %59, align 4, !dbg !211, !tbaa !157
  %63 = getelementptr inbounds [137 x i32], [137 x i32]* %10, i32 0, i32 29, !dbg !212
  store i32 -710438585, i32* %63, align 4, !dbg !213, !tbaa !157
  %64 = getelementptr inbounds [137 x i32], [137 x i32]* %10, i32 0, i32 30, !dbg !214
  store i32 113926993, i32* %64, align 4, !dbg !215, !tbaa !157
  %65 = getelementptr inbounds [137 x i32], [137 x i32]* %10, i32 0, i32 31, !dbg !216
  store i32 338241895, i32* %65, align 4, !dbg !217, !tbaa !157
  call void @llvm.dbg.value(metadata i32* %34, metadata !133, metadata !DIExpression()), !dbg !147
  %66 = getelementptr inbounds [137 x i32], [137 x i32]* %10, i32 0, i32 40, !dbg !218
  call void @llvm.dbg.value(metadata i32* %66, metadata !134, metadata !DIExpression()), !dbg !147
  call void @llvm.dbg.value(metadata i32* %34, metadata !135, metadata !DIExpression()), !dbg !147
  %67 = getelementptr inbounds [137 x i32], [137 x i32]* %10, i32 0, i32 36, !dbg !219
  call void @llvm.dbg.value(metadata i32* %67, metadata !136, metadata !DIExpression()), !dbg !147
  store i32 666307205, i32* %34, align 4, !dbg !220, !tbaa !157
  %68 = getelementptr inbounds [137 x i32], [137 x i32]* %10, i32 0, i32 33, !dbg !221
  store i32 773529912, i32* %68, align 4, !dbg !222, !tbaa !157
  %69 = getelementptr inbounds [137 x i32], [137 x i32]* %10, i32 0, i32 34, !dbg !223
  store i32 1294757372, i32* %69, align 4, !dbg !224, !tbaa !157
  %70 = getelementptr inbounds [137 x i32], [137 x i32]* %10, i32 0, i32 35, !dbg !225
  store i32 1396182291, i32* %70, align 4, !dbg !226, !tbaa !157
  store i32 1695183700, i32* %67, align 4, !dbg !227, !tbaa !157
  %71 = getelementptr inbounds [137 x i32], [137 x i32]* %10, i32 0, i32 37, !dbg !228
  store i32 1986661051, i32* %71, align 4, !dbg !229, !tbaa !157
  %72 = getelementptr inbounds [137 x i32], [137 x i32]* %10, i32 0, i32 38, !dbg !230
  store i32 -2117940946, i32* %72, align 4, !dbg !231, !tbaa !157
  %73 = getelementptr inbounds [137 x i32], [137 x i32]* %10, i32 0, i32 39, !dbg !232
  store i32 -1838011259, i32* %73, align 4, !dbg !233, !tbaa !157
  call void @llvm.dbg.value(metadata i32* %66, metadata !137, metadata !DIExpression()), !dbg !147
  %74 = getelementptr inbounds [137 x i32], [137 x i32]* %10, i32 0, i32 44, !dbg !234
  call void @llvm.dbg.value(metadata i32* %74, metadata !138, metadata !DIExpression()), !dbg !147
  store i32 -1564481375, i32* %66, align 4, !dbg !235, !tbaa !157
  %75 = getelementptr inbounds [137 x i32], [137 x i32]* %10, i32 0, i32 41, !dbg !236
  store i32 -1474664885, i32* %75, align 4, !dbg !237, !tbaa !157
  %76 = getelementptr inbounds [137 x i32], [137 x i32]* %10, i32 0, i32 42, !dbg !238
  store i32 -1035236496, i32* %76, align 4, !dbg !239, !tbaa !157
  %77 = getelementptr inbounds [137 x i32], [137 x i32]* %10, i32 0, i32 43, !dbg !240
  store i32 -949202525, i32* %77, align 4, !dbg !241, !tbaa !157
  store i32 -778901479, i32* %74, align 4, !dbg !242, !tbaa !157
  %78 = getelementptr inbounds [137 x i32], [137 x i32]* %10, i32 0, i32 45, !dbg !243
  store i32 -694614492, i32* %78, align 4, !dbg !244, !tbaa !157
  %79 = getelementptr inbounds [137 x i32], [137 x i32]* %10, i32 0, i32 46, !dbg !245
  store i32 -200395387, i32* %79, align 4, !dbg !246, !tbaa !157
  %80 = getelementptr inbounds [137 x i32], [137 x i32]* %10, i32 0, i32 47, !dbg !247
  store i32 275423344, i32* %80, align 4, !dbg !248, !tbaa !157
  call void @llvm.dbg.value(metadata i32* %35, metadata !139, metadata !DIExpression()), !dbg !147
  %81 = getelementptr inbounds [137 x i32], [137 x i32]* %10, i32 0, i32 56, !dbg !249
  call void @llvm.dbg.value(metadata i32* %81, metadata !140, metadata !DIExpression()), !dbg !147
  call void @llvm.dbg.value(metadata i32* %35, metadata !141, metadata !DIExpression()), !dbg !147
  %82 = getelementptr inbounds [137 x i32], [137 x i32]* %10, i32 0, i32 52, !dbg !250
  call void @llvm.dbg.value(metadata i32* %82, metadata !142, metadata !DIExpression()), !dbg !147
  store i32 430227734, i32* %35, align 4, !dbg !251, !tbaa !157
  %83 = getelementptr inbounds [137 x i32], [137 x i32]* %10, i32 0, i32 49, !dbg !252
  store i32 506948616, i32* %83, align 4, !dbg !253, !tbaa !157
  %84 = getelementptr inbounds [137 x i32], [137 x i32]* %10, i32 0, i32 50, !dbg !254
  store i32 659060556, i32* %84, align 4, !dbg !255, !tbaa !157
  %85 = getelementptr inbounds [137 x i32], [137 x i32]* %10, i32 0, i32 51, !dbg !256
  store i32 883997877, i32* %85, align 4, !dbg !257, !tbaa !157
  store i32 958139571, i32* %82, align 4, !dbg !258, !tbaa !157
  %86 = getelementptr inbounds [137 x i32], [137 x i32]* %10, i32 0, i32 53, !dbg !259
  store i32 1322822218, i32* %86, align 4, !dbg !260, !tbaa !157
  %87 = getelementptr inbounds [137 x i32], [137 x i32]* %10, i32 0, i32 54, !dbg !261
  store i32 1537002063, i32* %87, align 4, !dbg !262, !tbaa !157
  %88 = getelementptr inbounds [137 x i32], [137 x i32]* %10, i32 0, i32 55, !dbg !263
  store i32 1747873779, i32* %88, align 4, !dbg !264, !tbaa !157
  call void @llvm.dbg.value(metadata i32* %81, metadata !143, metadata !DIExpression()), !dbg !147
  %89 = getelementptr inbounds [137 x i32], [137 x i32]* %10, i32 0, i32 60, !dbg !265
  call void @llvm.dbg.value(metadata i32* %89, metadata !144, metadata !DIExpression()), !dbg !147
  store i32 1955562222, i32* %81, align 4, !dbg !266, !tbaa !157
  %90 = getelementptr inbounds [137 x i32], [137 x i32]* %10, i32 0, i32 57, !dbg !267
  store i32 2024104815, i32* %90, align 4, !dbg !268, !tbaa !157
  %91 = getelementptr inbounds [137 x i32], [137 x i32]* %10, i32 0, i32 58, !dbg !269
  store i32 -2067236844, i32* %91, align 4, !dbg !270, !tbaa !157
  %92 = getelementptr inbounds [137 x i32], [137 x i32]* %10, i32 0, i32 59, !dbg !271
  store i32 -1933114872, i32* %92, align 4, !dbg !272, !tbaa !157
  store i32 -1866530822, i32* %89, align 4, !dbg !273, !tbaa !157
  %93 = getelementptr inbounds [137 x i32], [137 x i32]* %10, i32 0, i32 61, !dbg !274
  store i32 -1538233109, i32* %93, align 4, !dbg !275, !tbaa !157
  %94 = getelementptr inbounds [137 x i32], [137 x i32]* %10, i32 0, i32 62, !dbg !276
  store i32 -1090935817, i32* %94, align 4, !dbg !277, !tbaa !157
  %95 = getelementptr inbounds [137 x i32], [137 x i32]* %10, i32 0, i32 63, !dbg !278
  store i32 -965641998, i32* %95, align 4, !dbg !279, !tbaa !157
  call void @llvm.dbg.value(metadata i32* %32, metadata !145, metadata !DIExpression()), !dbg !147
  %96 = getelementptr inbounds [137 x i32], [137 x i32]* %10, i32 0, i32 132, !dbg !280
  call void @llvm.dbg.value(metadata i32* %96, metadata !146, metadata !DIExpression()), !dbg !147
  store i32 1779033703, i32* %32, align 4, !dbg !281, !tbaa !157
  %97 = getelementptr inbounds [137 x i32], [137 x i32]* %10, i32 0, i32 129, !dbg !282
  store i32 -1150833019, i32* %97, align 4, !dbg !283, !tbaa !157
  %98 = getelementptr inbounds [137 x i32], [137 x i32]* %10, i32 0, i32 130, !dbg !284
  store i32 1013904242, i32* %98, align 4, !dbg !285, !tbaa !157
  %99 = getelementptr inbounds [137 x i32], [137 x i32]* %10, i32 0, i32 131, !dbg !286
  store i32 -1521486534, i32* %99, align 4, !dbg !287, !tbaa !157
  store i32 1359893119, i32* %96, align 4, !dbg !288, !tbaa !157
  %100 = getelementptr inbounds [137 x i32], [137 x i32]* %10, i32 0, i32 133, !dbg !289
  store i32 -1694144372, i32* %100, align 4, !dbg !290, !tbaa !157
  %101 = getelementptr inbounds [137 x i32], [137 x i32]* %10, i32 0, i32 134, !dbg !291
  store i32 528734635, i32* %101, align 4, !dbg !292, !tbaa !157
  %102 = getelementptr inbounds [137 x i32], [137 x i32]* %10, i32 0, i32 135, !dbg !293
  store i32 1541459225, i32* %102, align 4, !dbg !294, !tbaa !157
  store i32 0, i32* %31, align 4, !dbg !295, !tbaa !157
  call fastcc void @Hacl_Impl_SHA2_256_update(i32* noundef nonnull %30, i8* noundef nonnull %12), !dbg !296
  call void @llvm.dbg.value(metadata i32* %30, metadata !297, metadata !DIExpression()) #6, !dbg !309
  call void @llvm.dbg.value(metadata i8* %2, metadata !302, metadata !DIExpression()) #6, !dbg !309
  call void @llvm.dbg.value(metadata i32 %26, metadata !303, metadata !DIExpression()) #6, !dbg !309
  call void @llvm.dbg.value(metadata i32 0, metadata !304, metadata !DIExpression()) #6, !dbg !311
  %103 = icmp ult i32 %3, 64, !dbg !312
  br i1 %103, label %110, label %104, !dbg !313

104:                                              ; preds = %24, %104
  %105 = phi i32 [ %108, %104 ], [ 0, %24 ]
  call void @llvm.dbg.value(metadata i32 %105, metadata !304, metadata !DIExpression()) #6, !dbg !311
  %106 = shl i32 %105, 6, !dbg !314
  %107 = getelementptr inbounds i8, i8* %2, i32 %106, !dbg !315
  call void @llvm.dbg.value(metadata i8* %107, metadata !306, metadata !DIExpression()) #6, !dbg !316
  call fastcc void @Hacl_Impl_SHA2_256_update(i32* noundef nonnull %30, i8* noundef %107) #6, !dbg !317
  %108 = add nuw nsw i32 %105, 1, !dbg !318
  call void @llvm.dbg.value(metadata i32 %108, metadata !304, metadata !DIExpression()) #6, !dbg !311
  %109 = icmp eq i32 %108, %26, !dbg !312
  br i1 %109, label %110, label %104, !dbg !313, !llvm.loop !319

110:                                              ; preds = %104, %24
  call void @llvm.dbg.value(metadata i32* %30, metadata !321, metadata !DIExpression()) #6, !dbg !338
  call void @llvm.dbg.value(metadata i8* %29, metadata !324, metadata !DIExpression()) #6, !dbg !338
  call void @llvm.dbg.value(metadata i32 %3, metadata !325, metadata !DIExpression(DW_OP_constu, 63, DW_OP_and, DW_OP_stack_value)) #6, !dbg !338
  %111 = getelementptr inbounds [128 x i8], [128 x i8]* %6, i32 0, i32 0, !dbg !340
  call void @llvm.lifetime.start.p0i8(i64 128, i8* nonnull %111) #6, !dbg !340
  call void @llvm.dbg.declare(metadata [128 x i8]* %6, metadata !326, metadata !DIExpression()) #6, !dbg !341
  call void @llvm.memset.p0i8.i32(i8* noundef nonnull align 1 dereferenceable(128) %111, i8 0, i32 128, i1 false) #6, !dbg !341
  %112 = icmp ult i32 %27, 56, !dbg !342
  %113 = select i1 %112, i32 1, i32 2
  call void @llvm.dbg.value(metadata i32 %113, metadata !330, metadata !DIExpression()) #6, !dbg !338
  %114 = getelementptr inbounds [128 x i8], [128 x i8]* %6, i32 0, i32 64, !dbg !344
  %115 = select i1 %112, i8* %114, i8* %111, !dbg !344
  call void @llvm.dbg.value(metadata i8* %115, metadata !331, metadata !DIExpression()) #6, !dbg !338
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* nonnull align 1 %115, i8* align 1 %29, i32 %27, i1 false) #6, !dbg !345
  %116 = load i32, i32* %31, align 4, !dbg !346, !tbaa !157
  call void @llvm.dbg.value(metadata i32 %116, metadata !332, metadata !DIExpression()) #6, !dbg !338
  %117 = getelementptr inbounds i8, i8* %115, i32 %27, !dbg !347
  call void @llvm.dbg.value(metadata i8* %117, metadata !333, metadata !DIExpression()) #6, !dbg !338
  %118 = sub i32 55, %3, !dbg !348
  %119 = and i32 %118, 63, !dbg !349
  call void @llvm.dbg.value(metadata i32 %119, metadata !334, metadata !DIExpression()) #6, !dbg !338
  call void @llvm.dbg.value(metadata i8* %117, metadata !335, metadata !DIExpression()) #6, !dbg !338
  %120 = getelementptr inbounds i8, i8* %117, i32 1, !dbg !350
  %121 = getelementptr inbounds i8, i8* %120, i32 %119, !dbg !351
  call void @llvm.dbg.value(metadata i8* %121, metadata !336, metadata !DIExpression()) #6, !dbg !338
  %122 = zext i32 %116 to i64, !dbg !352
  %123 = shl nuw nsw i64 %122, 9, !dbg !353
  %124 = shl nuw nsw i32 %27, 3, !dbg !353
  %125 = zext i32 %124 to i64, !dbg !353
  %126 = or i64 %123, %125, !dbg !353
  call void @llvm.dbg.value(metadata i64 %126, metadata !337, metadata !DIExpression()) #6, !dbg !338
  store i8 -128, i8* %117, align 1, !dbg !354, !tbaa !66
  call void @llvm.dbg.value(metadata i64 %126, metadata !355, metadata !DIExpression()) #6, !dbg !361
  %127 = call i64 @llvm.bswap.i64(i64 %126) #6, !dbg !363
  call void @llvm.dbg.value(metadata i8* %121, metadata !364, metadata !DIExpression()) #6, !dbg !371
  call void @llvm.dbg.value(metadata i64 %127, metadata !370, metadata !DIExpression()) #6, !dbg !371
  %128 = bitcast i8* %121 to i64*, !dbg !373
  store i64 %127, i64* %128, align 1, !dbg !373
  call void @llvm.dbg.value(metadata i32* %30, metadata !297, metadata !DIExpression()) #6, !dbg !374
  call void @llvm.dbg.value(metadata i8* %115, metadata !302, metadata !DIExpression()) #6, !dbg !374
  call void @llvm.dbg.value(metadata i32 %113, metadata !303, metadata !DIExpression()) #6, !dbg !374
  call void @llvm.dbg.value(metadata i32 0, metadata !304, metadata !DIExpression()) #6, !dbg !376
  br label %129

129:                                              ; preds = %129, %110
  %130 = phi i32 [ %133, %129 ], [ 0, %110 ]
  call void @llvm.dbg.value(metadata i32 %130, metadata !304, metadata !DIExpression()) #6, !dbg !376
  %131 = shl i32 %130, 6, !dbg !377
  %132 = getelementptr inbounds i8, i8* %115, i32 %131, !dbg !378
  call void @llvm.dbg.value(metadata i8* %132, metadata !306, metadata !DIExpression()) #6, !dbg !379
  call fastcc void @Hacl_Impl_SHA2_256_update(i32* noundef nonnull %30, i8* noundef nonnull %132) #6, !dbg !380
  %133 = add nuw i32 %130, 1, !dbg !381
  call void @llvm.dbg.value(metadata i32 %133, metadata !304, metadata !DIExpression()) #6, !dbg !376
  %134 = icmp eq i32 %133, %113, !dbg !382
  br i1 %134, label %135, label %129, !dbg !383, !llvm.loop !384

135:                                              ; preds = %129
  call void @llvm.lifetime.end.p0i8(i64 128, i8* nonnull %111) #6, !dbg !386
  call void @llvm.dbg.value(metadata i8* %12, metadata !57, metadata !DIExpression()), !dbg !60
  call void @llvm.dbg.value(metadata i32* %30, metadata !387, metadata !DIExpression()) #6, !dbg !394
  call void @llvm.dbg.value(metadata i8* %12, metadata !392, metadata !DIExpression()) #6, !dbg !394
  call void @llvm.dbg.value(metadata i32* %32, metadata !393, metadata !DIExpression()) #6, !dbg !394
  call void @llvm.dbg.value(metadata i8* %12, metadata !396, metadata !DIExpression()) #6, !dbg !409
  call void @llvm.dbg.value(metadata i32* %32, metadata !401, metadata !DIExpression()) #6, !dbg !409
  call void @llvm.dbg.value(metadata i32 8, metadata !402, metadata !DIExpression()) #6, !dbg !409
  call void @llvm.dbg.value(metadata i32 0, metadata !403, metadata !DIExpression()) #6, !dbg !411
  br label %136, !dbg !412

136:                                              ; preds = %136, %135
  %137 = phi i32 [ 0, %135 ], [ %144, %136 ]
  call void @llvm.dbg.value(metadata i32 %137, metadata !403, metadata !DIExpression()) #6, !dbg !411
  %138 = getelementptr inbounds i32, i32* %32, i32 %137, !dbg !413
  %139 = load i32, i32* %138, align 4, !dbg !413, !tbaa !157
  call void @llvm.dbg.value(metadata i32 %139, metadata !405, metadata !DIExpression()) #6, !dbg !414
  %140 = shl i32 %137, 2, !dbg !415
  %141 = getelementptr inbounds [64 x i8], [64 x i8]* %7, i32 0, i32 %140, !dbg !416
  call void @llvm.dbg.value(metadata i8* %141, metadata !408, metadata !DIExpression()) #6, !dbg !414
  call void @llvm.dbg.value(metadata i32 %139, metadata !417, metadata !DIExpression()) #6, !dbg !422
  %142 = call i32 @llvm.bswap.i32(i32 %139) #6, !dbg !424
  call void @llvm.dbg.value(metadata i8* %141, metadata !425, metadata !DIExpression()) #6, !dbg !431
  call void @llvm.dbg.value(metadata i32 %142, metadata !430, metadata !DIExpression()) #6, !dbg !431
  %143 = bitcast i8* %141 to i32*, !dbg !433
  store i32 %142, i32* %143, align 1, !dbg !433
  %144 = add nuw nsw i32 %137, 1, !dbg !434
  call void @llvm.dbg.value(metadata i32 %144, metadata !403, metadata !DIExpression()) #6, !dbg !411
  %145 = icmp eq i32 %144, 8, !dbg !435
  br i1 %145, label %146, label %136, !dbg !412, !llvm.loop !436

146:                                              ; preds = %136, %146
  %147 = phi i32 [ %153, %146 ], [ 0, %136 ]
  call void @llvm.dbg.value(metadata i32 %147, metadata !83, metadata !DIExpression()), !dbg !438
  %148 = getelementptr inbounds [64 x i8], [64 x i8]* %9, i32 0, i32 %147, !dbg !440
  %149 = load i8, i8* %148, align 1, !dbg !440, !tbaa !66
  call void @llvm.dbg.value(metadata i8 %149, metadata !84, metadata !DIExpression()), !dbg !441
  %150 = getelementptr inbounds i8, i8* %1, i32 %147, !dbg !442
  %151 = load i8, i8* %150, align 1, !dbg !442, !tbaa !66
  call void @llvm.dbg.value(metadata i8 %151, metadata !87, metadata !DIExpression()), !dbg !441
  %152 = xor i8 %151, %149, !dbg !443
  store i8 %152, i8* %148, align 1, !dbg !444, !tbaa !66
  %153 = add nuw nsw i32 %147, 1, !dbg !445
  call void @llvm.dbg.value(metadata i32 %153, metadata !83, metadata !DIExpression()), !dbg !438
  %154 = icmp eq i32 %153, 64, !dbg !446
  br i1 %154, label %155, label %146, !dbg !447, !llvm.loop !448

155:                                              ; preds = %146
  %156 = bitcast [137 x i32]* %11 to i8*, !dbg !450
  call void @llvm.lifetime.start.p0i8(i64 548, i8* nonnull %156) #6, !dbg !450
  call void @llvm.dbg.declare(metadata [137 x i32]* %11, metadata !59, metadata !DIExpression()), !dbg !451
  call void @llvm.memset.p0i8.i32(i8* noundef nonnull align 4 dereferenceable(548) %156, i8 0, i32 548, i1 false), !dbg !451
  %157 = getelementptr inbounds [137 x i32], [137 x i32]* %11, i32 0, i32 0, !dbg !452
  call void @llvm.dbg.value(metadata i32* %157, metadata !108, metadata !DIExpression()), !dbg !453
  %158 = getelementptr inbounds [137 x i32], [137 x i32]* %11, i32 0, i32 136, !dbg !455
  call void @llvm.dbg.value(metadata i32* %158, metadata !114, metadata !DIExpression()), !dbg !453
  call void @llvm.dbg.value(metadata i32* %157, metadata !115, metadata !DIExpression()), !dbg !453
  %159 = getelementptr inbounds [137 x i32], [137 x i32]* %11, i32 0, i32 128, !dbg !456
  call void @llvm.dbg.value(metadata i32* %159, metadata !116, metadata !DIExpression()), !dbg !453
  call void @llvm.dbg.value(metadata i32* %157, metadata !117, metadata !DIExpression()), !dbg !453
  %160 = getelementptr inbounds [137 x i32], [137 x i32]* %11, i32 0, i32 16, !dbg !457
  call void @llvm.dbg.value(metadata i32* %160, metadata !118, metadata !DIExpression()), !dbg !453
  %161 = getelementptr inbounds [137 x i32], [137 x i32]* %11, i32 0, i32 32, !dbg !458
  call void @llvm.dbg.value(metadata i32* %161, metadata !119, metadata !DIExpression()), !dbg !453
  %162 = getelementptr inbounds [137 x i32], [137 x i32]* %11, i32 0, i32 48, !dbg !459
  call void @llvm.dbg.value(metadata i32* %162, metadata !120, metadata !DIExpression()), !dbg !453
  call void @llvm.dbg.value(metadata i32* %157, metadata !121, metadata !DIExpression()), !dbg !453
  %163 = getelementptr inbounds [137 x i32], [137 x i32]* %11, i32 0, i32 8, !dbg !460
  call void @llvm.dbg.value(metadata i32* %163, metadata !122, metadata !DIExpression()), !dbg !453
  call void @llvm.dbg.value(metadata i32* %157, metadata !123, metadata !DIExpression()), !dbg !453
  %164 = getelementptr inbounds [137 x i32], [137 x i32]* %11, i32 0, i32 4, !dbg !461
  call void @llvm.dbg.value(metadata i32* %164, metadata !124, metadata !DIExpression()), !dbg !453
  store i32 1116352408, i32* %157, align 4, !dbg !462, !tbaa !157
  %165 = getelementptr inbounds [137 x i32], [137 x i32]* %11, i32 0, i32 1, !dbg !463
  store i32 1899447441, i32* %165, align 4, !dbg !464, !tbaa !157
  %166 = getelementptr inbounds [137 x i32], [137 x i32]* %11, i32 0, i32 2, !dbg !465
  store i32 -1245643825, i32* %166, align 4, !dbg !466, !tbaa !157
  %167 = getelementptr inbounds [137 x i32], [137 x i32]* %11, i32 0, i32 3, !dbg !467
  store i32 -373957723, i32* %167, align 4, !dbg !468, !tbaa !157
  store i32 961987163, i32* %164, align 4, !dbg !469, !tbaa !157
  %168 = getelementptr inbounds [137 x i32], [137 x i32]* %11, i32 0, i32 5, !dbg !470
  store i32 1508970993, i32* %168, align 4, !dbg !471, !tbaa !157
  %169 = getelementptr inbounds [137 x i32], [137 x i32]* %11, i32 0, i32 6, !dbg !472
  store i32 -1841331548, i32* %169, align 4, !dbg !473, !tbaa !157
  %170 = getelementptr inbounds [137 x i32], [137 x i32]* %11, i32 0, i32 7, !dbg !474
  store i32 -1424204075, i32* %170, align 4, !dbg !475, !tbaa !157
  call void @llvm.dbg.value(metadata i32* %163, metadata !125, metadata !DIExpression()), !dbg !453
  %171 = getelementptr inbounds [137 x i32], [137 x i32]* %11, i32 0, i32 12, !dbg !476
  call void @llvm.dbg.value(metadata i32* %171, metadata !126, metadata !DIExpression()), !dbg !453
  store i32 -670586216, i32* %163, align 4, !dbg !477, !tbaa !157
  %172 = getelementptr inbounds [137 x i32], [137 x i32]* %11, i32 0, i32 9, !dbg !478
  store i32 310598401, i32* %172, align 4, !dbg !479, !tbaa !157
  %173 = getelementptr inbounds [137 x i32], [137 x i32]* %11, i32 0, i32 10, !dbg !480
  store i32 607225278, i32* %173, align 4, !dbg !481, !tbaa !157
  %174 = getelementptr inbounds [137 x i32], [137 x i32]* %11, i32 0, i32 11, !dbg !482
  store i32 1426881987, i32* %174, align 4, !dbg !483, !tbaa !157
  store i32 1925078388, i32* %171, align 4, !dbg !484, !tbaa !157
  %175 = getelementptr inbounds [137 x i32], [137 x i32]* %11, i32 0, i32 13, !dbg !485
  store i32 -2132889090, i32* %175, align 4, !dbg !486, !tbaa !157
  %176 = getelementptr inbounds [137 x i32], [137 x i32]* %11, i32 0, i32 14, !dbg !487
  store i32 -1680079193, i32* %176, align 4, !dbg !488, !tbaa !157
  %177 = getelementptr inbounds [137 x i32], [137 x i32]* %11, i32 0, i32 15, !dbg !489
  store i32 -1046744716, i32* %177, align 4, !dbg !490, !tbaa !157
  call void @llvm.dbg.value(metadata i32* %160, metadata !127, metadata !DIExpression()), !dbg !453
  %178 = getelementptr inbounds [137 x i32], [137 x i32]* %11, i32 0, i32 24, !dbg !491
  call void @llvm.dbg.value(metadata i32* %178, metadata !128, metadata !DIExpression()), !dbg !453
  call void @llvm.dbg.value(metadata i32* %160, metadata !129, metadata !DIExpression()), !dbg !453
  %179 = getelementptr inbounds [137 x i32], [137 x i32]* %11, i32 0, i32 20, !dbg !492
  call void @llvm.dbg.value(metadata i32* %179, metadata !130, metadata !DIExpression()), !dbg !453
  store i32 -459576895, i32* %160, align 4, !dbg !493, !tbaa !157
  %180 = getelementptr inbounds [137 x i32], [137 x i32]* %11, i32 0, i32 17, !dbg !494
  store i32 -272742522, i32* %180, align 4, !dbg !495, !tbaa !157
  %181 = getelementptr inbounds [137 x i32], [137 x i32]* %11, i32 0, i32 18, !dbg !496
  store i32 264347078, i32* %181, align 4, !dbg !497, !tbaa !157
  %182 = getelementptr inbounds [137 x i32], [137 x i32]* %11, i32 0, i32 19, !dbg !498
  store i32 604807628, i32* %182, align 4, !dbg !499, !tbaa !157
  store i32 770255983, i32* %179, align 4, !dbg !500, !tbaa !157
  %183 = getelementptr inbounds [137 x i32], [137 x i32]* %11, i32 0, i32 21, !dbg !501
  store i32 1249150122, i32* %183, align 4, !dbg !502, !tbaa !157
  %184 = getelementptr inbounds [137 x i32], [137 x i32]* %11, i32 0, i32 22, !dbg !503
  store i32 1555081692, i32* %184, align 4, !dbg !504, !tbaa !157
  %185 = getelementptr inbounds [137 x i32], [137 x i32]* %11, i32 0, i32 23, !dbg !505
  store i32 1996064986, i32* %185, align 4, !dbg !506, !tbaa !157
  call void @llvm.dbg.value(metadata i32* %178, metadata !131, metadata !DIExpression()), !dbg !453
  %186 = getelementptr inbounds [137 x i32], [137 x i32]* %11, i32 0, i32 28, !dbg !507
  call void @llvm.dbg.value(metadata i32* %186, metadata !132, metadata !DIExpression()), !dbg !453
  store i32 -1740746414, i32* %178, align 4, !dbg !508, !tbaa !157
  %187 = getelementptr inbounds [137 x i32], [137 x i32]* %11, i32 0, i32 25, !dbg !509
  store i32 -1473132947, i32* %187, align 4, !dbg !510, !tbaa !157
  %188 = getelementptr inbounds [137 x i32], [137 x i32]* %11, i32 0, i32 26, !dbg !511
  store i32 -1341970488, i32* %188, align 4, !dbg !512, !tbaa !157
  %189 = getelementptr inbounds [137 x i32], [137 x i32]* %11, i32 0, i32 27, !dbg !513
  store i32 -1084653625, i32* %189, align 4, !dbg !514, !tbaa !157
  store i32 -958395405, i32* %186, align 4, !dbg !515, !tbaa !157
  %190 = getelementptr inbounds [137 x i32], [137 x i32]* %11, i32 0, i32 29, !dbg !516
  store i32 -710438585, i32* %190, align 4, !dbg !517, !tbaa !157
  %191 = getelementptr inbounds [137 x i32], [137 x i32]* %11, i32 0, i32 30, !dbg !518
  store i32 113926993, i32* %191, align 4, !dbg !519, !tbaa !157
  %192 = getelementptr inbounds [137 x i32], [137 x i32]* %11, i32 0, i32 31, !dbg !520
  store i32 338241895, i32* %192, align 4, !dbg !521, !tbaa !157
  call void @llvm.dbg.value(metadata i32* %161, metadata !133, metadata !DIExpression()), !dbg !453
  %193 = getelementptr inbounds [137 x i32], [137 x i32]* %11, i32 0, i32 40, !dbg !522
  call void @llvm.dbg.value(metadata i32* %193, metadata !134, metadata !DIExpression()), !dbg !453
  call void @llvm.dbg.value(metadata i32* %161, metadata !135, metadata !DIExpression()), !dbg !453
  %194 = getelementptr inbounds [137 x i32], [137 x i32]* %11, i32 0, i32 36, !dbg !523
  call void @llvm.dbg.value(metadata i32* %194, metadata !136, metadata !DIExpression()), !dbg !453
  store i32 666307205, i32* %161, align 4, !dbg !524, !tbaa !157
  %195 = getelementptr inbounds [137 x i32], [137 x i32]* %11, i32 0, i32 33, !dbg !525
  store i32 773529912, i32* %195, align 4, !dbg !526, !tbaa !157
  %196 = getelementptr inbounds [137 x i32], [137 x i32]* %11, i32 0, i32 34, !dbg !527
  store i32 1294757372, i32* %196, align 4, !dbg !528, !tbaa !157
  %197 = getelementptr inbounds [137 x i32], [137 x i32]* %11, i32 0, i32 35, !dbg !529
  store i32 1396182291, i32* %197, align 4, !dbg !530, !tbaa !157
  store i32 1695183700, i32* %194, align 4, !dbg !531, !tbaa !157
  %198 = getelementptr inbounds [137 x i32], [137 x i32]* %11, i32 0, i32 37, !dbg !532
  store i32 1986661051, i32* %198, align 4, !dbg !533, !tbaa !157
  %199 = getelementptr inbounds [137 x i32], [137 x i32]* %11, i32 0, i32 38, !dbg !534
  store i32 -2117940946, i32* %199, align 4, !dbg !535, !tbaa !157
  %200 = getelementptr inbounds [137 x i32], [137 x i32]* %11, i32 0, i32 39, !dbg !536
  store i32 -1838011259, i32* %200, align 4, !dbg !537, !tbaa !157
  call void @llvm.dbg.value(metadata i32* %193, metadata !137, metadata !DIExpression()), !dbg !453
  %201 = getelementptr inbounds [137 x i32], [137 x i32]* %11, i32 0, i32 44, !dbg !538
  call void @llvm.dbg.value(metadata i32* %201, metadata !138, metadata !DIExpression()), !dbg !453
  store i32 -1564481375, i32* %193, align 4, !dbg !539, !tbaa !157
  %202 = getelementptr inbounds [137 x i32], [137 x i32]* %11, i32 0, i32 41, !dbg !540
  store i32 -1474664885, i32* %202, align 4, !dbg !541, !tbaa !157
  %203 = getelementptr inbounds [137 x i32], [137 x i32]* %11, i32 0, i32 42, !dbg !542
  store i32 -1035236496, i32* %203, align 4, !dbg !543, !tbaa !157
  %204 = getelementptr inbounds [137 x i32], [137 x i32]* %11, i32 0, i32 43, !dbg !544
  store i32 -949202525, i32* %204, align 4, !dbg !545, !tbaa !157
  store i32 -778901479, i32* %201, align 4, !dbg !546, !tbaa !157
  %205 = getelementptr inbounds [137 x i32], [137 x i32]* %11, i32 0, i32 45, !dbg !547
  store i32 -694614492, i32* %205, align 4, !dbg !548, !tbaa !157
  %206 = getelementptr inbounds [137 x i32], [137 x i32]* %11, i32 0, i32 46, !dbg !549
  store i32 -200395387, i32* %206, align 4, !dbg !550, !tbaa !157
  %207 = getelementptr inbounds [137 x i32], [137 x i32]* %11, i32 0, i32 47, !dbg !551
  store i32 275423344, i32* %207, align 4, !dbg !552, !tbaa !157
  call void @llvm.dbg.value(metadata i32* %162, metadata !139, metadata !DIExpression()), !dbg !453
  %208 = getelementptr inbounds [137 x i32], [137 x i32]* %11, i32 0, i32 56, !dbg !553
  call void @llvm.dbg.value(metadata i32* %208, metadata !140, metadata !DIExpression()), !dbg !453
  call void @llvm.dbg.value(metadata i32* %162, metadata !141, metadata !DIExpression()), !dbg !453
  %209 = getelementptr inbounds [137 x i32], [137 x i32]* %11, i32 0, i32 52, !dbg !554
  call void @llvm.dbg.value(metadata i32* %209, metadata !142, metadata !DIExpression()), !dbg !453
  store i32 430227734, i32* %162, align 4, !dbg !555, !tbaa !157
  %210 = getelementptr inbounds [137 x i32], [137 x i32]* %11, i32 0, i32 49, !dbg !556
  store i32 506948616, i32* %210, align 4, !dbg !557, !tbaa !157
  %211 = getelementptr inbounds [137 x i32], [137 x i32]* %11, i32 0, i32 50, !dbg !558
  store i32 659060556, i32* %211, align 4, !dbg !559, !tbaa !157
  %212 = getelementptr inbounds [137 x i32], [137 x i32]* %11, i32 0, i32 51, !dbg !560
  store i32 883997877, i32* %212, align 4, !dbg !561, !tbaa !157
  store i32 958139571, i32* %209, align 4, !dbg !562, !tbaa !157
  %213 = getelementptr inbounds [137 x i32], [137 x i32]* %11, i32 0, i32 53, !dbg !563
  store i32 1322822218, i32* %213, align 4, !dbg !564, !tbaa !157
  %214 = getelementptr inbounds [137 x i32], [137 x i32]* %11, i32 0, i32 54, !dbg !565
  store i32 1537002063, i32* %214, align 4, !dbg !566, !tbaa !157
  %215 = getelementptr inbounds [137 x i32], [137 x i32]* %11, i32 0, i32 55, !dbg !567
  store i32 1747873779, i32* %215, align 4, !dbg !568, !tbaa !157
  call void @llvm.dbg.value(metadata i32* %208, metadata !143, metadata !DIExpression()), !dbg !453
  %216 = getelementptr inbounds [137 x i32], [137 x i32]* %11, i32 0, i32 60, !dbg !569
  call void @llvm.dbg.value(metadata i32* %216, metadata !144, metadata !DIExpression()), !dbg !453
  store i32 1955562222, i32* %208, align 4, !dbg !570, !tbaa !157
  %217 = getelementptr inbounds [137 x i32], [137 x i32]* %11, i32 0, i32 57, !dbg !571
  store i32 2024104815, i32* %217, align 4, !dbg !572, !tbaa !157
  %218 = getelementptr inbounds [137 x i32], [137 x i32]* %11, i32 0, i32 58, !dbg !573
  store i32 -2067236844, i32* %218, align 4, !dbg !574, !tbaa !157
  %219 = getelementptr inbounds [137 x i32], [137 x i32]* %11, i32 0, i32 59, !dbg !575
  store i32 -1933114872, i32* %219, align 4, !dbg !576, !tbaa !157
  store i32 -1866530822, i32* %216, align 4, !dbg !577, !tbaa !157
  %220 = getelementptr inbounds [137 x i32], [137 x i32]* %11, i32 0, i32 61, !dbg !578
  store i32 -1538233109, i32* %220, align 4, !dbg !579, !tbaa !157
  %221 = getelementptr inbounds [137 x i32], [137 x i32]* %11, i32 0, i32 62, !dbg !580
  store i32 -1090935817, i32* %221, align 4, !dbg !581, !tbaa !157
  %222 = getelementptr inbounds [137 x i32], [137 x i32]* %11, i32 0, i32 63, !dbg !582
  store i32 -965641998, i32* %222, align 4, !dbg !583, !tbaa !157
  call void @llvm.dbg.value(metadata i32* %159, metadata !145, metadata !DIExpression()), !dbg !453
  %223 = getelementptr inbounds [137 x i32], [137 x i32]* %11, i32 0, i32 132, !dbg !584
  call void @llvm.dbg.value(metadata i32* %223, metadata !146, metadata !DIExpression()), !dbg !453
  store i32 1779033703, i32* %159, align 4, !dbg !585, !tbaa !157
  %224 = getelementptr inbounds [137 x i32], [137 x i32]* %11, i32 0, i32 129, !dbg !586
  store i32 -1150833019, i32* %224, align 4, !dbg !587, !tbaa !157
  %225 = getelementptr inbounds [137 x i32], [137 x i32]* %11, i32 0, i32 130, !dbg !588
  store i32 1013904242, i32* %225, align 4, !dbg !589, !tbaa !157
  %226 = getelementptr inbounds [137 x i32], [137 x i32]* %11, i32 0, i32 131, !dbg !590
  store i32 -1521486534, i32* %226, align 4, !dbg !591, !tbaa !157
  store i32 1359893119, i32* %223, align 4, !dbg !592, !tbaa !157
  %227 = getelementptr inbounds [137 x i32], [137 x i32]* %11, i32 0, i32 133, !dbg !593
  store i32 -1694144372, i32* %227, align 4, !dbg !594, !tbaa !157
  %228 = getelementptr inbounds [137 x i32], [137 x i32]* %11, i32 0, i32 134, !dbg !595
  store i32 528734635, i32* %228, align 4, !dbg !596, !tbaa !157
  %229 = getelementptr inbounds [137 x i32], [137 x i32]* %11, i32 0, i32 135, !dbg !597
  store i32 1541459225, i32* %229, align 4, !dbg !598, !tbaa !157
  store i32 0, i32* %158, align 4, !dbg !599, !tbaa !157
  call fastcc void @Hacl_Impl_SHA2_256_update(i32* noundef nonnull %157, i8* noundef nonnull %14), !dbg !600
  call void @llvm.dbg.value(metadata i32* %157, metadata !321, metadata !DIExpression()) #6, !dbg !601
  call void @llvm.dbg.value(metadata i8* %12, metadata !324, metadata !DIExpression()) #6, !dbg !601
  call void @llvm.dbg.value(metadata i32 32, metadata !325, metadata !DIExpression()) #6, !dbg !601
  %230 = getelementptr inbounds [128 x i8], [128 x i8]* %5, i32 0, i32 0, !dbg !603
  call void @llvm.lifetime.start.p0i8(i64 128, i8* nonnull %230) #6, !dbg !603
  call void @llvm.dbg.declare(metadata [128 x i8]* %5, metadata !326, metadata !DIExpression()) #6, !dbg !604
  call void @llvm.memset.p0i8.i32(i8* noundef nonnull align 1 dereferenceable(128) %230, i8 0, i32 128, i1 false) #6, !dbg !604
  call void @llvm.dbg.value(metadata i32 1, metadata !330, metadata !DIExpression()) #6, !dbg !601
  %231 = getelementptr inbounds [128 x i8], [128 x i8]* %5, i32 0, i32 64, !dbg !605
  call void @llvm.dbg.value(metadata i8* %231, metadata !331, metadata !DIExpression()) #6, !dbg !601
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* noundef nonnull align 1 dereferenceable(32) %231, i8* noundef nonnull align 1 dereferenceable(32) %12, i32 32, i1 false) #6, !dbg !606
  %232 = load i32, i32* %158, align 4, !dbg !607, !tbaa !157
  call void @llvm.dbg.value(metadata i32 %232, metadata !332, metadata !DIExpression()) #6, !dbg !601
  %233 = getelementptr inbounds [128 x i8], [128 x i8]* %5, i32 0, i32 96, !dbg !608
  call void @llvm.dbg.value(metadata i8* %233, metadata !333, metadata !DIExpression()) #6, !dbg !601
  call void @llvm.dbg.value(metadata i32 23, metadata !334, metadata !DIExpression()) #6, !dbg !601
  call void @llvm.dbg.value(metadata i8* %233, metadata !335, metadata !DIExpression()) #6, !dbg !601
  %234 = getelementptr inbounds [128 x i8], [128 x i8]* %5, i32 0, i32 120, !dbg !609
  call void @llvm.dbg.value(metadata i8* %234, metadata !336, metadata !DIExpression()) #6, !dbg !601
  %235 = zext i32 %232 to i64, !dbg !610
  %236 = shl nuw nsw i64 %235, 9, !dbg !611
  %237 = or i64 %236, 256, !dbg !612
  call void @llvm.dbg.value(metadata i64 %237, metadata !337, metadata !DIExpression()) #6, !dbg !601
  store i8 -128, i8* %233, align 1, !dbg !613, !tbaa !66
  call void @llvm.dbg.value(metadata i64 %237, metadata !355, metadata !DIExpression()) #6, !dbg !614
  %238 = call i64 @llvm.bswap.i64(i64 %237) #6, !dbg !616
  call void @llvm.dbg.value(metadata i8* %234, metadata !364, metadata !DIExpression()) #6, !dbg !617
  call void @llvm.dbg.value(metadata i64 %238, metadata !370, metadata !DIExpression()) #6, !dbg !617
  %239 = bitcast i8* %234 to i64*, !dbg !619
  store i64 %238, i64* %239, align 1, !dbg !619
  call void @llvm.dbg.value(metadata i32* %157, metadata !297, metadata !DIExpression()) #6, !dbg !620
  call void @llvm.dbg.value(metadata i8* %231, metadata !302, metadata !DIExpression()) #6, !dbg !620
  call void @llvm.dbg.value(metadata i32 1, metadata !303, metadata !DIExpression()) #6, !dbg !620
  call void @llvm.dbg.value(metadata i32 0, metadata !304, metadata !DIExpression()) #6, !dbg !622
  call void @llvm.dbg.value(metadata i32 0, metadata !304, metadata !DIExpression()) #6, !dbg !622
  call void @llvm.dbg.value(metadata i8* %231, metadata !306, metadata !DIExpression()) #6, !dbg !623
  call fastcc void @Hacl_Impl_SHA2_256_update(i32* noundef nonnull %157, i8* noundef nonnull %231) #6, !dbg !624
  call void @llvm.dbg.value(metadata i32 1, metadata !304, metadata !DIExpression()) #6, !dbg !622
  call void @llvm.lifetime.end.p0i8(i64 128, i8* nonnull %230) #6, !dbg !625
  call void @llvm.dbg.value(metadata i32* %157, metadata !387, metadata !DIExpression()) #6, !dbg !626
  call void @llvm.dbg.value(metadata i8* %0, metadata !392, metadata !DIExpression()) #6, !dbg !626
  call void @llvm.dbg.value(metadata i32* %159, metadata !393, metadata !DIExpression()) #6, !dbg !626
  call void @llvm.dbg.value(metadata i8* %0, metadata !396, metadata !DIExpression()) #6, !dbg !628
  call void @llvm.dbg.value(metadata i32* %159, metadata !401, metadata !DIExpression()) #6, !dbg !628
  call void @llvm.dbg.value(metadata i32 8, metadata !402, metadata !DIExpression()) #6, !dbg !628
  call void @llvm.dbg.value(metadata i32 0, metadata !403, metadata !DIExpression()) #6, !dbg !630
  br label %240, !dbg !631

240:                                              ; preds = %240, %155
  %241 = phi i32 [ 0, %155 ], [ %248, %240 ]
  call void @llvm.dbg.value(metadata i32 %241, metadata !403, metadata !DIExpression()) #6, !dbg !630
  %242 = getelementptr inbounds i32, i32* %159, i32 %241, !dbg !632
  %243 = load i32, i32* %242, align 4, !dbg !632, !tbaa !157
  call void @llvm.dbg.value(metadata i32 %243, metadata !405, metadata !DIExpression()) #6, !dbg !633
  %244 = shl i32 %241, 2, !dbg !634
  %245 = getelementptr inbounds i8, i8* %0, i32 %244, !dbg !635
  call void @llvm.dbg.value(metadata i8* %245, metadata !408, metadata !DIExpression()) #6, !dbg !633
  call void @llvm.dbg.value(metadata i32 %243, metadata !417, metadata !DIExpression()) #6, !dbg !636
  %246 = call i32 @llvm.bswap.i32(i32 %243) #6, !dbg !638
  call void @llvm.dbg.value(metadata i8* %245, metadata !425, metadata !DIExpression()) #6, !dbg !639
  call void @llvm.dbg.value(metadata i32 %246, metadata !430, metadata !DIExpression()) #6, !dbg !639
  %247 = bitcast i8* %245 to i32*, !dbg !641
  store i32 %246, i32* %247, align 1, !dbg !641
  %248 = add nuw nsw i32 %241, 1, !dbg !642
  call void @llvm.dbg.value(metadata i32 %248, metadata !403, metadata !DIExpression()) #6, !dbg !630
  %249 = icmp eq i32 %248, 8, !dbg !643
  br i1 %249, label %250, label %240, !dbg !631, !llvm.loop !644

250:                                              ; preds = %240
  call void @llvm.lifetime.end.p0i8(i64 548, i8* nonnull %156) #6, !dbg !646
  call void @llvm.lifetime.end.p0i8(i64 548, i8* nonnull %25) #6, !dbg !646
  call void @llvm.lifetime.end.p0i8(i64 64, i8* nonnull %14) #6, !dbg !646
  call void @llvm.lifetime.end.p0i8(i64 64, i8* nonnull %12) #6, !dbg !646
  ret void, !dbg !646
}

; Function Attrs: nofree nosync nounwind uwtable
define dso_local void @Hacl_HMAC_SHA2_256_hmac(i8* nocapture noundef writeonly %0, i8* nocapture noundef readonly %1, i32 noundef %2, i8* nocapture noundef readonly %3, i32 noundef %4) local_unnamed_addr #0 !dbg !647 {
  %6 = alloca [128 x i8], align 1
  %7 = alloca [137 x i32], align 4
  %8 = alloca [64 x i8], align 1
  call void @llvm.dbg.value(metadata i8* %0, metadata !651, metadata !DIExpression()), !dbg !656
  call void @llvm.dbg.value(metadata i8* %1, metadata !652, metadata !DIExpression()), !dbg !656
  call void @llvm.dbg.value(metadata i32 %2, metadata !653, metadata !DIExpression()), !dbg !656
  call void @llvm.dbg.value(metadata i8* %3, metadata !654, metadata !DIExpression()), !dbg !656
  call void @llvm.dbg.value(metadata i32 %4, metadata !655, metadata !DIExpression()), !dbg !656
  %9 = getelementptr inbounds [64 x i8], [64 x i8]* %8, i32 0, i32 0, !dbg !657
  call void @llvm.dbg.value(metadata i8* %0, metadata !660, metadata !DIExpression()) #6, !dbg !657
  call void @llvm.dbg.value(metadata i8* %1, metadata !661, metadata !DIExpression()) #6, !dbg !657
  call void @llvm.dbg.value(metadata i32 %2, metadata !662, metadata !DIExpression()) #6, !dbg !657
  call void @llvm.dbg.value(metadata i8* %3, metadata !663, metadata !DIExpression()) #6, !dbg !657
  call void @llvm.dbg.value(metadata i32 %4, metadata !664, metadata !DIExpression()) #6, !dbg !657
  call void @llvm.lifetime.start.p0i8(i64 64, i8* nonnull %9) #6, !dbg !672
  call void @llvm.dbg.declare(metadata [64 x i8]* %8, metadata !665, metadata !DIExpression()) #6, !dbg !673
  call void @llvm.dbg.value(metadata i32 0, metadata !666, metadata !DIExpression()) #6, !dbg !674
  call void @llvm.memset.p0i8.i32(i8* noundef nonnull align 1 dereferenceable(64) %9, i8 0, i32 64, i1 false) #6, !dbg !675, !tbaa !66
  call void @llvm.dbg.value(metadata i32 undef, metadata !666, metadata !DIExpression()) #6, !dbg !674
  call void @llvm.dbg.value(metadata i32 undef, metadata !666, metadata !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value)) #6, !dbg !674
  %10 = icmp ult i32 %2, 65, !dbg !677
  br i1 %10, label %11, label %12, !dbg !678

11:                                               ; preds = %5
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* nonnull align 1 %9, i8* align 1 %1, i32 %2, i1 false) #6, !dbg !679
  br label %134, !dbg !679

12:                                               ; preds = %5
  call void @llvm.dbg.value(metadata i8* %9, metadata !668, metadata !DIExpression()) #6, !dbg !680
  call void @llvm.dbg.value(metadata i8* %9, metadata !681, metadata !DIExpression()) #6, !dbg !691
  call void @llvm.dbg.value(metadata i8* %1, metadata !684, metadata !DIExpression()) #6, !dbg !691
  call void @llvm.dbg.value(metadata i32 %2, metadata !685, metadata !DIExpression()) #6, !dbg !691
  %13 = bitcast [137 x i32]* %7 to i8*, !dbg !693
  call void @llvm.lifetime.start.p0i8(i64 548, i8* nonnull %13) #6, !dbg !693
  call void @llvm.dbg.declare(metadata [137 x i32]* %7, metadata !686, metadata !DIExpression()) #6, !dbg !694
  call void @llvm.memset.p0i8.i32(i8* noundef nonnull align 4 dereferenceable(548) %13, i8 0, i32 548, i1 false) #6, !dbg !694
  %14 = lshr i32 %2, 6, !dbg !695
  call void @llvm.dbg.value(metadata i32 %14, metadata !687, metadata !DIExpression()) #6, !dbg !691
  call void @llvm.dbg.value(metadata i32 %2, metadata !688, metadata !DIExpression(DW_OP_constu, 63, DW_OP_and, DW_OP_stack_value)) #6, !dbg !691
  call void @llvm.dbg.value(metadata i8* %1, metadata !689, metadata !DIExpression()) #6, !dbg !691
  %15 = getelementptr inbounds [137 x i32], [137 x i32]* %7, i32 0, i32 0, !dbg !696
  call void @llvm.dbg.value(metadata i32* %15, metadata !108, metadata !DIExpression()) #6, !dbg !697
  %16 = getelementptr inbounds [137 x i32], [137 x i32]* %7, i32 0, i32 136, !dbg !699
  call void @llvm.dbg.value(metadata i32* %16, metadata !114, metadata !DIExpression()) #6, !dbg !697
  call void @llvm.dbg.value(metadata i32* %15, metadata !115, metadata !DIExpression()) #6, !dbg !697
  %17 = getelementptr inbounds [137 x i32], [137 x i32]* %7, i32 0, i32 128, !dbg !700
  call void @llvm.dbg.value(metadata i32* %17, metadata !116, metadata !DIExpression()) #6, !dbg !697
  call void @llvm.dbg.value(metadata i32* %15, metadata !117, metadata !DIExpression()) #6, !dbg !697
  %18 = getelementptr inbounds [137 x i32], [137 x i32]* %7, i32 0, i32 16, !dbg !701
  call void @llvm.dbg.value(metadata i32* %18, metadata !118, metadata !DIExpression()) #6, !dbg !697
  %19 = getelementptr inbounds [137 x i32], [137 x i32]* %7, i32 0, i32 32, !dbg !702
  call void @llvm.dbg.value(metadata i32* %19, metadata !119, metadata !DIExpression()) #6, !dbg !697
  %20 = getelementptr inbounds [137 x i32], [137 x i32]* %7, i32 0, i32 48, !dbg !703
  call void @llvm.dbg.value(metadata i32* %20, metadata !120, metadata !DIExpression()) #6, !dbg !697
  call void @llvm.dbg.value(metadata i32* %15, metadata !121, metadata !DIExpression()) #6, !dbg !697
  %21 = getelementptr inbounds [137 x i32], [137 x i32]* %7, i32 0, i32 8, !dbg !704
  call void @llvm.dbg.value(metadata i32* %21, metadata !122, metadata !DIExpression()) #6, !dbg !697
  call void @llvm.dbg.value(metadata i32* %15, metadata !123, metadata !DIExpression()) #6, !dbg !697
  %22 = getelementptr inbounds [137 x i32], [137 x i32]* %7, i32 0, i32 4, !dbg !705
  call void @llvm.dbg.value(metadata i32* %22, metadata !124, metadata !DIExpression()) #6, !dbg !697
  store i32 1116352408, i32* %15, align 4, !dbg !706, !tbaa !157
  %23 = getelementptr inbounds [137 x i32], [137 x i32]* %7, i32 0, i32 1, !dbg !707
  store i32 1899447441, i32* %23, align 4, !dbg !708, !tbaa !157
  %24 = getelementptr inbounds [137 x i32], [137 x i32]* %7, i32 0, i32 2, !dbg !709
  store i32 -1245643825, i32* %24, align 4, !dbg !710, !tbaa !157
  %25 = getelementptr inbounds [137 x i32], [137 x i32]* %7, i32 0, i32 3, !dbg !711
  store i32 -373957723, i32* %25, align 4, !dbg !712, !tbaa !157
  store i32 961987163, i32* %22, align 4, !dbg !713, !tbaa !157
  %26 = getelementptr inbounds [137 x i32], [137 x i32]* %7, i32 0, i32 5, !dbg !714
  store i32 1508970993, i32* %26, align 4, !dbg !715, !tbaa !157
  %27 = getelementptr inbounds [137 x i32], [137 x i32]* %7, i32 0, i32 6, !dbg !716
  store i32 -1841331548, i32* %27, align 4, !dbg !717, !tbaa !157
  %28 = getelementptr inbounds [137 x i32], [137 x i32]* %7, i32 0, i32 7, !dbg !718
  store i32 -1424204075, i32* %28, align 4, !dbg !719, !tbaa !157
  call void @llvm.dbg.value(metadata i32* %21, metadata !125, metadata !DIExpression()) #6, !dbg !697
  %29 = getelementptr inbounds [137 x i32], [137 x i32]* %7, i32 0, i32 12, !dbg !720
  call void @llvm.dbg.value(metadata i32* %29, metadata !126, metadata !DIExpression()) #6, !dbg !697
  store i32 -670586216, i32* %21, align 4, !dbg !721, !tbaa !157
  %30 = getelementptr inbounds [137 x i32], [137 x i32]* %7, i32 0, i32 9, !dbg !722
  store i32 310598401, i32* %30, align 4, !dbg !723, !tbaa !157
  %31 = getelementptr inbounds [137 x i32], [137 x i32]* %7, i32 0, i32 10, !dbg !724
  store i32 607225278, i32* %31, align 4, !dbg !725, !tbaa !157
  %32 = getelementptr inbounds [137 x i32], [137 x i32]* %7, i32 0, i32 11, !dbg !726
  store i32 1426881987, i32* %32, align 4, !dbg !727, !tbaa !157
  store i32 1925078388, i32* %29, align 4, !dbg !728, !tbaa !157
  %33 = getelementptr inbounds [137 x i32], [137 x i32]* %7, i32 0, i32 13, !dbg !729
  store i32 -2132889090, i32* %33, align 4, !dbg !730, !tbaa !157
  %34 = getelementptr inbounds [137 x i32], [137 x i32]* %7, i32 0, i32 14, !dbg !731
  store i32 -1680079193, i32* %34, align 4, !dbg !732, !tbaa !157
  %35 = getelementptr inbounds [137 x i32], [137 x i32]* %7, i32 0, i32 15, !dbg !733
  store i32 -1046744716, i32* %35, align 4, !dbg !734, !tbaa !157
  call void @llvm.dbg.value(metadata i32* %18, metadata !127, metadata !DIExpression()) #6, !dbg !697
  %36 = getelementptr inbounds [137 x i32], [137 x i32]* %7, i32 0, i32 24, !dbg !735
  call void @llvm.dbg.value(metadata i32* %36, metadata !128, metadata !DIExpression()) #6, !dbg !697
  call void @llvm.dbg.value(metadata i32* %18, metadata !129, metadata !DIExpression()) #6, !dbg !697
  %37 = getelementptr inbounds [137 x i32], [137 x i32]* %7, i32 0, i32 20, !dbg !736
  call void @llvm.dbg.value(metadata i32* %37, metadata !130, metadata !DIExpression()) #6, !dbg !697
  store i32 -459576895, i32* %18, align 4, !dbg !737, !tbaa !157
  %38 = getelementptr inbounds [137 x i32], [137 x i32]* %7, i32 0, i32 17, !dbg !738
  store i32 -272742522, i32* %38, align 4, !dbg !739, !tbaa !157
  %39 = getelementptr inbounds [137 x i32], [137 x i32]* %7, i32 0, i32 18, !dbg !740
  store i32 264347078, i32* %39, align 4, !dbg !741, !tbaa !157
  %40 = getelementptr inbounds [137 x i32], [137 x i32]* %7, i32 0, i32 19, !dbg !742
  store i32 604807628, i32* %40, align 4, !dbg !743, !tbaa !157
  store i32 770255983, i32* %37, align 4, !dbg !744, !tbaa !157
  %41 = getelementptr inbounds [137 x i32], [137 x i32]* %7, i32 0, i32 21, !dbg !745
  store i32 1249150122, i32* %41, align 4, !dbg !746, !tbaa !157
  %42 = getelementptr inbounds [137 x i32], [137 x i32]* %7, i32 0, i32 22, !dbg !747
  store i32 1555081692, i32* %42, align 4, !dbg !748, !tbaa !157
  %43 = getelementptr inbounds [137 x i32], [137 x i32]* %7, i32 0, i32 23, !dbg !749
  store i32 1996064986, i32* %43, align 4, !dbg !750, !tbaa !157
  call void @llvm.dbg.value(metadata i32* %36, metadata !131, metadata !DIExpression()) #6, !dbg !697
  %44 = getelementptr inbounds [137 x i32], [137 x i32]* %7, i32 0, i32 28, !dbg !751
  call void @llvm.dbg.value(metadata i32* %44, metadata !132, metadata !DIExpression()) #6, !dbg !697
  store i32 -1740746414, i32* %36, align 4, !dbg !752, !tbaa !157
  %45 = getelementptr inbounds [137 x i32], [137 x i32]* %7, i32 0, i32 25, !dbg !753
  store i32 -1473132947, i32* %45, align 4, !dbg !754, !tbaa !157
  %46 = getelementptr inbounds [137 x i32], [137 x i32]* %7, i32 0, i32 26, !dbg !755
  store i32 -1341970488, i32* %46, align 4, !dbg !756, !tbaa !157
  %47 = getelementptr inbounds [137 x i32], [137 x i32]* %7, i32 0, i32 27, !dbg !757
  store i32 -1084653625, i32* %47, align 4, !dbg !758, !tbaa !157
  store i32 -958395405, i32* %44, align 4, !dbg !759, !tbaa !157
  %48 = getelementptr inbounds [137 x i32], [137 x i32]* %7, i32 0, i32 29, !dbg !760
  store i32 -710438585, i32* %48, align 4, !dbg !761, !tbaa !157
  %49 = getelementptr inbounds [137 x i32], [137 x i32]* %7, i32 0, i32 30, !dbg !762
  store i32 113926993, i32* %49, align 4, !dbg !763, !tbaa !157
  %50 = getelementptr inbounds [137 x i32], [137 x i32]* %7, i32 0, i32 31, !dbg !764
  store i32 338241895, i32* %50, align 4, !dbg !765, !tbaa !157
  call void @llvm.dbg.value(metadata i32* %19, metadata !133, metadata !DIExpression()) #6, !dbg !697
  %51 = getelementptr inbounds [137 x i32], [137 x i32]* %7, i32 0, i32 40, !dbg !766
  call void @llvm.dbg.value(metadata i32* %51, metadata !134, metadata !DIExpression()) #6, !dbg !697
  call void @llvm.dbg.value(metadata i32* %19, metadata !135, metadata !DIExpression()) #6, !dbg !697
  %52 = getelementptr inbounds [137 x i32], [137 x i32]* %7, i32 0, i32 36, !dbg !767
  call void @llvm.dbg.value(metadata i32* %52, metadata !136, metadata !DIExpression()) #6, !dbg !697
  store i32 666307205, i32* %19, align 4, !dbg !768, !tbaa !157
  %53 = getelementptr inbounds [137 x i32], [137 x i32]* %7, i32 0, i32 33, !dbg !769
  store i32 773529912, i32* %53, align 4, !dbg !770, !tbaa !157
  %54 = getelementptr inbounds [137 x i32], [137 x i32]* %7, i32 0, i32 34, !dbg !771
  store i32 1294757372, i32* %54, align 4, !dbg !772, !tbaa !157
  %55 = getelementptr inbounds [137 x i32], [137 x i32]* %7, i32 0, i32 35, !dbg !773
  store i32 1396182291, i32* %55, align 4, !dbg !774, !tbaa !157
  store i32 1695183700, i32* %52, align 4, !dbg !775, !tbaa !157
  %56 = getelementptr inbounds [137 x i32], [137 x i32]* %7, i32 0, i32 37, !dbg !776
  store i32 1986661051, i32* %56, align 4, !dbg !777, !tbaa !157
  %57 = getelementptr inbounds [137 x i32], [137 x i32]* %7, i32 0, i32 38, !dbg !778
  store i32 -2117940946, i32* %57, align 4, !dbg !779, !tbaa !157
  %58 = getelementptr inbounds [137 x i32], [137 x i32]* %7, i32 0, i32 39, !dbg !780
  store i32 -1838011259, i32* %58, align 4, !dbg !781, !tbaa !157
  call void @llvm.dbg.value(metadata i32* %51, metadata !137, metadata !DIExpression()) #6, !dbg !697
  %59 = getelementptr inbounds [137 x i32], [137 x i32]* %7, i32 0, i32 44, !dbg !782
  call void @llvm.dbg.value(metadata i32* %59, metadata !138, metadata !DIExpression()) #6, !dbg !697
  store i32 -1564481375, i32* %51, align 4, !dbg !783, !tbaa !157
  %60 = getelementptr inbounds [137 x i32], [137 x i32]* %7, i32 0, i32 41, !dbg !784
  store i32 -1474664885, i32* %60, align 4, !dbg !785, !tbaa !157
  %61 = getelementptr inbounds [137 x i32], [137 x i32]* %7, i32 0, i32 42, !dbg !786
  store i32 -1035236496, i32* %61, align 4, !dbg !787, !tbaa !157
  %62 = getelementptr inbounds [137 x i32], [137 x i32]* %7, i32 0, i32 43, !dbg !788
  store i32 -949202525, i32* %62, align 4, !dbg !789, !tbaa !157
  store i32 -778901479, i32* %59, align 4, !dbg !790, !tbaa !157
  %63 = getelementptr inbounds [137 x i32], [137 x i32]* %7, i32 0, i32 45, !dbg !791
  store i32 -694614492, i32* %63, align 4, !dbg !792, !tbaa !157
  %64 = getelementptr inbounds [137 x i32], [137 x i32]* %7, i32 0, i32 46, !dbg !793
  store i32 -200395387, i32* %64, align 4, !dbg !794, !tbaa !157
  %65 = getelementptr inbounds [137 x i32], [137 x i32]* %7, i32 0, i32 47, !dbg !795
  store i32 275423344, i32* %65, align 4, !dbg !796, !tbaa !157
  call void @llvm.dbg.value(metadata i32* %20, metadata !139, metadata !DIExpression()) #6, !dbg !697
  %66 = getelementptr inbounds [137 x i32], [137 x i32]* %7, i32 0, i32 56, !dbg !797
  call void @llvm.dbg.value(metadata i32* %66, metadata !140, metadata !DIExpression()) #6, !dbg !697
  call void @llvm.dbg.value(metadata i32* %20, metadata !141, metadata !DIExpression()) #6, !dbg !697
  %67 = getelementptr inbounds [137 x i32], [137 x i32]* %7, i32 0, i32 52, !dbg !798
  call void @llvm.dbg.value(metadata i32* %67, metadata !142, metadata !DIExpression()) #6, !dbg !697
  store i32 430227734, i32* %20, align 4, !dbg !799, !tbaa !157
  %68 = getelementptr inbounds [137 x i32], [137 x i32]* %7, i32 0, i32 49, !dbg !800
  store i32 506948616, i32* %68, align 4, !dbg !801, !tbaa !157
  %69 = getelementptr inbounds [137 x i32], [137 x i32]* %7, i32 0, i32 50, !dbg !802
  store i32 659060556, i32* %69, align 4, !dbg !803, !tbaa !157
  %70 = getelementptr inbounds [137 x i32], [137 x i32]* %7, i32 0, i32 51, !dbg !804
  store i32 883997877, i32* %70, align 4, !dbg !805, !tbaa !157
  store i32 958139571, i32* %67, align 4, !dbg !806, !tbaa !157
  %71 = getelementptr inbounds [137 x i32], [137 x i32]* %7, i32 0, i32 53, !dbg !807
  store i32 1322822218, i32* %71, align 4, !dbg !808, !tbaa !157
  %72 = getelementptr inbounds [137 x i32], [137 x i32]* %7, i32 0, i32 54, !dbg !809
  store i32 1537002063, i32* %72, align 4, !dbg !810, !tbaa !157
  %73 = getelementptr inbounds [137 x i32], [137 x i32]* %7, i32 0, i32 55, !dbg !811
  store i32 1747873779, i32* %73, align 4, !dbg !812, !tbaa !157
  call void @llvm.dbg.value(metadata i32* %66, metadata !143, metadata !DIExpression()) #6, !dbg !697
  %74 = getelementptr inbounds [137 x i32], [137 x i32]* %7, i32 0, i32 60, !dbg !813
  call void @llvm.dbg.value(metadata i32* %74, metadata !144, metadata !DIExpression()) #6, !dbg !697
  store i32 1955562222, i32* %66, align 4, !dbg !814, !tbaa !157
  %75 = getelementptr inbounds [137 x i32], [137 x i32]* %7, i32 0, i32 57, !dbg !815
  store i32 2024104815, i32* %75, align 4, !dbg !816, !tbaa !157
  %76 = getelementptr inbounds [137 x i32], [137 x i32]* %7, i32 0, i32 58, !dbg !817
  store i32 -2067236844, i32* %76, align 4, !dbg !818, !tbaa !157
  %77 = getelementptr inbounds [137 x i32], [137 x i32]* %7, i32 0, i32 59, !dbg !819
  store i32 -1933114872, i32* %77, align 4, !dbg !820, !tbaa !157
  store i32 -1866530822, i32* %74, align 4, !dbg !821, !tbaa !157
  %78 = getelementptr inbounds [137 x i32], [137 x i32]* %7, i32 0, i32 61, !dbg !822
  store i32 -1538233109, i32* %78, align 4, !dbg !823, !tbaa !157
  %79 = getelementptr inbounds [137 x i32], [137 x i32]* %7, i32 0, i32 62, !dbg !824
  store i32 -1090935817, i32* %79, align 4, !dbg !825, !tbaa !157
  %80 = getelementptr inbounds [137 x i32], [137 x i32]* %7, i32 0, i32 63, !dbg !826
  store i32 -965641998, i32* %80, align 4, !dbg !827, !tbaa !157
  call void @llvm.dbg.value(metadata i32* %17, metadata !145, metadata !DIExpression()) #6, !dbg !697
  %81 = getelementptr inbounds [137 x i32], [137 x i32]* %7, i32 0, i32 132, !dbg !828
  call void @llvm.dbg.value(metadata i32* %81, metadata !146, metadata !DIExpression()) #6, !dbg !697
  store i32 1779033703, i32* %17, align 4, !dbg !829, !tbaa !157
  %82 = getelementptr inbounds [137 x i32], [137 x i32]* %7, i32 0, i32 129, !dbg !830
  store i32 -1150833019, i32* %82, align 4, !dbg !831, !tbaa !157
  %83 = getelementptr inbounds [137 x i32], [137 x i32]* %7, i32 0, i32 130, !dbg !832
  store i32 1013904242, i32* %83, align 4, !dbg !833, !tbaa !157
  %84 = getelementptr inbounds [137 x i32], [137 x i32]* %7, i32 0, i32 131, !dbg !834
  store i32 -1521486534, i32* %84, align 4, !dbg !835, !tbaa !157
  store i32 1359893119, i32* %81, align 4, !dbg !836, !tbaa !157
  %85 = getelementptr inbounds [137 x i32], [137 x i32]* %7, i32 0, i32 133, !dbg !837
  store i32 -1694144372, i32* %85, align 4, !dbg !838, !tbaa !157
  %86 = getelementptr inbounds [137 x i32], [137 x i32]* %7, i32 0, i32 134, !dbg !839
  store i32 528734635, i32* %86, align 4, !dbg !840, !tbaa !157
  %87 = getelementptr inbounds [137 x i32], [137 x i32]* %7, i32 0, i32 135, !dbg !841
  store i32 1541459225, i32* %87, align 4, !dbg !842, !tbaa !157
  store i32 0, i32* %16, align 4, !dbg !843, !tbaa !157
  call void @llvm.dbg.value(metadata i32* %15, metadata !297, metadata !DIExpression()) #6, !dbg !844
  call void @llvm.dbg.value(metadata i8* %1, metadata !302, metadata !DIExpression()) #6, !dbg !844
  call void @llvm.dbg.value(metadata i32 %14, metadata !303, metadata !DIExpression()) #6, !dbg !844
  call void @llvm.dbg.value(metadata i32 0, metadata !304, metadata !DIExpression()) #6, !dbg !846
  br label %88, !dbg !847

88:                                               ; preds = %88, %12
  %89 = phi i32 [ %92, %88 ], [ 0, %12 ]
  call void @llvm.dbg.value(metadata i32 %89, metadata !304, metadata !DIExpression()) #6, !dbg !846
  %90 = shl i32 %89, 6, !dbg !848
  %91 = getelementptr inbounds i8, i8* %1, i32 %90, !dbg !849
  call void @llvm.dbg.value(metadata i8* %91, metadata !306, metadata !DIExpression()) #6, !dbg !850
  call fastcc void @Hacl_Impl_SHA2_256_update(i32* noundef nonnull %15, i8* noundef %91) #6, !dbg !851
  %92 = add nuw nsw i32 %89, 1, !dbg !852
  call void @llvm.dbg.value(metadata i32 %92, metadata !304, metadata !DIExpression()) #6, !dbg !846
  %93 = icmp eq i32 %92, %14, !dbg !853
  br i1 %93, label %94, label %88, !dbg !847, !llvm.loop !854

94:                                               ; preds = %88
  %95 = and i32 %2, -64, !dbg !856
  %96 = and i32 %2, 63, !dbg !857
  %97 = getelementptr inbounds i8, i8* %1, i32 %95, !dbg !858
  call void @llvm.dbg.value(metadata i32* %15, metadata !321, metadata !DIExpression()) #6, !dbg !859
  call void @llvm.dbg.value(metadata i8* %97, metadata !324, metadata !DIExpression()) #6, !dbg !859
  call void @llvm.dbg.value(metadata i32 %2, metadata !325, metadata !DIExpression(DW_OP_constu, 63, DW_OP_and, DW_OP_stack_value)) #6, !dbg !859
  %98 = getelementptr inbounds [128 x i8], [128 x i8]* %6, i32 0, i32 0, !dbg !861
  call void @llvm.lifetime.start.p0i8(i64 128, i8* nonnull %98) #6, !dbg !861
  call void @llvm.dbg.declare(metadata [128 x i8]* %6, metadata !326, metadata !DIExpression()) #6, !dbg !862
  call void @llvm.memset.p0i8.i32(i8* noundef nonnull align 1 dereferenceable(128) %98, i8 0, i32 128, i1 false) #6, !dbg !862
  %99 = icmp ult i32 %96, 56, !dbg !863
  %100 = select i1 %99, i32 1, i32 2
  call void @llvm.dbg.value(metadata i32 %100, metadata !330, metadata !DIExpression()) #6, !dbg !859
  %101 = getelementptr inbounds [128 x i8], [128 x i8]* %6, i32 0, i32 64, !dbg !864
  %102 = select i1 %99, i8* %101, i8* %98, !dbg !864
  call void @llvm.dbg.value(metadata i8* %102, metadata !331, metadata !DIExpression()) #6, !dbg !859
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* nonnull align 1 %102, i8* align 1 %97, i32 %96, i1 false) #6, !dbg !865
  %103 = load i32, i32* %16, align 4, !dbg !866, !tbaa !157
  call void @llvm.dbg.value(metadata i32 %103, metadata !332, metadata !DIExpression()) #6, !dbg !859
  %104 = getelementptr inbounds i8, i8* %102, i32 %96, !dbg !867
  call void @llvm.dbg.value(metadata i8* %104, metadata !333, metadata !DIExpression()) #6, !dbg !859
  %105 = sub i32 55, %2, !dbg !868
  %106 = and i32 %105, 63, !dbg !869
  call void @llvm.dbg.value(metadata i32 %106, metadata !334, metadata !DIExpression()) #6, !dbg !859
  call void @llvm.dbg.value(metadata i8* %104, metadata !335, metadata !DIExpression()) #6, !dbg !859
  %107 = getelementptr inbounds i8, i8* %104, i32 1, !dbg !870
  %108 = getelementptr inbounds i8, i8* %107, i32 %106, !dbg !871
  call void @llvm.dbg.value(metadata i8* %108, metadata !336, metadata !DIExpression()) #6, !dbg !859
  %109 = zext i32 %103 to i64, !dbg !872
  %110 = shl nuw nsw i64 %109, 9, !dbg !873
  %111 = shl nuw nsw i32 %96, 3, !dbg !873
  %112 = zext i32 %111 to i64, !dbg !873
  %113 = or i64 %110, %112, !dbg !873
  call void @llvm.dbg.value(metadata i64 %113, metadata !337, metadata !DIExpression()) #6, !dbg !859
  store i8 -128, i8* %104, align 1, !dbg !874, !tbaa !66
  call void @llvm.dbg.value(metadata i64 %113, metadata !355, metadata !DIExpression()) #6, !dbg !875
  %114 = call i64 @llvm.bswap.i64(i64 %113) #6, !dbg !877
  call void @llvm.dbg.value(metadata i8* %108, metadata !364, metadata !DIExpression()) #6, !dbg !878
  call void @llvm.dbg.value(metadata i64 %114, metadata !370, metadata !DIExpression()) #6, !dbg !878
  %115 = bitcast i8* %108 to i64*, !dbg !880
  store i64 %114, i64* %115, align 1, !dbg !880
  call void @llvm.dbg.value(metadata i32* %15, metadata !297, metadata !DIExpression()) #6, !dbg !881
  call void @llvm.dbg.value(metadata i8* %102, metadata !302, metadata !DIExpression()) #6, !dbg !881
  call void @llvm.dbg.value(metadata i32 %100, metadata !303, metadata !DIExpression()) #6, !dbg !881
  call void @llvm.dbg.value(metadata i32 0, metadata !304, metadata !DIExpression()) #6, !dbg !883
  br label %116

116:                                              ; preds = %116, %94
  %117 = phi i32 [ %120, %116 ], [ 0, %94 ]
  call void @llvm.dbg.value(metadata i32 %117, metadata !304, metadata !DIExpression()) #6, !dbg !883
  %118 = shl i32 %117, 6, !dbg !884
  %119 = getelementptr inbounds i8, i8* %102, i32 %118, !dbg !885
  call void @llvm.dbg.value(metadata i8* %119, metadata !306, metadata !DIExpression()) #6, !dbg !886
  call fastcc void @Hacl_Impl_SHA2_256_update(i32* noundef nonnull %15, i8* noundef nonnull %119) #6, !dbg !887
  %120 = add nuw i32 %117, 1, !dbg !888
  call void @llvm.dbg.value(metadata i32 %120, metadata !304, metadata !DIExpression()) #6, !dbg !883
  %121 = icmp eq i32 %120, %100, !dbg !889
  br i1 %121, label %122, label %116, !dbg !890, !llvm.loop !891

122:                                              ; preds = %116
  call void @llvm.lifetime.end.p0i8(i64 128, i8* nonnull %98) #6, !dbg !893
  call void @llvm.dbg.value(metadata i32* %15, metadata !387, metadata !DIExpression()) #6, !dbg !894
  call void @llvm.dbg.value(metadata i8* %9, metadata !392, metadata !DIExpression()) #6, !dbg !894
  call void @llvm.dbg.value(metadata i32* %17, metadata !393, metadata !DIExpression()) #6, !dbg !894
  call void @llvm.dbg.value(metadata i8* %9, metadata !396, metadata !DIExpression()) #6, !dbg !896
  call void @llvm.dbg.value(metadata i32* %17, metadata !401, metadata !DIExpression()) #6, !dbg !896
  call void @llvm.dbg.value(metadata i32 8, metadata !402, metadata !DIExpression()) #6, !dbg !896
  call void @llvm.dbg.value(metadata i32 0, metadata !403, metadata !DIExpression()) #6, !dbg !898
  br label %123, !dbg !899

123:                                              ; preds = %123, %122
  %124 = phi i32 [ 0, %122 ], [ %131, %123 ]
  call void @llvm.dbg.value(metadata i32 %124, metadata !403, metadata !DIExpression()) #6, !dbg !898
  %125 = getelementptr inbounds i32, i32* %17, i32 %124, !dbg !900
  %126 = load i32, i32* %125, align 4, !dbg !900, !tbaa !157
  call void @llvm.dbg.value(metadata i32 %126, metadata !405, metadata !DIExpression()) #6, !dbg !901
  %127 = shl i32 %124, 2, !dbg !902
  %128 = getelementptr inbounds [64 x i8], [64 x i8]* %8, i32 0, i32 %127, !dbg !903
  call void @llvm.dbg.value(metadata i8* %128, metadata !408, metadata !DIExpression()) #6, !dbg !901
  call void @llvm.dbg.value(metadata i32 %126, metadata !417, metadata !DIExpression()) #6, !dbg !904
  %129 = call i32 @llvm.bswap.i32(i32 %126) #6, !dbg !906
  call void @llvm.dbg.value(metadata i8* %128, metadata !425, metadata !DIExpression()) #6, !dbg !907
  call void @llvm.dbg.value(metadata i32 %129, metadata !430, metadata !DIExpression()) #6, !dbg !907
  %130 = bitcast i8* %128 to i32*, !dbg !909
  store i32 %129, i32* %130, align 1, !dbg !909
  %131 = add nuw nsw i32 %124, 1, !dbg !910
  call void @llvm.dbg.value(metadata i32 %131, metadata !403, metadata !DIExpression()) #6, !dbg !898
  %132 = icmp eq i32 %131, 8, !dbg !911
  br i1 %132, label %133, label %123, !dbg !899, !llvm.loop !912

133:                                              ; preds = %123
  call void @llvm.lifetime.end.p0i8(i64 548, i8* nonnull %13) #6, !dbg !914
  br label %134

134:                                              ; preds = %11, %133
  call fastcc void @Hacl_Impl_HMAC_SHA2_256_hmac_core(i8* noundef %0, i8* noundef nonnull %9, i8* noundef %3, i32 noundef %4) #6, !dbg !915
  call void @llvm.lifetime.end.p0i8(i64 64, i8* nonnull %9) #6, !dbg !916
  ret void, !dbg !917
}

; Function Attrs: argmemonly mustprogress nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0i8(i64 immarg, i8* nocapture) #2

; Function Attrs: argmemonly mustprogress nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0i8(i64 immarg, i8* nocapture) #2

; Function Attrs: argmemonly mustprogress nofree nounwind willreturn writeonly
declare void @llvm.memset.p0i8.i32(i8* nocapture writeonly, i8, i32, i1 immarg) #3

; Function Attrs: nofree nosync nounwind uwtable
define internal fastcc void @Hacl_Impl_SHA2_256_update(i32* nocapture noundef %0, i8* nocapture noundef readonly %1) unnamed_addr #0 !dbg !918 {
  %3 = alloca [16 x i32], align 4
  %4 = bitcast [16 x i32]* %3 to i8*
  %5 = alloca [8 x i32], align 4
  call void @llvm.dbg.value(metadata i32* %0, metadata !920, metadata !DIExpression()), !dbg !975
  call void @llvm.dbg.value(metadata i8* %1, metadata !921, metadata !DIExpression()), !dbg !975
  %6 = bitcast [16 x i32]* %3 to i8*, !dbg !976
  call void @llvm.lifetime.start.p0i8(i64 64, i8* nonnull %6) #6, !dbg !976
  call void @llvm.dbg.declare(metadata [16 x i32]* %3, metadata !922, metadata !DIExpression()), !dbg !977
  call void @llvm.memset.p0i8.i32(i8* noundef nonnull align 4 dereferenceable(64) %6, i8 0, i32 64, i1 false), !dbg !977
  call void @llvm.dbg.value(metadata [16 x i32]* %3, metadata !978, metadata !DIExpression()) #6, !dbg !989
  call void @llvm.dbg.value(metadata i8* %1, metadata !981, metadata !DIExpression()) #6, !dbg !989
  call void @llvm.dbg.value(metadata i32 16, metadata !982, metadata !DIExpression()) #6, !dbg !989
  call void @llvm.dbg.value(metadata i32 0, metadata !983, metadata !DIExpression()) #6, !dbg !991
  br label %7, !dbg !992

7:                                                ; preds = %7, %2
  %8 = phi i32 [ 0, %2 ], [ %15, %7 ]
  call void @llvm.dbg.value(metadata i32 %8, metadata !983, metadata !DIExpression()) #6, !dbg !991
  %9 = shl i32 %8, 2, !dbg !993
  %10 = getelementptr inbounds i8, i8* %1, i32 %9, !dbg !994
  call void @llvm.dbg.value(metadata i8* %10, metadata !985, metadata !DIExpression()) #6, !dbg !995
  call void @llvm.dbg.value(metadata i8* %10, metadata !996, metadata !DIExpression()) #6, !dbg !1002
  %11 = bitcast i8* %10 to i32*, !dbg !1004
  %12 = load i32, i32* %11, align 1, !dbg !1004
  call void @llvm.dbg.value(metadata i32 %12, metadata !1001, metadata !DIExpression()) #6, !dbg !1002
  call void @llvm.dbg.value(metadata i32 %12, metadata !417, metadata !DIExpression()) #6, !dbg !1005
  %13 = call i32 @llvm.bswap.i32(i32 %12) #6, !dbg !1007
  call void @llvm.dbg.value(metadata i32 %13, metadata !988, metadata !DIExpression()) #6, !dbg !995
  %14 = getelementptr inbounds [16 x i32], [16 x i32]* %3, i32 0, i32 %8, !dbg !1008
  store i32 %13, i32* %14, align 4, !dbg !1009, !tbaa !157
  %15 = add nuw nsw i32 %8, 1, !dbg !1010
  call void @llvm.dbg.value(metadata i32 %15, metadata !983, metadata !DIExpression()) #6, !dbg !991
  %16 = icmp eq i32 %15, 16, !dbg !1011
  br i1 %16, label %17, label %7, !dbg !992, !llvm.loop !1012

17:                                               ; preds = %7
  call void @llvm.dbg.value(metadata i32* %20, metadata !926, metadata !DIExpression()), !dbg !975
  %18 = getelementptr inbounds i32, i32* %0, i32 64, !dbg !1014
  %19 = bitcast i32* %18 to i8*, !dbg !975
  call void @llvm.dbg.value(metadata i32* %18, metadata !927, metadata !DIExpression()), !dbg !975
  call void @llvm.dbg.value(metadata i32* %0, metadata !928, metadata !DIExpression()), !dbg !975
  call void @llvm.dbg.value(metadata i32* %113, metadata !929, metadata !DIExpression()), !dbg !975
  call void @llvm.dbg.value(metadata i32 0, metadata !930, metadata !DIExpression()), !dbg !1015
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* noundef nonnull align 4 dereferenceable(64) %19, i8* noundef nonnull align 4 dereferenceable(64) %4, i32 64, i1 false), !dbg !1016, !tbaa !157
  call void @llvm.dbg.value(metadata i32 undef, metadata !930, metadata !DIExpression()), !dbg !1015
  call void @llvm.dbg.value(metadata i32 undef, metadata !932, metadata !DIExpression()), !dbg !1017
  call void @llvm.dbg.value(metadata i32 undef, metadata !930, metadata !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value)), !dbg !1015
  %20 = getelementptr inbounds i32, i32* %0, i32 128, !dbg !1018
  br label %40, !dbg !1019

21:                                               ; preds = %40
  %22 = bitcast [8 x i32]* %5 to i8*, !dbg !1020
  call void @llvm.lifetime.start.p0i8(i64 32, i8* nonnull %22) #6, !dbg !1020
  call void @llvm.dbg.declare(metadata [8 x i32]* %5, metadata !943, metadata !DIExpression()), !dbg !1021
  %23 = getelementptr inbounds [8 x i32], [8 x i32]* %5, i32 0, i32 0, !dbg !1022
  %24 = bitcast i32* %20 to i8*, !dbg !1022
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* noundef nonnull align 4 dereferenceable(32) %22, i8* noundef nonnull align 4 dereferenceable(32) %24, i32 32, i1 false), !dbg !1022
  call void @llvm.dbg.value(metadata i32 0, metadata !947, metadata !DIExpression()), !dbg !1023
  %25 = getelementptr inbounds [8 x i32], [8 x i32]* %5, i32 0, i32 1
  %26 = getelementptr inbounds [8 x i32], [8 x i32]* %5, i32 0, i32 2
  %27 = getelementptr inbounds [8 x i32], [8 x i32]* %5, i32 0, i32 3
  %28 = getelementptr inbounds [8 x i32], [8 x i32]* %5, i32 0, i32 4
  %29 = getelementptr inbounds [8 x i32], [8 x i32]* %5, i32 0, i32 5
  %30 = getelementptr inbounds [8 x i32], [8 x i32]* %5, i32 0, i32 6
  %31 = getelementptr inbounds [8 x i32], [8 x i32]* %5, i32 0, i32 7
  %32 = load i32, i32* %23, align 4, !tbaa !157
  %33 = load i32, i32* %25, align 4, !tbaa !157
  %34 = load i32, i32* %26, align 4, !tbaa !157
  %35 = load i32, i32* %27, align 4, !tbaa !157
  %36 = load i32, i32* %28, align 4, !tbaa !157
  %37 = load i32, i32* %29, align 4, !tbaa !157
  %38 = load i32, i32* %30, align 4, !tbaa !157
  %39 = load i32, i32* %31, align 4, !tbaa !157
  call void @llvm.dbg.value(metadata i32 0, metadata !947, metadata !DIExpression()), !dbg !1023
  br label %71, !dbg !1024

40:                                               ; preds = %17, %40
  %41 = phi i32 [ %68, %40 ], [ 16, %17 ]
  call void @llvm.dbg.value(metadata i32 %41, metadata !935, metadata !DIExpression()), !dbg !1025
  %42 = add nsw i32 %41, -16, !dbg !1026
  %43 = getelementptr inbounds i32, i32* %18, i32 %42, !dbg !1027
  %44 = load i32, i32* %43, align 4, !dbg !1027, !tbaa !157
  call void @llvm.dbg.value(metadata i32 %44, metadata !937, metadata !DIExpression()), !dbg !1028
  %45 = add nsw i32 %41, -15, !dbg !1029
  %46 = getelementptr inbounds i32, i32* %18, i32 %45, !dbg !1030
  %47 = load i32, i32* %46, align 4, !dbg !1030, !tbaa !157
  call void @llvm.dbg.value(metadata i32 %47, metadata !940, metadata !DIExpression()), !dbg !1028
  %48 = add nsw i32 %41, -7, !dbg !1031
  %49 = getelementptr inbounds i32, i32* %18, i32 %48, !dbg !1032
  %50 = load i32, i32* %49, align 4, !dbg !1032, !tbaa !157
  call void @llvm.dbg.value(metadata i32 %50, metadata !941, metadata !DIExpression()), !dbg !1028
  %51 = add nsw i32 %41, -2, !dbg !1033
  %52 = getelementptr inbounds i32, i32* %18, i32 %51, !dbg !1034
  %53 = load i32, i32* %52, align 4, !dbg !1034, !tbaa !157
  call void @llvm.dbg.value(metadata i32 %53, metadata !942, metadata !DIExpression()), !dbg !1028
  %54 = call i32 @llvm.fshl.i32(i32 %53, i32 %53, i32 15), !dbg !1035
  %55 = call i32 @llvm.fshl.i32(i32 %53, i32 %53, i32 13), !dbg !1036
  %56 = lshr i32 %53, 10, !dbg !1037
  %57 = xor i32 %55, %56, !dbg !1038
  %58 = xor i32 %57, %54, !dbg !1039
  %59 = call i32 @llvm.fshl.i32(i32 %47, i32 %47, i32 25), !dbg !1040
  %60 = call i32 @llvm.fshl.i32(i32 %47, i32 %47, i32 14), !dbg !1041
  %61 = lshr i32 %47, 3, !dbg !1042
  %62 = xor i32 %60, %61, !dbg !1043
  %63 = xor i32 %62, %59, !dbg !1044
  %64 = add i32 %50, %44, !dbg !1045
  %65 = add i32 %64, %63, !dbg !1046
  %66 = add i32 %65, %58, !dbg !1047
  %67 = getelementptr inbounds i32, i32* %18, i32 %41, !dbg !1048
  store i32 %66, i32* %67, align 4, !dbg !1049, !tbaa !157
  %68 = add nuw nsw i32 %41, 1, !dbg !1050
  call void @llvm.dbg.value(metadata i32 %68, metadata !935, metadata !DIExpression()), !dbg !1025
  %69 = icmp eq i32 %68, 64, !dbg !1051
  br i1 %69, label %21, label %40, !dbg !1019, !llvm.loop !1052

70:                                               ; preds = %71
  store i32 %108, i32* %23, align 4, !dbg !1054, !tbaa !157
  store i32 %73, i32* %25, align 4, !dbg !1054, !tbaa !157
  store i32 %74, i32* %26, align 4, !dbg !1054, !tbaa !157
  store i32 %75, i32* %27, align 4, !dbg !1054, !tbaa !157
  store i32 %109, i32* %28, align 4, !dbg !1054, !tbaa !157
  store i32 %77, i32* %29, align 4, !dbg !1054, !tbaa !157
  store i32 %78, i32* %30, align 4, !dbg !1054, !tbaa !157
  store i32 %79, i32* %31, align 4, !dbg !1054, !tbaa !157
  call void @llvm.dbg.value(metadata i32 0, metadata !967, metadata !DIExpression()), !dbg !1055
  br label %116, !dbg !1056

71:                                               ; preds = %21, %71
  %72 = phi i32 [ 0, %21 ], [ %110, %71 ]
  %73 = phi i32 [ %32, %21 ], [ %108, %71 ]
  %74 = phi i32 [ %33, %21 ], [ %73, %71 ]
  %75 = phi i32 [ %34, %21 ], [ %74, %71 ]
  %76 = phi i32 [ %35, %21 ], [ %75, %71 ]
  %77 = phi i32 [ %36, %21 ], [ %109, %71 ]
  %78 = phi i32 [ %37, %21 ], [ %77, %71 ]
  %79 = phi i32 [ %38, %21 ], [ %78, %71 ]
  %80 = phi i32 [ %39, %21 ], [ %79, %71 ]
  call void @llvm.dbg.value(metadata i32 %72, metadata !947, metadata !DIExpression()), !dbg !1023
  call void @llvm.dbg.value(metadata i32 %73, metadata !949, metadata !DIExpression()), !dbg !1054
  call void @llvm.dbg.value(metadata i32 %74, metadata !952, metadata !DIExpression()), !dbg !1054
  call void @llvm.dbg.value(metadata i32 %75, metadata !953, metadata !DIExpression()), !dbg !1054
  call void @llvm.dbg.value(metadata i32 %76, metadata !954, metadata !DIExpression()), !dbg !1054
  call void @llvm.dbg.value(metadata i32 %77, metadata !955, metadata !DIExpression()), !dbg !1054
  call void @llvm.dbg.value(metadata i32 %78, metadata !956, metadata !DIExpression()), !dbg !1054
  call void @llvm.dbg.value(metadata i32 %79, metadata !957, metadata !DIExpression()), !dbg !1054
  call void @llvm.dbg.value(metadata i32 %80, metadata !958, metadata !DIExpression()), !dbg !1054
  %81 = getelementptr inbounds i32, i32* %0, i32 %72, !dbg !1057
  %82 = load i32, i32* %81, align 4, !dbg !1057, !tbaa !157
  call void @llvm.dbg.value(metadata i32 %82, metadata !959, metadata !DIExpression()), !dbg !1054
  %83 = getelementptr inbounds i32, i32* %18, i32 %72, !dbg !1058
  %84 = load i32, i32* %83, align 4, !dbg !1058, !tbaa !157
  call void @llvm.dbg.value(metadata i32 %84, metadata !960, metadata !DIExpression()), !dbg !1054
  %85 = call i32 @llvm.fshl.i32(i32 %77, i32 %77, i32 26), !dbg !1059
  %86 = call i32 @llvm.fshl.i32(i32 %77, i32 %77, i32 21), !dbg !1060
  %87 = call i32 @llvm.fshl.i32(i32 %77, i32 %77, i32 7), !dbg !1061
  %88 = xor i32 %86, %87, !dbg !1062
  %89 = xor i32 %88, %85, !dbg !1063
  %90 = and i32 %78, %77, !dbg !1064
  %91 = xor i32 %77, -1, !dbg !1065
  %92 = and i32 %79, %91, !dbg !1066
  %93 = add i32 %89, %90, !dbg !1067
  %94 = add i32 %93, %80, !dbg !1068
  %95 = add i32 %94, %92, !dbg !1069
  %96 = add i32 %95, %82, !dbg !1070
  %97 = add i32 %96, %84, !dbg !1071
  call void @llvm.dbg.value(metadata i32 %97, metadata !961, metadata !DIExpression()), !dbg !1054
  %98 = call i32 @llvm.fshl.i32(i32 %73, i32 %73, i32 30), !dbg !1072
  %99 = call i32 @llvm.fshl.i32(i32 %73, i32 %73, i32 19), !dbg !1073
  %100 = call i32 @llvm.fshl.i32(i32 %73, i32 %73, i32 10), !dbg !1074
  %101 = xor i32 %99, %100, !dbg !1075
  %102 = xor i32 %101, %98, !dbg !1076
  %103 = and i32 %74, %73, !dbg !1077
  %104 = xor i32 %74, %73, !dbg !1078
  %105 = and i32 %104, %75, !dbg !1078
  %106 = xor i32 %105, %103, !dbg !1079
  %107 = add i32 %106, %102, !dbg !1080
  call void @llvm.dbg.value(metadata i32 %107, metadata !962, metadata !DIExpression()), !dbg !1054
  %108 = add i32 %107, %97, !dbg !1081
  call void @llvm.dbg.value(metadata i32 %108, metadata !963, metadata !DIExpression()), !dbg !1054
  %109 = add i32 %97, %76, !dbg !1082
  call void @llvm.dbg.value(metadata i32 %109, metadata !964, metadata !DIExpression()), !dbg !1054
  call void @llvm.dbg.value(metadata i32* %23, metadata !965, metadata !DIExpression()), !dbg !1054
  call void @llvm.dbg.value(metadata i32* %28, metadata !966, metadata !DIExpression()), !dbg !1054
  %110 = add nuw nsw i32 %72, 1, !dbg !1083
  call void @llvm.dbg.value(metadata i32 %110, metadata !947, metadata !DIExpression()), !dbg !1023
  %111 = icmp eq i32 %110, 64, !dbg !1084
  br i1 %111, label %70, label %71, !dbg !1024, !llvm.loop !1085

112:                                              ; preds = %116
  %113 = getelementptr inbounds i32, i32* %0, i32 136, !dbg !1087
  %114 = load i32, i32* %113, align 4, !dbg !1088, !tbaa !157
  call void @llvm.dbg.value(metadata i32 %114, metadata !973, metadata !DIExpression()), !dbg !975
  call void @llvm.dbg.value(metadata i32 1, metadata !974, metadata !DIExpression()), !dbg !975
  %115 = add i32 %114, 1, !dbg !1089
  store i32 %115, i32* %113, align 4, !dbg !1090, !tbaa !157
  call void @llvm.lifetime.end.p0i8(i64 32, i8* nonnull %22) #6, !dbg !1091
  call void @llvm.lifetime.end.p0i8(i64 64, i8* nonnull %6) #6, !dbg !1091
  ret void, !dbg !1091

116:                                              ; preds = %70, %116
  %117 = phi i32 [ 0, %70 ], [ %123, %116 ]
  call void @llvm.dbg.value(metadata i32 %117, metadata !967, metadata !DIExpression()), !dbg !1055
  %118 = getelementptr inbounds i32, i32* %20, i32 %117, !dbg !1092
  %119 = load i32, i32* %118, align 4, !dbg !1092, !tbaa !157
  call void @llvm.dbg.value(metadata i32 %119, metadata !969, metadata !DIExpression()), !dbg !1093
  %120 = getelementptr inbounds [8 x i32], [8 x i32]* %5, i32 0, i32 %117, !dbg !1094
  %121 = load i32, i32* %120, align 4, !dbg !1094, !tbaa !157
  call void @llvm.dbg.value(metadata i32 %121, metadata !972, metadata !DIExpression()), !dbg !1093
  %122 = add i32 %121, %119, !dbg !1095
  store i32 %122, i32* %118, align 4, !dbg !1096, !tbaa !157
  %123 = add nuw nsw i32 %117, 1, !dbg !1097
  call void @llvm.dbg.value(metadata i32 %123, metadata !967, metadata !DIExpression()), !dbg !1055
  %124 = icmp eq i32 %123, 8, !dbg !1098
  br i1 %124, label %112, label %116, !dbg !1056, !llvm.loop !1099
}

; Function Attrs: argmemonly mustprogress nofree nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i32(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i32, i1 immarg) #4

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare void @llvm.dbg.value(metadata, metadata, metadata) #5

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.fshl.i32(i32, i32, i32) #5

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #5

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare i64 @llvm.bswap.i64(i64) #5

attributes #0 = { nofree nosync nounwind uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="i686" "target-features"="+cx8,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nofree nosync nounwind readnone speculatable willreturn }
attributes #2 = { argmemonly mustprogress nofree nosync nounwind willreturn }
attributes #3 = { argmemonly mustprogress nofree nounwind willreturn writeonly }
attributes #4 = { argmemonly mustprogress nofree nounwind willreturn }
attributes #5 = { nofree nosync nounwind readnone speculatable willreturn }
attributes #6 = { nounwind }

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!14, !15, !16, !17, !18, !19, !20}
!llvm.ident = !{!21}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "Ubuntu clang version 14.0.0-1ubuntu1.1", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !2, splitDebugInlining: false, nameTableKind: None)
!1 = !DIFile(filename: "hacl-c/hacl-c/Hacl_HMAC_SHA2_256.c", directory: "/mnt/c/Users/fwill/Documents/HS24/semester_project/tools/binsec/binsec/examples/hacl", checksumkind: CSK_MD5, checksum: "2f56678eb91919a269a5b3531bb31f7f")
!2 = !{!3, !8, !11}
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
!14 = !{i32 1, !"NumRegisterParameters", i32 0}
!15 = !{i32 7, !"Dwarf Version", i32 5}
!16 = !{i32 2, !"Debug Info Version", i32 3}
!17 = !{i32 1, !"wchar_size", i32 4}
!18 = !{i32 7, !"PIC Level", i32 2}
!19 = !{i32 7, !"PIE Level", i32 2}
!20 = !{i32 7, !"uwtable", i32 1}
!21 = !{!"Ubuntu clang version 14.0.0-1ubuntu1.1"}
!22 = distinct !DISubprogram(name: "Hacl_HMAC_SHA2_256_hmac_core", scope: !1, file: !1, line: 361, type: !23, scopeLine: 362, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !26)
!23 = !DISubroutineType(types: !24)
!24 = !{null, !25, !25, !25, !3}
!25 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !8, size: 32)
!26 = !{!27, !28, !29, !30}
!27 = !DILocalVariable(name: "mac", arg: 1, scope: !22, file: !1, line: 361, type: !25)
!28 = !DILocalVariable(name: "key", arg: 2, scope: !22, file: !1, line: 361, type: !25)
!29 = !DILocalVariable(name: "data", arg: 3, scope: !22, file: !1, line: 361, type: !25)
!30 = !DILocalVariable(name: "len", arg: 4, scope: !22, file: !1, line: 361, type: !3)
!31 = !DILocation(line: 0, scope: !22)
!32 = !DILocation(line: 363, column: 3, scope: !22)
!33 = !DILocation(line: 364, column: 1, scope: !22)
!34 = distinct !DISubprogram(name: "Hacl_Impl_HMAC_SHA2_256_hmac_core", scope: !1, file: !1, line: 310, type: !23, scopeLine: 311, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !35)
!35 = !{!36, !37, !38, !39, !40, !44, !46, !47, !49, !53, !54, !55, !56, !57, !58, !59}
!36 = !DILocalVariable(name: "mac", arg: 1, scope: !34, file: !1, line: 310, type: !25)
!37 = !DILocalVariable(name: "key", arg: 2, scope: !34, file: !1, line: 310, type: !25)
!38 = !DILocalVariable(name: "data", arg: 3, scope: !34, file: !1, line: 310, type: !25)
!39 = !DILocalVariable(name: "len", arg: 4, scope: !34, file: !1, line: 310, type: !3)
!40 = !DILocalVariable(name: "ipad", scope: !34, file: !1, line: 312, type: !41)
!41 = !DICompositeType(tag: DW_TAG_array_type, baseType: !8, size: 512, elements: !42)
!42 = !{!43}
!43 = !DISubrange(count: 64)
!44 = !DILocalVariable(name: "_i", scope: !45, file: !1, line: 313, type: !3)
!45 = distinct !DILexicalBlock(scope: !34, file: !1, line: 313, column: 3)
!46 = !DILocalVariable(name: "opad", scope: !34, file: !1, line: 315, type: !41)
!47 = !DILocalVariable(name: "_i", scope: !48, file: !1, line: 316, type: !3)
!48 = distinct !DILexicalBlock(scope: !34, file: !1, line: 316, column: 3)
!49 = !DILocalVariable(name: "state0", scope: !34, file: !1, line: 319, type: !50)
!50 = !DICompositeType(tag: DW_TAG_array_type, baseType: !3, size: 4384, elements: !51)
!51 = !{!52}
!52 = !DISubrange(count: 137)
!53 = !DILocalVariable(name: "n0", scope: !34, file: !1, line: 320, type: !3)
!54 = !DILocalVariable(name: "r0", scope: !34, file: !1, line: 321, type: !3)
!55 = !DILocalVariable(name: "blocks0", scope: !34, file: !1, line: 322, type: !25)
!56 = !DILocalVariable(name: "last0", scope: !34, file: !1, line: 323, type: !25)
!57 = !DILocalVariable(name: "hash0", scope: !34, file: !1, line: 328, type: !25)
!58 = !DILocalVariable(name: "s4", scope: !34, file: !1, line: 330, type: !25)
!59 = !DILocalVariable(name: "state1", scope: !34, file: !1, line: 332, type: !50)
!60 = !DILocation(line: 0, scope: !34)
!61 = !DILocation(line: 312, column: 3, scope: !34)
!62 = !DILocation(line: 312, column: 11, scope: !34)
!63 = !DILocation(line: 0, scope: !45)
!64 = !DILocation(line: 314, column: 14, scope: !65)
!65 = distinct !DILexicalBlock(scope: !45, file: !1, line: 313, column: 3)
!66 = !{!67, !67, i64 0}
!67 = !{!"omnipotent char", !68, i64 0}
!68 = !{!"Simple C/C++ TBAA"}
!69 = !DILocation(line: 315, column: 3, scope: !34)
!70 = !DILocation(line: 315, column: 11, scope: !34)
!71 = !DILocation(line: 0, scope: !48)
!72 = !DILocation(line: 317, column: 14, scope: !73)
!73 = distinct !DILexicalBlock(scope: !48, file: !1, line: 316, column: 3)
!74 = !DILocation(line: 301, column: 3, scope: !75, inlinedAt: !88)
!75 = distinct !DILexicalBlock(scope: !76, file: !1, line: 301, column: 3)
!76 = distinct !DISubprogram(name: "Hacl_Impl_HMAC_SHA2_256_xor_bytes_inplace", scope: !1, file: !1, line: 299, type: !77, scopeLine: 300, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !79)
!77 = !DISubroutineType(types: !78)
!78 = !{null, !25, !25, !3}
!79 = !{!80, !81, !82, !83, !84, !87}
!80 = !DILocalVariable(name: "a", arg: 1, scope: !76, file: !1, line: 299, type: !25)
!81 = !DILocalVariable(name: "b", arg: 2, scope: !76, file: !1, line: 299, type: !25)
!82 = !DILocalVariable(name: "len", arg: 3, scope: !76, file: !1, line: 299, type: !3)
!83 = !DILocalVariable(name: "i", scope: !75, file: !1, line: 301, type: !3)
!84 = !DILocalVariable(name: "xi", scope: !85, file: !1, line: 303, type: !8)
!85 = distinct !DILexicalBlock(scope: !86, file: !1, line: 302, column: 3)
!86 = distinct !DILexicalBlock(scope: !75, file: !1, line: 301, column: 3)
!87 = !DILocalVariable(name: "yi", scope: !85, file: !1, line: 304, type: !8)
!88 = distinct !DILocation(line: 318, column: 3, scope: !34)
!89 = !DILocation(line: 0, scope: !75, inlinedAt: !88)
!90 = !DILocation(line: 303, column: 18, scope: !85, inlinedAt: !88)
!91 = !DILocation(line: 0, scope: !85, inlinedAt: !88)
!92 = !DILocation(line: 304, column: 18, scope: !85, inlinedAt: !88)
!93 = !DILocation(line: 305, column: 15, scope: !85, inlinedAt: !88)
!94 = !DILocation(line: 305, column: 10, scope: !85, inlinedAt: !88)
!95 = !DILocation(line: 301, column: 50, scope: !86, inlinedAt: !88)
!96 = !DILocation(line: 301, column: 37, scope: !86, inlinedAt: !88)
!97 = distinct !{!97, !74, !98, !99, !100}
!98 = !DILocation(line: 306, column: 3, scope: !75, inlinedAt: !88)
!99 = !{!"llvm.loop.mustprogress"}
!100 = !{!"llvm.loop.unroll.disable"}
!101 = !DILocation(line: 319, column: 3, scope: !34)
!102 = !DILocation(line: 319, column: 12, scope: !34)
!103 = !DILocation(line: 320, column: 21, scope: !34)
!104 = !DILocation(line: 321, column: 21, scope: !34)
!105 = !DILocation(line: 323, column: 30, scope: !34)
!106 = !DILocation(line: 323, column: 25, scope: !34)
!107 = !DILocation(line: 324, column: 27, scope: !34)
!108 = !DILocalVariable(name: "state", arg: 1, scope: !109, file: !1, line: 49, type: !112)
!109 = distinct !DISubprogram(name: "Hacl_Impl_SHA2_256_init", scope: !1, file: !1, line: 49, type: !110, scopeLine: 50, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !113)
!110 = !DISubroutineType(types: !111)
!111 = !{null, !112}
!112 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3, size: 32)
!113 = !{!108, !114, !115, !116, !117, !118, !119, !120, !121, !122, !123, !124, !125, !126, !127, !128, !129, !130, !131, !132, !133, !134, !135, !136, !137, !138, !139, !140, !141, !142, !143, !144, !145, !146}
!114 = !DILocalVariable(name: "n1", scope: !109, file: !1, line: 51, type: !112)
!115 = !DILocalVariable(name: "k1", scope: !109, file: !1, line: 52, type: !112)
!116 = !DILocalVariable(name: "h_01", scope: !109, file: !1, line: 53, type: !112)
!117 = !DILocalVariable(name: "p10", scope: !109, file: !1, line: 54, type: !112)
!118 = !DILocalVariable(name: "p20", scope: !109, file: !1, line: 55, type: !112)
!119 = !DILocalVariable(name: "p3", scope: !109, file: !1, line: 56, type: !112)
!120 = !DILocalVariable(name: "p4", scope: !109, file: !1, line: 57, type: !112)
!121 = !DILocalVariable(name: "p11", scope: !109, file: !1, line: 58, type: !112)
!122 = !DILocalVariable(name: "p21", scope: !109, file: !1, line: 59, type: !112)
!123 = !DILocalVariable(name: "p12", scope: !109, file: !1, line: 60, type: !112)
!124 = !DILocalVariable(name: "p22", scope: !109, file: !1, line: 61, type: !112)
!125 = !DILocalVariable(name: "p13", scope: !109, file: !1, line: 70, type: !112)
!126 = !DILocalVariable(name: "p23", scope: !109, file: !1, line: 71, type: !112)
!127 = !DILocalVariable(name: "p14", scope: !109, file: !1, line: 80, type: !112)
!128 = !DILocalVariable(name: "p24", scope: !109, file: !1, line: 81, type: !112)
!129 = !DILocalVariable(name: "p15", scope: !109, file: !1, line: 82, type: !112)
!130 = !DILocalVariable(name: "p25", scope: !109, file: !1, line: 83, type: !112)
!131 = !DILocalVariable(name: "p16", scope: !109, file: !1, line: 92, type: !112)
!132 = !DILocalVariable(name: "p26", scope: !109, file: !1, line: 93, type: !112)
!133 = !DILocalVariable(name: "p17", scope: !109, file: !1, line: 102, type: !112)
!134 = !DILocalVariable(name: "p27", scope: !109, file: !1, line: 103, type: !112)
!135 = !DILocalVariable(name: "p18", scope: !109, file: !1, line: 104, type: !112)
!136 = !DILocalVariable(name: "p28", scope: !109, file: !1, line: 105, type: !112)
!137 = !DILocalVariable(name: "p19", scope: !109, file: !1, line: 114, type: !112)
!138 = !DILocalVariable(name: "p29", scope: !109, file: !1, line: 115, type: !112)
!139 = !DILocalVariable(name: "p110", scope: !109, file: !1, line: 124, type: !112)
!140 = !DILocalVariable(name: "p210", scope: !109, file: !1, line: 125, type: !112)
!141 = !DILocalVariable(name: "p1", scope: !109, file: !1, line: 126, type: !112)
!142 = !DILocalVariable(name: "p211", scope: !109, file: !1, line: 127, type: !112)
!143 = !DILocalVariable(name: "p111", scope: !109, file: !1, line: 136, type: !112)
!144 = !DILocalVariable(name: "p212", scope: !109, file: !1, line: 137, type: !112)
!145 = !DILocalVariable(name: "p112", scope: !109, file: !1, line: 146, type: !112)
!146 = !DILocalVariable(name: "p2", scope: !109, file: !1, line: 147, type: !112)
!147 = !DILocation(line: 0, scope: !109, inlinedAt: !148)
!148 = distinct !DILocation(line: 324, column: 3, scope: !34)
!149 = !DILocation(line: 51, column: 24, scope: !109, inlinedAt: !148)
!150 = !DILocation(line: 53, column: 26, scope: !109, inlinedAt: !148)
!151 = !DILocation(line: 55, column: 22, scope: !109, inlinedAt: !148)
!152 = !DILocation(line: 56, column: 21, scope: !109, inlinedAt: !148)
!153 = !DILocation(line: 57, column: 21, scope: !109, inlinedAt: !148)
!154 = !DILocation(line: 59, column: 23, scope: !109, inlinedAt: !148)
!155 = !DILocation(line: 61, column: 23, scope: !109, inlinedAt: !148)
!156 = !DILocation(line: 62, column: 11, scope: !109, inlinedAt: !148)
!157 = !{!158, !158, i64 0}
!158 = !{!"int", !67, i64 0}
!159 = !DILocation(line: 63, column: 3, scope: !109, inlinedAt: !148)
!160 = !DILocation(line: 63, column: 11, scope: !109, inlinedAt: !148)
!161 = !DILocation(line: 64, column: 3, scope: !109, inlinedAt: !148)
!162 = !DILocation(line: 64, column: 11, scope: !109, inlinedAt: !148)
!163 = !DILocation(line: 65, column: 3, scope: !109, inlinedAt: !148)
!164 = !DILocation(line: 65, column: 11, scope: !109, inlinedAt: !148)
!165 = !DILocation(line: 66, column: 11, scope: !109, inlinedAt: !148)
!166 = !DILocation(line: 67, column: 3, scope: !109, inlinedAt: !148)
!167 = !DILocation(line: 67, column: 11, scope: !109, inlinedAt: !148)
!168 = !DILocation(line: 68, column: 3, scope: !109, inlinedAt: !148)
!169 = !DILocation(line: 68, column: 11, scope: !109, inlinedAt: !148)
!170 = !DILocation(line: 69, column: 3, scope: !109, inlinedAt: !148)
!171 = !DILocation(line: 69, column: 11, scope: !109, inlinedAt: !148)
!172 = !DILocation(line: 71, column: 23, scope: !109, inlinedAt: !148)
!173 = !DILocation(line: 72, column: 11, scope: !109, inlinedAt: !148)
!174 = !DILocation(line: 73, column: 3, scope: !109, inlinedAt: !148)
!175 = !DILocation(line: 73, column: 11, scope: !109, inlinedAt: !148)
!176 = !DILocation(line: 74, column: 3, scope: !109, inlinedAt: !148)
!177 = !DILocation(line: 74, column: 11, scope: !109, inlinedAt: !148)
!178 = !DILocation(line: 75, column: 3, scope: !109, inlinedAt: !148)
!179 = !DILocation(line: 75, column: 11, scope: !109, inlinedAt: !148)
!180 = !DILocation(line: 76, column: 11, scope: !109, inlinedAt: !148)
!181 = !DILocation(line: 77, column: 3, scope: !109, inlinedAt: !148)
!182 = !DILocation(line: 77, column: 11, scope: !109, inlinedAt: !148)
!183 = !DILocation(line: 78, column: 3, scope: !109, inlinedAt: !148)
!184 = !DILocation(line: 78, column: 11, scope: !109, inlinedAt: !148)
!185 = !DILocation(line: 79, column: 3, scope: !109, inlinedAt: !148)
!186 = !DILocation(line: 79, column: 11, scope: !109, inlinedAt: !148)
!187 = !DILocation(line: 81, column: 23, scope: !109, inlinedAt: !148)
!188 = !DILocation(line: 83, column: 23, scope: !109, inlinedAt: !148)
!189 = !DILocation(line: 84, column: 11, scope: !109, inlinedAt: !148)
!190 = !DILocation(line: 85, column: 3, scope: !109, inlinedAt: !148)
!191 = !DILocation(line: 85, column: 11, scope: !109, inlinedAt: !148)
!192 = !DILocation(line: 86, column: 3, scope: !109, inlinedAt: !148)
!193 = !DILocation(line: 86, column: 11, scope: !109, inlinedAt: !148)
!194 = !DILocation(line: 87, column: 3, scope: !109, inlinedAt: !148)
!195 = !DILocation(line: 87, column: 11, scope: !109, inlinedAt: !148)
!196 = !DILocation(line: 88, column: 11, scope: !109, inlinedAt: !148)
!197 = !DILocation(line: 89, column: 3, scope: !109, inlinedAt: !148)
!198 = !DILocation(line: 89, column: 11, scope: !109, inlinedAt: !148)
!199 = !DILocation(line: 90, column: 3, scope: !109, inlinedAt: !148)
!200 = !DILocation(line: 90, column: 11, scope: !109, inlinedAt: !148)
!201 = !DILocation(line: 91, column: 3, scope: !109, inlinedAt: !148)
!202 = !DILocation(line: 91, column: 11, scope: !109, inlinedAt: !148)
!203 = !DILocation(line: 93, column: 23, scope: !109, inlinedAt: !148)
!204 = !DILocation(line: 94, column: 11, scope: !109, inlinedAt: !148)
!205 = !DILocation(line: 95, column: 3, scope: !109, inlinedAt: !148)
!206 = !DILocation(line: 95, column: 11, scope: !109, inlinedAt: !148)
!207 = !DILocation(line: 96, column: 3, scope: !109, inlinedAt: !148)
!208 = !DILocation(line: 96, column: 11, scope: !109, inlinedAt: !148)
!209 = !DILocation(line: 97, column: 3, scope: !109, inlinedAt: !148)
!210 = !DILocation(line: 97, column: 11, scope: !109, inlinedAt: !148)
!211 = !DILocation(line: 98, column: 11, scope: !109, inlinedAt: !148)
!212 = !DILocation(line: 99, column: 3, scope: !109, inlinedAt: !148)
!213 = !DILocation(line: 99, column: 11, scope: !109, inlinedAt: !148)
!214 = !DILocation(line: 100, column: 3, scope: !109, inlinedAt: !148)
!215 = !DILocation(line: 100, column: 11, scope: !109, inlinedAt: !148)
!216 = !DILocation(line: 101, column: 3, scope: !109, inlinedAt: !148)
!217 = !DILocation(line: 101, column: 11, scope: !109, inlinedAt: !148)
!218 = !DILocation(line: 103, column: 22, scope: !109, inlinedAt: !148)
!219 = !DILocation(line: 105, column: 23, scope: !109, inlinedAt: !148)
!220 = !DILocation(line: 106, column: 11, scope: !109, inlinedAt: !148)
!221 = !DILocation(line: 107, column: 3, scope: !109, inlinedAt: !148)
!222 = !DILocation(line: 107, column: 11, scope: !109, inlinedAt: !148)
!223 = !DILocation(line: 108, column: 3, scope: !109, inlinedAt: !148)
!224 = !DILocation(line: 108, column: 11, scope: !109, inlinedAt: !148)
!225 = !DILocation(line: 109, column: 3, scope: !109, inlinedAt: !148)
!226 = !DILocation(line: 109, column: 11, scope: !109, inlinedAt: !148)
!227 = !DILocation(line: 110, column: 11, scope: !109, inlinedAt: !148)
!228 = !DILocation(line: 111, column: 3, scope: !109, inlinedAt: !148)
!229 = !DILocation(line: 111, column: 11, scope: !109, inlinedAt: !148)
!230 = !DILocation(line: 112, column: 3, scope: !109, inlinedAt: !148)
!231 = !DILocation(line: 112, column: 11, scope: !109, inlinedAt: !148)
!232 = !DILocation(line: 113, column: 3, scope: !109, inlinedAt: !148)
!233 = !DILocation(line: 113, column: 11, scope: !109, inlinedAt: !148)
!234 = !DILocation(line: 115, column: 23, scope: !109, inlinedAt: !148)
!235 = !DILocation(line: 116, column: 11, scope: !109, inlinedAt: !148)
!236 = !DILocation(line: 117, column: 3, scope: !109, inlinedAt: !148)
!237 = !DILocation(line: 117, column: 11, scope: !109, inlinedAt: !148)
!238 = !DILocation(line: 118, column: 3, scope: !109, inlinedAt: !148)
!239 = !DILocation(line: 118, column: 11, scope: !109, inlinedAt: !148)
!240 = !DILocation(line: 119, column: 3, scope: !109, inlinedAt: !148)
!241 = !DILocation(line: 119, column: 11, scope: !109, inlinedAt: !148)
!242 = !DILocation(line: 120, column: 11, scope: !109, inlinedAt: !148)
!243 = !DILocation(line: 121, column: 3, scope: !109, inlinedAt: !148)
!244 = !DILocation(line: 121, column: 11, scope: !109, inlinedAt: !148)
!245 = !DILocation(line: 122, column: 3, scope: !109, inlinedAt: !148)
!246 = !DILocation(line: 122, column: 11, scope: !109, inlinedAt: !148)
!247 = !DILocation(line: 123, column: 3, scope: !109, inlinedAt: !148)
!248 = !DILocation(line: 123, column: 11, scope: !109, inlinedAt: !148)
!249 = !DILocation(line: 125, column: 23, scope: !109, inlinedAt: !148)
!250 = !DILocation(line: 127, column: 25, scope: !109, inlinedAt: !148)
!251 = !DILocation(line: 128, column: 10, scope: !109, inlinedAt: !148)
!252 = !DILocation(line: 129, column: 3, scope: !109, inlinedAt: !148)
!253 = !DILocation(line: 129, column: 10, scope: !109, inlinedAt: !148)
!254 = !DILocation(line: 130, column: 3, scope: !109, inlinedAt: !148)
!255 = !DILocation(line: 130, column: 10, scope: !109, inlinedAt: !148)
!256 = !DILocation(line: 131, column: 3, scope: !109, inlinedAt: !148)
!257 = !DILocation(line: 131, column: 10, scope: !109, inlinedAt: !148)
!258 = !DILocation(line: 132, column: 12, scope: !109, inlinedAt: !148)
!259 = !DILocation(line: 133, column: 3, scope: !109, inlinedAt: !148)
!260 = !DILocation(line: 133, column: 12, scope: !109, inlinedAt: !148)
!261 = !DILocation(line: 134, column: 3, scope: !109, inlinedAt: !148)
!262 = !DILocation(line: 134, column: 12, scope: !109, inlinedAt: !148)
!263 = !DILocation(line: 135, column: 3, scope: !109, inlinedAt: !148)
!264 = !DILocation(line: 135, column: 12, scope: !109, inlinedAt: !148)
!265 = !DILocation(line: 137, column: 25, scope: !109, inlinedAt: !148)
!266 = !DILocation(line: 138, column: 12, scope: !109, inlinedAt: !148)
!267 = !DILocation(line: 139, column: 3, scope: !109, inlinedAt: !148)
!268 = !DILocation(line: 139, column: 12, scope: !109, inlinedAt: !148)
!269 = !DILocation(line: 140, column: 3, scope: !109, inlinedAt: !148)
!270 = !DILocation(line: 140, column: 12, scope: !109, inlinedAt: !148)
!271 = !DILocation(line: 141, column: 3, scope: !109, inlinedAt: !148)
!272 = !DILocation(line: 141, column: 12, scope: !109, inlinedAt: !148)
!273 = !DILocation(line: 142, column: 12, scope: !109, inlinedAt: !148)
!274 = !DILocation(line: 143, column: 3, scope: !109, inlinedAt: !148)
!275 = !DILocation(line: 143, column: 12, scope: !109, inlinedAt: !148)
!276 = !DILocation(line: 144, column: 3, scope: !109, inlinedAt: !148)
!277 = !DILocation(line: 144, column: 12, scope: !109, inlinedAt: !148)
!278 = !DILocation(line: 145, column: 3, scope: !109, inlinedAt: !148)
!279 = !DILocation(line: 145, column: 12, scope: !109, inlinedAt: !148)
!280 = !DILocation(line: 147, column: 23, scope: !109, inlinedAt: !148)
!281 = !DILocation(line: 148, column: 12, scope: !109, inlinedAt: !148)
!282 = !DILocation(line: 149, column: 3, scope: !109, inlinedAt: !148)
!283 = !DILocation(line: 149, column: 12, scope: !109, inlinedAt: !148)
!284 = !DILocation(line: 150, column: 3, scope: !109, inlinedAt: !148)
!285 = !DILocation(line: 150, column: 12, scope: !109, inlinedAt: !148)
!286 = !DILocation(line: 151, column: 3, scope: !109, inlinedAt: !148)
!287 = !DILocation(line: 151, column: 12, scope: !109, inlinedAt: !148)
!288 = !DILocation(line: 152, column: 10, scope: !109, inlinedAt: !148)
!289 = !DILocation(line: 153, column: 3, scope: !109, inlinedAt: !148)
!290 = !DILocation(line: 153, column: 10, scope: !109, inlinedAt: !148)
!291 = !DILocation(line: 154, column: 3, scope: !109, inlinedAt: !148)
!292 = !DILocation(line: 154, column: 10, scope: !109, inlinedAt: !148)
!293 = !DILocation(line: 155, column: 3, scope: !109, inlinedAt: !148)
!294 = !DILocation(line: 155, column: 10, scope: !109, inlinedAt: !148)
!295 = !DILocation(line: 156, column: 10, scope: !109, inlinedAt: !148)
!296 = !DILocation(line: 325, column: 3, scope: !34)
!297 = !DILocalVariable(name: "state", arg: 1, scope: !298, file: !1, line: 244, type: !112)
!298 = distinct !DISubprogram(name: "Hacl_Impl_SHA2_256_update_multi", scope: !1, file: !1, line: 244, type: !299, scopeLine: 245, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !301)
!299 = !DISubroutineType(types: !300)
!300 = !{null, !112, !25, !3}
!301 = !{!297, !302, !303, !304, !306}
!302 = !DILocalVariable(name: "data", arg: 2, scope: !298, file: !1, line: 244, type: !25)
!303 = !DILocalVariable(name: "n1", arg: 3, scope: !298, file: !1, line: 244, type: !3)
!304 = !DILocalVariable(name: "i", scope: !305, file: !1, line: 246, type: !3)
!305 = distinct !DILexicalBlock(scope: !298, file: !1, line: 246, column: 3)
!306 = !DILocalVariable(name: "b", scope: !307, file: !1, line: 248, type: !25)
!307 = distinct !DILexicalBlock(scope: !308, file: !1, line: 247, column: 3)
!308 = distinct !DILexicalBlock(scope: !305, file: !1, line: 246, column: 3)
!309 = !DILocation(line: 0, scope: !298, inlinedAt: !310)
!310 = distinct !DILocation(line: 326, column: 3, scope: !34)
!311 = !DILocation(line: 0, scope: !305, inlinedAt: !310)
!312 = !DILocation(line: 246, column: 37, scope: !308, inlinedAt: !310)
!313 = !DILocation(line: 246, column: 3, scope: !305, inlinedAt: !310)
!314 = !DILocation(line: 248, column: 27, scope: !307, inlinedAt: !310)
!315 = !DILocation(line: 248, column: 23, scope: !307, inlinedAt: !310)
!316 = !DILocation(line: 0, scope: !307, inlinedAt: !310)
!317 = !DILocation(line: 249, column: 5, scope: !307, inlinedAt: !310)
!318 = !DILocation(line: 246, column: 49, scope: !308, inlinedAt: !310)
!319 = distinct !{!319, !313, !320, !99, !100}
!320 = !DILocation(line: 250, column: 3, scope: !305, inlinedAt: !310)
!321 = !DILocalVariable(name: "state", arg: 1, scope: !322, file: !1, line: 253, type: !112)
!322 = distinct !DISubprogram(name: "Hacl_Impl_SHA2_256_update_last", scope: !1, file: !1, line: 253, type: !299, scopeLine: 254, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !323)
!323 = !{!321, !324, !325, !326, !330, !331, !332, !333, !334, !335, !336, !337}
!324 = !DILocalVariable(name: "data", arg: 2, scope: !322, file: !1, line: 253, type: !25)
!325 = !DILocalVariable(name: "len", arg: 3, scope: !322, file: !1, line: 253, type: !3)
!326 = !DILocalVariable(name: "blocks", scope: !322, file: !1, line: 255, type: !327)
!327 = !DICompositeType(tag: DW_TAG_array_type, baseType: !8, size: 1024, elements: !328)
!328 = !{!329}
!329 = !DISubrange(count: 128)
!330 = !DILocalVariable(name: "nb", scope: !322, file: !1, line: 256, type: !3)
!331 = !DILocalVariable(name: "final_blocks", scope: !322, file: !1, line: 261, type: !25)
!332 = !DILocalVariable(name: "n1", scope: !322, file: !1, line: 267, type: !3)
!333 = !DILocalVariable(name: "padding", scope: !322, file: !1, line: 268, type: !25)
!334 = !DILocalVariable(name: "pad0len", scope: !322, file: !1, line: 270, type: !3)
!335 = !DILocalVariable(name: "buf1", scope: !322, file: !1, line: 271, type: !25)
!336 = !DILocalVariable(name: "buf2", scope: !322, file: !1, line: 272, type: !25)
!337 = !DILocalVariable(name: "encodedlen", scope: !322, file: !1, line: 274, type: !11)
!338 = !DILocation(line: 0, scope: !322, inlinedAt: !339)
!339 = distinct !DILocation(line: 327, column: 3, scope: !34)
!340 = !DILocation(line: 255, column: 3, scope: !322, inlinedAt: !339)
!341 = !DILocation(line: 255, column: 11, scope: !322, inlinedAt: !339)
!342 = !DILocation(line: 257, column: 11, scope: !343, inlinedAt: !339)
!343 = distinct !DILexicalBlock(scope: !322, file: !1, line: 257, column: 7)
!344 = !DILocation(line: 262, column: 7, scope: !322, inlinedAt: !339)
!345 = !DILocation(line: 266, column: 3, scope: !322, inlinedAt: !339)
!346 = !DILocation(line: 267, column: 17, scope: !322, inlinedAt: !339)
!347 = !DILocation(line: 268, column: 35, scope: !322, inlinedAt: !339)
!348 = !DILocation(line: 270, column: 28, scope: !322, inlinedAt: !339)
!349 = !DILocation(line: 270, column: 83, scope: !322, inlinedAt: !339)
!350 = !DILocation(line: 272, column: 27, scope: !322, inlinedAt: !339)
!351 = !DILocation(line: 272, column: 42, scope: !322, inlinedAt: !339)
!352 = !DILocation(line: 274, column: 17, scope: !322, inlinedAt: !339)
!353 = !DILocation(line: 274, column: 73, scope: !322, inlinedAt: !339)
!354 = !DILocation(line: 275, column: 12, scope: !322, inlinedAt: !339)
!355 = !DILocalVariable(name: "__bsx", arg: 1, scope: !356, file: !357, line: 70, type: !12)
!356 = distinct !DISubprogram(name: "__bswap_64", scope: !357, file: !357, line: 70, type: !358, scopeLine: 71, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !360)
!357 = !DIFile(filename: "/usr/include/bits/byteswap.h", directory: "", checksumkind: CSK_MD5, checksum: "98f83253ffd9c64e7486789204e9fa05")
!358 = !DISubroutineType(types: !359)
!359 = !{!12, !12}
!360 = !{!355}
!361 = !DILocation(line: 0, scope: !356, inlinedAt: !362)
!362 = distinct !DILocation(line: 276, column: 3, scope: !322, inlinedAt: !339)
!363 = !DILocation(line: 75, column: 10, scope: !356, inlinedAt: !362)
!364 = !DILocalVariable(name: "b", arg: 1, scope: !365, file: !366, line: 357, type: !25)
!365 = distinct !DISubprogram(name: "store64", scope: !366, file: !366, line: 357, type: !367, scopeLine: 357, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !369)
!366 = !DIFile(filename: "hacl-c/hacl-c/kremlib.h", directory: "/mnt/c/Users/fwill/Documents/HS24/semester_project/tools/binsec/binsec/examples/hacl", checksumkind: CSK_MD5, checksum: "cde125f1f98cb7b9ee1f380d4178ebe4")
!367 = !DISubroutineType(types: !368)
!368 = !{null, !25, !11}
!369 = !{!364, !370}
!370 = !DILocalVariable(name: "i", arg: 2, scope: !365, file: !366, line: 357, type: !11)
!371 = !DILocation(line: 0, scope: !365, inlinedAt: !372)
!372 = distinct !DILocation(line: 276, column: 3, scope: !322, inlinedAt: !339)
!373 = !DILocation(line: 357, column: 54, scope: !365, inlinedAt: !372)
!374 = !DILocation(line: 0, scope: !298, inlinedAt: !375)
!375 = distinct !DILocation(line: 277, column: 3, scope: !322, inlinedAt: !339)
!376 = !DILocation(line: 0, scope: !305, inlinedAt: !375)
!377 = !DILocation(line: 248, column: 27, scope: !307, inlinedAt: !375)
!378 = !DILocation(line: 248, column: 23, scope: !307, inlinedAt: !375)
!379 = !DILocation(line: 0, scope: !307, inlinedAt: !375)
!380 = !DILocation(line: 249, column: 5, scope: !307, inlinedAt: !375)
!381 = !DILocation(line: 246, column: 49, scope: !308, inlinedAt: !375)
!382 = !DILocation(line: 246, column: 37, scope: !308, inlinedAt: !375)
!383 = !DILocation(line: 246, column: 3, scope: !305, inlinedAt: !375)
!384 = distinct !{!384, !383, !385, !99, !100}
!385 = !DILocation(line: 250, column: 3, scope: !305, inlinedAt: !375)
!386 = !DILocation(line: 278, column: 1, scope: !322, inlinedAt: !339)
!387 = !DILocalVariable(name: "state", arg: 1, scope: !388, file: !1, line: 280, type: !112)
!388 = distinct !DISubprogram(name: "Hacl_Impl_SHA2_256_finish", scope: !1, file: !1, line: 280, type: !389, scopeLine: 281, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !391)
!389 = !DISubroutineType(types: !390)
!390 = !{null, !112, !25}
!391 = !{!387, !392, !393}
!392 = !DILocalVariable(name: "hash1", arg: 2, scope: !388, file: !1, line: 280, type: !25)
!393 = !DILocalVariable(name: "hash_w", scope: !388, file: !1, line: 282, type: !112)
!394 = !DILocation(line: 0, scope: !388, inlinedAt: !395)
!395 = distinct !DILocation(line: 329, column: 3, scope: !34)
!396 = !DILocalVariable(name: "output", arg: 1, scope: !397, file: !1, line: 39, type: !25)
!397 = distinct !DISubprogram(name: "Hacl_Hash_Lib_LoadStore_uint32s_to_be_bytes", scope: !1, file: !1, line: 39, type: !398, scopeLine: 40, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !400)
!398 = !DISubroutineType(types: !399)
!399 = !{null, !25, !112, !3}
!400 = !{!396, !401, !402, !403, !405, !408}
!401 = !DILocalVariable(name: "input", arg: 2, scope: !397, file: !1, line: 39, type: !112)
!402 = !DILocalVariable(name: "len", arg: 3, scope: !397, file: !1, line: 39, type: !3)
!403 = !DILocalVariable(name: "i", scope: !404, file: !1, line: 41, type: !3)
!404 = distinct !DILexicalBlock(scope: !397, file: !1, line: 41, column: 3)
!405 = !DILocalVariable(name: "hd1", scope: !406, file: !1, line: 43, type: !3)
!406 = distinct !DILexicalBlock(scope: !407, file: !1, line: 42, column: 3)
!407 = distinct !DILexicalBlock(scope: !404, file: !1, line: 41, column: 3)
!408 = !DILocalVariable(name: "x0", scope: !406, file: !1, line: 44, type: !25)
!409 = !DILocation(line: 0, scope: !397, inlinedAt: !410)
!410 = distinct !DILocation(line: 283, column: 3, scope: !388, inlinedAt: !395)
!411 = !DILocation(line: 0, scope: !404, inlinedAt: !410)
!412 = !DILocation(line: 41, column: 3, scope: !404, inlinedAt: !410)
!413 = !DILocation(line: 43, column: 20, scope: !406, inlinedAt: !410)
!414 = !DILocation(line: 0, scope: !406, inlinedAt: !410)
!415 = !DILocation(line: 44, column: 41, scope: !406, inlinedAt: !410)
!416 = !DILocation(line: 44, column: 26, scope: !406, inlinedAt: !410)
!417 = !DILocalVariable(name: "__bsx", arg: 1, scope: !418, file: !357, line: 49, type: !5)
!418 = distinct !DISubprogram(name: "__bswap_32", scope: !357, file: !357, line: 49, type: !419, scopeLine: 50, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !421)
!419 = !DISubroutineType(types: !420)
!420 = !{!5, !5}
!421 = !{!417}
!422 = !DILocation(line: 0, scope: !418, inlinedAt: !423)
!423 = distinct !DILocation(line: 45, column: 5, scope: !406, inlinedAt: !410)
!424 = !DILocation(line: 54, column: 10, scope: !418, inlinedAt: !423)
!425 = !DILocalVariable(name: "b", arg: 1, scope: !426, file: !366, line: 355, type: !25)
!426 = distinct !DISubprogram(name: "store32", scope: !366, file: !366, line: 355, type: !427, scopeLine: 355, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !429)
!427 = !DISubroutineType(types: !428)
!428 = !{null, !25, !3}
!429 = !{!425, !430}
!430 = !DILocalVariable(name: "i", arg: 2, scope: !426, file: !366, line: 355, type: !3)
!431 = !DILocation(line: 0, scope: !426, inlinedAt: !432)
!432 = distinct !DILocation(line: 45, column: 5, scope: !406, inlinedAt: !410)
!433 = !DILocation(line: 355, column: 54, scope: !426, inlinedAt: !432)
!434 = !DILocation(line: 41, column: 50, scope: !407, inlinedAt: !410)
!435 = !DILocation(line: 41, column: 37, scope: !407, inlinedAt: !410)
!436 = distinct !{!436, !412, !437, !99, !100}
!437 = !DILocation(line: 46, column: 3, scope: !404, inlinedAt: !410)
!438 = !DILocation(line: 0, scope: !75, inlinedAt: !439)
!439 = distinct !DILocation(line: 331, column: 3, scope: !34)
!440 = !DILocation(line: 303, column: 18, scope: !85, inlinedAt: !439)
!441 = !DILocation(line: 0, scope: !85, inlinedAt: !439)
!442 = !DILocation(line: 304, column: 18, scope: !85, inlinedAt: !439)
!443 = !DILocation(line: 305, column: 15, scope: !85, inlinedAt: !439)
!444 = !DILocation(line: 305, column: 10, scope: !85, inlinedAt: !439)
!445 = !DILocation(line: 301, column: 50, scope: !86, inlinedAt: !439)
!446 = !DILocation(line: 301, column: 37, scope: !86, inlinedAt: !439)
!447 = !DILocation(line: 301, column: 3, scope: !75, inlinedAt: !439)
!448 = distinct !{!448, !447, !449, !99, !100}
!449 = !DILocation(line: 306, column: 3, scope: !75, inlinedAt: !439)
!450 = !DILocation(line: 332, column: 3, scope: !34)
!451 = !DILocation(line: 332, column: 12, scope: !34)
!452 = !DILocation(line: 333, column: 27, scope: !34)
!453 = !DILocation(line: 0, scope: !109, inlinedAt: !454)
!454 = distinct !DILocation(line: 333, column: 3, scope: !34)
!455 = !DILocation(line: 51, column: 24, scope: !109, inlinedAt: !454)
!456 = !DILocation(line: 53, column: 26, scope: !109, inlinedAt: !454)
!457 = !DILocation(line: 55, column: 22, scope: !109, inlinedAt: !454)
!458 = !DILocation(line: 56, column: 21, scope: !109, inlinedAt: !454)
!459 = !DILocation(line: 57, column: 21, scope: !109, inlinedAt: !454)
!460 = !DILocation(line: 59, column: 23, scope: !109, inlinedAt: !454)
!461 = !DILocation(line: 61, column: 23, scope: !109, inlinedAt: !454)
!462 = !DILocation(line: 62, column: 11, scope: !109, inlinedAt: !454)
!463 = !DILocation(line: 63, column: 3, scope: !109, inlinedAt: !454)
!464 = !DILocation(line: 63, column: 11, scope: !109, inlinedAt: !454)
!465 = !DILocation(line: 64, column: 3, scope: !109, inlinedAt: !454)
!466 = !DILocation(line: 64, column: 11, scope: !109, inlinedAt: !454)
!467 = !DILocation(line: 65, column: 3, scope: !109, inlinedAt: !454)
!468 = !DILocation(line: 65, column: 11, scope: !109, inlinedAt: !454)
!469 = !DILocation(line: 66, column: 11, scope: !109, inlinedAt: !454)
!470 = !DILocation(line: 67, column: 3, scope: !109, inlinedAt: !454)
!471 = !DILocation(line: 67, column: 11, scope: !109, inlinedAt: !454)
!472 = !DILocation(line: 68, column: 3, scope: !109, inlinedAt: !454)
!473 = !DILocation(line: 68, column: 11, scope: !109, inlinedAt: !454)
!474 = !DILocation(line: 69, column: 3, scope: !109, inlinedAt: !454)
!475 = !DILocation(line: 69, column: 11, scope: !109, inlinedAt: !454)
!476 = !DILocation(line: 71, column: 23, scope: !109, inlinedAt: !454)
!477 = !DILocation(line: 72, column: 11, scope: !109, inlinedAt: !454)
!478 = !DILocation(line: 73, column: 3, scope: !109, inlinedAt: !454)
!479 = !DILocation(line: 73, column: 11, scope: !109, inlinedAt: !454)
!480 = !DILocation(line: 74, column: 3, scope: !109, inlinedAt: !454)
!481 = !DILocation(line: 74, column: 11, scope: !109, inlinedAt: !454)
!482 = !DILocation(line: 75, column: 3, scope: !109, inlinedAt: !454)
!483 = !DILocation(line: 75, column: 11, scope: !109, inlinedAt: !454)
!484 = !DILocation(line: 76, column: 11, scope: !109, inlinedAt: !454)
!485 = !DILocation(line: 77, column: 3, scope: !109, inlinedAt: !454)
!486 = !DILocation(line: 77, column: 11, scope: !109, inlinedAt: !454)
!487 = !DILocation(line: 78, column: 3, scope: !109, inlinedAt: !454)
!488 = !DILocation(line: 78, column: 11, scope: !109, inlinedAt: !454)
!489 = !DILocation(line: 79, column: 3, scope: !109, inlinedAt: !454)
!490 = !DILocation(line: 79, column: 11, scope: !109, inlinedAt: !454)
!491 = !DILocation(line: 81, column: 23, scope: !109, inlinedAt: !454)
!492 = !DILocation(line: 83, column: 23, scope: !109, inlinedAt: !454)
!493 = !DILocation(line: 84, column: 11, scope: !109, inlinedAt: !454)
!494 = !DILocation(line: 85, column: 3, scope: !109, inlinedAt: !454)
!495 = !DILocation(line: 85, column: 11, scope: !109, inlinedAt: !454)
!496 = !DILocation(line: 86, column: 3, scope: !109, inlinedAt: !454)
!497 = !DILocation(line: 86, column: 11, scope: !109, inlinedAt: !454)
!498 = !DILocation(line: 87, column: 3, scope: !109, inlinedAt: !454)
!499 = !DILocation(line: 87, column: 11, scope: !109, inlinedAt: !454)
!500 = !DILocation(line: 88, column: 11, scope: !109, inlinedAt: !454)
!501 = !DILocation(line: 89, column: 3, scope: !109, inlinedAt: !454)
!502 = !DILocation(line: 89, column: 11, scope: !109, inlinedAt: !454)
!503 = !DILocation(line: 90, column: 3, scope: !109, inlinedAt: !454)
!504 = !DILocation(line: 90, column: 11, scope: !109, inlinedAt: !454)
!505 = !DILocation(line: 91, column: 3, scope: !109, inlinedAt: !454)
!506 = !DILocation(line: 91, column: 11, scope: !109, inlinedAt: !454)
!507 = !DILocation(line: 93, column: 23, scope: !109, inlinedAt: !454)
!508 = !DILocation(line: 94, column: 11, scope: !109, inlinedAt: !454)
!509 = !DILocation(line: 95, column: 3, scope: !109, inlinedAt: !454)
!510 = !DILocation(line: 95, column: 11, scope: !109, inlinedAt: !454)
!511 = !DILocation(line: 96, column: 3, scope: !109, inlinedAt: !454)
!512 = !DILocation(line: 96, column: 11, scope: !109, inlinedAt: !454)
!513 = !DILocation(line: 97, column: 3, scope: !109, inlinedAt: !454)
!514 = !DILocation(line: 97, column: 11, scope: !109, inlinedAt: !454)
!515 = !DILocation(line: 98, column: 11, scope: !109, inlinedAt: !454)
!516 = !DILocation(line: 99, column: 3, scope: !109, inlinedAt: !454)
!517 = !DILocation(line: 99, column: 11, scope: !109, inlinedAt: !454)
!518 = !DILocation(line: 100, column: 3, scope: !109, inlinedAt: !454)
!519 = !DILocation(line: 100, column: 11, scope: !109, inlinedAt: !454)
!520 = !DILocation(line: 101, column: 3, scope: !109, inlinedAt: !454)
!521 = !DILocation(line: 101, column: 11, scope: !109, inlinedAt: !454)
!522 = !DILocation(line: 103, column: 22, scope: !109, inlinedAt: !454)
!523 = !DILocation(line: 105, column: 23, scope: !109, inlinedAt: !454)
!524 = !DILocation(line: 106, column: 11, scope: !109, inlinedAt: !454)
!525 = !DILocation(line: 107, column: 3, scope: !109, inlinedAt: !454)
!526 = !DILocation(line: 107, column: 11, scope: !109, inlinedAt: !454)
!527 = !DILocation(line: 108, column: 3, scope: !109, inlinedAt: !454)
!528 = !DILocation(line: 108, column: 11, scope: !109, inlinedAt: !454)
!529 = !DILocation(line: 109, column: 3, scope: !109, inlinedAt: !454)
!530 = !DILocation(line: 109, column: 11, scope: !109, inlinedAt: !454)
!531 = !DILocation(line: 110, column: 11, scope: !109, inlinedAt: !454)
!532 = !DILocation(line: 111, column: 3, scope: !109, inlinedAt: !454)
!533 = !DILocation(line: 111, column: 11, scope: !109, inlinedAt: !454)
!534 = !DILocation(line: 112, column: 3, scope: !109, inlinedAt: !454)
!535 = !DILocation(line: 112, column: 11, scope: !109, inlinedAt: !454)
!536 = !DILocation(line: 113, column: 3, scope: !109, inlinedAt: !454)
!537 = !DILocation(line: 113, column: 11, scope: !109, inlinedAt: !454)
!538 = !DILocation(line: 115, column: 23, scope: !109, inlinedAt: !454)
!539 = !DILocation(line: 116, column: 11, scope: !109, inlinedAt: !454)
!540 = !DILocation(line: 117, column: 3, scope: !109, inlinedAt: !454)
!541 = !DILocation(line: 117, column: 11, scope: !109, inlinedAt: !454)
!542 = !DILocation(line: 118, column: 3, scope: !109, inlinedAt: !454)
!543 = !DILocation(line: 118, column: 11, scope: !109, inlinedAt: !454)
!544 = !DILocation(line: 119, column: 3, scope: !109, inlinedAt: !454)
!545 = !DILocation(line: 119, column: 11, scope: !109, inlinedAt: !454)
!546 = !DILocation(line: 120, column: 11, scope: !109, inlinedAt: !454)
!547 = !DILocation(line: 121, column: 3, scope: !109, inlinedAt: !454)
!548 = !DILocation(line: 121, column: 11, scope: !109, inlinedAt: !454)
!549 = !DILocation(line: 122, column: 3, scope: !109, inlinedAt: !454)
!550 = !DILocation(line: 122, column: 11, scope: !109, inlinedAt: !454)
!551 = !DILocation(line: 123, column: 3, scope: !109, inlinedAt: !454)
!552 = !DILocation(line: 123, column: 11, scope: !109, inlinedAt: !454)
!553 = !DILocation(line: 125, column: 23, scope: !109, inlinedAt: !454)
!554 = !DILocation(line: 127, column: 25, scope: !109, inlinedAt: !454)
!555 = !DILocation(line: 128, column: 10, scope: !109, inlinedAt: !454)
!556 = !DILocation(line: 129, column: 3, scope: !109, inlinedAt: !454)
!557 = !DILocation(line: 129, column: 10, scope: !109, inlinedAt: !454)
!558 = !DILocation(line: 130, column: 3, scope: !109, inlinedAt: !454)
!559 = !DILocation(line: 130, column: 10, scope: !109, inlinedAt: !454)
!560 = !DILocation(line: 131, column: 3, scope: !109, inlinedAt: !454)
!561 = !DILocation(line: 131, column: 10, scope: !109, inlinedAt: !454)
!562 = !DILocation(line: 132, column: 12, scope: !109, inlinedAt: !454)
!563 = !DILocation(line: 133, column: 3, scope: !109, inlinedAt: !454)
!564 = !DILocation(line: 133, column: 12, scope: !109, inlinedAt: !454)
!565 = !DILocation(line: 134, column: 3, scope: !109, inlinedAt: !454)
!566 = !DILocation(line: 134, column: 12, scope: !109, inlinedAt: !454)
!567 = !DILocation(line: 135, column: 3, scope: !109, inlinedAt: !454)
!568 = !DILocation(line: 135, column: 12, scope: !109, inlinedAt: !454)
!569 = !DILocation(line: 137, column: 25, scope: !109, inlinedAt: !454)
!570 = !DILocation(line: 138, column: 12, scope: !109, inlinedAt: !454)
!571 = !DILocation(line: 139, column: 3, scope: !109, inlinedAt: !454)
!572 = !DILocation(line: 139, column: 12, scope: !109, inlinedAt: !454)
!573 = !DILocation(line: 140, column: 3, scope: !109, inlinedAt: !454)
!574 = !DILocation(line: 140, column: 12, scope: !109, inlinedAt: !454)
!575 = !DILocation(line: 141, column: 3, scope: !109, inlinedAt: !454)
!576 = !DILocation(line: 141, column: 12, scope: !109, inlinedAt: !454)
!577 = !DILocation(line: 142, column: 12, scope: !109, inlinedAt: !454)
!578 = !DILocation(line: 143, column: 3, scope: !109, inlinedAt: !454)
!579 = !DILocation(line: 143, column: 12, scope: !109, inlinedAt: !454)
!580 = !DILocation(line: 144, column: 3, scope: !109, inlinedAt: !454)
!581 = !DILocation(line: 144, column: 12, scope: !109, inlinedAt: !454)
!582 = !DILocation(line: 145, column: 3, scope: !109, inlinedAt: !454)
!583 = !DILocation(line: 145, column: 12, scope: !109, inlinedAt: !454)
!584 = !DILocation(line: 147, column: 23, scope: !109, inlinedAt: !454)
!585 = !DILocation(line: 148, column: 12, scope: !109, inlinedAt: !454)
!586 = !DILocation(line: 149, column: 3, scope: !109, inlinedAt: !454)
!587 = !DILocation(line: 149, column: 12, scope: !109, inlinedAt: !454)
!588 = !DILocation(line: 150, column: 3, scope: !109, inlinedAt: !454)
!589 = !DILocation(line: 150, column: 12, scope: !109, inlinedAt: !454)
!590 = !DILocation(line: 151, column: 3, scope: !109, inlinedAt: !454)
!591 = !DILocation(line: 151, column: 12, scope: !109, inlinedAt: !454)
!592 = !DILocation(line: 152, column: 10, scope: !109, inlinedAt: !454)
!593 = !DILocation(line: 153, column: 3, scope: !109, inlinedAt: !454)
!594 = !DILocation(line: 153, column: 10, scope: !109, inlinedAt: !454)
!595 = !DILocation(line: 154, column: 3, scope: !109, inlinedAt: !454)
!596 = !DILocation(line: 154, column: 10, scope: !109, inlinedAt: !454)
!597 = !DILocation(line: 155, column: 3, scope: !109, inlinedAt: !454)
!598 = !DILocation(line: 155, column: 10, scope: !109, inlinedAt: !454)
!599 = !DILocation(line: 156, column: 10, scope: !109, inlinedAt: !454)
!600 = !DILocation(line: 334, column: 3, scope: !34)
!601 = !DILocation(line: 0, scope: !322, inlinedAt: !602)
!602 = distinct !DILocation(line: 335, column: 3, scope: !34)
!603 = !DILocation(line: 255, column: 3, scope: !322, inlinedAt: !602)
!604 = !DILocation(line: 255, column: 11, scope: !322, inlinedAt: !602)
!605 = !DILocation(line: 262, column: 7, scope: !322, inlinedAt: !602)
!606 = !DILocation(line: 266, column: 3, scope: !322, inlinedAt: !602)
!607 = !DILocation(line: 267, column: 17, scope: !322, inlinedAt: !602)
!608 = !DILocation(line: 268, column: 35, scope: !322, inlinedAt: !602)
!609 = !DILocation(line: 272, column: 42, scope: !322, inlinedAt: !602)
!610 = !DILocation(line: 274, column: 17, scope: !322, inlinedAt: !602)
!611 = !DILocation(line: 274, column: 30, scope: !322, inlinedAt: !602)
!612 = !DILocation(line: 274, column: 56, scope: !322, inlinedAt: !602)
!613 = !DILocation(line: 275, column: 12, scope: !322, inlinedAt: !602)
!614 = !DILocation(line: 0, scope: !356, inlinedAt: !615)
!615 = distinct !DILocation(line: 276, column: 3, scope: !322, inlinedAt: !602)
!616 = !DILocation(line: 75, column: 10, scope: !356, inlinedAt: !615)
!617 = !DILocation(line: 0, scope: !365, inlinedAt: !618)
!618 = distinct !DILocation(line: 276, column: 3, scope: !322, inlinedAt: !602)
!619 = !DILocation(line: 357, column: 54, scope: !365, inlinedAt: !618)
!620 = !DILocation(line: 0, scope: !298, inlinedAt: !621)
!621 = distinct !DILocation(line: 277, column: 3, scope: !322, inlinedAt: !602)
!622 = !DILocation(line: 0, scope: !305, inlinedAt: !621)
!623 = !DILocation(line: 0, scope: !307, inlinedAt: !621)
!624 = !DILocation(line: 249, column: 5, scope: !307, inlinedAt: !621)
!625 = !DILocation(line: 278, column: 1, scope: !322, inlinedAt: !602)
!626 = !DILocation(line: 0, scope: !388, inlinedAt: !627)
!627 = distinct !DILocation(line: 336, column: 3, scope: !34)
!628 = !DILocation(line: 0, scope: !397, inlinedAt: !629)
!629 = distinct !DILocation(line: 283, column: 3, scope: !388, inlinedAt: !627)
!630 = !DILocation(line: 0, scope: !404, inlinedAt: !629)
!631 = !DILocation(line: 41, column: 3, scope: !404, inlinedAt: !629)
!632 = !DILocation(line: 43, column: 20, scope: !406, inlinedAt: !629)
!633 = !DILocation(line: 0, scope: !406, inlinedAt: !629)
!634 = !DILocation(line: 44, column: 41, scope: !406, inlinedAt: !629)
!635 = !DILocation(line: 44, column: 26, scope: !406, inlinedAt: !629)
!636 = !DILocation(line: 0, scope: !418, inlinedAt: !637)
!637 = distinct !DILocation(line: 45, column: 5, scope: !406, inlinedAt: !629)
!638 = !DILocation(line: 54, column: 10, scope: !418, inlinedAt: !637)
!639 = !DILocation(line: 0, scope: !426, inlinedAt: !640)
!640 = distinct !DILocation(line: 45, column: 5, scope: !406, inlinedAt: !629)
!641 = !DILocation(line: 355, column: 54, scope: !426, inlinedAt: !640)
!642 = !DILocation(line: 41, column: 50, scope: !407, inlinedAt: !629)
!643 = !DILocation(line: 41, column: 37, scope: !407, inlinedAt: !629)
!644 = distinct !{!644, !631, !645, !99, !100}
!645 = !DILocation(line: 46, column: 3, scope: !404, inlinedAt: !629)
!646 = !DILocation(line: 337, column: 1, scope: !34)
!647 = distinct !DISubprogram(name: "Hacl_HMAC_SHA2_256_hmac", scope: !1, file: !1, line: 367, type: !648, scopeLine: 374, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !650)
!648 = !DISubroutineType(types: !649)
!649 = !{null, !25, !25, !3, !25, !3}
!650 = !{!651, !652, !653, !654, !655}
!651 = !DILocalVariable(name: "mac", arg: 1, scope: !647, file: !1, line: 368, type: !25)
!652 = !DILocalVariable(name: "key", arg: 2, scope: !647, file: !1, line: 369, type: !25)
!653 = !DILocalVariable(name: "keylen", arg: 3, scope: !647, file: !1, line: 370, type: !3)
!654 = !DILocalVariable(name: "data", arg: 4, scope: !647, file: !1, line: 371, type: !25)
!655 = !DILocalVariable(name: "datalen", arg: 5, scope: !647, file: !1, line: 372, type: !3)
!656 = !DILocation(line: 0, scope: !647)
!657 = !DILocation(line: 0, scope: !658, inlinedAt: !671)
!658 = distinct !DISubprogram(name: "Hacl_Impl_HMAC_SHA2_256_hmac", scope: !1, file: !1, line: 340, type: !648, scopeLine: 347, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !659)
!659 = !{!660, !661, !662, !663, !664, !665, !666, !668}
!660 = !DILocalVariable(name: "mac", arg: 1, scope: !658, file: !1, line: 341, type: !25)
!661 = !DILocalVariable(name: "key", arg: 2, scope: !658, file: !1, line: 342, type: !25)
!662 = !DILocalVariable(name: "keylen", arg: 3, scope: !658, file: !1, line: 343, type: !3)
!663 = !DILocalVariable(name: "data", arg: 4, scope: !658, file: !1, line: 344, type: !25)
!664 = !DILocalVariable(name: "datalen", arg: 5, scope: !658, file: !1, line: 345, type: !3)
!665 = !DILocalVariable(name: "nkey", scope: !658, file: !1, line: 348, type: !41)
!666 = !DILocalVariable(name: "_i", scope: !667, file: !1, line: 349, type: !3)
!667 = distinct !DILexicalBlock(scope: !658, file: !1, line: 349, column: 3)
!668 = !DILocalVariable(name: "nkey0", scope: !669, file: !1, line: 355, type: !25)
!669 = distinct !DILexicalBlock(scope: !670, file: !1, line: 354, column: 3)
!670 = distinct !DILexicalBlock(scope: !658, file: !1, line: 351, column: 7)
!671 = distinct !DILocation(line: 375, column: 3, scope: !647)
!672 = !DILocation(line: 348, column: 3, scope: !658, inlinedAt: !671)
!673 = !DILocation(line: 348, column: 11, scope: !658, inlinedAt: !671)
!674 = !DILocation(line: 0, scope: !667, inlinedAt: !671)
!675 = !DILocation(line: 350, column: 14, scope: !676, inlinedAt: !671)
!676 = distinct !DILexicalBlock(scope: !667, file: !1, line: 349, column: 3)
!677 = !DILocation(line: 351, column: 14, scope: !670, inlinedAt: !671)
!678 = !DILocation(line: 351, column: 7, scope: !658, inlinedAt: !671)
!679 = !DILocation(line: 352, column: 5, scope: !670, inlinedAt: !671)
!680 = !DILocation(line: 0, scope: !669, inlinedAt: !671)
!681 = !DILocalVariable(name: "hash1", arg: 1, scope: !682, file: !1, line: 286, type: !25)
!682 = distinct !DISubprogram(name: "Hacl_Impl_SHA2_256_hash", scope: !1, file: !1, line: 286, type: !77, scopeLine: 287, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !683)
!683 = !{!681, !684, !685, !686, !687, !688, !689, !690}
!684 = !DILocalVariable(name: "input", arg: 2, scope: !682, file: !1, line: 286, type: !25)
!685 = !DILocalVariable(name: "len", arg: 3, scope: !682, file: !1, line: 286, type: !3)
!686 = !DILocalVariable(name: "state", scope: !682, file: !1, line: 288, type: !50)
!687 = !DILocalVariable(name: "n1", scope: !682, file: !1, line: 289, type: !3)
!688 = !DILocalVariable(name: "r", scope: !682, file: !1, line: 290, type: !3)
!689 = !DILocalVariable(name: "input_blocks", scope: !682, file: !1, line: 291, type: !25)
!690 = !DILocalVariable(name: "input_last", scope: !682, file: !1, line: 292, type: !25)
!691 = !DILocation(line: 0, scope: !682, inlinedAt: !692)
!692 = distinct !DILocation(line: 356, column: 5, scope: !669, inlinedAt: !671)
!693 = !DILocation(line: 288, column: 3, scope: !682, inlinedAt: !692)
!694 = !DILocation(line: 288, column: 12, scope: !682, inlinedAt: !692)
!695 = !DILocation(line: 289, column: 21, scope: !682, inlinedAt: !692)
!696 = !DILocation(line: 293, column: 27, scope: !682, inlinedAt: !692)
!697 = !DILocation(line: 0, scope: !109, inlinedAt: !698)
!698 = distinct !DILocation(line: 293, column: 3, scope: !682, inlinedAt: !692)
!699 = !DILocation(line: 51, column: 24, scope: !109, inlinedAt: !698)
!700 = !DILocation(line: 53, column: 26, scope: !109, inlinedAt: !698)
!701 = !DILocation(line: 55, column: 22, scope: !109, inlinedAt: !698)
!702 = !DILocation(line: 56, column: 21, scope: !109, inlinedAt: !698)
!703 = !DILocation(line: 57, column: 21, scope: !109, inlinedAt: !698)
!704 = !DILocation(line: 59, column: 23, scope: !109, inlinedAt: !698)
!705 = !DILocation(line: 61, column: 23, scope: !109, inlinedAt: !698)
!706 = !DILocation(line: 62, column: 11, scope: !109, inlinedAt: !698)
!707 = !DILocation(line: 63, column: 3, scope: !109, inlinedAt: !698)
!708 = !DILocation(line: 63, column: 11, scope: !109, inlinedAt: !698)
!709 = !DILocation(line: 64, column: 3, scope: !109, inlinedAt: !698)
!710 = !DILocation(line: 64, column: 11, scope: !109, inlinedAt: !698)
!711 = !DILocation(line: 65, column: 3, scope: !109, inlinedAt: !698)
!712 = !DILocation(line: 65, column: 11, scope: !109, inlinedAt: !698)
!713 = !DILocation(line: 66, column: 11, scope: !109, inlinedAt: !698)
!714 = !DILocation(line: 67, column: 3, scope: !109, inlinedAt: !698)
!715 = !DILocation(line: 67, column: 11, scope: !109, inlinedAt: !698)
!716 = !DILocation(line: 68, column: 3, scope: !109, inlinedAt: !698)
!717 = !DILocation(line: 68, column: 11, scope: !109, inlinedAt: !698)
!718 = !DILocation(line: 69, column: 3, scope: !109, inlinedAt: !698)
!719 = !DILocation(line: 69, column: 11, scope: !109, inlinedAt: !698)
!720 = !DILocation(line: 71, column: 23, scope: !109, inlinedAt: !698)
!721 = !DILocation(line: 72, column: 11, scope: !109, inlinedAt: !698)
!722 = !DILocation(line: 73, column: 3, scope: !109, inlinedAt: !698)
!723 = !DILocation(line: 73, column: 11, scope: !109, inlinedAt: !698)
!724 = !DILocation(line: 74, column: 3, scope: !109, inlinedAt: !698)
!725 = !DILocation(line: 74, column: 11, scope: !109, inlinedAt: !698)
!726 = !DILocation(line: 75, column: 3, scope: !109, inlinedAt: !698)
!727 = !DILocation(line: 75, column: 11, scope: !109, inlinedAt: !698)
!728 = !DILocation(line: 76, column: 11, scope: !109, inlinedAt: !698)
!729 = !DILocation(line: 77, column: 3, scope: !109, inlinedAt: !698)
!730 = !DILocation(line: 77, column: 11, scope: !109, inlinedAt: !698)
!731 = !DILocation(line: 78, column: 3, scope: !109, inlinedAt: !698)
!732 = !DILocation(line: 78, column: 11, scope: !109, inlinedAt: !698)
!733 = !DILocation(line: 79, column: 3, scope: !109, inlinedAt: !698)
!734 = !DILocation(line: 79, column: 11, scope: !109, inlinedAt: !698)
!735 = !DILocation(line: 81, column: 23, scope: !109, inlinedAt: !698)
!736 = !DILocation(line: 83, column: 23, scope: !109, inlinedAt: !698)
!737 = !DILocation(line: 84, column: 11, scope: !109, inlinedAt: !698)
!738 = !DILocation(line: 85, column: 3, scope: !109, inlinedAt: !698)
!739 = !DILocation(line: 85, column: 11, scope: !109, inlinedAt: !698)
!740 = !DILocation(line: 86, column: 3, scope: !109, inlinedAt: !698)
!741 = !DILocation(line: 86, column: 11, scope: !109, inlinedAt: !698)
!742 = !DILocation(line: 87, column: 3, scope: !109, inlinedAt: !698)
!743 = !DILocation(line: 87, column: 11, scope: !109, inlinedAt: !698)
!744 = !DILocation(line: 88, column: 11, scope: !109, inlinedAt: !698)
!745 = !DILocation(line: 89, column: 3, scope: !109, inlinedAt: !698)
!746 = !DILocation(line: 89, column: 11, scope: !109, inlinedAt: !698)
!747 = !DILocation(line: 90, column: 3, scope: !109, inlinedAt: !698)
!748 = !DILocation(line: 90, column: 11, scope: !109, inlinedAt: !698)
!749 = !DILocation(line: 91, column: 3, scope: !109, inlinedAt: !698)
!750 = !DILocation(line: 91, column: 11, scope: !109, inlinedAt: !698)
!751 = !DILocation(line: 93, column: 23, scope: !109, inlinedAt: !698)
!752 = !DILocation(line: 94, column: 11, scope: !109, inlinedAt: !698)
!753 = !DILocation(line: 95, column: 3, scope: !109, inlinedAt: !698)
!754 = !DILocation(line: 95, column: 11, scope: !109, inlinedAt: !698)
!755 = !DILocation(line: 96, column: 3, scope: !109, inlinedAt: !698)
!756 = !DILocation(line: 96, column: 11, scope: !109, inlinedAt: !698)
!757 = !DILocation(line: 97, column: 3, scope: !109, inlinedAt: !698)
!758 = !DILocation(line: 97, column: 11, scope: !109, inlinedAt: !698)
!759 = !DILocation(line: 98, column: 11, scope: !109, inlinedAt: !698)
!760 = !DILocation(line: 99, column: 3, scope: !109, inlinedAt: !698)
!761 = !DILocation(line: 99, column: 11, scope: !109, inlinedAt: !698)
!762 = !DILocation(line: 100, column: 3, scope: !109, inlinedAt: !698)
!763 = !DILocation(line: 100, column: 11, scope: !109, inlinedAt: !698)
!764 = !DILocation(line: 101, column: 3, scope: !109, inlinedAt: !698)
!765 = !DILocation(line: 101, column: 11, scope: !109, inlinedAt: !698)
!766 = !DILocation(line: 103, column: 22, scope: !109, inlinedAt: !698)
!767 = !DILocation(line: 105, column: 23, scope: !109, inlinedAt: !698)
!768 = !DILocation(line: 106, column: 11, scope: !109, inlinedAt: !698)
!769 = !DILocation(line: 107, column: 3, scope: !109, inlinedAt: !698)
!770 = !DILocation(line: 107, column: 11, scope: !109, inlinedAt: !698)
!771 = !DILocation(line: 108, column: 3, scope: !109, inlinedAt: !698)
!772 = !DILocation(line: 108, column: 11, scope: !109, inlinedAt: !698)
!773 = !DILocation(line: 109, column: 3, scope: !109, inlinedAt: !698)
!774 = !DILocation(line: 109, column: 11, scope: !109, inlinedAt: !698)
!775 = !DILocation(line: 110, column: 11, scope: !109, inlinedAt: !698)
!776 = !DILocation(line: 111, column: 3, scope: !109, inlinedAt: !698)
!777 = !DILocation(line: 111, column: 11, scope: !109, inlinedAt: !698)
!778 = !DILocation(line: 112, column: 3, scope: !109, inlinedAt: !698)
!779 = !DILocation(line: 112, column: 11, scope: !109, inlinedAt: !698)
!780 = !DILocation(line: 113, column: 3, scope: !109, inlinedAt: !698)
!781 = !DILocation(line: 113, column: 11, scope: !109, inlinedAt: !698)
!782 = !DILocation(line: 115, column: 23, scope: !109, inlinedAt: !698)
!783 = !DILocation(line: 116, column: 11, scope: !109, inlinedAt: !698)
!784 = !DILocation(line: 117, column: 3, scope: !109, inlinedAt: !698)
!785 = !DILocation(line: 117, column: 11, scope: !109, inlinedAt: !698)
!786 = !DILocation(line: 118, column: 3, scope: !109, inlinedAt: !698)
!787 = !DILocation(line: 118, column: 11, scope: !109, inlinedAt: !698)
!788 = !DILocation(line: 119, column: 3, scope: !109, inlinedAt: !698)
!789 = !DILocation(line: 119, column: 11, scope: !109, inlinedAt: !698)
!790 = !DILocation(line: 120, column: 11, scope: !109, inlinedAt: !698)
!791 = !DILocation(line: 121, column: 3, scope: !109, inlinedAt: !698)
!792 = !DILocation(line: 121, column: 11, scope: !109, inlinedAt: !698)
!793 = !DILocation(line: 122, column: 3, scope: !109, inlinedAt: !698)
!794 = !DILocation(line: 122, column: 11, scope: !109, inlinedAt: !698)
!795 = !DILocation(line: 123, column: 3, scope: !109, inlinedAt: !698)
!796 = !DILocation(line: 123, column: 11, scope: !109, inlinedAt: !698)
!797 = !DILocation(line: 125, column: 23, scope: !109, inlinedAt: !698)
!798 = !DILocation(line: 127, column: 25, scope: !109, inlinedAt: !698)
!799 = !DILocation(line: 128, column: 10, scope: !109, inlinedAt: !698)
!800 = !DILocation(line: 129, column: 3, scope: !109, inlinedAt: !698)
!801 = !DILocation(line: 129, column: 10, scope: !109, inlinedAt: !698)
!802 = !DILocation(line: 130, column: 3, scope: !109, inlinedAt: !698)
!803 = !DILocation(line: 130, column: 10, scope: !109, inlinedAt: !698)
!804 = !DILocation(line: 131, column: 3, scope: !109, inlinedAt: !698)
!805 = !DILocation(line: 131, column: 10, scope: !109, inlinedAt: !698)
!806 = !DILocation(line: 132, column: 12, scope: !109, inlinedAt: !698)
!807 = !DILocation(line: 133, column: 3, scope: !109, inlinedAt: !698)
!808 = !DILocation(line: 133, column: 12, scope: !109, inlinedAt: !698)
!809 = !DILocation(line: 134, column: 3, scope: !109, inlinedAt: !698)
!810 = !DILocation(line: 134, column: 12, scope: !109, inlinedAt: !698)
!811 = !DILocation(line: 135, column: 3, scope: !109, inlinedAt: !698)
!812 = !DILocation(line: 135, column: 12, scope: !109, inlinedAt: !698)
!813 = !DILocation(line: 137, column: 25, scope: !109, inlinedAt: !698)
!814 = !DILocation(line: 138, column: 12, scope: !109, inlinedAt: !698)
!815 = !DILocation(line: 139, column: 3, scope: !109, inlinedAt: !698)
!816 = !DILocation(line: 139, column: 12, scope: !109, inlinedAt: !698)
!817 = !DILocation(line: 140, column: 3, scope: !109, inlinedAt: !698)
!818 = !DILocation(line: 140, column: 12, scope: !109, inlinedAt: !698)
!819 = !DILocation(line: 141, column: 3, scope: !109, inlinedAt: !698)
!820 = !DILocation(line: 141, column: 12, scope: !109, inlinedAt: !698)
!821 = !DILocation(line: 142, column: 12, scope: !109, inlinedAt: !698)
!822 = !DILocation(line: 143, column: 3, scope: !109, inlinedAt: !698)
!823 = !DILocation(line: 143, column: 12, scope: !109, inlinedAt: !698)
!824 = !DILocation(line: 144, column: 3, scope: !109, inlinedAt: !698)
!825 = !DILocation(line: 144, column: 12, scope: !109, inlinedAt: !698)
!826 = !DILocation(line: 145, column: 3, scope: !109, inlinedAt: !698)
!827 = !DILocation(line: 145, column: 12, scope: !109, inlinedAt: !698)
!828 = !DILocation(line: 147, column: 23, scope: !109, inlinedAt: !698)
!829 = !DILocation(line: 148, column: 12, scope: !109, inlinedAt: !698)
!830 = !DILocation(line: 149, column: 3, scope: !109, inlinedAt: !698)
!831 = !DILocation(line: 149, column: 12, scope: !109, inlinedAt: !698)
!832 = !DILocation(line: 150, column: 3, scope: !109, inlinedAt: !698)
!833 = !DILocation(line: 150, column: 12, scope: !109, inlinedAt: !698)
!834 = !DILocation(line: 151, column: 3, scope: !109, inlinedAt: !698)
!835 = !DILocation(line: 151, column: 12, scope: !109, inlinedAt: !698)
!836 = !DILocation(line: 152, column: 10, scope: !109, inlinedAt: !698)
!837 = !DILocation(line: 153, column: 3, scope: !109, inlinedAt: !698)
!838 = !DILocation(line: 153, column: 10, scope: !109, inlinedAt: !698)
!839 = !DILocation(line: 154, column: 3, scope: !109, inlinedAt: !698)
!840 = !DILocation(line: 154, column: 10, scope: !109, inlinedAt: !698)
!841 = !DILocation(line: 155, column: 3, scope: !109, inlinedAt: !698)
!842 = !DILocation(line: 155, column: 10, scope: !109, inlinedAt: !698)
!843 = !DILocation(line: 156, column: 10, scope: !109, inlinedAt: !698)
!844 = !DILocation(line: 0, scope: !298, inlinedAt: !845)
!845 = distinct !DILocation(line: 294, column: 3, scope: !682, inlinedAt: !692)
!846 = !DILocation(line: 0, scope: !305, inlinedAt: !845)
!847 = !DILocation(line: 246, column: 3, scope: !305, inlinedAt: !845)
!848 = !DILocation(line: 248, column: 27, scope: !307, inlinedAt: !845)
!849 = !DILocation(line: 248, column: 23, scope: !307, inlinedAt: !845)
!850 = !DILocation(line: 0, scope: !307, inlinedAt: !845)
!851 = !DILocation(line: 249, column: 5, scope: !307, inlinedAt: !845)
!852 = !DILocation(line: 246, column: 49, scope: !308, inlinedAt: !845)
!853 = !DILocation(line: 246, column: 37, scope: !308, inlinedAt: !845)
!854 = distinct !{!854, !847, !855, !99, !100}
!855 = !DILocation(line: 250, column: 3, scope: !305, inlinedAt: !845)
!856 = !DILocation(line: 292, column: 36, scope: !682, inlinedAt: !692)
!857 = !DILocation(line: 290, column: 20, scope: !682, inlinedAt: !692)
!858 = !DILocation(line: 292, column: 31, scope: !682, inlinedAt: !692)
!859 = !DILocation(line: 0, scope: !322, inlinedAt: !860)
!860 = distinct !DILocation(line: 295, column: 3, scope: !682, inlinedAt: !692)
!861 = !DILocation(line: 255, column: 3, scope: !322, inlinedAt: !860)
!862 = !DILocation(line: 255, column: 11, scope: !322, inlinedAt: !860)
!863 = !DILocation(line: 257, column: 11, scope: !343, inlinedAt: !860)
!864 = !DILocation(line: 262, column: 7, scope: !322, inlinedAt: !860)
!865 = !DILocation(line: 266, column: 3, scope: !322, inlinedAt: !860)
!866 = !DILocation(line: 267, column: 17, scope: !322, inlinedAt: !860)
!867 = !DILocation(line: 268, column: 35, scope: !322, inlinedAt: !860)
!868 = !DILocation(line: 270, column: 28, scope: !322, inlinedAt: !860)
!869 = !DILocation(line: 270, column: 83, scope: !322, inlinedAt: !860)
!870 = !DILocation(line: 272, column: 27, scope: !322, inlinedAt: !860)
!871 = !DILocation(line: 272, column: 42, scope: !322, inlinedAt: !860)
!872 = !DILocation(line: 274, column: 17, scope: !322, inlinedAt: !860)
!873 = !DILocation(line: 274, column: 73, scope: !322, inlinedAt: !860)
!874 = !DILocation(line: 275, column: 12, scope: !322, inlinedAt: !860)
!875 = !DILocation(line: 0, scope: !356, inlinedAt: !876)
!876 = distinct !DILocation(line: 276, column: 3, scope: !322, inlinedAt: !860)
!877 = !DILocation(line: 75, column: 10, scope: !356, inlinedAt: !876)
!878 = !DILocation(line: 0, scope: !365, inlinedAt: !879)
!879 = distinct !DILocation(line: 276, column: 3, scope: !322, inlinedAt: !860)
!880 = !DILocation(line: 357, column: 54, scope: !365, inlinedAt: !879)
!881 = !DILocation(line: 0, scope: !298, inlinedAt: !882)
!882 = distinct !DILocation(line: 277, column: 3, scope: !322, inlinedAt: !860)
!883 = !DILocation(line: 0, scope: !305, inlinedAt: !882)
!884 = !DILocation(line: 248, column: 27, scope: !307, inlinedAt: !882)
!885 = !DILocation(line: 248, column: 23, scope: !307, inlinedAt: !882)
!886 = !DILocation(line: 0, scope: !307, inlinedAt: !882)
!887 = !DILocation(line: 249, column: 5, scope: !307, inlinedAt: !882)
!888 = !DILocation(line: 246, column: 49, scope: !308, inlinedAt: !882)
!889 = !DILocation(line: 246, column: 37, scope: !308, inlinedAt: !882)
!890 = !DILocation(line: 246, column: 3, scope: !305, inlinedAt: !882)
!891 = distinct !{!891, !890, !892, !99, !100}
!892 = !DILocation(line: 250, column: 3, scope: !305, inlinedAt: !882)
!893 = !DILocation(line: 278, column: 1, scope: !322, inlinedAt: !860)
!894 = !DILocation(line: 0, scope: !388, inlinedAt: !895)
!895 = distinct !DILocation(line: 296, column: 3, scope: !682, inlinedAt: !692)
!896 = !DILocation(line: 0, scope: !397, inlinedAt: !897)
!897 = distinct !DILocation(line: 283, column: 3, scope: !388, inlinedAt: !895)
!898 = !DILocation(line: 0, scope: !404, inlinedAt: !897)
!899 = !DILocation(line: 41, column: 3, scope: !404, inlinedAt: !897)
!900 = !DILocation(line: 43, column: 20, scope: !406, inlinedAt: !897)
!901 = !DILocation(line: 0, scope: !406, inlinedAt: !897)
!902 = !DILocation(line: 44, column: 41, scope: !406, inlinedAt: !897)
!903 = !DILocation(line: 44, column: 26, scope: !406, inlinedAt: !897)
!904 = !DILocation(line: 0, scope: !418, inlinedAt: !905)
!905 = distinct !DILocation(line: 45, column: 5, scope: !406, inlinedAt: !897)
!906 = !DILocation(line: 54, column: 10, scope: !418, inlinedAt: !905)
!907 = !DILocation(line: 0, scope: !426, inlinedAt: !908)
!908 = distinct !DILocation(line: 45, column: 5, scope: !406, inlinedAt: !897)
!909 = !DILocation(line: 355, column: 54, scope: !426, inlinedAt: !908)
!910 = !DILocation(line: 41, column: 50, scope: !407, inlinedAt: !897)
!911 = !DILocation(line: 41, column: 37, scope: !407, inlinedAt: !897)
!912 = distinct !{!912, !899, !913, !99, !100}
!913 = !DILocation(line: 46, column: 3, scope: !404, inlinedAt: !897)
!914 = !DILocation(line: 297, column: 1, scope: !682, inlinedAt: !692)
!915 = !DILocation(line: 358, column: 3, scope: !658, inlinedAt: !671)
!916 = !DILocation(line: 359, column: 1, scope: !658, inlinedAt: !671)
!917 = !DILocation(line: 376, column: 1, scope: !647)
!918 = distinct !DISubprogram(name: "Hacl_Impl_SHA2_256_update", scope: !1, file: !1, line: 159, type: !389, scopeLine: 160, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !919)
!919 = !{!920, !921, !922, !926, !927, !928, !929, !930, !932, !935, !937, !940, !941, !942, !943, !947, !949, !952, !953, !954, !955, !956, !957, !958, !959, !960, !961, !962, !963, !964, !965, !966, !967, !969, !972, !973, !974}
!920 = !DILocalVariable(name: "state", arg: 1, scope: !918, file: !1, line: 159, type: !112)
!921 = !DILocalVariable(name: "data", arg: 2, scope: !918, file: !1, line: 159, type: !25)
!922 = !DILocalVariable(name: "data_w", scope: !918, file: !1, line: 161, type: !923)
!923 = !DICompositeType(tag: DW_TAG_array_type, baseType: !3, size: 512, elements: !924)
!924 = !{!925}
!925 = !DISubrange(count: 16)
!926 = !DILocalVariable(name: "hash_w", scope: !918, file: !1, line: 163, type: !112)
!927 = !DILocalVariable(name: "ws_w", scope: !918, file: !1, line: 164, type: !112)
!928 = !DILocalVariable(name: "k_w", scope: !918, file: !1, line: 165, type: !112)
!929 = !DILocalVariable(name: "counter_w", scope: !918, file: !1, line: 166, type: !112)
!930 = !DILocalVariable(name: "i", scope: !931, file: !1, line: 167, type: !3)
!931 = distinct !DILexicalBlock(scope: !918, file: !1, line: 167, column: 3)
!932 = !DILocalVariable(name: "b", scope: !933, file: !1, line: 169, type: !3)
!933 = distinct !DILexicalBlock(scope: !934, file: !1, line: 168, column: 3)
!934 = distinct !DILexicalBlock(scope: !931, file: !1, line: 167, column: 3)
!935 = !DILocalVariable(name: "i", scope: !936, file: !1, line: 172, type: !3)
!936 = distinct !DILexicalBlock(scope: !918, file: !1, line: 172, column: 3)
!937 = !DILocalVariable(name: "t16", scope: !938, file: !1, line: 174, type: !3)
!938 = distinct !DILexicalBlock(scope: !939, file: !1, line: 173, column: 3)
!939 = distinct !DILexicalBlock(scope: !936, file: !1, line: 172, column: 3)
!940 = !DILocalVariable(name: "t15", scope: !938, file: !1, line: 175, type: !3)
!941 = !DILocalVariable(name: "t7", scope: !938, file: !1, line: 176, type: !3)
!942 = !DILocalVariable(name: "t2", scope: !938, file: !1, line: 177, type: !3)
!943 = !DILocalVariable(name: "hash_0", scope: !918, file: !1, line: 188, type: !944)
!944 = !DICompositeType(tag: DW_TAG_array_type, baseType: !3, size: 256, elements: !945)
!945 = !{!946}
!946 = !DISubrange(count: 8)
!947 = !DILocalVariable(name: "i", scope: !948, file: !1, line: 190, type: !3)
!948 = distinct !DILexicalBlock(scope: !918, file: !1, line: 190, column: 3)
!949 = !DILocalVariable(name: "a", scope: !950, file: !1, line: 192, type: !3)
!950 = distinct !DILexicalBlock(scope: !951, file: !1, line: 191, column: 3)
!951 = distinct !DILexicalBlock(scope: !948, file: !1, line: 190, column: 3)
!952 = !DILocalVariable(name: "b", scope: !950, file: !1, line: 193, type: !3)
!953 = !DILocalVariable(name: "c", scope: !950, file: !1, line: 194, type: !3)
!954 = !DILocalVariable(name: "d", scope: !950, file: !1, line: 195, type: !3)
!955 = !DILocalVariable(name: "e", scope: !950, file: !1, line: 196, type: !3)
!956 = !DILocalVariable(name: "f1", scope: !950, file: !1, line: 197, type: !3)
!957 = !DILocalVariable(name: "g", scope: !950, file: !1, line: 198, type: !3)
!958 = !DILocalVariable(name: "h", scope: !950, file: !1, line: 199, type: !3)
!959 = !DILocalVariable(name: "kt", scope: !950, file: !1, line: 200, type: !3)
!960 = !DILocalVariable(name: "wst", scope: !950, file: !1, line: 201, type: !3)
!961 = !DILocalVariable(name: "t1", scope: !950, file: !1, line: 203, type: !3)
!962 = !DILocalVariable(name: "t2", scope: !950, file: !1, line: 214, type: !3)
!963 = !DILocalVariable(name: "x1", scope: !950, file: !1, line: 220, type: !3)
!964 = !DILocalVariable(name: "x5", scope: !950, file: !1, line: 221, type: !3)
!965 = !DILocalVariable(name: "p1", scope: !950, file: !1, line: 222, type: !112)
!966 = !DILocalVariable(name: "p2", scope: !950, file: !1, line: 223, type: !112)
!967 = !DILocalVariable(name: "i", scope: !968, file: !1, line: 233, type: !3)
!968 = distinct !DILexicalBlock(scope: !918, file: !1, line: 233, column: 3)
!969 = !DILocalVariable(name: "xi", scope: !970, file: !1, line: 235, type: !3)
!970 = distinct !DILexicalBlock(scope: !971, file: !1, line: 234, column: 3)
!971 = distinct !DILexicalBlock(scope: !968, file: !1, line: 233, column: 3)
!972 = !DILocalVariable(name: "yi", scope: !970, file: !1, line: 236, type: !3)
!973 = !DILocalVariable(name: "c0", scope: !918, file: !1, line: 239, type: !3)
!974 = !DILocalVariable(name: "one1", scope: !918, file: !1, line: 240, type: !3)
!975 = !DILocation(line: 0, scope: !918)
!976 = !DILocation(line: 161, column: 3, scope: !918)
!977 = !DILocation(line: 161, column: 12, scope: !918)
!978 = !DILocalVariable(name: "output", arg: 1, scope: !979, file: !1, line: 28, type: !112)
!979 = distinct !DISubprogram(name: "Hacl_Hash_Lib_LoadStore_uint32s_from_be_bytes", scope: !1, file: !1, line: 28, type: !299, scopeLine: 29, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !980)
!980 = !{!978, !981, !982, !983, !985, !988}
!981 = !DILocalVariable(name: "input", arg: 2, scope: !979, file: !1, line: 28, type: !25)
!982 = !DILocalVariable(name: "len", arg: 3, scope: !979, file: !1, line: 28, type: !3)
!983 = !DILocalVariable(name: "i", scope: !984, file: !1, line: 30, type: !3)
!984 = distinct !DILexicalBlock(scope: !979, file: !1, line: 30, column: 3)
!985 = !DILocalVariable(name: "x0", scope: !986, file: !1, line: 32, type: !25)
!986 = distinct !DILexicalBlock(scope: !987, file: !1, line: 31, column: 3)
!987 = distinct !DILexicalBlock(scope: !984, file: !1, line: 30, column: 3)
!988 = !DILocalVariable(name: "inputi", scope: !986, file: !1, line: 33, type: !3)
!989 = !DILocation(line: 0, scope: !979, inlinedAt: !990)
!990 = distinct !DILocation(line: 162, column: 3, scope: !918)
!991 = !DILocation(line: 0, scope: !984, inlinedAt: !990)
!992 = !DILocation(line: 30, column: 3, scope: !984, inlinedAt: !990)
!993 = !DILocation(line: 32, column: 40, scope: !986, inlinedAt: !990)
!994 = !DILocation(line: 32, column: 25, scope: !986, inlinedAt: !990)
!995 = !DILocation(line: 0, scope: !986, inlinedAt: !990)
!996 = !DILocalVariable(name: "b", arg: 1, scope: !997, file: !366, line: 341, type: !25)
!997 = distinct !DISubprogram(name: "load32", scope: !366, file: !366, line: 341, type: !998, scopeLine: 341, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !1000)
!998 = !DISubroutineType(types: !999)
!999 = !{!3, !25}
!1000 = !{!996, !1001}
!1001 = !DILocalVariable(name: "x", scope: !997, file: !366, line: 342, type: !3)
!1002 = !DILocation(line: 0, scope: !997, inlinedAt: !1003)
!1003 = distinct !DILocation(line: 33, column: 23, scope: !986, inlinedAt: !990)
!1004 = !DILocation(line: 343, column: 3, scope: !997, inlinedAt: !1003)
!1005 = !DILocation(line: 0, scope: !418, inlinedAt: !1006)
!1006 = distinct !DILocation(line: 33, column: 23, scope: !986, inlinedAt: !990)
!1007 = !DILocation(line: 54, column: 10, scope: !418, inlinedAt: !1006)
!1008 = !DILocation(line: 34, column: 5, scope: !986, inlinedAt: !990)
!1009 = !DILocation(line: 34, column: 15, scope: !986, inlinedAt: !990)
!1010 = !DILocation(line: 30, column: 50, scope: !987, inlinedAt: !990)
!1011 = !DILocation(line: 30, column: 37, scope: !987, inlinedAt: !990)
!1012 = distinct !{!1012, !992, !1013, !99, !100}
!1013 = !DILocation(line: 35, column: 3, scope: !984, inlinedAt: !990)
!1014 = !DILocation(line: 164, column: 26, scope: !918)
!1015 = !DILocation(line: 0, scope: !931)
!1016 = !DILocation(line: 170, column: 13, scope: !933)
!1017 = !DILocation(line: 0, scope: !933)
!1018 = !DILocation(line: 163, column: 28, scope: !918)
!1019 = !DILocation(line: 172, column: 3, scope: !936)
!1020 = !DILocation(line: 188, column: 3, scope: !918)
!1021 = !DILocation(line: 188, column: 12, scope: !918)
!1022 = !DILocation(line: 189, column: 3, scope: !918)
!1023 = !DILocation(line: 0, scope: !948)
!1024 = !DILocation(line: 190, column: 3, scope: !948)
!1025 = !DILocation(line: 0, scope: !936)
!1026 = !DILocation(line: 174, column: 27, scope: !938)
!1027 = !DILocation(line: 174, column: 20, scope: !938)
!1028 = !DILocation(line: 0, scope: !938)
!1029 = !DILocation(line: 175, column: 27, scope: !938)
!1030 = !DILocation(line: 175, column: 20, scope: !938)
!1031 = !DILocation(line: 176, column: 26, scope: !938)
!1032 = !DILocation(line: 176, column: 19, scope: !938)
!1033 = !DILocation(line: 177, column: 26, scope: !938)
!1034 = !DILocation(line: 177, column: 19, scope: !938)
!1035 = !DILocation(line: 179, column: 29, scope: !938)
!1036 = !DILocation(line: 180, column: 31, scope: !938)
!1037 = !DILocation(line: 180, column: 77, scope: !938)
!1038 = !DILocation(line: 180, column: 72, scope: !938)
!1039 = !DILocation(line: 180, column: 7, scope: !938)
!1040 = !DILocation(line: 184, column: 33, scope: !938)
!1041 = !DILocation(line: 185, column: 36, scope: !938)
!1042 = !DILocation(line: 185, column: 84, scope: !938)
!1043 = !DILocation(line: 185, column: 78, scope: !938)
!1044 = !DILocation(line: 185, column: 11, scope: !938)
!1045 = !DILocation(line: 181, column: 7, scope: !938)
!1046 = !DILocation(line: 183, column: 9, scope: !938)
!1047 = !DILocation(line: 186, column: 11, scope: !938)
!1048 = !DILocation(line: 178, column: 5, scope: !938)
!1049 = !DILocation(line: 178, column: 13, scope: !938)
!1050 = !DILocation(line: 172, column: 61, scope: !939)
!1051 = !DILocation(line: 172, column: 38, scope: !939)
!1052 = distinct !{!1052, !1019, !1053, !99, !100}
!1053 = !DILocation(line: 187, column: 3, scope: !936)
!1054 = !DILocation(line: 0, scope: !950)
!1055 = !DILocation(line: 0, scope: !968)
!1056 = !DILocation(line: 233, column: 3, scope: !968)
!1057 = !DILocation(line: 200, column: 19, scope: !950)
!1058 = !DILocation(line: 201, column: 20, scope: !950)
!1059 = !DILocation(line: 206, column: 29, scope: !950)
!1060 = !DILocation(line: 208, column: 32, scope: !950)
!1061 = !DILocation(line: 209, column: 33, scope: !950)
!1062 = !DILocation(line: 209, column: 11, scope: !950)
!1063 = !DILocation(line: 207, column: 9, scope: !950)
!1064 = !DILocation(line: 210, column: 13, scope: !950)
!1065 = !DILocation(line: 210, column: 22, scope: !950)
!1066 = !DILocation(line: 210, column: 25, scope: !950)
!1067 = !DILocation(line: 210, column: 19, scope: !950)
!1068 = !DILocation(line: 205, column: 7, scope: !950)
!1069 = !DILocation(line: 210, column: 7, scope: !950)
!1070 = !DILocation(line: 211, column: 7, scope: !950)
!1071 = !DILocation(line: 212, column: 7, scope: !950)
!1072 = !DILocation(line: 215, column: 27, scope: !950)
!1073 = !DILocation(line: 217, column: 30, scope: !950)
!1074 = !DILocation(line: 218, column: 31, scope: !950)
!1075 = !DILocation(line: 218, column: 9, scope: !950)
!1076 = !DILocation(line: 216, column: 7, scope: !950)
!1077 = !DILocation(line: 219, column: 13, scope: !950)
!1078 = !DILocation(line: 219, column: 29, scope: !950)
!1079 = !DILocation(line: 219, column: 18, scope: !950)
!1080 = !DILocation(line: 219, column: 7, scope: !950)
!1081 = !DILocation(line: 220, column: 22, scope: !950)
!1082 = !DILocation(line: 221, column: 21, scope: !950)
!1083 = !DILocation(line: 190, column: 60, scope: !951)
!1084 = !DILocation(line: 190, column: 37, scope: !951)
!1085 = distinct !{!1085, !1024, !1086, !99, !100}
!1086 = !DILocation(line: 232, column: 3, scope: !948)
!1087 = !DILocation(line: 166, column: 31, scope: !918)
!1088 = !DILocation(line: 239, column: 17, scope: !918)
!1089 = !DILocation(line: 241, column: 22, scope: !918)
!1090 = !DILocation(line: 241, column: 17, scope: !918)
!1091 = !DILocation(line: 242, column: 1, scope: !918)
!1092 = !DILocation(line: 235, column: 19, scope: !970)
!1093 = !DILocation(line: 0, scope: !970)
!1094 = !DILocation(line: 236, column: 19, scope: !970)
!1095 = !DILocation(line: 237, column: 20, scope: !970)
!1096 = !DILocation(line: 237, column: 15, scope: !970)
!1097 = !DILocation(line: 233, column: 59, scope: !971)
!1098 = !DILocation(line: 233, column: 37, scope: !971)
!1099 = distinct !{!1099, !1056, !1100, !99, !100}
!1100 = !DILocation(line: 238, column: 3, scope: !968)
