; ModuleID = 'hacl-c/hacl-c/Hacl_SHA2_512.c'
source_filename = "hacl-c/hacl-c/Hacl_SHA2_512.c"
target datalayout = "e-m:e-p:32:32-p270:32:32-p271:32:32-p272:64:64-f64:32:64-f80:32-n8:16:32-S128"
target triple = "i386-pc-linux-gnu"

%struct.FStar_UInt128_uint128 = type { i64, i64 }

@Hacl_SHA2_512_size_word = dso_local local_unnamed_addr global i32 8, align 4, !dbg !0
@Hacl_SHA2_512_size_hash_w = dso_local local_unnamed_addr global i32 8, align 4, !dbg !17
@Hacl_SHA2_512_size_block_w = dso_local local_unnamed_addr global i32 16, align 4, !dbg !19
@Hacl_SHA2_512_size_hash = dso_local local_unnamed_addr global i32 64, align 4, !dbg !21
@Hacl_SHA2_512_size_block = dso_local local_unnamed_addr global i32 128, align 4, !dbg !23
@Hacl_SHA2_512_size_k_w = dso_local local_unnamed_addr global i32 80, align 4, !dbg !25
@Hacl_SHA2_512_size_ws_w = dso_local local_unnamed_addr global i32 80, align 4, !dbg !27
@Hacl_SHA2_512_size_whash_w = dso_local local_unnamed_addr global i32 8, align 4, !dbg !29
@Hacl_SHA2_512_size_count_w = dso_local local_unnamed_addr global i32 1, align 4, !dbg !31
@Hacl_SHA2_512_size_len_8 = dso_local local_unnamed_addr global i32 16, align 4, !dbg !33
@Hacl_SHA2_512_size_state = dso_local local_unnamed_addr global i32 169, align 4, !dbg !35
@Hacl_SHA2_512_pos_k_w = dso_local local_unnamed_addr global i32 0, align 4, !dbg !37
@Hacl_SHA2_512_pos_ws_w = dso_local local_unnamed_addr global i32 80, align 4, !dbg !39
@Hacl_SHA2_512_pos_whash_w = dso_local local_unnamed_addr global i32 160, align 4, !dbg !41
@Hacl_SHA2_512_pos_count_w = dso_local local_unnamed_addr global i32 168, align 4, !dbg !43

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind uwtable willreturn writeonly
define dso_local void @Hacl_SHA2_512_init(i64* noundef %0) local_unnamed_addr #0 !dbg !53 {
  call void @llvm.dbg.value(metadata i64* %0, metadata !58, metadata !DIExpression()), !dbg !59
  call fastcc void @Hacl_Impl_SHA2_512_init(i64* noundef %0), !dbg !60
  ret void, !dbg !61
}

; Function Attrs: mustprogress nofree nosync nounwind readnone speculatable willreturn
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind uwtable willreturn writeonly
define internal fastcc void @Hacl_Impl_SHA2_512_init(i64* noundef writeonly %0) unnamed_addr #0 !dbg !62 {
  call void @llvm.dbg.value(metadata i64* %0, metadata !64, metadata !DIExpression()), !dbg !105
  %2 = getelementptr inbounds i64, i64* %0, i32 168, !dbg !106
  call void @llvm.dbg.value(metadata i64* %2, metadata !65, metadata !DIExpression()), !dbg !105
  call void @llvm.dbg.value(metadata i64* %0, metadata !66, metadata !DIExpression()), !dbg !105
  %3 = getelementptr inbounds i64, i64* %0, i32 160, !dbg !107
  call void @llvm.dbg.value(metadata i64* %3, metadata !67, metadata !DIExpression()), !dbg !105
  call void @llvm.dbg.value(metadata i64* %0, metadata !68, metadata !DIExpression()), !dbg !105
  %4 = getelementptr inbounds i64, i64* %0, i32 16, !dbg !108
  call void @llvm.dbg.value(metadata i64* %4, metadata !69, metadata !DIExpression()), !dbg !105
  %5 = getelementptr inbounds i64, i64* %0, i32 32, !dbg !109
  call void @llvm.dbg.value(metadata i64* %5, metadata !70, metadata !DIExpression()), !dbg !105
  %6 = getelementptr inbounds i64, i64* %0, i32 48, !dbg !110
  call void @llvm.dbg.value(metadata i64* %6, metadata !71, metadata !DIExpression()), !dbg !105
  %7 = getelementptr inbounds i64, i64* %0, i32 64, !dbg !111
  call void @llvm.dbg.value(metadata i64* %7, metadata !72, metadata !DIExpression()), !dbg !105
  call void @llvm.dbg.value(metadata i64* %0, metadata !73, metadata !DIExpression()), !dbg !105
  %8 = getelementptr inbounds i64, i64* %0, i32 8, !dbg !112
  call void @llvm.dbg.value(metadata i64* %8, metadata !74, metadata !DIExpression()), !dbg !105
  call void @llvm.dbg.value(metadata i64* %0, metadata !75, metadata !DIExpression()), !dbg !105
  %9 = getelementptr inbounds i64, i64* %0, i32 4, !dbg !113
  call void @llvm.dbg.value(metadata i64* %9, metadata !76, metadata !DIExpression()), !dbg !105
  store i64 4794697086780616226, i64* %0, align 4, !dbg !114, !tbaa !115
  %10 = getelementptr inbounds i64, i64* %0, i32 1, !dbg !119
  store i64 8158064640168781261, i64* %10, align 4, !dbg !120, !tbaa !115
  %11 = getelementptr inbounds i64, i64* %0, i32 2, !dbg !121
  store i64 -5349999486874862801, i64* %11, align 4, !dbg !122, !tbaa !115
  %12 = getelementptr inbounds i64, i64* %0, i32 3, !dbg !123
  store i64 -1606136188198331460, i64* %12, align 4, !dbg !124, !tbaa !115
  store i64 4131703408338449720, i64* %9, align 4, !dbg !125, !tbaa !115
  %13 = getelementptr inbounds i64, i64* %0, i32 5, !dbg !126
  store i64 6480981068601479193, i64* %13, align 4, !dbg !127, !tbaa !115
  %14 = getelementptr inbounds i64, i64* %0, i32 6, !dbg !128
  store i64 -7908458776815382629, i64* %14, align 4, !dbg !129, !tbaa !115
  %15 = getelementptr inbounds i64, i64* %0, i32 7, !dbg !130
  store i64 -6116909921290321640, i64* %15, align 4, !dbg !131, !tbaa !115
  call void @llvm.dbg.value(metadata i64* %8, metadata !77, metadata !DIExpression()), !dbg !105
  %16 = getelementptr inbounds i64, i64* %0, i32 12, !dbg !132
  call void @llvm.dbg.value(metadata i64* %16, metadata !78, metadata !DIExpression()), !dbg !105
  store i64 -2880145864133508542, i64* %8, align 4, !dbg !133, !tbaa !115
  %17 = getelementptr inbounds i64, i64* %0, i32 9, !dbg !134
  store i64 1334009975649890238, i64* %17, align 4, !dbg !135, !tbaa !115
  %18 = getelementptr inbounds i64, i64* %0, i32 10, !dbg !136
  store i64 2608012711638119052, i64* %18, align 4, !dbg !137, !tbaa !115
  %19 = getelementptr inbounds i64, i64* %0, i32 11, !dbg !138
  store i64 6128411473006802146, i64* %19, align 4, !dbg !139, !tbaa !115
  store i64 8268148722764581231, i64* %16, align 4, !dbg !140, !tbaa !115
  %20 = getelementptr inbounds i64, i64* %0, i32 13, !dbg !141
  store i64 -9160688886553864527, i64* %20, align 4, !dbg !142, !tbaa !115
  %21 = getelementptr inbounds i64, i64* %0, i32 14, !dbg !143
  store i64 -7215885187991268811, i64* %21, align 4, !dbg !144, !tbaa !115
  %22 = getelementptr inbounds i64, i64* %0, i32 15, !dbg !145
  store i64 -4495734319001033068, i64* %22, align 4, !dbg !146, !tbaa !115
  call void @llvm.dbg.value(metadata i64* %4, metadata !79, metadata !DIExpression()), !dbg !105
  %23 = getelementptr inbounds i64, i64* %0, i32 24, !dbg !147
  call void @llvm.dbg.value(metadata i64* %23, metadata !80, metadata !DIExpression()), !dbg !105
  call void @llvm.dbg.value(metadata i64* %4, metadata !81, metadata !DIExpression()), !dbg !105
  %24 = getelementptr inbounds i64, i64* %0, i32 20, !dbg !148
  call void @llvm.dbg.value(metadata i64* %24, metadata !82, metadata !DIExpression()), !dbg !105
  store i64 -1973867731355612462, i64* %4, align 4, !dbg !149, !tbaa !115
  %25 = getelementptr inbounds i64, i64* %0, i32 17, !dbg !150
  store i64 -1171420211273849373, i64* %25, align 4, !dbg !151, !tbaa !115
  %26 = getelementptr inbounds i64, i64* %0, i32 18, !dbg !152
  store i64 1135362057144423861, i64* %26, align 4, !dbg !153, !tbaa !115
  %27 = getelementptr inbounds i64, i64* %0, i32 19, !dbg !154
  store i64 2597628984639134821, i64* %27, align 4, !dbg !155, !tbaa !115
  store i64 3308224258029322869, i64* %24, align 4, !dbg !156, !tbaa !115
  %28 = getelementptr inbounds i64, i64* %0, i32 21, !dbg !157
  store i64 5365058923640841347, i64* %28, align 4, !dbg !158, !tbaa !115
  %29 = getelementptr inbounds i64, i64* %0, i32 22, !dbg !159
  store i64 6679025012923562964, i64* %29, align 4, !dbg !160, !tbaa !115
  %30 = getelementptr inbounds i64, i64* %0, i32 23, !dbg !161
  store i64 8573033837759648693, i64* %30, align 4, !dbg !162, !tbaa !115
  call void @llvm.dbg.value(metadata i64* %23, metadata !83, metadata !DIExpression()), !dbg !105
  %31 = getelementptr inbounds i64, i64* %0, i32 28, !dbg !163
  call void @llvm.dbg.value(metadata i64* %31, metadata !84, metadata !DIExpression()), !dbg !105
  store i64 -7476448914759557205, i64* %23, align 4, !dbg !164, !tbaa !115
  %32 = getelementptr inbounds i64, i64* %0, i32 25, !dbg !165
  store i64 -6327057829258317296, i64* %32, align 4, !dbg !166, !tbaa !115
  %33 = getelementptr inbounds i64, i64* %0, i32 26, !dbg !167
  store i64 -5763719355590565569, i64* %33, align 4, !dbg !168, !tbaa !115
  %34 = getelementptr inbounds i64, i64* %0, i32 27, !dbg !169
  store i64 -4658551843659510044, i64* %34, align 4, !dbg !170, !tbaa !115
  store i64 -4116276920077217854, i64* %31, align 4, !dbg !171, !tbaa !115
  %35 = getelementptr inbounds i64, i64* %0, i32 29, !dbg !172
  store i64 -3051310485924567259, i64* %35, align 4, !dbg !173, !tbaa !115
  %36 = getelementptr inbounds i64, i64* %0, i32 30, !dbg !174
  store i64 489312712824947311, i64* %36, align 4, !dbg !175, !tbaa !115
  %37 = getelementptr inbounds i64, i64* %0, i32 31, !dbg !176
  store i64 1452737877330783856, i64* %37, align 4, !dbg !177, !tbaa !115
  call void @llvm.dbg.value(metadata i64* %5, metadata !85, metadata !DIExpression()), !dbg !105
  %38 = getelementptr inbounds i64, i64* %0, i32 40, !dbg !178
  call void @llvm.dbg.value(metadata i64* %38, metadata !86, metadata !DIExpression()), !dbg !105
  call void @llvm.dbg.value(metadata i64* %5, metadata !87, metadata !DIExpression()), !dbg !105
  %39 = getelementptr inbounds i64, i64* %0, i32 36, !dbg !179
  call void @llvm.dbg.value(metadata i64* %39, metadata !88, metadata !DIExpression()), !dbg !105
  store i64 2861767655752347644, i64* %5, align 4, !dbg !180, !tbaa !115
  %40 = getelementptr inbounds i64, i64* %0, i32 33, !dbg !181
  store i64 3322285676063803686, i64* %40, align 4, !dbg !182, !tbaa !115
  %41 = getelementptr inbounds i64, i64* %0, i32 34, !dbg !183
  store i64 5560940570517711597, i64* %41, align 4, !dbg !184, !tbaa !115
  %42 = getelementptr inbounds i64, i64* %0, i32 35, !dbg !185
  store i64 5996557281743188959, i64* %42, align 4, !dbg !186, !tbaa !115
  store i64 7280758554555802590, i64* %39, align 4, !dbg !187, !tbaa !115
  %43 = getelementptr inbounds i64, i64* %0, i32 37, !dbg !188
  store i64 8532644243296465576, i64* %43, align 4, !dbg !189, !tbaa !115
  %44 = getelementptr inbounds i64, i64* %0, i32 38, !dbg !190
  store i64 -9096487096722542874, i64* %44, align 4, !dbg !191, !tbaa !115
  %45 = getelementptr inbounds i64, i64* %0, i32 39, !dbg !192
  store i64 -7894198246740708037, i64* %45, align 4, !dbg !193, !tbaa !115
  call void @llvm.dbg.value(metadata i64* %38, metadata !89, metadata !DIExpression()), !dbg !105
  %46 = getelementptr inbounds i64, i64* %0, i32 44, !dbg !194
  call void @llvm.dbg.value(metadata i64* %46, metadata !90, metadata !DIExpression()), !dbg !105
  store i64 -6719396339535248540, i64* %38, align 4, !dbg !195, !tbaa !115
  %47 = getelementptr inbounds i64, i64* %0, i32 41, !dbg !196
  store i64 -6333637450476146687, i64* %47, align 4, !dbg !197, !tbaa !115
  %48 = getelementptr inbounds i64, i64* %0, i32 42, !dbg !198
  store i64 -4446306890439682159, i64* %48, align 4, !dbg !199, !tbaa !115
  %49 = getelementptr inbounds i64, i64* %0, i32 43, !dbg !200
  store i64 -4076793802049405392, i64* %49, align 4, !dbg !201, !tbaa !115
  store i64 -3345356375505022440, i64* %46, align 4, !dbg !202, !tbaa !115
  %50 = getelementptr inbounds i64, i64* %0, i32 45, !dbg !203
  store i64 -2983346525034927856, i64* %50, align 4, !dbg !204, !tbaa !115
  %51 = getelementptr inbounds i64, i64* %0, i32 46, !dbg !205
  store i64 -860691631967231958, i64* %51, align 4, !dbg !206, !tbaa !115
  %52 = getelementptr inbounds i64, i64* %0, i32 47, !dbg !207
  store i64 1182934255886127544, i64* %52, align 4, !dbg !208, !tbaa !115
  call void @llvm.dbg.value(metadata i64* %6, metadata !91, metadata !DIExpression()), !dbg !105
  %53 = getelementptr inbounds i64, i64* %0, i32 56, !dbg !209
  call void @llvm.dbg.value(metadata i64* %53, metadata !92, metadata !DIExpression()), !dbg !105
  call void @llvm.dbg.value(metadata i64* %6, metadata !93, metadata !DIExpression()), !dbg !105
  %54 = getelementptr inbounds i64, i64* %0, i32 52, !dbg !210
  call void @llvm.dbg.value(metadata i64* %54, metadata !94, metadata !DIExpression()), !dbg !105
  store i64 1847814050463011016, i64* %6, align 4, !dbg !211, !tbaa !115
  %55 = getelementptr inbounds i64, i64* %0, i32 49, !dbg !212
  store i64 2177327727835720531, i64* %55, align 4, !dbg !213, !tbaa !115
  %56 = getelementptr inbounds i64, i64* %0, i32 50, !dbg !214
  store i64 2830643537854262169, i64* %56, align 4, !dbg !215, !tbaa !115
  %57 = getelementptr inbounds i64, i64* %0, i32 51, !dbg !216
  store i64 3796741975233480872, i64* %57, align 4, !dbg !217, !tbaa !115
  store i64 4115178125766777443, i64* %54, align 4, !dbg !218, !tbaa !115
  %58 = getelementptr inbounds i64, i64* %0, i32 53, !dbg !219
  store i64 5681478168544905931, i64* %58, align 4, !dbg !220, !tbaa !115
  %59 = getelementptr inbounds i64, i64* %0, i32 54, !dbg !221
  store i64 6601373596472566643, i64* %59, align 4, !dbg !222, !tbaa !115
  %60 = getelementptr inbounds i64, i64* %0, i32 55, !dbg !223
  store i64 7507060721942968483, i64* %60, align 4, !dbg !224, !tbaa !115
  call void @llvm.dbg.value(metadata i64* %53, metadata !95, metadata !DIExpression()), !dbg !105
  %61 = getelementptr inbounds i64, i64* %0, i32 60, !dbg !225
  call void @llvm.dbg.value(metadata i64* %61, metadata !96, metadata !DIExpression()), !dbg !105
  store i64 8399075790359081724, i64* %53, align 4, !dbg !226, !tbaa !115
  %62 = getelementptr inbounds i64, i64* %0, i32 57, !dbg !227
  store i64 8693463985226723168, i64* %62, align 4, !dbg !228, !tbaa !115
  %63 = getelementptr inbounds i64, i64* %0, i32 58, !dbg !229
  store i64 -8878714635349349518, i64* %63, align 4, !dbg !230, !tbaa !115
  %64 = getelementptr inbounds i64, i64* %0, i32 59, !dbg !231
  store i64 -8302665154208450068, i64* %64, align 4, !dbg !232, !tbaa !115
  store i64 -8016688836872298968, i64* %61, align 4, !dbg !233, !tbaa !115
  %65 = getelementptr inbounds i64, i64* %0, i32 61, !dbg !234
  store i64 -6606660893046293015, i64* %65, align 4, !dbg !235, !tbaa !115
  %66 = getelementptr inbounds i64, i64* %0, i32 62, !dbg !236
  store i64 -4685533653050689259, i64* %66, align 4, !dbg !237, !tbaa !115
  %67 = getelementptr inbounds i64, i64* %0, i32 63, !dbg !238
  store i64 -4147400797238176981, i64* %67, align 4, !dbg !239, !tbaa !115
  call void @llvm.dbg.value(metadata i64* %7, metadata !97, metadata !DIExpression()), !dbg !105
  %68 = getelementptr inbounds i64, i64* %0, i32 72, !dbg !240
  call void @llvm.dbg.value(metadata i64* %68, metadata !98, metadata !DIExpression()), !dbg !105
  call void @llvm.dbg.value(metadata i64* %7, metadata !99, metadata !DIExpression()), !dbg !105
  %69 = getelementptr inbounds i64, i64* %0, i32 68, !dbg !241
  call void @llvm.dbg.value(metadata i64* %69, metadata !100, metadata !DIExpression()), !dbg !105
  store i64 -3880063495543823972, i64* %7, align 4, !dbg !242, !tbaa !115
  %70 = getelementptr inbounds i64, i64* %0, i32 65, !dbg !243
  store i64 -3348786107499101689, i64* %70, align 4, !dbg !244, !tbaa !115
  %71 = getelementptr inbounds i64, i64* %0, i32 66, !dbg !245
  store i64 -1523767162380948706, i64* %71, align 4, !dbg !246, !tbaa !115
  %72 = getelementptr inbounds i64, i64* %0, i32 67, !dbg !247
  store i64 -757361751448694408, i64* %72, align 4, !dbg !248, !tbaa !115
  store i64 500013540394364858, i64* %69, align 4, !dbg !249, !tbaa !115
  %73 = getelementptr inbounds i64, i64* %0, i32 69, !dbg !250
  store i64 748580250866718886, i64* %73, align 4, !dbg !251, !tbaa !115
  %74 = getelementptr inbounds i64, i64* %0, i32 70, !dbg !252
  store i64 1242879168328830382, i64* %74, align 4, !dbg !253, !tbaa !115
  %75 = getelementptr inbounds i64, i64* %0, i32 71, !dbg !254
  store i64 1977374033974150939, i64* %75, align 4, !dbg !255, !tbaa !115
  call void @llvm.dbg.value(metadata i64* %68, metadata !101, metadata !DIExpression()), !dbg !105
  %76 = getelementptr inbounds i64, i64* %0, i32 76, !dbg !256
  call void @llvm.dbg.value(metadata i64* %76, metadata !102, metadata !DIExpression()), !dbg !105
  store i64 2944078676154940804, i64* %68, align 4, !dbg !257, !tbaa !115
  %77 = getelementptr inbounds i64, i64* %0, i32 73, !dbg !258
  store i64 3659926193048069267, i64* %77, align 4, !dbg !259, !tbaa !115
  %78 = getelementptr inbounds i64, i64* %0, i32 74, !dbg !260
  store i64 4368137639120453308, i64* %78, align 4, !dbg !261, !tbaa !115
  %79 = getelementptr inbounds i64, i64* %0, i32 75, !dbg !262
  store i64 4836135668995329356, i64* %79, align 4, !dbg !263, !tbaa !115
  store i64 5532061633213252278, i64* %76, align 4, !dbg !264, !tbaa !115
  %80 = getelementptr inbounds i64, i64* %0, i32 77, !dbg !265
  store i64 6448918945643986474, i64* %80, align 4, !dbg !266, !tbaa !115
  %81 = getelementptr inbounds i64, i64* %0, i32 78, !dbg !267
  store i64 6902733635092675308, i64* %81, align 4, !dbg !268, !tbaa !115
  %82 = getelementptr inbounds i64, i64* %0, i32 79, !dbg !269
  store i64 7801388544844847127, i64* %82, align 4, !dbg !270, !tbaa !115
  call void @llvm.dbg.value(metadata i64* %3, metadata !103, metadata !DIExpression()), !dbg !105
  %83 = getelementptr inbounds i64, i64* %0, i32 164, !dbg !271
  call void @llvm.dbg.value(metadata i64* %83, metadata !104, metadata !DIExpression()), !dbg !105
  store i64 7640891576956012808, i64* %3, align 4, !dbg !272, !tbaa !115
  %84 = getelementptr inbounds i64, i64* %0, i32 161, !dbg !273
  store i64 -4942790177534073029, i64* %84, align 4, !dbg !274, !tbaa !115
  %85 = getelementptr inbounds i64, i64* %0, i32 162, !dbg !275
  store i64 4354685564936845355, i64* %85, align 4, !dbg !276, !tbaa !115
  %86 = getelementptr inbounds i64, i64* %0, i32 163, !dbg !277
  store i64 -6534734903238641935, i64* %86, align 4, !dbg !278, !tbaa !115
  store i64 5840696475078001361, i64* %83, align 4, !dbg !279, !tbaa !115
  %87 = getelementptr inbounds i64, i64* %0, i32 165, !dbg !280
  store i64 -7276294671716946913, i64* %87, align 4, !dbg !281, !tbaa !115
  %88 = getelementptr inbounds i64, i64* %0, i32 166, !dbg !282
  store i64 2270897969802886507, i64* %88, align 4, !dbg !283, !tbaa !115
  %89 = getelementptr inbounds i64, i64* %0, i32 167, !dbg !284
  store i64 6620516959819538809, i64* %89, align 4, !dbg !285, !tbaa !115
  store i64 0, i64* %2, align 4, !dbg !286, !tbaa !115
  ret void, !dbg !287
}

; Function Attrs: nofree noinline nosync nounwind uwtable
define dso_local void @Hacl_SHA2_512_update(i64* nocapture noundef %0, i8* nocapture noundef readonly %1) local_unnamed_addr #2 !dbg !288 {
  call void @llvm.dbg.value(metadata i64* %0, metadata !293, metadata !DIExpression()), !dbg !295
  call void @llvm.dbg.value(metadata i8* %1, metadata !294, metadata !DIExpression()), !dbg !295
  call fastcc void @Hacl_Impl_SHA2_512_update(i64* noundef %0, i8* noundef %1), !dbg !296
  ret void, !dbg !297
}

; Function Attrs: nofree noinline nosync nounwind uwtable
define internal fastcc void @Hacl_Impl_SHA2_512_update(i64* nocapture noundef %0, i8* nocapture noundef readonly %1) unnamed_addr #2 !dbg !298 {
  %3 = alloca [16 x i64], align 8
  %4 = bitcast [16 x i64]* %3 to i8*
  %5 = alloca [8 x i64], align 8
  call void @llvm.dbg.value(metadata i64* %0, metadata !300, metadata !DIExpression()), !dbg !357
  call void @llvm.dbg.value(metadata i8* %1, metadata !301, metadata !DIExpression()), !dbg !357
  %6 = bitcast [16 x i64]* %3 to i8*, !dbg !358
  call void @llvm.lifetime.start.p0i8(i64 128, i8* nonnull %6) #12, !dbg !358
  call void @llvm.dbg.declare(metadata [16 x i64]* %3, metadata !302, metadata !DIExpression()), !dbg !359
  call void @llvm.dbg.value(metadata i32 0, metadata !306, metadata !DIExpression()), !dbg !360
  call void @llvm.memset.p0i8.i32(i8* noundef nonnull align 8 dereferenceable(128) %4, i8 0, i32 128, i1 false), !dbg !361, !tbaa !115
  call void @llvm.dbg.value(metadata i32 undef, metadata !306, metadata !DIExpression()), !dbg !360
  call void @llvm.dbg.value(metadata i32 undef, metadata !306, metadata !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value)), !dbg !360
  %7 = getelementptr inbounds [16 x i64], [16 x i64]* %3, i32 0, i32 0, !dbg !363
  call fastcc void @Hacl_Hash_Lib_LoadStore_uint64s_from_be_bytes(i64* noundef nonnull %7, i8* noundef %1), !dbg !364
  call void @llvm.dbg.value(metadata i64* %10, metadata !308, metadata !DIExpression()), !dbg !357
  %8 = getelementptr inbounds i64, i64* %0, i32 80, !dbg !365
  %9 = bitcast i64* %8 to i8*, !dbg !357
  call void @llvm.dbg.value(metadata i64* %8, metadata !309, metadata !DIExpression()), !dbg !357
  call void @llvm.dbg.value(metadata i64* %0, metadata !310, metadata !DIExpression()), !dbg !357
  call void @llvm.dbg.value(metadata i64* %103, metadata !311, metadata !DIExpression()), !dbg !357
  call void @llvm.dbg.value(metadata i32 0, metadata !312, metadata !DIExpression()), !dbg !366
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* noundef nonnull align 4 dereferenceable(128) %9, i8* noundef nonnull align 8 dereferenceable(128) %4, i32 128, i1 false), !dbg !367, !tbaa !115
  call void @llvm.dbg.value(metadata i32 undef, metadata !312, metadata !DIExpression()), !dbg !366
  call void @llvm.dbg.value(metadata i32 undef, metadata !314, metadata !DIExpression()), !dbg !368
  call void @llvm.dbg.value(metadata i32 undef, metadata !312, metadata !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value)), !dbg !366
  %10 = getelementptr inbounds i64, i64* %0, i32 160, !dbg !369
  br label %30, !dbg !370

11:                                               ; preds = %30
  %12 = bitcast [8 x i64]* %5 to i8*, !dbg !371
  call void @llvm.lifetime.start.p0i8(i64 64, i8* nonnull %12) #12, !dbg !371
  call void @llvm.dbg.declare(metadata [8 x i64]* %5, metadata !325, metadata !DIExpression()), !dbg !372
  %13 = getelementptr inbounds [8 x i64], [8 x i64]* %5, i32 0, i32 0, !dbg !373
  %14 = bitcast i64* %10 to i8*, !dbg !373
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* noundef nonnull align 8 dereferenceable(64) %12, i8* noundef nonnull align 4 dereferenceable(64) %14, i32 64, i1 false), !dbg !373
  call void @llvm.dbg.value(metadata i32 0, metadata !329, metadata !DIExpression()), !dbg !374
  %15 = getelementptr inbounds [8 x i64], [8 x i64]* %5, i32 0, i32 1
  %16 = getelementptr inbounds [8 x i64], [8 x i64]* %5, i32 0, i32 2
  %17 = getelementptr inbounds [8 x i64], [8 x i64]* %5, i32 0, i32 3
  %18 = getelementptr inbounds [8 x i64], [8 x i64]* %5, i32 0, i32 4
  %19 = getelementptr inbounds [8 x i64], [8 x i64]* %5, i32 0, i32 5
  %20 = getelementptr inbounds [8 x i64], [8 x i64]* %5, i32 0, i32 6
  %21 = getelementptr inbounds [8 x i64], [8 x i64]* %5, i32 0, i32 7
  %22 = load i64, i64* %13, align 8, !tbaa !115
  %23 = load i64, i64* %15, align 8, !tbaa !115
  %24 = load i64, i64* %16, align 8, !tbaa !115
  %25 = load i64, i64* %17, align 8, !tbaa !115
  %26 = load i64, i64* %18, align 8, !tbaa !115
  %27 = load i64, i64* %19, align 8, !tbaa !115
  %28 = load i64, i64* %20, align 8, !tbaa !115
  %29 = load i64, i64* %21, align 8, !tbaa !115
  call void @llvm.dbg.value(metadata i32 0, metadata !329, metadata !DIExpression()), !dbg !374
  br label %61, !dbg !375

30:                                               ; preds = %2, %30
  %31 = phi i32 [ %58, %30 ], [ 16, %2 ]
  call void @llvm.dbg.value(metadata i32 %31, metadata !317, metadata !DIExpression()), !dbg !376
  %32 = add nsw i32 %31, -16, !dbg !377
  %33 = getelementptr inbounds i64, i64* %8, i32 %32, !dbg !378
  %34 = load i64, i64* %33, align 4, !dbg !378, !tbaa !115
  call void @llvm.dbg.value(metadata i64 %34, metadata !319, metadata !DIExpression()), !dbg !379
  %35 = add nsw i32 %31, -15, !dbg !380
  %36 = getelementptr inbounds i64, i64* %8, i32 %35, !dbg !381
  %37 = load i64, i64* %36, align 4, !dbg !381, !tbaa !115
  call void @llvm.dbg.value(metadata i64 %37, metadata !322, metadata !DIExpression()), !dbg !379
  %38 = add nsw i32 %31, -7, !dbg !382
  %39 = getelementptr inbounds i64, i64* %8, i32 %38, !dbg !383
  %40 = load i64, i64* %39, align 4, !dbg !383, !tbaa !115
  call void @llvm.dbg.value(metadata i64 %40, metadata !323, metadata !DIExpression()), !dbg !379
  %41 = add nsw i32 %31, -2, !dbg !384
  %42 = getelementptr inbounds i64, i64* %8, i32 %41, !dbg !385
  %43 = load i64, i64* %42, align 4, !dbg !385, !tbaa !115
  call void @llvm.dbg.value(metadata i64 %43, metadata !324, metadata !DIExpression()), !dbg !379
  %44 = call i64 @llvm.fshl.i64(i64 %43, i64 %43, i64 45), !dbg !386
  %45 = call i64 @llvm.fshl.i64(i64 %43, i64 %43, i64 3), !dbg !387
  %46 = lshr i64 %43, 6, !dbg !388
  %47 = xor i64 %45, %46, !dbg !389
  %48 = xor i64 %47, %44, !dbg !390
  %49 = call i64 @llvm.fshl.i64(i64 %37, i64 %37, i64 63), !dbg !391
  %50 = call i64 @llvm.fshl.i64(i64 %37, i64 %37, i64 56), !dbg !392
  %51 = lshr i64 %37, 7, !dbg !393
  %52 = xor i64 %50, %51, !dbg !394
  %53 = xor i64 %52, %49, !dbg !395
  %54 = add i64 %40, %34, !dbg !396
  %55 = add i64 %54, %53, !dbg !397
  %56 = add i64 %55, %48, !dbg !398
  %57 = getelementptr inbounds i64, i64* %8, i32 %31, !dbg !399
  store i64 %56, i64* %57, align 4, !dbg !400, !tbaa !115
  %58 = add nuw nsw i32 %31, 1, !dbg !401
  call void @llvm.dbg.value(metadata i32 %58, metadata !317, metadata !DIExpression()), !dbg !376
  %59 = icmp eq i32 %58, 80, !dbg !402
  br i1 %59, label %11, label %30, !dbg !370, !llvm.loop !403

60:                                               ; preds = %61
  store i64 %98, i64* %13, align 8, !dbg !407, !tbaa !115
  store i64 %63, i64* %15, align 8, !dbg !407, !tbaa !115
  store i64 %64, i64* %16, align 8, !dbg !407, !tbaa !115
  store i64 %65, i64* %17, align 8, !dbg !407, !tbaa !115
  store i64 %99, i64* %18, align 8, !dbg !407, !tbaa !115
  store i64 %67, i64* %19, align 8, !dbg !407, !tbaa !115
  store i64 %68, i64* %20, align 8, !dbg !407, !tbaa !115
  store i64 %69, i64* %21, align 8, !dbg !407, !tbaa !115
  call void @llvm.dbg.value(metadata i32 0, metadata !349, metadata !DIExpression()), !dbg !408
  br label %106, !dbg !409

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
  call void @llvm.dbg.value(metadata i32 %62, metadata !329, metadata !DIExpression()), !dbg !374
  call void @llvm.dbg.value(metadata i64 %63, metadata !331, metadata !DIExpression()), !dbg !407
  call void @llvm.dbg.value(metadata i64 %64, metadata !334, metadata !DIExpression()), !dbg !407
  call void @llvm.dbg.value(metadata i64 %65, metadata !335, metadata !DIExpression()), !dbg !407
  call void @llvm.dbg.value(metadata i64 %66, metadata !336, metadata !DIExpression()), !dbg !407
  call void @llvm.dbg.value(metadata i64 %67, metadata !337, metadata !DIExpression()), !dbg !407
  call void @llvm.dbg.value(metadata i64 %68, metadata !338, metadata !DIExpression()), !dbg !407
  call void @llvm.dbg.value(metadata i64 %69, metadata !339, metadata !DIExpression()), !dbg !407
  call void @llvm.dbg.value(metadata i64 %70, metadata !340, metadata !DIExpression()), !dbg !407
  %71 = getelementptr inbounds i64, i64* %0, i32 %62, !dbg !410
  %72 = load i64, i64* %71, align 4, !dbg !410, !tbaa !115
  call void @llvm.dbg.value(metadata i64 %72, metadata !341, metadata !DIExpression()), !dbg !407
  %73 = getelementptr inbounds i64, i64* %8, i32 %62, !dbg !411
  %74 = load i64, i64* %73, align 4, !dbg !411, !tbaa !115
  call void @llvm.dbg.value(metadata i64 %74, metadata !342, metadata !DIExpression()), !dbg !407
  %75 = call i64 @llvm.fshl.i64(i64 %67, i64 %67, i64 50), !dbg !412
  %76 = call i64 @llvm.fshl.i64(i64 %67, i64 %67, i64 46), !dbg !413
  %77 = call i64 @llvm.fshl.i64(i64 %67, i64 %67, i64 23), !dbg !414
  %78 = xor i64 %76, %77, !dbg !415
  %79 = xor i64 %78, %75, !dbg !416
  %80 = and i64 %68, %67, !dbg !417
  %81 = xor i64 %67, -1, !dbg !418
  %82 = and i64 %69, %81, !dbg !419
  %83 = add i64 %79, %80, !dbg !420
  %84 = add i64 %83, %70, !dbg !421
  %85 = add i64 %84, %82, !dbg !422
  %86 = add i64 %85, %72, !dbg !423
  %87 = add i64 %86, %74, !dbg !424
  call void @llvm.dbg.value(metadata i64 %87, metadata !343, metadata !DIExpression()), !dbg !407
  %88 = call i64 @llvm.fshl.i64(i64 %63, i64 %63, i64 36), !dbg !425
  %89 = call i64 @llvm.fshl.i64(i64 %63, i64 %63, i64 30), !dbg !426
  %90 = call i64 @llvm.fshl.i64(i64 %63, i64 %63, i64 25), !dbg !427
  %91 = xor i64 %89, %90, !dbg !428
  %92 = xor i64 %91, %88, !dbg !429
  %93 = and i64 %64, %63, !dbg !430
  %94 = xor i64 %64, %63, !dbg !431
  %95 = and i64 %94, %65, !dbg !431
  %96 = xor i64 %95, %93, !dbg !432
  %97 = add i64 %96, %92, !dbg !433
  call void @llvm.dbg.value(metadata i64 %97, metadata !344, metadata !DIExpression()), !dbg !407
  %98 = add i64 %97, %87, !dbg !434
  call void @llvm.dbg.value(metadata i64 %98, metadata !345, metadata !DIExpression()), !dbg !407
  %99 = add i64 %87, %66, !dbg !435
  call void @llvm.dbg.value(metadata i64 %99, metadata !346, metadata !DIExpression()), !dbg !407
  call void @llvm.dbg.value(metadata i64* %13, metadata !347, metadata !DIExpression()), !dbg !407
  call void @llvm.dbg.value(metadata i64* %18, metadata !348, metadata !DIExpression()), !dbg !407
  %100 = add nuw nsw i32 %62, 1, !dbg !436
  call void @llvm.dbg.value(metadata i32 %100, metadata !329, metadata !DIExpression()), !dbg !374
  %101 = icmp eq i32 %100, 80, !dbg !437
  br i1 %101, label %60, label %61, !dbg !375, !llvm.loop !438

102:                                              ; preds = %106
  %103 = getelementptr inbounds i64, i64* %0, i32 168, !dbg !440
  %104 = load i64, i64* %103, align 4, !dbg !441, !tbaa !115
  call void @llvm.dbg.value(metadata i64 %104, metadata !355, metadata !DIExpression()), !dbg !357
  call void @llvm.dbg.value(metadata i64 1, metadata !356, metadata !DIExpression()), !dbg !357
  %105 = add i64 %104, 1, !dbg !442
  store i64 %105, i64* %103, align 4, !dbg !443, !tbaa !115
  call void @llvm.lifetime.end.p0i8(i64 64, i8* nonnull %12) #12, !dbg !444
  call void @llvm.lifetime.end.p0i8(i64 128, i8* nonnull %6) #12, !dbg !444
  ret void, !dbg !444

106:                                              ; preds = %60, %106
  %107 = phi i32 [ 0, %60 ], [ %113, %106 ]
  call void @llvm.dbg.value(metadata i32 %107, metadata !349, metadata !DIExpression()), !dbg !408
  %108 = getelementptr inbounds i64, i64* %10, i32 %107, !dbg !445
  %109 = load i64, i64* %108, align 4, !dbg !445, !tbaa !115
  call void @llvm.dbg.value(metadata i64 %109, metadata !351, metadata !DIExpression()), !dbg !446
  %110 = getelementptr inbounds [8 x i64], [8 x i64]* %5, i32 0, i32 %107, !dbg !447
  %111 = load i64, i64* %110, align 8, !dbg !447, !tbaa !115
  call void @llvm.dbg.value(metadata i64 %111, metadata !354, metadata !DIExpression()), !dbg !446
  %112 = add i64 %111, %109, !dbg !448
  store i64 %112, i64* %108, align 4, !dbg !449, !tbaa !115
  %113 = add nuw nsw i32 %107, 1, !dbg !450
  call void @llvm.dbg.value(metadata i32 %113, metadata !349, metadata !DIExpression()), !dbg !408
  %114 = icmp eq i32 %113, 8, !dbg !451
  br i1 %114, label %102, label %106, !dbg !409, !llvm.loop !452
}

; Function Attrs: nofree noinline nosync nounwind uwtable
define dso_local void @Hacl_SHA2_512_update_multi(i64* nocapture noundef %0, i8* nocapture noundef readonly %1, i32 noundef %2) local_unnamed_addr #2 !dbg !454 {
  call void @llvm.dbg.value(metadata i64* %0, metadata !458, metadata !DIExpression()), !dbg !461
  call void @llvm.dbg.value(metadata i8* %1, metadata !459, metadata !DIExpression()), !dbg !461
  call void @llvm.dbg.value(metadata i32 %2, metadata !460, metadata !DIExpression()), !dbg !461
  call fastcc void @Hacl_Impl_SHA2_512_update_multi(i64* noundef %0, i8* noundef %1, i32 noundef %2), !dbg !462
  ret void, !dbg !463
}

; Function Attrs: nofree noinline nosync nounwind uwtable
define internal fastcc void @Hacl_Impl_SHA2_512_update_multi(i64* nocapture noundef %0, i8* nocapture noundef readonly %1, i32 noundef %2) unnamed_addr #2 !dbg !464 {
  call void @llvm.dbg.value(metadata i64* %0, metadata !466, metadata !DIExpression()), !dbg !474
  call void @llvm.dbg.value(metadata i8* %1, metadata !467, metadata !DIExpression()), !dbg !474
  call void @llvm.dbg.value(metadata i32 %2, metadata !468, metadata !DIExpression()), !dbg !474
  call void @llvm.dbg.value(metadata i32 0, metadata !469, metadata !DIExpression()), !dbg !475
  %4 = icmp eq i32 %2, 0, !dbg !476
  br i1 %4, label %5, label %6, !dbg !477

5:                                                ; preds = %6, %3
  ret void, !dbg !478

6:                                                ; preds = %3, %6
  %7 = phi i32 [ %10, %6 ], [ 0, %3 ]
  call void @llvm.dbg.value(metadata i32 %7, metadata !469, metadata !DIExpression()), !dbg !475
  %8 = shl i32 %7, 7, !dbg !479
  %9 = getelementptr inbounds i8, i8* %1, i32 %8, !dbg !480
  call void @llvm.dbg.value(metadata i8* %9, metadata !471, metadata !DIExpression()), !dbg !481
  call fastcc void @Hacl_Impl_SHA2_512_update(i64* noundef %0, i8* noundef %9), !dbg !482
  %10 = add nuw i32 %7, 1, !dbg !483
  call void @llvm.dbg.value(metadata i32 %10, metadata !469, metadata !DIExpression()), !dbg !475
  %11 = icmp eq i32 %10, %2, !dbg !476
  br i1 %11, label %5, label %6, !dbg !477, !llvm.loop !484
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @Hacl_SHA2_512_update_last(i64* nocapture noundef %0, i8* nocapture noundef readonly %1, i64 noundef %2) local_unnamed_addr #3 !dbg !486 {
  call void @llvm.dbg.value(metadata i64* %0, metadata !490, metadata !DIExpression()), !dbg !493
  call void @llvm.dbg.value(metadata i8* %1, metadata !491, metadata !DIExpression()), !dbg !493
  call void @llvm.dbg.value(metadata i64 %2, metadata !492, metadata !DIExpression()), !dbg !493
  call fastcc void @Hacl_Impl_SHA2_512_update_last(i64* noundef %0, i8* noundef %1, i64 noundef %2), !dbg !494
  ret void, !dbg !495
}

; Function Attrs: noinline nounwind uwtable
define internal fastcc void @Hacl_Impl_SHA2_512_update_last(i64* nocapture noundef %0, i8* nocapture noundef readonly %1, i64 noundef %2) unnamed_addr #3 !dbg !496 {
  %4 = alloca [256 x i8], align 1
  %5 = alloca %struct.FStar_UInt128_uint128, align 8
  %6 = alloca %struct.FStar_UInt128_uint128, align 8
  %7 = alloca %struct.FStar_UInt128_uint128, align 8
  %8 = alloca %struct.FStar_UInt128_uint128, align 8
  call void @llvm.dbg.value(metadata i64* %0, metadata !498, metadata !DIExpression()), !dbg !520
  call void @llvm.dbg.value(metadata i8* %1, metadata !499, metadata !DIExpression()), !dbg !520
  call void @llvm.dbg.value(metadata i64 %2, metadata !500, metadata !DIExpression()), !dbg !520
  %9 = getelementptr inbounds [256 x i8], [256 x i8]* %4, i32 0, i32 0, !dbg !521
  call void @llvm.lifetime.start.p0i8(i64 256, i8* nonnull %9) #12, !dbg !521
  call void @llvm.dbg.declare(metadata [256 x i8]* %4, metadata !501, metadata !DIExpression()), !dbg !522
  call void @llvm.memset.p0i8.i32(i8* noundef nonnull align 1 dereferenceable(256) %9, i8 0, i32 256, i1 false), !dbg !522
  %10 = icmp ult i64 %2, 112, !dbg !523
  %11 = select i1 %10, i32 1, i32 2
  call void @llvm.dbg.value(metadata i32 %11, metadata !505, metadata !DIExpression()), !dbg !520
  %12 = getelementptr inbounds [256 x i8], [256 x i8]* %4, i32 0, i32 128, !dbg !525
  %13 = select i1 %10, i8* %12, i8* %9, !dbg !525
  call void @llvm.dbg.value(metadata i8* %13, metadata !506, metadata !DIExpression()), !dbg !520
  %14 = trunc i64 %2 to i32, !dbg !526
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* nonnull align 1 %13, i8* align 1 %1, i32 %14, i1 false), !dbg !527
  %15 = getelementptr inbounds i64, i64* %0, i32 168, !dbg !528
  %16 = load i64, i64* %15, align 4, !dbg !528, !tbaa !115
  call void @llvm.dbg.value(metadata i64 %16, metadata !507, metadata !DIExpression()), !dbg !520
  %17 = getelementptr inbounds i8, i8* %13, i32 %14, !dbg !529
  call void @llvm.dbg.value(metadata i8* %17, metadata !508, metadata !DIExpression()), !dbg !520
  %18 = bitcast %struct.FStar_UInt128_uint128* %5 to i8*, !dbg !530
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %18) #12, !dbg !530
  call void @llvm.dbg.declare(metadata %struct.FStar_UInt128_uint128* %5, metadata !509, metadata !DIExpression()), !dbg !531
  call void @FStar_UInt128_mul_wide(%struct.FStar_UInt128_uint128* nonnull sret(%struct.FStar_UInt128_uint128) align 4 %7, i64 noundef %16, i64 noundef 128) #12, !dbg !532
  call void @FStar_UInt128_uint64_to_uint128(%struct.FStar_UInt128_uint128* nonnull sret(%struct.FStar_UInt128_uint128) align 4 %8, i64 noundef %2) #12, !dbg !533
  %19 = getelementptr inbounds %struct.FStar_UInt128_uint128, %struct.FStar_UInt128_uint128* %7, i32 0, i32 0, !dbg !534
  %20 = load i64, i64* %19, align 8, !dbg !534, !tbaa !535
  %21 = getelementptr inbounds %struct.FStar_UInt128_uint128, %struct.FStar_UInt128_uint128* %7, i32 0, i32 1, !dbg !534
  %22 = load i64, i64* %21, align 8, !dbg !534, !tbaa !537
  %23 = getelementptr inbounds %struct.FStar_UInt128_uint128, %struct.FStar_UInt128_uint128* %8, i32 0, i32 0, !dbg !534
  %24 = load i64, i64* %23, align 8, !dbg !534, !tbaa !535
  %25 = getelementptr inbounds %struct.FStar_UInt128_uint128, %struct.FStar_UInt128_uint128* %8, i32 0, i32 1, !dbg !534
  %26 = load i64, i64* %25, align 8, !dbg !534, !tbaa !537
  call void @FStar_UInt128_add(%struct.FStar_UInt128_uint128* nonnull sret(%struct.FStar_UInt128_uint128) align 4 %6, i64 %20, i64 %22, i64 %24, i64 %26) #12, !dbg !534
  %27 = getelementptr inbounds %struct.FStar_UInt128_uint128, %struct.FStar_UInt128_uint128* %6, i32 0, i32 0, !dbg !538
  %28 = load i64, i64* %27, align 8, !dbg !538, !tbaa !535
  %29 = getelementptr inbounds %struct.FStar_UInt128_uint128, %struct.FStar_UInt128_uint128* %6, i32 0, i32 1, !dbg !538
  %30 = load i64, i64* %29, align 8, !dbg !538, !tbaa !537
  call void @FStar_UInt128_shift_left(%struct.FStar_UInt128_uint128* nonnull sret(%struct.FStar_UInt128_uint128) align 4 %5, i64 %28, i64 %30, i32 noundef 3) #12, !dbg !538
  %31 = sub i32 111, %14, !dbg !539
  %32 = and i32 %31, 127, !dbg !540
  call void @llvm.dbg.value(metadata i32 %32, metadata !517, metadata !DIExpression()), !dbg !520
  call void @llvm.dbg.value(metadata i8* %17, metadata !518, metadata !DIExpression()), !dbg !520
  %33 = getelementptr inbounds i8, i8* %17, i32 1, !dbg !541
  %34 = getelementptr inbounds i8, i8* %33, i32 %32, !dbg !542
  call void @llvm.dbg.value(metadata i8* %34, metadata !519, metadata !DIExpression()), !dbg !520
  store i8 -128, i8* %17, align 1, !dbg !543, !tbaa !544
  %35 = getelementptr inbounds %struct.FStar_UInt128_uint128, %struct.FStar_UInt128_uint128* %5, i32 0, i32 0, !dbg !545
  %36 = load i64, i64* %35, align 8, !dbg !545, !tbaa !535
  %37 = getelementptr inbounds %struct.FStar_UInt128_uint128, %struct.FStar_UInt128_uint128* %5, i32 0, i32 1, !dbg !545
  %38 = load i64, i64* %37, align 8, !dbg !545, !tbaa !537
  call fastcc void @store128_be(i8* noundef nonnull %34, i64 %36, i64 %38), !dbg !545
  call fastcc void @Hacl_Impl_SHA2_512_update_multi(i64* noundef %0, i8* noundef nonnull %13, i32 noundef %11), !dbg !546
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %18) #12, !dbg !547
  call void @llvm.lifetime.end.p0i8(i64 256, i8* nonnull %9) #12, !dbg !547
  ret void, !dbg !547
}

; Function Attrs: nofree noinline nosync nounwind uwtable
define dso_local void @Hacl_SHA2_512_finish(i64* nocapture noundef readonly %0, i8* nocapture noundef writeonly %1) local_unnamed_addr #2 !dbg !548 {
  call void @llvm.dbg.value(metadata i64* %0, metadata !550, metadata !DIExpression()), !dbg !552
  call void @llvm.dbg.value(metadata i8* %1, metadata !551, metadata !DIExpression()), !dbg !552
  call fastcc void @Hacl_Impl_SHA2_512_finish(i64* noundef %0, i8* noundef %1), !dbg !553
  ret void, !dbg !554
}

; Function Attrs: nofree noinline nosync nounwind uwtable
define internal fastcc void @Hacl_Impl_SHA2_512_finish(i64* nocapture noundef readonly %0, i8* nocapture noundef writeonly %1) unnamed_addr #2 !dbg !555 {
  call void @llvm.dbg.value(metadata i64* %0, metadata !557, metadata !DIExpression()), !dbg !560
  call void @llvm.dbg.value(metadata i8* %1, metadata !558, metadata !DIExpression()), !dbg !560
  %3 = getelementptr inbounds i64, i64* %0, i32 160, !dbg !561
  call void @llvm.dbg.value(metadata i64* %3, metadata !559, metadata !DIExpression()), !dbg !560
  call fastcc void @Hacl_Hash_Lib_LoadStore_uint64s_to_be_bytes(i8* noundef %1, i64* noundef nonnull %3), !dbg !562
  ret void, !dbg !563
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @Hacl_SHA2_512_hash(i8* nocapture noundef writeonly %0, i8* nocapture noundef readonly %1, i32 noundef %2) local_unnamed_addr #3 !dbg !564 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !568, metadata !DIExpression()), !dbg !571
  call void @llvm.dbg.value(metadata i8* %1, metadata !569, metadata !DIExpression()), !dbg !571
  call void @llvm.dbg.value(metadata i32 %2, metadata !570, metadata !DIExpression()), !dbg !571
  call fastcc void @Hacl_Impl_SHA2_512_hash(i8* noundef %0, i8* noundef %1, i32 noundef %2), !dbg !572
  ret void, !dbg !573
}

; Function Attrs: noinline nounwind uwtable
define internal fastcc void @Hacl_Impl_SHA2_512_hash(i8* nocapture noundef writeonly %0, i8* nocapture noundef readonly %1, i32 noundef %2) unnamed_addr #3 !dbg !574 {
  %4 = alloca [169 x i64], align 8
  %5 = bitcast [169 x i64]* %4 to i8*, !dbg !589
  call void @llvm.dbg.value(metadata i8* %0, metadata !576, metadata !DIExpression()), !dbg !589
  call void @llvm.dbg.value(metadata i8* %1, metadata !577, metadata !DIExpression()), !dbg !589
  call void @llvm.dbg.value(metadata i32 %2, metadata !578, metadata !DIExpression()), !dbg !589
  %6 = bitcast [169 x i64]* %4 to i8*, !dbg !590
  call void @llvm.lifetime.start.p0i8(i64 1352, i8* nonnull %6) #12, !dbg !590
  call void @llvm.dbg.declare(metadata [169 x i64]* %4, metadata !579, metadata !DIExpression()), !dbg !591
  call void @llvm.dbg.value(metadata i32 0, metadata !583, metadata !DIExpression()), !dbg !592
  call void @llvm.memset.p0i8.i32(i8* noundef nonnull align 8 dereferenceable(1352) %5, i8 0, i32 1352, i1 false), !dbg !593, !tbaa !115
  call void @llvm.dbg.value(metadata i32 undef, metadata !583, metadata !DIExpression()), !dbg !592
  call void @llvm.dbg.value(metadata i32 undef, metadata !583, metadata !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value)), !dbg !592
  %7 = lshr i32 %2, 7, !dbg !595
  call void @llvm.dbg.value(metadata i32 %7, metadata !585, metadata !DIExpression()), !dbg !589
  %8 = and i32 %2, 127, !dbg !596
  call void @llvm.dbg.value(metadata i32 %8, metadata !586, metadata !DIExpression()), !dbg !589
  call void @llvm.dbg.value(metadata i8* %1, metadata !587, metadata !DIExpression()), !dbg !589
  %9 = and i32 %2, -128, !dbg !597
  %10 = getelementptr inbounds i8, i8* %1, i32 %9, !dbg !598
  call void @llvm.dbg.value(metadata i8* %10, metadata !588, metadata !DIExpression()), !dbg !589
  %11 = getelementptr inbounds [169 x i64], [169 x i64]* %4, i32 0, i32 0, !dbg !599
  call fastcc void @Hacl_Impl_SHA2_512_init(i64* noundef nonnull %11), !dbg !600
  call fastcc void @Hacl_Impl_SHA2_512_update_multi(i64* noundef nonnull %11, i8* noundef %1, i32 noundef %7), !dbg !601
  %12 = zext i32 %8 to i64, !dbg !602
  call fastcc void @Hacl_Impl_SHA2_512_update_last(i64* noundef nonnull %11, i8* noundef %10, i64 noundef %12), !dbg !603
  call fastcc void @Hacl_Impl_SHA2_512_finish(i64* noundef nonnull %11, i8* noundef %0), !dbg !604
  call void @llvm.lifetime.end.p0i8(i64 1352, i8* nonnull %6) #12, !dbg !605
  ret void, !dbg !605
}

; Function Attrs: argmemonly mustprogress nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0i8(i64 immarg, i8* nocapture) #4

; Function Attrs: argmemonly mustprogress nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0i8(i64 immarg, i8* nocapture) #4

; Function Attrs: nofree noinline nosync nounwind uwtable
define internal fastcc void @Hacl_Hash_Lib_LoadStore_uint64s_from_be_bytes(i64* nocapture noundef writeonly %0, i8* nocapture noundef readonly %1) unnamed_addr #2 !dbg !606 {
  call void @llvm.dbg.value(metadata i64* %0, metadata !608, metadata !DIExpression()), !dbg !617
  call void @llvm.dbg.value(metadata i8* %1, metadata !609, metadata !DIExpression()), !dbg !617
  call void @llvm.dbg.value(metadata i32 16, metadata !610, metadata !DIExpression()), !dbg !617
  call void @llvm.dbg.value(metadata i32 0, metadata !611, metadata !DIExpression()), !dbg !618
  br label %4, !dbg !619

3:                                                ; preds = %4
  ret void, !dbg !620

4:                                                ; preds = %2, %4
  %5 = phi i32 [ 0, %2 ], [ %11, %4 ]
  call void @llvm.dbg.value(metadata i32 %5, metadata !611, metadata !DIExpression()), !dbg !618
  %6 = shl i32 %5, 3, !dbg !621
  %7 = getelementptr inbounds i8, i8* %1, i32 %6, !dbg !622
  call void @llvm.dbg.value(metadata i8* %7, metadata !613, metadata !DIExpression()), !dbg !623
  %8 = call fastcc i64 @load64(i8* noundef %7), !dbg !624
  %9 = call fastcc i64 @__bswap_64(i64 noundef %8), !dbg !624
  call void @llvm.dbg.value(metadata i64 %9, metadata !616, metadata !DIExpression()), !dbg !623
  %10 = getelementptr inbounds i64, i64* %0, i32 %5, !dbg !625
  store i64 %9, i64* %10, align 4, !dbg !626, !tbaa !115
  %11 = add nuw nsw i32 %5, 1, !dbg !627
  call void @llvm.dbg.value(metadata i32 %11, metadata !611, metadata !DIExpression()), !dbg !618
  %12 = icmp eq i32 %11, 16, !dbg !628
  br i1 %12, label %3, label %4, !dbg !619, !llvm.loop !629
}

; Function Attrs: argmemonly mustprogress nofree nounwind willreturn writeonly
declare void @llvm.memset.p0i8.i32(i8* nocapture writeonly, i8, i32, i1 immarg) #5

; Function Attrs: argmemonly mustprogress nofree nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i32(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i32, i1 immarg) #6

; Function Attrs: mustprogress nofree noinline nosync nounwind readnone uwtable willreturn
define internal fastcc i64 @__bswap_64(i64 noundef %0) unnamed_addr #7 !dbg !631 {
  call void @llvm.dbg.value(metadata i64 %0, metadata !636, metadata !DIExpression()), !dbg !637
  %2 = call i64 @llvm.bswap.i64(i64 %0), !dbg !638
  ret i64 %2, !dbg !639
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readonly uwtable willreturn
define internal fastcc i64 @load64(i8* nocapture noundef readonly %0) unnamed_addr #8 !dbg !640 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !645, metadata !DIExpression()), !dbg !647
  %2 = bitcast i8* %0 to i64*, !dbg !648
  %3 = load i64, i64* %2, align 1, !dbg !648
  call void @llvm.dbg.value(metadata i64 %3, metadata !646, metadata !DIExpression()), !dbg !647
  ret i64 %3, !dbg !649
}

declare !dbg !650 void @FStar_UInt128_shift_left(%struct.FStar_UInt128_uint128* sret(%struct.FStar_UInt128_uint128) align 4, i64, i64, i32 noundef) local_unnamed_addr #9

declare !dbg !654 void @FStar_UInt128_add(%struct.FStar_UInt128_uint128* sret(%struct.FStar_UInt128_uint128) align 4, i64, i64, i64, i64) local_unnamed_addr #9

declare !dbg !657 void @FStar_UInt128_mul_wide(%struct.FStar_UInt128_uint128* sret(%struct.FStar_UInt128_uint128) align 4, i64 noundef, i64 noundef) local_unnamed_addr #9

declare !dbg !660 void @FStar_UInt128_uint64_to_uint128(%struct.FStar_UInt128_uint128* sret(%struct.FStar_UInt128_uint128) align 4, i64 noundef) local_unnamed_addr #9

; Function Attrs: mustprogress nofree noinline nosync nounwind uwtable willreturn
define internal fastcc void @store128_be(i8* nocapture noundef writeonly %0, i64 %1, i64 %2) unnamed_addr #10 !dbg !663 {
  %4 = alloca %struct.FStar_UInt128_uint128, align 8
  %5 = getelementptr inbounds %struct.FStar_UInt128_uint128, %struct.FStar_UInt128_uint128* %4, i32 0, i32 0
  store i64 %1, i64* %5, align 8, !tbaa !535
  %6 = getelementptr inbounds %struct.FStar_UInt128_uint128, %struct.FStar_UInt128_uint128* %4, i32 0, i32 1
  store i64 %2, i64* %6, align 8, !tbaa !537
  call void @llvm.dbg.value(metadata i8* %0, metadata !668, metadata !DIExpression()), !dbg !670
  call void @llvm.dbg.declare(metadata %struct.FStar_UInt128_uint128* %4, metadata !669, metadata !DIExpression()), !dbg !671
  call fastcc void @store128_be_(i8* noundef %0, %struct.FStar_UInt128_uint128* noundef nonnull %4), !dbg !672
  ret void, !dbg !673
}

; Function Attrs: mustprogress nofree noinline nosync nounwind uwtable willreturn
define internal fastcc void @store128_be_(i8* nocapture noundef writeonly %0, %struct.FStar_UInt128_uint128* nocapture noundef readonly %1) unnamed_addr #10 !dbg !674 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !679, metadata !DIExpression()), !dbg !681
  call void @llvm.dbg.value(metadata %struct.FStar_UInt128_uint128* %1, metadata !680, metadata !DIExpression()), !dbg !681
  %3 = getelementptr inbounds %struct.FStar_UInt128_uint128, %struct.FStar_UInt128_uint128* %1, i32 0, i32 1, !dbg !682
  %4 = load i64, i64* %3, align 4, !dbg !682, !tbaa !537
  %5 = call fastcc i64 @__bswap_64(i64 noundef %4), !dbg !682
  call fastcc void @store64(i8* noundef %0, i64 noundef %5), !dbg !682
  %6 = getelementptr inbounds i8, i8* %0, i32 8, !dbg !683
  %7 = getelementptr inbounds %struct.FStar_UInt128_uint128, %struct.FStar_UInt128_uint128* %1, i32 0, i32 0, !dbg !683
  %8 = load i64, i64* %7, align 4, !dbg !683, !tbaa !535
  %9 = call fastcc i64 @__bswap_64(i64 noundef %8), !dbg !683
  call fastcc void @store64(i8* noundef nonnull %6, i64 noundef %9), !dbg !683
  ret void, !dbg !684
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind uwtable willreturn writeonly
define internal fastcc void @store64(i8* nocapture noundef writeonly %0, i64 noundef %1) unnamed_addr #0 !dbg !685 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !689, metadata !DIExpression()), !dbg !691
  call void @llvm.dbg.value(metadata i64 %1, metadata !690, metadata !DIExpression()), !dbg !691
  %3 = bitcast i8* %0 to i64*, !dbg !692
  store i64 %1, i64* %3, align 1, !dbg !692
  ret void, !dbg !693
}

; Function Attrs: nofree noinline nosync nounwind uwtable
define internal fastcc void @Hacl_Hash_Lib_LoadStore_uint64s_to_be_bytes(i8* nocapture noundef writeonly %0, i64* nocapture noundef readonly %1) unnamed_addr #2 !dbg !694 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !698, metadata !DIExpression()), !dbg !707
  call void @llvm.dbg.value(metadata i64* %1, metadata !699, metadata !DIExpression()), !dbg !707
  call void @llvm.dbg.value(metadata i32 8, metadata !700, metadata !DIExpression()), !dbg !707
  call void @llvm.dbg.value(metadata i32 0, metadata !701, metadata !DIExpression()), !dbg !708
  br label %4, !dbg !709

3:                                                ; preds = %4
  ret void, !dbg !710

4:                                                ; preds = %2, %4
  %5 = phi i32 [ 0, %2 ], [ %11, %4 ]
  call void @llvm.dbg.value(metadata i32 %5, metadata !701, metadata !DIExpression()), !dbg !708
  %6 = getelementptr inbounds i64, i64* %1, i32 %5, !dbg !711
  %7 = load i64, i64* %6, align 4, !dbg !711, !tbaa !115
  call void @llvm.dbg.value(metadata i64 %7, metadata !703, metadata !DIExpression()), !dbg !712
  %8 = shl i32 %5, 3, !dbg !713
  %9 = getelementptr inbounds i8, i8* %0, i32 %8, !dbg !714
  call void @llvm.dbg.value(metadata i8* %9, metadata !706, metadata !DIExpression()), !dbg !712
  %10 = call fastcc i64 @__bswap_64(i64 noundef %7), !dbg !715
  call fastcc void @store64(i8* noundef %9, i64 noundef %10), !dbg !715
  %11 = add nuw nsw i32 %5, 1, !dbg !716
  call void @llvm.dbg.value(metadata i32 %11, metadata !701, metadata !DIExpression()), !dbg !708
  %12 = icmp eq i32 %11, 8, !dbg !717
  br i1 %12, label %3, label %4, !dbg !709, !llvm.loop !718
}

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare void @llvm.dbg.value(metadata, metadata, metadata) #11

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare i64 @llvm.fshl.i64(i64, i64, i64) #11

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare i64 @llvm.bswap.i64(i64) #11

attributes #0 = { mustprogress nofree noinline norecurse nosync nounwind uwtable willreturn writeonly "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="i686" "target-features"="+cx8,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nofree nosync nounwind readnone speculatable willreturn }
attributes #2 = { nofree noinline nosync nounwind uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="i686" "target-features"="+cx8,+x87" "tune-cpu"="generic" }
attributes #3 = { noinline nounwind uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="i686" "target-features"="+cx8,+x87" "tune-cpu"="generic" }
attributes #4 = { argmemonly mustprogress nofree nosync nounwind willreturn }
attributes #5 = { argmemonly mustprogress nofree nounwind willreturn writeonly }
attributes #6 = { argmemonly mustprogress nofree nounwind willreturn }
attributes #7 = { mustprogress nofree noinline nosync nounwind readnone uwtable willreturn "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="i686" "target-features"="+cx8,+x87" "tune-cpu"="generic" }
attributes #8 = { mustprogress nofree noinline norecurse nosync nounwind readonly uwtable willreturn "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="i686" "target-features"="+cx8,+x87" "tune-cpu"="generic" }
attributes #9 = { "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="i686" "target-features"="+cx8,+x87" "tune-cpu"="generic" }
attributes #10 = { mustprogress nofree noinline nosync nounwind uwtable willreturn "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="i686" "target-features"="+cx8,+x87" "tune-cpu"="generic" }
attributes #11 = { nofree nosync nounwind readnone speculatable willreturn }
attributes #12 = { nounwind }

!llvm.dbg.cu = !{!2}
!llvm.module.flags = !{!45, !46, !47, !48, !49, !50, !51}
!llvm.ident = !{!52}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(name: "Hacl_SHA2_512_size_word", scope: !2, file: !3, line: 331, type: !5, isLocal: false, isDefinition: true)
!2 = distinct !DICompileUnit(language: DW_LANG_C99, file: !3, producer: "Ubuntu clang version 14.0.0-1ubuntu1.1", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !4, globals: !16, splitDebugInlining: false, nameTableKind: None)
!3 = !DIFile(filename: "hacl-c/hacl-c/Hacl_SHA2_512.c", directory: "/mnt/c/Users/fwill/Documents/HS24/semester_project/tools/binsec/binsec/examples/hacl", checksumkind: CSK_MD5, checksum: "5db982c808cafe6970997423098b08ae")
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
!16 = !{!0, !17, !19, !21, !23, !25, !27, !29, !31, !33, !35, !37, !39, !41, !43}
!17 = !DIGlobalVariableExpression(var: !18, expr: !DIExpression())
!18 = distinct !DIGlobalVariable(name: "Hacl_SHA2_512_size_hash_w", scope: !2, file: !3, line: 333, type: !5, isLocal: false, isDefinition: true)
!19 = !DIGlobalVariableExpression(var: !20, expr: !DIExpression())
!20 = distinct !DIGlobalVariable(name: "Hacl_SHA2_512_size_block_w", scope: !2, file: !3, line: 335, type: !5, isLocal: false, isDefinition: true)
!21 = !DIGlobalVariableExpression(var: !22, expr: !DIExpression())
!22 = distinct !DIGlobalVariable(name: "Hacl_SHA2_512_size_hash", scope: !2, file: !3, line: 337, type: !5, isLocal: false, isDefinition: true)
!23 = !DIGlobalVariableExpression(var: !24, expr: !DIExpression())
!24 = distinct !DIGlobalVariable(name: "Hacl_SHA2_512_size_block", scope: !2, file: !3, line: 339, type: !5, isLocal: false, isDefinition: true)
!25 = !DIGlobalVariableExpression(var: !26, expr: !DIExpression())
!26 = distinct !DIGlobalVariable(name: "Hacl_SHA2_512_size_k_w", scope: !2, file: !3, line: 341, type: !5, isLocal: false, isDefinition: true)
!27 = !DIGlobalVariableExpression(var: !28, expr: !DIExpression())
!28 = distinct !DIGlobalVariable(name: "Hacl_SHA2_512_size_ws_w", scope: !2, file: !3, line: 343, type: !5, isLocal: false, isDefinition: true)
!29 = !DIGlobalVariableExpression(var: !30, expr: !DIExpression())
!30 = distinct !DIGlobalVariable(name: "Hacl_SHA2_512_size_whash_w", scope: !2, file: !3, line: 345, type: !5, isLocal: false, isDefinition: true)
!31 = !DIGlobalVariableExpression(var: !32, expr: !DIExpression())
!32 = distinct !DIGlobalVariable(name: "Hacl_SHA2_512_size_count_w", scope: !2, file: !3, line: 347, type: !5, isLocal: false, isDefinition: true)
!33 = !DIGlobalVariableExpression(var: !34, expr: !DIExpression())
!34 = distinct !DIGlobalVariable(name: "Hacl_SHA2_512_size_len_8", scope: !2, file: !3, line: 349, type: !5, isLocal: false, isDefinition: true)
!35 = !DIGlobalVariableExpression(var: !36, expr: !DIExpression())
!36 = distinct !DIGlobalVariable(name: "Hacl_SHA2_512_size_state", scope: !2, file: !3, line: 351, type: !5, isLocal: false, isDefinition: true)
!37 = !DIGlobalVariableExpression(var: !38, expr: !DIExpression())
!38 = distinct !DIGlobalVariable(name: "Hacl_SHA2_512_pos_k_w", scope: !2, file: !3, line: 353, type: !5, isLocal: false, isDefinition: true)
!39 = !DIGlobalVariableExpression(var: !40, expr: !DIExpression())
!40 = distinct !DIGlobalVariable(name: "Hacl_SHA2_512_pos_ws_w", scope: !2, file: !3, line: 355, type: !5, isLocal: false, isDefinition: true)
!41 = !DIGlobalVariableExpression(var: !42, expr: !DIExpression())
!42 = distinct !DIGlobalVariable(name: "Hacl_SHA2_512_pos_whash_w", scope: !2, file: !3, line: 357, type: !5, isLocal: false, isDefinition: true)
!43 = !DIGlobalVariableExpression(var: !44, expr: !DIExpression())
!44 = distinct !DIGlobalVariable(name: "Hacl_SHA2_512_pos_count_w", scope: !2, file: !3, line: 359, type: !5, isLocal: false, isDefinition: true)
!45 = !{i32 1, !"NumRegisterParameters", i32 0}
!46 = !{i32 7, !"Dwarf Version", i32 5}
!47 = !{i32 2, !"Debug Info Version", i32 3}
!48 = !{i32 1, !"wchar_size", i32 4}
!49 = !{i32 7, !"PIC Level", i32 2}
!50 = !{i32 7, !"PIE Level", i32 2}
!51 = !{i32 7, !"uwtable", i32 1}
!52 = !{!"Ubuntu clang version 14.0.0-1ubuntu1.1"}
!53 = distinct !DISubprogram(name: "Hacl_SHA2_512_init", scope: !3, file: !3, line: 361, type: !54, scopeLine: 362, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !57)
!54 = !DISubroutineType(types: !55)
!55 = !{null, !56}
!56 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !10, size: 32)
!57 = !{!58}
!58 = !DILocalVariable(name: "state", arg: 1, scope: !53, file: !3, line: 361, type: !56)
!59 = !DILocation(line: 0, scope: !53)
!60 = !DILocation(line: 363, column: 3, scope: !53)
!61 = !DILocation(line: 364, column: 1, scope: !53)
!62 = distinct !DISubprogram(name: "Hacl_Impl_SHA2_512_init", scope: !3, file: !3, line: 49, type: !54, scopeLine: 50, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !63)
!63 = !{!64, !65, !66, !67, !68, !69, !70, !71, !72, !73, !74, !75, !76, !77, !78, !79, !80, !81, !82, !83, !84, !85, !86, !87, !88, !89, !90, !91, !92, !93, !94, !95, !96, !97, !98, !99, !100, !101, !102, !103, !104}
!64 = !DILocalVariable(name: "state", arg: 1, scope: !62, file: !3, line: 49, type: !56)
!65 = !DILocalVariable(name: "n1", scope: !62, file: !3, line: 51, type: !56)
!66 = !DILocalVariable(name: "k1", scope: !62, file: !3, line: 52, type: !56)
!67 = !DILocalVariable(name: "h_01", scope: !62, file: !3, line: 53, type: !56)
!68 = !DILocalVariable(name: "p10", scope: !62, file: !3, line: 54, type: !56)
!69 = !DILocalVariable(name: "p20", scope: !62, file: !3, line: 55, type: !56)
!70 = !DILocalVariable(name: "p3", scope: !62, file: !3, line: 56, type: !56)
!71 = !DILocalVariable(name: "p4", scope: !62, file: !3, line: 57, type: !56)
!72 = !DILocalVariable(name: "p5", scope: !62, file: !3, line: 58, type: !56)
!73 = !DILocalVariable(name: "p11", scope: !62, file: !3, line: 59, type: !56)
!74 = !DILocalVariable(name: "p21", scope: !62, file: !3, line: 60, type: !56)
!75 = !DILocalVariable(name: "p12", scope: !62, file: !3, line: 61, type: !56)
!76 = !DILocalVariable(name: "p22", scope: !62, file: !3, line: 62, type: !56)
!77 = !DILocalVariable(name: "p13", scope: !62, file: !3, line: 71, type: !56)
!78 = !DILocalVariable(name: "p23", scope: !62, file: !3, line: 72, type: !56)
!79 = !DILocalVariable(name: "p14", scope: !62, file: !3, line: 81, type: !56)
!80 = !DILocalVariable(name: "p24", scope: !62, file: !3, line: 82, type: !56)
!81 = !DILocalVariable(name: "p15", scope: !62, file: !3, line: 83, type: !56)
!82 = !DILocalVariable(name: "p25", scope: !62, file: !3, line: 84, type: !56)
!83 = !DILocalVariable(name: "p16", scope: !62, file: !3, line: 93, type: !56)
!84 = !DILocalVariable(name: "p26", scope: !62, file: !3, line: 94, type: !56)
!85 = !DILocalVariable(name: "p17", scope: !62, file: !3, line: 103, type: !56)
!86 = !DILocalVariable(name: "p27", scope: !62, file: !3, line: 104, type: !56)
!87 = !DILocalVariable(name: "p18", scope: !62, file: !3, line: 105, type: !56)
!88 = !DILocalVariable(name: "p28", scope: !62, file: !3, line: 106, type: !56)
!89 = !DILocalVariable(name: "p19", scope: !62, file: !3, line: 115, type: !56)
!90 = !DILocalVariable(name: "p29", scope: !62, file: !3, line: 116, type: !56)
!91 = !DILocalVariable(name: "p110", scope: !62, file: !3, line: 125, type: !56)
!92 = !DILocalVariable(name: "p210", scope: !62, file: !3, line: 126, type: !56)
!93 = !DILocalVariable(name: "p111", scope: !62, file: !3, line: 127, type: !56)
!94 = !DILocalVariable(name: "p211", scope: !62, file: !3, line: 128, type: !56)
!95 = !DILocalVariable(name: "p112", scope: !62, file: !3, line: 137, type: !56)
!96 = !DILocalVariable(name: "p212", scope: !62, file: !3, line: 138, type: !56)
!97 = !DILocalVariable(name: "p113", scope: !62, file: !3, line: 147, type: !56)
!98 = !DILocalVariable(name: "p213", scope: !62, file: !3, line: 148, type: !56)
!99 = !DILocalVariable(name: "p1", scope: !62, file: !3, line: 149, type: !56)
!100 = !DILocalVariable(name: "p214", scope: !62, file: !3, line: 150, type: !56)
!101 = !DILocalVariable(name: "p114", scope: !62, file: !3, line: 159, type: !56)
!102 = !DILocalVariable(name: "p215", scope: !62, file: !3, line: 160, type: !56)
!103 = !DILocalVariable(name: "p115", scope: !62, file: !3, line: 169, type: !56)
!104 = !DILocalVariable(name: "p2", scope: !62, file: !3, line: 170, type: !56)
!105 = !DILocation(line: 0, scope: !62)
!106 = !DILocation(line: 51, column: 24, scope: !62)
!107 = !DILocation(line: 53, column: 26, scope: !62)
!108 = !DILocation(line: 55, column: 22, scope: !62)
!109 = !DILocation(line: 56, column: 21, scope: !62)
!110 = !DILocation(line: 57, column: 21, scope: !62)
!111 = !DILocation(line: 58, column: 21, scope: !62)
!112 = !DILocation(line: 60, column: 23, scope: !62)
!113 = !DILocation(line: 62, column: 23, scope: !62)
!114 = !DILocation(line: 63, column: 11, scope: !62)
!115 = !{!116, !116, i64 0}
!116 = !{!"long long", !117, i64 0}
!117 = !{!"omnipotent char", !118, i64 0}
!118 = !{!"Simple C/C++ TBAA"}
!119 = !DILocation(line: 64, column: 3, scope: !62)
!120 = !DILocation(line: 64, column: 11, scope: !62)
!121 = !DILocation(line: 65, column: 3, scope: !62)
!122 = !DILocation(line: 65, column: 11, scope: !62)
!123 = !DILocation(line: 66, column: 3, scope: !62)
!124 = !DILocation(line: 66, column: 11, scope: !62)
!125 = !DILocation(line: 67, column: 11, scope: !62)
!126 = !DILocation(line: 68, column: 3, scope: !62)
!127 = !DILocation(line: 68, column: 11, scope: !62)
!128 = !DILocation(line: 69, column: 3, scope: !62)
!129 = !DILocation(line: 69, column: 11, scope: !62)
!130 = !DILocation(line: 70, column: 3, scope: !62)
!131 = !DILocation(line: 70, column: 11, scope: !62)
!132 = !DILocation(line: 72, column: 23, scope: !62)
!133 = !DILocation(line: 73, column: 11, scope: !62)
!134 = !DILocation(line: 74, column: 3, scope: !62)
!135 = !DILocation(line: 74, column: 11, scope: !62)
!136 = !DILocation(line: 75, column: 3, scope: !62)
!137 = !DILocation(line: 75, column: 11, scope: !62)
!138 = !DILocation(line: 76, column: 3, scope: !62)
!139 = !DILocation(line: 76, column: 11, scope: !62)
!140 = !DILocation(line: 77, column: 11, scope: !62)
!141 = !DILocation(line: 78, column: 3, scope: !62)
!142 = !DILocation(line: 78, column: 11, scope: !62)
!143 = !DILocation(line: 79, column: 3, scope: !62)
!144 = !DILocation(line: 79, column: 11, scope: !62)
!145 = !DILocation(line: 80, column: 3, scope: !62)
!146 = !DILocation(line: 80, column: 11, scope: !62)
!147 = !DILocation(line: 82, column: 23, scope: !62)
!148 = !DILocation(line: 84, column: 23, scope: !62)
!149 = !DILocation(line: 85, column: 11, scope: !62)
!150 = !DILocation(line: 86, column: 3, scope: !62)
!151 = !DILocation(line: 86, column: 11, scope: !62)
!152 = !DILocation(line: 87, column: 3, scope: !62)
!153 = !DILocation(line: 87, column: 11, scope: !62)
!154 = !DILocation(line: 88, column: 3, scope: !62)
!155 = !DILocation(line: 88, column: 11, scope: !62)
!156 = !DILocation(line: 89, column: 11, scope: !62)
!157 = !DILocation(line: 90, column: 3, scope: !62)
!158 = !DILocation(line: 90, column: 11, scope: !62)
!159 = !DILocation(line: 91, column: 3, scope: !62)
!160 = !DILocation(line: 91, column: 11, scope: !62)
!161 = !DILocation(line: 92, column: 3, scope: !62)
!162 = !DILocation(line: 92, column: 11, scope: !62)
!163 = !DILocation(line: 94, column: 23, scope: !62)
!164 = !DILocation(line: 95, column: 11, scope: !62)
!165 = !DILocation(line: 96, column: 3, scope: !62)
!166 = !DILocation(line: 96, column: 11, scope: !62)
!167 = !DILocation(line: 97, column: 3, scope: !62)
!168 = !DILocation(line: 97, column: 11, scope: !62)
!169 = !DILocation(line: 98, column: 3, scope: !62)
!170 = !DILocation(line: 98, column: 11, scope: !62)
!171 = !DILocation(line: 99, column: 11, scope: !62)
!172 = !DILocation(line: 100, column: 3, scope: !62)
!173 = !DILocation(line: 100, column: 11, scope: !62)
!174 = !DILocation(line: 101, column: 3, scope: !62)
!175 = !DILocation(line: 101, column: 11, scope: !62)
!176 = !DILocation(line: 102, column: 3, scope: !62)
!177 = !DILocation(line: 102, column: 11, scope: !62)
!178 = !DILocation(line: 104, column: 22, scope: !62)
!179 = !DILocation(line: 106, column: 23, scope: !62)
!180 = !DILocation(line: 107, column: 11, scope: !62)
!181 = !DILocation(line: 108, column: 3, scope: !62)
!182 = !DILocation(line: 108, column: 11, scope: !62)
!183 = !DILocation(line: 109, column: 3, scope: !62)
!184 = !DILocation(line: 109, column: 11, scope: !62)
!185 = !DILocation(line: 110, column: 3, scope: !62)
!186 = !DILocation(line: 110, column: 11, scope: !62)
!187 = !DILocation(line: 111, column: 11, scope: !62)
!188 = !DILocation(line: 112, column: 3, scope: !62)
!189 = !DILocation(line: 112, column: 11, scope: !62)
!190 = !DILocation(line: 113, column: 3, scope: !62)
!191 = !DILocation(line: 113, column: 11, scope: !62)
!192 = !DILocation(line: 114, column: 3, scope: !62)
!193 = !DILocation(line: 114, column: 11, scope: !62)
!194 = !DILocation(line: 116, column: 23, scope: !62)
!195 = !DILocation(line: 117, column: 11, scope: !62)
!196 = !DILocation(line: 118, column: 3, scope: !62)
!197 = !DILocation(line: 118, column: 11, scope: !62)
!198 = !DILocation(line: 119, column: 3, scope: !62)
!199 = !DILocation(line: 119, column: 11, scope: !62)
!200 = !DILocation(line: 120, column: 3, scope: !62)
!201 = !DILocation(line: 120, column: 11, scope: !62)
!202 = !DILocation(line: 121, column: 11, scope: !62)
!203 = !DILocation(line: 122, column: 3, scope: !62)
!204 = !DILocation(line: 122, column: 11, scope: !62)
!205 = !DILocation(line: 123, column: 3, scope: !62)
!206 = !DILocation(line: 123, column: 11, scope: !62)
!207 = !DILocation(line: 124, column: 3, scope: !62)
!208 = !DILocation(line: 124, column: 11, scope: !62)
!209 = !DILocation(line: 126, column: 23, scope: !62)
!210 = !DILocation(line: 128, column: 25, scope: !62)
!211 = !DILocation(line: 129, column: 12, scope: !62)
!212 = !DILocation(line: 130, column: 3, scope: !62)
!213 = !DILocation(line: 130, column: 12, scope: !62)
!214 = !DILocation(line: 131, column: 3, scope: !62)
!215 = !DILocation(line: 131, column: 12, scope: !62)
!216 = !DILocation(line: 132, column: 3, scope: !62)
!217 = !DILocation(line: 132, column: 12, scope: !62)
!218 = !DILocation(line: 133, column: 12, scope: !62)
!219 = !DILocation(line: 134, column: 3, scope: !62)
!220 = !DILocation(line: 134, column: 12, scope: !62)
!221 = !DILocation(line: 135, column: 3, scope: !62)
!222 = !DILocation(line: 135, column: 12, scope: !62)
!223 = !DILocation(line: 136, column: 3, scope: !62)
!224 = !DILocation(line: 136, column: 12, scope: !62)
!225 = !DILocation(line: 138, column: 25, scope: !62)
!226 = !DILocation(line: 139, column: 12, scope: !62)
!227 = !DILocation(line: 140, column: 3, scope: !62)
!228 = !DILocation(line: 140, column: 12, scope: !62)
!229 = !DILocation(line: 141, column: 3, scope: !62)
!230 = !DILocation(line: 141, column: 12, scope: !62)
!231 = !DILocation(line: 142, column: 3, scope: !62)
!232 = !DILocation(line: 142, column: 12, scope: !62)
!233 = !DILocation(line: 143, column: 12, scope: !62)
!234 = !DILocation(line: 144, column: 3, scope: !62)
!235 = !DILocation(line: 144, column: 12, scope: !62)
!236 = !DILocation(line: 145, column: 3, scope: !62)
!237 = !DILocation(line: 145, column: 12, scope: !62)
!238 = !DILocation(line: 146, column: 3, scope: !62)
!239 = !DILocation(line: 146, column: 12, scope: !62)
!240 = !DILocation(line: 148, column: 23, scope: !62)
!241 = !DILocation(line: 150, column: 25, scope: !62)
!242 = !DILocation(line: 151, column: 10, scope: !62)
!243 = !DILocation(line: 152, column: 3, scope: !62)
!244 = !DILocation(line: 152, column: 10, scope: !62)
!245 = !DILocation(line: 153, column: 3, scope: !62)
!246 = !DILocation(line: 153, column: 10, scope: !62)
!247 = !DILocation(line: 154, column: 3, scope: !62)
!248 = !DILocation(line: 154, column: 10, scope: !62)
!249 = !DILocation(line: 155, column: 12, scope: !62)
!250 = !DILocation(line: 156, column: 3, scope: !62)
!251 = !DILocation(line: 156, column: 12, scope: !62)
!252 = !DILocation(line: 157, column: 3, scope: !62)
!253 = !DILocation(line: 157, column: 12, scope: !62)
!254 = !DILocation(line: 158, column: 3, scope: !62)
!255 = !DILocation(line: 158, column: 12, scope: !62)
!256 = !DILocation(line: 160, column: 25, scope: !62)
!257 = !DILocation(line: 161, column: 12, scope: !62)
!258 = !DILocation(line: 162, column: 3, scope: !62)
!259 = !DILocation(line: 162, column: 12, scope: !62)
!260 = !DILocation(line: 163, column: 3, scope: !62)
!261 = !DILocation(line: 163, column: 12, scope: !62)
!262 = !DILocation(line: 164, column: 3, scope: !62)
!263 = !DILocation(line: 164, column: 12, scope: !62)
!264 = !DILocation(line: 165, column: 12, scope: !62)
!265 = !DILocation(line: 166, column: 3, scope: !62)
!266 = !DILocation(line: 166, column: 12, scope: !62)
!267 = !DILocation(line: 167, column: 3, scope: !62)
!268 = !DILocation(line: 167, column: 12, scope: !62)
!269 = !DILocation(line: 168, column: 3, scope: !62)
!270 = !DILocation(line: 168, column: 12, scope: !62)
!271 = !DILocation(line: 170, column: 23, scope: !62)
!272 = !DILocation(line: 171, column: 12, scope: !62)
!273 = !DILocation(line: 172, column: 3, scope: !62)
!274 = !DILocation(line: 172, column: 12, scope: !62)
!275 = !DILocation(line: 173, column: 3, scope: !62)
!276 = !DILocation(line: 173, column: 12, scope: !62)
!277 = !DILocation(line: 174, column: 3, scope: !62)
!278 = !DILocation(line: 174, column: 12, scope: !62)
!279 = !DILocation(line: 175, column: 10, scope: !62)
!280 = !DILocation(line: 176, column: 3, scope: !62)
!281 = !DILocation(line: 176, column: 10, scope: !62)
!282 = !DILocation(line: 177, column: 3, scope: !62)
!283 = !DILocation(line: 177, column: 10, scope: !62)
!284 = !DILocation(line: 178, column: 3, scope: !62)
!285 = !DILocation(line: 178, column: 10, scope: !62)
!286 = !DILocation(line: 179, column: 10, scope: !62)
!287 = !DILocation(line: 180, column: 1, scope: !62)
!288 = distinct !DISubprogram(name: "Hacl_SHA2_512_update", scope: !3, file: !3, line: 366, type: !289, scopeLine: 367, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !292)
!289 = !DISubroutineType(types: !290)
!290 = !{null, !56, !291}
!291 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !13, size: 32)
!292 = !{!293, !294}
!293 = !DILocalVariable(name: "state", arg: 1, scope: !288, file: !3, line: 366, type: !56)
!294 = !DILocalVariable(name: "data", arg: 2, scope: !288, file: !3, line: 366, type: !291)
!295 = !DILocation(line: 0, scope: !288)
!296 = !DILocation(line: 368, column: 3, scope: !288)
!297 = !DILocation(line: 369, column: 1, scope: !288)
!298 = distinct !DISubprogram(name: "Hacl_Impl_SHA2_512_update", scope: !3, file: !3, line: 182, type: !289, scopeLine: 183, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !299)
!299 = !{!300, !301, !302, !306, !308, !309, !310, !311, !312, !314, !317, !319, !322, !323, !324, !325, !329, !331, !334, !335, !336, !337, !338, !339, !340, !341, !342, !343, !344, !345, !346, !347, !348, !349, !351, !354, !355, !356}
!300 = !DILocalVariable(name: "state", arg: 1, scope: !298, file: !3, line: 182, type: !56)
!301 = !DILocalVariable(name: "data", arg: 2, scope: !298, file: !3, line: 182, type: !291)
!302 = !DILocalVariable(name: "data_w", scope: !298, file: !3, line: 185, type: !303)
!303 = !DICompositeType(tag: DW_TAG_array_type, baseType: !10, size: 1024, elements: !304)
!304 = !{!305}
!305 = !DISubrange(count: 16)
!306 = !DILocalVariable(name: "_i", scope: !307, file: !3, line: 186, type: !5)
!307 = distinct !DILexicalBlock(scope: !298, file: !3, line: 186, column: 3)
!308 = !DILocalVariable(name: "hash_w", scope: !298, file: !3, line: 189, type: !56)
!309 = !DILocalVariable(name: "ws_w", scope: !298, file: !3, line: 190, type: !56)
!310 = !DILocalVariable(name: "k_w", scope: !298, file: !3, line: 191, type: !56)
!311 = !DILocalVariable(name: "counter_w", scope: !298, file: !3, line: 192, type: !56)
!312 = !DILocalVariable(name: "i", scope: !313, file: !3, line: 193, type: !5)
!313 = distinct !DILexicalBlock(scope: !298, file: !3, line: 193, column: 3)
!314 = !DILocalVariable(name: "b", scope: !315, file: !3, line: 195, type: !10)
!315 = distinct !DILexicalBlock(scope: !316, file: !3, line: 194, column: 3)
!316 = distinct !DILexicalBlock(scope: !313, file: !3, line: 193, column: 3)
!317 = !DILocalVariable(name: "i", scope: !318, file: !3, line: 198, type: !5)
!318 = distinct !DILexicalBlock(scope: !298, file: !3, line: 198, column: 3)
!319 = !DILocalVariable(name: "t16", scope: !320, file: !3, line: 200, type: !10)
!320 = distinct !DILexicalBlock(scope: !321, file: !3, line: 199, column: 3)
!321 = distinct !DILexicalBlock(scope: !318, file: !3, line: 198, column: 3)
!322 = !DILocalVariable(name: "t15", scope: !320, file: !3, line: 201, type: !10)
!323 = !DILocalVariable(name: "t7", scope: !320, file: !3, line: 202, type: !10)
!324 = !DILocalVariable(name: "t2", scope: !320, file: !3, line: 203, type: !10)
!325 = !DILocalVariable(name: "hash_0", scope: !298, file: !3, line: 214, type: !326)
!326 = !DICompositeType(tag: DW_TAG_array_type, baseType: !10, size: 512, elements: !327)
!327 = !{!328}
!328 = !DISubrange(count: 8)
!329 = !DILocalVariable(name: "i", scope: !330, file: !3, line: 216, type: !5)
!330 = distinct !DILexicalBlock(scope: !298, file: !3, line: 216, column: 3)
!331 = !DILocalVariable(name: "a", scope: !332, file: !3, line: 218, type: !10)
!332 = distinct !DILexicalBlock(scope: !333, file: !3, line: 217, column: 3)
!333 = distinct !DILexicalBlock(scope: !330, file: !3, line: 216, column: 3)
!334 = !DILocalVariable(name: "b", scope: !332, file: !3, line: 219, type: !10)
!335 = !DILocalVariable(name: "c", scope: !332, file: !3, line: 220, type: !10)
!336 = !DILocalVariable(name: "d", scope: !332, file: !3, line: 221, type: !10)
!337 = !DILocalVariable(name: "e", scope: !332, file: !3, line: 222, type: !10)
!338 = !DILocalVariable(name: "f1", scope: !332, file: !3, line: 223, type: !10)
!339 = !DILocalVariable(name: "g", scope: !332, file: !3, line: 224, type: !10)
!340 = !DILocalVariable(name: "h", scope: !332, file: !3, line: 225, type: !10)
!341 = !DILocalVariable(name: "k_t", scope: !332, file: !3, line: 226, type: !10)
!342 = !DILocalVariable(name: "ws_t", scope: !332, file: !3, line: 227, type: !10)
!343 = !DILocalVariable(name: "t1", scope: !332, file: !3, line: 229, type: !10)
!344 = !DILocalVariable(name: "t2", scope: !332, file: !3, line: 240, type: !10)
!345 = !DILocalVariable(name: "x1", scope: !332, file: !3, line: 246, type: !10)
!346 = !DILocalVariable(name: "x5", scope: !332, file: !3, line: 247, type: !10)
!347 = !DILocalVariable(name: "p1", scope: !332, file: !3, line: 248, type: !56)
!348 = !DILocalVariable(name: "p2", scope: !332, file: !3, line: 249, type: !56)
!349 = !DILocalVariable(name: "i", scope: !350, file: !3, line: 259, type: !5)
!350 = distinct !DILexicalBlock(scope: !298, file: !3, line: 259, column: 3)
!351 = !DILocalVariable(name: "xi", scope: !352, file: !3, line: 261, type: !10)
!352 = distinct !DILexicalBlock(scope: !353, file: !3, line: 260, column: 3)
!353 = distinct !DILexicalBlock(scope: !350, file: !3, line: 259, column: 3)
!354 = !DILocalVariable(name: "yi", scope: !352, file: !3, line: 262, type: !10)
!355 = !DILocalVariable(name: "c0", scope: !298, file: !3, line: 265, type: !10)
!356 = !DILocalVariable(name: "one1", scope: !298, file: !3, line: 266, type: !10)
!357 = !DILocation(line: 0, scope: !298)
!358 = !DILocation(line: 185, column: 3, scope: !298)
!359 = !DILocation(line: 185, column: 12, scope: !298)
!360 = !DILocation(line: 0, scope: !307)
!361 = !DILocation(line: 187, column: 16, scope: !362)
!362 = distinct !DILexicalBlock(scope: !307, file: !3, line: 186, column: 3)
!363 = !DILocation(line: 188, column: 49, scope: !298)
!364 = !DILocation(line: 188, column: 3, scope: !298)
!365 = !DILocation(line: 190, column: 26, scope: !298)
!366 = !DILocation(line: 0, scope: !313)
!367 = !DILocation(line: 196, column: 13, scope: !315)
!368 = !DILocation(line: 0, scope: !315)
!369 = !DILocation(line: 189, column: 28, scope: !298)
!370 = !DILocation(line: 198, column: 3, scope: !318)
!371 = !DILocation(line: 214, column: 3, scope: !298)
!372 = !DILocation(line: 214, column: 12, scope: !298)
!373 = !DILocation(line: 215, column: 3, scope: !298)
!374 = !DILocation(line: 0, scope: !330)
!375 = !DILocation(line: 216, column: 3, scope: !330)
!376 = !DILocation(line: 0, scope: !318)
!377 = !DILocation(line: 200, column: 27, scope: !320)
!378 = !DILocation(line: 200, column: 20, scope: !320)
!379 = !DILocation(line: 0, scope: !320)
!380 = !DILocation(line: 201, column: 27, scope: !320)
!381 = !DILocation(line: 201, column: 20, scope: !320)
!382 = !DILocation(line: 202, column: 26, scope: !320)
!383 = !DILocation(line: 202, column: 19, scope: !320)
!384 = !DILocation(line: 203, column: 26, scope: !320)
!385 = !DILocation(line: 203, column: 19, scope: !320)
!386 = !DILocation(line: 205, column: 29, scope: !320)
!387 = !DILocation(line: 206, column: 31, scope: !320)
!388 = !DILocation(line: 206, column: 77, scope: !320)
!389 = !DILocation(line: 206, column: 72, scope: !320)
!390 = !DILocation(line: 206, column: 7, scope: !320)
!391 = !DILocation(line: 210, column: 33, scope: !320)
!392 = !DILocation(line: 211, column: 35, scope: !320)
!393 = !DILocation(line: 211, column: 82, scope: !320)
!394 = !DILocation(line: 211, column: 76, scope: !320)
!395 = !DILocation(line: 211, column: 11, scope: !320)
!396 = !DILocation(line: 207, column: 7, scope: !320)
!397 = !DILocation(line: 209, column: 9, scope: !320)
!398 = !DILocation(line: 212, column: 11, scope: !320)
!399 = !DILocation(line: 204, column: 5, scope: !320)
!400 = !DILocation(line: 204, column: 13, scope: !320)
!401 = !DILocation(line: 198, column: 61, scope: !321)
!402 = !DILocation(line: 198, column: 38, scope: !321)
!403 = distinct !{!403, !370, !404, !405, !406}
!404 = !DILocation(line: 213, column: 3, scope: !318)
!405 = !{!"llvm.loop.mustprogress"}
!406 = !{!"llvm.loop.unroll.disable"}
!407 = !DILocation(line: 0, scope: !332)
!408 = !DILocation(line: 0, scope: !350)
!409 = !DILocation(line: 259, column: 3, scope: !350)
!410 = !DILocation(line: 226, column: 20, scope: !332)
!411 = !DILocation(line: 227, column: 21, scope: !332)
!412 = !DILocation(line: 232, column: 30, scope: !332)
!413 = !DILocation(line: 234, column: 32, scope: !332)
!414 = !DILocation(line: 235, column: 33, scope: !332)
!415 = !DILocation(line: 235, column: 11, scope: !332)
!416 = !DILocation(line: 233, column: 9, scope: !332)
!417 = !DILocation(line: 236, column: 13, scope: !332)
!418 = !DILocation(line: 236, column: 22, scope: !332)
!419 = !DILocation(line: 236, column: 25, scope: !332)
!420 = !DILocation(line: 236, column: 19, scope: !332)
!421 = !DILocation(line: 231, column: 7, scope: !332)
!422 = !DILocation(line: 236, column: 7, scope: !332)
!423 = !DILocation(line: 237, column: 7, scope: !332)
!424 = !DILocation(line: 238, column: 7, scope: !332)
!425 = !DILocation(line: 241, column: 28, scope: !332)
!426 = !DILocation(line: 243, column: 30, scope: !332)
!427 = !DILocation(line: 244, column: 31, scope: !332)
!428 = !DILocation(line: 244, column: 9, scope: !332)
!429 = !DILocation(line: 242, column: 7, scope: !332)
!430 = !DILocation(line: 245, column: 13, scope: !332)
!431 = !DILocation(line: 245, column: 29, scope: !332)
!432 = !DILocation(line: 245, column: 18, scope: !332)
!433 = !DILocation(line: 245, column: 7, scope: !332)
!434 = !DILocation(line: 246, column: 22, scope: !332)
!435 = !DILocation(line: 247, column: 21, scope: !332)
!436 = !DILocation(line: 216, column: 60, scope: !333)
!437 = !DILocation(line: 216, column: 37, scope: !333)
!438 = distinct !{!438, !375, !439, !405, !406}
!439 = !DILocation(line: 258, column: 3, scope: !330)
!440 = !DILocation(line: 192, column: 31, scope: !298)
!441 = !DILocation(line: 265, column: 17, scope: !298)
!442 = !DILocation(line: 267, column: 22, scope: !298)
!443 = !DILocation(line: 267, column: 17, scope: !298)
!444 = !DILocation(line: 268, column: 1, scope: !298)
!445 = !DILocation(line: 261, column: 19, scope: !352)
!446 = !DILocation(line: 0, scope: !352)
!447 = !DILocation(line: 262, column: 19, scope: !352)
!448 = !DILocation(line: 263, column: 20, scope: !352)
!449 = !DILocation(line: 263, column: 15, scope: !352)
!450 = !DILocation(line: 259, column: 59, scope: !353)
!451 = !DILocation(line: 259, column: 37, scope: !353)
!452 = distinct !{!452, !409, !453, !405, !406}
!453 = !DILocation(line: 264, column: 3, scope: !350)
!454 = distinct !DISubprogram(name: "Hacl_SHA2_512_update_multi", scope: !3, file: !3, line: 371, type: !455, scopeLine: 372, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !457)
!455 = !DISubroutineType(types: !456)
!456 = !{null, !56, !291, !5}
!457 = !{!458, !459, !460}
!458 = !DILocalVariable(name: "state", arg: 1, scope: !454, file: !3, line: 371, type: !56)
!459 = !DILocalVariable(name: "data", arg: 2, scope: !454, file: !3, line: 371, type: !291)
!460 = !DILocalVariable(name: "n1", arg: 3, scope: !454, file: !3, line: 371, type: !5)
!461 = !DILocation(line: 0, scope: !454)
!462 = !DILocation(line: 373, column: 3, scope: !454)
!463 = !DILocation(line: 374, column: 1, scope: !454)
!464 = distinct !DISubprogram(name: "Hacl_Impl_SHA2_512_update_multi", scope: !3, file: !3, line: 270, type: !455, scopeLine: 271, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !465)
!465 = !{!466, !467, !468, !469, !471}
!466 = !DILocalVariable(name: "state", arg: 1, scope: !464, file: !3, line: 270, type: !56)
!467 = !DILocalVariable(name: "data", arg: 2, scope: !464, file: !3, line: 270, type: !291)
!468 = !DILocalVariable(name: "n1", arg: 3, scope: !464, file: !3, line: 270, type: !5)
!469 = !DILocalVariable(name: "i", scope: !470, file: !3, line: 272, type: !5)
!470 = distinct !DILexicalBlock(scope: !464, file: !3, line: 272, column: 3)
!471 = !DILocalVariable(name: "b", scope: !472, file: !3, line: 274, type: !291)
!472 = distinct !DILexicalBlock(scope: !473, file: !3, line: 273, column: 3)
!473 = distinct !DILexicalBlock(scope: !470, file: !3, line: 272, column: 3)
!474 = !DILocation(line: 0, scope: !464)
!475 = !DILocation(line: 0, scope: !470)
!476 = !DILocation(line: 272, column: 37, scope: !473)
!477 = !DILocation(line: 272, column: 3, scope: !470)
!478 = !DILocation(line: 277, column: 1, scope: !464)
!479 = !DILocation(line: 274, column: 27, scope: !472)
!480 = !DILocation(line: 274, column: 23, scope: !472)
!481 = !DILocation(line: 0, scope: !472)
!482 = !DILocation(line: 275, column: 5, scope: !472)
!483 = !DILocation(line: 272, column: 49, scope: !473)
!484 = distinct !{!484, !477, !485, !405, !406}
!485 = !DILocation(line: 276, column: 3, scope: !470)
!486 = distinct !DISubprogram(name: "Hacl_SHA2_512_update_last", scope: !3, file: !3, line: 376, type: !487, scopeLine: 377, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !489)
!487 = !DISubroutineType(types: !488)
!488 = !{null, !56, !291, !10}
!489 = !{!490, !491, !492}
!490 = !DILocalVariable(name: "state", arg: 1, scope: !486, file: !3, line: 376, type: !56)
!491 = !DILocalVariable(name: "data", arg: 2, scope: !486, file: !3, line: 376, type: !291)
!492 = !DILocalVariable(name: "len", arg: 3, scope: !486, file: !3, line: 376, type: !10)
!493 = !DILocation(line: 0, scope: !486)
!494 = !DILocation(line: 378, column: 3, scope: !486)
!495 = !DILocation(line: 379, column: 1, scope: !486)
!496 = distinct !DISubprogram(name: "Hacl_Impl_SHA2_512_update_last", scope: !3, file: !3, line: 279, type: !487, scopeLine: 280, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !497)
!497 = !{!498, !499, !500, !501, !505, !506, !507, !508, !509, !517, !518, !519}
!498 = !DILocalVariable(name: "state", arg: 1, scope: !496, file: !3, line: 279, type: !56)
!499 = !DILocalVariable(name: "data", arg: 2, scope: !496, file: !3, line: 279, type: !291)
!500 = !DILocalVariable(name: "len", arg: 3, scope: !496, file: !3, line: 279, type: !10)
!501 = !DILocalVariable(name: "blocks", scope: !496, file: !3, line: 281, type: !502)
!502 = !DICompositeType(tag: DW_TAG_array_type, baseType: !13, size: 2048, elements: !503)
!503 = !{!504}
!504 = !DISubrange(count: 256)
!505 = !DILocalVariable(name: "nb", scope: !496, file: !3, line: 282, type: !5)
!506 = !DILocalVariable(name: "final_blocks", scope: !496, file: !3, line: 287, type: !291)
!507 = !DILocalVariable(name: "n1", scope: !496, file: !3, line: 293, type: !10)
!508 = !DILocalVariable(name: "padding", scope: !496, file: !3, line: 294, type: !291)
!509 = !DILocalVariable(name: "encodedlen", scope: !496, file: !3, line: 296, type: !510)
!510 = !DIDerivedType(tag: DW_TAG_typedef, name: "FStar_UInt128_t", file: !511, line: 37, baseType: !512)
!511 = !DIFile(filename: "hacl-c/hacl-c/FStar.h", directory: "/mnt/c/Users/fwill/Documents/HS24/semester_project/tools/binsec/binsec/examples/hacl", checksumkind: CSK_MD5, checksum: "f30034e5606e554271b07b1e7e8a42fa")
!512 = !DIDerivedType(tag: DW_TAG_typedef, name: "FStar_UInt128_uint128", file: !511, line: 35, baseType: !513)
!513 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !511, line: 30, size: 128, elements: !514)
!514 = !{!515, !516}
!515 = !DIDerivedType(tag: DW_TAG_member, name: "low", scope: !513, file: !511, line: 32, baseType: !10, size: 64)
!516 = !DIDerivedType(tag: DW_TAG_member, name: "high", scope: !513, file: !511, line: 33, baseType: !10, size: 64, offset: 64)
!517 = !DILocalVariable(name: "pad0len", scope: !496, file: !3, line: 301, type: !5)
!518 = !DILocalVariable(name: "buf1", scope: !496, file: !3, line: 302, type: !291)
!519 = !DILocalVariable(name: "buf2", scope: !496, file: !3, line: 303, type: !291)
!520 = !DILocation(line: 0, scope: !496)
!521 = !DILocation(line: 281, column: 3, scope: !496)
!522 = !DILocation(line: 281, column: 11, scope: !496)
!523 = !DILocation(line: 283, column: 11, scope: !524)
!524 = distinct !DILexicalBlock(scope: !496, file: !3, line: 283, column: 7)
!525 = !DILocation(line: 288, column: 7, scope: !496)
!526 = !DILocation(line: 292, column: 30, scope: !496)
!527 = !DILocation(line: 292, column: 3, scope: !496)
!528 = !DILocation(line: 293, column: 17, scope: !496)
!529 = !DILocation(line: 294, column: 35, scope: !496)
!530 = !DILocation(line: 295, column: 3, scope: !496)
!531 = !DILocation(line: 296, column: 3, scope: !496)
!532 = !DILocation(line: 297, column: 48, scope: !496)
!533 = !DILocation(line: 298, column: 9, scope: !496)
!534 = !DILocation(line: 297, column: 30, scope: !496)
!535 = !{!536, !116, i64 0}
!536 = !{!"", !116, i64 0, !116, i64 8}
!537 = !{!536, !116, i64 8}
!538 = !DILocation(line: 297, column: 5, scope: !496)
!539 = !DILocation(line: 301, column: 29, scope: !496)
!540 = !DILocation(line: 301, column: 79, scope: !496)
!541 = !DILocation(line: 303, column: 27, scope: !496)
!542 = !DILocation(line: 303, column: 42, scope: !496)
!543 = !DILocation(line: 304, column: 12, scope: !496)
!544 = !{!117, !117, i64 0}
!545 = !DILocation(line: 305, column: 3, scope: !496)
!546 = !DILocation(line: 306, column: 3, scope: !496)
!547 = !DILocation(line: 307, column: 1, scope: !496)
!548 = distinct !DISubprogram(name: "Hacl_SHA2_512_finish", scope: !3, file: !3, line: 381, type: !289, scopeLine: 382, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !549)
!549 = !{!550, !551}
!550 = !DILocalVariable(name: "state", arg: 1, scope: !548, file: !3, line: 381, type: !56)
!551 = !DILocalVariable(name: "hash1", arg: 2, scope: !548, file: !3, line: 381, type: !291)
!552 = !DILocation(line: 0, scope: !548)
!553 = !DILocation(line: 383, column: 3, scope: !548)
!554 = !DILocation(line: 384, column: 1, scope: !548)
!555 = distinct !DISubprogram(name: "Hacl_Impl_SHA2_512_finish", scope: !3, file: !3, line: 309, type: !289, scopeLine: 310, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !556)
!556 = !{!557, !558, !559}
!557 = !DILocalVariable(name: "state", arg: 1, scope: !555, file: !3, line: 309, type: !56)
!558 = !DILocalVariable(name: "hash1", arg: 2, scope: !555, file: !3, line: 309, type: !291)
!559 = !DILocalVariable(name: "hash_w", scope: !555, file: !3, line: 311, type: !56)
!560 = !DILocation(line: 0, scope: !555)
!561 = !DILocation(line: 311, column: 28, scope: !555)
!562 = !DILocation(line: 312, column: 3, scope: !555)
!563 = !DILocation(line: 313, column: 1, scope: !555)
!564 = distinct !DISubprogram(name: "Hacl_SHA2_512_hash", scope: !3, file: !3, line: 386, type: !565, scopeLine: 387, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !567)
!565 = !DISubroutineType(types: !566)
!566 = !{null, !291, !291, !5}
!567 = !{!568, !569, !570}
!568 = !DILocalVariable(name: "hash1", arg: 1, scope: !564, file: !3, line: 386, type: !291)
!569 = !DILocalVariable(name: "input", arg: 2, scope: !564, file: !3, line: 386, type: !291)
!570 = !DILocalVariable(name: "len", arg: 3, scope: !564, file: !3, line: 386, type: !5)
!571 = !DILocation(line: 0, scope: !564)
!572 = !DILocation(line: 388, column: 3, scope: !564)
!573 = !DILocation(line: 389, column: 1, scope: !564)
!574 = distinct !DISubprogram(name: "Hacl_Impl_SHA2_512_hash", scope: !3, file: !3, line: 315, type: !565, scopeLine: 316, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !575)
!575 = !{!576, !577, !578, !579, !583, !585, !586, !587, !588}
!576 = !DILocalVariable(name: "hash1", arg: 1, scope: !574, file: !3, line: 315, type: !291)
!577 = !DILocalVariable(name: "input", arg: 2, scope: !574, file: !3, line: 315, type: !291)
!578 = !DILocalVariable(name: "len", arg: 3, scope: !574, file: !3, line: 315, type: !5)
!579 = !DILocalVariable(name: "state", scope: !574, file: !3, line: 318, type: !580)
!580 = !DICompositeType(tag: DW_TAG_array_type, baseType: !10, size: 10816, elements: !581)
!581 = !{!582}
!582 = !DISubrange(count: 169)
!583 = !DILocalVariable(name: "_i", scope: !584, file: !3, line: 319, type: !5)
!584 = distinct !DILexicalBlock(scope: !574, file: !3, line: 319, column: 3)
!585 = !DILocalVariable(name: "n1", scope: !574, file: !3, line: 321, type: !5)
!586 = !DILocalVariable(name: "r", scope: !574, file: !3, line: 322, type: !5)
!587 = !DILocalVariable(name: "input_blocks", scope: !574, file: !3, line: 323, type: !291)
!588 = !DILocalVariable(name: "input_last", scope: !574, file: !3, line: 324, type: !291)
!589 = !DILocation(line: 0, scope: !574)
!590 = !DILocation(line: 318, column: 3, scope: !574)
!591 = !DILocation(line: 318, column: 12, scope: !574)
!592 = !DILocation(line: 0, scope: !584)
!593 = !DILocation(line: 320, column: 15, scope: !594)
!594 = distinct !DILexicalBlock(scope: !584, file: !3, line: 319, column: 3)
!595 = !DILocation(line: 321, column: 21, scope: !574)
!596 = !DILocation(line: 322, column: 20, scope: !574)
!597 = !DILocation(line: 324, column: 36, scope: !574)
!598 = !DILocation(line: 324, column: 31, scope: !574)
!599 = !DILocation(line: 325, column: 27, scope: !574)
!600 = !DILocation(line: 325, column: 3, scope: !574)
!601 = !DILocation(line: 326, column: 3, scope: !574)
!602 = !DILocation(line: 327, column: 53, scope: !574)
!603 = !DILocation(line: 327, column: 3, scope: !574)
!604 = !DILocation(line: 328, column: 3, scope: !574)
!605 = !DILocation(line: 329, column: 1, scope: !574)
!606 = distinct !DISubprogram(name: "Hacl_Hash_Lib_LoadStore_uint64s_from_be_bytes", scope: !3, file: !3, line: 28, type: !455, scopeLine: 29, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !607)
!607 = !{!608, !609, !610, !611, !613, !616}
!608 = !DILocalVariable(name: "output", arg: 1, scope: !606, file: !3, line: 28, type: !56)
!609 = !DILocalVariable(name: "input", arg: 2, scope: !606, file: !3, line: 28, type: !291)
!610 = !DILocalVariable(name: "len", arg: 3, scope: !606, file: !3, line: 28, type: !5)
!611 = !DILocalVariable(name: "i", scope: !612, file: !3, line: 30, type: !5)
!612 = distinct !DILexicalBlock(scope: !606, file: !3, line: 30, column: 3)
!613 = !DILocalVariable(name: "x0", scope: !614, file: !3, line: 32, type: !291)
!614 = distinct !DILexicalBlock(scope: !615, file: !3, line: 31, column: 3)
!615 = distinct !DILexicalBlock(scope: !612, file: !3, line: 30, column: 3)
!616 = !DILocalVariable(name: "inputi", scope: !614, file: !3, line: 33, type: !10)
!617 = !DILocation(line: 0, scope: !606)
!618 = !DILocation(line: 0, scope: !612)
!619 = !DILocation(line: 30, column: 3, scope: !612)
!620 = !DILocation(line: 36, column: 1, scope: !606)
!621 = !DILocation(line: 32, column: 40, scope: !614)
!622 = !DILocation(line: 32, column: 25, scope: !614)
!623 = !DILocation(line: 0, scope: !614)
!624 = !DILocation(line: 33, column: 23, scope: !614)
!625 = !DILocation(line: 34, column: 5, scope: !614)
!626 = !DILocation(line: 34, column: 15, scope: !614)
!627 = !DILocation(line: 30, column: 50, scope: !615)
!628 = !DILocation(line: 30, column: 37, scope: !615)
!629 = distinct !{!629, !619, !630, !405, !406}
!630 = !DILocation(line: 35, column: 3, scope: !612)
!631 = distinct !DISubprogram(name: "__bswap_64", scope: !632, file: !632, line: 70, type: !633, scopeLine: 71, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !635)
!632 = !DIFile(filename: "/usr/include/bits/byteswap.h", directory: "", checksumkind: CSK_MD5, checksum: "98f83253ffd9c64e7486789204e9fa05")
!633 = !DISubroutineType(types: !634)
!634 = !{!11, !11}
!635 = !{!636}
!636 = !DILocalVariable(name: "__bsx", arg: 1, scope: !631, file: !632, line: 70, type: !11)
!637 = !DILocation(line: 0, scope: !631)
!638 = !DILocation(line: 75, column: 10, scope: !631)
!639 = !DILocation(line: 75, column: 3, scope: !631)
!640 = distinct !DISubprogram(name: "load64", scope: !641, file: !641, line: 347, type: !642, scopeLine: 347, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !644)
!641 = !DIFile(filename: "hacl-c/hacl-c/kremlib.h", directory: "/mnt/c/Users/fwill/Documents/HS24/semester_project/tools/binsec/binsec/examples/hacl", checksumkind: CSK_MD5, checksum: "cde125f1f98cb7b9ee1f380d4178ebe4")
!642 = !DISubroutineType(types: !643)
!643 = !{!10, !291}
!644 = !{!645, !646}
!645 = !DILocalVariable(name: "b", arg: 1, scope: !640, file: !641, line: 347, type: !291)
!646 = !DILocalVariable(name: "x", scope: !640, file: !641, line: 348, type: !10)
!647 = !DILocation(line: 0, scope: !640)
!648 = !DILocation(line: 349, column: 3, scope: !640)
!649 = !DILocation(line: 350, column: 3, scope: !640)
!650 = !DISubprogram(name: "FStar_UInt128_shift_left", scope: !511, file: !511, line: 57, type: !651, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !653)
!651 = !DISubroutineType(types: !652)
!652 = !{!512, !512, !5}
!653 = !{}
!654 = !DISubprogram(name: "FStar_UInt128_add", scope: !511, file: !511, line: 41, type: !655, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !653)
!655 = !DISubroutineType(types: !656)
!656 = !{!512, !512, !512}
!657 = !DISubprogram(name: "FStar_UInt128_mul_wide", scope: !511, file: !511, line: 78, type: !658, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !653)
!658 = !DISubroutineType(types: !659)
!659 = !{!512, !10, !10}
!660 = !DISubprogram(name: "FStar_UInt128_uint64_to_uint128", scope: !511, file: !511, line: 65, type: !661, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !653)
!661 = !DISubroutineType(types: !662)
!662 = !{!512, !10}
!663 = distinct !DISubprogram(name: "store128_be", scope: !641, file: !641, line: 557, type: !664, scopeLine: 557, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !667)
!664 = !DISubroutineType(types: !665)
!665 = !{null, !291, !666}
!666 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint128_t", file: !641, line: 510, baseType: !512)
!667 = !{!668, !669}
!668 = !DILocalVariable(name: "b", arg: 1, scope: !663, file: !641, line: 557, type: !291)
!669 = !DILocalVariable(name: "n", arg: 2, scope: !663, file: !641, line: 557, type: !666)
!670 = !DILocation(line: 0, scope: !663)
!671 = !DILocation(line: 557, column: 54, scope: !663)
!672 = !DILocation(line: 557, column: 59, scope: !663)
!673 = !DILocation(line: 557, column: 80, scope: !663)
!674 = distinct !DISubprogram(name: "store128_be_", scope: !641, file: !641, line: 532, type: !675, scopeLine: 532, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !678)
!675 = !DISubroutineType(types: !676)
!676 = !{null, !291, !677}
!677 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !666, size: 32)
!678 = !{!679, !680}
!679 = !DILocalVariable(name: "b", arg: 1, scope: !674, file: !641, line: 532, type: !291)
!680 = !DILocalVariable(name: "n", arg: 2, scope: !674, file: !641, line: 532, type: !677)
!681 = !DILocation(line: 0, scope: !674)
!682 = !DILocation(line: 533, column: 3, scope: !674)
!683 = !DILocation(line: 534, column: 3, scope: !674)
!684 = !DILocation(line: 535, column: 1, scope: !674)
!685 = distinct !DISubprogram(name: "store64", scope: !641, file: !641, line: 357, type: !686, scopeLine: 357, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !688)
!686 = !DISubroutineType(types: !687)
!687 = !{null, !291, !10}
!688 = !{!689, !690}
!689 = !DILocalVariable(name: "b", arg: 1, scope: !685, file: !641, line: 357, type: !291)
!690 = !DILocalVariable(name: "i", arg: 2, scope: !685, file: !641, line: 357, type: !10)
!691 = !DILocation(line: 0, scope: !685)
!692 = !DILocation(line: 357, column: 54, scope: !685)
!693 = !DILocation(line: 357, column: 72, scope: !685)
!694 = distinct !DISubprogram(name: "Hacl_Hash_Lib_LoadStore_uint64s_to_be_bytes", scope: !3, file: !3, line: 39, type: !695, scopeLine: 40, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !697)
!695 = !DISubroutineType(types: !696)
!696 = !{null, !291, !56, !5}
!697 = !{!698, !699, !700, !701, !703, !706}
!698 = !DILocalVariable(name: "output", arg: 1, scope: !694, file: !3, line: 39, type: !291)
!699 = !DILocalVariable(name: "input", arg: 2, scope: !694, file: !3, line: 39, type: !56)
!700 = !DILocalVariable(name: "len", arg: 3, scope: !694, file: !3, line: 39, type: !5)
!701 = !DILocalVariable(name: "i", scope: !702, file: !3, line: 41, type: !5)
!702 = distinct !DILexicalBlock(scope: !694, file: !3, line: 41, column: 3)
!703 = !DILocalVariable(name: "hd1", scope: !704, file: !3, line: 43, type: !10)
!704 = distinct !DILexicalBlock(scope: !705, file: !3, line: 42, column: 3)
!705 = distinct !DILexicalBlock(scope: !702, file: !3, line: 41, column: 3)
!706 = !DILocalVariable(name: "x0", scope: !704, file: !3, line: 44, type: !291)
!707 = !DILocation(line: 0, scope: !694)
!708 = !DILocation(line: 0, scope: !702)
!709 = !DILocation(line: 41, column: 3, scope: !702)
!710 = !DILocation(line: 47, column: 1, scope: !694)
!711 = !DILocation(line: 43, column: 20, scope: !704)
!712 = !DILocation(line: 0, scope: !704)
!713 = !DILocation(line: 44, column: 41, scope: !704)
!714 = !DILocation(line: 44, column: 26, scope: !704)
!715 = !DILocation(line: 45, column: 5, scope: !704)
!716 = !DILocation(line: 41, column: 50, scope: !705)
!717 = !DILocation(line: 41, column: 37, scope: !705)
!718 = distinct !{!718, !709, !719, !405, !406}
!719 = !DILocation(line: 46, column: 3, scope: !702)
