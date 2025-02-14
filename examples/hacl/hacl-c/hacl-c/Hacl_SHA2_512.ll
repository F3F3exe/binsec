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

; Function Attrs: mustprogress nofree norecurse nosync nounwind uwtable willreturn writeonly
define dso_local void @Hacl_SHA2_512_init(i64* noundef %0) local_unnamed_addr #0 !dbg !53 {
  call void @llvm.dbg.value(metadata i64* %0, metadata !58, metadata !DIExpression()), !dbg !59
  call fastcc void @Hacl_Impl_SHA2_512_init(i64* noundef %0), !dbg !60
  ret void, !dbg !61
}

; Function Attrs: mustprogress nofree nosync nounwind readnone speculatable willreturn
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: mustprogress nofree norecurse nosync nounwind uwtable willreturn writeonly
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

; Function Attrs: nofree nosync nounwind uwtable
define dso_local void @Hacl_SHA2_512_update(i64* nocapture noundef %0, i8* nocapture noundef readonly %1) local_unnamed_addr #2 !dbg !288 {
  call void @llvm.dbg.value(metadata i64* %0, metadata !293, metadata !DIExpression()), !dbg !295
  call void @llvm.dbg.value(metadata i8* %1, metadata !294, metadata !DIExpression()), !dbg !295
  call fastcc void @Hacl_Impl_SHA2_512_update(i64* noundef %0, i8* noundef %1), !dbg !296
  ret void, !dbg !297
}

; Function Attrs: nofree nosync nounwind uwtable
define internal fastcc void @Hacl_Impl_SHA2_512_update(i64* nocapture noundef %0, i8* nocapture noundef readonly %1) unnamed_addr #2 !dbg !298 {
  %3 = alloca [16 x i64], align 8
  %4 = bitcast [16 x i64]* %3 to i8*
  %5 = alloca [8 x i64], align 8
  call void @llvm.dbg.value(metadata i64* %0, metadata !300, metadata !DIExpression()), !dbg !357
  call void @llvm.dbg.value(metadata i8* %1, metadata !301, metadata !DIExpression()), !dbg !357
  %6 = bitcast [16 x i64]* %3 to i8*, !dbg !358
  call void @llvm.lifetime.start.p0i8(i64 128, i8* nonnull %6) #9, !dbg !358
  call void @llvm.dbg.declare(metadata [16 x i64]* %3, metadata !302, metadata !DIExpression()), !dbg !359
  call void @llvm.dbg.value(metadata i32 0, metadata !306, metadata !DIExpression()), !dbg !360
  call void @llvm.memset.p0i8.i32(i8* noundef nonnull align 8 dereferenceable(128) %4, i8 0, i32 128, i1 false), !dbg !361, !tbaa !115
  call void @llvm.dbg.value(metadata i32 undef, metadata !306, metadata !DIExpression()), !dbg !360
  call void @llvm.dbg.value(metadata i32 undef, metadata !306, metadata !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value)), !dbg !360
  br label %7, !dbg !363

7:                                                ; preds = %2, %7
  %8 = phi i32 [ %15, %7 ], [ 0, %2 ]
  call void @llvm.dbg.value(metadata i32 %8, metadata !372, metadata !DIExpression()) #9, !dbg !378
  %9 = shl i32 %8, 3, !dbg !379
  %10 = getelementptr inbounds i8, i8* %1, i32 %9, !dbg !380
  call void @llvm.dbg.value(metadata i8* %10, metadata !373, metadata !DIExpression()) #9, !dbg !381
  call void @llvm.dbg.value(metadata i8* %10, metadata !382, metadata !DIExpression()) #9, !dbg !389
  %11 = bitcast i8* %10 to i64*, !dbg !391
  %12 = load i64, i64* %11, align 1, !dbg !391
  call void @llvm.dbg.value(metadata i64 %12, metadata !388, metadata !DIExpression()) #9, !dbg !389
  call void @llvm.dbg.value(metadata i64 %12, metadata !392, metadata !DIExpression()) #9, !dbg !398
  %13 = call i64 @llvm.bswap.i64(i64 %12) #9, !dbg !400
  call void @llvm.dbg.value(metadata i64 %13, metadata !376, metadata !DIExpression()) #9, !dbg !381
  %14 = getelementptr inbounds [16 x i64], [16 x i64]* %3, i32 0, i32 %8, !dbg !401
  store i64 %13, i64* %14, align 8, !dbg !402, !tbaa !115
  %15 = add nuw nsw i32 %8, 1, !dbg !403
  call void @llvm.dbg.value(metadata i32 %15, metadata !372, metadata !DIExpression()) #9, !dbg !378
  %16 = icmp eq i32 %15, 16, !dbg !404
  br i1 %16, label %17, label %7, !dbg !363, !llvm.loop !405

17:                                               ; preds = %7
  call void @llvm.dbg.value(metadata i64* %20, metadata !308, metadata !DIExpression()), !dbg !357
  %18 = getelementptr inbounds i64, i64* %0, i32 80, !dbg !409
  %19 = bitcast i64* %18 to i8*, !dbg !357
  call void @llvm.dbg.value(metadata i64* %18, metadata !309, metadata !DIExpression()), !dbg !357
  call void @llvm.dbg.value(metadata i64* %0, metadata !310, metadata !DIExpression()), !dbg !357
  call void @llvm.dbg.value(metadata i64* %113, metadata !311, metadata !DIExpression()), !dbg !357
  call void @llvm.dbg.value(metadata i32 0, metadata !312, metadata !DIExpression()), !dbg !410
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* noundef nonnull align 4 dereferenceable(128) %19, i8* noundef nonnull align 8 dereferenceable(128) %4, i32 128, i1 false), !dbg !411, !tbaa !115
  call void @llvm.dbg.value(metadata i32 undef, metadata !312, metadata !DIExpression()), !dbg !410
  call void @llvm.dbg.value(metadata i32 undef, metadata !314, metadata !DIExpression()), !dbg !412
  call void @llvm.dbg.value(metadata i32 undef, metadata !312, metadata !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value)), !dbg !410
  %20 = getelementptr inbounds i64, i64* %0, i32 160, !dbg !413
  br label %40, !dbg !414

21:                                               ; preds = %40
  %22 = bitcast [8 x i64]* %5 to i8*, !dbg !415
  call void @llvm.lifetime.start.p0i8(i64 64, i8* nonnull %22) #9, !dbg !415
  call void @llvm.dbg.declare(metadata [8 x i64]* %5, metadata !325, metadata !DIExpression()), !dbg !416
  %23 = getelementptr inbounds [8 x i64], [8 x i64]* %5, i32 0, i32 0, !dbg !417
  %24 = bitcast i64* %20 to i8*, !dbg !417
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* noundef nonnull align 8 dereferenceable(64) %22, i8* noundef nonnull align 4 dereferenceable(64) %24, i32 64, i1 false), !dbg !417
  call void @llvm.dbg.value(metadata i32 0, metadata !329, metadata !DIExpression()), !dbg !418
  %25 = getelementptr inbounds [8 x i64], [8 x i64]* %5, i32 0, i32 1
  %26 = getelementptr inbounds [8 x i64], [8 x i64]* %5, i32 0, i32 2
  %27 = getelementptr inbounds [8 x i64], [8 x i64]* %5, i32 0, i32 3
  %28 = getelementptr inbounds [8 x i64], [8 x i64]* %5, i32 0, i32 4
  %29 = getelementptr inbounds [8 x i64], [8 x i64]* %5, i32 0, i32 5
  %30 = getelementptr inbounds [8 x i64], [8 x i64]* %5, i32 0, i32 6
  %31 = getelementptr inbounds [8 x i64], [8 x i64]* %5, i32 0, i32 7
  %32 = load i64, i64* %23, align 8, !tbaa !115
  %33 = load i64, i64* %25, align 8, !tbaa !115
  %34 = load i64, i64* %26, align 8, !tbaa !115
  %35 = load i64, i64* %27, align 8, !tbaa !115
  %36 = load i64, i64* %28, align 8, !tbaa !115
  %37 = load i64, i64* %29, align 8, !tbaa !115
  %38 = load i64, i64* %30, align 8, !tbaa !115
  %39 = load i64, i64* %31, align 8, !tbaa !115
  call void @llvm.dbg.value(metadata i32 0, metadata !329, metadata !DIExpression()), !dbg !418
  br label %71, !dbg !419

40:                                               ; preds = %17, %40
  %41 = phi i32 [ %68, %40 ], [ 16, %17 ]
  call void @llvm.dbg.value(metadata i32 %41, metadata !317, metadata !DIExpression()), !dbg !420
  %42 = add nsw i32 %41, -16, !dbg !421
  %43 = getelementptr inbounds i64, i64* %18, i32 %42, !dbg !422
  %44 = load i64, i64* %43, align 4, !dbg !422, !tbaa !115
  call void @llvm.dbg.value(metadata i64 %44, metadata !319, metadata !DIExpression()), !dbg !423
  %45 = add nsw i32 %41, -15, !dbg !424
  %46 = getelementptr inbounds i64, i64* %18, i32 %45, !dbg !425
  %47 = load i64, i64* %46, align 4, !dbg !425, !tbaa !115
  call void @llvm.dbg.value(metadata i64 %47, metadata !322, metadata !DIExpression()), !dbg !423
  %48 = add nsw i32 %41, -7, !dbg !426
  %49 = getelementptr inbounds i64, i64* %18, i32 %48, !dbg !427
  %50 = load i64, i64* %49, align 4, !dbg !427, !tbaa !115
  call void @llvm.dbg.value(metadata i64 %50, metadata !323, metadata !DIExpression()), !dbg !423
  %51 = add nsw i32 %41, -2, !dbg !428
  %52 = getelementptr inbounds i64, i64* %18, i32 %51, !dbg !429
  %53 = load i64, i64* %52, align 4, !dbg !429, !tbaa !115
  call void @llvm.dbg.value(metadata i64 %53, metadata !324, metadata !DIExpression()), !dbg !423
  %54 = call i64 @llvm.fshl.i64(i64 %53, i64 %53, i64 45), !dbg !430
  %55 = call i64 @llvm.fshl.i64(i64 %53, i64 %53, i64 3), !dbg !431
  %56 = lshr i64 %53, 6, !dbg !432
  %57 = xor i64 %55, %56, !dbg !433
  %58 = xor i64 %57, %54, !dbg !434
  %59 = call i64 @llvm.fshl.i64(i64 %47, i64 %47, i64 63), !dbg !435
  %60 = call i64 @llvm.fshl.i64(i64 %47, i64 %47, i64 56), !dbg !436
  %61 = lshr i64 %47, 7, !dbg !437
  %62 = xor i64 %60, %61, !dbg !438
  %63 = xor i64 %62, %59, !dbg !439
  %64 = add i64 %50, %44, !dbg !440
  %65 = add i64 %64, %63, !dbg !441
  %66 = add i64 %65, %58, !dbg !442
  %67 = getelementptr inbounds i64, i64* %18, i32 %41, !dbg !443
  store i64 %66, i64* %67, align 4, !dbg !444, !tbaa !115
  %68 = add nuw nsw i32 %41, 1, !dbg !445
  call void @llvm.dbg.value(metadata i32 %68, metadata !317, metadata !DIExpression()), !dbg !420
  %69 = icmp eq i32 %68, 80, !dbg !446
  br i1 %69, label %21, label %40, !dbg !414, !llvm.loop !447

70:                                               ; preds = %71
  store i64 %108, i64* %23, align 8, !dbg !449, !tbaa !115
  store i64 %73, i64* %25, align 8, !dbg !449, !tbaa !115
  store i64 %74, i64* %26, align 8, !dbg !449, !tbaa !115
  store i64 %75, i64* %27, align 8, !dbg !449, !tbaa !115
  store i64 %109, i64* %28, align 8, !dbg !449, !tbaa !115
  store i64 %77, i64* %29, align 8, !dbg !449, !tbaa !115
  store i64 %78, i64* %30, align 8, !dbg !449, !tbaa !115
  store i64 %79, i64* %31, align 8, !dbg !449, !tbaa !115
  call void @llvm.dbg.value(metadata i32 0, metadata !349, metadata !DIExpression()), !dbg !450
  br label %116, !dbg !451

71:                                               ; preds = %21, %71
  %72 = phi i32 [ 0, %21 ], [ %110, %71 ]
  %73 = phi i64 [ %32, %21 ], [ %108, %71 ]
  %74 = phi i64 [ %33, %21 ], [ %73, %71 ]
  %75 = phi i64 [ %34, %21 ], [ %74, %71 ]
  %76 = phi i64 [ %35, %21 ], [ %75, %71 ]
  %77 = phi i64 [ %36, %21 ], [ %109, %71 ]
  %78 = phi i64 [ %37, %21 ], [ %77, %71 ]
  %79 = phi i64 [ %38, %21 ], [ %78, %71 ]
  %80 = phi i64 [ %39, %21 ], [ %79, %71 ]
  call void @llvm.dbg.value(metadata i32 %72, metadata !329, metadata !DIExpression()), !dbg !418
  call void @llvm.dbg.value(metadata i64 %73, metadata !331, metadata !DIExpression()), !dbg !449
  call void @llvm.dbg.value(metadata i64 %74, metadata !334, metadata !DIExpression()), !dbg !449
  call void @llvm.dbg.value(metadata i64 %75, metadata !335, metadata !DIExpression()), !dbg !449
  call void @llvm.dbg.value(metadata i64 %76, metadata !336, metadata !DIExpression()), !dbg !449
  call void @llvm.dbg.value(metadata i64 %77, metadata !337, metadata !DIExpression()), !dbg !449
  call void @llvm.dbg.value(metadata i64 %78, metadata !338, metadata !DIExpression()), !dbg !449
  call void @llvm.dbg.value(metadata i64 %79, metadata !339, metadata !DIExpression()), !dbg !449
  call void @llvm.dbg.value(metadata i64 %80, metadata !340, metadata !DIExpression()), !dbg !449
  %81 = getelementptr inbounds i64, i64* %0, i32 %72, !dbg !452
  %82 = load i64, i64* %81, align 4, !dbg !452, !tbaa !115
  call void @llvm.dbg.value(metadata i64 %82, metadata !341, metadata !DIExpression()), !dbg !449
  %83 = getelementptr inbounds i64, i64* %18, i32 %72, !dbg !453
  %84 = load i64, i64* %83, align 4, !dbg !453, !tbaa !115
  call void @llvm.dbg.value(metadata i64 %84, metadata !342, metadata !DIExpression()), !dbg !449
  %85 = call i64 @llvm.fshl.i64(i64 %77, i64 %77, i64 50), !dbg !454
  %86 = call i64 @llvm.fshl.i64(i64 %77, i64 %77, i64 46), !dbg !455
  %87 = call i64 @llvm.fshl.i64(i64 %77, i64 %77, i64 23), !dbg !456
  %88 = xor i64 %86, %87, !dbg !457
  %89 = xor i64 %88, %85, !dbg !458
  %90 = and i64 %78, %77, !dbg !459
  %91 = xor i64 %77, -1, !dbg !460
  %92 = and i64 %79, %91, !dbg !461
  %93 = add i64 %89, %90, !dbg !462
  %94 = add i64 %93, %80, !dbg !463
  %95 = add i64 %94, %92, !dbg !464
  %96 = add i64 %95, %82, !dbg !465
  %97 = add i64 %96, %84, !dbg !466
  call void @llvm.dbg.value(metadata i64 %97, metadata !343, metadata !DIExpression()), !dbg !449
  %98 = call i64 @llvm.fshl.i64(i64 %73, i64 %73, i64 36), !dbg !467
  %99 = call i64 @llvm.fshl.i64(i64 %73, i64 %73, i64 30), !dbg !468
  %100 = call i64 @llvm.fshl.i64(i64 %73, i64 %73, i64 25), !dbg !469
  %101 = xor i64 %99, %100, !dbg !470
  %102 = xor i64 %101, %98, !dbg !471
  %103 = and i64 %74, %73, !dbg !472
  %104 = xor i64 %74, %73, !dbg !473
  %105 = and i64 %104, %75, !dbg !473
  %106 = xor i64 %105, %103, !dbg !474
  %107 = add i64 %106, %102, !dbg !475
  call void @llvm.dbg.value(metadata i64 %107, metadata !344, metadata !DIExpression()), !dbg !449
  %108 = add i64 %107, %97, !dbg !476
  call void @llvm.dbg.value(metadata i64 %108, metadata !345, metadata !DIExpression()), !dbg !449
  %109 = add i64 %97, %76, !dbg !477
  call void @llvm.dbg.value(metadata i64 %109, metadata !346, metadata !DIExpression()), !dbg !449
  call void @llvm.dbg.value(metadata i64* %23, metadata !347, metadata !DIExpression()), !dbg !449
  call void @llvm.dbg.value(metadata i64* %28, metadata !348, metadata !DIExpression()), !dbg !449
  %110 = add nuw nsw i32 %72, 1, !dbg !478
  call void @llvm.dbg.value(metadata i32 %110, metadata !329, metadata !DIExpression()), !dbg !418
  %111 = icmp eq i32 %110, 80, !dbg !479
  br i1 %111, label %70, label %71, !dbg !419, !llvm.loop !480

112:                                              ; preds = %116
  %113 = getelementptr inbounds i64, i64* %0, i32 168, !dbg !482
  %114 = load i64, i64* %113, align 4, !dbg !483, !tbaa !115
  call void @llvm.dbg.value(metadata i64 %114, metadata !355, metadata !DIExpression()), !dbg !357
  call void @llvm.dbg.value(metadata i64 1, metadata !356, metadata !DIExpression()), !dbg !357
  %115 = add i64 %114, 1, !dbg !484
  store i64 %115, i64* %113, align 4, !dbg !485, !tbaa !115
  call void @llvm.lifetime.end.p0i8(i64 64, i8* nonnull %22) #9, !dbg !486
  call void @llvm.lifetime.end.p0i8(i64 128, i8* nonnull %6) #9, !dbg !486
  ret void, !dbg !486

116:                                              ; preds = %70, %116
  %117 = phi i32 [ 0, %70 ], [ %123, %116 ]
  call void @llvm.dbg.value(metadata i32 %117, metadata !349, metadata !DIExpression()), !dbg !450
  %118 = getelementptr inbounds i64, i64* %20, i32 %117, !dbg !487
  %119 = load i64, i64* %118, align 4, !dbg !487, !tbaa !115
  call void @llvm.dbg.value(metadata i64 %119, metadata !351, metadata !DIExpression()), !dbg !488
  %120 = getelementptr inbounds [8 x i64], [8 x i64]* %5, i32 0, i32 %117, !dbg !489
  %121 = load i64, i64* %120, align 8, !dbg !489, !tbaa !115
  call void @llvm.dbg.value(metadata i64 %121, metadata !354, metadata !DIExpression()), !dbg !488
  %122 = add i64 %121, %119, !dbg !490
  store i64 %122, i64* %118, align 4, !dbg !491, !tbaa !115
  %123 = add nuw nsw i32 %117, 1, !dbg !492
  call void @llvm.dbg.value(metadata i32 %123, metadata !349, metadata !DIExpression()), !dbg !450
  %124 = icmp eq i32 %123, 8, !dbg !493
  br i1 %124, label %112, label %116, !dbg !451, !llvm.loop !494
}

; Function Attrs: nofree nosync nounwind uwtable
define dso_local void @Hacl_SHA2_512_update_multi(i64* nocapture noundef %0, i8* nocapture noundef readonly %1, i32 noundef %2) local_unnamed_addr #2 !dbg !496 {
  call void @llvm.dbg.value(metadata i64* %0, metadata !498, metadata !DIExpression()), !dbg !501
  call void @llvm.dbg.value(metadata i8* %1, metadata !499, metadata !DIExpression()), !dbg !501
  call void @llvm.dbg.value(metadata i32 %2, metadata !500, metadata !DIExpression()), !dbg !501
  call void @llvm.dbg.value(metadata i64* %0, metadata !502, metadata !DIExpression()) #9, !dbg !512
  call void @llvm.dbg.value(metadata i8* %1, metadata !505, metadata !DIExpression()) #9, !dbg !512
  call void @llvm.dbg.value(metadata i32 %2, metadata !506, metadata !DIExpression()) #9, !dbg !512
  call void @llvm.dbg.value(metadata i32 0, metadata !507, metadata !DIExpression()) #9, !dbg !514
  %4 = icmp eq i32 %2, 0, !dbg !515
  br i1 %4, label %11, label %5, !dbg !516

5:                                                ; preds = %3, %5
  %6 = phi i32 [ %9, %5 ], [ 0, %3 ]
  call void @llvm.dbg.value(metadata i32 %6, metadata !507, metadata !DIExpression()) #9, !dbg !514
  %7 = shl i32 %6, 7, !dbg !517
  %8 = getelementptr inbounds i8, i8* %1, i32 %7, !dbg !518
  call void @llvm.dbg.value(metadata i8* %8, metadata !509, metadata !DIExpression()) #9, !dbg !519
  call fastcc void @Hacl_Impl_SHA2_512_update(i64* noundef %0, i8* noundef %8) #9, !dbg !520
  %9 = add nuw i32 %6, 1, !dbg !521
  call void @llvm.dbg.value(metadata i32 %9, metadata !507, metadata !DIExpression()) #9, !dbg !514
  %10 = icmp eq i32 %9, %2, !dbg !515
  br i1 %10, label %11, label %5, !dbg !516, !llvm.loop !522

11:                                               ; preds = %5, %3
  ret void, !dbg !524
}

; Function Attrs: nounwind uwtable
define dso_local void @Hacl_SHA2_512_update_last(i64* nocapture noundef %0, i8* nocapture noundef readonly %1, i64 noundef %2) local_unnamed_addr #3 !dbg !525 {
  call void @llvm.dbg.value(metadata i64* %0, metadata !529, metadata !DIExpression()), !dbg !532
  call void @llvm.dbg.value(metadata i8* %1, metadata !530, metadata !DIExpression()), !dbg !532
  call void @llvm.dbg.value(metadata i64 %2, metadata !531, metadata !DIExpression()), !dbg !532
  call fastcc void @Hacl_Impl_SHA2_512_update_last(i64* noundef %0, i8* noundef %1, i64 noundef %2), !dbg !533
  ret void, !dbg !534
}

; Function Attrs: nounwind uwtable
define internal fastcc void @Hacl_Impl_SHA2_512_update_last(i64* nocapture noundef %0, i8* nocapture noundef readonly %1, i64 noundef %2) unnamed_addr #3 !dbg !535 {
  %4 = alloca [256 x i8], align 1
  %5 = alloca %struct.FStar_UInt128_uint128, align 8
  %6 = alloca %struct.FStar_UInt128_uint128, align 8
  %7 = alloca %struct.FStar_UInt128_uint128, align 8
  %8 = alloca %struct.FStar_UInt128_uint128, align 8
  call void @llvm.dbg.value(metadata i64* %0, metadata !537, metadata !DIExpression()), !dbg !559
  call void @llvm.dbg.value(metadata i8* %1, metadata !538, metadata !DIExpression()), !dbg !559
  call void @llvm.dbg.value(metadata i64 %2, metadata !539, metadata !DIExpression()), !dbg !559
  %9 = getelementptr inbounds [256 x i8], [256 x i8]* %4, i32 0, i32 0, !dbg !560
  call void @llvm.lifetime.start.p0i8(i64 256, i8* nonnull %9) #9, !dbg !560
  call void @llvm.dbg.declare(metadata [256 x i8]* %4, metadata !540, metadata !DIExpression()), !dbg !561
  call void @llvm.memset.p0i8.i32(i8* noundef nonnull align 1 dereferenceable(256) %9, i8 0, i32 256, i1 false), !dbg !561
  %10 = icmp ult i64 %2, 112, !dbg !562
  %11 = select i1 %10, i32 1, i32 2
  call void @llvm.dbg.value(metadata i32 %11, metadata !544, metadata !DIExpression()), !dbg !559
  %12 = getelementptr inbounds [256 x i8], [256 x i8]* %4, i32 0, i32 128, !dbg !564
  %13 = select i1 %10, i8* %12, i8* %9, !dbg !564
  call void @llvm.dbg.value(metadata i8* %13, metadata !545, metadata !DIExpression()), !dbg !559
  %14 = trunc i64 %2 to i32, !dbg !565
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* nonnull align 1 %13, i8* align 1 %1, i32 %14, i1 false), !dbg !566
  %15 = getelementptr inbounds i64, i64* %0, i32 168, !dbg !567
  %16 = load i64, i64* %15, align 4, !dbg !567, !tbaa !115
  call void @llvm.dbg.value(metadata i64 %16, metadata !546, metadata !DIExpression()), !dbg !559
  %17 = getelementptr inbounds i8, i8* %13, i32 %14, !dbg !568
  call void @llvm.dbg.value(metadata i8* %17, metadata !547, metadata !DIExpression()), !dbg !559
  %18 = bitcast %struct.FStar_UInt128_uint128* %5 to i8*, !dbg !569
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %18) #9, !dbg !569
  call void @llvm.dbg.declare(metadata %struct.FStar_UInt128_uint128* %5, metadata !548, metadata !DIExpression()), !dbg !570
  call void @FStar_UInt128_mul_wide(%struct.FStar_UInt128_uint128* nonnull sret(%struct.FStar_UInt128_uint128) align 4 %7, i64 noundef %16, i64 noundef 128) #9, !dbg !571
  call void @FStar_UInt128_uint64_to_uint128(%struct.FStar_UInt128_uint128* nonnull sret(%struct.FStar_UInt128_uint128) align 4 %8, i64 noundef %2) #9, !dbg !572
  %19 = getelementptr inbounds %struct.FStar_UInt128_uint128, %struct.FStar_UInt128_uint128* %7, i32 0, i32 0, !dbg !573
  %20 = load i64, i64* %19, align 8, !dbg !573, !tbaa !574
  %21 = getelementptr inbounds %struct.FStar_UInt128_uint128, %struct.FStar_UInt128_uint128* %7, i32 0, i32 1, !dbg !573
  %22 = load i64, i64* %21, align 8, !dbg !573, !tbaa !576
  %23 = getelementptr inbounds %struct.FStar_UInt128_uint128, %struct.FStar_UInt128_uint128* %8, i32 0, i32 0, !dbg !573
  %24 = load i64, i64* %23, align 8, !dbg !573, !tbaa !574
  %25 = getelementptr inbounds %struct.FStar_UInt128_uint128, %struct.FStar_UInt128_uint128* %8, i32 0, i32 1, !dbg !573
  %26 = load i64, i64* %25, align 8, !dbg !573, !tbaa !576
  call void @FStar_UInt128_add(%struct.FStar_UInt128_uint128* nonnull sret(%struct.FStar_UInt128_uint128) align 4 %6, i64 %20, i64 %22, i64 %24, i64 %26) #9, !dbg !573
  %27 = getelementptr inbounds %struct.FStar_UInt128_uint128, %struct.FStar_UInt128_uint128* %6, i32 0, i32 0, !dbg !577
  %28 = load i64, i64* %27, align 8, !dbg !577, !tbaa !574
  %29 = getelementptr inbounds %struct.FStar_UInt128_uint128, %struct.FStar_UInt128_uint128* %6, i32 0, i32 1, !dbg !577
  %30 = load i64, i64* %29, align 8, !dbg !577, !tbaa !576
  call void @FStar_UInt128_shift_left(%struct.FStar_UInt128_uint128* nonnull sret(%struct.FStar_UInt128_uint128) align 4 %5, i64 %28, i64 %30, i32 noundef 3) #9, !dbg !577
  %31 = sub i32 111, %14, !dbg !578
  %32 = and i32 %31, 127, !dbg !579
  call void @llvm.dbg.value(metadata i32 %32, metadata !556, metadata !DIExpression()), !dbg !559
  call void @llvm.dbg.value(metadata i8* %17, metadata !557, metadata !DIExpression()), !dbg !559
  %33 = getelementptr inbounds i8, i8* %17, i32 1, !dbg !580
  %34 = getelementptr inbounds i8, i8* %33, i32 %32, !dbg !581
  call void @llvm.dbg.value(metadata i8* %34, metadata !558, metadata !DIExpression()), !dbg !559
  store i8 -128, i8* %17, align 1, !dbg !582, !tbaa !583
  %35 = getelementptr inbounds %struct.FStar_UInt128_uint128, %struct.FStar_UInt128_uint128* %5, i32 0, i32 0, !dbg !584
  %36 = load i64, i64* %35, align 8, !dbg !584, !tbaa !574
  %37 = getelementptr inbounds %struct.FStar_UInt128_uint128, %struct.FStar_UInt128_uint128* %5, i32 0, i32 1, !dbg !584
  %38 = load i64, i64* %37, align 8, !dbg !584, !tbaa !576
  call void @llvm.dbg.value(metadata i64 %36, metadata !585, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 64)) #9, !dbg !592
  call void @llvm.dbg.value(metadata i64 %38, metadata !585, metadata !DIExpression(DW_OP_LLVM_fragment, 64, 64)) #9, !dbg !592
  call void @llvm.dbg.value(metadata i8* %34, metadata !591, metadata !DIExpression()) #9, !dbg !592
  call void @llvm.dbg.value(metadata i8* %34, metadata !594, metadata !DIExpression()) #9, !dbg !601
  call void @llvm.dbg.value(metadata %struct.FStar_UInt128_uint128* undef, metadata !600, metadata !DIExpression()) #9, !dbg !601
  call void @llvm.dbg.value(metadata i64 %38, metadata !392, metadata !DIExpression()) #9, !dbg !603
  %39 = call i64 @llvm.bswap.i64(i64 %38) #9, !dbg !605
  call void @llvm.dbg.value(metadata i8* %34, metadata !606, metadata !DIExpression()) #9, !dbg !612
  call void @llvm.dbg.value(metadata i64 %39, metadata !611, metadata !DIExpression()) #9, !dbg !612
  %40 = bitcast i8* %34 to i64*, !dbg !614
  store i64 %39, i64* %40, align 1, !dbg !614
  %41 = getelementptr inbounds i8, i8* %34, i32 8, !dbg !615
  call void @llvm.dbg.value(metadata i64 %36, metadata !392, metadata !DIExpression()) #9, !dbg !616
  %42 = call i64 @llvm.bswap.i64(i64 %36) #9, !dbg !618
  call void @llvm.dbg.value(metadata i8* %41, metadata !606, metadata !DIExpression()) #9, !dbg !619
  call void @llvm.dbg.value(metadata i64 %42, metadata !611, metadata !DIExpression()) #9, !dbg !619
  %43 = bitcast i8* %41 to i64*, !dbg !621
  store i64 %42, i64* %43, align 1, !dbg !621
  call void @llvm.dbg.value(metadata i64* %0, metadata !502, metadata !DIExpression()) #9, !dbg !622
  call void @llvm.dbg.value(metadata i8* %13, metadata !505, metadata !DIExpression()) #9, !dbg !622
  call void @llvm.dbg.value(metadata i32 %11, metadata !506, metadata !DIExpression()) #9, !dbg !622
  call void @llvm.dbg.value(metadata i32 0, metadata !507, metadata !DIExpression()) #9, !dbg !624
  br label %44

44:                                               ; preds = %44, %3
  %45 = phi i32 [ %48, %44 ], [ 0, %3 ]
  call void @llvm.dbg.value(metadata i32 %45, metadata !507, metadata !DIExpression()) #9, !dbg !624
  %46 = shl i32 %45, 7, !dbg !625
  %47 = getelementptr inbounds i8, i8* %13, i32 %46, !dbg !626
  call void @llvm.dbg.value(metadata i8* %47, metadata !509, metadata !DIExpression()) #9, !dbg !627
  call fastcc void @Hacl_Impl_SHA2_512_update(i64* noundef %0, i8* noundef nonnull %47) #9, !dbg !628
  %48 = add nuw i32 %45, 1, !dbg !629
  call void @llvm.dbg.value(metadata i32 %48, metadata !507, metadata !DIExpression()) #9, !dbg !624
  %49 = icmp eq i32 %48, %11, !dbg !630
  br i1 %49, label %50, label %44, !dbg !631, !llvm.loop !632

50:                                               ; preds = %44
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %18) #9, !dbg !634
  call void @llvm.lifetime.end.p0i8(i64 256, i8* nonnull %9) #9, !dbg !634
  ret void, !dbg !634
}

; Function Attrs: nofree nosync nounwind uwtable
define dso_local void @Hacl_SHA2_512_finish(i64* nocapture noundef readonly %0, i8* nocapture noundef writeonly %1) local_unnamed_addr #2 !dbg !635 {
  call void @llvm.dbg.value(metadata i64* %0, metadata !637, metadata !DIExpression()), !dbg !639
  call void @llvm.dbg.value(metadata i8* %1, metadata !638, metadata !DIExpression()), !dbg !639
  call void @llvm.dbg.value(metadata i64* %0, metadata !640, metadata !DIExpression()) #9, !dbg !645
  call void @llvm.dbg.value(metadata i8* %1, metadata !643, metadata !DIExpression()) #9, !dbg !645
  %3 = getelementptr inbounds i64, i64* %0, i32 160, !dbg !647
  call void @llvm.dbg.value(metadata i64* %3, metadata !644, metadata !DIExpression()) #9, !dbg !645
  call void @llvm.dbg.value(metadata i8* %1, metadata !648, metadata !DIExpression()) #9, !dbg !661
  call void @llvm.dbg.value(metadata i64* %3, metadata !653, metadata !DIExpression()) #9, !dbg !661
  call void @llvm.dbg.value(metadata i32 8, metadata !654, metadata !DIExpression()) #9, !dbg !661
  call void @llvm.dbg.value(metadata i32 0, metadata !655, metadata !DIExpression()) #9, !dbg !663
  br label %4, !dbg !664

4:                                                ; preds = %4, %2
  %5 = phi i32 [ 0, %2 ], [ %12, %4 ]
  call void @llvm.dbg.value(metadata i32 %5, metadata !655, metadata !DIExpression()) #9, !dbg !663
  %6 = getelementptr inbounds i64, i64* %3, i32 %5, !dbg !665
  %7 = load i64, i64* %6, align 4, !dbg !665, !tbaa !115
  call void @llvm.dbg.value(metadata i64 %7, metadata !657, metadata !DIExpression()) #9, !dbg !666
  %8 = shl i32 %5, 3, !dbg !667
  %9 = getelementptr inbounds i8, i8* %1, i32 %8, !dbg !668
  call void @llvm.dbg.value(metadata i8* %9, metadata !660, metadata !DIExpression()) #9, !dbg !666
  call void @llvm.dbg.value(metadata i64 %7, metadata !392, metadata !DIExpression()) #9, !dbg !669
  %10 = call i64 @llvm.bswap.i64(i64 %7) #9, !dbg !671
  call void @llvm.dbg.value(metadata i8* %9, metadata !606, metadata !DIExpression()) #9, !dbg !672
  call void @llvm.dbg.value(metadata i64 %10, metadata !611, metadata !DIExpression()) #9, !dbg !672
  %11 = bitcast i8* %9 to i64*, !dbg !674
  store i64 %10, i64* %11, align 1, !dbg !674
  %12 = add nuw nsw i32 %5, 1, !dbg !675
  call void @llvm.dbg.value(metadata i32 %12, metadata !655, metadata !DIExpression()) #9, !dbg !663
  %13 = icmp eq i32 %12, 8, !dbg !676
  br i1 %13, label %14, label %4, !dbg !664, !llvm.loop !677

14:                                               ; preds = %4
  ret void, !dbg !679
}

; Function Attrs: nounwind uwtable
define dso_local void @Hacl_SHA2_512_hash(i8* nocapture noundef writeonly %0, i8* nocapture noundef readonly %1, i32 noundef %2) local_unnamed_addr #3 !dbg !680 {
  %4 = alloca [169 x i64], align 8
  call void @llvm.dbg.value(metadata i8* %0, metadata !684, metadata !DIExpression()), !dbg !687
  call void @llvm.dbg.value(metadata i8* %1, metadata !685, metadata !DIExpression()), !dbg !687
  call void @llvm.dbg.value(metadata i32 %2, metadata !686, metadata !DIExpression()), !dbg !687
  %5 = bitcast [169 x i64]* %4 to i8*, !dbg !688
  call void @llvm.dbg.value(metadata i8* %0, metadata !691, metadata !DIExpression()) #9, !dbg !688
  call void @llvm.dbg.value(metadata i8* %1, metadata !692, metadata !DIExpression()) #9, !dbg !688
  call void @llvm.dbg.value(metadata i32 %2, metadata !693, metadata !DIExpression()) #9, !dbg !688
  call void @llvm.lifetime.start.p0i8(i64 1352, i8* nonnull %5) #9, !dbg !705
  call void @llvm.dbg.declare(metadata [169 x i64]* %4, metadata !694, metadata !DIExpression()) #9, !dbg !706
  call void @llvm.dbg.value(metadata i32 0, metadata !698, metadata !DIExpression()) #9, !dbg !707
  call void @llvm.memset.p0i8.i32(i8* noundef nonnull align 8 dereferenceable(1352) %5, i8 0, i32 1352, i1 false) #9, !dbg !708, !tbaa !115
  call void @llvm.dbg.value(metadata i32 undef, metadata !698, metadata !DIExpression()) #9, !dbg !707
  call void @llvm.dbg.value(metadata i32 undef, metadata !698, metadata !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value)) #9, !dbg !707
  %6 = lshr i32 %2, 7, !dbg !710
  call void @llvm.dbg.value(metadata i32 %6, metadata !700, metadata !DIExpression()) #9, !dbg !688
  %7 = and i32 %2, 127, !dbg !711
  call void @llvm.dbg.value(metadata i32 %7, metadata !701, metadata !DIExpression()) #9, !dbg !688
  call void @llvm.dbg.value(metadata i8* %1, metadata !702, metadata !DIExpression()) #9, !dbg !688
  %8 = and i32 %2, -128, !dbg !712
  %9 = getelementptr inbounds i8, i8* %1, i32 %8, !dbg !713
  call void @llvm.dbg.value(metadata i8* %9, metadata !703, metadata !DIExpression()) #9, !dbg !688
  %10 = getelementptr inbounds [169 x i64], [169 x i64]* %4, i32 0, i32 0, !dbg !714
  call void @llvm.dbg.value(metadata i64* %10, metadata !64, metadata !DIExpression()) #9, !dbg !715
  %11 = getelementptr inbounds [169 x i64], [169 x i64]* %4, i32 0, i32 168, !dbg !717
  call void @llvm.dbg.value(metadata i64* %11, metadata !65, metadata !DIExpression()) #9, !dbg !715
  call void @llvm.dbg.value(metadata i64* %10, metadata !66, metadata !DIExpression()) #9, !dbg !715
  %12 = getelementptr inbounds [169 x i64], [169 x i64]* %4, i32 0, i32 160, !dbg !718
  call void @llvm.dbg.value(metadata i64* %12, metadata !67, metadata !DIExpression()) #9, !dbg !715
  call void @llvm.dbg.value(metadata i64* %10, metadata !68, metadata !DIExpression()) #9, !dbg !715
  %13 = getelementptr inbounds [169 x i64], [169 x i64]* %4, i32 0, i32 16, !dbg !719
  call void @llvm.dbg.value(metadata i64* %13, metadata !69, metadata !DIExpression()) #9, !dbg !715
  %14 = getelementptr inbounds [169 x i64], [169 x i64]* %4, i32 0, i32 32, !dbg !720
  call void @llvm.dbg.value(metadata i64* %14, metadata !70, metadata !DIExpression()) #9, !dbg !715
  %15 = getelementptr inbounds [169 x i64], [169 x i64]* %4, i32 0, i32 48, !dbg !721
  call void @llvm.dbg.value(metadata i64* %15, metadata !71, metadata !DIExpression()) #9, !dbg !715
  %16 = getelementptr inbounds [169 x i64], [169 x i64]* %4, i32 0, i32 64, !dbg !722
  call void @llvm.dbg.value(metadata i64* %16, metadata !72, metadata !DIExpression()) #9, !dbg !715
  call void @llvm.dbg.value(metadata i64* %10, metadata !73, metadata !DIExpression()) #9, !dbg !715
  %17 = getelementptr inbounds [169 x i64], [169 x i64]* %4, i32 0, i32 8, !dbg !723
  call void @llvm.dbg.value(metadata i64* %17, metadata !74, metadata !DIExpression()) #9, !dbg !715
  call void @llvm.dbg.value(metadata i64* %10, metadata !75, metadata !DIExpression()) #9, !dbg !715
  %18 = getelementptr inbounds [169 x i64], [169 x i64]* %4, i32 0, i32 4, !dbg !724
  call void @llvm.dbg.value(metadata i64* %18, metadata !76, metadata !DIExpression()) #9, !dbg !715
  store i64 4794697086780616226, i64* %10, align 8, !dbg !725, !tbaa !115
  %19 = getelementptr inbounds [169 x i64], [169 x i64]* %4, i32 0, i32 1, !dbg !726
  store i64 8158064640168781261, i64* %19, align 8, !dbg !727, !tbaa !115
  %20 = getelementptr inbounds [169 x i64], [169 x i64]* %4, i32 0, i32 2, !dbg !728
  store i64 -5349999486874862801, i64* %20, align 8, !dbg !729, !tbaa !115
  %21 = getelementptr inbounds [169 x i64], [169 x i64]* %4, i32 0, i32 3, !dbg !730
  store i64 -1606136188198331460, i64* %21, align 8, !dbg !731, !tbaa !115
  store i64 4131703408338449720, i64* %18, align 8, !dbg !732, !tbaa !115
  %22 = getelementptr inbounds [169 x i64], [169 x i64]* %4, i32 0, i32 5, !dbg !733
  store i64 6480981068601479193, i64* %22, align 8, !dbg !734, !tbaa !115
  %23 = getelementptr inbounds [169 x i64], [169 x i64]* %4, i32 0, i32 6, !dbg !735
  store i64 -7908458776815382629, i64* %23, align 8, !dbg !736, !tbaa !115
  %24 = getelementptr inbounds [169 x i64], [169 x i64]* %4, i32 0, i32 7, !dbg !737
  store i64 -6116909921290321640, i64* %24, align 8, !dbg !738, !tbaa !115
  call void @llvm.dbg.value(metadata i64* %17, metadata !77, metadata !DIExpression()) #9, !dbg !715
  %25 = getelementptr inbounds [169 x i64], [169 x i64]* %4, i32 0, i32 12, !dbg !739
  call void @llvm.dbg.value(metadata i64* %25, metadata !78, metadata !DIExpression()) #9, !dbg !715
  store i64 -2880145864133508542, i64* %17, align 8, !dbg !740, !tbaa !115
  %26 = getelementptr inbounds [169 x i64], [169 x i64]* %4, i32 0, i32 9, !dbg !741
  store i64 1334009975649890238, i64* %26, align 8, !dbg !742, !tbaa !115
  %27 = getelementptr inbounds [169 x i64], [169 x i64]* %4, i32 0, i32 10, !dbg !743
  store i64 2608012711638119052, i64* %27, align 8, !dbg !744, !tbaa !115
  %28 = getelementptr inbounds [169 x i64], [169 x i64]* %4, i32 0, i32 11, !dbg !745
  store i64 6128411473006802146, i64* %28, align 8, !dbg !746, !tbaa !115
  store i64 8268148722764581231, i64* %25, align 8, !dbg !747, !tbaa !115
  %29 = getelementptr inbounds [169 x i64], [169 x i64]* %4, i32 0, i32 13, !dbg !748
  store i64 -9160688886553864527, i64* %29, align 8, !dbg !749, !tbaa !115
  %30 = getelementptr inbounds [169 x i64], [169 x i64]* %4, i32 0, i32 14, !dbg !750
  store i64 -7215885187991268811, i64* %30, align 8, !dbg !751, !tbaa !115
  %31 = getelementptr inbounds [169 x i64], [169 x i64]* %4, i32 0, i32 15, !dbg !752
  store i64 -4495734319001033068, i64* %31, align 8, !dbg !753, !tbaa !115
  call void @llvm.dbg.value(metadata i64* %13, metadata !79, metadata !DIExpression()) #9, !dbg !715
  %32 = getelementptr inbounds [169 x i64], [169 x i64]* %4, i32 0, i32 24, !dbg !754
  call void @llvm.dbg.value(metadata i64* %32, metadata !80, metadata !DIExpression()) #9, !dbg !715
  call void @llvm.dbg.value(metadata i64* %13, metadata !81, metadata !DIExpression()) #9, !dbg !715
  %33 = getelementptr inbounds [169 x i64], [169 x i64]* %4, i32 0, i32 20, !dbg !755
  call void @llvm.dbg.value(metadata i64* %33, metadata !82, metadata !DIExpression()) #9, !dbg !715
  store i64 -1973867731355612462, i64* %13, align 8, !dbg !756, !tbaa !115
  %34 = getelementptr inbounds [169 x i64], [169 x i64]* %4, i32 0, i32 17, !dbg !757
  store i64 -1171420211273849373, i64* %34, align 8, !dbg !758, !tbaa !115
  %35 = getelementptr inbounds [169 x i64], [169 x i64]* %4, i32 0, i32 18, !dbg !759
  store i64 1135362057144423861, i64* %35, align 8, !dbg !760, !tbaa !115
  %36 = getelementptr inbounds [169 x i64], [169 x i64]* %4, i32 0, i32 19, !dbg !761
  store i64 2597628984639134821, i64* %36, align 8, !dbg !762, !tbaa !115
  store i64 3308224258029322869, i64* %33, align 8, !dbg !763, !tbaa !115
  %37 = getelementptr inbounds [169 x i64], [169 x i64]* %4, i32 0, i32 21, !dbg !764
  store i64 5365058923640841347, i64* %37, align 8, !dbg !765, !tbaa !115
  %38 = getelementptr inbounds [169 x i64], [169 x i64]* %4, i32 0, i32 22, !dbg !766
  store i64 6679025012923562964, i64* %38, align 8, !dbg !767, !tbaa !115
  %39 = getelementptr inbounds [169 x i64], [169 x i64]* %4, i32 0, i32 23, !dbg !768
  store i64 8573033837759648693, i64* %39, align 8, !dbg !769, !tbaa !115
  call void @llvm.dbg.value(metadata i64* %32, metadata !83, metadata !DIExpression()) #9, !dbg !715
  %40 = getelementptr inbounds [169 x i64], [169 x i64]* %4, i32 0, i32 28, !dbg !770
  call void @llvm.dbg.value(metadata i64* %40, metadata !84, metadata !DIExpression()) #9, !dbg !715
  store i64 -7476448914759557205, i64* %32, align 8, !dbg !771, !tbaa !115
  %41 = getelementptr inbounds [169 x i64], [169 x i64]* %4, i32 0, i32 25, !dbg !772
  store i64 -6327057829258317296, i64* %41, align 8, !dbg !773, !tbaa !115
  %42 = getelementptr inbounds [169 x i64], [169 x i64]* %4, i32 0, i32 26, !dbg !774
  store i64 -5763719355590565569, i64* %42, align 8, !dbg !775, !tbaa !115
  %43 = getelementptr inbounds [169 x i64], [169 x i64]* %4, i32 0, i32 27, !dbg !776
  store i64 -4658551843659510044, i64* %43, align 8, !dbg !777, !tbaa !115
  store i64 -4116276920077217854, i64* %40, align 8, !dbg !778, !tbaa !115
  %44 = getelementptr inbounds [169 x i64], [169 x i64]* %4, i32 0, i32 29, !dbg !779
  store i64 -3051310485924567259, i64* %44, align 8, !dbg !780, !tbaa !115
  %45 = getelementptr inbounds [169 x i64], [169 x i64]* %4, i32 0, i32 30, !dbg !781
  store i64 489312712824947311, i64* %45, align 8, !dbg !782, !tbaa !115
  %46 = getelementptr inbounds [169 x i64], [169 x i64]* %4, i32 0, i32 31, !dbg !783
  store i64 1452737877330783856, i64* %46, align 8, !dbg !784, !tbaa !115
  call void @llvm.dbg.value(metadata i64* %14, metadata !85, metadata !DIExpression()) #9, !dbg !715
  %47 = getelementptr inbounds [169 x i64], [169 x i64]* %4, i32 0, i32 40, !dbg !785
  call void @llvm.dbg.value(metadata i64* %47, metadata !86, metadata !DIExpression()) #9, !dbg !715
  call void @llvm.dbg.value(metadata i64* %14, metadata !87, metadata !DIExpression()) #9, !dbg !715
  %48 = getelementptr inbounds [169 x i64], [169 x i64]* %4, i32 0, i32 36, !dbg !786
  call void @llvm.dbg.value(metadata i64* %48, metadata !88, metadata !DIExpression()) #9, !dbg !715
  store i64 2861767655752347644, i64* %14, align 8, !dbg !787, !tbaa !115
  %49 = getelementptr inbounds [169 x i64], [169 x i64]* %4, i32 0, i32 33, !dbg !788
  store i64 3322285676063803686, i64* %49, align 8, !dbg !789, !tbaa !115
  %50 = getelementptr inbounds [169 x i64], [169 x i64]* %4, i32 0, i32 34, !dbg !790
  store i64 5560940570517711597, i64* %50, align 8, !dbg !791, !tbaa !115
  %51 = getelementptr inbounds [169 x i64], [169 x i64]* %4, i32 0, i32 35, !dbg !792
  store i64 5996557281743188959, i64* %51, align 8, !dbg !793, !tbaa !115
  store i64 7280758554555802590, i64* %48, align 8, !dbg !794, !tbaa !115
  %52 = getelementptr inbounds [169 x i64], [169 x i64]* %4, i32 0, i32 37, !dbg !795
  store i64 8532644243296465576, i64* %52, align 8, !dbg !796, !tbaa !115
  %53 = getelementptr inbounds [169 x i64], [169 x i64]* %4, i32 0, i32 38, !dbg !797
  store i64 -9096487096722542874, i64* %53, align 8, !dbg !798, !tbaa !115
  %54 = getelementptr inbounds [169 x i64], [169 x i64]* %4, i32 0, i32 39, !dbg !799
  store i64 -7894198246740708037, i64* %54, align 8, !dbg !800, !tbaa !115
  call void @llvm.dbg.value(metadata i64* %47, metadata !89, metadata !DIExpression()) #9, !dbg !715
  %55 = getelementptr inbounds [169 x i64], [169 x i64]* %4, i32 0, i32 44, !dbg !801
  call void @llvm.dbg.value(metadata i64* %55, metadata !90, metadata !DIExpression()) #9, !dbg !715
  store i64 -6719396339535248540, i64* %47, align 8, !dbg !802, !tbaa !115
  %56 = getelementptr inbounds [169 x i64], [169 x i64]* %4, i32 0, i32 41, !dbg !803
  store i64 -6333637450476146687, i64* %56, align 8, !dbg !804, !tbaa !115
  %57 = getelementptr inbounds [169 x i64], [169 x i64]* %4, i32 0, i32 42, !dbg !805
  store i64 -4446306890439682159, i64* %57, align 8, !dbg !806, !tbaa !115
  %58 = getelementptr inbounds [169 x i64], [169 x i64]* %4, i32 0, i32 43, !dbg !807
  store i64 -4076793802049405392, i64* %58, align 8, !dbg !808, !tbaa !115
  store i64 -3345356375505022440, i64* %55, align 8, !dbg !809, !tbaa !115
  %59 = getelementptr inbounds [169 x i64], [169 x i64]* %4, i32 0, i32 45, !dbg !810
  store i64 -2983346525034927856, i64* %59, align 8, !dbg !811, !tbaa !115
  %60 = getelementptr inbounds [169 x i64], [169 x i64]* %4, i32 0, i32 46, !dbg !812
  store i64 -860691631967231958, i64* %60, align 8, !dbg !813, !tbaa !115
  %61 = getelementptr inbounds [169 x i64], [169 x i64]* %4, i32 0, i32 47, !dbg !814
  store i64 1182934255886127544, i64* %61, align 8, !dbg !815, !tbaa !115
  call void @llvm.dbg.value(metadata i64* %15, metadata !91, metadata !DIExpression()) #9, !dbg !715
  %62 = getelementptr inbounds [169 x i64], [169 x i64]* %4, i32 0, i32 56, !dbg !816
  call void @llvm.dbg.value(metadata i64* %62, metadata !92, metadata !DIExpression()) #9, !dbg !715
  call void @llvm.dbg.value(metadata i64* %15, metadata !93, metadata !DIExpression()) #9, !dbg !715
  %63 = getelementptr inbounds [169 x i64], [169 x i64]* %4, i32 0, i32 52, !dbg !817
  call void @llvm.dbg.value(metadata i64* %63, metadata !94, metadata !DIExpression()) #9, !dbg !715
  store i64 1847814050463011016, i64* %15, align 8, !dbg !818, !tbaa !115
  %64 = getelementptr inbounds [169 x i64], [169 x i64]* %4, i32 0, i32 49, !dbg !819
  store i64 2177327727835720531, i64* %64, align 8, !dbg !820, !tbaa !115
  %65 = getelementptr inbounds [169 x i64], [169 x i64]* %4, i32 0, i32 50, !dbg !821
  store i64 2830643537854262169, i64* %65, align 8, !dbg !822, !tbaa !115
  %66 = getelementptr inbounds [169 x i64], [169 x i64]* %4, i32 0, i32 51, !dbg !823
  store i64 3796741975233480872, i64* %66, align 8, !dbg !824, !tbaa !115
  store i64 4115178125766777443, i64* %63, align 8, !dbg !825, !tbaa !115
  %67 = getelementptr inbounds [169 x i64], [169 x i64]* %4, i32 0, i32 53, !dbg !826
  store i64 5681478168544905931, i64* %67, align 8, !dbg !827, !tbaa !115
  %68 = getelementptr inbounds [169 x i64], [169 x i64]* %4, i32 0, i32 54, !dbg !828
  store i64 6601373596472566643, i64* %68, align 8, !dbg !829, !tbaa !115
  %69 = getelementptr inbounds [169 x i64], [169 x i64]* %4, i32 0, i32 55, !dbg !830
  store i64 7507060721942968483, i64* %69, align 8, !dbg !831, !tbaa !115
  call void @llvm.dbg.value(metadata i64* %62, metadata !95, metadata !DIExpression()) #9, !dbg !715
  %70 = getelementptr inbounds [169 x i64], [169 x i64]* %4, i32 0, i32 60, !dbg !832
  call void @llvm.dbg.value(metadata i64* %70, metadata !96, metadata !DIExpression()) #9, !dbg !715
  store i64 8399075790359081724, i64* %62, align 8, !dbg !833, !tbaa !115
  %71 = getelementptr inbounds [169 x i64], [169 x i64]* %4, i32 0, i32 57, !dbg !834
  store i64 8693463985226723168, i64* %71, align 8, !dbg !835, !tbaa !115
  %72 = getelementptr inbounds [169 x i64], [169 x i64]* %4, i32 0, i32 58, !dbg !836
  store i64 -8878714635349349518, i64* %72, align 8, !dbg !837, !tbaa !115
  %73 = getelementptr inbounds [169 x i64], [169 x i64]* %4, i32 0, i32 59, !dbg !838
  store i64 -8302665154208450068, i64* %73, align 8, !dbg !839, !tbaa !115
  store i64 -8016688836872298968, i64* %70, align 8, !dbg !840, !tbaa !115
  %74 = getelementptr inbounds [169 x i64], [169 x i64]* %4, i32 0, i32 61, !dbg !841
  store i64 -6606660893046293015, i64* %74, align 8, !dbg !842, !tbaa !115
  %75 = getelementptr inbounds [169 x i64], [169 x i64]* %4, i32 0, i32 62, !dbg !843
  store i64 -4685533653050689259, i64* %75, align 8, !dbg !844, !tbaa !115
  %76 = getelementptr inbounds [169 x i64], [169 x i64]* %4, i32 0, i32 63, !dbg !845
  store i64 -4147400797238176981, i64* %76, align 8, !dbg !846, !tbaa !115
  call void @llvm.dbg.value(metadata i64* %16, metadata !97, metadata !DIExpression()) #9, !dbg !715
  %77 = getelementptr inbounds [169 x i64], [169 x i64]* %4, i32 0, i32 72, !dbg !847
  call void @llvm.dbg.value(metadata i64* %77, metadata !98, metadata !DIExpression()) #9, !dbg !715
  call void @llvm.dbg.value(metadata i64* %16, metadata !99, metadata !DIExpression()) #9, !dbg !715
  %78 = getelementptr inbounds [169 x i64], [169 x i64]* %4, i32 0, i32 68, !dbg !848
  call void @llvm.dbg.value(metadata i64* %78, metadata !100, metadata !DIExpression()) #9, !dbg !715
  store i64 -3880063495543823972, i64* %16, align 8, !dbg !849, !tbaa !115
  %79 = getelementptr inbounds [169 x i64], [169 x i64]* %4, i32 0, i32 65, !dbg !850
  store i64 -3348786107499101689, i64* %79, align 8, !dbg !851, !tbaa !115
  %80 = getelementptr inbounds [169 x i64], [169 x i64]* %4, i32 0, i32 66, !dbg !852
  store i64 -1523767162380948706, i64* %80, align 8, !dbg !853, !tbaa !115
  %81 = getelementptr inbounds [169 x i64], [169 x i64]* %4, i32 0, i32 67, !dbg !854
  store i64 -757361751448694408, i64* %81, align 8, !dbg !855, !tbaa !115
  store i64 500013540394364858, i64* %78, align 8, !dbg !856, !tbaa !115
  %82 = getelementptr inbounds [169 x i64], [169 x i64]* %4, i32 0, i32 69, !dbg !857
  store i64 748580250866718886, i64* %82, align 8, !dbg !858, !tbaa !115
  %83 = getelementptr inbounds [169 x i64], [169 x i64]* %4, i32 0, i32 70, !dbg !859
  store i64 1242879168328830382, i64* %83, align 8, !dbg !860, !tbaa !115
  %84 = getelementptr inbounds [169 x i64], [169 x i64]* %4, i32 0, i32 71, !dbg !861
  store i64 1977374033974150939, i64* %84, align 8, !dbg !862, !tbaa !115
  call void @llvm.dbg.value(metadata i64* %77, metadata !101, metadata !DIExpression()) #9, !dbg !715
  %85 = getelementptr inbounds [169 x i64], [169 x i64]* %4, i32 0, i32 76, !dbg !863
  call void @llvm.dbg.value(metadata i64* %85, metadata !102, metadata !DIExpression()) #9, !dbg !715
  store i64 2944078676154940804, i64* %77, align 8, !dbg !864, !tbaa !115
  %86 = getelementptr inbounds [169 x i64], [169 x i64]* %4, i32 0, i32 73, !dbg !865
  store i64 3659926193048069267, i64* %86, align 8, !dbg !866, !tbaa !115
  %87 = getelementptr inbounds [169 x i64], [169 x i64]* %4, i32 0, i32 74, !dbg !867
  store i64 4368137639120453308, i64* %87, align 8, !dbg !868, !tbaa !115
  %88 = getelementptr inbounds [169 x i64], [169 x i64]* %4, i32 0, i32 75, !dbg !869
  store i64 4836135668995329356, i64* %88, align 8, !dbg !870, !tbaa !115
  store i64 5532061633213252278, i64* %85, align 8, !dbg !871, !tbaa !115
  %89 = getelementptr inbounds [169 x i64], [169 x i64]* %4, i32 0, i32 77, !dbg !872
  store i64 6448918945643986474, i64* %89, align 8, !dbg !873, !tbaa !115
  %90 = getelementptr inbounds [169 x i64], [169 x i64]* %4, i32 0, i32 78, !dbg !874
  store i64 6902733635092675308, i64* %90, align 8, !dbg !875, !tbaa !115
  %91 = getelementptr inbounds [169 x i64], [169 x i64]* %4, i32 0, i32 79, !dbg !876
  store i64 7801388544844847127, i64* %91, align 8, !dbg !877, !tbaa !115
  call void @llvm.dbg.value(metadata i64* %12, metadata !103, metadata !DIExpression()) #9, !dbg !715
  %92 = getelementptr inbounds [169 x i64], [169 x i64]* %4, i32 0, i32 164, !dbg !878
  call void @llvm.dbg.value(metadata i64* %92, metadata !104, metadata !DIExpression()) #9, !dbg !715
  store i64 7640891576956012808, i64* %12, align 8, !dbg !879, !tbaa !115
  %93 = getelementptr inbounds [169 x i64], [169 x i64]* %4, i32 0, i32 161, !dbg !880
  store i64 -4942790177534073029, i64* %93, align 8, !dbg !881, !tbaa !115
  %94 = getelementptr inbounds [169 x i64], [169 x i64]* %4, i32 0, i32 162, !dbg !882
  store i64 4354685564936845355, i64* %94, align 8, !dbg !883, !tbaa !115
  %95 = getelementptr inbounds [169 x i64], [169 x i64]* %4, i32 0, i32 163, !dbg !884
  store i64 -6534734903238641935, i64* %95, align 8, !dbg !885, !tbaa !115
  store i64 5840696475078001361, i64* %92, align 8, !dbg !886, !tbaa !115
  %96 = getelementptr inbounds [169 x i64], [169 x i64]* %4, i32 0, i32 165, !dbg !887
  store i64 -7276294671716946913, i64* %96, align 8, !dbg !888, !tbaa !115
  %97 = getelementptr inbounds [169 x i64], [169 x i64]* %4, i32 0, i32 166, !dbg !889
  store i64 2270897969802886507, i64* %97, align 8, !dbg !890, !tbaa !115
  %98 = getelementptr inbounds [169 x i64], [169 x i64]* %4, i32 0, i32 167, !dbg !891
  store i64 6620516959819538809, i64* %98, align 8, !dbg !892, !tbaa !115
  store i64 0, i64* %11, align 8, !dbg !893, !tbaa !115
  call void @llvm.dbg.value(metadata i64* %10, metadata !502, metadata !DIExpression()) #9, !dbg !894
  call void @llvm.dbg.value(metadata i8* %1, metadata !505, metadata !DIExpression()) #9, !dbg !894
  call void @llvm.dbg.value(metadata i32 %6, metadata !506, metadata !DIExpression()) #9, !dbg !894
  call void @llvm.dbg.value(metadata i32 0, metadata !507, metadata !DIExpression()) #9, !dbg !896
  %99 = icmp ult i32 %2, 128, !dbg !897
  br i1 %99, label %106, label %100, !dbg !898

100:                                              ; preds = %3, %100
  %101 = phi i32 [ %104, %100 ], [ 0, %3 ]
  call void @llvm.dbg.value(metadata i32 %101, metadata !507, metadata !DIExpression()) #9, !dbg !896
  %102 = shl i32 %101, 7, !dbg !899
  %103 = getelementptr inbounds i8, i8* %1, i32 %102, !dbg !900
  call void @llvm.dbg.value(metadata i8* %103, metadata !509, metadata !DIExpression()) #9, !dbg !901
  call fastcc void @Hacl_Impl_SHA2_512_update(i64* noundef nonnull %10, i8* noundef %103) #9, !dbg !902
  %104 = add nuw nsw i32 %101, 1, !dbg !903
  call void @llvm.dbg.value(metadata i32 %104, metadata !507, metadata !DIExpression()) #9, !dbg !896
  %105 = icmp eq i32 %104, %6, !dbg !897
  br i1 %105, label %106, label %100, !dbg !898, !llvm.loop !904

106:                                              ; preds = %100, %3
  %107 = zext i32 %7 to i64, !dbg !906
  call fastcc void @Hacl_Impl_SHA2_512_update_last(i64* noundef nonnull %10, i8* noundef %9, i64 noundef %107) #9, !dbg !907
  call void @llvm.dbg.value(metadata i64* %10, metadata !640, metadata !DIExpression()) #9, !dbg !908
  call void @llvm.dbg.value(metadata i8* %0, metadata !643, metadata !DIExpression()) #9, !dbg !908
  call void @llvm.dbg.value(metadata i64* %12, metadata !644, metadata !DIExpression()) #9, !dbg !908
  call void @llvm.dbg.value(metadata i8* %0, metadata !648, metadata !DIExpression()) #9, !dbg !910
  call void @llvm.dbg.value(metadata i64* %12, metadata !653, metadata !DIExpression()) #9, !dbg !910
  call void @llvm.dbg.value(metadata i32 8, metadata !654, metadata !DIExpression()) #9, !dbg !910
  call void @llvm.dbg.value(metadata i32 0, metadata !655, metadata !DIExpression()) #9, !dbg !912
  br label %108, !dbg !913

108:                                              ; preds = %108, %106
  %109 = phi i32 [ 0, %106 ], [ %116, %108 ]
  call void @llvm.dbg.value(metadata i32 %109, metadata !655, metadata !DIExpression()) #9, !dbg !912
  %110 = getelementptr inbounds i64, i64* %12, i32 %109, !dbg !914
  %111 = load i64, i64* %110, align 8, !dbg !914, !tbaa !115
  call void @llvm.dbg.value(metadata i64 %111, metadata !657, metadata !DIExpression()) #9, !dbg !915
  %112 = shl i32 %109, 3, !dbg !916
  %113 = getelementptr inbounds i8, i8* %0, i32 %112, !dbg !917
  call void @llvm.dbg.value(metadata i8* %113, metadata !660, metadata !DIExpression()) #9, !dbg !915
  call void @llvm.dbg.value(metadata i64 %111, metadata !392, metadata !DIExpression()) #9, !dbg !918
  %114 = call i64 @llvm.bswap.i64(i64 %111) #9, !dbg !920
  call void @llvm.dbg.value(metadata i8* %113, metadata !606, metadata !DIExpression()) #9, !dbg !921
  call void @llvm.dbg.value(metadata i64 %114, metadata !611, metadata !DIExpression()) #9, !dbg !921
  %115 = bitcast i8* %113 to i64*, !dbg !923
  store i64 %114, i64* %115, align 1, !dbg !923
  %116 = add nuw nsw i32 %109, 1, !dbg !924
  call void @llvm.dbg.value(metadata i32 %116, metadata !655, metadata !DIExpression()) #9, !dbg !912
  %117 = icmp eq i32 %116, 8, !dbg !925
  br i1 %117, label %118, label %108, !dbg !913, !llvm.loop !926

118:                                              ; preds = %108
  call void @llvm.lifetime.end.p0i8(i64 1352, i8* nonnull %5) #9, !dbg !928
  ret void, !dbg !929
}

; Function Attrs: argmemonly mustprogress nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0i8(i64 immarg, i8* nocapture) #4

; Function Attrs: argmemonly mustprogress nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0i8(i64 immarg, i8* nocapture) #4

; Function Attrs: argmemonly mustprogress nofree nounwind willreturn writeonly
declare void @llvm.memset.p0i8.i32(i8* nocapture writeonly, i8, i32, i1 immarg) #5

; Function Attrs: argmemonly mustprogress nofree nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i32(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i32, i1 immarg) #6

declare !dbg !930 void @FStar_UInt128_shift_left(%struct.FStar_UInt128_uint128* sret(%struct.FStar_UInt128_uint128) align 4, i64, i64, i32 noundef) local_unnamed_addr #7

declare !dbg !934 void @FStar_UInt128_add(%struct.FStar_UInt128_uint128* sret(%struct.FStar_UInt128_uint128) align 4, i64, i64, i64, i64) local_unnamed_addr #7

declare !dbg !937 void @FStar_UInt128_mul_wide(%struct.FStar_UInt128_uint128* sret(%struct.FStar_UInt128_uint128) align 4, i64 noundef, i64 noundef) local_unnamed_addr #7

declare !dbg !940 void @FStar_UInt128_uint64_to_uint128(%struct.FStar_UInt128_uint128* sret(%struct.FStar_UInt128_uint128) align 4, i64 noundef) local_unnamed_addr #7

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare void @llvm.dbg.value(metadata, metadata, metadata) #8

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare i64 @llvm.fshl.i64(i64, i64, i64) #8

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare i64 @llvm.bswap.i64(i64) #8

attributes #0 = { mustprogress nofree norecurse nosync nounwind uwtable willreturn writeonly "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="i686" "target-features"="+cx8,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nofree nosync nounwind readnone speculatable willreturn }
attributes #2 = { nofree nosync nounwind uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="i686" "target-features"="+cx8,+x87" "tune-cpu"="generic" }
attributes #3 = { nounwind uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="i686" "target-features"="+cx8,+x87" "tune-cpu"="generic" }
attributes #4 = { argmemonly mustprogress nofree nosync nounwind willreturn }
attributes #5 = { argmemonly mustprogress nofree nounwind willreturn writeonly }
attributes #6 = { argmemonly mustprogress nofree nounwind willreturn }
attributes #7 = { "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="i686" "target-features"="+cx8,+x87" "tune-cpu"="generic" }
attributes #8 = { nofree nosync nounwind readnone speculatable willreturn }
attributes #9 = { nounwind }

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
!363 = !DILocation(line: 30, column: 3, scope: !364, inlinedAt: !377)
!364 = distinct !DILexicalBlock(scope: !365, file: !3, line: 30, column: 3)
!365 = distinct !DISubprogram(name: "Hacl_Hash_Lib_LoadStore_uint64s_from_be_bytes", scope: !3, file: !3, line: 28, type: !366, scopeLine: 29, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !368)
!366 = !DISubroutineType(types: !367)
!367 = !{null, !56, !291, !5}
!368 = !{!369, !370, !371, !372, !373, !376}
!369 = !DILocalVariable(name: "output", arg: 1, scope: !365, file: !3, line: 28, type: !56)
!370 = !DILocalVariable(name: "input", arg: 2, scope: !365, file: !3, line: 28, type: !291)
!371 = !DILocalVariable(name: "len", arg: 3, scope: !365, file: !3, line: 28, type: !5)
!372 = !DILocalVariable(name: "i", scope: !364, file: !3, line: 30, type: !5)
!373 = !DILocalVariable(name: "x0", scope: !374, file: !3, line: 32, type: !291)
!374 = distinct !DILexicalBlock(scope: !375, file: !3, line: 31, column: 3)
!375 = distinct !DILexicalBlock(scope: !364, file: !3, line: 30, column: 3)
!376 = !DILocalVariable(name: "inputi", scope: !374, file: !3, line: 33, type: !10)
!377 = distinct !DILocation(line: 188, column: 3, scope: !298)
!378 = !DILocation(line: 0, scope: !364, inlinedAt: !377)
!379 = !DILocation(line: 32, column: 40, scope: !374, inlinedAt: !377)
!380 = !DILocation(line: 32, column: 25, scope: !374, inlinedAt: !377)
!381 = !DILocation(line: 0, scope: !374, inlinedAt: !377)
!382 = !DILocalVariable(name: "b", arg: 1, scope: !383, file: !384, line: 347, type: !291)
!383 = distinct !DISubprogram(name: "load64", scope: !384, file: !384, line: 347, type: !385, scopeLine: 347, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !387)
!384 = !DIFile(filename: "hacl-c/hacl-c/kremlib.h", directory: "/mnt/c/Users/fwill/Documents/HS24/semester_project/tools/binsec/binsec/examples/hacl", checksumkind: CSK_MD5, checksum: "cde125f1f98cb7b9ee1f380d4178ebe4")
!385 = !DISubroutineType(types: !386)
!386 = !{!10, !291}
!387 = !{!382, !388}
!388 = !DILocalVariable(name: "x", scope: !383, file: !384, line: 348, type: !10)
!389 = !DILocation(line: 0, scope: !383, inlinedAt: !390)
!390 = distinct !DILocation(line: 33, column: 23, scope: !374, inlinedAt: !377)
!391 = !DILocation(line: 349, column: 3, scope: !383, inlinedAt: !390)
!392 = !DILocalVariable(name: "__bsx", arg: 1, scope: !393, file: !394, line: 70, type: !11)
!393 = distinct !DISubprogram(name: "__bswap_64", scope: !394, file: !394, line: 70, type: !395, scopeLine: 71, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !397)
!394 = !DIFile(filename: "/usr/include/bits/byteswap.h", directory: "", checksumkind: CSK_MD5, checksum: "98f83253ffd9c64e7486789204e9fa05")
!395 = !DISubroutineType(types: !396)
!396 = !{!11, !11}
!397 = !{!392}
!398 = !DILocation(line: 0, scope: !393, inlinedAt: !399)
!399 = distinct !DILocation(line: 33, column: 23, scope: !374, inlinedAt: !377)
!400 = !DILocation(line: 75, column: 10, scope: !393, inlinedAt: !399)
!401 = !DILocation(line: 34, column: 5, scope: !374, inlinedAt: !377)
!402 = !DILocation(line: 34, column: 15, scope: !374, inlinedAt: !377)
!403 = !DILocation(line: 30, column: 50, scope: !375, inlinedAt: !377)
!404 = !DILocation(line: 30, column: 37, scope: !375, inlinedAt: !377)
!405 = distinct !{!405, !363, !406, !407, !408}
!406 = !DILocation(line: 35, column: 3, scope: !364, inlinedAt: !377)
!407 = !{!"llvm.loop.mustprogress"}
!408 = !{!"llvm.loop.unroll.disable"}
!409 = !DILocation(line: 190, column: 26, scope: !298)
!410 = !DILocation(line: 0, scope: !313)
!411 = !DILocation(line: 196, column: 13, scope: !315)
!412 = !DILocation(line: 0, scope: !315)
!413 = !DILocation(line: 189, column: 28, scope: !298)
!414 = !DILocation(line: 198, column: 3, scope: !318)
!415 = !DILocation(line: 214, column: 3, scope: !298)
!416 = !DILocation(line: 214, column: 12, scope: !298)
!417 = !DILocation(line: 215, column: 3, scope: !298)
!418 = !DILocation(line: 0, scope: !330)
!419 = !DILocation(line: 216, column: 3, scope: !330)
!420 = !DILocation(line: 0, scope: !318)
!421 = !DILocation(line: 200, column: 27, scope: !320)
!422 = !DILocation(line: 200, column: 20, scope: !320)
!423 = !DILocation(line: 0, scope: !320)
!424 = !DILocation(line: 201, column: 27, scope: !320)
!425 = !DILocation(line: 201, column: 20, scope: !320)
!426 = !DILocation(line: 202, column: 26, scope: !320)
!427 = !DILocation(line: 202, column: 19, scope: !320)
!428 = !DILocation(line: 203, column: 26, scope: !320)
!429 = !DILocation(line: 203, column: 19, scope: !320)
!430 = !DILocation(line: 205, column: 29, scope: !320)
!431 = !DILocation(line: 206, column: 31, scope: !320)
!432 = !DILocation(line: 206, column: 77, scope: !320)
!433 = !DILocation(line: 206, column: 72, scope: !320)
!434 = !DILocation(line: 206, column: 7, scope: !320)
!435 = !DILocation(line: 210, column: 33, scope: !320)
!436 = !DILocation(line: 211, column: 35, scope: !320)
!437 = !DILocation(line: 211, column: 82, scope: !320)
!438 = !DILocation(line: 211, column: 76, scope: !320)
!439 = !DILocation(line: 211, column: 11, scope: !320)
!440 = !DILocation(line: 207, column: 7, scope: !320)
!441 = !DILocation(line: 209, column: 9, scope: !320)
!442 = !DILocation(line: 212, column: 11, scope: !320)
!443 = !DILocation(line: 204, column: 5, scope: !320)
!444 = !DILocation(line: 204, column: 13, scope: !320)
!445 = !DILocation(line: 198, column: 61, scope: !321)
!446 = !DILocation(line: 198, column: 38, scope: !321)
!447 = distinct !{!447, !414, !448, !407, !408}
!448 = !DILocation(line: 213, column: 3, scope: !318)
!449 = !DILocation(line: 0, scope: !332)
!450 = !DILocation(line: 0, scope: !350)
!451 = !DILocation(line: 259, column: 3, scope: !350)
!452 = !DILocation(line: 226, column: 20, scope: !332)
!453 = !DILocation(line: 227, column: 21, scope: !332)
!454 = !DILocation(line: 232, column: 30, scope: !332)
!455 = !DILocation(line: 234, column: 32, scope: !332)
!456 = !DILocation(line: 235, column: 33, scope: !332)
!457 = !DILocation(line: 235, column: 11, scope: !332)
!458 = !DILocation(line: 233, column: 9, scope: !332)
!459 = !DILocation(line: 236, column: 13, scope: !332)
!460 = !DILocation(line: 236, column: 22, scope: !332)
!461 = !DILocation(line: 236, column: 25, scope: !332)
!462 = !DILocation(line: 236, column: 19, scope: !332)
!463 = !DILocation(line: 231, column: 7, scope: !332)
!464 = !DILocation(line: 236, column: 7, scope: !332)
!465 = !DILocation(line: 237, column: 7, scope: !332)
!466 = !DILocation(line: 238, column: 7, scope: !332)
!467 = !DILocation(line: 241, column: 28, scope: !332)
!468 = !DILocation(line: 243, column: 30, scope: !332)
!469 = !DILocation(line: 244, column: 31, scope: !332)
!470 = !DILocation(line: 244, column: 9, scope: !332)
!471 = !DILocation(line: 242, column: 7, scope: !332)
!472 = !DILocation(line: 245, column: 13, scope: !332)
!473 = !DILocation(line: 245, column: 29, scope: !332)
!474 = !DILocation(line: 245, column: 18, scope: !332)
!475 = !DILocation(line: 245, column: 7, scope: !332)
!476 = !DILocation(line: 246, column: 22, scope: !332)
!477 = !DILocation(line: 247, column: 21, scope: !332)
!478 = !DILocation(line: 216, column: 60, scope: !333)
!479 = !DILocation(line: 216, column: 37, scope: !333)
!480 = distinct !{!480, !419, !481, !407, !408}
!481 = !DILocation(line: 258, column: 3, scope: !330)
!482 = !DILocation(line: 192, column: 31, scope: !298)
!483 = !DILocation(line: 265, column: 17, scope: !298)
!484 = !DILocation(line: 267, column: 22, scope: !298)
!485 = !DILocation(line: 267, column: 17, scope: !298)
!486 = !DILocation(line: 268, column: 1, scope: !298)
!487 = !DILocation(line: 261, column: 19, scope: !352)
!488 = !DILocation(line: 0, scope: !352)
!489 = !DILocation(line: 262, column: 19, scope: !352)
!490 = !DILocation(line: 263, column: 20, scope: !352)
!491 = !DILocation(line: 263, column: 15, scope: !352)
!492 = !DILocation(line: 259, column: 59, scope: !353)
!493 = !DILocation(line: 259, column: 37, scope: !353)
!494 = distinct !{!494, !451, !495, !407, !408}
!495 = !DILocation(line: 264, column: 3, scope: !350)
!496 = distinct !DISubprogram(name: "Hacl_SHA2_512_update_multi", scope: !3, file: !3, line: 371, type: !366, scopeLine: 372, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !497)
!497 = !{!498, !499, !500}
!498 = !DILocalVariable(name: "state", arg: 1, scope: !496, file: !3, line: 371, type: !56)
!499 = !DILocalVariable(name: "data", arg: 2, scope: !496, file: !3, line: 371, type: !291)
!500 = !DILocalVariable(name: "n1", arg: 3, scope: !496, file: !3, line: 371, type: !5)
!501 = !DILocation(line: 0, scope: !496)
!502 = !DILocalVariable(name: "state", arg: 1, scope: !503, file: !3, line: 270, type: !56)
!503 = distinct !DISubprogram(name: "Hacl_Impl_SHA2_512_update_multi", scope: !3, file: !3, line: 270, type: !366, scopeLine: 271, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !504)
!504 = !{!502, !505, !506, !507, !509}
!505 = !DILocalVariable(name: "data", arg: 2, scope: !503, file: !3, line: 270, type: !291)
!506 = !DILocalVariable(name: "n1", arg: 3, scope: !503, file: !3, line: 270, type: !5)
!507 = !DILocalVariable(name: "i", scope: !508, file: !3, line: 272, type: !5)
!508 = distinct !DILexicalBlock(scope: !503, file: !3, line: 272, column: 3)
!509 = !DILocalVariable(name: "b", scope: !510, file: !3, line: 274, type: !291)
!510 = distinct !DILexicalBlock(scope: !511, file: !3, line: 273, column: 3)
!511 = distinct !DILexicalBlock(scope: !508, file: !3, line: 272, column: 3)
!512 = !DILocation(line: 0, scope: !503, inlinedAt: !513)
!513 = distinct !DILocation(line: 373, column: 3, scope: !496)
!514 = !DILocation(line: 0, scope: !508, inlinedAt: !513)
!515 = !DILocation(line: 272, column: 37, scope: !511, inlinedAt: !513)
!516 = !DILocation(line: 272, column: 3, scope: !508, inlinedAt: !513)
!517 = !DILocation(line: 274, column: 27, scope: !510, inlinedAt: !513)
!518 = !DILocation(line: 274, column: 23, scope: !510, inlinedAt: !513)
!519 = !DILocation(line: 0, scope: !510, inlinedAt: !513)
!520 = !DILocation(line: 275, column: 5, scope: !510, inlinedAt: !513)
!521 = !DILocation(line: 272, column: 49, scope: !511, inlinedAt: !513)
!522 = distinct !{!522, !516, !523, !407, !408}
!523 = !DILocation(line: 276, column: 3, scope: !508, inlinedAt: !513)
!524 = !DILocation(line: 374, column: 1, scope: !496)
!525 = distinct !DISubprogram(name: "Hacl_SHA2_512_update_last", scope: !3, file: !3, line: 376, type: !526, scopeLine: 377, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !528)
!526 = !DISubroutineType(types: !527)
!527 = !{null, !56, !291, !10}
!528 = !{!529, !530, !531}
!529 = !DILocalVariable(name: "state", arg: 1, scope: !525, file: !3, line: 376, type: !56)
!530 = !DILocalVariable(name: "data", arg: 2, scope: !525, file: !3, line: 376, type: !291)
!531 = !DILocalVariable(name: "len", arg: 3, scope: !525, file: !3, line: 376, type: !10)
!532 = !DILocation(line: 0, scope: !525)
!533 = !DILocation(line: 378, column: 3, scope: !525)
!534 = !DILocation(line: 379, column: 1, scope: !525)
!535 = distinct !DISubprogram(name: "Hacl_Impl_SHA2_512_update_last", scope: !3, file: !3, line: 279, type: !526, scopeLine: 280, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !536)
!536 = !{!537, !538, !539, !540, !544, !545, !546, !547, !548, !556, !557, !558}
!537 = !DILocalVariable(name: "state", arg: 1, scope: !535, file: !3, line: 279, type: !56)
!538 = !DILocalVariable(name: "data", arg: 2, scope: !535, file: !3, line: 279, type: !291)
!539 = !DILocalVariable(name: "len", arg: 3, scope: !535, file: !3, line: 279, type: !10)
!540 = !DILocalVariable(name: "blocks", scope: !535, file: !3, line: 281, type: !541)
!541 = !DICompositeType(tag: DW_TAG_array_type, baseType: !13, size: 2048, elements: !542)
!542 = !{!543}
!543 = !DISubrange(count: 256)
!544 = !DILocalVariable(name: "nb", scope: !535, file: !3, line: 282, type: !5)
!545 = !DILocalVariable(name: "final_blocks", scope: !535, file: !3, line: 287, type: !291)
!546 = !DILocalVariable(name: "n1", scope: !535, file: !3, line: 293, type: !10)
!547 = !DILocalVariable(name: "padding", scope: !535, file: !3, line: 294, type: !291)
!548 = !DILocalVariable(name: "encodedlen", scope: !535, file: !3, line: 296, type: !549)
!549 = !DIDerivedType(tag: DW_TAG_typedef, name: "FStar_UInt128_t", file: !550, line: 37, baseType: !551)
!550 = !DIFile(filename: "hacl-c/hacl-c/FStar.h", directory: "/mnt/c/Users/fwill/Documents/HS24/semester_project/tools/binsec/binsec/examples/hacl", checksumkind: CSK_MD5, checksum: "f30034e5606e554271b07b1e7e8a42fa")
!551 = !DIDerivedType(tag: DW_TAG_typedef, name: "FStar_UInt128_uint128", file: !550, line: 35, baseType: !552)
!552 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !550, line: 30, size: 128, elements: !553)
!553 = !{!554, !555}
!554 = !DIDerivedType(tag: DW_TAG_member, name: "low", scope: !552, file: !550, line: 32, baseType: !10, size: 64)
!555 = !DIDerivedType(tag: DW_TAG_member, name: "high", scope: !552, file: !550, line: 33, baseType: !10, size: 64, offset: 64)
!556 = !DILocalVariable(name: "pad0len", scope: !535, file: !3, line: 301, type: !5)
!557 = !DILocalVariable(name: "buf1", scope: !535, file: !3, line: 302, type: !291)
!558 = !DILocalVariable(name: "buf2", scope: !535, file: !3, line: 303, type: !291)
!559 = !DILocation(line: 0, scope: !535)
!560 = !DILocation(line: 281, column: 3, scope: !535)
!561 = !DILocation(line: 281, column: 11, scope: !535)
!562 = !DILocation(line: 283, column: 11, scope: !563)
!563 = distinct !DILexicalBlock(scope: !535, file: !3, line: 283, column: 7)
!564 = !DILocation(line: 288, column: 7, scope: !535)
!565 = !DILocation(line: 292, column: 30, scope: !535)
!566 = !DILocation(line: 292, column: 3, scope: !535)
!567 = !DILocation(line: 293, column: 17, scope: !535)
!568 = !DILocation(line: 294, column: 35, scope: !535)
!569 = !DILocation(line: 295, column: 3, scope: !535)
!570 = !DILocation(line: 296, column: 3, scope: !535)
!571 = !DILocation(line: 297, column: 48, scope: !535)
!572 = !DILocation(line: 298, column: 9, scope: !535)
!573 = !DILocation(line: 297, column: 30, scope: !535)
!574 = !{!575, !116, i64 0}
!575 = !{!"", !116, i64 0, !116, i64 8}
!576 = !{!575, !116, i64 8}
!577 = !DILocation(line: 297, column: 5, scope: !535)
!578 = !DILocation(line: 301, column: 29, scope: !535)
!579 = !DILocation(line: 301, column: 79, scope: !535)
!580 = !DILocation(line: 303, column: 27, scope: !535)
!581 = !DILocation(line: 303, column: 42, scope: !535)
!582 = !DILocation(line: 304, column: 12, scope: !535)
!583 = !{!117, !117, i64 0}
!584 = !DILocation(line: 305, column: 3, scope: !535)
!585 = !DILocalVariable(name: "n", arg: 2, scope: !586, file: !384, line: 557, type: !589)
!586 = distinct !DISubprogram(name: "store128_be", scope: !384, file: !384, line: 557, type: !587, scopeLine: 557, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !590)
!587 = !DISubroutineType(types: !588)
!588 = !{null, !291, !589}
!589 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint128_t", file: !384, line: 510, baseType: !551)
!590 = !{!591, !585}
!591 = !DILocalVariable(name: "b", arg: 1, scope: !586, file: !384, line: 557, type: !291)
!592 = !DILocation(line: 0, scope: !586, inlinedAt: !593)
!593 = distinct !DILocation(line: 305, column: 3, scope: !535)
!594 = !DILocalVariable(name: "b", arg: 1, scope: !595, file: !384, line: 532, type: !291)
!595 = distinct !DISubprogram(name: "store128_be_", scope: !384, file: !384, line: 532, type: !596, scopeLine: 532, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !599)
!596 = !DISubroutineType(types: !597)
!597 = !{null, !291, !598}
!598 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !589, size: 32)
!599 = !{!594, !600}
!600 = !DILocalVariable(name: "n", arg: 2, scope: !595, file: !384, line: 532, type: !598)
!601 = !DILocation(line: 0, scope: !595, inlinedAt: !602)
!602 = distinct !DILocation(line: 557, column: 59, scope: !586, inlinedAt: !593)
!603 = !DILocation(line: 0, scope: !393, inlinedAt: !604)
!604 = distinct !DILocation(line: 533, column: 3, scope: !595, inlinedAt: !602)
!605 = !DILocation(line: 75, column: 10, scope: !393, inlinedAt: !604)
!606 = !DILocalVariable(name: "b", arg: 1, scope: !607, file: !384, line: 357, type: !291)
!607 = distinct !DISubprogram(name: "store64", scope: !384, file: !384, line: 357, type: !608, scopeLine: 357, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !610)
!608 = !DISubroutineType(types: !609)
!609 = !{null, !291, !10}
!610 = !{!606, !611}
!611 = !DILocalVariable(name: "i", arg: 2, scope: !607, file: !384, line: 357, type: !10)
!612 = !DILocation(line: 0, scope: !607, inlinedAt: !613)
!613 = distinct !DILocation(line: 533, column: 3, scope: !595, inlinedAt: !602)
!614 = !DILocation(line: 357, column: 54, scope: !607, inlinedAt: !613)
!615 = !DILocation(line: 534, column: 3, scope: !595, inlinedAt: !602)
!616 = !DILocation(line: 0, scope: !393, inlinedAt: !617)
!617 = distinct !DILocation(line: 534, column: 3, scope: !595, inlinedAt: !602)
!618 = !DILocation(line: 75, column: 10, scope: !393, inlinedAt: !617)
!619 = !DILocation(line: 0, scope: !607, inlinedAt: !620)
!620 = distinct !DILocation(line: 534, column: 3, scope: !595, inlinedAt: !602)
!621 = !DILocation(line: 357, column: 54, scope: !607, inlinedAt: !620)
!622 = !DILocation(line: 0, scope: !503, inlinedAt: !623)
!623 = distinct !DILocation(line: 306, column: 3, scope: !535)
!624 = !DILocation(line: 0, scope: !508, inlinedAt: !623)
!625 = !DILocation(line: 274, column: 27, scope: !510, inlinedAt: !623)
!626 = !DILocation(line: 274, column: 23, scope: !510, inlinedAt: !623)
!627 = !DILocation(line: 0, scope: !510, inlinedAt: !623)
!628 = !DILocation(line: 275, column: 5, scope: !510, inlinedAt: !623)
!629 = !DILocation(line: 272, column: 49, scope: !511, inlinedAt: !623)
!630 = !DILocation(line: 272, column: 37, scope: !511, inlinedAt: !623)
!631 = !DILocation(line: 272, column: 3, scope: !508, inlinedAt: !623)
!632 = distinct !{!632, !631, !633, !407, !408}
!633 = !DILocation(line: 276, column: 3, scope: !508, inlinedAt: !623)
!634 = !DILocation(line: 307, column: 1, scope: !535)
!635 = distinct !DISubprogram(name: "Hacl_SHA2_512_finish", scope: !3, file: !3, line: 381, type: !289, scopeLine: 382, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !636)
!636 = !{!637, !638}
!637 = !DILocalVariable(name: "state", arg: 1, scope: !635, file: !3, line: 381, type: !56)
!638 = !DILocalVariable(name: "hash1", arg: 2, scope: !635, file: !3, line: 381, type: !291)
!639 = !DILocation(line: 0, scope: !635)
!640 = !DILocalVariable(name: "state", arg: 1, scope: !641, file: !3, line: 309, type: !56)
!641 = distinct !DISubprogram(name: "Hacl_Impl_SHA2_512_finish", scope: !3, file: !3, line: 309, type: !289, scopeLine: 310, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !642)
!642 = !{!640, !643, !644}
!643 = !DILocalVariable(name: "hash1", arg: 2, scope: !641, file: !3, line: 309, type: !291)
!644 = !DILocalVariable(name: "hash_w", scope: !641, file: !3, line: 311, type: !56)
!645 = !DILocation(line: 0, scope: !641, inlinedAt: !646)
!646 = distinct !DILocation(line: 383, column: 3, scope: !635)
!647 = !DILocation(line: 311, column: 28, scope: !641, inlinedAt: !646)
!648 = !DILocalVariable(name: "output", arg: 1, scope: !649, file: !3, line: 39, type: !291)
!649 = distinct !DISubprogram(name: "Hacl_Hash_Lib_LoadStore_uint64s_to_be_bytes", scope: !3, file: !3, line: 39, type: !650, scopeLine: 40, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !652)
!650 = !DISubroutineType(types: !651)
!651 = !{null, !291, !56, !5}
!652 = !{!648, !653, !654, !655, !657, !660}
!653 = !DILocalVariable(name: "input", arg: 2, scope: !649, file: !3, line: 39, type: !56)
!654 = !DILocalVariable(name: "len", arg: 3, scope: !649, file: !3, line: 39, type: !5)
!655 = !DILocalVariable(name: "i", scope: !656, file: !3, line: 41, type: !5)
!656 = distinct !DILexicalBlock(scope: !649, file: !3, line: 41, column: 3)
!657 = !DILocalVariable(name: "hd1", scope: !658, file: !3, line: 43, type: !10)
!658 = distinct !DILexicalBlock(scope: !659, file: !3, line: 42, column: 3)
!659 = distinct !DILexicalBlock(scope: !656, file: !3, line: 41, column: 3)
!660 = !DILocalVariable(name: "x0", scope: !658, file: !3, line: 44, type: !291)
!661 = !DILocation(line: 0, scope: !649, inlinedAt: !662)
!662 = distinct !DILocation(line: 312, column: 3, scope: !641, inlinedAt: !646)
!663 = !DILocation(line: 0, scope: !656, inlinedAt: !662)
!664 = !DILocation(line: 41, column: 3, scope: !656, inlinedAt: !662)
!665 = !DILocation(line: 43, column: 20, scope: !658, inlinedAt: !662)
!666 = !DILocation(line: 0, scope: !658, inlinedAt: !662)
!667 = !DILocation(line: 44, column: 41, scope: !658, inlinedAt: !662)
!668 = !DILocation(line: 44, column: 26, scope: !658, inlinedAt: !662)
!669 = !DILocation(line: 0, scope: !393, inlinedAt: !670)
!670 = distinct !DILocation(line: 45, column: 5, scope: !658, inlinedAt: !662)
!671 = !DILocation(line: 75, column: 10, scope: !393, inlinedAt: !670)
!672 = !DILocation(line: 0, scope: !607, inlinedAt: !673)
!673 = distinct !DILocation(line: 45, column: 5, scope: !658, inlinedAt: !662)
!674 = !DILocation(line: 357, column: 54, scope: !607, inlinedAt: !673)
!675 = !DILocation(line: 41, column: 50, scope: !659, inlinedAt: !662)
!676 = !DILocation(line: 41, column: 37, scope: !659, inlinedAt: !662)
!677 = distinct !{!677, !664, !678, !407, !408}
!678 = !DILocation(line: 46, column: 3, scope: !656, inlinedAt: !662)
!679 = !DILocation(line: 384, column: 1, scope: !635)
!680 = distinct !DISubprogram(name: "Hacl_SHA2_512_hash", scope: !3, file: !3, line: 386, type: !681, scopeLine: 387, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !683)
!681 = !DISubroutineType(types: !682)
!682 = !{null, !291, !291, !5}
!683 = !{!684, !685, !686}
!684 = !DILocalVariable(name: "hash1", arg: 1, scope: !680, file: !3, line: 386, type: !291)
!685 = !DILocalVariable(name: "input", arg: 2, scope: !680, file: !3, line: 386, type: !291)
!686 = !DILocalVariable(name: "len", arg: 3, scope: !680, file: !3, line: 386, type: !5)
!687 = !DILocation(line: 0, scope: !680)
!688 = !DILocation(line: 0, scope: !689, inlinedAt: !704)
!689 = distinct !DISubprogram(name: "Hacl_Impl_SHA2_512_hash", scope: !3, file: !3, line: 315, type: !681, scopeLine: 316, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !690)
!690 = !{!691, !692, !693, !694, !698, !700, !701, !702, !703}
!691 = !DILocalVariable(name: "hash1", arg: 1, scope: !689, file: !3, line: 315, type: !291)
!692 = !DILocalVariable(name: "input", arg: 2, scope: !689, file: !3, line: 315, type: !291)
!693 = !DILocalVariable(name: "len", arg: 3, scope: !689, file: !3, line: 315, type: !5)
!694 = !DILocalVariable(name: "state", scope: !689, file: !3, line: 318, type: !695)
!695 = !DICompositeType(tag: DW_TAG_array_type, baseType: !10, size: 10816, elements: !696)
!696 = !{!697}
!697 = !DISubrange(count: 169)
!698 = !DILocalVariable(name: "_i", scope: !699, file: !3, line: 319, type: !5)
!699 = distinct !DILexicalBlock(scope: !689, file: !3, line: 319, column: 3)
!700 = !DILocalVariable(name: "n1", scope: !689, file: !3, line: 321, type: !5)
!701 = !DILocalVariable(name: "r", scope: !689, file: !3, line: 322, type: !5)
!702 = !DILocalVariable(name: "input_blocks", scope: !689, file: !3, line: 323, type: !291)
!703 = !DILocalVariable(name: "input_last", scope: !689, file: !3, line: 324, type: !291)
!704 = distinct !DILocation(line: 388, column: 3, scope: !680)
!705 = !DILocation(line: 318, column: 3, scope: !689, inlinedAt: !704)
!706 = !DILocation(line: 318, column: 12, scope: !689, inlinedAt: !704)
!707 = !DILocation(line: 0, scope: !699, inlinedAt: !704)
!708 = !DILocation(line: 320, column: 15, scope: !709, inlinedAt: !704)
!709 = distinct !DILexicalBlock(scope: !699, file: !3, line: 319, column: 3)
!710 = !DILocation(line: 321, column: 21, scope: !689, inlinedAt: !704)
!711 = !DILocation(line: 322, column: 20, scope: !689, inlinedAt: !704)
!712 = !DILocation(line: 324, column: 36, scope: !689, inlinedAt: !704)
!713 = !DILocation(line: 324, column: 31, scope: !689, inlinedAt: !704)
!714 = !DILocation(line: 325, column: 27, scope: !689, inlinedAt: !704)
!715 = !DILocation(line: 0, scope: !62, inlinedAt: !716)
!716 = distinct !DILocation(line: 325, column: 3, scope: !689, inlinedAt: !704)
!717 = !DILocation(line: 51, column: 24, scope: !62, inlinedAt: !716)
!718 = !DILocation(line: 53, column: 26, scope: !62, inlinedAt: !716)
!719 = !DILocation(line: 55, column: 22, scope: !62, inlinedAt: !716)
!720 = !DILocation(line: 56, column: 21, scope: !62, inlinedAt: !716)
!721 = !DILocation(line: 57, column: 21, scope: !62, inlinedAt: !716)
!722 = !DILocation(line: 58, column: 21, scope: !62, inlinedAt: !716)
!723 = !DILocation(line: 60, column: 23, scope: !62, inlinedAt: !716)
!724 = !DILocation(line: 62, column: 23, scope: !62, inlinedAt: !716)
!725 = !DILocation(line: 63, column: 11, scope: !62, inlinedAt: !716)
!726 = !DILocation(line: 64, column: 3, scope: !62, inlinedAt: !716)
!727 = !DILocation(line: 64, column: 11, scope: !62, inlinedAt: !716)
!728 = !DILocation(line: 65, column: 3, scope: !62, inlinedAt: !716)
!729 = !DILocation(line: 65, column: 11, scope: !62, inlinedAt: !716)
!730 = !DILocation(line: 66, column: 3, scope: !62, inlinedAt: !716)
!731 = !DILocation(line: 66, column: 11, scope: !62, inlinedAt: !716)
!732 = !DILocation(line: 67, column: 11, scope: !62, inlinedAt: !716)
!733 = !DILocation(line: 68, column: 3, scope: !62, inlinedAt: !716)
!734 = !DILocation(line: 68, column: 11, scope: !62, inlinedAt: !716)
!735 = !DILocation(line: 69, column: 3, scope: !62, inlinedAt: !716)
!736 = !DILocation(line: 69, column: 11, scope: !62, inlinedAt: !716)
!737 = !DILocation(line: 70, column: 3, scope: !62, inlinedAt: !716)
!738 = !DILocation(line: 70, column: 11, scope: !62, inlinedAt: !716)
!739 = !DILocation(line: 72, column: 23, scope: !62, inlinedAt: !716)
!740 = !DILocation(line: 73, column: 11, scope: !62, inlinedAt: !716)
!741 = !DILocation(line: 74, column: 3, scope: !62, inlinedAt: !716)
!742 = !DILocation(line: 74, column: 11, scope: !62, inlinedAt: !716)
!743 = !DILocation(line: 75, column: 3, scope: !62, inlinedAt: !716)
!744 = !DILocation(line: 75, column: 11, scope: !62, inlinedAt: !716)
!745 = !DILocation(line: 76, column: 3, scope: !62, inlinedAt: !716)
!746 = !DILocation(line: 76, column: 11, scope: !62, inlinedAt: !716)
!747 = !DILocation(line: 77, column: 11, scope: !62, inlinedAt: !716)
!748 = !DILocation(line: 78, column: 3, scope: !62, inlinedAt: !716)
!749 = !DILocation(line: 78, column: 11, scope: !62, inlinedAt: !716)
!750 = !DILocation(line: 79, column: 3, scope: !62, inlinedAt: !716)
!751 = !DILocation(line: 79, column: 11, scope: !62, inlinedAt: !716)
!752 = !DILocation(line: 80, column: 3, scope: !62, inlinedAt: !716)
!753 = !DILocation(line: 80, column: 11, scope: !62, inlinedAt: !716)
!754 = !DILocation(line: 82, column: 23, scope: !62, inlinedAt: !716)
!755 = !DILocation(line: 84, column: 23, scope: !62, inlinedAt: !716)
!756 = !DILocation(line: 85, column: 11, scope: !62, inlinedAt: !716)
!757 = !DILocation(line: 86, column: 3, scope: !62, inlinedAt: !716)
!758 = !DILocation(line: 86, column: 11, scope: !62, inlinedAt: !716)
!759 = !DILocation(line: 87, column: 3, scope: !62, inlinedAt: !716)
!760 = !DILocation(line: 87, column: 11, scope: !62, inlinedAt: !716)
!761 = !DILocation(line: 88, column: 3, scope: !62, inlinedAt: !716)
!762 = !DILocation(line: 88, column: 11, scope: !62, inlinedAt: !716)
!763 = !DILocation(line: 89, column: 11, scope: !62, inlinedAt: !716)
!764 = !DILocation(line: 90, column: 3, scope: !62, inlinedAt: !716)
!765 = !DILocation(line: 90, column: 11, scope: !62, inlinedAt: !716)
!766 = !DILocation(line: 91, column: 3, scope: !62, inlinedAt: !716)
!767 = !DILocation(line: 91, column: 11, scope: !62, inlinedAt: !716)
!768 = !DILocation(line: 92, column: 3, scope: !62, inlinedAt: !716)
!769 = !DILocation(line: 92, column: 11, scope: !62, inlinedAt: !716)
!770 = !DILocation(line: 94, column: 23, scope: !62, inlinedAt: !716)
!771 = !DILocation(line: 95, column: 11, scope: !62, inlinedAt: !716)
!772 = !DILocation(line: 96, column: 3, scope: !62, inlinedAt: !716)
!773 = !DILocation(line: 96, column: 11, scope: !62, inlinedAt: !716)
!774 = !DILocation(line: 97, column: 3, scope: !62, inlinedAt: !716)
!775 = !DILocation(line: 97, column: 11, scope: !62, inlinedAt: !716)
!776 = !DILocation(line: 98, column: 3, scope: !62, inlinedAt: !716)
!777 = !DILocation(line: 98, column: 11, scope: !62, inlinedAt: !716)
!778 = !DILocation(line: 99, column: 11, scope: !62, inlinedAt: !716)
!779 = !DILocation(line: 100, column: 3, scope: !62, inlinedAt: !716)
!780 = !DILocation(line: 100, column: 11, scope: !62, inlinedAt: !716)
!781 = !DILocation(line: 101, column: 3, scope: !62, inlinedAt: !716)
!782 = !DILocation(line: 101, column: 11, scope: !62, inlinedAt: !716)
!783 = !DILocation(line: 102, column: 3, scope: !62, inlinedAt: !716)
!784 = !DILocation(line: 102, column: 11, scope: !62, inlinedAt: !716)
!785 = !DILocation(line: 104, column: 22, scope: !62, inlinedAt: !716)
!786 = !DILocation(line: 106, column: 23, scope: !62, inlinedAt: !716)
!787 = !DILocation(line: 107, column: 11, scope: !62, inlinedAt: !716)
!788 = !DILocation(line: 108, column: 3, scope: !62, inlinedAt: !716)
!789 = !DILocation(line: 108, column: 11, scope: !62, inlinedAt: !716)
!790 = !DILocation(line: 109, column: 3, scope: !62, inlinedAt: !716)
!791 = !DILocation(line: 109, column: 11, scope: !62, inlinedAt: !716)
!792 = !DILocation(line: 110, column: 3, scope: !62, inlinedAt: !716)
!793 = !DILocation(line: 110, column: 11, scope: !62, inlinedAt: !716)
!794 = !DILocation(line: 111, column: 11, scope: !62, inlinedAt: !716)
!795 = !DILocation(line: 112, column: 3, scope: !62, inlinedAt: !716)
!796 = !DILocation(line: 112, column: 11, scope: !62, inlinedAt: !716)
!797 = !DILocation(line: 113, column: 3, scope: !62, inlinedAt: !716)
!798 = !DILocation(line: 113, column: 11, scope: !62, inlinedAt: !716)
!799 = !DILocation(line: 114, column: 3, scope: !62, inlinedAt: !716)
!800 = !DILocation(line: 114, column: 11, scope: !62, inlinedAt: !716)
!801 = !DILocation(line: 116, column: 23, scope: !62, inlinedAt: !716)
!802 = !DILocation(line: 117, column: 11, scope: !62, inlinedAt: !716)
!803 = !DILocation(line: 118, column: 3, scope: !62, inlinedAt: !716)
!804 = !DILocation(line: 118, column: 11, scope: !62, inlinedAt: !716)
!805 = !DILocation(line: 119, column: 3, scope: !62, inlinedAt: !716)
!806 = !DILocation(line: 119, column: 11, scope: !62, inlinedAt: !716)
!807 = !DILocation(line: 120, column: 3, scope: !62, inlinedAt: !716)
!808 = !DILocation(line: 120, column: 11, scope: !62, inlinedAt: !716)
!809 = !DILocation(line: 121, column: 11, scope: !62, inlinedAt: !716)
!810 = !DILocation(line: 122, column: 3, scope: !62, inlinedAt: !716)
!811 = !DILocation(line: 122, column: 11, scope: !62, inlinedAt: !716)
!812 = !DILocation(line: 123, column: 3, scope: !62, inlinedAt: !716)
!813 = !DILocation(line: 123, column: 11, scope: !62, inlinedAt: !716)
!814 = !DILocation(line: 124, column: 3, scope: !62, inlinedAt: !716)
!815 = !DILocation(line: 124, column: 11, scope: !62, inlinedAt: !716)
!816 = !DILocation(line: 126, column: 23, scope: !62, inlinedAt: !716)
!817 = !DILocation(line: 128, column: 25, scope: !62, inlinedAt: !716)
!818 = !DILocation(line: 129, column: 12, scope: !62, inlinedAt: !716)
!819 = !DILocation(line: 130, column: 3, scope: !62, inlinedAt: !716)
!820 = !DILocation(line: 130, column: 12, scope: !62, inlinedAt: !716)
!821 = !DILocation(line: 131, column: 3, scope: !62, inlinedAt: !716)
!822 = !DILocation(line: 131, column: 12, scope: !62, inlinedAt: !716)
!823 = !DILocation(line: 132, column: 3, scope: !62, inlinedAt: !716)
!824 = !DILocation(line: 132, column: 12, scope: !62, inlinedAt: !716)
!825 = !DILocation(line: 133, column: 12, scope: !62, inlinedAt: !716)
!826 = !DILocation(line: 134, column: 3, scope: !62, inlinedAt: !716)
!827 = !DILocation(line: 134, column: 12, scope: !62, inlinedAt: !716)
!828 = !DILocation(line: 135, column: 3, scope: !62, inlinedAt: !716)
!829 = !DILocation(line: 135, column: 12, scope: !62, inlinedAt: !716)
!830 = !DILocation(line: 136, column: 3, scope: !62, inlinedAt: !716)
!831 = !DILocation(line: 136, column: 12, scope: !62, inlinedAt: !716)
!832 = !DILocation(line: 138, column: 25, scope: !62, inlinedAt: !716)
!833 = !DILocation(line: 139, column: 12, scope: !62, inlinedAt: !716)
!834 = !DILocation(line: 140, column: 3, scope: !62, inlinedAt: !716)
!835 = !DILocation(line: 140, column: 12, scope: !62, inlinedAt: !716)
!836 = !DILocation(line: 141, column: 3, scope: !62, inlinedAt: !716)
!837 = !DILocation(line: 141, column: 12, scope: !62, inlinedAt: !716)
!838 = !DILocation(line: 142, column: 3, scope: !62, inlinedAt: !716)
!839 = !DILocation(line: 142, column: 12, scope: !62, inlinedAt: !716)
!840 = !DILocation(line: 143, column: 12, scope: !62, inlinedAt: !716)
!841 = !DILocation(line: 144, column: 3, scope: !62, inlinedAt: !716)
!842 = !DILocation(line: 144, column: 12, scope: !62, inlinedAt: !716)
!843 = !DILocation(line: 145, column: 3, scope: !62, inlinedAt: !716)
!844 = !DILocation(line: 145, column: 12, scope: !62, inlinedAt: !716)
!845 = !DILocation(line: 146, column: 3, scope: !62, inlinedAt: !716)
!846 = !DILocation(line: 146, column: 12, scope: !62, inlinedAt: !716)
!847 = !DILocation(line: 148, column: 23, scope: !62, inlinedAt: !716)
!848 = !DILocation(line: 150, column: 25, scope: !62, inlinedAt: !716)
!849 = !DILocation(line: 151, column: 10, scope: !62, inlinedAt: !716)
!850 = !DILocation(line: 152, column: 3, scope: !62, inlinedAt: !716)
!851 = !DILocation(line: 152, column: 10, scope: !62, inlinedAt: !716)
!852 = !DILocation(line: 153, column: 3, scope: !62, inlinedAt: !716)
!853 = !DILocation(line: 153, column: 10, scope: !62, inlinedAt: !716)
!854 = !DILocation(line: 154, column: 3, scope: !62, inlinedAt: !716)
!855 = !DILocation(line: 154, column: 10, scope: !62, inlinedAt: !716)
!856 = !DILocation(line: 155, column: 12, scope: !62, inlinedAt: !716)
!857 = !DILocation(line: 156, column: 3, scope: !62, inlinedAt: !716)
!858 = !DILocation(line: 156, column: 12, scope: !62, inlinedAt: !716)
!859 = !DILocation(line: 157, column: 3, scope: !62, inlinedAt: !716)
!860 = !DILocation(line: 157, column: 12, scope: !62, inlinedAt: !716)
!861 = !DILocation(line: 158, column: 3, scope: !62, inlinedAt: !716)
!862 = !DILocation(line: 158, column: 12, scope: !62, inlinedAt: !716)
!863 = !DILocation(line: 160, column: 25, scope: !62, inlinedAt: !716)
!864 = !DILocation(line: 161, column: 12, scope: !62, inlinedAt: !716)
!865 = !DILocation(line: 162, column: 3, scope: !62, inlinedAt: !716)
!866 = !DILocation(line: 162, column: 12, scope: !62, inlinedAt: !716)
!867 = !DILocation(line: 163, column: 3, scope: !62, inlinedAt: !716)
!868 = !DILocation(line: 163, column: 12, scope: !62, inlinedAt: !716)
!869 = !DILocation(line: 164, column: 3, scope: !62, inlinedAt: !716)
!870 = !DILocation(line: 164, column: 12, scope: !62, inlinedAt: !716)
!871 = !DILocation(line: 165, column: 12, scope: !62, inlinedAt: !716)
!872 = !DILocation(line: 166, column: 3, scope: !62, inlinedAt: !716)
!873 = !DILocation(line: 166, column: 12, scope: !62, inlinedAt: !716)
!874 = !DILocation(line: 167, column: 3, scope: !62, inlinedAt: !716)
!875 = !DILocation(line: 167, column: 12, scope: !62, inlinedAt: !716)
!876 = !DILocation(line: 168, column: 3, scope: !62, inlinedAt: !716)
!877 = !DILocation(line: 168, column: 12, scope: !62, inlinedAt: !716)
!878 = !DILocation(line: 170, column: 23, scope: !62, inlinedAt: !716)
!879 = !DILocation(line: 171, column: 12, scope: !62, inlinedAt: !716)
!880 = !DILocation(line: 172, column: 3, scope: !62, inlinedAt: !716)
!881 = !DILocation(line: 172, column: 12, scope: !62, inlinedAt: !716)
!882 = !DILocation(line: 173, column: 3, scope: !62, inlinedAt: !716)
!883 = !DILocation(line: 173, column: 12, scope: !62, inlinedAt: !716)
!884 = !DILocation(line: 174, column: 3, scope: !62, inlinedAt: !716)
!885 = !DILocation(line: 174, column: 12, scope: !62, inlinedAt: !716)
!886 = !DILocation(line: 175, column: 10, scope: !62, inlinedAt: !716)
!887 = !DILocation(line: 176, column: 3, scope: !62, inlinedAt: !716)
!888 = !DILocation(line: 176, column: 10, scope: !62, inlinedAt: !716)
!889 = !DILocation(line: 177, column: 3, scope: !62, inlinedAt: !716)
!890 = !DILocation(line: 177, column: 10, scope: !62, inlinedAt: !716)
!891 = !DILocation(line: 178, column: 3, scope: !62, inlinedAt: !716)
!892 = !DILocation(line: 178, column: 10, scope: !62, inlinedAt: !716)
!893 = !DILocation(line: 179, column: 10, scope: !62, inlinedAt: !716)
!894 = !DILocation(line: 0, scope: !503, inlinedAt: !895)
!895 = distinct !DILocation(line: 326, column: 3, scope: !689, inlinedAt: !704)
!896 = !DILocation(line: 0, scope: !508, inlinedAt: !895)
!897 = !DILocation(line: 272, column: 37, scope: !511, inlinedAt: !895)
!898 = !DILocation(line: 272, column: 3, scope: !508, inlinedAt: !895)
!899 = !DILocation(line: 274, column: 27, scope: !510, inlinedAt: !895)
!900 = !DILocation(line: 274, column: 23, scope: !510, inlinedAt: !895)
!901 = !DILocation(line: 0, scope: !510, inlinedAt: !895)
!902 = !DILocation(line: 275, column: 5, scope: !510, inlinedAt: !895)
!903 = !DILocation(line: 272, column: 49, scope: !511, inlinedAt: !895)
!904 = distinct !{!904, !898, !905, !407, !408}
!905 = !DILocation(line: 276, column: 3, scope: !508, inlinedAt: !895)
!906 = !DILocation(line: 327, column: 53, scope: !689, inlinedAt: !704)
!907 = !DILocation(line: 327, column: 3, scope: !689, inlinedAt: !704)
!908 = !DILocation(line: 0, scope: !641, inlinedAt: !909)
!909 = distinct !DILocation(line: 328, column: 3, scope: !689, inlinedAt: !704)
!910 = !DILocation(line: 0, scope: !649, inlinedAt: !911)
!911 = distinct !DILocation(line: 312, column: 3, scope: !641, inlinedAt: !909)
!912 = !DILocation(line: 0, scope: !656, inlinedAt: !911)
!913 = !DILocation(line: 41, column: 3, scope: !656, inlinedAt: !911)
!914 = !DILocation(line: 43, column: 20, scope: !658, inlinedAt: !911)
!915 = !DILocation(line: 0, scope: !658, inlinedAt: !911)
!916 = !DILocation(line: 44, column: 41, scope: !658, inlinedAt: !911)
!917 = !DILocation(line: 44, column: 26, scope: !658, inlinedAt: !911)
!918 = !DILocation(line: 0, scope: !393, inlinedAt: !919)
!919 = distinct !DILocation(line: 45, column: 5, scope: !658, inlinedAt: !911)
!920 = !DILocation(line: 75, column: 10, scope: !393, inlinedAt: !919)
!921 = !DILocation(line: 0, scope: !607, inlinedAt: !922)
!922 = distinct !DILocation(line: 45, column: 5, scope: !658, inlinedAt: !911)
!923 = !DILocation(line: 357, column: 54, scope: !607, inlinedAt: !922)
!924 = !DILocation(line: 41, column: 50, scope: !659, inlinedAt: !911)
!925 = !DILocation(line: 41, column: 37, scope: !659, inlinedAt: !911)
!926 = distinct !{!926, !913, !927, !407, !408}
!927 = !DILocation(line: 46, column: 3, scope: !656, inlinedAt: !911)
!928 = !DILocation(line: 329, column: 1, scope: !689, inlinedAt: !704)
!929 = !DILocation(line: 389, column: 1, scope: !680)
!930 = !DISubprogram(name: "FStar_UInt128_shift_left", scope: !550, file: !550, line: 57, type: !931, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !933)
!931 = !DISubroutineType(types: !932)
!932 = !{!551, !551, !5}
!933 = !{}
!934 = !DISubprogram(name: "FStar_UInt128_add", scope: !550, file: !550, line: 41, type: !935, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !933)
!935 = !DISubroutineType(types: !936)
!936 = !{!551, !551, !551}
!937 = !DISubprogram(name: "FStar_UInt128_mul_wide", scope: !550, file: !550, line: 78, type: !938, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !933)
!938 = !DISubroutineType(types: !939)
!939 = !{!551, !10, !10}
!940 = !DISubprogram(name: "FStar_UInt128_uint64_to_uint128", scope: !550, file: !550, line: 65, type: !941, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !933)
!941 = !DISubroutineType(types: !942)
!942 = !{!551, !10}
