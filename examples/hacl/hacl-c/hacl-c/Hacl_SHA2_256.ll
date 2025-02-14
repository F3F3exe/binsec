; ModuleID = 'hacl-c/hacl-c/Hacl_SHA2_256.c'
source_filename = "hacl-c/hacl-c/Hacl_SHA2_256.c"
target datalayout = "e-m:e-p:32:32-p270:32:32-p271:32:32-p272:64:64-f64:32:64-f80:32-n8:16:32-S128"
target triple = "i386-pc-linux-gnu"

@Hacl_SHA2_256_size_hash = dso_local local_unnamed_addr global i32 32, align 4, !dbg !0
@Hacl_SHA2_256_size_block = dso_local local_unnamed_addr global i32 64, align 4, !dbg !17
@Hacl_SHA2_256_size_state = dso_local local_unnamed_addr global i32 137, align 4, !dbg !19

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind uwtable willreturn writeonly
define dso_local void @Hacl_SHA2_256_init(i32* noundef %0) local_unnamed_addr #0 !dbg !29 {
  call void @llvm.dbg.value(metadata i32* %0, metadata !34, metadata !DIExpression()), !dbg !35
  call fastcc void @Hacl_Impl_SHA2_256_init(i32* noundef %0), !dbg !36
  ret void, !dbg !37
}

; Function Attrs: mustprogress nofree nosync nounwind readnone speculatable willreturn
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind uwtable willreturn writeonly
define internal fastcc void @Hacl_Impl_SHA2_256_init(i32* noundef writeonly %0) unnamed_addr #0 !dbg !38 {
  call void @llvm.dbg.value(metadata i32* %0, metadata !40, metadata !DIExpression()), !dbg !74
  %2 = getelementptr inbounds i32, i32* %0, i32 136, !dbg !75
  call void @llvm.dbg.value(metadata i32* %2, metadata !41, metadata !DIExpression()), !dbg !74
  call void @llvm.dbg.value(metadata i32* %0, metadata !42, metadata !DIExpression()), !dbg !74
  %3 = getelementptr inbounds i32, i32* %0, i32 128, !dbg !76
  call void @llvm.dbg.value(metadata i32* %3, metadata !43, metadata !DIExpression()), !dbg !74
  call void @llvm.dbg.value(metadata i32* %0, metadata !44, metadata !DIExpression()), !dbg !74
  %4 = getelementptr inbounds i32, i32* %0, i32 16, !dbg !77
  call void @llvm.dbg.value(metadata i32* %4, metadata !45, metadata !DIExpression()), !dbg !74
  %5 = getelementptr inbounds i32, i32* %0, i32 32, !dbg !78
  call void @llvm.dbg.value(metadata i32* %5, metadata !46, metadata !DIExpression()), !dbg !74
  %6 = getelementptr inbounds i32, i32* %0, i32 48, !dbg !79
  call void @llvm.dbg.value(metadata i32* %6, metadata !47, metadata !DIExpression()), !dbg !74
  call void @llvm.dbg.value(metadata i32* %0, metadata !48, metadata !DIExpression()), !dbg !74
  %7 = getelementptr inbounds i32, i32* %0, i32 8, !dbg !80
  call void @llvm.dbg.value(metadata i32* %7, metadata !49, metadata !DIExpression()), !dbg !74
  call void @llvm.dbg.value(metadata i32* %0, metadata !50, metadata !DIExpression()), !dbg !74
  %8 = getelementptr inbounds i32, i32* %0, i32 4, !dbg !81
  call void @llvm.dbg.value(metadata i32* %8, metadata !51, metadata !DIExpression()), !dbg !74
  store i32 1116352408, i32* %0, align 4, !dbg !82, !tbaa !83
  %9 = getelementptr inbounds i32, i32* %0, i32 1, !dbg !87
  store i32 1899447441, i32* %9, align 4, !dbg !88, !tbaa !83
  %10 = getelementptr inbounds i32, i32* %0, i32 2, !dbg !89
  store i32 -1245643825, i32* %10, align 4, !dbg !90, !tbaa !83
  %11 = getelementptr inbounds i32, i32* %0, i32 3, !dbg !91
  store i32 -373957723, i32* %11, align 4, !dbg !92, !tbaa !83
  store i32 961987163, i32* %8, align 4, !dbg !93, !tbaa !83
  %12 = getelementptr inbounds i32, i32* %0, i32 5, !dbg !94
  store i32 1508970993, i32* %12, align 4, !dbg !95, !tbaa !83
  %13 = getelementptr inbounds i32, i32* %0, i32 6, !dbg !96
  store i32 -1841331548, i32* %13, align 4, !dbg !97, !tbaa !83
  %14 = getelementptr inbounds i32, i32* %0, i32 7, !dbg !98
  store i32 -1424204075, i32* %14, align 4, !dbg !99, !tbaa !83
  call void @llvm.dbg.value(metadata i32* %7, metadata !52, metadata !DIExpression()), !dbg !74
  %15 = getelementptr inbounds i32, i32* %0, i32 12, !dbg !100
  call void @llvm.dbg.value(metadata i32* %15, metadata !53, metadata !DIExpression()), !dbg !74
  store i32 -670586216, i32* %7, align 4, !dbg !101, !tbaa !83
  %16 = getelementptr inbounds i32, i32* %0, i32 9, !dbg !102
  store i32 310598401, i32* %16, align 4, !dbg !103, !tbaa !83
  %17 = getelementptr inbounds i32, i32* %0, i32 10, !dbg !104
  store i32 607225278, i32* %17, align 4, !dbg !105, !tbaa !83
  %18 = getelementptr inbounds i32, i32* %0, i32 11, !dbg !106
  store i32 1426881987, i32* %18, align 4, !dbg !107, !tbaa !83
  store i32 1925078388, i32* %15, align 4, !dbg !108, !tbaa !83
  %19 = getelementptr inbounds i32, i32* %0, i32 13, !dbg !109
  store i32 -2132889090, i32* %19, align 4, !dbg !110, !tbaa !83
  %20 = getelementptr inbounds i32, i32* %0, i32 14, !dbg !111
  store i32 -1680079193, i32* %20, align 4, !dbg !112, !tbaa !83
  %21 = getelementptr inbounds i32, i32* %0, i32 15, !dbg !113
  store i32 -1046744716, i32* %21, align 4, !dbg !114, !tbaa !83
  call void @llvm.dbg.value(metadata i32* %4, metadata !54, metadata !DIExpression()), !dbg !74
  %22 = getelementptr inbounds i32, i32* %0, i32 24, !dbg !115
  call void @llvm.dbg.value(metadata i32* %22, metadata !55, metadata !DIExpression()), !dbg !74
  call void @llvm.dbg.value(metadata i32* %4, metadata !56, metadata !DIExpression()), !dbg !74
  %23 = getelementptr inbounds i32, i32* %0, i32 20, !dbg !116
  call void @llvm.dbg.value(metadata i32* %23, metadata !57, metadata !DIExpression()), !dbg !74
  store i32 -459576895, i32* %4, align 4, !dbg !117, !tbaa !83
  %24 = getelementptr inbounds i32, i32* %0, i32 17, !dbg !118
  store i32 -272742522, i32* %24, align 4, !dbg !119, !tbaa !83
  %25 = getelementptr inbounds i32, i32* %0, i32 18, !dbg !120
  store i32 264347078, i32* %25, align 4, !dbg !121, !tbaa !83
  %26 = getelementptr inbounds i32, i32* %0, i32 19, !dbg !122
  store i32 604807628, i32* %26, align 4, !dbg !123, !tbaa !83
  store i32 770255983, i32* %23, align 4, !dbg !124, !tbaa !83
  %27 = getelementptr inbounds i32, i32* %0, i32 21, !dbg !125
  store i32 1249150122, i32* %27, align 4, !dbg !126, !tbaa !83
  %28 = getelementptr inbounds i32, i32* %0, i32 22, !dbg !127
  store i32 1555081692, i32* %28, align 4, !dbg !128, !tbaa !83
  %29 = getelementptr inbounds i32, i32* %0, i32 23, !dbg !129
  store i32 1996064986, i32* %29, align 4, !dbg !130, !tbaa !83
  call void @llvm.dbg.value(metadata i32* %22, metadata !58, metadata !DIExpression()), !dbg !74
  %30 = getelementptr inbounds i32, i32* %0, i32 28, !dbg !131
  call void @llvm.dbg.value(metadata i32* %30, metadata !59, metadata !DIExpression()), !dbg !74
  store i32 -1740746414, i32* %22, align 4, !dbg !132, !tbaa !83
  %31 = getelementptr inbounds i32, i32* %0, i32 25, !dbg !133
  store i32 -1473132947, i32* %31, align 4, !dbg !134, !tbaa !83
  %32 = getelementptr inbounds i32, i32* %0, i32 26, !dbg !135
  store i32 -1341970488, i32* %32, align 4, !dbg !136, !tbaa !83
  %33 = getelementptr inbounds i32, i32* %0, i32 27, !dbg !137
  store i32 -1084653625, i32* %33, align 4, !dbg !138, !tbaa !83
  store i32 -958395405, i32* %30, align 4, !dbg !139, !tbaa !83
  %34 = getelementptr inbounds i32, i32* %0, i32 29, !dbg !140
  store i32 -710438585, i32* %34, align 4, !dbg !141, !tbaa !83
  %35 = getelementptr inbounds i32, i32* %0, i32 30, !dbg !142
  store i32 113926993, i32* %35, align 4, !dbg !143, !tbaa !83
  %36 = getelementptr inbounds i32, i32* %0, i32 31, !dbg !144
  store i32 338241895, i32* %36, align 4, !dbg !145, !tbaa !83
  call void @llvm.dbg.value(metadata i32* %5, metadata !60, metadata !DIExpression()), !dbg !74
  %37 = getelementptr inbounds i32, i32* %0, i32 40, !dbg !146
  call void @llvm.dbg.value(metadata i32* %37, metadata !61, metadata !DIExpression()), !dbg !74
  call void @llvm.dbg.value(metadata i32* %5, metadata !62, metadata !DIExpression()), !dbg !74
  %38 = getelementptr inbounds i32, i32* %0, i32 36, !dbg !147
  call void @llvm.dbg.value(metadata i32* %38, metadata !63, metadata !DIExpression()), !dbg !74
  store i32 666307205, i32* %5, align 4, !dbg !148, !tbaa !83
  %39 = getelementptr inbounds i32, i32* %0, i32 33, !dbg !149
  store i32 773529912, i32* %39, align 4, !dbg !150, !tbaa !83
  %40 = getelementptr inbounds i32, i32* %0, i32 34, !dbg !151
  store i32 1294757372, i32* %40, align 4, !dbg !152, !tbaa !83
  %41 = getelementptr inbounds i32, i32* %0, i32 35, !dbg !153
  store i32 1396182291, i32* %41, align 4, !dbg !154, !tbaa !83
  store i32 1695183700, i32* %38, align 4, !dbg !155, !tbaa !83
  %42 = getelementptr inbounds i32, i32* %0, i32 37, !dbg !156
  store i32 1986661051, i32* %42, align 4, !dbg !157, !tbaa !83
  %43 = getelementptr inbounds i32, i32* %0, i32 38, !dbg !158
  store i32 -2117940946, i32* %43, align 4, !dbg !159, !tbaa !83
  %44 = getelementptr inbounds i32, i32* %0, i32 39, !dbg !160
  store i32 -1838011259, i32* %44, align 4, !dbg !161, !tbaa !83
  call void @llvm.dbg.value(metadata i32* %37, metadata !64, metadata !DIExpression()), !dbg !74
  %45 = getelementptr inbounds i32, i32* %0, i32 44, !dbg !162
  call void @llvm.dbg.value(metadata i32* %45, metadata !65, metadata !DIExpression()), !dbg !74
  store i32 -1564481375, i32* %37, align 4, !dbg !163, !tbaa !83
  %46 = getelementptr inbounds i32, i32* %0, i32 41, !dbg !164
  store i32 -1474664885, i32* %46, align 4, !dbg !165, !tbaa !83
  %47 = getelementptr inbounds i32, i32* %0, i32 42, !dbg !166
  store i32 -1035236496, i32* %47, align 4, !dbg !167, !tbaa !83
  %48 = getelementptr inbounds i32, i32* %0, i32 43, !dbg !168
  store i32 -949202525, i32* %48, align 4, !dbg !169, !tbaa !83
  store i32 -778901479, i32* %45, align 4, !dbg !170, !tbaa !83
  %49 = getelementptr inbounds i32, i32* %0, i32 45, !dbg !171
  store i32 -694614492, i32* %49, align 4, !dbg !172, !tbaa !83
  %50 = getelementptr inbounds i32, i32* %0, i32 46, !dbg !173
  store i32 -200395387, i32* %50, align 4, !dbg !174, !tbaa !83
  %51 = getelementptr inbounds i32, i32* %0, i32 47, !dbg !175
  store i32 275423344, i32* %51, align 4, !dbg !176, !tbaa !83
  call void @llvm.dbg.value(metadata i32* %6, metadata !66, metadata !DIExpression()), !dbg !74
  %52 = getelementptr inbounds i32, i32* %0, i32 56, !dbg !177
  call void @llvm.dbg.value(metadata i32* %52, metadata !67, metadata !DIExpression()), !dbg !74
  call void @llvm.dbg.value(metadata i32* %6, metadata !68, metadata !DIExpression()), !dbg !74
  %53 = getelementptr inbounds i32, i32* %0, i32 52, !dbg !178
  call void @llvm.dbg.value(metadata i32* %53, metadata !69, metadata !DIExpression()), !dbg !74
  store i32 430227734, i32* %6, align 4, !dbg !179, !tbaa !83
  %54 = getelementptr inbounds i32, i32* %0, i32 49, !dbg !180
  store i32 506948616, i32* %54, align 4, !dbg !181, !tbaa !83
  %55 = getelementptr inbounds i32, i32* %0, i32 50, !dbg !182
  store i32 659060556, i32* %55, align 4, !dbg !183, !tbaa !83
  %56 = getelementptr inbounds i32, i32* %0, i32 51, !dbg !184
  store i32 883997877, i32* %56, align 4, !dbg !185, !tbaa !83
  store i32 958139571, i32* %53, align 4, !dbg !186, !tbaa !83
  %57 = getelementptr inbounds i32, i32* %0, i32 53, !dbg !187
  store i32 1322822218, i32* %57, align 4, !dbg !188, !tbaa !83
  %58 = getelementptr inbounds i32, i32* %0, i32 54, !dbg !189
  store i32 1537002063, i32* %58, align 4, !dbg !190, !tbaa !83
  %59 = getelementptr inbounds i32, i32* %0, i32 55, !dbg !191
  store i32 1747873779, i32* %59, align 4, !dbg !192, !tbaa !83
  call void @llvm.dbg.value(metadata i32* %52, metadata !70, metadata !DIExpression()), !dbg !74
  %60 = getelementptr inbounds i32, i32* %0, i32 60, !dbg !193
  call void @llvm.dbg.value(metadata i32* %60, metadata !71, metadata !DIExpression()), !dbg !74
  store i32 1955562222, i32* %52, align 4, !dbg !194, !tbaa !83
  %61 = getelementptr inbounds i32, i32* %0, i32 57, !dbg !195
  store i32 2024104815, i32* %61, align 4, !dbg !196, !tbaa !83
  %62 = getelementptr inbounds i32, i32* %0, i32 58, !dbg !197
  store i32 -2067236844, i32* %62, align 4, !dbg !198, !tbaa !83
  %63 = getelementptr inbounds i32, i32* %0, i32 59, !dbg !199
  store i32 -1933114872, i32* %63, align 4, !dbg !200, !tbaa !83
  store i32 -1866530822, i32* %60, align 4, !dbg !201, !tbaa !83
  %64 = getelementptr inbounds i32, i32* %0, i32 61, !dbg !202
  store i32 -1538233109, i32* %64, align 4, !dbg !203, !tbaa !83
  %65 = getelementptr inbounds i32, i32* %0, i32 62, !dbg !204
  store i32 -1090935817, i32* %65, align 4, !dbg !205, !tbaa !83
  %66 = getelementptr inbounds i32, i32* %0, i32 63, !dbg !206
  store i32 -965641998, i32* %66, align 4, !dbg !207, !tbaa !83
  call void @llvm.dbg.value(metadata i32* %3, metadata !72, metadata !DIExpression()), !dbg !74
  %67 = getelementptr inbounds i32, i32* %0, i32 132, !dbg !208
  call void @llvm.dbg.value(metadata i32* %67, metadata !73, metadata !DIExpression()), !dbg !74
  store i32 1779033703, i32* %3, align 4, !dbg !209, !tbaa !83
  %68 = getelementptr inbounds i32, i32* %0, i32 129, !dbg !210
  store i32 -1150833019, i32* %68, align 4, !dbg !211, !tbaa !83
  %69 = getelementptr inbounds i32, i32* %0, i32 130, !dbg !212
  store i32 1013904242, i32* %69, align 4, !dbg !213, !tbaa !83
  %70 = getelementptr inbounds i32, i32* %0, i32 131, !dbg !214
  store i32 -1521486534, i32* %70, align 4, !dbg !215, !tbaa !83
  store i32 1359893119, i32* %67, align 4, !dbg !216, !tbaa !83
  %71 = getelementptr inbounds i32, i32* %0, i32 133, !dbg !217
  store i32 -1694144372, i32* %71, align 4, !dbg !218, !tbaa !83
  %72 = getelementptr inbounds i32, i32* %0, i32 134, !dbg !219
  store i32 528734635, i32* %72, align 4, !dbg !220, !tbaa !83
  %73 = getelementptr inbounds i32, i32* %0, i32 135, !dbg !221
  store i32 1541459225, i32* %73, align 4, !dbg !222, !tbaa !83
  store i32 0, i32* %2, align 4, !dbg !223, !tbaa !83
  ret void, !dbg !224
}

; Function Attrs: nofree noinline nosync nounwind uwtable
define dso_local void @Hacl_SHA2_256_update(i32* nocapture noundef %0, i8* nocapture noundef readonly %1) local_unnamed_addr #2 !dbg !225 {
  call void @llvm.dbg.value(metadata i32* %0, metadata !230, metadata !DIExpression()), !dbg !232
  call void @llvm.dbg.value(metadata i8* %1, metadata !231, metadata !DIExpression()), !dbg !232
  call fastcc void @Hacl_Impl_SHA2_256_update(i32* noundef %0, i8* noundef %1), !dbg !233
  ret void, !dbg !234
}

; Function Attrs: nofree noinline nosync nounwind uwtable
define internal fastcc void @Hacl_Impl_SHA2_256_update(i32* nocapture noundef %0, i8* nocapture noundef readonly %1) unnamed_addr #2 !dbg !235 {
  %3 = alloca [16 x i32], align 4
  %4 = bitcast [16 x i32]* %3 to i8*
  %5 = alloca [8 x i32], align 4
  call void @llvm.dbg.value(metadata i32* %0, metadata !237, metadata !DIExpression()), !dbg !292
  call void @llvm.dbg.value(metadata i8* %1, metadata !238, metadata !DIExpression()), !dbg !292
  %6 = bitcast [16 x i32]* %3 to i8*, !dbg !293
  call void @llvm.lifetime.start.p0i8(i64 64, i8* nonnull %6) #9, !dbg !293
  call void @llvm.dbg.declare(metadata [16 x i32]* %3, metadata !239, metadata !DIExpression()), !dbg !294
  call void @llvm.memset.p0i8.i32(i8* noundef nonnull align 4 dereferenceable(64) %6, i8 0, i32 64, i1 false), !dbg !294
  %7 = getelementptr inbounds [16 x i32], [16 x i32]* %3, i32 0, i32 0, !dbg !295
  call fastcc void @Hacl_Hash_Lib_LoadStore_uint32s_from_be_bytes(i32* noundef nonnull %7, i8* noundef %1), !dbg !296
  call void @llvm.dbg.value(metadata i32* %10, metadata !243, metadata !DIExpression()), !dbg !292
  %8 = getelementptr inbounds i32, i32* %0, i32 64, !dbg !297
  %9 = bitcast i32* %8 to i8*, !dbg !292
  call void @llvm.dbg.value(metadata i32* %8, metadata !244, metadata !DIExpression()), !dbg !292
  call void @llvm.dbg.value(metadata i32* %0, metadata !245, metadata !DIExpression()), !dbg !292
  call void @llvm.dbg.value(metadata i32* %103, metadata !246, metadata !DIExpression()), !dbg !292
  call void @llvm.dbg.value(metadata i32 0, metadata !247, metadata !DIExpression()), !dbg !298
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* noundef nonnull align 4 dereferenceable(64) %9, i8* noundef nonnull align 4 dereferenceable(64) %4, i32 64, i1 false), !dbg !299, !tbaa !83
  call void @llvm.dbg.value(metadata i32 undef, metadata !247, metadata !DIExpression()), !dbg !298
  call void @llvm.dbg.value(metadata i32 undef, metadata !249, metadata !DIExpression()), !dbg !300
  call void @llvm.dbg.value(metadata i32 undef, metadata !247, metadata !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value)), !dbg !298
  %10 = getelementptr inbounds i32, i32* %0, i32 128, !dbg !301
  br label %30, !dbg !302

11:                                               ; preds = %30
  %12 = bitcast [8 x i32]* %5 to i8*, !dbg !303
  call void @llvm.lifetime.start.p0i8(i64 32, i8* nonnull %12) #9, !dbg !303
  call void @llvm.dbg.declare(metadata [8 x i32]* %5, metadata !260, metadata !DIExpression()), !dbg !304
  %13 = getelementptr inbounds [8 x i32], [8 x i32]* %5, i32 0, i32 0, !dbg !305
  %14 = bitcast i32* %10 to i8*, !dbg !305
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* noundef nonnull align 4 dereferenceable(32) %12, i8* noundef nonnull align 4 dereferenceable(32) %14, i32 32, i1 false), !dbg !305
  call void @llvm.dbg.value(metadata i32 0, metadata !264, metadata !DIExpression()), !dbg !306
  %15 = getelementptr inbounds [8 x i32], [8 x i32]* %5, i32 0, i32 1
  %16 = getelementptr inbounds [8 x i32], [8 x i32]* %5, i32 0, i32 2
  %17 = getelementptr inbounds [8 x i32], [8 x i32]* %5, i32 0, i32 3
  %18 = getelementptr inbounds [8 x i32], [8 x i32]* %5, i32 0, i32 4
  %19 = getelementptr inbounds [8 x i32], [8 x i32]* %5, i32 0, i32 5
  %20 = getelementptr inbounds [8 x i32], [8 x i32]* %5, i32 0, i32 6
  %21 = getelementptr inbounds [8 x i32], [8 x i32]* %5, i32 0, i32 7
  %22 = load i32, i32* %13, align 4, !tbaa !83
  %23 = load i32, i32* %15, align 4, !tbaa !83
  %24 = load i32, i32* %16, align 4, !tbaa !83
  %25 = load i32, i32* %17, align 4, !tbaa !83
  %26 = load i32, i32* %18, align 4, !tbaa !83
  %27 = load i32, i32* %19, align 4, !tbaa !83
  %28 = load i32, i32* %20, align 4, !tbaa !83
  %29 = load i32, i32* %21, align 4, !tbaa !83
  call void @llvm.dbg.value(metadata i32 0, metadata !264, metadata !DIExpression()), !dbg !306
  br label %61, !dbg !307

30:                                               ; preds = %2, %30
  %31 = phi i32 [ %58, %30 ], [ 16, %2 ]
  call void @llvm.dbg.value(metadata i32 %31, metadata !252, metadata !DIExpression()), !dbg !308
  %32 = add nsw i32 %31, -16, !dbg !309
  %33 = getelementptr inbounds i32, i32* %8, i32 %32, !dbg !310
  %34 = load i32, i32* %33, align 4, !dbg !310, !tbaa !83
  call void @llvm.dbg.value(metadata i32 %34, metadata !254, metadata !DIExpression()), !dbg !311
  %35 = add nsw i32 %31, -15, !dbg !312
  %36 = getelementptr inbounds i32, i32* %8, i32 %35, !dbg !313
  %37 = load i32, i32* %36, align 4, !dbg !313, !tbaa !83
  call void @llvm.dbg.value(metadata i32 %37, metadata !257, metadata !DIExpression()), !dbg !311
  %38 = add nsw i32 %31, -7, !dbg !314
  %39 = getelementptr inbounds i32, i32* %8, i32 %38, !dbg !315
  %40 = load i32, i32* %39, align 4, !dbg !315, !tbaa !83
  call void @llvm.dbg.value(metadata i32 %40, metadata !258, metadata !DIExpression()), !dbg !311
  %41 = add nsw i32 %31, -2, !dbg !316
  %42 = getelementptr inbounds i32, i32* %8, i32 %41, !dbg !317
  %43 = load i32, i32* %42, align 4, !dbg !317, !tbaa !83
  call void @llvm.dbg.value(metadata i32 %43, metadata !259, metadata !DIExpression()), !dbg !311
  %44 = call i32 @llvm.fshl.i32(i32 %43, i32 %43, i32 15), !dbg !318
  %45 = call i32 @llvm.fshl.i32(i32 %43, i32 %43, i32 13), !dbg !319
  %46 = lshr i32 %43, 10, !dbg !320
  %47 = xor i32 %45, %46, !dbg !321
  %48 = xor i32 %47, %44, !dbg !322
  %49 = call i32 @llvm.fshl.i32(i32 %37, i32 %37, i32 25), !dbg !323
  %50 = call i32 @llvm.fshl.i32(i32 %37, i32 %37, i32 14), !dbg !324
  %51 = lshr i32 %37, 3, !dbg !325
  %52 = xor i32 %50, %51, !dbg !326
  %53 = xor i32 %52, %49, !dbg !327
  %54 = add i32 %40, %34, !dbg !328
  %55 = add i32 %54, %53, !dbg !329
  %56 = add i32 %55, %48, !dbg !330
  %57 = getelementptr inbounds i32, i32* %8, i32 %31, !dbg !331
  store i32 %56, i32* %57, align 4, !dbg !332, !tbaa !83
  %58 = add nuw nsw i32 %31, 1, !dbg !333
  call void @llvm.dbg.value(metadata i32 %58, metadata !252, metadata !DIExpression()), !dbg !308
  %59 = icmp eq i32 %58, 64, !dbg !334
  br i1 %59, label %11, label %30, !dbg !302, !llvm.loop !335

60:                                               ; preds = %61
  store i32 %98, i32* %13, align 4, !dbg !339, !tbaa !83
  store i32 %63, i32* %15, align 4, !dbg !339, !tbaa !83
  store i32 %64, i32* %16, align 4, !dbg !339, !tbaa !83
  store i32 %65, i32* %17, align 4, !dbg !339, !tbaa !83
  store i32 %99, i32* %18, align 4, !dbg !339, !tbaa !83
  store i32 %67, i32* %19, align 4, !dbg !339, !tbaa !83
  store i32 %68, i32* %20, align 4, !dbg !339, !tbaa !83
  store i32 %69, i32* %21, align 4, !dbg !339, !tbaa !83
  call void @llvm.dbg.value(metadata i32 0, metadata !284, metadata !DIExpression()), !dbg !340
  br label %106, !dbg !341

61:                                               ; preds = %11, %61
  %62 = phi i32 [ 0, %11 ], [ %100, %61 ]
  %63 = phi i32 [ %22, %11 ], [ %98, %61 ]
  %64 = phi i32 [ %23, %11 ], [ %63, %61 ]
  %65 = phi i32 [ %24, %11 ], [ %64, %61 ]
  %66 = phi i32 [ %25, %11 ], [ %65, %61 ]
  %67 = phi i32 [ %26, %11 ], [ %99, %61 ]
  %68 = phi i32 [ %27, %11 ], [ %67, %61 ]
  %69 = phi i32 [ %28, %11 ], [ %68, %61 ]
  %70 = phi i32 [ %29, %11 ], [ %69, %61 ]
  call void @llvm.dbg.value(metadata i32 %62, metadata !264, metadata !DIExpression()), !dbg !306
  call void @llvm.dbg.value(metadata i32 %63, metadata !266, metadata !DIExpression()), !dbg !339
  call void @llvm.dbg.value(metadata i32 %64, metadata !269, metadata !DIExpression()), !dbg !339
  call void @llvm.dbg.value(metadata i32 %65, metadata !270, metadata !DIExpression()), !dbg !339
  call void @llvm.dbg.value(metadata i32 %66, metadata !271, metadata !DIExpression()), !dbg !339
  call void @llvm.dbg.value(metadata i32 %67, metadata !272, metadata !DIExpression()), !dbg !339
  call void @llvm.dbg.value(metadata i32 %68, metadata !273, metadata !DIExpression()), !dbg !339
  call void @llvm.dbg.value(metadata i32 %69, metadata !274, metadata !DIExpression()), !dbg !339
  call void @llvm.dbg.value(metadata i32 %70, metadata !275, metadata !DIExpression()), !dbg !339
  %71 = getelementptr inbounds i32, i32* %0, i32 %62, !dbg !342
  %72 = load i32, i32* %71, align 4, !dbg !342, !tbaa !83
  call void @llvm.dbg.value(metadata i32 %72, metadata !276, metadata !DIExpression()), !dbg !339
  %73 = getelementptr inbounds i32, i32* %8, i32 %62, !dbg !343
  %74 = load i32, i32* %73, align 4, !dbg !343, !tbaa !83
  call void @llvm.dbg.value(metadata i32 %74, metadata !277, metadata !DIExpression()), !dbg !339
  %75 = call i32 @llvm.fshl.i32(i32 %67, i32 %67, i32 26), !dbg !344
  %76 = call i32 @llvm.fshl.i32(i32 %67, i32 %67, i32 21), !dbg !345
  %77 = call i32 @llvm.fshl.i32(i32 %67, i32 %67, i32 7), !dbg !346
  %78 = xor i32 %76, %77, !dbg !347
  %79 = xor i32 %78, %75, !dbg !348
  %80 = and i32 %68, %67, !dbg !349
  %81 = xor i32 %67, -1, !dbg !350
  %82 = and i32 %69, %81, !dbg !351
  %83 = add i32 %79, %80, !dbg !352
  %84 = add i32 %83, %70, !dbg !353
  %85 = add i32 %84, %82, !dbg !354
  %86 = add i32 %85, %72, !dbg !355
  %87 = add i32 %86, %74, !dbg !356
  call void @llvm.dbg.value(metadata i32 %87, metadata !278, metadata !DIExpression()), !dbg !339
  %88 = call i32 @llvm.fshl.i32(i32 %63, i32 %63, i32 30), !dbg !357
  %89 = call i32 @llvm.fshl.i32(i32 %63, i32 %63, i32 19), !dbg !358
  %90 = call i32 @llvm.fshl.i32(i32 %63, i32 %63, i32 10), !dbg !359
  %91 = xor i32 %89, %90, !dbg !360
  %92 = xor i32 %91, %88, !dbg !361
  %93 = and i32 %64, %63, !dbg !362
  %94 = xor i32 %64, %63, !dbg !363
  %95 = and i32 %94, %65, !dbg !363
  %96 = xor i32 %95, %93, !dbg !364
  %97 = add i32 %96, %92, !dbg !365
  call void @llvm.dbg.value(metadata i32 %97, metadata !279, metadata !DIExpression()), !dbg !339
  %98 = add i32 %97, %87, !dbg !366
  call void @llvm.dbg.value(metadata i32 %98, metadata !280, metadata !DIExpression()), !dbg !339
  %99 = add i32 %87, %66, !dbg !367
  call void @llvm.dbg.value(metadata i32 %99, metadata !281, metadata !DIExpression()), !dbg !339
  call void @llvm.dbg.value(metadata i32* %13, metadata !282, metadata !DIExpression()), !dbg !339
  call void @llvm.dbg.value(metadata i32* %18, metadata !283, metadata !DIExpression()), !dbg !339
  %100 = add nuw nsw i32 %62, 1, !dbg !368
  call void @llvm.dbg.value(metadata i32 %100, metadata !264, metadata !DIExpression()), !dbg !306
  %101 = icmp eq i32 %100, 64, !dbg !369
  br i1 %101, label %60, label %61, !dbg !307, !llvm.loop !370

102:                                              ; preds = %106
  %103 = getelementptr inbounds i32, i32* %0, i32 136, !dbg !372
  %104 = load i32, i32* %103, align 4, !dbg !373, !tbaa !83
  call void @llvm.dbg.value(metadata i32 %104, metadata !290, metadata !DIExpression()), !dbg !292
  call void @llvm.dbg.value(metadata i32 1, metadata !291, metadata !DIExpression()), !dbg !292
  %105 = add i32 %104, 1, !dbg !374
  store i32 %105, i32* %103, align 4, !dbg !375, !tbaa !83
  call void @llvm.lifetime.end.p0i8(i64 32, i8* nonnull %12) #9, !dbg !376
  call void @llvm.lifetime.end.p0i8(i64 64, i8* nonnull %6) #9, !dbg !376
  ret void, !dbg !376

106:                                              ; preds = %60, %106
  %107 = phi i32 [ 0, %60 ], [ %113, %106 ]
  call void @llvm.dbg.value(metadata i32 %107, metadata !284, metadata !DIExpression()), !dbg !340
  %108 = getelementptr inbounds i32, i32* %10, i32 %107, !dbg !377
  %109 = load i32, i32* %108, align 4, !dbg !377, !tbaa !83
  call void @llvm.dbg.value(metadata i32 %109, metadata !286, metadata !DIExpression()), !dbg !378
  %110 = getelementptr inbounds [8 x i32], [8 x i32]* %5, i32 0, i32 %107, !dbg !379
  %111 = load i32, i32* %110, align 4, !dbg !379, !tbaa !83
  call void @llvm.dbg.value(metadata i32 %111, metadata !289, metadata !DIExpression()), !dbg !378
  %112 = add i32 %111, %109, !dbg !380
  store i32 %112, i32* %108, align 4, !dbg !381, !tbaa !83
  %113 = add nuw nsw i32 %107, 1, !dbg !382
  call void @llvm.dbg.value(metadata i32 %113, metadata !284, metadata !DIExpression()), !dbg !340
  %114 = icmp eq i32 %113, 8, !dbg !383
  br i1 %114, label %102, label %106, !dbg !341, !llvm.loop !384
}

; Function Attrs: nofree noinline nosync nounwind uwtable
define dso_local void @Hacl_SHA2_256_update_multi(i32* nocapture noundef %0, i8* nocapture noundef readonly %1, i32 noundef %2) local_unnamed_addr #2 !dbg !386 {
  call void @llvm.dbg.value(metadata i32* %0, metadata !390, metadata !DIExpression()), !dbg !393
  call void @llvm.dbg.value(metadata i8* %1, metadata !391, metadata !DIExpression()), !dbg !393
  call void @llvm.dbg.value(metadata i32 %2, metadata !392, metadata !DIExpression()), !dbg !393
  call fastcc void @Hacl_Impl_SHA2_256_update_multi(i32* noundef %0, i8* noundef %1, i32 noundef %2), !dbg !394
  ret void, !dbg !395
}

; Function Attrs: nofree noinline nosync nounwind uwtable
define internal fastcc void @Hacl_Impl_SHA2_256_update_multi(i32* nocapture noundef %0, i8* nocapture noundef readonly %1, i32 noundef %2) unnamed_addr #2 !dbg !396 {
  call void @llvm.dbg.value(metadata i32* %0, metadata !398, metadata !DIExpression()), !dbg !406
  call void @llvm.dbg.value(metadata i8* %1, metadata !399, metadata !DIExpression()), !dbg !406
  call void @llvm.dbg.value(metadata i32 %2, metadata !400, metadata !DIExpression()), !dbg !406
  call void @llvm.dbg.value(metadata i32 0, metadata !401, metadata !DIExpression()), !dbg !407
  %4 = icmp eq i32 %2, 0, !dbg !408
  br i1 %4, label %5, label %6, !dbg !409

5:                                                ; preds = %6, %3
  ret void, !dbg !410

6:                                                ; preds = %3, %6
  %7 = phi i32 [ %10, %6 ], [ 0, %3 ]
  call void @llvm.dbg.value(metadata i32 %7, metadata !401, metadata !DIExpression()), !dbg !407
  %8 = shl i32 %7, 6, !dbg !411
  %9 = getelementptr inbounds i8, i8* %1, i32 %8, !dbg !412
  call void @llvm.dbg.value(metadata i8* %9, metadata !403, metadata !DIExpression()), !dbg !413
  call fastcc void @Hacl_Impl_SHA2_256_update(i32* noundef %0, i8* noundef %9), !dbg !414
  %10 = add nuw i32 %7, 1, !dbg !415
  call void @llvm.dbg.value(metadata i32 %10, metadata !401, metadata !DIExpression()), !dbg !407
  %11 = icmp eq i32 %10, %2, !dbg !408
  br i1 %11, label %5, label %6, !dbg !409, !llvm.loop !416
}

; Function Attrs: nofree noinline nosync nounwind uwtable
define dso_local void @Hacl_SHA2_256_update_last(i32* nocapture noundef %0, i8* nocapture noundef readonly %1, i32 noundef %2) local_unnamed_addr #2 !dbg !418 {
  call void @llvm.dbg.value(metadata i32* %0, metadata !420, metadata !DIExpression()), !dbg !423
  call void @llvm.dbg.value(metadata i8* %1, metadata !421, metadata !DIExpression()), !dbg !423
  call void @llvm.dbg.value(metadata i32 %2, metadata !422, metadata !DIExpression()), !dbg !423
  call fastcc void @Hacl_Impl_SHA2_256_update_last(i32* noundef %0, i8* noundef %1, i32 noundef %2), !dbg !424
  ret void, !dbg !425
}

; Function Attrs: nofree noinline nosync nounwind uwtable
define internal fastcc void @Hacl_Impl_SHA2_256_update_last(i32* nocapture noundef %0, i8* nocapture noundef readonly %1, i32 noundef %2) unnamed_addr #2 !dbg !426 {
  %4 = alloca [128 x i8], align 1
  call void @llvm.dbg.value(metadata i32* %0, metadata !428, metadata !DIExpression()), !dbg !443
  call void @llvm.dbg.value(metadata i8* %1, metadata !429, metadata !DIExpression()), !dbg !443
  call void @llvm.dbg.value(metadata i32 %2, metadata !430, metadata !DIExpression()), !dbg !443
  %5 = getelementptr inbounds [128 x i8], [128 x i8]* %4, i32 0, i32 0, !dbg !444
  call void @llvm.lifetime.start.p0i8(i64 128, i8* nonnull %5) #9, !dbg !444
  call void @llvm.dbg.declare(metadata [128 x i8]* %4, metadata !431, metadata !DIExpression()), !dbg !445
  call void @llvm.memset.p0i8.i32(i8* noundef nonnull align 1 dereferenceable(128) %5, i8 0, i32 128, i1 false), !dbg !445
  %6 = icmp ult i32 %2, 56, !dbg !446
  %7 = select i1 %6, i32 1, i32 2
  call void @llvm.dbg.value(metadata i32 %7, metadata !435, metadata !DIExpression()), !dbg !443
  %8 = getelementptr inbounds [128 x i8], [128 x i8]* %4, i32 0, i32 64, !dbg !448
  %9 = select i1 %6, i8* %8, i8* %5, !dbg !448
  call void @llvm.dbg.value(metadata i8* %9, metadata !436, metadata !DIExpression()), !dbg !443
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* nonnull align 1 %9, i8* align 1 %1, i32 %2, i1 false), !dbg !449
  %10 = getelementptr inbounds i32, i32* %0, i32 136, !dbg !450
  %11 = load i32, i32* %10, align 4, !dbg !450, !tbaa !83
  call void @llvm.dbg.value(metadata i32 %11, metadata !437, metadata !DIExpression()), !dbg !443
  %12 = getelementptr inbounds i8, i8* %9, i32 %2, !dbg !451
  call void @llvm.dbg.value(metadata i8* %12, metadata !438, metadata !DIExpression()), !dbg !443
  %13 = sub i32 55, %2, !dbg !452
  %14 = and i32 %13, 63, !dbg !453
  call void @llvm.dbg.value(metadata i32 %14, metadata !439, metadata !DIExpression()), !dbg !443
  call void @llvm.dbg.value(metadata i8* %12, metadata !440, metadata !DIExpression()), !dbg !443
  %15 = getelementptr inbounds i8, i8* %12, i32 1, !dbg !454
  %16 = getelementptr inbounds i8, i8* %15, i32 %14, !dbg !455
  call void @llvm.dbg.value(metadata i8* %16, metadata !441, metadata !DIExpression()), !dbg !443
  %17 = zext i32 %11 to i64, !dbg !456
  %18 = shl nuw nsw i64 %17, 6, !dbg !457
  %19 = zext i32 %2 to i64, !dbg !458
  %20 = add nuw nsw i64 %18, %19, !dbg !459
  %21 = shl nuw nsw i64 %20, 3, !dbg !460
  call void @llvm.dbg.value(metadata i64 %21, metadata !442, metadata !DIExpression()), !dbg !443
  store i8 -128, i8* %12, align 1, !dbg !461, !tbaa !462
  %22 = call fastcc i64 @__bswap_64(i64 noundef %21), !dbg !463
  call fastcc void @store64(i8* noundef nonnull %16, i64 noundef %22), !dbg !463
  call fastcc void @Hacl_Impl_SHA2_256_update_multi(i32* noundef %0, i8* noundef nonnull %9, i32 noundef %7), !dbg !464
  call void @llvm.lifetime.end.p0i8(i64 128, i8* nonnull %5) #9, !dbg !465
  ret void, !dbg !465
}

; Function Attrs: nofree noinline nosync nounwind uwtable
define dso_local void @Hacl_SHA2_256_finish(i32* nocapture noundef readonly %0, i8* nocapture noundef writeonly %1) local_unnamed_addr #2 !dbg !466 {
  call void @llvm.dbg.value(metadata i32* %0, metadata !468, metadata !DIExpression()), !dbg !470
  call void @llvm.dbg.value(metadata i8* %1, metadata !469, metadata !DIExpression()), !dbg !470
  call fastcc void @Hacl_Impl_SHA2_256_finish(i32* noundef %0, i8* noundef %1), !dbg !471
  ret void, !dbg !472
}

; Function Attrs: nofree noinline nosync nounwind uwtable
define internal fastcc void @Hacl_Impl_SHA2_256_finish(i32* nocapture noundef readonly %0, i8* nocapture noundef writeonly %1) unnamed_addr #2 !dbg !473 {
  call void @llvm.dbg.value(metadata i32* %0, metadata !475, metadata !DIExpression()), !dbg !478
  call void @llvm.dbg.value(metadata i8* %1, metadata !476, metadata !DIExpression()), !dbg !478
  %3 = getelementptr inbounds i32, i32* %0, i32 128, !dbg !479
  call void @llvm.dbg.value(metadata i32* %3, metadata !477, metadata !DIExpression()), !dbg !478
  call fastcc void @Hacl_Hash_Lib_LoadStore_uint32s_to_be_bytes(i8* noundef %1, i32* noundef nonnull %3), !dbg !480
  ret void, !dbg !481
}

; Function Attrs: nofree noinline nosync nounwind uwtable
define dso_local void @Hacl_SHA2_256_hash(i8* nocapture noundef writeonly %0, i8* nocapture noundef readonly %1, i32 noundef %2) local_unnamed_addr #2 !dbg !482 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !486, metadata !DIExpression()), !dbg !489
  call void @llvm.dbg.value(metadata i8* %1, metadata !487, metadata !DIExpression()), !dbg !489
  call void @llvm.dbg.value(metadata i32 %2, metadata !488, metadata !DIExpression()), !dbg !489
  call fastcc void @Hacl_Impl_SHA2_256_hash(i8* noundef %0, i8* noundef %1, i32 noundef %2), !dbg !490
  ret void, !dbg !491
}

; Function Attrs: nofree noinline nosync nounwind uwtable
define internal fastcc void @Hacl_Impl_SHA2_256_hash(i8* nocapture noundef writeonly %0, i8* nocapture noundef readonly %1, i32 noundef %2) unnamed_addr #2 !dbg !492 {
  %4 = alloca [137 x i32], align 4
  call void @llvm.dbg.value(metadata i8* %0, metadata !494, metadata !DIExpression()), !dbg !505
  call void @llvm.dbg.value(metadata i8* %1, metadata !495, metadata !DIExpression()), !dbg !505
  call void @llvm.dbg.value(metadata i32 %2, metadata !496, metadata !DIExpression()), !dbg !505
  %5 = bitcast [137 x i32]* %4 to i8*, !dbg !506
  call void @llvm.lifetime.start.p0i8(i64 548, i8* nonnull %5) #9, !dbg !506
  call void @llvm.dbg.declare(metadata [137 x i32]* %4, metadata !497, metadata !DIExpression()), !dbg !507
  call void @llvm.memset.p0i8.i32(i8* noundef nonnull align 4 dereferenceable(548) %5, i8 0, i32 548, i1 false), !dbg !507
  %6 = lshr i32 %2, 6, !dbg !508
  call void @llvm.dbg.value(metadata i32 %6, metadata !501, metadata !DIExpression()), !dbg !505
  %7 = and i32 %2, 63, !dbg !509
  call void @llvm.dbg.value(metadata i32 %7, metadata !502, metadata !DIExpression()), !dbg !505
  call void @llvm.dbg.value(metadata i8* %1, metadata !503, metadata !DIExpression()), !dbg !505
  %8 = and i32 %2, -64, !dbg !510
  %9 = getelementptr inbounds i8, i8* %1, i32 %8, !dbg !511
  call void @llvm.dbg.value(metadata i8* %9, metadata !504, metadata !DIExpression()), !dbg !505
  %10 = getelementptr inbounds [137 x i32], [137 x i32]* %4, i32 0, i32 0, !dbg !512
  call fastcc void @Hacl_Impl_SHA2_256_init(i32* noundef nonnull %10), !dbg !513
  call fastcc void @Hacl_Impl_SHA2_256_update_multi(i32* noundef nonnull %10, i8* noundef %1, i32 noundef %6), !dbg !514
  call fastcc void @Hacl_Impl_SHA2_256_update_last(i32* noundef nonnull %10, i8* noundef %9, i32 noundef %7), !dbg !515
  call fastcc void @Hacl_Impl_SHA2_256_finish(i32* noundef nonnull %10, i8* noundef %0), !dbg !516
  call void @llvm.lifetime.end.p0i8(i64 548, i8* nonnull %5) #9, !dbg !517
  ret void, !dbg !517
}

; Function Attrs: argmemonly mustprogress nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0i8(i64 immarg, i8* nocapture) #3

; Function Attrs: argmemonly mustprogress nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0i8(i64 immarg, i8* nocapture) #3

; Function Attrs: argmemonly mustprogress nofree nounwind willreturn writeonly
declare void @llvm.memset.p0i8.i32(i8* nocapture writeonly, i8, i32, i1 immarg) #4

; Function Attrs: nofree noinline nosync nounwind uwtable
define internal fastcc void @Hacl_Hash_Lib_LoadStore_uint32s_from_be_bytes(i32* nocapture noundef writeonly %0, i8* nocapture noundef readonly %1) unnamed_addr #2 !dbg !518 {
  call void @llvm.dbg.value(metadata i32* %0, metadata !520, metadata !DIExpression()), !dbg !529
  call void @llvm.dbg.value(metadata i8* %1, metadata !521, metadata !DIExpression()), !dbg !529
  call void @llvm.dbg.value(metadata i32 16, metadata !522, metadata !DIExpression()), !dbg !529
  call void @llvm.dbg.value(metadata i32 0, metadata !523, metadata !DIExpression()), !dbg !530
  br label %4, !dbg !531

3:                                                ; preds = %4
  ret void, !dbg !532

4:                                                ; preds = %2, %4
  %5 = phi i32 [ 0, %2 ], [ %11, %4 ]
  call void @llvm.dbg.value(metadata i32 %5, metadata !523, metadata !DIExpression()), !dbg !530
  %6 = shl i32 %5, 2, !dbg !533
  %7 = getelementptr inbounds i8, i8* %1, i32 %6, !dbg !534
  call void @llvm.dbg.value(metadata i8* %7, metadata !525, metadata !DIExpression()), !dbg !535
  %8 = call fastcc i32 @load32(i8* noundef %7), !dbg !536
  %9 = call fastcc i32 @__bswap_32(i32 noundef %8), !dbg !536
  call void @llvm.dbg.value(metadata i32 %9, metadata !528, metadata !DIExpression()), !dbg !535
  %10 = getelementptr inbounds i32, i32* %0, i32 %5, !dbg !537
  store i32 %9, i32* %10, align 4, !dbg !538, !tbaa !83
  %11 = add nuw nsw i32 %5, 1, !dbg !539
  call void @llvm.dbg.value(metadata i32 %11, metadata !523, metadata !DIExpression()), !dbg !530
  %12 = icmp eq i32 %11, 16, !dbg !540
  br i1 %12, label %3, label %4, !dbg !531, !llvm.loop !541
}

; Function Attrs: argmemonly mustprogress nofree nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i32(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i32, i1 immarg) #5

; Function Attrs: mustprogress nofree noinline nosync nounwind readnone uwtable willreturn
define internal fastcc i32 @__bswap_32(i32 noundef %0) unnamed_addr #6 !dbg !543 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !548, metadata !DIExpression()), !dbg !549
  %2 = call i32 @llvm.bswap.i32(i32 %0), !dbg !550
  ret i32 %2, !dbg !551
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readonly uwtable willreturn
define internal fastcc i32 @load32(i8* nocapture noundef readonly %0) unnamed_addr #7 !dbg !552 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !557, metadata !DIExpression()), !dbg !559
  %2 = bitcast i8* %0 to i32*, !dbg !560
  %3 = load i32, i32* %2, align 1, !dbg !560
  call void @llvm.dbg.value(metadata i32 %3, metadata !558, metadata !DIExpression()), !dbg !559
  ret i32 %3, !dbg !561
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind uwtable willreturn writeonly
define internal fastcc void @store64(i8* nocapture noundef writeonly %0, i64 noundef %1) unnamed_addr #0 !dbg !562 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !566, metadata !DIExpression()), !dbg !568
  call void @llvm.dbg.value(metadata i64 %1, metadata !567, metadata !DIExpression()), !dbg !568
  %3 = bitcast i8* %0 to i64*, !dbg !569
  store i64 %1, i64* %3, align 1, !dbg !569
  ret void, !dbg !570
}

; Function Attrs: mustprogress nofree noinline nosync nounwind readnone uwtable willreturn
define internal fastcc i64 @__bswap_64(i64 noundef %0) unnamed_addr #6 !dbg !571 {
  call void @llvm.dbg.value(metadata i64 %0, metadata !575, metadata !DIExpression()), !dbg !576
  %2 = and i64 %0, 72057594037927935, !dbg !577
  %3 = call i64 @llvm.bswap.i64(i64 %2), !dbg !577
  ret i64 %3, !dbg !578
}

; Function Attrs: nofree noinline nosync nounwind uwtable
define internal fastcc void @Hacl_Hash_Lib_LoadStore_uint32s_to_be_bytes(i8* nocapture noundef writeonly %0, i32* nocapture noundef readonly %1) unnamed_addr #2 !dbg !579 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !583, metadata !DIExpression()), !dbg !592
  call void @llvm.dbg.value(metadata i32* %1, metadata !584, metadata !DIExpression()), !dbg !592
  call void @llvm.dbg.value(metadata i32 8, metadata !585, metadata !DIExpression()), !dbg !592
  call void @llvm.dbg.value(metadata i32 0, metadata !586, metadata !DIExpression()), !dbg !593
  br label %4, !dbg !594

3:                                                ; preds = %4
  ret void, !dbg !595

4:                                                ; preds = %2, %4
  %5 = phi i32 [ 0, %2 ], [ %11, %4 ]
  call void @llvm.dbg.value(metadata i32 %5, metadata !586, metadata !DIExpression()), !dbg !593
  %6 = getelementptr inbounds i32, i32* %1, i32 %5, !dbg !596
  %7 = load i32, i32* %6, align 4, !dbg !596, !tbaa !83
  call void @llvm.dbg.value(metadata i32 %7, metadata !588, metadata !DIExpression()), !dbg !597
  %8 = shl i32 %5, 2, !dbg !598
  %9 = getelementptr inbounds i8, i8* %0, i32 %8, !dbg !599
  call void @llvm.dbg.value(metadata i8* %9, metadata !591, metadata !DIExpression()), !dbg !597
  %10 = call fastcc i32 @__bswap_32(i32 noundef %7), !dbg !600
  call fastcc void @store32(i8* noundef %9, i32 noundef %10), !dbg !600
  %11 = add nuw nsw i32 %5, 1, !dbg !601
  call void @llvm.dbg.value(metadata i32 %11, metadata !586, metadata !DIExpression()), !dbg !593
  %12 = icmp eq i32 %11, 8, !dbg !602
  br i1 %12, label %3, label %4, !dbg !594, !llvm.loop !603
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind uwtable willreturn writeonly
define internal fastcc void @store32(i8* nocapture noundef writeonly %0, i32 noundef %1) unnamed_addr #0 !dbg !605 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !609, metadata !DIExpression()), !dbg !611
  call void @llvm.dbg.value(metadata i32 %1, metadata !610, metadata !DIExpression()), !dbg !611
  %3 = bitcast i8* %0 to i32*, !dbg !612
  store i32 %1, i32* %3, align 1, !dbg !612
  ret void, !dbg !613
}

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare void @llvm.dbg.value(metadata, metadata, metadata) #8

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.fshl.i32(i32, i32, i32) #8

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #8

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare i64 @llvm.bswap.i64(i64) #8

attributes #0 = { mustprogress nofree noinline norecurse nosync nounwind uwtable willreturn writeonly "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="i686" "target-features"="+cx8,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nofree nosync nounwind readnone speculatable willreturn }
attributes #2 = { nofree noinline nosync nounwind uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="i686" "target-features"="+cx8,+x87" "tune-cpu"="generic" }
attributes #3 = { argmemonly mustprogress nofree nosync nounwind willreturn }
attributes #4 = { argmemonly mustprogress nofree nounwind willreturn writeonly }
attributes #5 = { argmemonly mustprogress nofree nounwind willreturn }
attributes #6 = { mustprogress nofree noinline nosync nounwind readnone uwtable willreturn "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="i686" "target-features"="+cx8,+x87" "tune-cpu"="generic" }
attributes #7 = { mustprogress nofree noinline norecurse nosync nounwind readonly uwtable willreturn "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="i686" "target-features"="+cx8,+x87" "tune-cpu"="generic" }
attributes #8 = { nofree nosync nounwind readnone speculatable willreturn }
attributes #9 = { nounwind }

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
!36 = !DILocation(line: 307, column: 3, scope: !29)
!37 = !DILocation(line: 308, column: 1, scope: !29)
!38 = distinct !DISubprogram(name: "Hacl_Impl_SHA2_256_init", scope: !3, file: !3, line: 49, type: !30, scopeLine: 50, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !39)
!39 = !{!40, !41, !42, !43, !44, !45, !46, !47, !48, !49, !50, !51, !52, !53, !54, !55, !56, !57, !58, !59, !60, !61, !62, !63, !64, !65, !66, !67, !68, !69, !70, !71, !72, !73}
!40 = !DILocalVariable(name: "state", arg: 1, scope: !38, file: !3, line: 49, type: !32)
!41 = !DILocalVariable(name: "n1", scope: !38, file: !3, line: 51, type: !32)
!42 = !DILocalVariable(name: "k1", scope: !38, file: !3, line: 52, type: !32)
!43 = !DILocalVariable(name: "h_01", scope: !38, file: !3, line: 53, type: !32)
!44 = !DILocalVariable(name: "p10", scope: !38, file: !3, line: 54, type: !32)
!45 = !DILocalVariable(name: "p20", scope: !38, file: !3, line: 55, type: !32)
!46 = !DILocalVariable(name: "p3", scope: !38, file: !3, line: 56, type: !32)
!47 = !DILocalVariable(name: "p4", scope: !38, file: !3, line: 57, type: !32)
!48 = !DILocalVariable(name: "p11", scope: !38, file: !3, line: 58, type: !32)
!49 = !DILocalVariable(name: "p21", scope: !38, file: !3, line: 59, type: !32)
!50 = !DILocalVariable(name: "p12", scope: !38, file: !3, line: 60, type: !32)
!51 = !DILocalVariable(name: "p22", scope: !38, file: !3, line: 61, type: !32)
!52 = !DILocalVariable(name: "p13", scope: !38, file: !3, line: 70, type: !32)
!53 = !DILocalVariable(name: "p23", scope: !38, file: !3, line: 71, type: !32)
!54 = !DILocalVariable(name: "p14", scope: !38, file: !3, line: 80, type: !32)
!55 = !DILocalVariable(name: "p24", scope: !38, file: !3, line: 81, type: !32)
!56 = !DILocalVariable(name: "p15", scope: !38, file: !3, line: 82, type: !32)
!57 = !DILocalVariable(name: "p25", scope: !38, file: !3, line: 83, type: !32)
!58 = !DILocalVariable(name: "p16", scope: !38, file: !3, line: 92, type: !32)
!59 = !DILocalVariable(name: "p26", scope: !38, file: !3, line: 93, type: !32)
!60 = !DILocalVariable(name: "p17", scope: !38, file: !3, line: 102, type: !32)
!61 = !DILocalVariable(name: "p27", scope: !38, file: !3, line: 103, type: !32)
!62 = !DILocalVariable(name: "p18", scope: !38, file: !3, line: 104, type: !32)
!63 = !DILocalVariable(name: "p28", scope: !38, file: !3, line: 105, type: !32)
!64 = !DILocalVariable(name: "p19", scope: !38, file: !3, line: 114, type: !32)
!65 = !DILocalVariable(name: "p29", scope: !38, file: !3, line: 115, type: !32)
!66 = !DILocalVariable(name: "p110", scope: !38, file: !3, line: 124, type: !32)
!67 = !DILocalVariable(name: "p210", scope: !38, file: !3, line: 125, type: !32)
!68 = !DILocalVariable(name: "p1", scope: !38, file: !3, line: 126, type: !32)
!69 = !DILocalVariable(name: "p211", scope: !38, file: !3, line: 127, type: !32)
!70 = !DILocalVariable(name: "p111", scope: !38, file: !3, line: 136, type: !32)
!71 = !DILocalVariable(name: "p212", scope: !38, file: !3, line: 137, type: !32)
!72 = !DILocalVariable(name: "p112", scope: !38, file: !3, line: 146, type: !32)
!73 = !DILocalVariable(name: "p2", scope: !38, file: !3, line: 147, type: !32)
!74 = !DILocation(line: 0, scope: !38)
!75 = !DILocation(line: 51, column: 24, scope: !38)
!76 = !DILocation(line: 53, column: 26, scope: !38)
!77 = !DILocation(line: 55, column: 22, scope: !38)
!78 = !DILocation(line: 56, column: 21, scope: !38)
!79 = !DILocation(line: 57, column: 21, scope: !38)
!80 = !DILocation(line: 59, column: 23, scope: !38)
!81 = !DILocation(line: 61, column: 23, scope: !38)
!82 = !DILocation(line: 62, column: 11, scope: !38)
!83 = !{!84, !84, i64 0}
!84 = !{!"int", !85, i64 0}
!85 = !{!"omnipotent char", !86, i64 0}
!86 = !{!"Simple C/C++ TBAA"}
!87 = !DILocation(line: 63, column: 3, scope: !38)
!88 = !DILocation(line: 63, column: 11, scope: !38)
!89 = !DILocation(line: 64, column: 3, scope: !38)
!90 = !DILocation(line: 64, column: 11, scope: !38)
!91 = !DILocation(line: 65, column: 3, scope: !38)
!92 = !DILocation(line: 65, column: 11, scope: !38)
!93 = !DILocation(line: 66, column: 11, scope: !38)
!94 = !DILocation(line: 67, column: 3, scope: !38)
!95 = !DILocation(line: 67, column: 11, scope: !38)
!96 = !DILocation(line: 68, column: 3, scope: !38)
!97 = !DILocation(line: 68, column: 11, scope: !38)
!98 = !DILocation(line: 69, column: 3, scope: !38)
!99 = !DILocation(line: 69, column: 11, scope: !38)
!100 = !DILocation(line: 71, column: 23, scope: !38)
!101 = !DILocation(line: 72, column: 11, scope: !38)
!102 = !DILocation(line: 73, column: 3, scope: !38)
!103 = !DILocation(line: 73, column: 11, scope: !38)
!104 = !DILocation(line: 74, column: 3, scope: !38)
!105 = !DILocation(line: 74, column: 11, scope: !38)
!106 = !DILocation(line: 75, column: 3, scope: !38)
!107 = !DILocation(line: 75, column: 11, scope: !38)
!108 = !DILocation(line: 76, column: 11, scope: !38)
!109 = !DILocation(line: 77, column: 3, scope: !38)
!110 = !DILocation(line: 77, column: 11, scope: !38)
!111 = !DILocation(line: 78, column: 3, scope: !38)
!112 = !DILocation(line: 78, column: 11, scope: !38)
!113 = !DILocation(line: 79, column: 3, scope: !38)
!114 = !DILocation(line: 79, column: 11, scope: !38)
!115 = !DILocation(line: 81, column: 23, scope: !38)
!116 = !DILocation(line: 83, column: 23, scope: !38)
!117 = !DILocation(line: 84, column: 11, scope: !38)
!118 = !DILocation(line: 85, column: 3, scope: !38)
!119 = !DILocation(line: 85, column: 11, scope: !38)
!120 = !DILocation(line: 86, column: 3, scope: !38)
!121 = !DILocation(line: 86, column: 11, scope: !38)
!122 = !DILocation(line: 87, column: 3, scope: !38)
!123 = !DILocation(line: 87, column: 11, scope: !38)
!124 = !DILocation(line: 88, column: 11, scope: !38)
!125 = !DILocation(line: 89, column: 3, scope: !38)
!126 = !DILocation(line: 89, column: 11, scope: !38)
!127 = !DILocation(line: 90, column: 3, scope: !38)
!128 = !DILocation(line: 90, column: 11, scope: !38)
!129 = !DILocation(line: 91, column: 3, scope: !38)
!130 = !DILocation(line: 91, column: 11, scope: !38)
!131 = !DILocation(line: 93, column: 23, scope: !38)
!132 = !DILocation(line: 94, column: 11, scope: !38)
!133 = !DILocation(line: 95, column: 3, scope: !38)
!134 = !DILocation(line: 95, column: 11, scope: !38)
!135 = !DILocation(line: 96, column: 3, scope: !38)
!136 = !DILocation(line: 96, column: 11, scope: !38)
!137 = !DILocation(line: 97, column: 3, scope: !38)
!138 = !DILocation(line: 97, column: 11, scope: !38)
!139 = !DILocation(line: 98, column: 11, scope: !38)
!140 = !DILocation(line: 99, column: 3, scope: !38)
!141 = !DILocation(line: 99, column: 11, scope: !38)
!142 = !DILocation(line: 100, column: 3, scope: !38)
!143 = !DILocation(line: 100, column: 11, scope: !38)
!144 = !DILocation(line: 101, column: 3, scope: !38)
!145 = !DILocation(line: 101, column: 11, scope: !38)
!146 = !DILocation(line: 103, column: 22, scope: !38)
!147 = !DILocation(line: 105, column: 23, scope: !38)
!148 = !DILocation(line: 106, column: 11, scope: !38)
!149 = !DILocation(line: 107, column: 3, scope: !38)
!150 = !DILocation(line: 107, column: 11, scope: !38)
!151 = !DILocation(line: 108, column: 3, scope: !38)
!152 = !DILocation(line: 108, column: 11, scope: !38)
!153 = !DILocation(line: 109, column: 3, scope: !38)
!154 = !DILocation(line: 109, column: 11, scope: !38)
!155 = !DILocation(line: 110, column: 11, scope: !38)
!156 = !DILocation(line: 111, column: 3, scope: !38)
!157 = !DILocation(line: 111, column: 11, scope: !38)
!158 = !DILocation(line: 112, column: 3, scope: !38)
!159 = !DILocation(line: 112, column: 11, scope: !38)
!160 = !DILocation(line: 113, column: 3, scope: !38)
!161 = !DILocation(line: 113, column: 11, scope: !38)
!162 = !DILocation(line: 115, column: 23, scope: !38)
!163 = !DILocation(line: 116, column: 11, scope: !38)
!164 = !DILocation(line: 117, column: 3, scope: !38)
!165 = !DILocation(line: 117, column: 11, scope: !38)
!166 = !DILocation(line: 118, column: 3, scope: !38)
!167 = !DILocation(line: 118, column: 11, scope: !38)
!168 = !DILocation(line: 119, column: 3, scope: !38)
!169 = !DILocation(line: 119, column: 11, scope: !38)
!170 = !DILocation(line: 120, column: 11, scope: !38)
!171 = !DILocation(line: 121, column: 3, scope: !38)
!172 = !DILocation(line: 121, column: 11, scope: !38)
!173 = !DILocation(line: 122, column: 3, scope: !38)
!174 = !DILocation(line: 122, column: 11, scope: !38)
!175 = !DILocation(line: 123, column: 3, scope: !38)
!176 = !DILocation(line: 123, column: 11, scope: !38)
!177 = !DILocation(line: 125, column: 23, scope: !38)
!178 = !DILocation(line: 127, column: 25, scope: !38)
!179 = !DILocation(line: 128, column: 10, scope: !38)
!180 = !DILocation(line: 129, column: 3, scope: !38)
!181 = !DILocation(line: 129, column: 10, scope: !38)
!182 = !DILocation(line: 130, column: 3, scope: !38)
!183 = !DILocation(line: 130, column: 10, scope: !38)
!184 = !DILocation(line: 131, column: 3, scope: !38)
!185 = !DILocation(line: 131, column: 10, scope: !38)
!186 = !DILocation(line: 132, column: 12, scope: !38)
!187 = !DILocation(line: 133, column: 3, scope: !38)
!188 = !DILocation(line: 133, column: 12, scope: !38)
!189 = !DILocation(line: 134, column: 3, scope: !38)
!190 = !DILocation(line: 134, column: 12, scope: !38)
!191 = !DILocation(line: 135, column: 3, scope: !38)
!192 = !DILocation(line: 135, column: 12, scope: !38)
!193 = !DILocation(line: 137, column: 25, scope: !38)
!194 = !DILocation(line: 138, column: 12, scope: !38)
!195 = !DILocation(line: 139, column: 3, scope: !38)
!196 = !DILocation(line: 139, column: 12, scope: !38)
!197 = !DILocation(line: 140, column: 3, scope: !38)
!198 = !DILocation(line: 140, column: 12, scope: !38)
!199 = !DILocation(line: 141, column: 3, scope: !38)
!200 = !DILocation(line: 141, column: 12, scope: !38)
!201 = !DILocation(line: 142, column: 12, scope: !38)
!202 = !DILocation(line: 143, column: 3, scope: !38)
!203 = !DILocation(line: 143, column: 12, scope: !38)
!204 = !DILocation(line: 144, column: 3, scope: !38)
!205 = !DILocation(line: 144, column: 12, scope: !38)
!206 = !DILocation(line: 145, column: 3, scope: !38)
!207 = !DILocation(line: 145, column: 12, scope: !38)
!208 = !DILocation(line: 147, column: 23, scope: !38)
!209 = !DILocation(line: 148, column: 12, scope: !38)
!210 = !DILocation(line: 149, column: 3, scope: !38)
!211 = !DILocation(line: 149, column: 12, scope: !38)
!212 = !DILocation(line: 150, column: 3, scope: !38)
!213 = !DILocation(line: 150, column: 12, scope: !38)
!214 = !DILocation(line: 151, column: 3, scope: !38)
!215 = !DILocation(line: 151, column: 12, scope: !38)
!216 = !DILocation(line: 152, column: 10, scope: !38)
!217 = !DILocation(line: 153, column: 3, scope: !38)
!218 = !DILocation(line: 153, column: 10, scope: !38)
!219 = !DILocation(line: 154, column: 3, scope: !38)
!220 = !DILocation(line: 154, column: 10, scope: !38)
!221 = !DILocation(line: 155, column: 3, scope: !38)
!222 = !DILocation(line: 155, column: 10, scope: !38)
!223 = !DILocation(line: 156, column: 10, scope: !38)
!224 = !DILocation(line: 157, column: 1, scope: !38)
!225 = distinct !DISubprogram(name: "Hacl_SHA2_256_update", scope: !3, file: !3, line: 310, type: !226, scopeLine: 311, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !229)
!226 = !DISubroutineType(types: !227)
!227 = !{null, !32, !228}
!228 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !13, size: 32)
!229 = !{!230, !231}
!230 = !DILocalVariable(name: "state", arg: 1, scope: !225, file: !3, line: 310, type: !32)
!231 = !DILocalVariable(name: "data_8", arg: 2, scope: !225, file: !3, line: 310, type: !228)
!232 = !DILocation(line: 0, scope: !225)
!233 = !DILocation(line: 312, column: 3, scope: !225)
!234 = !DILocation(line: 313, column: 1, scope: !225)
!235 = distinct !DISubprogram(name: "Hacl_Impl_SHA2_256_update", scope: !3, file: !3, line: 159, type: !226, scopeLine: 160, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !236)
!236 = !{!237, !238, !239, !243, !244, !245, !246, !247, !249, !252, !254, !257, !258, !259, !260, !264, !266, !269, !270, !271, !272, !273, !274, !275, !276, !277, !278, !279, !280, !281, !282, !283, !284, !286, !289, !290, !291}
!237 = !DILocalVariable(name: "state", arg: 1, scope: !235, file: !3, line: 159, type: !32)
!238 = !DILocalVariable(name: "data", arg: 2, scope: !235, file: !3, line: 159, type: !228)
!239 = !DILocalVariable(name: "data_w", scope: !235, file: !3, line: 161, type: !240)
!240 = !DICompositeType(tag: DW_TAG_array_type, baseType: !5, size: 512, elements: !241)
!241 = !{!242}
!242 = !DISubrange(count: 16)
!243 = !DILocalVariable(name: "hash_w", scope: !235, file: !3, line: 163, type: !32)
!244 = !DILocalVariable(name: "ws_w", scope: !235, file: !3, line: 164, type: !32)
!245 = !DILocalVariable(name: "k_w", scope: !235, file: !3, line: 165, type: !32)
!246 = !DILocalVariable(name: "counter_w", scope: !235, file: !3, line: 166, type: !32)
!247 = !DILocalVariable(name: "i", scope: !248, file: !3, line: 167, type: !5)
!248 = distinct !DILexicalBlock(scope: !235, file: !3, line: 167, column: 3)
!249 = !DILocalVariable(name: "b", scope: !250, file: !3, line: 169, type: !5)
!250 = distinct !DILexicalBlock(scope: !251, file: !3, line: 168, column: 3)
!251 = distinct !DILexicalBlock(scope: !248, file: !3, line: 167, column: 3)
!252 = !DILocalVariable(name: "i", scope: !253, file: !3, line: 172, type: !5)
!253 = distinct !DILexicalBlock(scope: !235, file: !3, line: 172, column: 3)
!254 = !DILocalVariable(name: "t16", scope: !255, file: !3, line: 174, type: !5)
!255 = distinct !DILexicalBlock(scope: !256, file: !3, line: 173, column: 3)
!256 = distinct !DILexicalBlock(scope: !253, file: !3, line: 172, column: 3)
!257 = !DILocalVariable(name: "t15", scope: !255, file: !3, line: 175, type: !5)
!258 = !DILocalVariable(name: "t7", scope: !255, file: !3, line: 176, type: !5)
!259 = !DILocalVariable(name: "t2", scope: !255, file: !3, line: 177, type: !5)
!260 = !DILocalVariable(name: "hash_0", scope: !235, file: !3, line: 188, type: !261)
!261 = !DICompositeType(tag: DW_TAG_array_type, baseType: !5, size: 256, elements: !262)
!262 = !{!263}
!263 = !DISubrange(count: 8)
!264 = !DILocalVariable(name: "i", scope: !265, file: !3, line: 190, type: !5)
!265 = distinct !DILexicalBlock(scope: !235, file: !3, line: 190, column: 3)
!266 = !DILocalVariable(name: "a", scope: !267, file: !3, line: 192, type: !5)
!267 = distinct !DILexicalBlock(scope: !268, file: !3, line: 191, column: 3)
!268 = distinct !DILexicalBlock(scope: !265, file: !3, line: 190, column: 3)
!269 = !DILocalVariable(name: "b", scope: !267, file: !3, line: 193, type: !5)
!270 = !DILocalVariable(name: "c", scope: !267, file: !3, line: 194, type: !5)
!271 = !DILocalVariable(name: "d", scope: !267, file: !3, line: 195, type: !5)
!272 = !DILocalVariable(name: "e", scope: !267, file: !3, line: 196, type: !5)
!273 = !DILocalVariable(name: "f1", scope: !267, file: !3, line: 197, type: !5)
!274 = !DILocalVariable(name: "g", scope: !267, file: !3, line: 198, type: !5)
!275 = !DILocalVariable(name: "h", scope: !267, file: !3, line: 199, type: !5)
!276 = !DILocalVariable(name: "kt", scope: !267, file: !3, line: 200, type: !5)
!277 = !DILocalVariable(name: "wst", scope: !267, file: !3, line: 201, type: !5)
!278 = !DILocalVariable(name: "t1", scope: !267, file: !3, line: 203, type: !5)
!279 = !DILocalVariable(name: "t2", scope: !267, file: !3, line: 214, type: !5)
!280 = !DILocalVariable(name: "x1", scope: !267, file: !3, line: 220, type: !5)
!281 = !DILocalVariable(name: "x5", scope: !267, file: !3, line: 221, type: !5)
!282 = !DILocalVariable(name: "p1", scope: !267, file: !3, line: 222, type: !32)
!283 = !DILocalVariable(name: "p2", scope: !267, file: !3, line: 223, type: !32)
!284 = !DILocalVariable(name: "i", scope: !285, file: !3, line: 233, type: !5)
!285 = distinct !DILexicalBlock(scope: !235, file: !3, line: 233, column: 3)
!286 = !DILocalVariable(name: "xi", scope: !287, file: !3, line: 235, type: !5)
!287 = distinct !DILexicalBlock(scope: !288, file: !3, line: 234, column: 3)
!288 = distinct !DILexicalBlock(scope: !285, file: !3, line: 233, column: 3)
!289 = !DILocalVariable(name: "yi", scope: !287, file: !3, line: 236, type: !5)
!290 = !DILocalVariable(name: "c0", scope: !235, file: !3, line: 239, type: !5)
!291 = !DILocalVariable(name: "one1", scope: !235, file: !3, line: 240, type: !5)
!292 = !DILocation(line: 0, scope: !235)
!293 = !DILocation(line: 161, column: 3, scope: !235)
!294 = !DILocation(line: 161, column: 12, scope: !235)
!295 = !DILocation(line: 162, column: 49, scope: !235)
!296 = !DILocation(line: 162, column: 3, scope: !235)
!297 = !DILocation(line: 164, column: 26, scope: !235)
!298 = !DILocation(line: 0, scope: !248)
!299 = !DILocation(line: 170, column: 13, scope: !250)
!300 = !DILocation(line: 0, scope: !250)
!301 = !DILocation(line: 163, column: 28, scope: !235)
!302 = !DILocation(line: 172, column: 3, scope: !253)
!303 = !DILocation(line: 188, column: 3, scope: !235)
!304 = !DILocation(line: 188, column: 12, scope: !235)
!305 = !DILocation(line: 189, column: 3, scope: !235)
!306 = !DILocation(line: 0, scope: !265)
!307 = !DILocation(line: 190, column: 3, scope: !265)
!308 = !DILocation(line: 0, scope: !253)
!309 = !DILocation(line: 174, column: 27, scope: !255)
!310 = !DILocation(line: 174, column: 20, scope: !255)
!311 = !DILocation(line: 0, scope: !255)
!312 = !DILocation(line: 175, column: 27, scope: !255)
!313 = !DILocation(line: 175, column: 20, scope: !255)
!314 = !DILocation(line: 176, column: 26, scope: !255)
!315 = !DILocation(line: 176, column: 19, scope: !255)
!316 = !DILocation(line: 177, column: 26, scope: !255)
!317 = !DILocation(line: 177, column: 19, scope: !255)
!318 = !DILocation(line: 179, column: 29, scope: !255)
!319 = !DILocation(line: 180, column: 31, scope: !255)
!320 = !DILocation(line: 180, column: 77, scope: !255)
!321 = !DILocation(line: 180, column: 72, scope: !255)
!322 = !DILocation(line: 180, column: 7, scope: !255)
!323 = !DILocation(line: 184, column: 33, scope: !255)
!324 = !DILocation(line: 185, column: 36, scope: !255)
!325 = !DILocation(line: 185, column: 84, scope: !255)
!326 = !DILocation(line: 185, column: 78, scope: !255)
!327 = !DILocation(line: 185, column: 11, scope: !255)
!328 = !DILocation(line: 181, column: 7, scope: !255)
!329 = !DILocation(line: 183, column: 9, scope: !255)
!330 = !DILocation(line: 186, column: 11, scope: !255)
!331 = !DILocation(line: 178, column: 5, scope: !255)
!332 = !DILocation(line: 178, column: 13, scope: !255)
!333 = !DILocation(line: 172, column: 61, scope: !256)
!334 = !DILocation(line: 172, column: 38, scope: !256)
!335 = distinct !{!335, !302, !336, !337, !338}
!336 = !DILocation(line: 187, column: 3, scope: !253)
!337 = !{!"llvm.loop.mustprogress"}
!338 = !{!"llvm.loop.unroll.disable"}
!339 = !DILocation(line: 0, scope: !267)
!340 = !DILocation(line: 0, scope: !285)
!341 = !DILocation(line: 233, column: 3, scope: !285)
!342 = !DILocation(line: 200, column: 19, scope: !267)
!343 = !DILocation(line: 201, column: 20, scope: !267)
!344 = !DILocation(line: 206, column: 29, scope: !267)
!345 = !DILocation(line: 208, column: 32, scope: !267)
!346 = !DILocation(line: 209, column: 33, scope: !267)
!347 = !DILocation(line: 209, column: 11, scope: !267)
!348 = !DILocation(line: 207, column: 9, scope: !267)
!349 = !DILocation(line: 210, column: 13, scope: !267)
!350 = !DILocation(line: 210, column: 22, scope: !267)
!351 = !DILocation(line: 210, column: 25, scope: !267)
!352 = !DILocation(line: 210, column: 19, scope: !267)
!353 = !DILocation(line: 205, column: 7, scope: !267)
!354 = !DILocation(line: 210, column: 7, scope: !267)
!355 = !DILocation(line: 211, column: 7, scope: !267)
!356 = !DILocation(line: 212, column: 7, scope: !267)
!357 = !DILocation(line: 215, column: 27, scope: !267)
!358 = !DILocation(line: 217, column: 30, scope: !267)
!359 = !DILocation(line: 218, column: 31, scope: !267)
!360 = !DILocation(line: 218, column: 9, scope: !267)
!361 = !DILocation(line: 216, column: 7, scope: !267)
!362 = !DILocation(line: 219, column: 13, scope: !267)
!363 = !DILocation(line: 219, column: 29, scope: !267)
!364 = !DILocation(line: 219, column: 18, scope: !267)
!365 = !DILocation(line: 219, column: 7, scope: !267)
!366 = !DILocation(line: 220, column: 22, scope: !267)
!367 = !DILocation(line: 221, column: 21, scope: !267)
!368 = !DILocation(line: 190, column: 60, scope: !268)
!369 = !DILocation(line: 190, column: 37, scope: !268)
!370 = distinct !{!370, !307, !371, !337, !338}
!371 = !DILocation(line: 232, column: 3, scope: !265)
!372 = !DILocation(line: 166, column: 31, scope: !235)
!373 = !DILocation(line: 239, column: 17, scope: !235)
!374 = !DILocation(line: 241, column: 22, scope: !235)
!375 = !DILocation(line: 241, column: 17, scope: !235)
!376 = !DILocation(line: 242, column: 1, scope: !235)
!377 = !DILocation(line: 235, column: 19, scope: !287)
!378 = !DILocation(line: 0, scope: !287)
!379 = !DILocation(line: 236, column: 19, scope: !287)
!380 = !DILocation(line: 237, column: 20, scope: !287)
!381 = !DILocation(line: 237, column: 15, scope: !287)
!382 = !DILocation(line: 233, column: 59, scope: !288)
!383 = !DILocation(line: 233, column: 37, scope: !288)
!384 = distinct !{!384, !341, !385, !337, !338}
!385 = !DILocation(line: 238, column: 3, scope: !285)
!386 = distinct !DISubprogram(name: "Hacl_SHA2_256_update_multi", scope: !3, file: !3, line: 315, type: !387, scopeLine: 316, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !389)
!387 = !DISubroutineType(types: !388)
!388 = !{null, !32, !228, !5}
!389 = !{!390, !391, !392}
!390 = !DILocalVariable(name: "state", arg: 1, scope: !386, file: !3, line: 315, type: !32)
!391 = !DILocalVariable(name: "data", arg: 2, scope: !386, file: !3, line: 315, type: !228)
!392 = !DILocalVariable(name: "n1", arg: 3, scope: !386, file: !3, line: 315, type: !5)
!393 = !DILocation(line: 0, scope: !386)
!394 = !DILocation(line: 317, column: 3, scope: !386)
!395 = !DILocation(line: 318, column: 1, scope: !386)
!396 = distinct !DISubprogram(name: "Hacl_Impl_SHA2_256_update_multi", scope: !3, file: !3, line: 244, type: !387, scopeLine: 245, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !397)
!397 = !{!398, !399, !400, !401, !403}
!398 = !DILocalVariable(name: "state", arg: 1, scope: !396, file: !3, line: 244, type: !32)
!399 = !DILocalVariable(name: "data", arg: 2, scope: !396, file: !3, line: 244, type: !228)
!400 = !DILocalVariable(name: "n1", arg: 3, scope: !396, file: !3, line: 244, type: !5)
!401 = !DILocalVariable(name: "i", scope: !402, file: !3, line: 246, type: !5)
!402 = distinct !DILexicalBlock(scope: !396, file: !3, line: 246, column: 3)
!403 = !DILocalVariable(name: "b", scope: !404, file: !3, line: 248, type: !228)
!404 = distinct !DILexicalBlock(scope: !405, file: !3, line: 247, column: 3)
!405 = distinct !DILexicalBlock(scope: !402, file: !3, line: 246, column: 3)
!406 = !DILocation(line: 0, scope: !396)
!407 = !DILocation(line: 0, scope: !402)
!408 = !DILocation(line: 246, column: 37, scope: !405)
!409 = !DILocation(line: 246, column: 3, scope: !402)
!410 = !DILocation(line: 251, column: 1, scope: !396)
!411 = !DILocation(line: 248, column: 27, scope: !404)
!412 = !DILocation(line: 248, column: 23, scope: !404)
!413 = !DILocation(line: 0, scope: !404)
!414 = !DILocation(line: 249, column: 5, scope: !404)
!415 = !DILocation(line: 246, column: 49, scope: !405)
!416 = distinct !{!416, !409, !417, !337, !338}
!417 = !DILocation(line: 250, column: 3, scope: !402)
!418 = distinct !DISubprogram(name: "Hacl_SHA2_256_update_last", scope: !3, file: !3, line: 320, type: !387, scopeLine: 321, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !419)
!419 = !{!420, !421, !422}
!420 = !DILocalVariable(name: "state", arg: 1, scope: !418, file: !3, line: 320, type: !32)
!421 = !DILocalVariable(name: "data", arg: 2, scope: !418, file: !3, line: 320, type: !228)
!422 = !DILocalVariable(name: "len", arg: 3, scope: !418, file: !3, line: 320, type: !5)
!423 = !DILocation(line: 0, scope: !418)
!424 = !DILocation(line: 322, column: 3, scope: !418)
!425 = !DILocation(line: 323, column: 1, scope: !418)
!426 = distinct !DISubprogram(name: "Hacl_Impl_SHA2_256_update_last", scope: !3, file: !3, line: 253, type: !387, scopeLine: 254, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !427)
!427 = !{!428, !429, !430, !431, !435, !436, !437, !438, !439, !440, !441, !442}
!428 = !DILocalVariable(name: "state", arg: 1, scope: !426, file: !3, line: 253, type: !32)
!429 = !DILocalVariable(name: "data", arg: 2, scope: !426, file: !3, line: 253, type: !228)
!430 = !DILocalVariable(name: "len", arg: 3, scope: !426, file: !3, line: 253, type: !5)
!431 = !DILocalVariable(name: "blocks", scope: !426, file: !3, line: 255, type: !432)
!432 = !DICompositeType(tag: DW_TAG_array_type, baseType: !13, size: 1024, elements: !433)
!433 = !{!434}
!434 = !DISubrange(count: 128)
!435 = !DILocalVariable(name: "nb", scope: !426, file: !3, line: 256, type: !5)
!436 = !DILocalVariable(name: "final_blocks", scope: !426, file: !3, line: 261, type: !228)
!437 = !DILocalVariable(name: "n1", scope: !426, file: !3, line: 267, type: !5)
!438 = !DILocalVariable(name: "padding", scope: !426, file: !3, line: 268, type: !228)
!439 = !DILocalVariable(name: "pad0len", scope: !426, file: !3, line: 270, type: !5)
!440 = !DILocalVariable(name: "buf1", scope: !426, file: !3, line: 271, type: !228)
!441 = !DILocalVariable(name: "buf2", scope: !426, file: !3, line: 272, type: !228)
!442 = !DILocalVariable(name: "encodedlen", scope: !426, file: !3, line: 274, type: !10)
!443 = !DILocation(line: 0, scope: !426)
!444 = !DILocation(line: 255, column: 3, scope: !426)
!445 = !DILocation(line: 255, column: 11, scope: !426)
!446 = !DILocation(line: 257, column: 11, scope: !447)
!447 = distinct !DILexicalBlock(scope: !426, file: !3, line: 257, column: 7)
!448 = !DILocation(line: 262, column: 7, scope: !426)
!449 = !DILocation(line: 266, column: 3, scope: !426)
!450 = !DILocation(line: 267, column: 17, scope: !426)
!451 = !DILocation(line: 268, column: 35, scope: !426)
!452 = !DILocation(line: 270, column: 28, scope: !426)
!453 = !DILocation(line: 270, column: 83, scope: !426)
!454 = !DILocation(line: 272, column: 27, scope: !426)
!455 = !DILocation(line: 272, column: 42, scope: !426)
!456 = !DILocation(line: 274, column: 17, scope: !426)
!457 = !DILocation(line: 274, column: 30, scope: !426)
!458 = !DILocation(line: 274, column: 58, scope: !426)
!459 = !DILocation(line: 274, column: 56, scope: !426)
!460 = !DILocation(line: 274, column: 73, scope: !426)
!461 = !DILocation(line: 275, column: 12, scope: !426)
!462 = !{!85, !85, i64 0}
!463 = !DILocation(line: 276, column: 3, scope: !426)
!464 = !DILocation(line: 277, column: 3, scope: !426)
!465 = !DILocation(line: 278, column: 1, scope: !426)
!466 = distinct !DISubprogram(name: "Hacl_SHA2_256_finish", scope: !3, file: !3, line: 325, type: !226, scopeLine: 326, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !467)
!467 = !{!468, !469}
!468 = !DILocalVariable(name: "state", arg: 1, scope: !466, file: !3, line: 325, type: !32)
!469 = !DILocalVariable(name: "hash1", arg: 2, scope: !466, file: !3, line: 325, type: !228)
!470 = !DILocation(line: 0, scope: !466)
!471 = !DILocation(line: 327, column: 3, scope: !466)
!472 = !DILocation(line: 328, column: 1, scope: !466)
!473 = distinct !DISubprogram(name: "Hacl_Impl_SHA2_256_finish", scope: !3, file: !3, line: 280, type: !226, scopeLine: 281, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !474)
!474 = !{!475, !476, !477}
!475 = !DILocalVariable(name: "state", arg: 1, scope: !473, file: !3, line: 280, type: !32)
!476 = !DILocalVariable(name: "hash1", arg: 2, scope: !473, file: !3, line: 280, type: !228)
!477 = !DILocalVariable(name: "hash_w", scope: !473, file: !3, line: 282, type: !32)
!478 = !DILocation(line: 0, scope: !473)
!479 = !DILocation(line: 282, column: 28, scope: !473)
!480 = !DILocation(line: 283, column: 3, scope: !473)
!481 = !DILocation(line: 284, column: 1, scope: !473)
!482 = distinct !DISubprogram(name: "Hacl_SHA2_256_hash", scope: !3, file: !3, line: 330, type: !483, scopeLine: 331, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !485)
!483 = !DISubroutineType(types: !484)
!484 = !{null, !228, !228, !5}
!485 = !{!486, !487, !488}
!486 = !DILocalVariable(name: "hash1", arg: 1, scope: !482, file: !3, line: 330, type: !228)
!487 = !DILocalVariable(name: "input", arg: 2, scope: !482, file: !3, line: 330, type: !228)
!488 = !DILocalVariable(name: "len", arg: 3, scope: !482, file: !3, line: 330, type: !5)
!489 = !DILocation(line: 0, scope: !482)
!490 = !DILocation(line: 332, column: 3, scope: !482)
!491 = !DILocation(line: 333, column: 1, scope: !482)
!492 = distinct !DISubprogram(name: "Hacl_Impl_SHA2_256_hash", scope: !3, file: !3, line: 286, type: !483, scopeLine: 287, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !493)
!493 = !{!494, !495, !496, !497, !501, !502, !503, !504}
!494 = !DILocalVariable(name: "hash1", arg: 1, scope: !492, file: !3, line: 286, type: !228)
!495 = !DILocalVariable(name: "input", arg: 2, scope: !492, file: !3, line: 286, type: !228)
!496 = !DILocalVariable(name: "len", arg: 3, scope: !492, file: !3, line: 286, type: !5)
!497 = !DILocalVariable(name: "state", scope: !492, file: !3, line: 288, type: !498)
!498 = !DICompositeType(tag: DW_TAG_array_type, baseType: !5, size: 4384, elements: !499)
!499 = !{!500}
!500 = !DISubrange(count: 137)
!501 = !DILocalVariable(name: "n1", scope: !492, file: !3, line: 289, type: !5)
!502 = !DILocalVariable(name: "r", scope: !492, file: !3, line: 290, type: !5)
!503 = !DILocalVariable(name: "input_blocks", scope: !492, file: !3, line: 291, type: !228)
!504 = !DILocalVariable(name: "input_last", scope: !492, file: !3, line: 292, type: !228)
!505 = !DILocation(line: 0, scope: !492)
!506 = !DILocation(line: 288, column: 3, scope: !492)
!507 = !DILocation(line: 288, column: 12, scope: !492)
!508 = !DILocation(line: 289, column: 21, scope: !492)
!509 = !DILocation(line: 290, column: 20, scope: !492)
!510 = !DILocation(line: 292, column: 36, scope: !492)
!511 = !DILocation(line: 292, column: 31, scope: !492)
!512 = !DILocation(line: 293, column: 27, scope: !492)
!513 = !DILocation(line: 293, column: 3, scope: !492)
!514 = !DILocation(line: 294, column: 3, scope: !492)
!515 = !DILocation(line: 295, column: 3, scope: !492)
!516 = !DILocation(line: 296, column: 3, scope: !492)
!517 = !DILocation(line: 297, column: 1, scope: !492)
!518 = distinct !DISubprogram(name: "Hacl_Hash_Lib_LoadStore_uint32s_from_be_bytes", scope: !3, file: !3, line: 28, type: !387, scopeLine: 29, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !519)
!519 = !{!520, !521, !522, !523, !525, !528}
!520 = !DILocalVariable(name: "output", arg: 1, scope: !518, file: !3, line: 28, type: !32)
!521 = !DILocalVariable(name: "input", arg: 2, scope: !518, file: !3, line: 28, type: !228)
!522 = !DILocalVariable(name: "len", arg: 3, scope: !518, file: !3, line: 28, type: !5)
!523 = !DILocalVariable(name: "i", scope: !524, file: !3, line: 30, type: !5)
!524 = distinct !DILexicalBlock(scope: !518, file: !3, line: 30, column: 3)
!525 = !DILocalVariable(name: "x0", scope: !526, file: !3, line: 32, type: !228)
!526 = distinct !DILexicalBlock(scope: !527, file: !3, line: 31, column: 3)
!527 = distinct !DILexicalBlock(scope: !524, file: !3, line: 30, column: 3)
!528 = !DILocalVariable(name: "inputi", scope: !526, file: !3, line: 33, type: !5)
!529 = !DILocation(line: 0, scope: !518)
!530 = !DILocation(line: 0, scope: !524)
!531 = !DILocation(line: 30, column: 3, scope: !524)
!532 = !DILocation(line: 36, column: 1, scope: !518)
!533 = !DILocation(line: 32, column: 40, scope: !526)
!534 = !DILocation(line: 32, column: 25, scope: !526)
!535 = !DILocation(line: 0, scope: !526)
!536 = !DILocation(line: 33, column: 23, scope: !526)
!537 = !DILocation(line: 34, column: 5, scope: !526)
!538 = !DILocation(line: 34, column: 15, scope: !526)
!539 = !DILocation(line: 30, column: 50, scope: !527)
!540 = !DILocation(line: 30, column: 37, scope: !527)
!541 = distinct !{!541, !531, !542, !337, !338}
!542 = !DILocation(line: 35, column: 3, scope: !524)
!543 = distinct !DISubprogram(name: "__bswap_32", scope: !544, file: !544, line: 49, type: !545, scopeLine: 50, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !547)
!544 = !DIFile(filename: "/usr/include/bits/byteswap.h", directory: "", checksumkind: CSK_MD5, checksum: "98f83253ffd9c64e7486789204e9fa05")
!545 = !DISubroutineType(types: !546)
!546 = !{!7, !7}
!547 = !{!548}
!548 = !DILocalVariable(name: "__bsx", arg: 1, scope: !543, file: !544, line: 49, type: !7)
!549 = !DILocation(line: 0, scope: !543)
!550 = !DILocation(line: 54, column: 10, scope: !543)
!551 = !DILocation(line: 54, column: 3, scope: !543)
!552 = distinct !DISubprogram(name: "load32", scope: !553, file: !553, line: 341, type: !554, scopeLine: 341, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !556)
!553 = !DIFile(filename: "hacl-c/hacl-c/kremlib.h", directory: "/mnt/c/Users/fwill/Documents/HS24/semester_project/tools/binsec/binsec/examples/hacl", checksumkind: CSK_MD5, checksum: "cde125f1f98cb7b9ee1f380d4178ebe4")
!554 = !DISubroutineType(types: !555)
!555 = !{!5, !228}
!556 = !{!557, !558}
!557 = !DILocalVariable(name: "b", arg: 1, scope: !552, file: !553, line: 341, type: !228)
!558 = !DILocalVariable(name: "x", scope: !552, file: !553, line: 342, type: !5)
!559 = !DILocation(line: 0, scope: !552)
!560 = !DILocation(line: 343, column: 3, scope: !552)
!561 = !DILocation(line: 344, column: 3, scope: !552)
!562 = distinct !DISubprogram(name: "store64", scope: !553, file: !553, line: 357, type: !563, scopeLine: 357, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !565)
!563 = !DISubroutineType(types: !564)
!564 = !{null, !228, !10}
!565 = !{!566, !567}
!566 = !DILocalVariable(name: "b", arg: 1, scope: !562, file: !553, line: 357, type: !228)
!567 = !DILocalVariable(name: "i", arg: 2, scope: !562, file: !553, line: 357, type: !10)
!568 = !DILocation(line: 0, scope: !562)
!569 = !DILocation(line: 357, column: 54, scope: !562)
!570 = !DILocation(line: 357, column: 72, scope: !562)
!571 = distinct !DISubprogram(name: "__bswap_64", scope: !544, file: !544, line: 70, type: !572, scopeLine: 71, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !574)
!572 = !DISubroutineType(types: !573)
!573 = !{!11, !11}
!574 = !{!575}
!575 = !DILocalVariable(name: "__bsx", arg: 1, scope: !571, file: !544, line: 70, type: !11)
!576 = !DILocation(line: 0, scope: !571)
!577 = !DILocation(line: 75, column: 10, scope: !571)
!578 = !DILocation(line: 75, column: 3, scope: !571)
!579 = distinct !DISubprogram(name: "Hacl_Hash_Lib_LoadStore_uint32s_to_be_bytes", scope: !3, file: !3, line: 39, type: !580, scopeLine: 40, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !582)
!580 = !DISubroutineType(types: !581)
!581 = !{null, !228, !32, !5}
!582 = !{!583, !584, !585, !586, !588, !591}
!583 = !DILocalVariable(name: "output", arg: 1, scope: !579, file: !3, line: 39, type: !228)
!584 = !DILocalVariable(name: "input", arg: 2, scope: !579, file: !3, line: 39, type: !32)
!585 = !DILocalVariable(name: "len", arg: 3, scope: !579, file: !3, line: 39, type: !5)
!586 = !DILocalVariable(name: "i", scope: !587, file: !3, line: 41, type: !5)
!587 = distinct !DILexicalBlock(scope: !579, file: !3, line: 41, column: 3)
!588 = !DILocalVariable(name: "hd1", scope: !589, file: !3, line: 43, type: !5)
!589 = distinct !DILexicalBlock(scope: !590, file: !3, line: 42, column: 3)
!590 = distinct !DILexicalBlock(scope: !587, file: !3, line: 41, column: 3)
!591 = !DILocalVariable(name: "x0", scope: !589, file: !3, line: 44, type: !228)
!592 = !DILocation(line: 0, scope: !579)
!593 = !DILocation(line: 0, scope: !587)
!594 = !DILocation(line: 41, column: 3, scope: !587)
!595 = !DILocation(line: 47, column: 1, scope: !579)
!596 = !DILocation(line: 43, column: 20, scope: !589)
!597 = !DILocation(line: 0, scope: !589)
!598 = !DILocation(line: 44, column: 41, scope: !589)
!599 = !DILocation(line: 44, column: 26, scope: !589)
!600 = !DILocation(line: 45, column: 5, scope: !589)
!601 = !DILocation(line: 41, column: 50, scope: !590)
!602 = !DILocation(line: 41, column: 37, scope: !590)
!603 = distinct !{!603, !594, !604, !337, !338}
!604 = !DILocation(line: 46, column: 3, scope: !587)
!605 = distinct !DISubprogram(name: "store32", scope: !553, file: !553, line: 355, type: !606, scopeLine: 355, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !608)
!606 = !DISubroutineType(types: !607)
!607 = !{null, !228, !5}
!608 = !{!609, !610}
!609 = !DILocalVariable(name: "b", arg: 1, scope: !605, file: !553, line: 355, type: !228)
!610 = !DILocalVariable(name: "i", arg: 2, scope: !605, file: !553, line: 355, type: !5)
!611 = !DILocation(line: 0, scope: !605)
!612 = !DILocation(line: 355, column: 54, scope: !605)
!613 = !DILocation(line: 355, column: 72, scope: !605)
