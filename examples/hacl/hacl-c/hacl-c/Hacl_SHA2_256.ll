; ModuleID = 'hacl-c/hacl-c/Hacl_SHA2_256.c'
source_filename = "hacl-c/hacl-c/Hacl_SHA2_256.c"
target datalayout = "e-m:e-p:32:32-p270:32:32-p271:32:32-p272:64:64-f64:32:64-f80:32-n8:16:32-S128"
target triple = "i386-pc-linux-gnu"

@Hacl_SHA2_256_size_hash = dso_local local_unnamed_addr global i32 32, align 4, !dbg !0
@Hacl_SHA2_256_size_block = dso_local local_unnamed_addr global i32 64, align 4, !dbg !17
@Hacl_SHA2_256_size_state = dso_local local_unnamed_addr global i32 137, align 4, !dbg !19

; Function Attrs: mustprogress nofree norecurse nosync nounwind uwtable willreturn writeonly
define dso_local void @Hacl_SHA2_256_init(i32* noundef writeonly %0) local_unnamed_addr #0 !dbg !29 {
  call void @llvm.dbg.value(metadata i32* %0, metadata !34, metadata !DIExpression()), !dbg !35
  call void @llvm.dbg.value(metadata i32* %0, metadata !36, metadata !DIExpression()), !dbg !72
  %2 = getelementptr inbounds i32, i32* %0, i32 136, !dbg !74
  call void @llvm.dbg.value(metadata i32* %2, metadata !39, metadata !DIExpression()), !dbg !72
  call void @llvm.dbg.value(metadata i32* %0, metadata !40, metadata !DIExpression()), !dbg !72
  %3 = getelementptr inbounds i32, i32* %0, i32 128, !dbg !75
  call void @llvm.dbg.value(metadata i32* %3, metadata !41, metadata !DIExpression()), !dbg !72
  call void @llvm.dbg.value(metadata i32* %0, metadata !42, metadata !DIExpression()), !dbg !72
  %4 = getelementptr inbounds i32, i32* %0, i32 16, !dbg !76
  call void @llvm.dbg.value(metadata i32* %4, metadata !43, metadata !DIExpression()), !dbg !72
  %5 = getelementptr inbounds i32, i32* %0, i32 32, !dbg !77
  call void @llvm.dbg.value(metadata i32* %5, metadata !44, metadata !DIExpression()), !dbg !72
  %6 = getelementptr inbounds i32, i32* %0, i32 48, !dbg !78
  call void @llvm.dbg.value(metadata i32* %6, metadata !45, metadata !DIExpression()), !dbg !72
  call void @llvm.dbg.value(metadata i32* %0, metadata !46, metadata !DIExpression()), !dbg !72
  %7 = getelementptr inbounds i32, i32* %0, i32 8, !dbg !79
  call void @llvm.dbg.value(metadata i32* %7, metadata !47, metadata !DIExpression()), !dbg !72
  call void @llvm.dbg.value(metadata i32* %0, metadata !48, metadata !DIExpression()), !dbg !72
  %8 = getelementptr inbounds i32, i32* %0, i32 4, !dbg !80
  call void @llvm.dbg.value(metadata i32* %8, metadata !49, metadata !DIExpression()), !dbg !72
  store i32 1116352408, i32* %0, align 4, !dbg !81, !tbaa !82
  %9 = getelementptr inbounds i32, i32* %0, i32 1, !dbg !86
  store i32 1899447441, i32* %9, align 4, !dbg !87, !tbaa !82
  %10 = getelementptr inbounds i32, i32* %0, i32 2, !dbg !88
  store i32 -1245643825, i32* %10, align 4, !dbg !89, !tbaa !82
  %11 = getelementptr inbounds i32, i32* %0, i32 3, !dbg !90
  store i32 -373957723, i32* %11, align 4, !dbg !91, !tbaa !82
  store i32 961987163, i32* %8, align 4, !dbg !92, !tbaa !82
  %12 = getelementptr inbounds i32, i32* %0, i32 5, !dbg !93
  store i32 1508970993, i32* %12, align 4, !dbg !94, !tbaa !82
  %13 = getelementptr inbounds i32, i32* %0, i32 6, !dbg !95
  store i32 -1841331548, i32* %13, align 4, !dbg !96, !tbaa !82
  %14 = getelementptr inbounds i32, i32* %0, i32 7, !dbg !97
  store i32 -1424204075, i32* %14, align 4, !dbg !98, !tbaa !82
  call void @llvm.dbg.value(metadata i32* %7, metadata !50, metadata !DIExpression()), !dbg !72
  %15 = getelementptr inbounds i32, i32* %0, i32 12, !dbg !99
  call void @llvm.dbg.value(metadata i32* %15, metadata !51, metadata !DIExpression()), !dbg !72
  store i32 -670586216, i32* %7, align 4, !dbg !100, !tbaa !82
  %16 = getelementptr inbounds i32, i32* %0, i32 9, !dbg !101
  store i32 310598401, i32* %16, align 4, !dbg !102, !tbaa !82
  %17 = getelementptr inbounds i32, i32* %0, i32 10, !dbg !103
  store i32 607225278, i32* %17, align 4, !dbg !104, !tbaa !82
  %18 = getelementptr inbounds i32, i32* %0, i32 11, !dbg !105
  store i32 1426881987, i32* %18, align 4, !dbg !106, !tbaa !82
  store i32 1925078388, i32* %15, align 4, !dbg !107, !tbaa !82
  %19 = getelementptr inbounds i32, i32* %0, i32 13, !dbg !108
  store i32 -2132889090, i32* %19, align 4, !dbg !109, !tbaa !82
  %20 = getelementptr inbounds i32, i32* %0, i32 14, !dbg !110
  store i32 -1680079193, i32* %20, align 4, !dbg !111, !tbaa !82
  %21 = getelementptr inbounds i32, i32* %0, i32 15, !dbg !112
  store i32 -1046744716, i32* %21, align 4, !dbg !113, !tbaa !82
  call void @llvm.dbg.value(metadata i32* %4, metadata !52, metadata !DIExpression()), !dbg !72
  %22 = getelementptr inbounds i32, i32* %0, i32 24, !dbg !114
  call void @llvm.dbg.value(metadata i32* %22, metadata !53, metadata !DIExpression()), !dbg !72
  call void @llvm.dbg.value(metadata i32* %4, metadata !54, metadata !DIExpression()), !dbg !72
  %23 = getelementptr inbounds i32, i32* %0, i32 20, !dbg !115
  call void @llvm.dbg.value(metadata i32* %23, metadata !55, metadata !DIExpression()), !dbg !72
  store i32 -459576895, i32* %4, align 4, !dbg !116, !tbaa !82
  %24 = getelementptr inbounds i32, i32* %0, i32 17, !dbg !117
  store i32 -272742522, i32* %24, align 4, !dbg !118, !tbaa !82
  %25 = getelementptr inbounds i32, i32* %0, i32 18, !dbg !119
  store i32 264347078, i32* %25, align 4, !dbg !120, !tbaa !82
  %26 = getelementptr inbounds i32, i32* %0, i32 19, !dbg !121
  store i32 604807628, i32* %26, align 4, !dbg !122, !tbaa !82
  store i32 770255983, i32* %23, align 4, !dbg !123, !tbaa !82
  %27 = getelementptr inbounds i32, i32* %0, i32 21, !dbg !124
  store i32 1249150122, i32* %27, align 4, !dbg !125, !tbaa !82
  %28 = getelementptr inbounds i32, i32* %0, i32 22, !dbg !126
  store i32 1555081692, i32* %28, align 4, !dbg !127, !tbaa !82
  %29 = getelementptr inbounds i32, i32* %0, i32 23, !dbg !128
  store i32 1996064986, i32* %29, align 4, !dbg !129, !tbaa !82
  call void @llvm.dbg.value(metadata i32* %22, metadata !56, metadata !DIExpression()), !dbg !72
  %30 = getelementptr inbounds i32, i32* %0, i32 28, !dbg !130
  call void @llvm.dbg.value(metadata i32* %30, metadata !57, metadata !DIExpression()), !dbg !72
  store i32 -1740746414, i32* %22, align 4, !dbg !131, !tbaa !82
  %31 = getelementptr inbounds i32, i32* %0, i32 25, !dbg !132
  store i32 -1473132947, i32* %31, align 4, !dbg !133, !tbaa !82
  %32 = getelementptr inbounds i32, i32* %0, i32 26, !dbg !134
  store i32 -1341970488, i32* %32, align 4, !dbg !135, !tbaa !82
  %33 = getelementptr inbounds i32, i32* %0, i32 27, !dbg !136
  store i32 -1084653625, i32* %33, align 4, !dbg !137, !tbaa !82
  store i32 -958395405, i32* %30, align 4, !dbg !138, !tbaa !82
  %34 = getelementptr inbounds i32, i32* %0, i32 29, !dbg !139
  store i32 -710438585, i32* %34, align 4, !dbg !140, !tbaa !82
  %35 = getelementptr inbounds i32, i32* %0, i32 30, !dbg !141
  store i32 113926993, i32* %35, align 4, !dbg !142, !tbaa !82
  %36 = getelementptr inbounds i32, i32* %0, i32 31, !dbg !143
  store i32 338241895, i32* %36, align 4, !dbg !144, !tbaa !82
  call void @llvm.dbg.value(metadata i32* %5, metadata !58, metadata !DIExpression()), !dbg !72
  %37 = getelementptr inbounds i32, i32* %0, i32 40, !dbg !145
  call void @llvm.dbg.value(metadata i32* %37, metadata !59, metadata !DIExpression()), !dbg !72
  call void @llvm.dbg.value(metadata i32* %5, metadata !60, metadata !DIExpression()), !dbg !72
  %38 = getelementptr inbounds i32, i32* %0, i32 36, !dbg !146
  call void @llvm.dbg.value(metadata i32* %38, metadata !61, metadata !DIExpression()), !dbg !72
  store i32 666307205, i32* %5, align 4, !dbg !147, !tbaa !82
  %39 = getelementptr inbounds i32, i32* %0, i32 33, !dbg !148
  store i32 773529912, i32* %39, align 4, !dbg !149, !tbaa !82
  %40 = getelementptr inbounds i32, i32* %0, i32 34, !dbg !150
  store i32 1294757372, i32* %40, align 4, !dbg !151, !tbaa !82
  %41 = getelementptr inbounds i32, i32* %0, i32 35, !dbg !152
  store i32 1396182291, i32* %41, align 4, !dbg !153, !tbaa !82
  store i32 1695183700, i32* %38, align 4, !dbg !154, !tbaa !82
  %42 = getelementptr inbounds i32, i32* %0, i32 37, !dbg !155
  store i32 1986661051, i32* %42, align 4, !dbg !156, !tbaa !82
  %43 = getelementptr inbounds i32, i32* %0, i32 38, !dbg !157
  store i32 -2117940946, i32* %43, align 4, !dbg !158, !tbaa !82
  %44 = getelementptr inbounds i32, i32* %0, i32 39, !dbg !159
  store i32 -1838011259, i32* %44, align 4, !dbg !160, !tbaa !82
  call void @llvm.dbg.value(metadata i32* %37, metadata !62, metadata !DIExpression()), !dbg !72
  %45 = getelementptr inbounds i32, i32* %0, i32 44, !dbg !161
  call void @llvm.dbg.value(metadata i32* %45, metadata !63, metadata !DIExpression()), !dbg !72
  store i32 -1564481375, i32* %37, align 4, !dbg !162, !tbaa !82
  %46 = getelementptr inbounds i32, i32* %0, i32 41, !dbg !163
  store i32 -1474664885, i32* %46, align 4, !dbg !164, !tbaa !82
  %47 = getelementptr inbounds i32, i32* %0, i32 42, !dbg !165
  store i32 -1035236496, i32* %47, align 4, !dbg !166, !tbaa !82
  %48 = getelementptr inbounds i32, i32* %0, i32 43, !dbg !167
  store i32 -949202525, i32* %48, align 4, !dbg !168, !tbaa !82
  store i32 -778901479, i32* %45, align 4, !dbg !169, !tbaa !82
  %49 = getelementptr inbounds i32, i32* %0, i32 45, !dbg !170
  store i32 -694614492, i32* %49, align 4, !dbg !171, !tbaa !82
  %50 = getelementptr inbounds i32, i32* %0, i32 46, !dbg !172
  store i32 -200395387, i32* %50, align 4, !dbg !173, !tbaa !82
  %51 = getelementptr inbounds i32, i32* %0, i32 47, !dbg !174
  store i32 275423344, i32* %51, align 4, !dbg !175, !tbaa !82
  call void @llvm.dbg.value(metadata i32* %6, metadata !64, metadata !DIExpression()), !dbg !72
  %52 = getelementptr inbounds i32, i32* %0, i32 56, !dbg !176
  call void @llvm.dbg.value(metadata i32* %52, metadata !65, metadata !DIExpression()), !dbg !72
  call void @llvm.dbg.value(metadata i32* %6, metadata !66, metadata !DIExpression()), !dbg !72
  %53 = getelementptr inbounds i32, i32* %0, i32 52, !dbg !177
  call void @llvm.dbg.value(metadata i32* %53, metadata !67, metadata !DIExpression()), !dbg !72
  store i32 430227734, i32* %6, align 4, !dbg !178, !tbaa !82
  %54 = getelementptr inbounds i32, i32* %0, i32 49, !dbg !179
  store i32 506948616, i32* %54, align 4, !dbg !180, !tbaa !82
  %55 = getelementptr inbounds i32, i32* %0, i32 50, !dbg !181
  store i32 659060556, i32* %55, align 4, !dbg !182, !tbaa !82
  %56 = getelementptr inbounds i32, i32* %0, i32 51, !dbg !183
  store i32 883997877, i32* %56, align 4, !dbg !184, !tbaa !82
  store i32 958139571, i32* %53, align 4, !dbg !185, !tbaa !82
  %57 = getelementptr inbounds i32, i32* %0, i32 53, !dbg !186
  store i32 1322822218, i32* %57, align 4, !dbg !187, !tbaa !82
  %58 = getelementptr inbounds i32, i32* %0, i32 54, !dbg !188
  store i32 1537002063, i32* %58, align 4, !dbg !189, !tbaa !82
  %59 = getelementptr inbounds i32, i32* %0, i32 55, !dbg !190
  store i32 1747873779, i32* %59, align 4, !dbg !191, !tbaa !82
  call void @llvm.dbg.value(metadata i32* %52, metadata !68, metadata !DIExpression()), !dbg !72
  %60 = getelementptr inbounds i32, i32* %0, i32 60, !dbg !192
  call void @llvm.dbg.value(metadata i32* %60, metadata !69, metadata !DIExpression()), !dbg !72
  store i32 1955562222, i32* %52, align 4, !dbg !193, !tbaa !82
  %61 = getelementptr inbounds i32, i32* %0, i32 57, !dbg !194
  store i32 2024104815, i32* %61, align 4, !dbg !195, !tbaa !82
  %62 = getelementptr inbounds i32, i32* %0, i32 58, !dbg !196
  store i32 -2067236844, i32* %62, align 4, !dbg !197, !tbaa !82
  %63 = getelementptr inbounds i32, i32* %0, i32 59, !dbg !198
  store i32 -1933114872, i32* %63, align 4, !dbg !199, !tbaa !82
  store i32 -1866530822, i32* %60, align 4, !dbg !200, !tbaa !82
  %64 = getelementptr inbounds i32, i32* %0, i32 61, !dbg !201
  store i32 -1538233109, i32* %64, align 4, !dbg !202, !tbaa !82
  %65 = getelementptr inbounds i32, i32* %0, i32 62, !dbg !203
  store i32 -1090935817, i32* %65, align 4, !dbg !204, !tbaa !82
  %66 = getelementptr inbounds i32, i32* %0, i32 63, !dbg !205
  store i32 -965641998, i32* %66, align 4, !dbg !206, !tbaa !82
  call void @llvm.dbg.value(metadata i32* %3, metadata !70, metadata !DIExpression()), !dbg !72
  %67 = getelementptr inbounds i32, i32* %0, i32 132, !dbg !207
  call void @llvm.dbg.value(metadata i32* %67, metadata !71, metadata !DIExpression()), !dbg !72
  store i32 1779033703, i32* %3, align 4, !dbg !208, !tbaa !82
  %68 = getelementptr inbounds i32, i32* %0, i32 129, !dbg !209
  store i32 -1150833019, i32* %68, align 4, !dbg !210, !tbaa !82
  %69 = getelementptr inbounds i32, i32* %0, i32 130, !dbg !211
  store i32 1013904242, i32* %69, align 4, !dbg !212, !tbaa !82
  %70 = getelementptr inbounds i32, i32* %0, i32 131, !dbg !213
  store i32 -1521486534, i32* %70, align 4, !dbg !214, !tbaa !82
  store i32 1359893119, i32* %67, align 4, !dbg !215, !tbaa !82
  %71 = getelementptr inbounds i32, i32* %0, i32 133, !dbg !216
  store i32 -1694144372, i32* %71, align 4, !dbg !217, !tbaa !82
  %72 = getelementptr inbounds i32, i32* %0, i32 134, !dbg !218
  store i32 528734635, i32* %72, align 4, !dbg !219, !tbaa !82
  %73 = getelementptr inbounds i32, i32* %0, i32 135, !dbg !220
  store i32 1541459225, i32* %73, align 4, !dbg !221, !tbaa !82
  store i32 0, i32* %2, align 4, !dbg !222, !tbaa !82
  ret void, !dbg !223
}

; Function Attrs: mustprogress nofree nosync nounwind readnone speculatable willreturn
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: nofree nosync nounwind uwtable
define dso_local void @Hacl_SHA2_256_update(i32* nocapture noundef %0, i8* nocapture noundef readonly %1) local_unnamed_addr #2 !dbg !224 {
  call void @llvm.dbg.value(metadata i32* %0, metadata !229, metadata !DIExpression()), !dbg !231
  call void @llvm.dbg.value(metadata i8* %1, metadata !230, metadata !DIExpression()), !dbg !231
  call fastcc void @Hacl_Impl_SHA2_256_update(i32* noundef %0, i8* noundef %1), !dbg !232
  ret void, !dbg !233
}

; Function Attrs: nofree nosync nounwind uwtable
define internal fastcc void @Hacl_Impl_SHA2_256_update(i32* nocapture noundef %0, i8* nocapture noundef readonly %1) unnamed_addr #2 !dbg !234 {
  %3 = alloca [16 x i32], align 4
  %4 = bitcast [16 x i32]* %3 to i8*
  %5 = alloca [8 x i32], align 4
  call void @llvm.dbg.value(metadata i32* %0, metadata !236, metadata !DIExpression()), !dbg !291
  call void @llvm.dbg.value(metadata i8* %1, metadata !237, metadata !DIExpression()), !dbg !291
  %6 = bitcast [16 x i32]* %3 to i8*, !dbg !292
  call void @llvm.lifetime.start.p0i8(i64 64, i8* nonnull %6) #7, !dbg !292
  call void @llvm.dbg.declare(metadata [16 x i32]* %3, metadata !238, metadata !DIExpression()), !dbg !293
  call void @llvm.memset.p0i8.i32(i8* noundef nonnull align 4 dereferenceable(64) %6, i8 0, i32 64, i1 false), !dbg !293
  call void @llvm.dbg.value(metadata [16 x i32]* %3, metadata !294, metadata !DIExpression()) #7, !dbg !307
  call void @llvm.dbg.value(metadata i8* %1, metadata !299, metadata !DIExpression()) #7, !dbg !307
  call void @llvm.dbg.value(metadata i32 16, metadata !300, metadata !DIExpression()) #7, !dbg !307
  call void @llvm.dbg.value(metadata i32 0, metadata !301, metadata !DIExpression()) #7, !dbg !309
  br label %7, !dbg !310

7:                                                ; preds = %7, %2
  %8 = phi i32 [ 0, %2 ], [ %15, %7 ]
  call void @llvm.dbg.value(metadata i32 %8, metadata !301, metadata !DIExpression()) #7, !dbg !309
  %9 = shl i32 %8, 2, !dbg !311
  %10 = getelementptr inbounds i8, i8* %1, i32 %9, !dbg !312
  call void @llvm.dbg.value(metadata i8* %10, metadata !303, metadata !DIExpression()) #7, !dbg !313
  call void @llvm.dbg.value(metadata i8* %10, metadata !314, metadata !DIExpression()) #7, !dbg !321
  %11 = bitcast i8* %10 to i32*, !dbg !323
  %12 = load i32, i32* %11, align 1, !dbg !323
  call void @llvm.dbg.value(metadata i32 %12, metadata !320, metadata !DIExpression()) #7, !dbg !321
  call void @llvm.dbg.value(metadata i32 %12, metadata !324, metadata !DIExpression()) #7, !dbg !330
  %13 = call i32 @llvm.bswap.i32(i32 %12) #7, !dbg !332
  call void @llvm.dbg.value(metadata i32 %13, metadata !306, metadata !DIExpression()) #7, !dbg !313
  %14 = getelementptr inbounds [16 x i32], [16 x i32]* %3, i32 0, i32 %8, !dbg !333
  store i32 %13, i32* %14, align 4, !dbg !334, !tbaa !82
  %15 = add nuw nsw i32 %8, 1, !dbg !335
  call void @llvm.dbg.value(metadata i32 %15, metadata !301, metadata !DIExpression()) #7, !dbg !309
  %16 = icmp eq i32 %15, 16, !dbg !336
  br i1 %16, label %17, label %7, !dbg !310, !llvm.loop !337

17:                                               ; preds = %7
  call void @llvm.dbg.value(metadata i32* %20, metadata !242, metadata !DIExpression()), !dbg !291
  %18 = getelementptr inbounds i32, i32* %0, i32 64, !dbg !341
  %19 = bitcast i32* %18 to i8*, !dbg !291
  call void @llvm.dbg.value(metadata i32* %18, metadata !243, metadata !DIExpression()), !dbg !291
  call void @llvm.dbg.value(metadata i32* %0, metadata !244, metadata !DIExpression()), !dbg !291
  call void @llvm.dbg.value(metadata i32* %113, metadata !245, metadata !DIExpression()), !dbg !291
  call void @llvm.dbg.value(metadata i32 0, metadata !246, metadata !DIExpression()), !dbg !342
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* noundef nonnull align 4 dereferenceable(64) %19, i8* noundef nonnull align 4 dereferenceable(64) %4, i32 64, i1 false), !dbg !343, !tbaa !82
  call void @llvm.dbg.value(metadata i32 undef, metadata !246, metadata !DIExpression()), !dbg !342
  call void @llvm.dbg.value(metadata i32 undef, metadata !248, metadata !DIExpression()), !dbg !344
  call void @llvm.dbg.value(metadata i32 undef, metadata !246, metadata !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value)), !dbg !342
  %20 = getelementptr inbounds i32, i32* %0, i32 128, !dbg !345
  br label %40, !dbg !346

21:                                               ; preds = %40
  %22 = bitcast [8 x i32]* %5 to i8*, !dbg !347
  call void @llvm.lifetime.start.p0i8(i64 32, i8* nonnull %22) #7, !dbg !347
  call void @llvm.dbg.declare(metadata [8 x i32]* %5, metadata !259, metadata !DIExpression()), !dbg !348
  %23 = getelementptr inbounds [8 x i32], [8 x i32]* %5, i32 0, i32 0, !dbg !349
  %24 = bitcast i32* %20 to i8*, !dbg !349
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* noundef nonnull align 4 dereferenceable(32) %22, i8* noundef nonnull align 4 dereferenceable(32) %24, i32 32, i1 false), !dbg !349
  call void @llvm.dbg.value(metadata i32 0, metadata !263, metadata !DIExpression()), !dbg !350
  %25 = getelementptr inbounds [8 x i32], [8 x i32]* %5, i32 0, i32 1
  %26 = getelementptr inbounds [8 x i32], [8 x i32]* %5, i32 0, i32 2
  %27 = getelementptr inbounds [8 x i32], [8 x i32]* %5, i32 0, i32 3
  %28 = getelementptr inbounds [8 x i32], [8 x i32]* %5, i32 0, i32 4
  %29 = getelementptr inbounds [8 x i32], [8 x i32]* %5, i32 0, i32 5
  %30 = getelementptr inbounds [8 x i32], [8 x i32]* %5, i32 0, i32 6
  %31 = getelementptr inbounds [8 x i32], [8 x i32]* %5, i32 0, i32 7
  %32 = load i32, i32* %23, align 4, !tbaa !82
  %33 = load i32, i32* %25, align 4, !tbaa !82
  %34 = load i32, i32* %26, align 4, !tbaa !82
  %35 = load i32, i32* %27, align 4, !tbaa !82
  %36 = load i32, i32* %28, align 4, !tbaa !82
  %37 = load i32, i32* %29, align 4, !tbaa !82
  %38 = load i32, i32* %30, align 4, !tbaa !82
  %39 = load i32, i32* %31, align 4, !tbaa !82
  call void @llvm.dbg.value(metadata i32 0, metadata !263, metadata !DIExpression()), !dbg !350
  br label %71, !dbg !351

40:                                               ; preds = %17, %40
  %41 = phi i32 [ %68, %40 ], [ 16, %17 ]
  call void @llvm.dbg.value(metadata i32 %41, metadata !251, metadata !DIExpression()), !dbg !352
  %42 = add nsw i32 %41, -16, !dbg !353
  %43 = getelementptr inbounds i32, i32* %18, i32 %42, !dbg !354
  %44 = load i32, i32* %43, align 4, !dbg !354, !tbaa !82
  call void @llvm.dbg.value(metadata i32 %44, metadata !253, metadata !DIExpression()), !dbg !355
  %45 = add nsw i32 %41, -15, !dbg !356
  %46 = getelementptr inbounds i32, i32* %18, i32 %45, !dbg !357
  %47 = load i32, i32* %46, align 4, !dbg !357, !tbaa !82
  call void @llvm.dbg.value(metadata i32 %47, metadata !256, metadata !DIExpression()), !dbg !355
  %48 = add nsw i32 %41, -7, !dbg !358
  %49 = getelementptr inbounds i32, i32* %18, i32 %48, !dbg !359
  %50 = load i32, i32* %49, align 4, !dbg !359, !tbaa !82
  call void @llvm.dbg.value(metadata i32 %50, metadata !257, metadata !DIExpression()), !dbg !355
  %51 = add nsw i32 %41, -2, !dbg !360
  %52 = getelementptr inbounds i32, i32* %18, i32 %51, !dbg !361
  %53 = load i32, i32* %52, align 4, !dbg !361, !tbaa !82
  call void @llvm.dbg.value(metadata i32 %53, metadata !258, metadata !DIExpression()), !dbg !355
  %54 = call i32 @llvm.fshl.i32(i32 %53, i32 %53, i32 15), !dbg !362
  %55 = call i32 @llvm.fshl.i32(i32 %53, i32 %53, i32 13), !dbg !363
  %56 = lshr i32 %53, 10, !dbg !364
  %57 = xor i32 %55, %56, !dbg !365
  %58 = xor i32 %57, %54, !dbg !366
  %59 = call i32 @llvm.fshl.i32(i32 %47, i32 %47, i32 25), !dbg !367
  %60 = call i32 @llvm.fshl.i32(i32 %47, i32 %47, i32 14), !dbg !368
  %61 = lshr i32 %47, 3, !dbg !369
  %62 = xor i32 %60, %61, !dbg !370
  %63 = xor i32 %62, %59, !dbg !371
  %64 = add i32 %50, %44, !dbg !372
  %65 = add i32 %64, %63, !dbg !373
  %66 = add i32 %65, %58, !dbg !374
  %67 = getelementptr inbounds i32, i32* %18, i32 %41, !dbg !375
  store i32 %66, i32* %67, align 4, !dbg !376, !tbaa !82
  %68 = add nuw nsw i32 %41, 1, !dbg !377
  call void @llvm.dbg.value(metadata i32 %68, metadata !251, metadata !DIExpression()), !dbg !352
  %69 = icmp eq i32 %68, 64, !dbg !378
  br i1 %69, label %21, label %40, !dbg !346, !llvm.loop !379

70:                                               ; preds = %71
  store i32 %108, i32* %23, align 4, !dbg !381, !tbaa !82
  store i32 %73, i32* %25, align 4, !dbg !381, !tbaa !82
  store i32 %74, i32* %26, align 4, !dbg !381, !tbaa !82
  store i32 %75, i32* %27, align 4, !dbg !381, !tbaa !82
  store i32 %109, i32* %28, align 4, !dbg !381, !tbaa !82
  store i32 %77, i32* %29, align 4, !dbg !381, !tbaa !82
  store i32 %78, i32* %30, align 4, !dbg !381, !tbaa !82
  store i32 %79, i32* %31, align 4, !dbg !381, !tbaa !82
  call void @llvm.dbg.value(metadata i32 0, metadata !283, metadata !DIExpression()), !dbg !382
  br label %116, !dbg !383

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
  call void @llvm.dbg.value(metadata i32 %72, metadata !263, metadata !DIExpression()), !dbg !350
  call void @llvm.dbg.value(metadata i32 %73, metadata !265, metadata !DIExpression()), !dbg !381
  call void @llvm.dbg.value(metadata i32 %74, metadata !268, metadata !DIExpression()), !dbg !381
  call void @llvm.dbg.value(metadata i32 %75, metadata !269, metadata !DIExpression()), !dbg !381
  call void @llvm.dbg.value(metadata i32 %76, metadata !270, metadata !DIExpression()), !dbg !381
  call void @llvm.dbg.value(metadata i32 %77, metadata !271, metadata !DIExpression()), !dbg !381
  call void @llvm.dbg.value(metadata i32 %78, metadata !272, metadata !DIExpression()), !dbg !381
  call void @llvm.dbg.value(metadata i32 %79, metadata !273, metadata !DIExpression()), !dbg !381
  call void @llvm.dbg.value(metadata i32 %80, metadata !274, metadata !DIExpression()), !dbg !381
  %81 = getelementptr inbounds i32, i32* %0, i32 %72, !dbg !384
  %82 = load i32, i32* %81, align 4, !dbg !384, !tbaa !82
  call void @llvm.dbg.value(metadata i32 %82, metadata !275, metadata !DIExpression()), !dbg !381
  %83 = getelementptr inbounds i32, i32* %18, i32 %72, !dbg !385
  %84 = load i32, i32* %83, align 4, !dbg !385, !tbaa !82
  call void @llvm.dbg.value(metadata i32 %84, metadata !276, metadata !DIExpression()), !dbg !381
  %85 = call i32 @llvm.fshl.i32(i32 %77, i32 %77, i32 26), !dbg !386
  %86 = call i32 @llvm.fshl.i32(i32 %77, i32 %77, i32 21), !dbg !387
  %87 = call i32 @llvm.fshl.i32(i32 %77, i32 %77, i32 7), !dbg !388
  %88 = xor i32 %86, %87, !dbg !389
  %89 = xor i32 %88, %85, !dbg !390
  %90 = and i32 %78, %77, !dbg !391
  %91 = xor i32 %77, -1, !dbg !392
  %92 = and i32 %79, %91, !dbg !393
  %93 = add i32 %89, %90, !dbg !394
  %94 = add i32 %93, %80, !dbg !395
  %95 = add i32 %94, %92, !dbg !396
  %96 = add i32 %95, %82, !dbg !397
  %97 = add i32 %96, %84, !dbg !398
  call void @llvm.dbg.value(metadata i32 %97, metadata !277, metadata !DIExpression()), !dbg !381
  %98 = call i32 @llvm.fshl.i32(i32 %73, i32 %73, i32 30), !dbg !399
  %99 = call i32 @llvm.fshl.i32(i32 %73, i32 %73, i32 19), !dbg !400
  %100 = call i32 @llvm.fshl.i32(i32 %73, i32 %73, i32 10), !dbg !401
  %101 = xor i32 %99, %100, !dbg !402
  %102 = xor i32 %101, %98, !dbg !403
  %103 = and i32 %74, %73, !dbg !404
  %104 = xor i32 %74, %73, !dbg !405
  %105 = and i32 %104, %75, !dbg !405
  %106 = xor i32 %105, %103, !dbg !406
  %107 = add i32 %106, %102, !dbg !407
  call void @llvm.dbg.value(metadata i32 %107, metadata !278, metadata !DIExpression()), !dbg !381
  %108 = add i32 %107, %97, !dbg !408
  call void @llvm.dbg.value(metadata i32 %108, metadata !279, metadata !DIExpression()), !dbg !381
  %109 = add i32 %97, %76, !dbg !409
  call void @llvm.dbg.value(metadata i32 %109, metadata !280, metadata !DIExpression()), !dbg !381
  call void @llvm.dbg.value(metadata i32* %23, metadata !281, metadata !DIExpression()), !dbg !381
  call void @llvm.dbg.value(metadata i32* %28, metadata !282, metadata !DIExpression()), !dbg !381
  %110 = add nuw nsw i32 %72, 1, !dbg !410
  call void @llvm.dbg.value(metadata i32 %110, metadata !263, metadata !DIExpression()), !dbg !350
  %111 = icmp eq i32 %110, 64, !dbg !411
  br i1 %111, label %70, label %71, !dbg !351, !llvm.loop !412

112:                                              ; preds = %116
  %113 = getelementptr inbounds i32, i32* %0, i32 136, !dbg !414
  %114 = load i32, i32* %113, align 4, !dbg !415, !tbaa !82
  call void @llvm.dbg.value(metadata i32 %114, metadata !289, metadata !DIExpression()), !dbg !291
  call void @llvm.dbg.value(metadata i32 1, metadata !290, metadata !DIExpression()), !dbg !291
  %115 = add i32 %114, 1, !dbg !416
  store i32 %115, i32* %113, align 4, !dbg !417, !tbaa !82
  call void @llvm.lifetime.end.p0i8(i64 32, i8* nonnull %22) #7, !dbg !418
  call void @llvm.lifetime.end.p0i8(i64 64, i8* nonnull %6) #7, !dbg !418
  ret void, !dbg !418

116:                                              ; preds = %70, %116
  %117 = phi i32 [ 0, %70 ], [ %123, %116 ]
  call void @llvm.dbg.value(metadata i32 %117, metadata !283, metadata !DIExpression()), !dbg !382
  %118 = getelementptr inbounds i32, i32* %20, i32 %117, !dbg !419
  %119 = load i32, i32* %118, align 4, !dbg !419, !tbaa !82
  call void @llvm.dbg.value(metadata i32 %119, metadata !285, metadata !DIExpression()), !dbg !420
  %120 = getelementptr inbounds [8 x i32], [8 x i32]* %5, i32 0, i32 %117, !dbg !421
  %121 = load i32, i32* %120, align 4, !dbg !421, !tbaa !82
  call void @llvm.dbg.value(metadata i32 %121, metadata !288, metadata !DIExpression()), !dbg !420
  %122 = add i32 %121, %119, !dbg !422
  store i32 %122, i32* %118, align 4, !dbg !423, !tbaa !82
  %123 = add nuw nsw i32 %117, 1, !dbg !424
  call void @llvm.dbg.value(metadata i32 %123, metadata !283, metadata !DIExpression()), !dbg !382
  %124 = icmp eq i32 %123, 8, !dbg !425
  br i1 %124, label %112, label %116, !dbg !383, !llvm.loop !426
}

; Function Attrs: nofree nosync nounwind uwtable
define dso_local void @Hacl_SHA2_256_update_multi(i32* nocapture noundef %0, i8* nocapture noundef readonly %1, i32 noundef %2) local_unnamed_addr #2 !dbg !428 {
  call void @llvm.dbg.value(metadata i32* %0, metadata !430, metadata !DIExpression()), !dbg !433
  call void @llvm.dbg.value(metadata i8* %1, metadata !431, metadata !DIExpression()), !dbg !433
  call void @llvm.dbg.value(metadata i32 %2, metadata !432, metadata !DIExpression()), !dbg !433
  call void @llvm.dbg.value(metadata i32* %0, metadata !434, metadata !DIExpression()) #7, !dbg !444
  call void @llvm.dbg.value(metadata i8* %1, metadata !437, metadata !DIExpression()) #7, !dbg !444
  call void @llvm.dbg.value(metadata i32 %2, metadata !438, metadata !DIExpression()) #7, !dbg !444
  call void @llvm.dbg.value(metadata i32 0, metadata !439, metadata !DIExpression()) #7, !dbg !446
  %4 = icmp eq i32 %2, 0, !dbg !447
  br i1 %4, label %11, label %5, !dbg !448

5:                                                ; preds = %3, %5
  %6 = phi i32 [ %9, %5 ], [ 0, %3 ]
  call void @llvm.dbg.value(metadata i32 %6, metadata !439, metadata !DIExpression()) #7, !dbg !446
  %7 = shl i32 %6, 6, !dbg !449
  %8 = getelementptr inbounds i8, i8* %1, i32 %7, !dbg !450
  call void @llvm.dbg.value(metadata i8* %8, metadata !441, metadata !DIExpression()) #7, !dbg !451
  call fastcc void @Hacl_Impl_SHA2_256_update(i32* noundef %0, i8* noundef %8) #7, !dbg !452
  %9 = add nuw i32 %6, 1, !dbg !453
  call void @llvm.dbg.value(metadata i32 %9, metadata !439, metadata !DIExpression()) #7, !dbg !446
  %10 = icmp eq i32 %9, %2, !dbg !447
  br i1 %10, label %11, label %5, !dbg !448, !llvm.loop !454

11:                                               ; preds = %5, %3
  ret void, !dbg !456
}

; Function Attrs: nofree nosync nounwind uwtable
define dso_local void @Hacl_SHA2_256_update_last(i32* nocapture noundef %0, i8* nocapture noundef readonly %1, i32 noundef %2) local_unnamed_addr #2 !dbg !457 {
  %4 = alloca [128 x i8], align 1
  call void @llvm.dbg.value(metadata i32* %0, metadata !459, metadata !DIExpression()), !dbg !462
  call void @llvm.dbg.value(metadata i8* %1, metadata !460, metadata !DIExpression()), !dbg !462
  call void @llvm.dbg.value(metadata i32 %2, metadata !461, metadata !DIExpression()), !dbg !462
  call void @llvm.dbg.value(metadata i32* %0, metadata !463, metadata !DIExpression()) #7, !dbg !480
  call void @llvm.dbg.value(metadata i8* %1, metadata !466, metadata !DIExpression()) #7, !dbg !480
  call void @llvm.dbg.value(metadata i32 %2, metadata !467, metadata !DIExpression()) #7, !dbg !480
  %5 = getelementptr inbounds [128 x i8], [128 x i8]* %4, i32 0, i32 0, !dbg !482
  call void @llvm.lifetime.start.p0i8(i64 128, i8* nonnull %5) #7, !dbg !482
  call void @llvm.dbg.declare(metadata [128 x i8]* %4, metadata !468, metadata !DIExpression()) #7, !dbg !483
  call void @llvm.memset.p0i8.i32(i8* noundef nonnull align 1 dereferenceable(128) %5, i8 0, i32 128, i1 false) #7, !dbg !483
  %6 = icmp ult i32 %2, 56, !dbg !484
  %7 = select i1 %6, i32 1, i32 2
  call void @llvm.dbg.value(metadata i32 %7, metadata !472, metadata !DIExpression()) #7, !dbg !480
  %8 = getelementptr inbounds [128 x i8], [128 x i8]* %4, i32 0, i32 64, !dbg !486
  %9 = select i1 %6, i8* %8, i8* %5, !dbg !486
  call void @llvm.dbg.value(metadata i8* %9, metadata !473, metadata !DIExpression()) #7, !dbg !480
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* nonnull align 1 %9, i8* align 1 %1, i32 %2, i1 false) #7, !dbg !487
  %10 = getelementptr inbounds i32, i32* %0, i32 136, !dbg !488
  %11 = load i32, i32* %10, align 4, !dbg !488, !tbaa !82
  call void @llvm.dbg.value(metadata i32 %11, metadata !474, metadata !DIExpression()) #7, !dbg !480
  %12 = getelementptr inbounds i8, i8* %9, i32 %2, !dbg !489
  call void @llvm.dbg.value(metadata i8* %12, metadata !475, metadata !DIExpression()) #7, !dbg !480
  %13 = sub i32 55, %2, !dbg !490
  %14 = and i32 %13, 63, !dbg !491
  call void @llvm.dbg.value(metadata i32 %14, metadata !476, metadata !DIExpression()) #7, !dbg !480
  call void @llvm.dbg.value(metadata i8* %12, metadata !477, metadata !DIExpression()) #7, !dbg !480
  %15 = getelementptr inbounds i8, i8* %12, i32 1, !dbg !492
  %16 = getelementptr inbounds i8, i8* %15, i32 %14, !dbg !493
  call void @llvm.dbg.value(metadata i8* %16, metadata !478, metadata !DIExpression()) #7, !dbg !480
  %17 = zext i32 %11 to i64, !dbg !494
  %18 = shl nuw nsw i64 %17, 6, !dbg !495
  %19 = zext i32 %2 to i64, !dbg !496
  %20 = add nuw nsw i64 %18, %19, !dbg !497
  %21 = shl nuw nsw i64 %20, 3, !dbg !498
  call void @llvm.dbg.value(metadata i64 %21, metadata !479, metadata !DIExpression()) #7, !dbg !480
  store i8 -128, i8* %12, align 1, !dbg !499, !tbaa !500
  call void @llvm.dbg.value(metadata i64 %21, metadata !501, metadata !DIExpression()) #7, !dbg !506
  %22 = call i64 @llvm.bswap.i64(i64 %21) #7, !dbg !508
  call void @llvm.dbg.value(metadata i8* %16, metadata !509, metadata !DIExpression()) #7, !dbg !515
  call void @llvm.dbg.value(metadata i64 %22, metadata !514, metadata !DIExpression()) #7, !dbg !515
  %23 = bitcast i8* %16 to i64*, !dbg !517
  store i64 %22, i64* %23, align 1, !dbg !517
  call void @llvm.dbg.value(metadata i32* %0, metadata !434, metadata !DIExpression()) #7, !dbg !518
  call void @llvm.dbg.value(metadata i8* %9, metadata !437, metadata !DIExpression()) #7, !dbg !518
  call void @llvm.dbg.value(metadata i32 %7, metadata !438, metadata !DIExpression()) #7, !dbg !518
  call void @llvm.dbg.value(metadata i32 0, metadata !439, metadata !DIExpression()) #7, !dbg !520
  br label %24

24:                                               ; preds = %24, %3
  %25 = phi i32 [ %28, %24 ], [ 0, %3 ]
  call void @llvm.dbg.value(metadata i32 %25, metadata !439, metadata !DIExpression()) #7, !dbg !520
  %26 = shl i32 %25, 6, !dbg !521
  %27 = getelementptr inbounds i8, i8* %9, i32 %26, !dbg !522
  call void @llvm.dbg.value(metadata i8* %27, metadata !441, metadata !DIExpression()) #7, !dbg !523
  call fastcc void @Hacl_Impl_SHA2_256_update(i32* noundef %0, i8* noundef nonnull %27) #7, !dbg !524
  %28 = add nuw i32 %25, 1, !dbg !525
  call void @llvm.dbg.value(metadata i32 %28, metadata !439, metadata !DIExpression()) #7, !dbg !520
  %29 = icmp eq i32 %28, %7, !dbg !526
  br i1 %29, label %30, label %24, !dbg !527, !llvm.loop !528

30:                                               ; preds = %24
  call void @llvm.lifetime.end.p0i8(i64 128, i8* nonnull %5) #7, !dbg !530
  ret void, !dbg !531
}

; Function Attrs: nofree nosync nounwind uwtable
define dso_local void @Hacl_SHA2_256_finish(i32* nocapture noundef readonly %0, i8* nocapture noundef writeonly %1) local_unnamed_addr #2 !dbg !532 {
  call void @llvm.dbg.value(metadata i32* %0, metadata !534, metadata !DIExpression()), !dbg !536
  call void @llvm.dbg.value(metadata i8* %1, metadata !535, metadata !DIExpression()), !dbg !536
  call void @llvm.dbg.value(metadata i32* %0, metadata !537, metadata !DIExpression()) #7, !dbg !542
  call void @llvm.dbg.value(metadata i8* %1, metadata !540, metadata !DIExpression()) #7, !dbg !542
  %3 = getelementptr inbounds i32, i32* %0, i32 128, !dbg !544
  call void @llvm.dbg.value(metadata i32* %3, metadata !541, metadata !DIExpression()) #7, !dbg !542
  call void @llvm.dbg.value(metadata i8* %1, metadata !545, metadata !DIExpression()) #7, !dbg !558
  call void @llvm.dbg.value(metadata i32* %3, metadata !550, metadata !DIExpression()) #7, !dbg !558
  call void @llvm.dbg.value(metadata i32 8, metadata !551, metadata !DIExpression()) #7, !dbg !558
  call void @llvm.dbg.value(metadata i32 0, metadata !552, metadata !DIExpression()) #7, !dbg !560
  br label %4, !dbg !561

4:                                                ; preds = %4, %2
  %5 = phi i32 [ 0, %2 ], [ %12, %4 ]
  call void @llvm.dbg.value(metadata i32 %5, metadata !552, metadata !DIExpression()) #7, !dbg !560
  %6 = getelementptr inbounds i32, i32* %3, i32 %5, !dbg !562
  %7 = load i32, i32* %6, align 4, !dbg !562, !tbaa !82
  call void @llvm.dbg.value(metadata i32 %7, metadata !554, metadata !DIExpression()) #7, !dbg !563
  %8 = shl i32 %5, 2, !dbg !564
  %9 = getelementptr inbounds i8, i8* %1, i32 %8, !dbg !565
  call void @llvm.dbg.value(metadata i8* %9, metadata !557, metadata !DIExpression()) #7, !dbg !563
  call void @llvm.dbg.value(metadata i32 %7, metadata !324, metadata !DIExpression()) #7, !dbg !566
  %10 = call i32 @llvm.bswap.i32(i32 %7) #7, !dbg !568
  call void @llvm.dbg.value(metadata i8* %9, metadata !569, metadata !DIExpression()) #7, !dbg !575
  call void @llvm.dbg.value(metadata i32 %10, metadata !574, metadata !DIExpression()) #7, !dbg !575
  %11 = bitcast i8* %9 to i32*, !dbg !577
  store i32 %10, i32* %11, align 1, !dbg !577
  %12 = add nuw nsw i32 %5, 1, !dbg !578
  call void @llvm.dbg.value(metadata i32 %12, metadata !552, metadata !DIExpression()) #7, !dbg !560
  %13 = icmp eq i32 %12, 8, !dbg !579
  br i1 %13, label %14, label %4, !dbg !561, !llvm.loop !580

14:                                               ; preds = %4
  ret void, !dbg !582
}

; Function Attrs: nofree nosync nounwind uwtable
define dso_local void @Hacl_SHA2_256_hash(i8* nocapture noundef writeonly %0, i8* nocapture noundef readonly %1, i32 noundef %2) local_unnamed_addr #2 !dbg !583 {
  %4 = alloca [128 x i8], align 1
  %5 = alloca [137 x i32], align 4
  call void @llvm.dbg.value(metadata i8* %0, metadata !587, metadata !DIExpression()), !dbg !590
  call void @llvm.dbg.value(metadata i8* %1, metadata !588, metadata !DIExpression()), !dbg !590
  call void @llvm.dbg.value(metadata i32 %2, metadata !589, metadata !DIExpression()), !dbg !590
  call void @llvm.dbg.value(metadata i8* %0, metadata !591, metadata !DIExpression()) #7, !dbg !604
  call void @llvm.dbg.value(metadata i8* %1, metadata !594, metadata !DIExpression()) #7, !dbg !604
  call void @llvm.dbg.value(metadata i32 %2, metadata !595, metadata !DIExpression()) #7, !dbg !604
  %6 = bitcast [137 x i32]* %5 to i8*, !dbg !606
  call void @llvm.lifetime.start.p0i8(i64 548, i8* nonnull %6) #7, !dbg !606
  call void @llvm.dbg.declare(metadata [137 x i32]* %5, metadata !596, metadata !DIExpression()) #7, !dbg !607
  call void @llvm.memset.p0i8.i32(i8* noundef nonnull align 4 dereferenceable(548) %6, i8 0, i32 548, i1 false) #7, !dbg !607
  %7 = lshr i32 %2, 6, !dbg !608
  call void @llvm.dbg.value(metadata i32 %7, metadata !600, metadata !DIExpression()) #7, !dbg !604
  %8 = and i32 %2, 63, !dbg !609
  call void @llvm.dbg.value(metadata i32 %2, metadata !601, metadata !DIExpression(DW_OP_constu, 63, DW_OP_and, DW_OP_stack_value)) #7, !dbg !604
  call void @llvm.dbg.value(metadata i8* %1, metadata !602, metadata !DIExpression()) #7, !dbg !604
  %9 = and i32 %2, -64, !dbg !610
  %10 = getelementptr inbounds i8, i8* %1, i32 %9, !dbg !611
  call void @llvm.dbg.value(metadata i8* %10, metadata !603, metadata !DIExpression()) #7, !dbg !604
  %11 = getelementptr inbounds [137 x i32], [137 x i32]* %5, i32 0, i32 0, !dbg !612
  call void @llvm.dbg.value(metadata i32* %11, metadata !36, metadata !DIExpression()) #7, !dbg !613
  %12 = getelementptr inbounds [137 x i32], [137 x i32]* %5, i32 0, i32 136, !dbg !615
  call void @llvm.dbg.value(metadata i32* %12, metadata !39, metadata !DIExpression()) #7, !dbg !613
  call void @llvm.dbg.value(metadata i32* %11, metadata !40, metadata !DIExpression()) #7, !dbg !613
  %13 = getelementptr inbounds [137 x i32], [137 x i32]* %5, i32 0, i32 128, !dbg !616
  call void @llvm.dbg.value(metadata i32* %13, metadata !41, metadata !DIExpression()) #7, !dbg !613
  call void @llvm.dbg.value(metadata i32* %11, metadata !42, metadata !DIExpression()) #7, !dbg !613
  %14 = getelementptr inbounds [137 x i32], [137 x i32]* %5, i32 0, i32 16, !dbg !617
  call void @llvm.dbg.value(metadata i32* %14, metadata !43, metadata !DIExpression()) #7, !dbg !613
  %15 = getelementptr inbounds [137 x i32], [137 x i32]* %5, i32 0, i32 32, !dbg !618
  call void @llvm.dbg.value(metadata i32* %15, metadata !44, metadata !DIExpression()) #7, !dbg !613
  %16 = getelementptr inbounds [137 x i32], [137 x i32]* %5, i32 0, i32 48, !dbg !619
  call void @llvm.dbg.value(metadata i32* %16, metadata !45, metadata !DIExpression()) #7, !dbg !613
  call void @llvm.dbg.value(metadata i32* %11, metadata !46, metadata !DIExpression()) #7, !dbg !613
  %17 = getelementptr inbounds [137 x i32], [137 x i32]* %5, i32 0, i32 8, !dbg !620
  call void @llvm.dbg.value(metadata i32* %17, metadata !47, metadata !DIExpression()) #7, !dbg !613
  call void @llvm.dbg.value(metadata i32* %11, metadata !48, metadata !DIExpression()) #7, !dbg !613
  %18 = getelementptr inbounds [137 x i32], [137 x i32]* %5, i32 0, i32 4, !dbg !621
  call void @llvm.dbg.value(metadata i32* %18, metadata !49, metadata !DIExpression()) #7, !dbg !613
  store i32 1116352408, i32* %11, align 4, !dbg !622, !tbaa !82
  %19 = getelementptr inbounds [137 x i32], [137 x i32]* %5, i32 0, i32 1, !dbg !623
  store i32 1899447441, i32* %19, align 4, !dbg !624, !tbaa !82
  %20 = getelementptr inbounds [137 x i32], [137 x i32]* %5, i32 0, i32 2, !dbg !625
  store i32 -1245643825, i32* %20, align 4, !dbg !626, !tbaa !82
  %21 = getelementptr inbounds [137 x i32], [137 x i32]* %5, i32 0, i32 3, !dbg !627
  store i32 -373957723, i32* %21, align 4, !dbg !628, !tbaa !82
  store i32 961987163, i32* %18, align 4, !dbg !629, !tbaa !82
  %22 = getelementptr inbounds [137 x i32], [137 x i32]* %5, i32 0, i32 5, !dbg !630
  store i32 1508970993, i32* %22, align 4, !dbg !631, !tbaa !82
  %23 = getelementptr inbounds [137 x i32], [137 x i32]* %5, i32 0, i32 6, !dbg !632
  store i32 -1841331548, i32* %23, align 4, !dbg !633, !tbaa !82
  %24 = getelementptr inbounds [137 x i32], [137 x i32]* %5, i32 0, i32 7, !dbg !634
  store i32 -1424204075, i32* %24, align 4, !dbg !635, !tbaa !82
  call void @llvm.dbg.value(metadata i32* %17, metadata !50, metadata !DIExpression()) #7, !dbg !613
  %25 = getelementptr inbounds [137 x i32], [137 x i32]* %5, i32 0, i32 12, !dbg !636
  call void @llvm.dbg.value(metadata i32* %25, metadata !51, metadata !DIExpression()) #7, !dbg !613
  store i32 -670586216, i32* %17, align 4, !dbg !637, !tbaa !82
  %26 = getelementptr inbounds [137 x i32], [137 x i32]* %5, i32 0, i32 9, !dbg !638
  store i32 310598401, i32* %26, align 4, !dbg !639, !tbaa !82
  %27 = getelementptr inbounds [137 x i32], [137 x i32]* %5, i32 0, i32 10, !dbg !640
  store i32 607225278, i32* %27, align 4, !dbg !641, !tbaa !82
  %28 = getelementptr inbounds [137 x i32], [137 x i32]* %5, i32 0, i32 11, !dbg !642
  store i32 1426881987, i32* %28, align 4, !dbg !643, !tbaa !82
  store i32 1925078388, i32* %25, align 4, !dbg !644, !tbaa !82
  %29 = getelementptr inbounds [137 x i32], [137 x i32]* %5, i32 0, i32 13, !dbg !645
  store i32 -2132889090, i32* %29, align 4, !dbg !646, !tbaa !82
  %30 = getelementptr inbounds [137 x i32], [137 x i32]* %5, i32 0, i32 14, !dbg !647
  store i32 -1680079193, i32* %30, align 4, !dbg !648, !tbaa !82
  %31 = getelementptr inbounds [137 x i32], [137 x i32]* %5, i32 0, i32 15, !dbg !649
  store i32 -1046744716, i32* %31, align 4, !dbg !650, !tbaa !82
  call void @llvm.dbg.value(metadata i32* %14, metadata !52, metadata !DIExpression()) #7, !dbg !613
  %32 = getelementptr inbounds [137 x i32], [137 x i32]* %5, i32 0, i32 24, !dbg !651
  call void @llvm.dbg.value(metadata i32* %32, metadata !53, metadata !DIExpression()) #7, !dbg !613
  call void @llvm.dbg.value(metadata i32* %14, metadata !54, metadata !DIExpression()) #7, !dbg !613
  %33 = getelementptr inbounds [137 x i32], [137 x i32]* %5, i32 0, i32 20, !dbg !652
  call void @llvm.dbg.value(metadata i32* %33, metadata !55, metadata !DIExpression()) #7, !dbg !613
  store i32 -459576895, i32* %14, align 4, !dbg !653, !tbaa !82
  %34 = getelementptr inbounds [137 x i32], [137 x i32]* %5, i32 0, i32 17, !dbg !654
  store i32 -272742522, i32* %34, align 4, !dbg !655, !tbaa !82
  %35 = getelementptr inbounds [137 x i32], [137 x i32]* %5, i32 0, i32 18, !dbg !656
  store i32 264347078, i32* %35, align 4, !dbg !657, !tbaa !82
  %36 = getelementptr inbounds [137 x i32], [137 x i32]* %5, i32 0, i32 19, !dbg !658
  store i32 604807628, i32* %36, align 4, !dbg !659, !tbaa !82
  store i32 770255983, i32* %33, align 4, !dbg !660, !tbaa !82
  %37 = getelementptr inbounds [137 x i32], [137 x i32]* %5, i32 0, i32 21, !dbg !661
  store i32 1249150122, i32* %37, align 4, !dbg !662, !tbaa !82
  %38 = getelementptr inbounds [137 x i32], [137 x i32]* %5, i32 0, i32 22, !dbg !663
  store i32 1555081692, i32* %38, align 4, !dbg !664, !tbaa !82
  %39 = getelementptr inbounds [137 x i32], [137 x i32]* %5, i32 0, i32 23, !dbg !665
  store i32 1996064986, i32* %39, align 4, !dbg !666, !tbaa !82
  call void @llvm.dbg.value(metadata i32* %32, metadata !56, metadata !DIExpression()) #7, !dbg !613
  %40 = getelementptr inbounds [137 x i32], [137 x i32]* %5, i32 0, i32 28, !dbg !667
  call void @llvm.dbg.value(metadata i32* %40, metadata !57, metadata !DIExpression()) #7, !dbg !613
  store i32 -1740746414, i32* %32, align 4, !dbg !668, !tbaa !82
  %41 = getelementptr inbounds [137 x i32], [137 x i32]* %5, i32 0, i32 25, !dbg !669
  store i32 -1473132947, i32* %41, align 4, !dbg !670, !tbaa !82
  %42 = getelementptr inbounds [137 x i32], [137 x i32]* %5, i32 0, i32 26, !dbg !671
  store i32 -1341970488, i32* %42, align 4, !dbg !672, !tbaa !82
  %43 = getelementptr inbounds [137 x i32], [137 x i32]* %5, i32 0, i32 27, !dbg !673
  store i32 -1084653625, i32* %43, align 4, !dbg !674, !tbaa !82
  store i32 -958395405, i32* %40, align 4, !dbg !675, !tbaa !82
  %44 = getelementptr inbounds [137 x i32], [137 x i32]* %5, i32 0, i32 29, !dbg !676
  store i32 -710438585, i32* %44, align 4, !dbg !677, !tbaa !82
  %45 = getelementptr inbounds [137 x i32], [137 x i32]* %5, i32 0, i32 30, !dbg !678
  store i32 113926993, i32* %45, align 4, !dbg !679, !tbaa !82
  %46 = getelementptr inbounds [137 x i32], [137 x i32]* %5, i32 0, i32 31, !dbg !680
  store i32 338241895, i32* %46, align 4, !dbg !681, !tbaa !82
  call void @llvm.dbg.value(metadata i32* %15, metadata !58, metadata !DIExpression()) #7, !dbg !613
  %47 = getelementptr inbounds [137 x i32], [137 x i32]* %5, i32 0, i32 40, !dbg !682
  call void @llvm.dbg.value(metadata i32* %47, metadata !59, metadata !DIExpression()) #7, !dbg !613
  call void @llvm.dbg.value(metadata i32* %15, metadata !60, metadata !DIExpression()) #7, !dbg !613
  %48 = getelementptr inbounds [137 x i32], [137 x i32]* %5, i32 0, i32 36, !dbg !683
  call void @llvm.dbg.value(metadata i32* %48, metadata !61, metadata !DIExpression()) #7, !dbg !613
  store i32 666307205, i32* %15, align 4, !dbg !684, !tbaa !82
  %49 = getelementptr inbounds [137 x i32], [137 x i32]* %5, i32 0, i32 33, !dbg !685
  store i32 773529912, i32* %49, align 4, !dbg !686, !tbaa !82
  %50 = getelementptr inbounds [137 x i32], [137 x i32]* %5, i32 0, i32 34, !dbg !687
  store i32 1294757372, i32* %50, align 4, !dbg !688, !tbaa !82
  %51 = getelementptr inbounds [137 x i32], [137 x i32]* %5, i32 0, i32 35, !dbg !689
  store i32 1396182291, i32* %51, align 4, !dbg !690, !tbaa !82
  store i32 1695183700, i32* %48, align 4, !dbg !691, !tbaa !82
  %52 = getelementptr inbounds [137 x i32], [137 x i32]* %5, i32 0, i32 37, !dbg !692
  store i32 1986661051, i32* %52, align 4, !dbg !693, !tbaa !82
  %53 = getelementptr inbounds [137 x i32], [137 x i32]* %5, i32 0, i32 38, !dbg !694
  store i32 -2117940946, i32* %53, align 4, !dbg !695, !tbaa !82
  %54 = getelementptr inbounds [137 x i32], [137 x i32]* %5, i32 0, i32 39, !dbg !696
  store i32 -1838011259, i32* %54, align 4, !dbg !697, !tbaa !82
  call void @llvm.dbg.value(metadata i32* %47, metadata !62, metadata !DIExpression()) #7, !dbg !613
  %55 = getelementptr inbounds [137 x i32], [137 x i32]* %5, i32 0, i32 44, !dbg !698
  call void @llvm.dbg.value(metadata i32* %55, metadata !63, metadata !DIExpression()) #7, !dbg !613
  store i32 -1564481375, i32* %47, align 4, !dbg !699, !tbaa !82
  %56 = getelementptr inbounds [137 x i32], [137 x i32]* %5, i32 0, i32 41, !dbg !700
  store i32 -1474664885, i32* %56, align 4, !dbg !701, !tbaa !82
  %57 = getelementptr inbounds [137 x i32], [137 x i32]* %5, i32 0, i32 42, !dbg !702
  store i32 -1035236496, i32* %57, align 4, !dbg !703, !tbaa !82
  %58 = getelementptr inbounds [137 x i32], [137 x i32]* %5, i32 0, i32 43, !dbg !704
  store i32 -949202525, i32* %58, align 4, !dbg !705, !tbaa !82
  store i32 -778901479, i32* %55, align 4, !dbg !706, !tbaa !82
  %59 = getelementptr inbounds [137 x i32], [137 x i32]* %5, i32 0, i32 45, !dbg !707
  store i32 -694614492, i32* %59, align 4, !dbg !708, !tbaa !82
  %60 = getelementptr inbounds [137 x i32], [137 x i32]* %5, i32 0, i32 46, !dbg !709
  store i32 -200395387, i32* %60, align 4, !dbg !710, !tbaa !82
  %61 = getelementptr inbounds [137 x i32], [137 x i32]* %5, i32 0, i32 47, !dbg !711
  store i32 275423344, i32* %61, align 4, !dbg !712, !tbaa !82
  call void @llvm.dbg.value(metadata i32* %16, metadata !64, metadata !DIExpression()) #7, !dbg !613
  %62 = getelementptr inbounds [137 x i32], [137 x i32]* %5, i32 0, i32 56, !dbg !713
  call void @llvm.dbg.value(metadata i32* %62, metadata !65, metadata !DIExpression()) #7, !dbg !613
  call void @llvm.dbg.value(metadata i32* %16, metadata !66, metadata !DIExpression()) #7, !dbg !613
  %63 = getelementptr inbounds [137 x i32], [137 x i32]* %5, i32 0, i32 52, !dbg !714
  call void @llvm.dbg.value(metadata i32* %63, metadata !67, metadata !DIExpression()) #7, !dbg !613
  store i32 430227734, i32* %16, align 4, !dbg !715, !tbaa !82
  %64 = getelementptr inbounds [137 x i32], [137 x i32]* %5, i32 0, i32 49, !dbg !716
  store i32 506948616, i32* %64, align 4, !dbg !717, !tbaa !82
  %65 = getelementptr inbounds [137 x i32], [137 x i32]* %5, i32 0, i32 50, !dbg !718
  store i32 659060556, i32* %65, align 4, !dbg !719, !tbaa !82
  %66 = getelementptr inbounds [137 x i32], [137 x i32]* %5, i32 0, i32 51, !dbg !720
  store i32 883997877, i32* %66, align 4, !dbg !721, !tbaa !82
  store i32 958139571, i32* %63, align 4, !dbg !722, !tbaa !82
  %67 = getelementptr inbounds [137 x i32], [137 x i32]* %5, i32 0, i32 53, !dbg !723
  store i32 1322822218, i32* %67, align 4, !dbg !724, !tbaa !82
  %68 = getelementptr inbounds [137 x i32], [137 x i32]* %5, i32 0, i32 54, !dbg !725
  store i32 1537002063, i32* %68, align 4, !dbg !726, !tbaa !82
  %69 = getelementptr inbounds [137 x i32], [137 x i32]* %5, i32 0, i32 55, !dbg !727
  store i32 1747873779, i32* %69, align 4, !dbg !728, !tbaa !82
  call void @llvm.dbg.value(metadata i32* %62, metadata !68, metadata !DIExpression()) #7, !dbg !613
  %70 = getelementptr inbounds [137 x i32], [137 x i32]* %5, i32 0, i32 60, !dbg !729
  call void @llvm.dbg.value(metadata i32* %70, metadata !69, metadata !DIExpression()) #7, !dbg !613
  store i32 1955562222, i32* %62, align 4, !dbg !730, !tbaa !82
  %71 = getelementptr inbounds [137 x i32], [137 x i32]* %5, i32 0, i32 57, !dbg !731
  store i32 2024104815, i32* %71, align 4, !dbg !732, !tbaa !82
  %72 = getelementptr inbounds [137 x i32], [137 x i32]* %5, i32 0, i32 58, !dbg !733
  store i32 -2067236844, i32* %72, align 4, !dbg !734, !tbaa !82
  %73 = getelementptr inbounds [137 x i32], [137 x i32]* %5, i32 0, i32 59, !dbg !735
  store i32 -1933114872, i32* %73, align 4, !dbg !736, !tbaa !82
  store i32 -1866530822, i32* %70, align 4, !dbg !737, !tbaa !82
  %74 = getelementptr inbounds [137 x i32], [137 x i32]* %5, i32 0, i32 61, !dbg !738
  store i32 -1538233109, i32* %74, align 4, !dbg !739, !tbaa !82
  %75 = getelementptr inbounds [137 x i32], [137 x i32]* %5, i32 0, i32 62, !dbg !740
  store i32 -1090935817, i32* %75, align 4, !dbg !741, !tbaa !82
  %76 = getelementptr inbounds [137 x i32], [137 x i32]* %5, i32 0, i32 63, !dbg !742
  store i32 -965641998, i32* %76, align 4, !dbg !743, !tbaa !82
  call void @llvm.dbg.value(metadata i32* %13, metadata !70, metadata !DIExpression()) #7, !dbg !613
  %77 = getelementptr inbounds [137 x i32], [137 x i32]* %5, i32 0, i32 132, !dbg !744
  call void @llvm.dbg.value(metadata i32* %77, metadata !71, metadata !DIExpression()) #7, !dbg !613
  store i32 1779033703, i32* %13, align 4, !dbg !745, !tbaa !82
  %78 = getelementptr inbounds [137 x i32], [137 x i32]* %5, i32 0, i32 129, !dbg !746
  store i32 -1150833019, i32* %78, align 4, !dbg !747, !tbaa !82
  %79 = getelementptr inbounds [137 x i32], [137 x i32]* %5, i32 0, i32 130, !dbg !748
  store i32 1013904242, i32* %79, align 4, !dbg !749, !tbaa !82
  %80 = getelementptr inbounds [137 x i32], [137 x i32]* %5, i32 0, i32 131, !dbg !750
  store i32 -1521486534, i32* %80, align 4, !dbg !751, !tbaa !82
  store i32 1359893119, i32* %77, align 4, !dbg !752, !tbaa !82
  %81 = getelementptr inbounds [137 x i32], [137 x i32]* %5, i32 0, i32 133, !dbg !753
  store i32 -1694144372, i32* %81, align 4, !dbg !754, !tbaa !82
  %82 = getelementptr inbounds [137 x i32], [137 x i32]* %5, i32 0, i32 134, !dbg !755
  store i32 528734635, i32* %82, align 4, !dbg !756, !tbaa !82
  %83 = getelementptr inbounds [137 x i32], [137 x i32]* %5, i32 0, i32 135, !dbg !757
  store i32 1541459225, i32* %83, align 4, !dbg !758, !tbaa !82
  store i32 0, i32* %12, align 4, !dbg !759, !tbaa !82
  call void @llvm.dbg.value(metadata i32* %11, metadata !434, metadata !DIExpression()) #7, !dbg !760
  call void @llvm.dbg.value(metadata i8* %1, metadata !437, metadata !DIExpression()) #7, !dbg !760
  call void @llvm.dbg.value(metadata i32 %7, metadata !438, metadata !DIExpression()) #7, !dbg !760
  call void @llvm.dbg.value(metadata i32 0, metadata !439, metadata !DIExpression()) #7, !dbg !762
  %84 = icmp ult i32 %2, 64, !dbg !763
  br i1 %84, label %91, label %85, !dbg !764

85:                                               ; preds = %3, %85
  %86 = phi i32 [ %89, %85 ], [ 0, %3 ]
  call void @llvm.dbg.value(metadata i32 %86, metadata !439, metadata !DIExpression()) #7, !dbg !762
  %87 = shl i32 %86, 6, !dbg !765
  %88 = getelementptr inbounds i8, i8* %1, i32 %87, !dbg !766
  call void @llvm.dbg.value(metadata i8* %88, metadata !441, metadata !DIExpression()) #7, !dbg !767
  call fastcc void @Hacl_Impl_SHA2_256_update(i32* noundef nonnull %11, i8* noundef %88) #7, !dbg !768
  %89 = add nuw nsw i32 %86, 1, !dbg !769
  call void @llvm.dbg.value(metadata i32 %89, metadata !439, metadata !DIExpression()) #7, !dbg !762
  %90 = icmp eq i32 %89, %7, !dbg !763
  br i1 %90, label %91, label %85, !dbg !764, !llvm.loop !770

91:                                               ; preds = %85, %3
  call void @llvm.dbg.value(metadata i32* %11, metadata !463, metadata !DIExpression()) #7, !dbg !772
  call void @llvm.dbg.value(metadata i8* %10, metadata !466, metadata !DIExpression()) #7, !dbg !772
  call void @llvm.dbg.value(metadata i32 %2, metadata !467, metadata !DIExpression(DW_OP_constu, 63, DW_OP_and, DW_OP_stack_value)) #7, !dbg !772
  %92 = getelementptr inbounds [128 x i8], [128 x i8]* %4, i32 0, i32 0, !dbg !774
  call void @llvm.lifetime.start.p0i8(i64 128, i8* nonnull %92) #7, !dbg !774
  call void @llvm.dbg.declare(metadata [128 x i8]* %4, metadata !468, metadata !DIExpression()) #7, !dbg !775
  call void @llvm.memset.p0i8.i32(i8* noundef nonnull align 1 dereferenceable(128) %92, i8 0, i32 128, i1 false) #7, !dbg !775
  %93 = icmp ult i32 %8, 56, !dbg !776
  %94 = select i1 %93, i32 1, i32 2
  call void @llvm.dbg.value(metadata i32 %94, metadata !472, metadata !DIExpression()) #7, !dbg !772
  %95 = getelementptr inbounds [128 x i8], [128 x i8]* %4, i32 0, i32 64, !dbg !777
  %96 = select i1 %93, i8* %95, i8* %92, !dbg !777
  call void @llvm.dbg.value(metadata i8* %96, metadata !473, metadata !DIExpression()) #7, !dbg !772
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* nonnull align 1 %96, i8* align 1 %10, i32 %8, i1 false) #7, !dbg !778
  %97 = load i32, i32* %12, align 4, !dbg !779, !tbaa !82
  call void @llvm.dbg.value(metadata i32 %97, metadata !474, metadata !DIExpression()) #7, !dbg !772
  %98 = getelementptr inbounds i8, i8* %96, i32 %8, !dbg !780
  call void @llvm.dbg.value(metadata i8* %98, metadata !475, metadata !DIExpression()) #7, !dbg !772
  %99 = sub i32 55, %2, !dbg !781
  %100 = and i32 %99, 63, !dbg !782
  call void @llvm.dbg.value(metadata i32 %100, metadata !476, metadata !DIExpression()) #7, !dbg !772
  call void @llvm.dbg.value(metadata i8* %98, metadata !477, metadata !DIExpression()) #7, !dbg !772
  %101 = getelementptr inbounds i8, i8* %98, i32 1, !dbg !783
  %102 = getelementptr inbounds i8, i8* %101, i32 %100, !dbg !784
  call void @llvm.dbg.value(metadata i8* %102, metadata !478, metadata !DIExpression()) #7, !dbg !772
  %103 = zext i32 %97 to i64, !dbg !785
  %104 = shl nuw nsw i64 %103, 9, !dbg !786
  %105 = shl nuw nsw i32 %8, 3, !dbg !786
  %106 = zext i32 %105 to i64, !dbg !786
  %107 = or i64 %104, %106, !dbg !786
  call void @llvm.dbg.value(metadata i64 %107, metadata !479, metadata !DIExpression()) #7, !dbg !772
  store i8 -128, i8* %98, align 1, !dbg !787, !tbaa !500
  call void @llvm.dbg.value(metadata i64 %107, metadata !501, metadata !DIExpression()) #7, !dbg !788
  %108 = call i64 @llvm.bswap.i64(i64 %107) #7, !dbg !790
  call void @llvm.dbg.value(metadata i8* %102, metadata !509, metadata !DIExpression()) #7, !dbg !791
  call void @llvm.dbg.value(metadata i64 %108, metadata !514, metadata !DIExpression()) #7, !dbg !791
  %109 = bitcast i8* %102 to i64*, !dbg !793
  store i64 %108, i64* %109, align 1, !dbg !793
  call void @llvm.dbg.value(metadata i32* %11, metadata !434, metadata !DIExpression()) #7, !dbg !794
  call void @llvm.dbg.value(metadata i8* %96, metadata !437, metadata !DIExpression()) #7, !dbg !794
  call void @llvm.dbg.value(metadata i32 %94, metadata !438, metadata !DIExpression()) #7, !dbg !794
  call void @llvm.dbg.value(metadata i32 0, metadata !439, metadata !DIExpression()) #7, !dbg !796
  br label %110

110:                                              ; preds = %110, %91
  %111 = phi i32 [ %114, %110 ], [ 0, %91 ]
  call void @llvm.dbg.value(metadata i32 %111, metadata !439, metadata !DIExpression()) #7, !dbg !796
  %112 = shl i32 %111, 6, !dbg !797
  %113 = getelementptr inbounds i8, i8* %96, i32 %112, !dbg !798
  call void @llvm.dbg.value(metadata i8* %113, metadata !441, metadata !DIExpression()) #7, !dbg !799
  call fastcc void @Hacl_Impl_SHA2_256_update(i32* noundef nonnull %11, i8* noundef nonnull %113) #7, !dbg !800
  %114 = add nuw i32 %111, 1, !dbg !801
  call void @llvm.dbg.value(metadata i32 %114, metadata !439, metadata !DIExpression()) #7, !dbg !796
  %115 = icmp eq i32 %114, %94, !dbg !802
  br i1 %115, label %116, label %110, !dbg !803, !llvm.loop !804

116:                                              ; preds = %110
  call void @llvm.lifetime.end.p0i8(i64 128, i8* nonnull %92) #7, !dbg !806
  call void @llvm.dbg.value(metadata i32* %11, metadata !537, metadata !DIExpression()) #7, !dbg !807
  call void @llvm.dbg.value(metadata i8* %0, metadata !540, metadata !DIExpression()) #7, !dbg !807
  call void @llvm.dbg.value(metadata i32* %13, metadata !541, metadata !DIExpression()) #7, !dbg !807
  call void @llvm.dbg.value(metadata i8* %0, metadata !545, metadata !DIExpression()) #7, !dbg !809
  call void @llvm.dbg.value(metadata i32* %13, metadata !550, metadata !DIExpression()) #7, !dbg !809
  call void @llvm.dbg.value(metadata i32 8, metadata !551, metadata !DIExpression()) #7, !dbg !809
  call void @llvm.dbg.value(metadata i32 0, metadata !552, metadata !DIExpression()) #7, !dbg !811
  br label %117, !dbg !812

117:                                              ; preds = %117, %116
  %118 = phi i32 [ 0, %116 ], [ %125, %117 ]
  call void @llvm.dbg.value(metadata i32 %118, metadata !552, metadata !DIExpression()) #7, !dbg !811
  %119 = getelementptr inbounds i32, i32* %13, i32 %118, !dbg !813
  %120 = load i32, i32* %119, align 4, !dbg !813, !tbaa !82
  call void @llvm.dbg.value(metadata i32 %120, metadata !554, metadata !DIExpression()) #7, !dbg !814
  %121 = shl i32 %118, 2, !dbg !815
  %122 = getelementptr inbounds i8, i8* %0, i32 %121, !dbg !816
  call void @llvm.dbg.value(metadata i8* %122, metadata !557, metadata !DIExpression()) #7, !dbg !814
  call void @llvm.dbg.value(metadata i32 %120, metadata !324, metadata !DIExpression()) #7, !dbg !817
  %123 = call i32 @llvm.bswap.i32(i32 %120) #7, !dbg !819
  call void @llvm.dbg.value(metadata i8* %122, metadata !569, metadata !DIExpression()) #7, !dbg !820
  call void @llvm.dbg.value(metadata i32 %123, metadata !574, metadata !DIExpression()) #7, !dbg !820
  %124 = bitcast i8* %122 to i32*, !dbg !822
  store i32 %123, i32* %124, align 1, !dbg !822
  %125 = add nuw nsw i32 %118, 1, !dbg !823
  call void @llvm.dbg.value(metadata i32 %125, metadata !552, metadata !DIExpression()) #7, !dbg !811
  %126 = icmp eq i32 %125, 8, !dbg !824
  br i1 %126, label %127, label %117, !dbg !812, !llvm.loop !825

127:                                              ; preds = %117
  call void @llvm.lifetime.end.p0i8(i64 548, i8* nonnull %6) #7, !dbg !827
  ret void, !dbg !828
}

; Function Attrs: argmemonly mustprogress nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0i8(i64 immarg, i8* nocapture) #3

; Function Attrs: argmemonly mustprogress nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0i8(i64 immarg, i8* nocapture) #3

; Function Attrs: argmemonly mustprogress nofree nounwind willreturn writeonly
declare void @llvm.memset.p0i8.i32(i8* nocapture writeonly, i8, i32, i1 immarg) #4

; Function Attrs: argmemonly mustprogress nofree nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i32(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i32, i1 immarg) #5

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare void @llvm.dbg.value(metadata, metadata, metadata) #6

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.fshl.i32(i32, i32, i32) #6

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #6

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare i64 @llvm.bswap.i64(i64) #6

attributes #0 = { mustprogress nofree norecurse nosync nounwind uwtable willreturn writeonly "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="i686" "target-features"="+cx8,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nofree nosync nounwind readnone speculatable willreturn }
attributes #2 = { nofree nosync nounwind uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="i686" "target-features"="+cx8,+x87" "tune-cpu"="generic" }
attributes #3 = { argmemonly mustprogress nofree nosync nounwind willreturn }
attributes #4 = { argmemonly mustprogress nofree nounwind willreturn writeonly }
attributes #5 = { argmemonly mustprogress nofree nounwind willreturn }
attributes #6 = { nofree nosync nounwind readnone speculatable willreturn }
attributes #7 = { nounwind }

!llvm.dbg.cu = !{!2}
!llvm.module.flags = !{!21, !22, !23, !24, !25, !26, !27}
!llvm.ident = !{!28}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(name: "Hacl_SHA2_256_size_hash", scope: !2, file: !3, line: 299, type: !5, isLocal: false, isDefinition: true)
!2 = distinct !DICompileUnit(language: DW_LANG_C99, file: !3, producer: "Ubuntu clang version 14.0.0-1ubuntu1.1", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !4, globals: !16, splitDebugInlining: false, nameTableKind: None)
!3 = !DIFile(filename: "hacl-c/hacl-c/Hacl_SHA2_256.c", directory: "/mnt/c/Users/fwill/Documents/HS24/semester_project/tools/binsec/binsec/examples/hacl", checksumkind: CSK_MD5, checksum: "6dd67394ab1db5c20d6e4d6a1567722c")
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
!16 = !{!0, !17, !19}
!17 = !DIGlobalVariableExpression(var: !18, expr: !DIExpression())
!18 = distinct !DIGlobalVariable(name: "Hacl_SHA2_256_size_block", scope: !2, file: !3, line: 301, type: !5, isLocal: false, isDefinition: true)
!19 = !DIGlobalVariableExpression(var: !20, expr: !DIExpression())
!20 = distinct !DIGlobalVariable(name: "Hacl_SHA2_256_size_state", scope: !2, file: !3, line: 303, type: !5, isLocal: false, isDefinition: true)
!21 = !{i32 1, !"NumRegisterParameters", i32 0}
!22 = !{i32 7, !"Dwarf Version", i32 5}
!23 = !{i32 2, !"Debug Info Version", i32 3}
!24 = !{i32 1, !"wchar_size", i32 4}
!25 = !{i32 7, !"PIC Level", i32 2}
!26 = !{i32 7, !"PIE Level", i32 2}
!27 = !{i32 7, !"uwtable", i32 1}
!28 = !{!"Ubuntu clang version 14.0.0-1ubuntu1.1"}
!29 = distinct !DISubprogram(name: "Hacl_SHA2_256_init", scope: !3, file: !3, line: 305, type: !30, scopeLine: 306, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !33)
!30 = !DISubroutineType(types: !31)
!31 = !{null, !32}
!32 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5, size: 32)
!33 = !{!34}
!34 = !DILocalVariable(name: "state", arg: 1, scope: !29, file: !3, line: 305, type: !32)
!35 = !DILocation(line: 0, scope: !29)
!36 = !DILocalVariable(name: "state", arg: 1, scope: !37, file: !3, line: 49, type: !32)
!37 = distinct !DISubprogram(name: "Hacl_Impl_SHA2_256_init", scope: !3, file: !3, line: 49, type: !30, scopeLine: 50, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !38)
!38 = !{!36, !39, !40, !41, !42, !43, !44, !45, !46, !47, !48, !49, !50, !51, !52, !53, !54, !55, !56, !57, !58, !59, !60, !61, !62, !63, !64, !65, !66, !67, !68, !69, !70, !71}
!39 = !DILocalVariable(name: "n1", scope: !37, file: !3, line: 51, type: !32)
!40 = !DILocalVariable(name: "k1", scope: !37, file: !3, line: 52, type: !32)
!41 = !DILocalVariable(name: "h_01", scope: !37, file: !3, line: 53, type: !32)
!42 = !DILocalVariable(name: "p10", scope: !37, file: !3, line: 54, type: !32)
!43 = !DILocalVariable(name: "p20", scope: !37, file: !3, line: 55, type: !32)
!44 = !DILocalVariable(name: "p3", scope: !37, file: !3, line: 56, type: !32)
!45 = !DILocalVariable(name: "p4", scope: !37, file: !3, line: 57, type: !32)
!46 = !DILocalVariable(name: "p11", scope: !37, file: !3, line: 58, type: !32)
!47 = !DILocalVariable(name: "p21", scope: !37, file: !3, line: 59, type: !32)
!48 = !DILocalVariable(name: "p12", scope: !37, file: !3, line: 60, type: !32)
!49 = !DILocalVariable(name: "p22", scope: !37, file: !3, line: 61, type: !32)
!50 = !DILocalVariable(name: "p13", scope: !37, file: !3, line: 70, type: !32)
!51 = !DILocalVariable(name: "p23", scope: !37, file: !3, line: 71, type: !32)
!52 = !DILocalVariable(name: "p14", scope: !37, file: !3, line: 80, type: !32)
!53 = !DILocalVariable(name: "p24", scope: !37, file: !3, line: 81, type: !32)
!54 = !DILocalVariable(name: "p15", scope: !37, file: !3, line: 82, type: !32)
!55 = !DILocalVariable(name: "p25", scope: !37, file: !3, line: 83, type: !32)
!56 = !DILocalVariable(name: "p16", scope: !37, file: !3, line: 92, type: !32)
!57 = !DILocalVariable(name: "p26", scope: !37, file: !3, line: 93, type: !32)
!58 = !DILocalVariable(name: "p17", scope: !37, file: !3, line: 102, type: !32)
!59 = !DILocalVariable(name: "p27", scope: !37, file: !3, line: 103, type: !32)
!60 = !DILocalVariable(name: "p18", scope: !37, file: !3, line: 104, type: !32)
!61 = !DILocalVariable(name: "p28", scope: !37, file: !3, line: 105, type: !32)
!62 = !DILocalVariable(name: "p19", scope: !37, file: !3, line: 114, type: !32)
!63 = !DILocalVariable(name: "p29", scope: !37, file: !3, line: 115, type: !32)
!64 = !DILocalVariable(name: "p110", scope: !37, file: !3, line: 124, type: !32)
!65 = !DILocalVariable(name: "p210", scope: !37, file: !3, line: 125, type: !32)
!66 = !DILocalVariable(name: "p1", scope: !37, file: !3, line: 126, type: !32)
!67 = !DILocalVariable(name: "p211", scope: !37, file: !3, line: 127, type: !32)
!68 = !DILocalVariable(name: "p111", scope: !37, file: !3, line: 136, type: !32)
!69 = !DILocalVariable(name: "p212", scope: !37, file: !3, line: 137, type: !32)
!70 = !DILocalVariable(name: "p112", scope: !37, file: !3, line: 146, type: !32)
!71 = !DILocalVariable(name: "p2", scope: !37, file: !3, line: 147, type: !32)
!72 = !DILocation(line: 0, scope: !37, inlinedAt: !73)
!73 = distinct !DILocation(line: 307, column: 3, scope: !29)
!74 = !DILocation(line: 51, column: 24, scope: !37, inlinedAt: !73)
!75 = !DILocation(line: 53, column: 26, scope: !37, inlinedAt: !73)
!76 = !DILocation(line: 55, column: 22, scope: !37, inlinedAt: !73)
!77 = !DILocation(line: 56, column: 21, scope: !37, inlinedAt: !73)
!78 = !DILocation(line: 57, column: 21, scope: !37, inlinedAt: !73)
!79 = !DILocation(line: 59, column: 23, scope: !37, inlinedAt: !73)
!80 = !DILocation(line: 61, column: 23, scope: !37, inlinedAt: !73)
!81 = !DILocation(line: 62, column: 11, scope: !37, inlinedAt: !73)
!82 = !{!83, !83, i64 0}
!83 = !{!"int", !84, i64 0}
!84 = !{!"omnipotent char", !85, i64 0}
!85 = !{!"Simple C/C++ TBAA"}
!86 = !DILocation(line: 63, column: 3, scope: !37, inlinedAt: !73)
!87 = !DILocation(line: 63, column: 11, scope: !37, inlinedAt: !73)
!88 = !DILocation(line: 64, column: 3, scope: !37, inlinedAt: !73)
!89 = !DILocation(line: 64, column: 11, scope: !37, inlinedAt: !73)
!90 = !DILocation(line: 65, column: 3, scope: !37, inlinedAt: !73)
!91 = !DILocation(line: 65, column: 11, scope: !37, inlinedAt: !73)
!92 = !DILocation(line: 66, column: 11, scope: !37, inlinedAt: !73)
!93 = !DILocation(line: 67, column: 3, scope: !37, inlinedAt: !73)
!94 = !DILocation(line: 67, column: 11, scope: !37, inlinedAt: !73)
!95 = !DILocation(line: 68, column: 3, scope: !37, inlinedAt: !73)
!96 = !DILocation(line: 68, column: 11, scope: !37, inlinedAt: !73)
!97 = !DILocation(line: 69, column: 3, scope: !37, inlinedAt: !73)
!98 = !DILocation(line: 69, column: 11, scope: !37, inlinedAt: !73)
!99 = !DILocation(line: 71, column: 23, scope: !37, inlinedAt: !73)
!100 = !DILocation(line: 72, column: 11, scope: !37, inlinedAt: !73)
!101 = !DILocation(line: 73, column: 3, scope: !37, inlinedAt: !73)
!102 = !DILocation(line: 73, column: 11, scope: !37, inlinedAt: !73)
!103 = !DILocation(line: 74, column: 3, scope: !37, inlinedAt: !73)
!104 = !DILocation(line: 74, column: 11, scope: !37, inlinedAt: !73)
!105 = !DILocation(line: 75, column: 3, scope: !37, inlinedAt: !73)
!106 = !DILocation(line: 75, column: 11, scope: !37, inlinedAt: !73)
!107 = !DILocation(line: 76, column: 11, scope: !37, inlinedAt: !73)
!108 = !DILocation(line: 77, column: 3, scope: !37, inlinedAt: !73)
!109 = !DILocation(line: 77, column: 11, scope: !37, inlinedAt: !73)
!110 = !DILocation(line: 78, column: 3, scope: !37, inlinedAt: !73)
!111 = !DILocation(line: 78, column: 11, scope: !37, inlinedAt: !73)
!112 = !DILocation(line: 79, column: 3, scope: !37, inlinedAt: !73)
!113 = !DILocation(line: 79, column: 11, scope: !37, inlinedAt: !73)
!114 = !DILocation(line: 81, column: 23, scope: !37, inlinedAt: !73)
!115 = !DILocation(line: 83, column: 23, scope: !37, inlinedAt: !73)
!116 = !DILocation(line: 84, column: 11, scope: !37, inlinedAt: !73)
!117 = !DILocation(line: 85, column: 3, scope: !37, inlinedAt: !73)
!118 = !DILocation(line: 85, column: 11, scope: !37, inlinedAt: !73)
!119 = !DILocation(line: 86, column: 3, scope: !37, inlinedAt: !73)
!120 = !DILocation(line: 86, column: 11, scope: !37, inlinedAt: !73)
!121 = !DILocation(line: 87, column: 3, scope: !37, inlinedAt: !73)
!122 = !DILocation(line: 87, column: 11, scope: !37, inlinedAt: !73)
!123 = !DILocation(line: 88, column: 11, scope: !37, inlinedAt: !73)
!124 = !DILocation(line: 89, column: 3, scope: !37, inlinedAt: !73)
!125 = !DILocation(line: 89, column: 11, scope: !37, inlinedAt: !73)
!126 = !DILocation(line: 90, column: 3, scope: !37, inlinedAt: !73)
!127 = !DILocation(line: 90, column: 11, scope: !37, inlinedAt: !73)
!128 = !DILocation(line: 91, column: 3, scope: !37, inlinedAt: !73)
!129 = !DILocation(line: 91, column: 11, scope: !37, inlinedAt: !73)
!130 = !DILocation(line: 93, column: 23, scope: !37, inlinedAt: !73)
!131 = !DILocation(line: 94, column: 11, scope: !37, inlinedAt: !73)
!132 = !DILocation(line: 95, column: 3, scope: !37, inlinedAt: !73)
!133 = !DILocation(line: 95, column: 11, scope: !37, inlinedAt: !73)
!134 = !DILocation(line: 96, column: 3, scope: !37, inlinedAt: !73)
!135 = !DILocation(line: 96, column: 11, scope: !37, inlinedAt: !73)
!136 = !DILocation(line: 97, column: 3, scope: !37, inlinedAt: !73)
!137 = !DILocation(line: 97, column: 11, scope: !37, inlinedAt: !73)
!138 = !DILocation(line: 98, column: 11, scope: !37, inlinedAt: !73)
!139 = !DILocation(line: 99, column: 3, scope: !37, inlinedAt: !73)
!140 = !DILocation(line: 99, column: 11, scope: !37, inlinedAt: !73)
!141 = !DILocation(line: 100, column: 3, scope: !37, inlinedAt: !73)
!142 = !DILocation(line: 100, column: 11, scope: !37, inlinedAt: !73)
!143 = !DILocation(line: 101, column: 3, scope: !37, inlinedAt: !73)
!144 = !DILocation(line: 101, column: 11, scope: !37, inlinedAt: !73)
!145 = !DILocation(line: 103, column: 22, scope: !37, inlinedAt: !73)
!146 = !DILocation(line: 105, column: 23, scope: !37, inlinedAt: !73)
!147 = !DILocation(line: 106, column: 11, scope: !37, inlinedAt: !73)
!148 = !DILocation(line: 107, column: 3, scope: !37, inlinedAt: !73)
!149 = !DILocation(line: 107, column: 11, scope: !37, inlinedAt: !73)
!150 = !DILocation(line: 108, column: 3, scope: !37, inlinedAt: !73)
!151 = !DILocation(line: 108, column: 11, scope: !37, inlinedAt: !73)
!152 = !DILocation(line: 109, column: 3, scope: !37, inlinedAt: !73)
!153 = !DILocation(line: 109, column: 11, scope: !37, inlinedAt: !73)
!154 = !DILocation(line: 110, column: 11, scope: !37, inlinedAt: !73)
!155 = !DILocation(line: 111, column: 3, scope: !37, inlinedAt: !73)
!156 = !DILocation(line: 111, column: 11, scope: !37, inlinedAt: !73)
!157 = !DILocation(line: 112, column: 3, scope: !37, inlinedAt: !73)
!158 = !DILocation(line: 112, column: 11, scope: !37, inlinedAt: !73)
!159 = !DILocation(line: 113, column: 3, scope: !37, inlinedAt: !73)
!160 = !DILocation(line: 113, column: 11, scope: !37, inlinedAt: !73)
!161 = !DILocation(line: 115, column: 23, scope: !37, inlinedAt: !73)
!162 = !DILocation(line: 116, column: 11, scope: !37, inlinedAt: !73)
!163 = !DILocation(line: 117, column: 3, scope: !37, inlinedAt: !73)
!164 = !DILocation(line: 117, column: 11, scope: !37, inlinedAt: !73)
!165 = !DILocation(line: 118, column: 3, scope: !37, inlinedAt: !73)
!166 = !DILocation(line: 118, column: 11, scope: !37, inlinedAt: !73)
!167 = !DILocation(line: 119, column: 3, scope: !37, inlinedAt: !73)
!168 = !DILocation(line: 119, column: 11, scope: !37, inlinedAt: !73)
!169 = !DILocation(line: 120, column: 11, scope: !37, inlinedAt: !73)
!170 = !DILocation(line: 121, column: 3, scope: !37, inlinedAt: !73)
!171 = !DILocation(line: 121, column: 11, scope: !37, inlinedAt: !73)
!172 = !DILocation(line: 122, column: 3, scope: !37, inlinedAt: !73)
!173 = !DILocation(line: 122, column: 11, scope: !37, inlinedAt: !73)
!174 = !DILocation(line: 123, column: 3, scope: !37, inlinedAt: !73)
!175 = !DILocation(line: 123, column: 11, scope: !37, inlinedAt: !73)
!176 = !DILocation(line: 125, column: 23, scope: !37, inlinedAt: !73)
!177 = !DILocation(line: 127, column: 25, scope: !37, inlinedAt: !73)
!178 = !DILocation(line: 128, column: 10, scope: !37, inlinedAt: !73)
!179 = !DILocation(line: 129, column: 3, scope: !37, inlinedAt: !73)
!180 = !DILocation(line: 129, column: 10, scope: !37, inlinedAt: !73)
!181 = !DILocation(line: 130, column: 3, scope: !37, inlinedAt: !73)
!182 = !DILocation(line: 130, column: 10, scope: !37, inlinedAt: !73)
!183 = !DILocation(line: 131, column: 3, scope: !37, inlinedAt: !73)
!184 = !DILocation(line: 131, column: 10, scope: !37, inlinedAt: !73)
!185 = !DILocation(line: 132, column: 12, scope: !37, inlinedAt: !73)
!186 = !DILocation(line: 133, column: 3, scope: !37, inlinedAt: !73)
!187 = !DILocation(line: 133, column: 12, scope: !37, inlinedAt: !73)
!188 = !DILocation(line: 134, column: 3, scope: !37, inlinedAt: !73)
!189 = !DILocation(line: 134, column: 12, scope: !37, inlinedAt: !73)
!190 = !DILocation(line: 135, column: 3, scope: !37, inlinedAt: !73)
!191 = !DILocation(line: 135, column: 12, scope: !37, inlinedAt: !73)
!192 = !DILocation(line: 137, column: 25, scope: !37, inlinedAt: !73)
!193 = !DILocation(line: 138, column: 12, scope: !37, inlinedAt: !73)
!194 = !DILocation(line: 139, column: 3, scope: !37, inlinedAt: !73)
!195 = !DILocation(line: 139, column: 12, scope: !37, inlinedAt: !73)
!196 = !DILocation(line: 140, column: 3, scope: !37, inlinedAt: !73)
!197 = !DILocation(line: 140, column: 12, scope: !37, inlinedAt: !73)
!198 = !DILocation(line: 141, column: 3, scope: !37, inlinedAt: !73)
!199 = !DILocation(line: 141, column: 12, scope: !37, inlinedAt: !73)
!200 = !DILocation(line: 142, column: 12, scope: !37, inlinedAt: !73)
!201 = !DILocation(line: 143, column: 3, scope: !37, inlinedAt: !73)
!202 = !DILocation(line: 143, column: 12, scope: !37, inlinedAt: !73)
!203 = !DILocation(line: 144, column: 3, scope: !37, inlinedAt: !73)
!204 = !DILocation(line: 144, column: 12, scope: !37, inlinedAt: !73)
!205 = !DILocation(line: 145, column: 3, scope: !37, inlinedAt: !73)
!206 = !DILocation(line: 145, column: 12, scope: !37, inlinedAt: !73)
!207 = !DILocation(line: 147, column: 23, scope: !37, inlinedAt: !73)
!208 = !DILocation(line: 148, column: 12, scope: !37, inlinedAt: !73)
!209 = !DILocation(line: 149, column: 3, scope: !37, inlinedAt: !73)
!210 = !DILocation(line: 149, column: 12, scope: !37, inlinedAt: !73)
!211 = !DILocation(line: 150, column: 3, scope: !37, inlinedAt: !73)
!212 = !DILocation(line: 150, column: 12, scope: !37, inlinedAt: !73)
!213 = !DILocation(line: 151, column: 3, scope: !37, inlinedAt: !73)
!214 = !DILocation(line: 151, column: 12, scope: !37, inlinedAt: !73)
!215 = !DILocation(line: 152, column: 10, scope: !37, inlinedAt: !73)
!216 = !DILocation(line: 153, column: 3, scope: !37, inlinedAt: !73)
!217 = !DILocation(line: 153, column: 10, scope: !37, inlinedAt: !73)
!218 = !DILocation(line: 154, column: 3, scope: !37, inlinedAt: !73)
!219 = !DILocation(line: 154, column: 10, scope: !37, inlinedAt: !73)
!220 = !DILocation(line: 155, column: 3, scope: !37, inlinedAt: !73)
!221 = !DILocation(line: 155, column: 10, scope: !37, inlinedAt: !73)
!222 = !DILocation(line: 156, column: 10, scope: !37, inlinedAt: !73)
!223 = !DILocation(line: 308, column: 1, scope: !29)
!224 = distinct !DISubprogram(name: "Hacl_SHA2_256_update", scope: !3, file: !3, line: 310, type: !225, scopeLine: 311, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !228)
!225 = !DISubroutineType(types: !226)
!226 = !{null, !32, !227}
!227 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !13, size: 32)
!228 = !{!229, !230}
!229 = !DILocalVariable(name: "state", arg: 1, scope: !224, file: !3, line: 310, type: !32)
!230 = !DILocalVariable(name: "data_8", arg: 2, scope: !224, file: !3, line: 310, type: !227)
!231 = !DILocation(line: 0, scope: !224)
!232 = !DILocation(line: 312, column: 3, scope: !224)
!233 = !DILocation(line: 313, column: 1, scope: !224)
!234 = distinct !DISubprogram(name: "Hacl_Impl_SHA2_256_update", scope: !3, file: !3, line: 159, type: !225, scopeLine: 160, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !235)
!235 = !{!236, !237, !238, !242, !243, !244, !245, !246, !248, !251, !253, !256, !257, !258, !259, !263, !265, !268, !269, !270, !271, !272, !273, !274, !275, !276, !277, !278, !279, !280, !281, !282, !283, !285, !288, !289, !290}
!236 = !DILocalVariable(name: "state", arg: 1, scope: !234, file: !3, line: 159, type: !32)
!237 = !DILocalVariable(name: "data", arg: 2, scope: !234, file: !3, line: 159, type: !227)
!238 = !DILocalVariable(name: "data_w", scope: !234, file: !3, line: 161, type: !239)
!239 = !DICompositeType(tag: DW_TAG_array_type, baseType: !5, size: 512, elements: !240)
!240 = !{!241}
!241 = !DISubrange(count: 16)
!242 = !DILocalVariable(name: "hash_w", scope: !234, file: !3, line: 163, type: !32)
!243 = !DILocalVariable(name: "ws_w", scope: !234, file: !3, line: 164, type: !32)
!244 = !DILocalVariable(name: "k_w", scope: !234, file: !3, line: 165, type: !32)
!245 = !DILocalVariable(name: "counter_w", scope: !234, file: !3, line: 166, type: !32)
!246 = !DILocalVariable(name: "i", scope: !247, file: !3, line: 167, type: !5)
!247 = distinct !DILexicalBlock(scope: !234, file: !3, line: 167, column: 3)
!248 = !DILocalVariable(name: "b", scope: !249, file: !3, line: 169, type: !5)
!249 = distinct !DILexicalBlock(scope: !250, file: !3, line: 168, column: 3)
!250 = distinct !DILexicalBlock(scope: !247, file: !3, line: 167, column: 3)
!251 = !DILocalVariable(name: "i", scope: !252, file: !3, line: 172, type: !5)
!252 = distinct !DILexicalBlock(scope: !234, file: !3, line: 172, column: 3)
!253 = !DILocalVariable(name: "t16", scope: !254, file: !3, line: 174, type: !5)
!254 = distinct !DILexicalBlock(scope: !255, file: !3, line: 173, column: 3)
!255 = distinct !DILexicalBlock(scope: !252, file: !3, line: 172, column: 3)
!256 = !DILocalVariable(name: "t15", scope: !254, file: !3, line: 175, type: !5)
!257 = !DILocalVariable(name: "t7", scope: !254, file: !3, line: 176, type: !5)
!258 = !DILocalVariable(name: "t2", scope: !254, file: !3, line: 177, type: !5)
!259 = !DILocalVariable(name: "hash_0", scope: !234, file: !3, line: 188, type: !260)
!260 = !DICompositeType(tag: DW_TAG_array_type, baseType: !5, size: 256, elements: !261)
!261 = !{!262}
!262 = !DISubrange(count: 8)
!263 = !DILocalVariable(name: "i", scope: !264, file: !3, line: 190, type: !5)
!264 = distinct !DILexicalBlock(scope: !234, file: !3, line: 190, column: 3)
!265 = !DILocalVariable(name: "a", scope: !266, file: !3, line: 192, type: !5)
!266 = distinct !DILexicalBlock(scope: !267, file: !3, line: 191, column: 3)
!267 = distinct !DILexicalBlock(scope: !264, file: !3, line: 190, column: 3)
!268 = !DILocalVariable(name: "b", scope: !266, file: !3, line: 193, type: !5)
!269 = !DILocalVariable(name: "c", scope: !266, file: !3, line: 194, type: !5)
!270 = !DILocalVariable(name: "d", scope: !266, file: !3, line: 195, type: !5)
!271 = !DILocalVariable(name: "e", scope: !266, file: !3, line: 196, type: !5)
!272 = !DILocalVariable(name: "f1", scope: !266, file: !3, line: 197, type: !5)
!273 = !DILocalVariable(name: "g", scope: !266, file: !3, line: 198, type: !5)
!274 = !DILocalVariable(name: "h", scope: !266, file: !3, line: 199, type: !5)
!275 = !DILocalVariable(name: "kt", scope: !266, file: !3, line: 200, type: !5)
!276 = !DILocalVariable(name: "wst", scope: !266, file: !3, line: 201, type: !5)
!277 = !DILocalVariable(name: "t1", scope: !266, file: !3, line: 203, type: !5)
!278 = !DILocalVariable(name: "t2", scope: !266, file: !3, line: 214, type: !5)
!279 = !DILocalVariable(name: "x1", scope: !266, file: !3, line: 220, type: !5)
!280 = !DILocalVariable(name: "x5", scope: !266, file: !3, line: 221, type: !5)
!281 = !DILocalVariable(name: "p1", scope: !266, file: !3, line: 222, type: !32)
!282 = !DILocalVariable(name: "p2", scope: !266, file: !3, line: 223, type: !32)
!283 = !DILocalVariable(name: "i", scope: !284, file: !3, line: 233, type: !5)
!284 = distinct !DILexicalBlock(scope: !234, file: !3, line: 233, column: 3)
!285 = !DILocalVariable(name: "xi", scope: !286, file: !3, line: 235, type: !5)
!286 = distinct !DILexicalBlock(scope: !287, file: !3, line: 234, column: 3)
!287 = distinct !DILexicalBlock(scope: !284, file: !3, line: 233, column: 3)
!288 = !DILocalVariable(name: "yi", scope: !286, file: !3, line: 236, type: !5)
!289 = !DILocalVariable(name: "c0", scope: !234, file: !3, line: 239, type: !5)
!290 = !DILocalVariable(name: "one1", scope: !234, file: !3, line: 240, type: !5)
!291 = !DILocation(line: 0, scope: !234)
!292 = !DILocation(line: 161, column: 3, scope: !234)
!293 = !DILocation(line: 161, column: 12, scope: !234)
!294 = !DILocalVariable(name: "output", arg: 1, scope: !295, file: !3, line: 28, type: !32)
!295 = distinct !DISubprogram(name: "Hacl_Hash_Lib_LoadStore_uint32s_from_be_bytes", scope: !3, file: !3, line: 28, type: !296, scopeLine: 29, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !298)
!296 = !DISubroutineType(types: !297)
!297 = !{null, !32, !227, !5}
!298 = !{!294, !299, !300, !301, !303, !306}
!299 = !DILocalVariable(name: "input", arg: 2, scope: !295, file: !3, line: 28, type: !227)
!300 = !DILocalVariable(name: "len", arg: 3, scope: !295, file: !3, line: 28, type: !5)
!301 = !DILocalVariable(name: "i", scope: !302, file: !3, line: 30, type: !5)
!302 = distinct !DILexicalBlock(scope: !295, file: !3, line: 30, column: 3)
!303 = !DILocalVariable(name: "x0", scope: !304, file: !3, line: 32, type: !227)
!304 = distinct !DILexicalBlock(scope: !305, file: !3, line: 31, column: 3)
!305 = distinct !DILexicalBlock(scope: !302, file: !3, line: 30, column: 3)
!306 = !DILocalVariable(name: "inputi", scope: !304, file: !3, line: 33, type: !5)
!307 = !DILocation(line: 0, scope: !295, inlinedAt: !308)
!308 = distinct !DILocation(line: 162, column: 3, scope: !234)
!309 = !DILocation(line: 0, scope: !302, inlinedAt: !308)
!310 = !DILocation(line: 30, column: 3, scope: !302, inlinedAt: !308)
!311 = !DILocation(line: 32, column: 40, scope: !304, inlinedAt: !308)
!312 = !DILocation(line: 32, column: 25, scope: !304, inlinedAt: !308)
!313 = !DILocation(line: 0, scope: !304, inlinedAt: !308)
!314 = !DILocalVariable(name: "b", arg: 1, scope: !315, file: !316, line: 341, type: !227)
!315 = distinct !DISubprogram(name: "load32", scope: !316, file: !316, line: 341, type: !317, scopeLine: 341, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !319)
!316 = !DIFile(filename: "hacl-c/hacl-c/kremlib.h", directory: "/mnt/c/Users/fwill/Documents/HS24/semester_project/tools/binsec/binsec/examples/hacl", checksumkind: CSK_MD5, checksum: "cde125f1f98cb7b9ee1f380d4178ebe4")
!317 = !DISubroutineType(types: !318)
!318 = !{!5, !227}
!319 = !{!314, !320}
!320 = !DILocalVariable(name: "x", scope: !315, file: !316, line: 342, type: !5)
!321 = !DILocation(line: 0, scope: !315, inlinedAt: !322)
!322 = distinct !DILocation(line: 33, column: 23, scope: !304, inlinedAt: !308)
!323 = !DILocation(line: 343, column: 3, scope: !315, inlinedAt: !322)
!324 = !DILocalVariable(name: "__bsx", arg: 1, scope: !325, file: !326, line: 49, type: !7)
!325 = distinct !DISubprogram(name: "__bswap_32", scope: !326, file: !326, line: 49, type: !327, scopeLine: 50, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !329)
!326 = !DIFile(filename: "/usr/include/bits/byteswap.h", directory: "", checksumkind: CSK_MD5, checksum: "98f83253ffd9c64e7486789204e9fa05")
!327 = !DISubroutineType(types: !328)
!328 = !{!7, !7}
!329 = !{!324}
!330 = !DILocation(line: 0, scope: !325, inlinedAt: !331)
!331 = distinct !DILocation(line: 33, column: 23, scope: !304, inlinedAt: !308)
!332 = !DILocation(line: 54, column: 10, scope: !325, inlinedAt: !331)
!333 = !DILocation(line: 34, column: 5, scope: !304, inlinedAt: !308)
!334 = !DILocation(line: 34, column: 15, scope: !304, inlinedAt: !308)
!335 = !DILocation(line: 30, column: 50, scope: !305, inlinedAt: !308)
!336 = !DILocation(line: 30, column: 37, scope: !305, inlinedAt: !308)
!337 = distinct !{!337, !310, !338, !339, !340}
!338 = !DILocation(line: 35, column: 3, scope: !302, inlinedAt: !308)
!339 = !{!"llvm.loop.mustprogress"}
!340 = !{!"llvm.loop.unroll.disable"}
!341 = !DILocation(line: 164, column: 26, scope: !234)
!342 = !DILocation(line: 0, scope: !247)
!343 = !DILocation(line: 170, column: 13, scope: !249)
!344 = !DILocation(line: 0, scope: !249)
!345 = !DILocation(line: 163, column: 28, scope: !234)
!346 = !DILocation(line: 172, column: 3, scope: !252)
!347 = !DILocation(line: 188, column: 3, scope: !234)
!348 = !DILocation(line: 188, column: 12, scope: !234)
!349 = !DILocation(line: 189, column: 3, scope: !234)
!350 = !DILocation(line: 0, scope: !264)
!351 = !DILocation(line: 190, column: 3, scope: !264)
!352 = !DILocation(line: 0, scope: !252)
!353 = !DILocation(line: 174, column: 27, scope: !254)
!354 = !DILocation(line: 174, column: 20, scope: !254)
!355 = !DILocation(line: 0, scope: !254)
!356 = !DILocation(line: 175, column: 27, scope: !254)
!357 = !DILocation(line: 175, column: 20, scope: !254)
!358 = !DILocation(line: 176, column: 26, scope: !254)
!359 = !DILocation(line: 176, column: 19, scope: !254)
!360 = !DILocation(line: 177, column: 26, scope: !254)
!361 = !DILocation(line: 177, column: 19, scope: !254)
!362 = !DILocation(line: 179, column: 29, scope: !254)
!363 = !DILocation(line: 180, column: 31, scope: !254)
!364 = !DILocation(line: 180, column: 77, scope: !254)
!365 = !DILocation(line: 180, column: 72, scope: !254)
!366 = !DILocation(line: 180, column: 7, scope: !254)
!367 = !DILocation(line: 184, column: 33, scope: !254)
!368 = !DILocation(line: 185, column: 36, scope: !254)
!369 = !DILocation(line: 185, column: 84, scope: !254)
!370 = !DILocation(line: 185, column: 78, scope: !254)
!371 = !DILocation(line: 185, column: 11, scope: !254)
!372 = !DILocation(line: 181, column: 7, scope: !254)
!373 = !DILocation(line: 183, column: 9, scope: !254)
!374 = !DILocation(line: 186, column: 11, scope: !254)
!375 = !DILocation(line: 178, column: 5, scope: !254)
!376 = !DILocation(line: 178, column: 13, scope: !254)
!377 = !DILocation(line: 172, column: 61, scope: !255)
!378 = !DILocation(line: 172, column: 38, scope: !255)
!379 = distinct !{!379, !346, !380, !339, !340}
!380 = !DILocation(line: 187, column: 3, scope: !252)
!381 = !DILocation(line: 0, scope: !266)
!382 = !DILocation(line: 0, scope: !284)
!383 = !DILocation(line: 233, column: 3, scope: !284)
!384 = !DILocation(line: 200, column: 19, scope: !266)
!385 = !DILocation(line: 201, column: 20, scope: !266)
!386 = !DILocation(line: 206, column: 29, scope: !266)
!387 = !DILocation(line: 208, column: 32, scope: !266)
!388 = !DILocation(line: 209, column: 33, scope: !266)
!389 = !DILocation(line: 209, column: 11, scope: !266)
!390 = !DILocation(line: 207, column: 9, scope: !266)
!391 = !DILocation(line: 210, column: 13, scope: !266)
!392 = !DILocation(line: 210, column: 22, scope: !266)
!393 = !DILocation(line: 210, column: 25, scope: !266)
!394 = !DILocation(line: 210, column: 19, scope: !266)
!395 = !DILocation(line: 205, column: 7, scope: !266)
!396 = !DILocation(line: 210, column: 7, scope: !266)
!397 = !DILocation(line: 211, column: 7, scope: !266)
!398 = !DILocation(line: 212, column: 7, scope: !266)
!399 = !DILocation(line: 215, column: 27, scope: !266)
!400 = !DILocation(line: 217, column: 30, scope: !266)
!401 = !DILocation(line: 218, column: 31, scope: !266)
!402 = !DILocation(line: 218, column: 9, scope: !266)
!403 = !DILocation(line: 216, column: 7, scope: !266)
!404 = !DILocation(line: 219, column: 13, scope: !266)
!405 = !DILocation(line: 219, column: 29, scope: !266)
!406 = !DILocation(line: 219, column: 18, scope: !266)
!407 = !DILocation(line: 219, column: 7, scope: !266)
!408 = !DILocation(line: 220, column: 22, scope: !266)
!409 = !DILocation(line: 221, column: 21, scope: !266)
!410 = !DILocation(line: 190, column: 60, scope: !267)
!411 = !DILocation(line: 190, column: 37, scope: !267)
!412 = distinct !{!412, !351, !413, !339, !340}
!413 = !DILocation(line: 232, column: 3, scope: !264)
!414 = !DILocation(line: 166, column: 31, scope: !234)
!415 = !DILocation(line: 239, column: 17, scope: !234)
!416 = !DILocation(line: 241, column: 22, scope: !234)
!417 = !DILocation(line: 241, column: 17, scope: !234)
!418 = !DILocation(line: 242, column: 1, scope: !234)
!419 = !DILocation(line: 235, column: 19, scope: !286)
!420 = !DILocation(line: 0, scope: !286)
!421 = !DILocation(line: 236, column: 19, scope: !286)
!422 = !DILocation(line: 237, column: 20, scope: !286)
!423 = !DILocation(line: 237, column: 15, scope: !286)
!424 = !DILocation(line: 233, column: 59, scope: !287)
!425 = !DILocation(line: 233, column: 37, scope: !287)
!426 = distinct !{!426, !383, !427, !339, !340}
!427 = !DILocation(line: 238, column: 3, scope: !284)
!428 = distinct !DISubprogram(name: "Hacl_SHA2_256_update_multi", scope: !3, file: !3, line: 315, type: !296, scopeLine: 316, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !429)
!429 = !{!430, !431, !432}
!430 = !DILocalVariable(name: "state", arg: 1, scope: !428, file: !3, line: 315, type: !32)
!431 = !DILocalVariable(name: "data", arg: 2, scope: !428, file: !3, line: 315, type: !227)
!432 = !DILocalVariable(name: "n1", arg: 3, scope: !428, file: !3, line: 315, type: !5)
!433 = !DILocation(line: 0, scope: !428)
!434 = !DILocalVariable(name: "state", arg: 1, scope: !435, file: !3, line: 244, type: !32)
!435 = distinct !DISubprogram(name: "Hacl_Impl_SHA2_256_update_multi", scope: !3, file: !3, line: 244, type: !296, scopeLine: 245, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !436)
!436 = !{!434, !437, !438, !439, !441}
!437 = !DILocalVariable(name: "data", arg: 2, scope: !435, file: !3, line: 244, type: !227)
!438 = !DILocalVariable(name: "n1", arg: 3, scope: !435, file: !3, line: 244, type: !5)
!439 = !DILocalVariable(name: "i", scope: !440, file: !3, line: 246, type: !5)
!440 = distinct !DILexicalBlock(scope: !435, file: !3, line: 246, column: 3)
!441 = !DILocalVariable(name: "b", scope: !442, file: !3, line: 248, type: !227)
!442 = distinct !DILexicalBlock(scope: !443, file: !3, line: 247, column: 3)
!443 = distinct !DILexicalBlock(scope: !440, file: !3, line: 246, column: 3)
!444 = !DILocation(line: 0, scope: !435, inlinedAt: !445)
!445 = distinct !DILocation(line: 317, column: 3, scope: !428)
!446 = !DILocation(line: 0, scope: !440, inlinedAt: !445)
!447 = !DILocation(line: 246, column: 37, scope: !443, inlinedAt: !445)
!448 = !DILocation(line: 246, column: 3, scope: !440, inlinedAt: !445)
!449 = !DILocation(line: 248, column: 27, scope: !442, inlinedAt: !445)
!450 = !DILocation(line: 248, column: 23, scope: !442, inlinedAt: !445)
!451 = !DILocation(line: 0, scope: !442, inlinedAt: !445)
!452 = !DILocation(line: 249, column: 5, scope: !442, inlinedAt: !445)
!453 = !DILocation(line: 246, column: 49, scope: !443, inlinedAt: !445)
!454 = distinct !{!454, !448, !455, !339, !340}
!455 = !DILocation(line: 250, column: 3, scope: !440, inlinedAt: !445)
!456 = !DILocation(line: 318, column: 1, scope: !428)
!457 = distinct !DISubprogram(name: "Hacl_SHA2_256_update_last", scope: !3, file: !3, line: 320, type: !296, scopeLine: 321, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !458)
!458 = !{!459, !460, !461}
!459 = !DILocalVariable(name: "state", arg: 1, scope: !457, file: !3, line: 320, type: !32)
!460 = !DILocalVariable(name: "data", arg: 2, scope: !457, file: !3, line: 320, type: !227)
!461 = !DILocalVariable(name: "len", arg: 3, scope: !457, file: !3, line: 320, type: !5)
!462 = !DILocation(line: 0, scope: !457)
!463 = !DILocalVariable(name: "state", arg: 1, scope: !464, file: !3, line: 253, type: !32)
!464 = distinct !DISubprogram(name: "Hacl_Impl_SHA2_256_update_last", scope: !3, file: !3, line: 253, type: !296, scopeLine: 254, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !465)
!465 = !{!463, !466, !467, !468, !472, !473, !474, !475, !476, !477, !478, !479}
!466 = !DILocalVariable(name: "data", arg: 2, scope: !464, file: !3, line: 253, type: !227)
!467 = !DILocalVariable(name: "len", arg: 3, scope: !464, file: !3, line: 253, type: !5)
!468 = !DILocalVariable(name: "blocks", scope: !464, file: !3, line: 255, type: !469)
!469 = !DICompositeType(tag: DW_TAG_array_type, baseType: !13, size: 1024, elements: !470)
!470 = !{!471}
!471 = !DISubrange(count: 128)
!472 = !DILocalVariable(name: "nb", scope: !464, file: !3, line: 256, type: !5)
!473 = !DILocalVariable(name: "final_blocks", scope: !464, file: !3, line: 261, type: !227)
!474 = !DILocalVariable(name: "n1", scope: !464, file: !3, line: 267, type: !5)
!475 = !DILocalVariable(name: "padding", scope: !464, file: !3, line: 268, type: !227)
!476 = !DILocalVariable(name: "pad0len", scope: !464, file: !3, line: 270, type: !5)
!477 = !DILocalVariable(name: "buf1", scope: !464, file: !3, line: 271, type: !227)
!478 = !DILocalVariable(name: "buf2", scope: !464, file: !3, line: 272, type: !227)
!479 = !DILocalVariable(name: "encodedlen", scope: !464, file: !3, line: 274, type: !10)
!480 = !DILocation(line: 0, scope: !464, inlinedAt: !481)
!481 = distinct !DILocation(line: 322, column: 3, scope: !457)
!482 = !DILocation(line: 255, column: 3, scope: !464, inlinedAt: !481)
!483 = !DILocation(line: 255, column: 11, scope: !464, inlinedAt: !481)
!484 = !DILocation(line: 257, column: 11, scope: !485, inlinedAt: !481)
!485 = distinct !DILexicalBlock(scope: !464, file: !3, line: 257, column: 7)
!486 = !DILocation(line: 262, column: 7, scope: !464, inlinedAt: !481)
!487 = !DILocation(line: 266, column: 3, scope: !464, inlinedAt: !481)
!488 = !DILocation(line: 267, column: 17, scope: !464, inlinedAt: !481)
!489 = !DILocation(line: 268, column: 35, scope: !464, inlinedAt: !481)
!490 = !DILocation(line: 270, column: 28, scope: !464, inlinedAt: !481)
!491 = !DILocation(line: 270, column: 83, scope: !464, inlinedAt: !481)
!492 = !DILocation(line: 272, column: 27, scope: !464, inlinedAt: !481)
!493 = !DILocation(line: 272, column: 42, scope: !464, inlinedAt: !481)
!494 = !DILocation(line: 274, column: 17, scope: !464, inlinedAt: !481)
!495 = !DILocation(line: 274, column: 30, scope: !464, inlinedAt: !481)
!496 = !DILocation(line: 274, column: 58, scope: !464, inlinedAt: !481)
!497 = !DILocation(line: 274, column: 56, scope: !464, inlinedAt: !481)
!498 = !DILocation(line: 274, column: 73, scope: !464, inlinedAt: !481)
!499 = !DILocation(line: 275, column: 12, scope: !464, inlinedAt: !481)
!500 = !{!84, !84, i64 0}
!501 = !DILocalVariable(name: "__bsx", arg: 1, scope: !502, file: !326, line: 70, type: !11)
!502 = distinct !DISubprogram(name: "__bswap_64", scope: !326, file: !326, line: 70, type: !503, scopeLine: 71, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !505)
!503 = !DISubroutineType(types: !504)
!504 = !{!11, !11}
!505 = !{!501}
!506 = !DILocation(line: 0, scope: !502, inlinedAt: !507)
!507 = distinct !DILocation(line: 276, column: 3, scope: !464, inlinedAt: !481)
!508 = !DILocation(line: 75, column: 10, scope: !502, inlinedAt: !507)
!509 = !DILocalVariable(name: "b", arg: 1, scope: !510, file: !316, line: 357, type: !227)
!510 = distinct !DISubprogram(name: "store64", scope: !316, file: !316, line: 357, type: !511, scopeLine: 357, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !513)
!511 = !DISubroutineType(types: !512)
!512 = !{null, !227, !10}
!513 = !{!509, !514}
!514 = !DILocalVariable(name: "i", arg: 2, scope: !510, file: !316, line: 357, type: !10)
!515 = !DILocation(line: 0, scope: !510, inlinedAt: !516)
!516 = distinct !DILocation(line: 276, column: 3, scope: !464, inlinedAt: !481)
!517 = !DILocation(line: 357, column: 54, scope: !510, inlinedAt: !516)
!518 = !DILocation(line: 0, scope: !435, inlinedAt: !519)
!519 = distinct !DILocation(line: 277, column: 3, scope: !464, inlinedAt: !481)
!520 = !DILocation(line: 0, scope: !440, inlinedAt: !519)
!521 = !DILocation(line: 248, column: 27, scope: !442, inlinedAt: !519)
!522 = !DILocation(line: 248, column: 23, scope: !442, inlinedAt: !519)
!523 = !DILocation(line: 0, scope: !442, inlinedAt: !519)
!524 = !DILocation(line: 249, column: 5, scope: !442, inlinedAt: !519)
!525 = !DILocation(line: 246, column: 49, scope: !443, inlinedAt: !519)
!526 = !DILocation(line: 246, column: 37, scope: !443, inlinedAt: !519)
!527 = !DILocation(line: 246, column: 3, scope: !440, inlinedAt: !519)
!528 = distinct !{!528, !527, !529, !339, !340}
!529 = !DILocation(line: 250, column: 3, scope: !440, inlinedAt: !519)
!530 = !DILocation(line: 278, column: 1, scope: !464, inlinedAt: !481)
!531 = !DILocation(line: 323, column: 1, scope: !457)
!532 = distinct !DISubprogram(name: "Hacl_SHA2_256_finish", scope: !3, file: !3, line: 325, type: !225, scopeLine: 326, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !533)
!533 = !{!534, !535}
!534 = !DILocalVariable(name: "state", arg: 1, scope: !532, file: !3, line: 325, type: !32)
!535 = !DILocalVariable(name: "hash1", arg: 2, scope: !532, file: !3, line: 325, type: !227)
!536 = !DILocation(line: 0, scope: !532)
!537 = !DILocalVariable(name: "state", arg: 1, scope: !538, file: !3, line: 280, type: !32)
!538 = distinct !DISubprogram(name: "Hacl_Impl_SHA2_256_finish", scope: !3, file: !3, line: 280, type: !225, scopeLine: 281, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !539)
!539 = !{!537, !540, !541}
!540 = !DILocalVariable(name: "hash1", arg: 2, scope: !538, file: !3, line: 280, type: !227)
!541 = !DILocalVariable(name: "hash_w", scope: !538, file: !3, line: 282, type: !32)
!542 = !DILocation(line: 0, scope: !538, inlinedAt: !543)
!543 = distinct !DILocation(line: 327, column: 3, scope: !532)
!544 = !DILocation(line: 282, column: 28, scope: !538, inlinedAt: !543)
!545 = !DILocalVariable(name: "output", arg: 1, scope: !546, file: !3, line: 39, type: !227)
!546 = distinct !DISubprogram(name: "Hacl_Hash_Lib_LoadStore_uint32s_to_be_bytes", scope: !3, file: !3, line: 39, type: !547, scopeLine: 40, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !549)
!547 = !DISubroutineType(types: !548)
!548 = !{null, !227, !32, !5}
!549 = !{!545, !550, !551, !552, !554, !557}
!550 = !DILocalVariable(name: "input", arg: 2, scope: !546, file: !3, line: 39, type: !32)
!551 = !DILocalVariable(name: "len", arg: 3, scope: !546, file: !3, line: 39, type: !5)
!552 = !DILocalVariable(name: "i", scope: !553, file: !3, line: 41, type: !5)
!553 = distinct !DILexicalBlock(scope: !546, file: !3, line: 41, column: 3)
!554 = !DILocalVariable(name: "hd1", scope: !555, file: !3, line: 43, type: !5)
!555 = distinct !DILexicalBlock(scope: !556, file: !3, line: 42, column: 3)
!556 = distinct !DILexicalBlock(scope: !553, file: !3, line: 41, column: 3)
!557 = !DILocalVariable(name: "x0", scope: !555, file: !3, line: 44, type: !227)
!558 = !DILocation(line: 0, scope: !546, inlinedAt: !559)
!559 = distinct !DILocation(line: 283, column: 3, scope: !538, inlinedAt: !543)
!560 = !DILocation(line: 0, scope: !553, inlinedAt: !559)
!561 = !DILocation(line: 41, column: 3, scope: !553, inlinedAt: !559)
!562 = !DILocation(line: 43, column: 20, scope: !555, inlinedAt: !559)
!563 = !DILocation(line: 0, scope: !555, inlinedAt: !559)
!564 = !DILocation(line: 44, column: 41, scope: !555, inlinedAt: !559)
!565 = !DILocation(line: 44, column: 26, scope: !555, inlinedAt: !559)
!566 = !DILocation(line: 0, scope: !325, inlinedAt: !567)
!567 = distinct !DILocation(line: 45, column: 5, scope: !555, inlinedAt: !559)
!568 = !DILocation(line: 54, column: 10, scope: !325, inlinedAt: !567)
!569 = !DILocalVariable(name: "b", arg: 1, scope: !570, file: !316, line: 355, type: !227)
!570 = distinct !DISubprogram(name: "store32", scope: !316, file: !316, line: 355, type: !571, scopeLine: 355, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !573)
!571 = !DISubroutineType(types: !572)
!572 = !{null, !227, !5}
!573 = !{!569, !574}
!574 = !DILocalVariable(name: "i", arg: 2, scope: !570, file: !316, line: 355, type: !5)
!575 = !DILocation(line: 0, scope: !570, inlinedAt: !576)
!576 = distinct !DILocation(line: 45, column: 5, scope: !555, inlinedAt: !559)
!577 = !DILocation(line: 355, column: 54, scope: !570, inlinedAt: !576)
!578 = !DILocation(line: 41, column: 50, scope: !556, inlinedAt: !559)
!579 = !DILocation(line: 41, column: 37, scope: !556, inlinedAt: !559)
!580 = distinct !{!580, !561, !581, !339, !340}
!581 = !DILocation(line: 46, column: 3, scope: !553, inlinedAt: !559)
!582 = !DILocation(line: 328, column: 1, scope: !532)
!583 = distinct !DISubprogram(name: "Hacl_SHA2_256_hash", scope: !3, file: !3, line: 330, type: !584, scopeLine: 331, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !586)
!584 = !DISubroutineType(types: !585)
!585 = !{null, !227, !227, !5}
!586 = !{!587, !588, !589}
!587 = !DILocalVariable(name: "hash1", arg: 1, scope: !583, file: !3, line: 330, type: !227)
!588 = !DILocalVariable(name: "input", arg: 2, scope: !583, file: !3, line: 330, type: !227)
!589 = !DILocalVariable(name: "len", arg: 3, scope: !583, file: !3, line: 330, type: !5)
!590 = !DILocation(line: 0, scope: !583)
!591 = !DILocalVariable(name: "hash1", arg: 1, scope: !592, file: !3, line: 286, type: !227)
!592 = distinct !DISubprogram(name: "Hacl_Impl_SHA2_256_hash", scope: !3, file: !3, line: 286, type: !584, scopeLine: 287, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !593)
!593 = !{!591, !594, !595, !596, !600, !601, !602, !603}
!594 = !DILocalVariable(name: "input", arg: 2, scope: !592, file: !3, line: 286, type: !227)
!595 = !DILocalVariable(name: "len", arg: 3, scope: !592, file: !3, line: 286, type: !5)
!596 = !DILocalVariable(name: "state", scope: !592, file: !3, line: 288, type: !597)
!597 = !DICompositeType(tag: DW_TAG_array_type, baseType: !5, size: 4384, elements: !598)
!598 = !{!599}
!599 = !DISubrange(count: 137)
!600 = !DILocalVariable(name: "n1", scope: !592, file: !3, line: 289, type: !5)
!601 = !DILocalVariable(name: "r", scope: !592, file: !3, line: 290, type: !5)
!602 = !DILocalVariable(name: "input_blocks", scope: !592, file: !3, line: 291, type: !227)
!603 = !DILocalVariable(name: "input_last", scope: !592, file: !3, line: 292, type: !227)
!604 = !DILocation(line: 0, scope: !592, inlinedAt: !605)
!605 = distinct !DILocation(line: 332, column: 3, scope: !583)
!606 = !DILocation(line: 288, column: 3, scope: !592, inlinedAt: !605)
!607 = !DILocation(line: 288, column: 12, scope: !592, inlinedAt: !605)
!608 = !DILocation(line: 289, column: 21, scope: !592, inlinedAt: !605)
!609 = !DILocation(line: 290, column: 20, scope: !592, inlinedAt: !605)
!610 = !DILocation(line: 292, column: 36, scope: !592, inlinedAt: !605)
!611 = !DILocation(line: 292, column: 31, scope: !592, inlinedAt: !605)
!612 = !DILocation(line: 293, column: 27, scope: !592, inlinedAt: !605)
!613 = !DILocation(line: 0, scope: !37, inlinedAt: !614)
!614 = distinct !DILocation(line: 293, column: 3, scope: !592, inlinedAt: !605)
!615 = !DILocation(line: 51, column: 24, scope: !37, inlinedAt: !614)
!616 = !DILocation(line: 53, column: 26, scope: !37, inlinedAt: !614)
!617 = !DILocation(line: 55, column: 22, scope: !37, inlinedAt: !614)
!618 = !DILocation(line: 56, column: 21, scope: !37, inlinedAt: !614)
!619 = !DILocation(line: 57, column: 21, scope: !37, inlinedAt: !614)
!620 = !DILocation(line: 59, column: 23, scope: !37, inlinedAt: !614)
!621 = !DILocation(line: 61, column: 23, scope: !37, inlinedAt: !614)
!622 = !DILocation(line: 62, column: 11, scope: !37, inlinedAt: !614)
!623 = !DILocation(line: 63, column: 3, scope: !37, inlinedAt: !614)
!624 = !DILocation(line: 63, column: 11, scope: !37, inlinedAt: !614)
!625 = !DILocation(line: 64, column: 3, scope: !37, inlinedAt: !614)
!626 = !DILocation(line: 64, column: 11, scope: !37, inlinedAt: !614)
!627 = !DILocation(line: 65, column: 3, scope: !37, inlinedAt: !614)
!628 = !DILocation(line: 65, column: 11, scope: !37, inlinedAt: !614)
!629 = !DILocation(line: 66, column: 11, scope: !37, inlinedAt: !614)
!630 = !DILocation(line: 67, column: 3, scope: !37, inlinedAt: !614)
!631 = !DILocation(line: 67, column: 11, scope: !37, inlinedAt: !614)
!632 = !DILocation(line: 68, column: 3, scope: !37, inlinedAt: !614)
!633 = !DILocation(line: 68, column: 11, scope: !37, inlinedAt: !614)
!634 = !DILocation(line: 69, column: 3, scope: !37, inlinedAt: !614)
!635 = !DILocation(line: 69, column: 11, scope: !37, inlinedAt: !614)
!636 = !DILocation(line: 71, column: 23, scope: !37, inlinedAt: !614)
!637 = !DILocation(line: 72, column: 11, scope: !37, inlinedAt: !614)
!638 = !DILocation(line: 73, column: 3, scope: !37, inlinedAt: !614)
!639 = !DILocation(line: 73, column: 11, scope: !37, inlinedAt: !614)
!640 = !DILocation(line: 74, column: 3, scope: !37, inlinedAt: !614)
!641 = !DILocation(line: 74, column: 11, scope: !37, inlinedAt: !614)
!642 = !DILocation(line: 75, column: 3, scope: !37, inlinedAt: !614)
!643 = !DILocation(line: 75, column: 11, scope: !37, inlinedAt: !614)
!644 = !DILocation(line: 76, column: 11, scope: !37, inlinedAt: !614)
!645 = !DILocation(line: 77, column: 3, scope: !37, inlinedAt: !614)
!646 = !DILocation(line: 77, column: 11, scope: !37, inlinedAt: !614)
!647 = !DILocation(line: 78, column: 3, scope: !37, inlinedAt: !614)
!648 = !DILocation(line: 78, column: 11, scope: !37, inlinedAt: !614)
!649 = !DILocation(line: 79, column: 3, scope: !37, inlinedAt: !614)
!650 = !DILocation(line: 79, column: 11, scope: !37, inlinedAt: !614)
!651 = !DILocation(line: 81, column: 23, scope: !37, inlinedAt: !614)
!652 = !DILocation(line: 83, column: 23, scope: !37, inlinedAt: !614)
!653 = !DILocation(line: 84, column: 11, scope: !37, inlinedAt: !614)
!654 = !DILocation(line: 85, column: 3, scope: !37, inlinedAt: !614)
!655 = !DILocation(line: 85, column: 11, scope: !37, inlinedAt: !614)
!656 = !DILocation(line: 86, column: 3, scope: !37, inlinedAt: !614)
!657 = !DILocation(line: 86, column: 11, scope: !37, inlinedAt: !614)
!658 = !DILocation(line: 87, column: 3, scope: !37, inlinedAt: !614)
!659 = !DILocation(line: 87, column: 11, scope: !37, inlinedAt: !614)
!660 = !DILocation(line: 88, column: 11, scope: !37, inlinedAt: !614)
!661 = !DILocation(line: 89, column: 3, scope: !37, inlinedAt: !614)
!662 = !DILocation(line: 89, column: 11, scope: !37, inlinedAt: !614)
!663 = !DILocation(line: 90, column: 3, scope: !37, inlinedAt: !614)
!664 = !DILocation(line: 90, column: 11, scope: !37, inlinedAt: !614)
!665 = !DILocation(line: 91, column: 3, scope: !37, inlinedAt: !614)
!666 = !DILocation(line: 91, column: 11, scope: !37, inlinedAt: !614)
!667 = !DILocation(line: 93, column: 23, scope: !37, inlinedAt: !614)
!668 = !DILocation(line: 94, column: 11, scope: !37, inlinedAt: !614)
!669 = !DILocation(line: 95, column: 3, scope: !37, inlinedAt: !614)
!670 = !DILocation(line: 95, column: 11, scope: !37, inlinedAt: !614)
!671 = !DILocation(line: 96, column: 3, scope: !37, inlinedAt: !614)
!672 = !DILocation(line: 96, column: 11, scope: !37, inlinedAt: !614)
!673 = !DILocation(line: 97, column: 3, scope: !37, inlinedAt: !614)
!674 = !DILocation(line: 97, column: 11, scope: !37, inlinedAt: !614)
!675 = !DILocation(line: 98, column: 11, scope: !37, inlinedAt: !614)
!676 = !DILocation(line: 99, column: 3, scope: !37, inlinedAt: !614)
!677 = !DILocation(line: 99, column: 11, scope: !37, inlinedAt: !614)
!678 = !DILocation(line: 100, column: 3, scope: !37, inlinedAt: !614)
!679 = !DILocation(line: 100, column: 11, scope: !37, inlinedAt: !614)
!680 = !DILocation(line: 101, column: 3, scope: !37, inlinedAt: !614)
!681 = !DILocation(line: 101, column: 11, scope: !37, inlinedAt: !614)
!682 = !DILocation(line: 103, column: 22, scope: !37, inlinedAt: !614)
!683 = !DILocation(line: 105, column: 23, scope: !37, inlinedAt: !614)
!684 = !DILocation(line: 106, column: 11, scope: !37, inlinedAt: !614)
!685 = !DILocation(line: 107, column: 3, scope: !37, inlinedAt: !614)
!686 = !DILocation(line: 107, column: 11, scope: !37, inlinedAt: !614)
!687 = !DILocation(line: 108, column: 3, scope: !37, inlinedAt: !614)
!688 = !DILocation(line: 108, column: 11, scope: !37, inlinedAt: !614)
!689 = !DILocation(line: 109, column: 3, scope: !37, inlinedAt: !614)
!690 = !DILocation(line: 109, column: 11, scope: !37, inlinedAt: !614)
!691 = !DILocation(line: 110, column: 11, scope: !37, inlinedAt: !614)
!692 = !DILocation(line: 111, column: 3, scope: !37, inlinedAt: !614)
!693 = !DILocation(line: 111, column: 11, scope: !37, inlinedAt: !614)
!694 = !DILocation(line: 112, column: 3, scope: !37, inlinedAt: !614)
!695 = !DILocation(line: 112, column: 11, scope: !37, inlinedAt: !614)
!696 = !DILocation(line: 113, column: 3, scope: !37, inlinedAt: !614)
!697 = !DILocation(line: 113, column: 11, scope: !37, inlinedAt: !614)
!698 = !DILocation(line: 115, column: 23, scope: !37, inlinedAt: !614)
!699 = !DILocation(line: 116, column: 11, scope: !37, inlinedAt: !614)
!700 = !DILocation(line: 117, column: 3, scope: !37, inlinedAt: !614)
!701 = !DILocation(line: 117, column: 11, scope: !37, inlinedAt: !614)
!702 = !DILocation(line: 118, column: 3, scope: !37, inlinedAt: !614)
!703 = !DILocation(line: 118, column: 11, scope: !37, inlinedAt: !614)
!704 = !DILocation(line: 119, column: 3, scope: !37, inlinedAt: !614)
!705 = !DILocation(line: 119, column: 11, scope: !37, inlinedAt: !614)
!706 = !DILocation(line: 120, column: 11, scope: !37, inlinedAt: !614)
!707 = !DILocation(line: 121, column: 3, scope: !37, inlinedAt: !614)
!708 = !DILocation(line: 121, column: 11, scope: !37, inlinedAt: !614)
!709 = !DILocation(line: 122, column: 3, scope: !37, inlinedAt: !614)
!710 = !DILocation(line: 122, column: 11, scope: !37, inlinedAt: !614)
!711 = !DILocation(line: 123, column: 3, scope: !37, inlinedAt: !614)
!712 = !DILocation(line: 123, column: 11, scope: !37, inlinedAt: !614)
!713 = !DILocation(line: 125, column: 23, scope: !37, inlinedAt: !614)
!714 = !DILocation(line: 127, column: 25, scope: !37, inlinedAt: !614)
!715 = !DILocation(line: 128, column: 10, scope: !37, inlinedAt: !614)
!716 = !DILocation(line: 129, column: 3, scope: !37, inlinedAt: !614)
!717 = !DILocation(line: 129, column: 10, scope: !37, inlinedAt: !614)
!718 = !DILocation(line: 130, column: 3, scope: !37, inlinedAt: !614)
!719 = !DILocation(line: 130, column: 10, scope: !37, inlinedAt: !614)
!720 = !DILocation(line: 131, column: 3, scope: !37, inlinedAt: !614)
!721 = !DILocation(line: 131, column: 10, scope: !37, inlinedAt: !614)
!722 = !DILocation(line: 132, column: 12, scope: !37, inlinedAt: !614)
!723 = !DILocation(line: 133, column: 3, scope: !37, inlinedAt: !614)
!724 = !DILocation(line: 133, column: 12, scope: !37, inlinedAt: !614)
!725 = !DILocation(line: 134, column: 3, scope: !37, inlinedAt: !614)
!726 = !DILocation(line: 134, column: 12, scope: !37, inlinedAt: !614)
!727 = !DILocation(line: 135, column: 3, scope: !37, inlinedAt: !614)
!728 = !DILocation(line: 135, column: 12, scope: !37, inlinedAt: !614)
!729 = !DILocation(line: 137, column: 25, scope: !37, inlinedAt: !614)
!730 = !DILocation(line: 138, column: 12, scope: !37, inlinedAt: !614)
!731 = !DILocation(line: 139, column: 3, scope: !37, inlinedAt: !614)
!732 = !DILocation(line: 139, column: 12, scope: !37, inlinedAt: !614)
!733 = !DILocation(line: 140, column: 3, scope: !37, inlinedAt: !614)
!734 = !DILocation(line: 140, column: 12, scope: !37, inlinedAt: !614)
!735 = !DILocation(line: 141, column: 3, scope: !37, inlinedAt: !614)
!736 = !DILocation(line: 141, column: 12, scope: !37, inlinedAt: !614)
!737 = !DILocation(line: 142, column: 12, scope: !37, inlinedAt: !614)
!738 = !DILocation(line: 143, column: 3, scope: !37, inlinedAt: !614)
!739 = !DILocation(line: 143, column: 12, scope: !37, inlinedAt: !614)
!740 = !DILocation(line: 144, column: 3, scope: !37, inlinedAt: !614)
!741 = !DILocation(line: 144, column: 12, scope: !37, inlinedAt: !614)
!742 = !DILocation(line: 145, column: 3, scope: !37, inlinedAt: !614)
!743 = !DILocation(line: 145, column: 12, scope: !37, inlinedAt: !614)
!744 = !DILocation(line: 147, column: 23, scope: !37, inlinedAt: !614)
!745 = !DILocation(line: 148, column: 12, scope: !37, inlinedAt: !614)
!746 = !DILocation(line: 149, column: 3, scope: !37, inlinedAt: !614)
!747 = !DILocation(line: 149, column: 12, scope: !37, inlinedAt: !614)
!748 = !DILocation(line: 150, column: 3, scope: !37, inlinedAt: !614)
!749 = !DILocation(line: 150, column: 12, scope: !37, inlinedAt: !614)
!750 = !DILocation(line: 151, column: 3, scope: !37, inlinedAt: !614)
!751 = !DILocation(line: 151, column: 12, scope: !37, inlinedAt: !614)
!752 = !DILocation(line: 152, column: 10, scope: !37, inlinedAt: !614)
!753 = !DILocation(line: 153, column: 3, scope: !37, inlinedAt: !614)
!754 = !DILocation(line: 153, column: 10, scope: !37, inlinedAt: !614)
!755 = !DILocation(line: 154, column: 3, scope: !37, inlinedAt: !614)
!756 = !DILocation(line: 154, column: 10, scope: !37, inlinedAt: !614)
!757 = !DILocation(line: 155, column: 3, scope: !37, inlinedAt: !614)
!758 = !DILocation(line: 155, column: 10, scope: !37, inlinedAt: !614)
!759 = !DILocation(line: 156, column: 10, scope: !37, inlinedAt: !614)
!760 = !DILocation(line: 0, scope: !435, inlinedAt: !761)
!761 = distinct !DILocation(line: 294, column: 3, scope: !592, inlinedAt: !605)
!762 = !DILocation(line: 0, scope: !440, inlinedAt: !761)
!763 = !DILocation(line: 246, column: 37, scope: !443, inlinedAt: !761)
!764 = !DILocation(line: 246, column: 3, scope: !440, inlinedAt: !761)
!765 = !DILocation(line: 248, column: 27, scope: !442, inlinedAt: !761)
!766 = !DILocation(line: 248, column: 23, scope: !442, inlinedAt: !761)
!767 = !DILocation(line: 0, scope: !442, inlinedAt: !761)
!768 = !DILocation(line: 249, column: 5, scope: !442, inlinedAt: !761)
!769 = !DILocation(line: 246, column: 49, scope: !443, inlinedAt: !761)
!770 = distinct !{!770, !764, !771, !339, !340}
!771 = !DILocation(line: 250, column: 3, scope: !440, inlinedAt: !761)
!772 = !DILocation(line: 0, scope: !464, inlinedAt: !773)
!773 = distinct !DILocation(line: 295, column: 3, scope: !592, inlinedAt: !605)
!774 = !DILocation(line: 255, column: 3, scope: !464, inlinedAt: !773)
!775 = !DILocation(line: 255, column: 11, scope: !464, inlinedAt: !773)
!776 = !DILocation(line: 257, column: 11, scope: !485, inlinedAt: !773)
!777 = !DILocation(line: 262, column: 7, scope: !464, inlinedAt: !773)
!778 = !DILocation(line: 266, column: 3, scope: !464, inlinedAt: !773)
!779 = !DILocation(line: 267, column: 17, scope: !464, inlinedAt: !773)
!780 = !DILocation(line: 268, column: 35, scope: !464, inlinedAt: !773)
!781 = !DILocation(line: 270, column: 28, scope: !464, inlinedAt: !773)
!782 = !DILocation(line: 270, column: 83, scope: !464, inlinedAt: !773)
!783 = !DILocation(line: 272, column: 27, scope: !464, inlinedAt: !773)
!784 = !DILocation(line: 272, column: 42, scope: !464, inlinedAt: !773)
!785 = !DILocation(line: 274, column: 17, scope: !464, inlinedAt: !773)
!786 = !DILocation(line: 274, column: 73, scope: !464, inlinedAt: !773)
!787 = !DILocation(line: 275, column: 12, scope: !464, inlinedAt: !773)
!788 = !DILocation(line: 0, scope: !502, inlinedAt: !789)
!789 = distinct !DILocation(line: 276, column: 3, scope: !464, inlinedAt: !773)
!790 = !DILocation(line: 75, column: 10, scope: !502, inlinedAt: !789)
!791 = !DILocation(line: 0, scope: !510, inlinedAt: !792)
!792 = distinct !DILocation(line: 276, column: 3, scope: !464, inlinedAt: !773)
!793 = !DILocation(line: 357, column: 54, scope: !510, inlinedAt: !792)
!794 = !DILocation(line: 0, scope: !435, inlinedAt: !795)
!795 = distinct !DILocation(line: 277, column: 3, scope: !464, inlinedAt: !773)
!796 = !DILocation(line: 0, scope: !440, inlinedAt: !795)
!797 = !DILocation(line: 248, column: 27, scope: !442, inlinedAt: !795)
!798 = !DILocation(line: 248, column: 23, scope: !442, inlinedAt: !795)
!799 = !DILocation(line: 0, scope: !442, inlinedAt: !795)
!800 = !DILocation(line: 249, column: 5, scope: !442, inlinedAt: !795)
!801 = !DILocation(line: 246, column: 49, scope: !443, inlinedAt: !795)
!802 = !DILocation(line: 246, column: 37, scope: !443, inlinedAt: !795)
!803 = !DILocation(line: 246, column: 3, scope: !440, inlinedAt: !795)
!804 = distinct !{!804, !803, !805, !339, !340}
!805 = !DILocation(line: 250, column: 3, scope: !440, inlinedAt: !795)
!806 = !DILocation(line: 278, column: 1, scope: !464, inlinedAt: !773)
!807 = !DILocation(line: 0, scope: !538, inlinedAt: !808)
!808 = distinct !DILocation(line: 296, column: 3, scope: !592, inlinedAt: !605)
!809 = !DILocation(line: 0, scope: !546, inlinedAt: !810)
!810 = distinct !DILocation(line: 283, column: 3, scope: !538, inlinedAt: !808)
!811 = !DILocation(line: 0, scope: !553, inlinedAt: !810)
!812 = !DILocation(line: 41, column: 3, scope: !553, inlinedAt: !810)
!813 = !DILocation(line: 43, column: 20, scope: !555, inlinedAt: !810)
!814 = !DILocation(line: 0, scope: !555, inlinedAt: !810)
!815 = !DILocation(line: 44, column: 41, scope: !555, inlinedAt: !810)
!816 = !DILocation(line: 44, column: 26, scope: !555, inlinedAt: !810)
!817 = !DILocation(line: 0, scope: !325, inlinedAt: !818)
!818 = distinct !DILocation(line: 45, column: 5, scope: !555, inlinedAt: !810)
!819 = !DILocation(line: 54, column: 10, scope: !325, inlinedAt: !818)
!820 = !DILocation(line: 0, scope: !570, inlinedAt: !821)
!821 = distinct !DILocation(line: 45, column: 5, scope: !555, inlinedAt: !810)
!822 = !DILocation(line: 355, column: 54, scope: !570, inlinedAt: !821)
!823 = !DILocation(line: 41, column: 50, scope: !556, inlinedAt: !810)
!824 = !DILocation(line: 41, column: 37, scope: !556, inlinedAt: !810)
!825 = distinct !{!825, !812, !826, !339, !340}
!826 = !DILocation(line: 46, column: 3, scope: !553, inlinedAt: !810)
!827 = !DILocation(line: 297, column: 1, scope: !592, inlinedAt: !605)
!828 = !DILocation(line: 333, column: 1, scope: !583)
