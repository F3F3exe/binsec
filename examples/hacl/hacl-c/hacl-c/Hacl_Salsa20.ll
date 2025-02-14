; ModuleID = 'hacl-c/hacl-c/Hacl_Salsa20.c'
source_filename = "hacl-c/hacl-c/Hacl_Salsa20.c"
target datalayout = "e-m:e-p:32:32-p270:32:32-p271:32:32-p272:64:64-f64:32:64-f80:32-n8:16:32-S128"
target triple = "i386-pc-linux-gnu"

; Function Attrs: nofree nosync nounwind uwtable
define dso_local void @Hacl_Salsa20_salsa20(i8* nocapture noundef writeonly %0, i8* nocapture noundef readonly %1, i32 noundef %2, i8* nocapture noundef readonly %3, i8* nocapture noundef readonly %4, i64 noundef %5) local_unnamed_addr #0 !dbg !19 {
  %7 = alloca [16 x i32], align 4
  %8 = alloca [64 x i8], align 1
  %9 = alloca [48 x i32], align 4
  %10 = alloca [16 x i32], align 4
  call void @llvm.dbg.value(metadata i8* %0, metadata !27, metadata !DIExpression()), !dbg !33
  call void @llvm.dbg.value(metadata i8* %1, metadata !28, metadata !DIExpression()), !dbg !33
  call void @llvm.dbg.value(metadata i32 %2, metadata !29, metadata !DIExpression()), !dbg !33
  call void @llvm.dbg.value(metadata i8* %3, metadata !30, metadata !DIExpression()), !dbg !33
  call void @llvm.dbg.value(metadata i8* %4, metadata !31, metadata !DIExpression()), !dbg !33
  call void @llvm.dbg.value(metadata i64 %5, metadata !32, metadata !DIExpression()), !dbg !33
  call void @llvm.dbg.value(metadata i8* %0, metadata !34, metadata !DIExpression()) #7, !dbg !48
  call void @llvm.dbg.value(metadata i8* %1, metadata !37, metadata !DIExpression()) #7, !dbg !48
  call void @llvm.dbg.value(metadata i32 %2, metadata !38, metadata !DIExpression()) #7, !dbg !48
  call void @llvm.dbg.value(metadata i8* %3, metadata !39, metadata !DIExpression()) #7, !dbg !48
  call void @llvm.dbg.value(metadata i8* %4, metadata !40, metadata !DIExpression()) #7, !dbg !48
  call void @llvm.dbg.value(metadata i64 %5, metadata !41, metadata !DIExpression()) #7, !dbg !48
  %11 = bitcast [16 x i32]* %10 to i8*, !dbg !50
  call void @llvm.lifetime.start.p0i8(i64 64, i8* nonnull %11) #7, !dbg !50
  call void @llvm.dbg.declare(metadata [16 x i32]* %10, metadata !42, metadata !DIExpression()) #7, !dbg !51
  call void @llvm.memset.p0i8.i32(i8* noundef nonnull align 4 dereferenceable(64) %11, i8 0, i32 64, i1 false) #7, !dbg !51
  %12 = getelementptr inbounds [16 x i32], [16 x i32]* %10, i32 0, i32 0, !dbg !52
  call void @llvm.dbg.value(metadata i32* %12, metadata !46, metadata !DIExpression()) #7, !dbg !48
  call void @llvm.dbg.value(metadata i32* %12, metadata !53, metadata !DIExpression()) #7, !dbg !60
  call void @llvm.dbg.value(metadata i8* %3, metadata !58, metadata !DIExpression()) #7, !dbg !60
  call void @llvm.dbg.value(metadata i8* %4, metadata !59, metadata !DIExpression()) #7, !dbg !60
  call void @llvm.dbg.value(metadata i32* %12, metadata !62, metadata !DIExpression()) #7, !dbg !88
  call void @llvm.dbg.value(metadata i8* %3, metadata !67, metadata !DIExpression()) #7, !dbg !88
  call void @llvm.dbg.value(metadata i8* %4, metadata !68, metadata !DIExpression()) #7, !dbg !88
  call void @llvm.dbg.value(metadata i64 0, metadata !69, metadata !DIExpression()) #7, !dbg !88
  call void @llvm.dbg.value(metadata i32 0, metadata !70, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 32)) #7, !dbg !88
  call void @llvm.dbg.value(metadata i32 0, metadata !70, metadata !DIExpression(DW_OP_LLVM_fragment, 32, 32)) #7, !dbg !88
  call void @llvm.dbg.value(metadata i32 0, metadata !70, metadata !DIExpression(DW_OP_LLVM_fragment, 64, 32)) #7, !dbg !88
  call void @llvm.dbg.value(metadata i32 0, metadata !70, metadata !DIExpression(DW_OP_LLVM_fragment, 96, 32)) #7, !dbg !88
  call void @llvm.dbg.value(metadata i32 0, metadata !70, metadata !DIExpression(DW_OP_LLVM_fragment, 128, 32)) #7, !dbg !88
  call void @llvm.dbg.value(metadata i32 0, metadata !70, metadata !DIExpression(DW_OP_LLVM_fragment, 160, 32)) #7, !dbg !88
  call void @llvm.dbg.value(metadata i32 0, metadata !70, metadata !DIExpression(DW_OP_LLVM_fragment, 192, 32)) #7, !dbg !88
  call void @llvm.dbg.value(metadata i32 0, metadata !70, metadata !DIExpression(DW_OP_LLVM_fragment, 224, 32)) #7, !dbg !88
  call void @llvm.dbg.value(metadata i32 0, metadata !70, metadata !DIExpression(DW_OP_LLVM_fragment, 256, 32)) #7, !dbg !88
  call void @llvm.dbg.value(metadata i32 0, metadata !70, metadata !DIExpression(DW_OP_LLVM_fragment, 288, 32)) #7, !dbg !88
  call void @llvm.dbg.value(metadata [10 x i32]* undef, metadata !74, metadata !DIExpression()) #7, !dbg !88
  call void @llvm.dbg.value(metadata i32* undef, metadata !75, metadata !DIExpression()) #7, !dbg !88
  call void @llvm.dbg.value(metadata [10 x i32]* undef, metadata !90, metadata !DIExpression()) #7, !dbg !103
  call void @llvm.dbg.value(metadata i8* %3, metadata !95, metadata !DIExpression()) #7, !dbg !103
  call void @llvm.dbg.value(metadata i32 8, metadata !96, metadata !DIExpression()) #7, !dbg !103
  call void @llvm.dbg.value(metadata i32 0, metadata !97, metadata !DIExpression()) #7, !dbg !105
  %13 = bitcast i8* %3 to i32*, !dbg !106
  %14 = load i32, i32* %13, align 1, !dbg !106
  call void @llvm.dbg.value(metadata i32 %14, metadata !70, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 32)) #7, !dbg !88
  %15 = getelementptr inbounds i8, i8* %3, i32 4, !dbg !106
  %16 = bitcast i8* %15 to i32*, !dbg !106
  %17 = load i32, i32* %16, align 1, !dbg !106
  call void @llvm.dbg.value(metadata i32 %17, metadata !70, metadata !DIExpression(DW_OP_LLVM_fragment, 32, 32)) #7, !dbg !88
  %18 = getelementptr inbounds i8, i8* %3, i32 8, !dbg !106
  %19 = bitcast i8* %18 to i32*, !dbg !106
  %20 = load i32, i32* %19, align 1, !dbg !106
  call void @llvm.dbg.value(metadata i32 %20, metadata !70, metadata !DIExpression(DW_OP_LLVM_fragment, 64, 32)) #7, !dbg !88
  %21 = getelementptr inbounds i8, i8* %3, i32 12, !dbg !106
  %22 = bitcast i8* %21 to i32*, !dbg !106
  %23 = load i32, i32* %22, align 1, !dbg !106
  call void @llvm.dbg.value(metadata i32 %23, metadata !70, metadata !DIExpression(DW_OP_LLVM_fragment, 96, 32)) #7, !dbg !88
  %24 = getelementptr inbounds i8, i8* %3, i32 16, !dbg !106
  %25 = bitcast i8* %24 to i32*, !dbg !106
  %26 = load i32, i32* %25, align 1, !dbg !106
  call void @llvm.dbg.value(metadata i32 %26, metadata !70, metadata !DIExpression(DW_OP_LLVM_fragment, 128, 32)) #7, !dbg !88
  %27 = getelementptr inbounds i8, i8* %3, i32 20, !dbg !106
  %28 = bitcast i8* %27 to i32*, !dbg !106
  %29 = load i32, i32* %28, align 1, !dbg !106
  call void @llvm.dbg.value(metadata i32 %29, metadata !70, metadata !DIExpression(DW_OP_LLVM_fragment, 160, 32)) #7, !dbg !88
  %30 = getelementptr inbounds i8, i8* %3, i32 24, !dbg !106
  %31 = bitcast i8* %30 to i32*, !dbg !106
  %32 = load i32, i32* %31, align 1, !dbg !106
  call void @llvm.dbg.value(metadata i32 %32, metadata !70, metadata !DIExpression(DW_OP_LLVM_fragment, 192, 32)) #7, !dbg !88
  %33 = getelementptr inbounds i8, i8* %3, i32 28, !dbg !106
  %34 = bitcast i8* %33 to i32*, !dbg !106
  %35 = load i32, i32* %34, align 1, !dbg !106
  call void @llvm.dbg.value(metadata i32 %35, metadata !70, metadata !DIExpression(DW_OP_LLVM_fragment, 224, 32)) #7, !dbg !88
  call void @llvm.dbg.value(metadata i32 undef, metadata !97, metadata !DIExpression()) #7, !dbg !105
  call void @llvm.dbg.value(metadata i32 undef, metadata !99, metadata !DIExpression()) #7, !dbg !107
  call void @llvm.dbg.value(metadata i32 undef, metadata !102, metadata !DIExpression()) #7, !dbg !107
  call void @llvm.dbg.value(metadata i32 undef, metadata !70, metadata !DIExpression(DW_OP_LLVM_fragment, 256, 32)) #7, !dbg !88
  call void @llvm.dbg.value(metadata i32 undef, metadata !70, metadata !DIExpression(DW_OP_LLVM_fragment, 288, 32)) #7, !dbg !88
  %36 = getelementptr inbounds i8, i8* %4, i32 4, !dbg !108
  %37 = bitcast i8* %36 to i32*, !dbg !108
  %38 = load i32, i32* %37, align 1, !dbg !108
  call void @llvm.dbg.value(metadata i32 %38, metadata !70, metadata !DIExpression(DW_OP_LLVM_fragment, 288, 32)) #7, !dbg !88
  %39 = bitcast i8* %4 to i32*, !dbg !108
  %40 = load i32, i32* %39, align 1, !dbg !108
  call void @llvm.dbg.value(metadata i32 %40, metadata !70, metadata !DIExpression(DW_OP_LLVM_fragment, 256, 32)) #7, !dbg !88
  call void @llvm.dbg.value(metadata i32 undef, metadata !97, metadata !DIExpression()) #7, !dbg !110
  call void @llvm.dbg.value(metadata i32 undef, metadata !99, metadata !DIExpression()) #7, !dbg !111
  call void @llvm.dbg.value(metadata i32 undef, metadata !102, metadata !DIExpression()) #7, !dbg !111
  call void @llvm.dbg.value(metadata i32* undef, metadata !74, metadata !DIExpression()) #7, !dbg !88
  call void @llvm.dbg.value(metadata i32* undef, metadata !90, metadata !DIExpression()) #7, !dbg !103
  call void @llvm.dbg.value(metadata i32 0, metadata !76, metadata !DIExpression()) #7, !dbg !88
  call void @llvm.dbg.value(metadata i32 0, metadata !77, metadata !DIExpression()) #7, !dbg !88
  call void @llvm.dbg.value(metadata i32 %14, metadata !78, metadata !DIExpression()) #7, !dbg !88
  call void @llvm.dbg.value(metadata i32 %17, metadata !79, metadata !DIExpression()) #7, !dbg !88
  call void @llvm.dbg.value(metadata i32 %20, metadata !80, metadata !DIExpression()) #7, !dbg !88
  call void @llvm.dbg.value(metadata i32 %23, metadata !81, metadata !DIExpression()) #7, !dbg !88
  call void @llvm.dbg.value(metadata i32 %26, metadata !82, metadata !DIExpression()) #7, !dbg !88
  call void @llvm.dbg.value(metadata i32 %29, metadata !83, metadata !DIExpression()) #7, !dbg !88
  call void @llvm.dbg.value(metadata i32 %32, metadata !84, metadata !DIExpression()) #7, !dbg !88
  call void @llvm.dbg.value(metadata i32 %35, metadata !85, metadata !DIExpression()) #7, !dbg !88
  call void @llvm.dbg.value(metadata i32 undef, metadata !86, metadata !DIExpression()) #7, !dbg !88
  call void @llvm.dbg.value(metadata i32 undef, metadata !87, metadata !DIExpression()) #7, !dbg !88
  call void @llvm.dbg.value(metadata i32* %12, metadata !112, metadata !DIExpression()) #7, !dbg !133
  call void @llvm.dbg.value(metadata i32 1634760805, metadata !117, metadata !DIExpression()) #7, !dbg !133
  call void @llvm.dbg.value(metadata i32 %14, metadata !118, metadata !DIExpression()) #7, !dbg !133
  call void @llvm.dbg.value(metadata i32 %17, metadata !119, metadata !DIExpression()) #7, !dbg !133
  call void @llvm.dbg.value(metadata i32 %20, metadata !120, metadata !DIExpression()) #7, !dbg !133
  call void @llvm.dbg.value(metadata i32 %23, metadata !121, metadata !DIExpression()) #7, !dbg !133
  call void @llvm.dbg.value(metadata i32 857760878, metadata !122, metadata !DIExpression()) #7, !dbg !133
  call void @llvm.dbg.value(metadata i32 undef, metadata !123, metadata !DIExpression()) #7, !dbg !133
  call void @llvm.dbg.value(metadata i32 undef, metadata !124, metadata !DIExpression()) #7, !dbg !133
  call void @llvm.dbg.value(metadata i32 0, metadata !125, metadata !DIExpression()) #7, !dbg !133
  call void @llvm.dbg.value(metadata i32 0, metadata !126, metadata !DIExpression()) #7, !dbg !133
  call void @llvm.dbg.value(metadata i32 2036477234, metadata !127, metadata !DIExpression()) #7, !dbg !133
  call void @llvm.dbg.value(metadata i32 %26, metadata !128, metadata !DIExpression()) #7, !dbg !133
  call void @llvm.dbg.value(metadata i32 %29, metadata !129, metadata !DIExpression()) #7, !dbg !133
  call void @llvm.dbg.value(metadata i32 %32, metadata !130, metadata !DIExpression()) #7, !dbg !133
  call void @llvm.dbg.value(metadata i32 %35, metadata !131, metadata !DIExpression()) #7, !dbg !133
  call void @llvm.dbg.value(metadata i32 1797285236, metadata !132, metadata !DIExpression()) #7, !dbg !133
  call void @llvm.dbg.value(metadata i32* %12, metadata !135, metadata !DIExpression()) #7, !dbg !148
  call void @llvm.dbg.value(metadata i32 1634760805, metadata !140, metadata !DIExpression()) #7, !dbg !148
  call void @llvm.dbg.value(metadata i32 %14, metadata !141, metadata !DIExpression()) #7, !dbg !148
  call void @llvm.dbg.value(metadata i32 %17, metadata !142, metadata !DIExpression()) #7, !dbg !148
  call void @llvm.dbg.value(metadata i32 %20, metadata !143, metadata !DIExpression()) #7, !dbg !148
  call void @llvm.dbg.value(metadata i32 %23, metadata !144, metadata !DIExpression()) #7, !dbg !148
  call void @llvm.dbg.value(metadata i32 857760878, metadata !145, metadata !DIExpression()) #7, !dbg !148
  call void @llvm.dbg.value(metadata i32 undef, metadata !146, metadata !DIExpression()) #7, !dbg !148
  call void @llvm.dbg.value(metadata i32 undef, metadata !147, metadata !DIExpression()) #7, !dbg !148
  call void @llvm.dbg.value(metadata i32* %12, metadata !150, metadata !DIExpression()) #7, !dbg !159
  call void @llvm.dbg.value(metadata i32 1634760805, metadata !155, metadata !DIExpression()) #7, !dbg !159
  call void @llvm.dbg.value(metadata i32 %14, metadata !156, metadata !DIExpression()) #7, !dbg !159
  call void @llvm.dbg.value(metadata i32 %17, metadata !157, metadata !DIExpression()) #7, !dbg !159
  call void @llvm.dbg.value(metadata i32 %20, metadata !158, metadata !DIExpression()) #7, !dbg !159
  store i32 1634760805, i32* %12, align 4, !dbg !161, !tbaa !162
  %41 = getelementptr inbounds [16 x i32], [16 x i32]* %10, i32 0, i32 1, !dbg !166
  store i32 %14, i32* %41, align 4, !dbg !167, !tbaa !162
  %42 = getelementptr inbounds [16 x i32], [16 x i32]* %10, i32 0, i32 2, !dbg !168
  store i32 %17, i32* %42, align 4, !dbg !169, !tbaa !162
  %43 = getelementptr inbounds [16 x i32], [16 x i32]* %10, i32 0, i32 3, !dbg !170
  store i32 %20, i32* %43, align 4, !dbg !171, !tbaa !162
  %44 = getelementptr inbounds [16 x i32], [16 x i32]* %10, i32 0, i32 4, !dbg !172
  call void @llvm.dbg.value(metadata i32* %44, metadata !150, metadata !DIExpression()) #7, !dbg !173
  call void @llvm.dbg.value(metadata i32 %23, metadata !155, metadata !DIExpression()) #7, !dbg !173
  call void @llvm.dbg.value(metadata i32 857760878, metadata !156, metadata !DIExpression()) #7, !dbg !173
  call void @llvm.dbg.value(metadata i32 undef, metadata !157, metadata !DIExpression()) #7, !dbg !173
  call void @llvm.dbg.value(metadata i32 undef, metadata !158, metadata !DIExpression()) #7, !dbg !173
  store i32 %23, i32* %44, align 4, !dbg !175, !tbaa !162
  %45 = getelementptr inbounds [16 x i32], [16 x i32]* %10, i32 0, i32 5, !dbg !176
  store i32 857760878, i32* %45, align 4, !dbg !177, !tbaa !162
  %46 = getelementptr inbounds [16 x i32], [16 x i32]* %10, i32 0, i32 6, !dbg !178
  store i32 %40, i32* %46, align 4, !dbg !179, !tbaa !162
  %47 = getelementptr inbounds [16 x i32], [16 x i32]* %10, i32 0, i32 7, !dbg !180
  store i32 %38, i32* %47, align 4, !dbg !181, !tbaa !162
  %48 = getelementptr inbounds [16 x i32], [16 x i32]* %10, i32 0, i32 8, !dbg !182
  call void @llvm.dbg.value(metadata i32* %48, metadata !135, metadata !DIExpression()) #7, !dbg !183
  call void @llvm.dbg.value(metadata i32 0, metadata !140, metadata !DIExpression()) #7, !dbg !183
  call void @llvm.dbg.value(metadata i32 0, metadata !141, metadata !DIExpression()) #7, !dbg !183
  call void @llvm.dbg.value(metadata i32 2036477234, metadata !142, metadata !DIExpression()) #7, !dbg !183
  call void @llvm.dbg.value(metadata i32 %26, metadata !143, metadata !DIExpression()) #7, !dbg !183
  call void @llvm.dbg.value(metadata i32 %29, metadata !144, metadata !DIExpression()) #7, !dbg !183
  call void @llvm.dbg.value(metadata i32 %32, metadata !145, metadata !DIExpression()) #7, !dbg !183
  call void @llvm.dbg.value(metadata i32 %35, metadata !146, metadata !DIExpression()) #7, !dbg !183
  call void @llvm.dbg.value(metadata i32 1797285236, metadata !147, metadata !DIExpression()) #7, !dbg !183
  call void @llvm.dbg.value(metadata i32* %48, metadata !150, metadata !DIExpression()) #7, !dbg !185
  call void @llvm.dbg.value(metadata i32 0, metadata !155, metadata !DIExpression()) #7, !dbg !185
  call void @llvm.dbg.value(metadata i32 0, metadata !156, metadata !DIExpression()) #7, !dbg !185
  call void @llvm.dbg.value(metadata i32 2036477234, metadata !157, metadata !DIExpression()) #7, !dbg !185
  call void @llvm.dbg.value(metadata i32 %26, metadata !158, metadata !DIExpression()) #7, !dbg !185
  store i32 0, i32* %48, align 4, !dbg !187, !tbaa !162
  %49 = getelementptr inbounds [16 x i32], [16 x i32]* %10, i32 0, i32 9, !dbg !188
  store i32 0, i32* %49, align 4, !dbg !189, !tbaa !162
  %50 = getelementptr inbounds [16 x i32], [16 x i32]* %10, i32 0, i32 10, !dbg !190
  store i32 2036477234, i32* %50, align 4, !dbg !191, !tbaa !162
  %51 = getelementptr inbounds [16 x i32], [16 x i32]* %10, i32 0, i32 11, !dbg !192
  store i32 %26, i32* %51, align 4, !dbg !193, !tbaa !162
  %52 = getelementptr inbounds [16 x i32], [16 x i32]* %10, i32 0, i32 12, !dbg !194
  call void @llvm.dbg.value(metadata i32* %52, metadata !150, metadata !DIExpression()) #7, !dbg !195
  call void @llvm.dbg.value(metadata i32 %29, metadata !155, metadata !DIExpression()) #7, !dbg !195
  call void @llvm.dbg.value(metadata i32 %32, metadata !156, metadata !DIExpression()) #7, !dbg !195
  call void @llvm.dbg.value(metadata i32 %35, metadata !157, metadata !DIExpression()) #7, !dbg !195
  call void @llvm.dbg.value(metadata i32 1797285236, metadata !158, metadata !DIExpression()) #7, !dbg !195
  store i32 %29, i32* %52, align 4, !dbg !197, !tbaa !162
  %53 = getelementptr inbounds [16 x i32], [16 x i32]* %10, i32 0, i32 13, !dbg !198
  store i32 %32, i32* %53, align 4, !dbg !199, !tbaa !162
  %54 = getelementptr inbounds [16 x i32], [16 x i32]* %10, i32 0, i32 14, !dbg !200
  store i32 %35, i32* %54, align 4, !dbg !201, !tbaa !162
  %55 = getelementptr inbounds [16 x i32], [16 x i32]* %10, i32 0, i32 15, !dbg !202
  store i32 1797285236, i32* %55, align 4, !dbg !203, !tbaa !162
  call void @llvm.dbg.value(metadata i8* %0, metadata !204, metadata !DIExpression()) #7, !dbg !219
  call void @llvm.dbg.value(metadata i8* %1, metadata !209, metadata !DIExpression()) #7, !dbg !219
  call void @llvm.dbg.value(metadata i32 %2, metadata !210, metadata !DIExpression()) #7, !dbg !219
  call void @llvm.dbg.value(metadata i32* %12, metadata !211, metadata !DIExpression()) #7, !dbg !219
  call void @llvm.dbg.value(metadata i64 %5, metadata !212, metadata !DIExpression()) #7, !dbg !219
  %56 = lshr i32 %2, 6, !dbg !221
  call void @llvm.dbg.value(metadata i32 %56, metadata !213, metadata !DIExpression()) #7, !dbg !219
  %57 = and i32 %2, 63, !dbg !222
  call void @llvm.dbg.value(metadata i32 %57, metadata !214, metadata !DIExpression()) #7, !dbg !219
  call void @llvm.dbg.value(metadata i8* %0, metadata !215, metadata !DIExpression()) #7, !dbg !219
  call void @llvm.dbg.value(metadata i8* %1, metadata !216, metadata !DIExpression()) #7, !dbg !219
  %58 = and i32 %2, -64, !dbg !223
  call void @llvm.dbg.value(metadata !DIArgList(i8* %0, i32 %58), metadata !217, metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_constu, 1, DW_OP_mul, DW_OP_plus, DW_OP_stack_value)) #7, !dbg !219
  call void @llvm.dbg.value(metadata !DIArgList(i8* %1, i32 %58), metadata !218, metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_constu, 1, DW_OP_mul, DW_OP_plus, DW_OP_stack_value)) #7, !dbg !219
  call void @llvm.dbg.value(metadata i8* %0, metadata !224, metadata !DIExpression()) #7, !dbg !237
  call void @llvm.dbg.value(metadata i8* %1, metadata !227, metadata !DIExpression()) #7, !dbg !237
  call void @llvm.dbg.value(metadata i32 %56, metadata !228, metadata !DIExpression()) #7, !dbg !237
  call void @llvm.dbg.value(metadata i32* %12, metadata !229, metadata !DIExpression()) #7, !dbg !237
  call void @llvm.dbg.value(metadata i64 %5, metadata !230, metadata !DIExpression()) #7, !dbg !237
  call void @llvm.dbg.value(metadata i32 0, metadata !231, metadata !DIExpression()) #7, !dbg !239
  %59 = icmp ult i32 %2, 64, !dbg !240
  br i1 %59, label %100, label %60, !dbg !241

60:                                               ; preds = %6
  %61 = bitcast [48 x i32]* %9 to i8*
  %62 = getelementptr inbounds [48 x i32], [48 x i32]* %9, i32 0, i32 0
  %63 = getelementptr inbounds [48 x i32], [48 x i32]* %9, i32 0, i32 16
  %64 = bitcast i32* %63 to i8*
  %65 = getelementptr inbounds [48 x i32], [48 x i32]* %9, i32 0, i32 32
  %66 = bitcast i32* %65 to i8*
  br label %67, !dbg !241

67:                                               ; preds = %96, %60
  %68 = phi i32 [ 0, %60 ], [ %98, %96 ]
  call void @llvm.dbg.value(metadata i32 %68, metadata !231, metadata !DIExpression()) #7, !dbg !239
  %69 = zext i32 %68 to i64, !dbg !242
  %70 = add i64 %69, %5, !dbg !243
  call void @llvm.dbg.value(metadata i32* %12, metadata !244, metadata !DIExpression()) #7, !dbg !265
  call void @llvm.dbg.value(metadata i64 %70, metadata !251, metadata !DIExpression()) #7, !dbg !265
  call void @llvm.lifetime.start.p0i8(i64 192, i8* nonnull %61) #7, !dbg !267
  call void @llvm.dbg.declare(metadata [48 x i32]* %9, metadata !252, metadata !DIExpression()) #7, !dbg !268
  call void @llvm.dbg.value(metadata i32* %62, metadata !256, metadata !DIExpression()) #7, !dbg !265
  call void @llvm.dbg.value(metadata i32* %63, metadata !257, metadata !DIExpression()) #7, !dbg !265
  call void @llvm.dbg.value(metadata i32* %62, metadata !269, metadata !DIExpression()) #7, !dbg !278
  call void @llvm.dbg.value(metadata i32* %12, metadata !274, metadata !DIExpression()) #7, !dbg !278
  call void @llvm.dbg.value(metadata i64 %70, metadata !275, metadata !DIExpression()) #7, !dbg !278
  %71 = trunc i64 %70 to i32, !dbg !280
  call void @llvm.dbg.value(metadata i32 %71, metadata !276, metadata !DIExpression()) #7, !dbg !278
  %72 = lshr i64 %70, 32, !dbg !281
  %73 = trunc i64 %72 to i32, !dbg !282
  call void @llvm.dbg.value(metadata i32 %73, metadata !277, metadata !DIExpression()) #7, !dbg !278
  store i32 %71, i32* %48, align 4, !dbg !283, !tbaa !162
  store i32 %73, i32* %49, align 4, !dbg !284, !tbaa !162
  call void @llvm.dbg.value(metadata i32* %62, metadata !285, metadata !DIExpression()) #7, !dbg !291
  call void @llvm.dbg.value(metadata i32* %12, metadata !290, metadata !DIExpression()) #7, !dbg !291
  call void @llvm.memset.p0i8.i32(i8* noundef nonnull align 4 dereferenceable(128) %64, i8 0, i32 128, i1 false) #7, !dbg !293
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* noundef nonnull align 4 dereferenceable(64) %61, i8* noundef nonnull align 4 dereferenceable(64) %11, i32 64, i1 false) #7, !dbg !293
  call fastcc void @Hacl_Impl_Salsa20_rounds(i32* noundef nonnull %62) #7, !dbg !294
  call void @llvm.dbg.value(metadata i32* %62, metadata !295, metadata !DIExpression()) #7, !dbg !305
  call void @llvm.dbg.value(metadata i32* %12, metadata !298, metadata !DIExpression()) #7, !dbg !305
  call void @llvm.dbg.value(metadata i32 0, metadata !299, metadata !DIExpression()) #7, !dbg !307
  br label %74, !dbg !308

74:                                               ; preds = %74, %67
  %75 = phi i32 [ 0, %67 ], [ %81, %74 ]
  call void @llvm.dbg.value(metadata i32 %75, metadata !299, metadata !DIExpression()) #7, !dbg !307
  %76 = getelementptr inbounds [48 x i32], [48 x i32]* %9, i32 0, i32 %75, !dbg !309
  %77 = load i32, i32* %76, align 4, !dbg !309, !tbaa !162
  call void @llvm.dbg.value(metadata i32 %77, metadata !301, metadata !DIExpression()) #7, !dbg !310
  %78 = getelementptr inbounds [16 x i32], [16 x i32]* %10, i32 0, i32 %75, !dbg !311
  %79 = load i32, i32* %78, align 4, !dbg !311, !tbaa !162
  call void @llvm.dbg.value(metadata i32 %79, metadata !304, metadata !DIExpression()) #7, !dbg !310
  %80 = add i32 %79, %77, !dbg !312
  store i32 %80, i32* %76, align 4, !dbg !313, !tbaa !162
  %81 = add nuw nsw i32 %75, 1, !dbg !314
  call void @llvm.dbg.value(metadata i32 %81, metadata !299, metadata !DIExpression()) #7, !dbg !307
  %82 = icmp eq i32 %81, 16, !dbg !315
  br i1 %82, label %83, label %74, !dbg !308, !llvm.loop !316

83:                                               ; preds = %74
  %84 = shl i32 %68, 6, !dbg !320
  %85 = getelementptr inbounds i8, i8* %1, i32 %84, !dbg !321
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* noundef nonnull align 4 dereferenceable(64) %64, i8* noundef nonnull align 1 dereferenceable(64) %85, i32 64, i1 false) #7, !dbg !322
  call void @llvm.dbg.value(metadata i32 undef, metadata !97, metadata !DIExpression()) #7, !dbg !324
  call void @llvm.dbg.value(metadata i32 undef, metadata !99, metadata !DIExpression()) #7, !dbg !325
  call void @llvm.dbg.value(metadata i32 undef, metadata !102, metadata !DIExpression()) #7, !dbg !325
  br label %86, !dbg !326

86:                                               ; preds = %86, %83
  %87 = phi i32 [ %94, %86 ], [ 0, %83 ]
  call void @llvm.dbg.value(metadata i32 %87, metadata !259, metadata !DIExpression()) #7, !dbg !327
  %88 = getelementptr inbounds i32, i32* %63, i32 %87, !dbg !328
  %89 = load i32, i32* %88, align 4, !dbg !328, !tbaa !162
  call void @llvm.dbg.value(metadata i32 %89, metadata !261, metadata !DIExpression()) #7, !dbg !329
  %90 = getelementptr inbounds [48 x i32], [48 x i32]* %9, i32 0, i32 %87, !dbg !330
  %91 = load i32, i32* %90, align 4, !dbg !330, !tbaa !162
  call void @llvm.dbg.value(metadata i32 %91, metadata !264, metadata !DIExpression()) #7, !dbg !329
  %92 = xor i32 %91, %89, !dbg !331
  %93 = getelementptr inbounds i32, i32* %65, i32 %87, !dbg !332
  store i32 %92, i32* %93, align 4, !dbg !333, !tbaa !162
  %94 = add nuw nsw i32 %87, 1, !dbg !334
  call void @llvm.dbg.value(metadata i32 %94, metadata !259, metadata !DIExpression()) #7, !dbg !327
  %95 = icmp eq i32 %94, 16, !dbg !335
  br i1 %95, label %96, label %86, !dbg !326, !llvm.loop !336

96:                                               ; preds = %86
  %97 = getelementptr inbounds i8, i8* %0, i32 %84, !dbg !338
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* noundef nonnull align 1 dereferenceable(64) %97, i8* noundef nonnull align 4 dereferenceable(64) %66, i32 64, i1 false) #7, !dbg !339
  call void @llvm.dbg.value(metadata i32 undef, metadata !359, metadata !DIExpression()) #7, !dbg !362
  call void @llvm.dbg.value(metadata i32 undef, metadata !360, metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_constu, 2, DW_OP_shl, DW_OP_constu, 1, DW_OP_mul, DW_OP_plus, DW_OP_stack_value)) #7, !dbg !362
  call void @llvm.dbg.value(metadata i32 undef, metadata !345, metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_constu, 2, DW_OP_shl, DW_OP_constu, 1, DW_OP_mul, DW_OP_plus, DW_OP_stack_value)) #7, !dbg !363
  call void @llvm.dbg.value(metadata i32 undef, metadata !346, metadata !DIExpression()) #7, !dbg !363
  call void @llvm.dbg.value(metadata i32 undef, metadata !358, metadata !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value)) #7, !dbg !364
  call void @llvm.lifetime.end.p0i8(i64 192, i8* nonnull %61) #7, !dbg !365
  %98 = add nuw nsw i32 %68, 1, !dbg !366
  call void @llvm.dbg.value(metadata i32 %98, metadata !231, metadata !DIExpression()) #7, !dbg !239
  %99 = icmp eq i32 %98, %56, !dbg !240
  br i1 %99, label %100, label %67, !dbg !241, !llvm.loop !367

100:                                              ; preds = %96, %6
  %101 = icmp eq i32 %57, 0, !dbg !369
  br i1 %101, label %134, label %102, !dbg !371

102:                                              ; preds = %100
  %103 = zext i32 %56 to i64, !dbg !372
  %104 = add i64 %103, %5, !dbg !373
  call void @llvm.dbg.value(metadata i32 %57, metadata !374, metadata !DIExpression()) #7, !dbg !392
  call void @llvm.dbg.value(metadata i32* %12, metadata !379, metadata !DIExpression()) #7, !dbg !392
  call void @llvm.dbg.value(metadata i64 %104, metadata !380, metadata !DIExpression()) #7, !dbg !392
  %105 = getelementptr inbounds [64 x i8], [64 x i8]* %8, i32 0, i32 0, !dbg !394
  call void @llvm.lifetime.start.p0i8(i64 64, i8* nonnull %105) #7, !dbg !394
  call void @llvm.dbg.declare(metadata [64 x i8]* %8, metadata !381, metadata !DIExpression()) #7, !dbg !395
  call void @llvm.memset.p0i8.i32(i8* noundef nonnull align 1 dereferenceable(64) %105, i8 0, i32 64, i1 false) #7, !dbg !395
  call void @llvm.dbg.value(metadata i8* %105, metadata !396, metadata !DIExpression()) #7, !dbg !404
  call void @llvm.dbg.value(metadata i32* %12, metadata !401, metadata !DIExpression()) #7, !dbg !404
  call void @llvm.dbg.value(metadata i64 %104, metadata !402, metadata !DIExpression()) #7, !dbg !404
  %106 = bitcast [16 x i32]* %7 to i8*, !dbg !406
  call void @llvm.lifetime.start.p0i8(i64 64, i8* nonnull %106) #7, !dbg !406
  call void @llvm.dbg.declare(metadata [16 x i32]* %7, metadata !403, metadata !DIExpression()) #7, !dbg !407
  %107 = getelementptr inbounds [16 x i32], [16 x i32]* %7, i32 0, i32 0, !dbg !408
  call void @llvm.dbg.value(metadata i32* %107, metadata !269, metadata !DIExpression()) #7, !dbg !409
  call void @llvm.dbg.value(metadata i32* %12, metadata !274, metadata !DIExpression()) #7, !dbg !409
  call void @llvm.dbg.value(metadata i64 %104, metadata !275, metadata !DIExpression()) #7, !dbg !409
  %108 = trunc i64 %104 to i32, !dbg !411
  call void @llvm.dbg.value(metadata i32 %108, metadata !276, metadata !DIExpression()) #7, !dbg !409
  %109 = lshr i64 %104, 32, !dbg !412
  %110 = trunc i64 %109 to i32, !dbg !413
  call void @llvm.dbg.value(metadata i32 %110, metadata !277, metadata !DIExpression()) #7, !dbg !409
  store i32 %108, i32* %48, align 4, !dbg !414, !tbaa !162
  store i32 %110, i32* %49, align 4, !dbg !415, !tbaa !162
  call void @llvm.dbg.value(metadata i32* %107, metadata !285, metadata !DIExpression()) #7, !dbg !416
  call void @llvm.dbg.value(metadata i32* %12, metadata !290, metadata !DIExpression()) #7, !dbg !416
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* noundef nonnull align 4 dereferenceable(64) %106, i8* noundef nonnull align 4 dereferenceable(64) %11, i32 64, i1 false) #7, !dbg !418
  call fastcc void @Hacl_Impl_Salsa20_rounds(i32* noundef nonnull %107) #7, !dbg !419
  call void @llvm.dbg.value(metadata i32* %107, metadata !295, metadata !DIExpression()) #7, !dbg !420
  call void @llvm.dbg.value(metadata i32* %12, metadata !298, metadata !DIExpression()) #7, !dbg !420
  call void @llvm.dbg.value(metadata i32 0, metadata !299, metadata !DIExpression()) #7, !dbg !422
  br label %111, !dbg !423

111:                                              ; preds = %111, %102
  %112 = phi i32 [ 0, %102 ], [ %118, %111 ]
  call void @llvm.dbg.value(metadata i32 %112, metadata !299, metadata !DIExpression()) #7, !dbg !422
  %113 = getelementptr inbounds [16 x i32], [16 x i32]* %7, i32 0, i32 %112, !dbg !424
  %114 = load i32, i32* %113, align 4, !dbg !424, !tbaa !162
  call void @llvm.dbg.value(metadata i32 %114, metadata !301, metadata !DIExpression()) #7, !dbg !425
  %115 = getelementptr inbounds [16 x i32], [16 x i32]* %10, i32 0, i32 %112, !dbg !426
  %116 = load i32, i32* %115, align 4, !dbg !426, !tbaa !162
  call void @llvm.dbg.value(metadata i32 %116, metadata !304, metadata !DIExpression()) #7, !dbg !425
  %117 = add i32 %116, %114, !dbg !427
  store i32 %117, i32* %113, align 4, !dbg !428, !tbaa !162
  %118 = add nuw nsw i32 %112, 1, !dbg !429
  call void @llvm.dbg.value(metadata i32 %118, metadata !299, metadata !DIExpression()) #7, !dbg !422
  %119 = icmp eq i32 %118, 16, !dbg !430
  br i1 %119, label %120, label %111, !dbg !423, !llvm.loop !431

120:                                              ; preds = %111
  %121 = getelementptr inbounds i8, i8* %1, i32 %58, !dbg !433
  %122 = getelementptr inbounds i8, i8* %0, i32 %58, !dbg !434
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* noundef nonnull align 1 dereferenceable(64) %105, i8* noundef nonnull align 4 dereferenceable(64) %106, i32 64, i1 false) #7, !dbg !435
  call void @llvm.dbg.value(metadata i32 undef, metadata !358, metadata !DIExpression()) #7, !dbg !438
  call void @llvm.dbg.value(metadata i32 undef, metadata !359, metadata !DIExpression()) #7, !dbg !439
  call void @llvm.dbg.value(metadata i32 undef, metadata !360, metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_constu, 2, DW_OP_shl, DW_OP_constu, 1, DW_OP_mul, DW_OP_plus, DW_OP_stack_value)) #7, !dbg !439
  call void @llvm.dbg.value(metadata i32 undef, metadata !345, metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_constu, 2, DW_OP_shl, DW_OP_constu, 1, DW_OP_mul, DW_OP_plus, DW_OP_stack_value)) #7, !dbg !440
  call void @llvm.dbg.value(metadata i32 undef, metadata !346, metadata !DIExpression()) #7, !dbg !440
  call void @llvm.dbg.value(metadata i32 undef, metadata !358, metadata !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value)) #7, !dbg !438
  call void @llvm.lifetime.end.p0i8(i64 64, i8* nonnull %106) #7, !dbg !441
  call void @llvm.dbg.value(metadata i8* %105, metadata !385, metadata !DIExpression()) #7, !dbg !392
  call void @llvm.dbg.value(metadata i32 0, metadata !386, metadata !DIExpression()) #7, !dbg !442
  br label %123, !dbg !443

123:                                              ; preds = %123, %120
  %124 = phi i32 [ %131, %123 ], [ 0, %120 ]
  call void @llvm.dbg.value(metadata i32 %124, metadata !386, metadata !DIExpression()) #7, !dbg !442
  %125 = getelementptr inbounds i8, i8* %121, i32 %124, !dbg !444
  %126 = load i8, i8* %125, align 1, !dbg !444, !tbaa !445
  call void @llvm.dbg.value(metadata i8 %126, metadata !388, metadata !DIExpression()) #7, !dbg !446
  %127 = getelementptr inbounds [64 x i8], [64 x i8]* %8, i32 0, i32 %124, !dbg !447
  %128 = load i8, i8* %127, align 1, !dbg !447, !tbaa !445
  call void @llvm.dbg.value(metadata i8 %128, metadata !391, metadata !DIExpression()) #7, !dbg !446
  %129 = xor i8 %128, %126, !dbg !448
  %130 = getelementptr inbounds i8, i8* %122, i32 %124, !dbg !449
  store i8 %129, i8* %130, align 1, !dbg !450, !tbaa !445
  %131 = add nuw nsw i32 %124, 1, !dbg !451
  call void @llvm.dbg.value(metadata i32 %131, metadata !386, metadata !DIExpression()) #7, !dbg !442
  %132 = icmp eq i32 %131, %57, !dbg !452
  br i1 %132, label %133, label %123, !dbg !443, !llvm.loop !453

133:                                              ; preds = %123
  call void @llvm.lifetime.end.p0i8(i64 64, i8* nonnull %105) #7, !dbg !455
  br label %134, !dbg !456

134:                                              ; preds = %100, %133
  call void @llvm.lifetime.end.p0i8(i64 64, i8* nonnull %11) #7, !dbg !457
  ret void, !dbg !458
}

; Function Attrs: mustprogress nofree nosync nounwind readnone speculatable willreturn
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: nofree nosync nounwind uwtable
define dso_local void @Hacl_Salsa20_hsalsa20(i8* nocapture noundef writeonly %0, i8* nocapture noundef readonly %1, i8* nocapture noundef readonly %2) local_unnamed_addr #0 !dbg !459 {
  %4 = alloca [24 x i32], align 4
  call void @llvm.dbg.value(metadata i8* %0, metadata !463, metadata !DIExpression()), !dbg !466
  call void @llvm.dbg.value(metadata i8* %1, metadata !464, metadata !DIExpression()), !dbg !466
  call void @llvm.dbg.value(metadata i8* %2, metadata !465, metadata !DIExpression()), !dbg !466
  call void @llvm.dbg.value(metadata i8* %0, metadata !467, metadata !DIExpression()) #7, !dbg !486
  call void @llvm.dbg.value(metadata i8* %2, metadata !470, metadata !DIExpression()) #7, !dbg !486
  call void @llvm.dbg.value(metadata i8* %1, metadata !471, metadata !DIExpression()) #7, !dbg !486
  %5 = bitcast [24 x i32]* %4 to i8*, !dbg !488
  call void @llvm.lifetime.start.p0i8(i64 96, i8* nonnull %5) #7, !dbg !488
  call void @llvm.dbg.declare(metadata [24 x i32]* %4, metadata !472, metadata !DIExpression()) #7, !dbg !489
  call void @llvm.memset.p0i8.i32(i8* noundef nonnull align 4 dereferenceable(96) %5, i8 0, i32 96, i1 false) #7, !dbg !489
  %6 = getelementptr inbounds [24 x i32], [24 x i32]* %4, i32 0, i32 0, !dbg !490
  call void @llvm.dbg.value(metadata i32* %6, metadata !476, metadata !DIExpression()) #7, !dbg !486
  %7 = getelementptr inbounds [24 x i32], [24 x i32]* %4, i32 0, i32 16, !dbg !491
  call void @llvm.dbg.value(metadata i32* %7, metadata !477, metadata !DIExpression()) #7, !dbg !486
  call void @llvm.dbg.value(metadata i32* %6, metadata !492, metadata !DIExpression()) #7, !dbg !515
  call void @llvm.dbg.value(metadata i8* %1, metadata !495, metadata !DIExpression()) #7, !dbg !515
  call void @llvm.dbg.value(metadata i8* %2, metadata !496, metadata !DIExpression()) #7, !dbg !515
  call void @llvm.dbg.value(metadata i32 0, metadata !497, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 32)) #7, !dbg !515
  call void @llvm.dbg.value(metadata i32 0, metadata !497, metadata !DIExpression(DW_OP_LLVM_fragment, 32, 32)) #7, !dbg !515
  call void @llvm.dbg.value(metadata i32 0, metadata !497, metadata !DIExpression(DW_OP_LLVM_fragment, 64, 32)) #7, !dbg !515
  call void @llvm.dbg.value(metadata i32 0, metadata !497, metadata !DIExpression(DW_OP_LLVM_fragment, 96, 32)) #7, !dbg !515
  call void @llvm.dbg.value(metadata i32 0, metadata !497, metadata !DIExpression(DW_OP_LLVM_fragment, 128, 32)) #7, !dbg !515
  call void @llvm.dbg.value(metadata i32 0, metadata !497, metadata !DIExpression(DW_OP_LLVM_fragment, 160, 32)) #7, !dbg !515
  call void @llvm.dbg.value(metadata i32 0, metadata !497, metadata !DIExpression(DW_OP_LLVM_fragment, 192, 32)) #7, !dbg !515
  call void @llvm.dbg.value(metadata i32 0, metadata !497, metadata !DIExpression(DW_OP_LLVM_fragment, 224, 32)) #7, !dbg !515
  call void @llvm.dbg.value(metadata i32 0, metadata !497, metadata !DIExpression(DW_OP_LLVM_fragment, 256, 32)) #7, !dbg !515
  call void @llvm.dbg.value(metadata i32 0, metadata !497, metadata !DIExpression(DW_OP_LLVM_fragment, 288, 32)) #7, !dbg !515
  call void @llvm.dbg.value(metadata i32 0, metadata !497, metadata !DIExpression(DW_OP_LLVM_fragment, 320, 32)) #7, !dbg !515
  call void @llvm.dbg.value(metadata i32 0, metadata !497, metadata !DIExpression(DW_OP_LLVM_fragment, 352, 32)) #7, !dbg !515
  call void @llvm.dbg.value(metadata [12 x i32]* undef, metadata !501, metadata !DIExpression()) #7, !dbg !515
  call void @llvm.dbg.value(metadata i32* undef, metadata !502, metadata !DIExpression()) #7, !dbg !515
  call void @llvm.dbg.value(metadata [12 x i32]* undef, metadata !90, metadata !DIExpression()) #7, !dbg !517
  call void @llvm.dbg.value(metadata i8* %1, metadata !95, metadata !DIExpression()) #7, !dbg !517
  call void @llvm.dbg.value(metadata i32 8, metadata !96, metadata !DIExpression()) #7, !dbg !517
  call void @llvm.dbg.value(metadata i32 0, metadata !97, metadata !DIExpression()) #7, !dbg !519
  %8 = bitcast i8* %1 to i32*, !dbg !520
  %9 = load i32, i32* %8, align 1, !dbg !520
  call void @llvm.dbg.value(metadata i32 %9, metadata !497, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 32)) #7, !dbg !515
  %10 = getelementptr inbounds i8, i8* %1, i32 4, !dbg !520
  %11 = bitcast i8* %10 to i32*, !dbg !520
  %12 = load i32, i32* %11, align 1, !dbg !520
  call void @llvm.dbg.value(metadata i32 %12, metadata !497, metadata !DIExpression(DW_OP_LLVM_fragment, 32, 32)) #7, !dbg !515
  %13 = getelementptr inbounds i8, i8* %1, i32 8, !dbg !520
  %14 = bitcast i8* %13 to i32*, !dbg !520
  %15 = load i32, i32* %14, align 1, !dbg !520
  call void @llvm.dbg.value(metadata i32 %15, metadata !497, metadata !DIExpression(DW_OP_LLVM_fragment, 64, 32)) #7, !dbg !515
  %16 = getelementptr inbounds i8, i8* %1, i32 12, !dbg !520
  %17 = bitcast i8* %16 to i32*, !dbg !520
  %18 = load i32, i32* %17, align 1, !dbg !520
  call void @llvm.dbg.value(metadata i32 %18, metadata !497, metadata !DIExpression(DW_OP_LLVM_fragment, 96, 32)) #7, !dbg !515
  %19 = getelementptr inbounds i8, i8* %1, i32 16, !dbg !520
  %20 = bitcast i8* %19 to i32*, !dbg !520
  %21 = load i32, i32* %20, align 1, !dbg !520
  call void @llvm.dbg.value(metadata i32 %21, metadata !497, metadata !DIExpression(DW_OP_LLVM_fragment, 128, 32)) #7, !dbg !515
  %22 = getelementptr inbounds i8, i8* %1, i32 20, !dbg !520
  %23 = bitcast i8* %22 to i32*, !dbg !520
  %24 = load i32, i32* %23, align 1, !dbg !520
  call void @llvm.dbg.value(metadata i32 %24, metadata !497, metadata !DIExpression(DW_OP_LLVM_fragment, 160, 32)) #7, !dbg !515
  %25 = getelementptr inbounds i8, i8* %1, i32 24, !dbg !520
  %26 = bitcast i8* %25 to i32*, !dbg !520
  %27 = load i32, i32* %26, align 1, !dbg !520
  call void @llvm.dbg.value(metadata i32 %27, metadata !497, metadata !DIExpression(DW_OP_LLVM_fragment, 192, 32)) #7, !dbg !515
  %28 = getelementptr inbounds i8, i8* %1, i32 28, !dbg !520
  %29 = bitcast i8* %28 to i32*, !dbg !520
  %30 = load i32, i32* %29, align 1, !dbg !520
  call void @llvm.dbg.value(metadata i32 %30, metadata !497, metadata !DIExpression(DW_OP_LLVM_fragment, 224, 32)) #7, !dbg !515
  call void @llvm.dbg.value(metadata i32 undef, metadata !97, metadata !DIExpression()) #7, !dbg !519
  call void @llvm.dbg.value(metadata i32 undef, metadata !99, metadata !DIExpression()) #7, !dbg !521
  call void @llvm.dbg.value(metadata i32 undef, metadata !102, metadata !DIExpression()) #7, !dbg !521
  call void @llvm.dbg.value(metadata i32 undef, metadata !497, metadata !DIExpression(DW_OP_LLVM_fragment, 256, 32)) #7, !dbg !515
  call void @llvm.dbg.value(metadata i32 undef, metadata !497, metadata !DIExpression(DW_OP_LLVM_fragment, 288, 32)) #7, !dbg !515
  call void @llvm.dbg.value(metadata i32 undef, metadata !497, metadata !DIExpression(DW_OP_LLVM_fragment, 320, 32)) #7, !dbg !515
  call void @llvm.dbg.value(metadata i32 undef, metadata !497, metadata !DIExpression(DW_OP_LLVM_fragment, 352, 32)) #7, !dbg !515
  %31 = getelementptr inbounds i8, i8* %2, i32 12, !dbg !522
  %32 = bitcast i8* %31 to i32*, !dbg !522
  %33 = load i32, i32* %32, align 1, !dbg !522
  call void @llvm.dbg.value(metadata i32 %33, metadata !497, metadata !DIExpression(DW_OP_LLVM_fragment, 352, 32)) #7, !dbg !515
  %34 = getelementptr inbounds i8, i8* %2, i32 8, !dbg !522
  %35 = bitcast i8* %34 to i32*, !dbg !522
  %36 = load i32, i32* %35, align 1, !dbg !522
  call void @llvm.dbg.value(metadata i32 %36, metadata !497, metadata !DIExpression(DW_OP_LLVM_fragment, 320, 32)) #7, !dbg !515
  %37 = getelementptr inbounds i8, i8* %2, i32 4, !dbg !522
  %38 = bitcast i8* %37 to i32*, !dbg !522
  %39 = load i32, i32* %38, align 1, !dbg !522
  call void @llvm.dbg.value(metadata i32 %39, metadata !497, metadata !DIExpression(DW_OP_LLVM_fragment, 288, 32)) #7, !dbg !515
  %40 = bitcast i8* %2 to i32*, !dbg !522
  %41 = load i32, i32* %40, align 1, !dbg !522
  call void @llvm.dbg.value(metadata i32 %41, metadata !497, metadata !DIExpression(DW_OP_LLVM_fragment, 256, 32)) #7, !dbg !515
  call void @llvm.dbg.value(metadata i32 undef, metadata !97, metadata !DIExpression()) #7, !dbg !524
  call void @llvm.dbg.value(metadata i32 undef, metadata !99, metadata !DIExpression()) #7, !dbg !525
  call void @llvm.dbg.value(metadata i32 undef, metadata !102, metadata !DIExpression()) #7, !dbg !525
  call void @llvm.dbg.value(metadata i32* undef, metadata !501, metadata !DIExpression()) #7, !dbg !515
  call void @llvm.dbg.value(metadata i32* undef, metadata !90, metadata !DIExpression()) #7, !dbg !517
  call void @llvm.dbg.value(metadata i32 %9, metadata !503, metadata !DIExpression()) #7, !dbg !515
  call void @llvm.dbg.value(metadata i32 %12, metadata !504, metadata !DIExpression()) #7, !dbg !515
  call void @llvm.dbg.value(metadata i32 %15, metadata !505, metadata !DIExpression()) #7, !dbg !515
  call void @llvm.dbg.value(metadata i32 %18, metadata !506, metadata !DIExpression()) #7, !dbg !515
  call void @llvm.dbg.value(metadata i32 %21, metadata !507, metadata !DIExpression()) #7, !dbg !515
  call void @llvm.dbg.value(metadata i32 %24, metadata !508, metadata !DIExpression()) #7, !dbg !515
  call void @llvm.dbg.value(metadata i32 %27, metadata !509, metadata !DIExpression()) #7, !dbg !515
  call void @llvm.dbg.value(metadata i32 %30, metadata !510, metadata !DIExpression()) #7, !dbg !515
  call void @llvm.dbg.value(metadata i32 undef, metadata !511, metadata !DIExpression()) #7, !dbg !515
  call void @llvm.dbg.value(metadata i32 undef, metadata !512, metadata !DIExpression()) #7, !dbg !515
  call void @llvm.dbg.value(metadata i32 undef, metadata !513, metadata !DIExpression()) #7, !dbg !515
  call void @llvm.dbg.value(metadata i32 undef, metadata !514, metadata !DIExpression()) #7, !dbg !515
  call void @llvm.dbg.value(metadata i32* %6, metadata !112, metadata !DIExpression()) #7, !dbg !526
  call void @llvm.dbg.value(metadata i32 1634760805, metadata !117, metadata !DIExpression()) #7, !dbg !526
  call void @llvm.dbg.value(metadata i32 %9, metadata !118, metadata !DIExpression()) #7, !dbg !526
  call void @llvm.dbg.value(metadata i32 %12, metadata !119, metadata !DIExpression()) #7, !dbg !526
  call void @llvm.dbg.value(metadata i32 %15, metadata !120, metadata !DIExpression()) #7, !dbg !526
  call void @llvm.dbg.value(metadata i32 %18, metadata !121, metadata !DIExpression()) #7, !dbg !526
  call void @llvm.dbg.value(metadata i32 857760878, metadata !122, metadata !DIExpression()) #7, !dbg !526
  call void @llvm.dbg.value(metadata i32 undef, metadata !123, metadata !DIExpression()) #7, !dbg !526
  call void @llvm.dbg.value(metadata i32 undef, metadata !124, metadata !DIExpression()) #7, !dbg !526
  call void @llvm.dbg.value(metadata i32 undef, metadata !125, metadata !DIExpression()) #7, !dbg !526
  call void @llvm.dbg.value(metadata i32 undef, metadata !126, metadata !DIExpression()) #7, !dbg !526
  call void @llvm.dbg.value(metadata i32 2036477234, metadata !127, metadata !DIExpression()) #7, !dbg !526
  call void @llvm.dbg.value(metadata i32 %21, metadata !128, metadata !DIExpression()) #7, !dbg !526
  call void @llvm.dbg.value(metadata i32 %24, metadata !129, metadata !DIExpression()) #7, !dbg !526
  call void @llvm.dbg.value(metadata i32 %27, metadata !130, metadata !DIExpression()) #7, !dbg !526
  call void @llvm.dbg.value(metadata i32 %30, metadata !131, metadata !DIExpression()) #7, !dbg !526
  call void @llvm.dbg.value(metadata i32 1797285236, metadata !132, metadata !DIExpression()) #7, !dbg !526
  call void @llvm.dbg.value(metadata i32* %6, metadata !135, metadata !DIExpression()) #7, !dbg !528
  call void @llvm.dbg.value(metadata i32 1634760805, metadata !140, metadata !DIExpression()) #7, !dbg !528
  call void @llvm.dbg.value(metadata i32 %9, metadata !141, metadata !DIExpression()) #7, !dbg !528
  call void @llvm.dbg.value(metadata i32 %12, metadata !142, metadata !DIExpression()) #7, !dbg !528
  call void @llvm.dbg.value(metadata i32 %15, metadata !143, metadata !DIExpression()) #7, !dbg !528
  call void @llvm.dbg.value(metadata i32 %18, metadata !144, metadata !DIExpression()) #7, !dbg !528
  call void @llvm.dbg.value(metadata i32 857760878, metadata !145, metadata !DIExpression()) #7, !dbg !528
  call void @llvm.dbg.value(metadata i32 undef, metadata !146, metadata !DIExpression()) #7, !dbg !528
  call void @llvm.dbg.value(metadata i32 undef, metadata !147, metadata !DIExpression()) #7, !dbg !528
  call void @llvm.dbg.value(metadata i32* %6, metadata !150, metadata !DIExpression()) #7, !dbg !530
  call void @llvm.dbg.value(metadata i32 1634760805, metadata !155, metadata !DIExpression()) #7, !dbg !530
  call void @llvm.dbg.value(metadata i32 %9, metadata !156, metadata !DIExpression()) #7, !dbg !530
  call void @llvm.dbg.value(metadata i32 %12, metadata !157, metadata !DIExpression()) #7, !dbg !530
  call void @llvm.dbg.value(metadata i32 %15, metadata !158, metadata !DIExpression()) #7, !dbg !530
  store i32 1634760805, i32* %6, align 4, !dbg !532, !tbaa !162
  %42 = getelementptr inbounds [24 x i32], [24 x i32]* %4, i32 0, i32 1, !dbg !533
  store i32 %9, i32* %42, align 4, !dbg !534, !tbaa !162
  %43 = getelementptr inbounds [24 x i32], [24 x i32]* %4, i32 0, i32 2, !dbg !535
  store i32 %12, i32* %43, align 4, !dbg !536, !tbaa !162
  %44 = getelementptr inbounds [24 x i32], [24 x i32]* %4, i32 0, i32 3, !dbg !537
  store i32 %15, i32* %44, align 4, !dbg !538, !tbaa !162
  %45 = getelementptr inbounds [24 x i32], [24 x i32]* %4, i32 0, i32 4, !dbg !539
  call void @llvm.dbg.value(metadata i32* %45, metadata !150, metadata !DIExpression()) #7, !dbg !540
  call void @llvm.dbg.value(metadata i32 %18, metadata !155, metadata !DIExpression()) #7, !dbg !540
  call void @llvm.dbg.value(metadata i32 857760878, metadata !156, metadata !DIExpression()) #7, !dbg !540
  call void @llvm.dbg.value(metadata i32 undef, metadata !157, metadata !DIExpression()) #7, !dbg !540
  call void @llvm.dbg.value(metadata i32 undef, metadata !158, metadata !DIExpression()) #7, !dbg !540
  store i32 %18, i32* %45, align 4, !dbg !542, !tbaa !162
  %46 = getelementptr inbounds [24 x i32], [24 x i32]* %4, i32 0, i32 5, !dbg !543
  store i32 857760878, i32* %46, align 4, !dbg !544, !tbaa !162
  %47 = getelementptr inbounds [24 x i32], [24 x i32]* %4, i32 0, i32 6, !dbg !545
  store i32 %41, i32* %47, align 4, !dbg !546, !tbaa !162
  %48 = getelementptr inbounds [24 x i32], [24 x i32]* %4, i32 0, i32 7, !dbg !547
  store i32 %39, i32* %48, align 4, !dbg !548, !tbaa !162
  %49 = getelementptr inbounds [24 x i32], [24 x i32]* %4, i32 0, i32 8, !dbg !549
  call void @llvm.dbg.value(metadata i32* %49, metadata !135, metadata !DIExpression()) #7, !dbg !550
  call void @llvm.dbg.value(metadata i32 undef, metadata !140, metadata !DIExpression()) #7, !dbg !550
  call void @llvm.dbg.value(metadata i32 undef, metadata !141, metadata !DIExpression()) #7, !dbg !550
  call void @llvm.dbg.value(metadata i32 2036477234, metadata !142, metadata !DIExpression()) #7, !dbg !550
  call void @llvm.dbg.value(metadata i32 %21, metadata !143, metadata !DIExpression()) #7, !dbg !550
  call void @llvm.dbg.value(metadata i32 %24, metadata !144, metadata !DIExpression()) #7, !dbg !550
  call void @llvm.dbg.value(metadata i32 %27, metadata !145, metadata !DIExpression()) #7, !dbg !550
  call void @llvm.dbg.value(metadata i32 %30, metadata !146, metadata !DIExpression()) #7, !dbg !550
  call void @llvm.dbg.value(metadata i32 1797285236, metadata !147, metadata !DIExpression()) #7, !dbg !550
  call void @llvm.dbg.value(metadata i32* %49, metadata !150, metadata !DIExpression()) #7, !dbg !552
  call void @llvm.dbg.value(metadata i32 undef, metadata !155, metadata !DIExpression()) #7, !dbg !552
  call void @llvm.dbg.value(metadata i32 undef, metadata !156, metadata !DIExpression()) #7, !dbg !552
  call void @llvm.dbg.value(metadata i32 2036477234, metadata !157, metadata !DIExpression()) #7, !dbg !552
  call void @llvm.dbg.value(metadata i32 %21, metadata !158, metadata !DIExpression()) #7, !dbg !552
  store i32 %36, i32* %49, align 4, !dbg !554, !tbaa !162
  %50 = getelementptr inbounds [24 x i32], [24 x i32]* %4, i32 0, i32 9, !dbg !555
  store i32 %33, i32* %50, align 4, !dbg !556, !tbaa !162
  %51 = getelementptr inbounds [24 x i32], [24 x i32]* %4, i32 0, i32 10, !dbg !557
  store i32 2036477234, i32* %51, align 4, !dbg !558, !tbaa !162
  %52 = getelementptr inbounds [24 x i32], [24 x i32]* %4, i32 0, i32 11, !dbg !559
  store i32 %21, i32* %52, align 4, !dbg !560, !tbaa !162
  %53 = getelementptr inbounds [24 x i32], [24 x i32]* %4, i32 0, i32 12, !dbg !561
  call void @llvm.dbg.value(metadata i32* %53, metadata !150, metadata !DIExpression()) #7, !dbg !562
  call void @llvm.dbg.value(metadata i32 %24, metadata !155, metadata !DIExpression()) #7, !dbg !562
  call void @llvm.dbg.value(metadata i32 %27, metadata !156, metadata !DIExpression()) #7, !dbg !562
  call void @llvm.dbg.value(metadata i32 %30, metadata !157, metadata !DIExpression()) #7, !dbg !562
  call void @llvm.dbg.value(metadata i32 1797285236, metadata !158, metadata !DIExpression()) #7, !dbg !562
  store i32 %24, i32* %53, align 4, !dbg !564, !tbaa !162
  %54 = getelementptr inbounds [24 x i32], [24 x i32]* %4, i32 0, i32 13, !dbg !565
  store i32 %27, i32* %54, align 4, !dbg !566, !tbaa !162
  %55 = getelementptr inbounds [24 x i32], [24 x i32]* %4, i32 0, i32 14, !dbg !567
  store i32 %30, i32* %55, align 4, !dbg !568, !tbaa !162
  %56 = getelementptr inbounds [24 x i32], [24 x i32]* %4, i32 0, i32 15, !dbg !569
  store i32 1797285236, i32* %56, align 4, !dbg !570, !tbaa !162
  call fastcc void @Hacl_Impl_Salsa20_rounds(i32* noundef nonnull %6) #7, !dbg !571
  %57 = load i32, i32* %6, align 4, !dbg !572, !tbaa !162
  call void @llvm.dbg.value(metadata i32 %57, metadata !478, metadata !DIExpression()) #7, !dbg !486
  %58 = load i32, i32* %46, align 4, !dbg !573, !tbaa !162
  call void @llvm.dbg.value(metadata i32 %58, metadata !479, metadata !DIExpression()) #7, !dbg !486
  %59 = load i32, i32* %51, align 4, !dbg !574, !tbaa !162
  call void @llvm.dbg.value(metadata i32 %59, metadata !480, metadata !DIExpression()) #7, !dbg !486
  %60 = load i32, i32* %56, align 4, !dbg !575, !tbaa !162
  call void @llvm.dbg.value(metadata i32 %60, metadata !481, metadata !DIExpression()) #7, !dbg !486
  %61 = load i32, i32* %47, align 4, !dbg !576, !tbaa !162
  call void @llvm.dbg.value(metadata i32 %61, metadata !482, metadata !DIExpression()) #7, !dbg !486
  %62 = load i32, i32* %48, align 4, !dbg !577, !tbaa !162
  call void @llvm.dbg.value(metadata i32 %62, metadata !483, metadata !DIExpression()) #7, !dbg !486
  %63 = load i32, i32* %49, align 4, !dbg !578, !tbaa !162
  call void @llvm.dbg.value(metadata i32 %63, metadata !484, metadata !DIExpression()) #7, !dbg !486
  %64 = load i32, i32* %50, align 4, !dbg !579, !tbaa !162
  call void @llvm.dbg.value(metadata i32 %64, metadata !485, metadata !DIExpression()) #7, !dbg !486
  call void @llvm.dbg.value(metadata i32* %7, metadata !135, metadata !DIExpression()) #7, !dbg !580
  call void @llvm.dbg.value(metadata i32 %57, metadata !140, metadata !DIExpression()) #7, !dbg !580
  call void @llvm.dbg.value(metadata i32 %58, metadata !141, metadata !DIExpression()) #7, !dbg !580
  call void @llvm.dbg.value(metadata i32 %59, metadata !142, metadata !DIExpression()) #7, !dbg !580
  call void @llvm.dbg.value(metadata i32 %60, metadata !143, metadata !DIExpression()) #7, !dbg !580
  call void @llvm.dbg.value(metadata i32 %61, metadata !144, metadata !DIExpression()) #7, !dbg !580
  call void @llvm.dbg.value(metadata i32 %62, metadata !145, metadata !DIExpression()) #7, !dbg !580
  call void @llvm.dbg.value(metadata i32 %63, metadata !146, metadata !DIExpression()) #7, !dbg !580
  call void @llvm.dbg.value(metadata i32 %64, metadata !147, metadata !DIExpression()) #7, !dbg !580
  call void @llvm.dbg.value(metadata i32* %7, metadata !150, metadata !DIExpression()) #7, !dbg !582
  call void @llvm.dbg.value(metadata i32 %57, metadata !155, metadata !DIExpression()) #7, !dbg !582
  call void @llvm.dbg.value(metadata i32 %58, metadata !156, metadata !DIExpression()) #7, !dbg !582
  call void @llvm.dbg.value(metadata i32 %59, metadata !157, metadata !DIExpression()) #7, !dbg !582
  call void @llvm.dbg.value(metadata i32 %60, metadata !158, metadata !DIExpression()) #7, !dbg !582
  store i32 %57, i32* %7, align 4, !dbg !584, !tbaa !162
  %65 = getelementptr inbounds [24 x i32], [24 x i32]* %4, i32 0, i32 17, !dbg !585
  store i32 %58, i32* %65, align 4, !dbg !586, !tbaa !162
  %66 = getelementptr inbounds [24 x i32], [24 x i32]* %4, i32 0, i32 18, !dbg !587
  store i32 %59, i32* %66, align 4, !dbg !588, !tbaa !162
  %67 = getelementptr inbounds [24 x i32], [24 x i32]* %4, i32 0, i32 19, !dbg !589
  store i32 %60, i32* %67, align 4, !dbg !590, !tbaa !162
  %68 = getelementptr inbounds [24 x i32], [24 x i32]* %4, i32 0, i32 20, !dbg !591
  call void @llvm.dbg.value(metadata i32* %68, metadata !150, metadata !DIExpression()) #7, !dbg !592
  call void @llvm.dbg.value(metadata i32 %61, metadata !155, metadata !DIExpression()) #7, !dbg !592
  call void @llvm.dbg.value(metadata i32 %62, metadata !156, metadata !DIExpression()) #7, !dbg !592
  call void @llvm.dbg.value(metadata i32 %63, metadata !157, metadata !DIExpression()) #7, !dbg !592
  call void @llvm.dbg.value(metadata i32 %64, metadata !158, metadata !DIExpression()) #7, !dbg !592
  store i32 %61, i32* %68, align 4, !dbg !594, !tbaa !162
  %69 = getelementptr inbounds [24 x i32], [24 x i32]* %4, i32 0, i32 21, !dbg !595
  store i32 %62, i32* %69, align 4, !dbg !596, !tbaa !162
  %70 = getelementptr inbounds [24 x i32], [24 x i32]* %4, i32 0, i32 22, !dbg !597
  store i32 %63, i32* %70, align 4, !dbg !598, !tbaa !162
  %71 = getelementptr inbounds [24 x i32], [24 x i32]* %4, i32 0, i32 23, !dbg !599
  store i32 %64, i32* %71, align 4, !dbg !600, !tbaa !162
  call void @llvm.dbg.value(metadata i8* %0, metadata !355, metadata !DIExpression()) #7, !dbg !601
  call void @llvm.dbg.value(metadata i32* %7, metadata !356, metadata !DIExpression()) #7, !dbg !601
  call void @llvm.dbg.value(metadata i32 8, metadata !357, metadata !DIExpression()) #7, !dbg !601
  call void @llvm.dbg.value(metadata i32 0, metadata !358, metadata !DIExpression()) #7, !dbg !603
  %72 = bitcast i32* %7 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* noundef nonnull align 1 dereferenceable(32) %0, i8* noundef nonnull align 4 dereferenceable(32) %72, i32 32, i1 false) #7, !dbg !604
  call void @llvm.dbg.value(metadata i32 undef, metadata !358, metadata !DIExpression()) #7, !dbg !603
  call void @llvm.dbg.value(metadata i32 undef, metadata !359, metadata !DIExpression()) #7, !dbg !606
  call void @llvm.dbg.value(metadata i32 undef, metadata !360, metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_constu, 2, DW_OP_shl, DW_OP_constu, 1, DW_OP_mul, DW_OP_plus, DW_OP_stack_value)) #7, !dbg !606
  call void @llvm.dbg.value(metadata i32 undef, metadata !345, metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_constu, 2, DW_OP_shl, DW_OP_constu, 1, DW_OP_mul, DW_OP_plus, DW_OP_stack_value)) #7, !dbg !607
  call void @llvm.dbg.value(metadata i32 undef, metadata !346, metadata !DIExpression()) #7, !dbg !607
  call void @llvm.dbg.value(metadata i32 undef, metadata !358, metadata !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value)) #7, !dbg !603
  call void @llvm.lifetime.end.p0i8(i64 96, i8* nonnull %5) #7, !dbg !608
  ret void, !dbg !609
}

; Function Attrs: argmemonly mustprogress nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0i8(i64 immarg, i8* nocapture) #2

; Function Attrs: argmemonly mustprogress nofree nounwind willreturn writeonly
declare void @llvm.memset.p0i8.i32(i8* nocapture writeonly, i8, i32, i1 immarg) #3

; Function Attrs: argmemonly mustprogress nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0i8(i64 immarg, i8* nocapture) #2

; Function Attrs: argmemonly mustprogress nofree nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i32(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i32, i1 immarg) #4

; Function Attrs: inlinehint nofree nosync nounwind uwtable
define internal fastcc void @Hacl_Impl_Salsa20_rounds(i32* nocapture noundef %0) unnamed_addr #5 !dbg !610 {
  call void @llvm.dbg.value(metadata i32* %0, metadata !614, metadata !DIExpression()), !dbg !617
  call void @llvm.dbg.value(metadata i32 0, metadata !615, metadata !DIExpression()), !dbg !618
  %2 = getelementptr inbounds i32, i32* %0, i32 4
  %3 = getelementptr inbounds i32, i32* %0, i32 12
  %4 = getelementptr inbounds i32, i32* %0, i32 8
  %5 = getelementptr inbounds i32, i32* %0, i32 9
  %6 = getelementptr inbounds i32, i32* %0, i32 5
  %7 = getelementptr inbounds i32, i32* %0, i32 1
  %8 = getelementptr inbounds i32, i32* %0, i32 13
  %9 = getelementptr inbounds i32, i32* %0, i32 14
  %10 = getelementptr inbounds i32, i32* %0, i32 10
  %11 = getelementptr inbounds i32, i32* %0, i32 6
  %12 = getelementptr inbounds i32, i32* %0, i32 2
  %13 = getelementptr inbounds i32, i32* %0, i32 3
  %14 = getelementptr inbounds i32, i32* %0, i32 15
  %15 = getelementptr inbounds i32, i32* %0, i32 11
  %16 = getelementptr inbounds i32, i32* %0, i32 7
  %17 = load i32, i32* %2, align 4, !tbaa !162
  %18 = load i32, i32* %0, align 4, !tbaa !162
  %19 = load i32, i32* %3, align 4, !tbaa !162
  %20 = load i32, i32* %4, align 4, !tbaa !162
  %21 = load i32, i32* %5, align 4, !tbaa !162
  %22 = load i32, i32* %6, align 4, !tbaa !162
  %23 = load i32, i32* %7, align 4, !tbaa !162
  %24 = load i32, i32* %8, align 4, !tbaa !162
  %25 = load i32, i32* %9, align 4, !tbaa !162
  %26 = load i32, i32* %10, align 4, !tbaa !162
  %27 = load i32, i32* %11, align 4, !tbaa !162
  %28 = load i32, i32* %12, align 4, !tbaa !162
  %29 = load i32, i32* %13, align 4, !tbaa !162
  %30 = load i32, i32* %14, align 4, !tbaa !162
  %31 = load i32, i32* %15, align 4, !tbaa !162
  %32 = load i32, i32* %16, align 4, !tbaa !162
  call void @llvm.dbg.value(metadata i32 0, metadata !615, metadata !DIExpression()), !dbg !618
  br label %34, !dbg !619

33:                                               ; preds = %34
  store i32 %120, i32* %2, align 4, !dbg !620, !tbaa !162
  store i32 %111, i32* %0, align 4, !dbg !620, !tbaa !162
  store i32 %138, i32* %3, align 4, !dbg !620, !tbaa !162
  store i32 %129, i32* %4, align 4, !dbg !620, !tbaa !162
  store i32 %132, i32* %5, align 4, !dbg !620, !tbaa !162
  store i32 %123, i32* %6, align 4, !dbg !620, !tbaa !162
  store i32 %102, i32* %7, align 4, !dbg !620, !tbaa !162
  store i32 %141, i32* %8, align 4, !dbg !620, !tbaa !162
  store i32 %144, i32* %9, align 4, !dbg !620, !tbaa !162
  store i32 %135, i32* %10, align 4, !dbg !620, !tbaa !162
  store i32 %114, i32* %11, align 4, !dbg !620, !tbaa !162
  store i32 %105, i32* %12, align 4, !dbg !620, !tbaa !162
  store i32 %108, i32* %13, align 4, !dbg !620, !tbaa !162
  store i32 %147, i32* %14, align 4, !dbg !620, !tbaa !162
  store i32 %126, i32* %15, align 4, !dbg !620, !tbaa !162
  store i32 %117, i32* %16, align 4, !dbg !620, !tbaa !162
  ret void, !dbg !626

34:                                               ; preds = %1, %34
  %35 = phi i32 [ 0, %1 ], [ %148, %34 ]
  %36 = phi i32 [ %17, %1 ], [ %120, %34 ]
  %37 = phi i32 [ %18, %1 ], [ %111, %34 ]
  %38 = phi i32 [ %19, %1 ], [ %138, %34 ]
  %39 = phi i32 [ %20, %1 ], [ %129, %34 ]
  %40 = phi i32 [ %21, %1 ], [ %132, %34 ]
  %41 = phi i32 [ %22, %1 ], [ %123, %34 ]
  %42 = phi i32 [ %23, %1 ], [ %102, %34 ]
  %43 = phi i32 [ %24, %1 ], [ %141, %34 ]
  %44 = phi i32 [ %25, %1 ], [ %144, %34 ]
  %45 = phi i32 [ %26, %1 ], [ %135, %34 ]
  %46 = phi i32 [ %27, %1 ], [ %114, %34 ]
  %47 = phi i32 [ %28, %1 ], [ %105, %34 ]
  %48 = phi i32 [ %29, %1 ], [ %108, %34 ]
  %49 = phi i32 [ %30, %1 ], [ %147, %34 ]
  %50 = phi i32 [ %31, %1 ], [ %126, %34 ]
  %51 = phi i32 [ %32, %1 ], [ %117, %34 ]
  call void @llvm.dbg.value(metadata i32 %35, metadata !615, metadata !DIExpression()), !dbg !618
  call void @llvm.dbg.value(metadata i32* %0, metadata !623, metadata !DIExpression()) #7, !dbg !620
  call void @llvm.dbg.value(metadata i32* %0, metadata !627, metadata !DIExpression()) #7, !dbg !634
  call void @llvm.dbg.value(metadata i32 0, metadata !630, metadata !DIExpression()) #7, !dbg !634
  call void @llvm.dbg.value(metadata i32 4, metadata !631, metadata !DIExpression()) #7, !dbg !634
  call void @llvm.dbg.value(metadata i32 8, metadata !632, metadata !DIExpression()) #7, !dbg !634
  call void @llvm.dbg.value(metadata i32 12, metadata !633, metadata !DIExpression()) #7, !dbg !634
  call void @llvm.dbg.value(metadata i32* %0, metadata !636, metadata !DIExpression()) #7, !dbg !648
  call void @llvm.dbg.value(metadata i32 4, metadata !639, metadata !DIExpression()) #7, !dbg !648
  call void @llvm.dbg.value(metadata i32 0, metadata !640, metadata !DIExpression()) #7, !dbg !648
  call void @llvm.dbg.value(metadata i32 12, metadata !641, metadata !DIExpression()) #7, !dbg !648
  call void @llvm.dbg.value(metadata i32 7, metadata !642, metadata !DIExpression()) #7, !dbg !648
  call void @llvm.dbg.value(metadata i32 %36, metadata !643, metadata !DIExpression()) #7, !dbg !648
  call void @llvm.dbg.value(metadata i32 %37, metadata !644, metadata !DIExpression()) #7, !dbg !648
  call void @llvm.dbg.value(metadata i32 %38, metadata !645, metadata !DIExpression()) #7, !dbg !648
  %52 = add i32 %38, %37, !dbg !650
  call void @llvm.dbg.value(metadata i32 %52, metadata !646, metadata !DIExpression()) #7, !dbg !648
  %53 = call i32 @llvm.fshl.i32(i32 %52, i32 %52, i32 7) #7, !dbg !651
  call void @llvm.dbg.value(metadata i32 %53, metadata !647, metadata !DIExpression()) #7, !dbg !648
  %54 = xor i32 %53, %36, !dbg !652
  call void @llvm.dbg.value(metadata i32* %0, metadata !636, metadata !DIExpression()) #7, !dbg !653
  call void @llvm.dbg.value(metadata i32 8, metadata !639, metadata !DIExpression()) #7, !dbg !653
  call void @llvm.dbg.value(metadata i32 4, metadata !640, metadata !DIExpression()) #7, !dbg !653
  call void @llvm.dbg.value(metadata i32 0, metadata !641, metadata !DIExpression()) #7, !dbg !653
  call void @llvm.dbg.value(metadata i32 9, metadata !642, metadata !DIExpression()) #7, !dbg !653
  call void @llvm.dbg.value(metadata i32 %39, metadata !643, metadata !DIExpression()) #7, !dbg !653
  call void @llvm.dbg.value(metadata i32 %54, metadata !644, metadata !DIExpression()) #7, !dbg !653
  call void @llvm.dbg.value(metadata i32 %37, metadata !645, metadata !DIExpression()) #7, !dbg !653
  %55 = add i32 %54, %37, !dbg !655
  call void @llvm.dbg.value(metadata i32 %55, metadata !646, metadata !DIExpression()) #7, !dbg !653
  %56 = call i32 @llvm.fshl.i32(i32 %55, i32 %55, i32 9) #7, !dbg !656
  call void @llvm.dbg.value(metadata i32 %56, metadata !647, metadata !DIExpression()) #7, !dbg !653
  %57 = xor i32 %56, %39, !dbg !657
  call void @llvm.dbg.value(metadata i32* %0, metadata !636, metadata !DIExpression()) #7, !dbg !658
  call void @llvm.dbg.value(metadata i32 12, metadata !639, metadata !DIExpression()) #7, !dbg !658
  call void @llvm.dbg.value(metadata i32 8, metadata !640, metadata !DIExpression()) #7, !dbg !658
  call void @llvm.dbg.value(metadata i32 4, metadata !641, metadata !DIExpression()) #7, !dbg !658
  call void @llvm.dbg.value(metadata i32 13, metadata !642, metadata !DIExpression()) #7, !dbg !658
  call void @llvm.dbg.value(metadata i32 %38, metadata !643, metadata !DIExpression()) #7, !dbg !658
  call void @llvm.dbg.value(metadata i32 %57, metadata !644, metadata !DIExpression()) #7, !dbg !658
  call void @llvm.dbg.value(metadata i32 %54, metadata !645, metadata !DIExpression()) #7, !dbg !658
  %58 = add i32 %57, %54, !dbg !660
  call void @llvm.dbg.value(metadata i32 %58, metadata !646, metadata !DIExpression()) #7, !dbg !658
  %59 = call i32 @llvm.fshl.i32(i32 %58, i32 %58, i32 13) #7, !dbg !661
  call void @llvm.dbg.value(metadata i32 %59, metadata !647, metadata !DIExpression()) #7, !dbg !658
  %60 = xor i32 %59, %38, !dbg !662
  call void @llvm.dbg.value(metadata i32* %0, metadata !636, metadata !DIExpression()) #7, !dbg !663
  call void @llvm.dbg.value(metadata i32 0, metadata !639, metadata !DIExpression()) #7, !dbg !663
  call void @llvm.dbg.value(metadata i32 12, metadata !640, metadata !DIExpression()) #7, !dbg !663
  call void @llvm.dbg.value(metadata i32 8, metadata !641, metadata !DIExpression()) #7, !dbg !663
  call void @llvm.dbg.value(metadata i32 18, metadata !642, metadata !DIExpression()) #7, !dbg !663
  call void @llvm.dbg.value(metadata i32 %37, metadata !643, metadata !DIExpression()) #7, !dbg !663
  call void @llvm.dbg.value(metadata i32 %60, metadata !644, metadata !DIExpression()) #7, !dbg !663
  call void @llvm.dbg.value(metadata i32 %57, metadata !645, metadata !DIExpression()) #7, !dbg !663
  %61 = add i32 %60, %57, !dbg !665
  call void @llvm.dbg.value(metadata i32 %61, metadata !646, metadata !DIExpression()) #7, !dbg !663
  %62 = call i32 @llvm.fshl.i32(i32 %61, i32 %61, i32 18) #7, !dbg !666
  call void @llvm.dbg.value(metadata i32 %62, metadata !647, metadata !DIExpression()) #7, !dbg !663
  %63 = xor i32 %62, %37, !dbg !667
  call void @llvm.dbg.value(metadata i32* %0, metadata !627, metadata !DIExpression()) #7, !dbg !668
  call void @llvm.dbg.value(metadata i32 5, metadata !630, metadata !DIExpression()) #7, !dbg !668
  call void @llvm.dbg.value(metadata i32 9, metadata !631, metadata !DIExpression()) #7, !dbg !668
  call void @llvm.dbg.value(metadata i32 13, metadata !632, metadata !DIExpression()) #7, !dbg !668
  call void @llvm.dbg.value(metadata i32 1, metadata !633, metadata !DIExpression()) #7, !dbg !668
  call void @llvm.dbg.value(metadata i32* %0, metadata !636, metadata !DIExpression()) #7, !dbg !670
  call void @llvm.dbg.value(metadata i32 9, metadata !639, metadata !DIExpression()) #7, !dbg !670
  call void @llvm.dbg.value(metadata i32 5, metadata !640, metadata !DIExpression()) #7, !dbg !670
  call void @llvm.dbg.value(metadata i32 1, metadata !641, metadata !DIExpression()) #7, !dbg !670
  call void @llvm.dbg.value(metadata i32 7, metadata !642, metadata !DIExpression()) #7, !dbg !670
  call void @llvm.dbg.value(metadata i32 %40, metadata !643, metadata !DIExpression()) #7, !dbg !670
  call void @llvm.dbg.value(metadata i32 %41, metadata !644, metadata !DIExpression()) #7, !dbg !670
  call void @llvm.dbg.value(metadata i32 %42, metadata !645, metadata !DIExpression()) #7, !dbg !670
  %64 = add i32 %42, %41, !dbg !672
  call void @llvm.dbg.value(metadata i32 %64, metadata !646, metadata !DIExpression()) #7, !dbg !670
  %65 = call i32 @llvm.fshl.i32(i32 %64, i32 %64, i32 7) #7, !dbg !673
  call void @llvm.dbg.value(metadata i32 %65, metadata !647, metadata !DIExpression()) #7, !dbg !670
  %66 = xor i32 %65, %40, !dbg !674
  call void @llvm.dbg.value(metadata i32* %0, metadata !636, metadata !DIExpression()) #7, !dbg !675
  call void @llvm.dbg.value(metadata i32 13, metadata !639, metadata !DIExpression()) #7, !dbg !675
  call void @llvm.dbg.value(metadata i32 9, metadata !640, metadata !DIExpression()) #7, !dbg !675
  call void @llvm.dbg.value(metadata i32 5, metadata !641, metadata !DIExpression()) #7, !dbg !675
  call void @llvm.dbg.value(metadata i32 9, metadata !642, metadata !DIExpression()) #7, !dbg !675
  call void @llvm.dbg.value(metadata i32 %43, metadata !643, metadata !DIExpression()) #7, !dbg !675
  call void @llvm.dbg.value(metadata i32 %66, metadata !644, metadata !DIExpression()) #7, !dbg !675
  call void @llvm.dbg.value(metadata i32 %41, metadata !645, metadata !DIExpression()) #7, !dbg !675
  %67 = add i32 %66, %41, !dbg !677
  call void @llvm.dbg.value(metadata i32 %67, metadata !646, metadata !DIExpression()) #7, !dbg !675
  %68 = call i32 @llvm.fshl.i32(i32 %67, i32 %67, i32 9) #7, !dbg !678
  call void @llvm.dbg.value(metadata i32 %68, metadata !647, metadata !DIExpression()) #7, !dbg !675
  %69 = xor i32 %68, %43, !dbg !679
  call void @llvm.dbg.value(metadata i32* %0, metadata !636, metadata !DIExpression()) #7, !dbg !680
  call void @llvm.dbg.value(metadata i32 1, metadata !639, metadata !DIExpression()) #7, !dbg !680
  call void @llvm.dbg.value(metadata i32 13, metadata !640, metadata !DIExpression()) #7, !dbg !680
  call void @llvm.dbg.value(metadata i32 9, metadata !641, metadata !DIExpression()) #7, !dbg !680
  call void @llvm.dbg.value(metadata i32 13, metadata !642, metadata !DIExpression()) #7, !dbg !680
  call void @llvm.dbg.value(metadata i32 %42, metadata !643, metadata !DIExpression()) #7, !dbg !680
  call void @llvm.dbg.value(metadata i32 %69, metadata !644, metadata !DIExpression()) #7, !dbg !680
  call void @llvm.dbg.value(metadata i32 %66, metadata !645, metadata !DIExpression()) #7, !dbg !680
  %70 = add i32 %69, %66, !dbg !682
  call void @llvm.dbg.value(metadata i32 %70, metadata !646, metadata !DIExpression()) #7, !dbg !680
  %71 = call i32 @llvm.fshl.i32(i32 %70, i32 %70, i32 13) #7, !dbg !683
  call void @llvm.dbg.value(metadata i32 %71, metadata !647, metadata !DIExpression()) #7, !dbg !680
  %72 = xor i32 %71, %42, !dbg !684
  call void @llvm.dbg.value(metadata i32* %0, metadata !636, metadata !DIExpression()) #7, !dbg !685
  call void @llvm.dbg.value(metadata i32 5, metadata !639, metadata !DIExpression()) #7, !dbg !685
  call void @llvm.dbg.value(metadata i32 1, metadata !640, metadata !DIExpression()) #7, !dbg !685
  call void @llvm.dbg.value(metadata i32 13, metadata !641, metadata !DIExpression()) #7, !dbg !685
  call void @llvm.dbg.value(metadata i32 18, metadata !642, metadata !DIExpression()) #7, !dbg !685
  call void @llvm.dbg.value(metadata i32 %41, metadata !643, metadata !DIExpression()) #7, !dbg !685
  call void @llvm.dbg.value(metadata i32 %72, metadata !644, metadata !DIExpression()) #7, !dbg !685
  call void @llvm.dbg.value(metadata i32 %69, metadata !645, metadata !DIExpression()) #7, !dbg !685
  %73 = add i32 %72, %69, !dbg !687
  call void @llvm.dbg.value(metadata i32 %73, metadata !646, metadata !DIExpression()) #7, !dbg !685
  %74 = call i32 @llvm.fshl.i32(i32 %73, i32 %73, i32 18) #7, !dbg !688
  call void @llvm.dbg.value(metadata i32 %74, metadata !647, metadata !DIExpression()) #7, !dbg !685
  %75 = xor i32 %74, %41, !dbg !689
  call void @llvm.dbg.value(metadata i32* %0, metadata !627, metadata !DIExpression()) #7, !dbg !690
  call void @llvm.dbg.value(metadata i32 10, metadata !630, metadata !DIExpression()) #7, !dbg !690
  call void @llvm.dbg.value(metadata i32 14, metadata !631, metadata !DIExpression()) #7, !dbg !690
  call void @llvm.dbg.value(metadata i32 2, metadata !632, metadata !DIExpression()) #7, !dbg !690
  call void @llvm.dbg.value(metadata i32 6, metadata !633, metadata !DIExpression()) #7, !dbg !690
  call void @llvm.dbg.value(metadata i32* %0, metadata !636, metadata !DIExpression()) #7, !dbg !692
  call void @llvm.dbg.value(metadata i32 14, metadata !639, metadata !DIExpression()) #7, !dbg !692
  call void @llvm.dbg.value(metadata i32 10, metadata !640, metadata !DIExpression()) #7, !dbg !692
  call void @llvm.dbg.value(metadata i32 6, metadata !641, metadata !DIExpression()) #7, !dbg !692
  call void @llvm.dbg.value(metadata i32 7, metadata !642, metadata !DIExpression()) #7, !dbg !692
  call void @llvm.dbg.value(metadata i32 %44, metadata !643, metadata !DIExpression()) #7, !dbg !692
  call void @llvm.dbg.value(metadata i32 %45, metadata !644, metadata !DIExpression()) #7, !dbg !692
  call void @llvm.dbg.value(metadata i32 %46, metadata !645, metadata !DIExpression()) #7, !dbg !692
  %76 = add i32 %46, %45, !dbg !694
  call void @llvm.dbg.value(metadata i32 %76, metadata !646, metadata !DIExpression()) #7, !dbg !692
  %77 = call i32 @llvm.fshl.i32(i32 %76, i32 %76, i32 7) #7, !dbg !695
  call void @llvm.dbg.value(metadata i32 %77, metadata !647, metadata !DIExpression()) #7, !dbg !692
  %78 = xor i32 %77, %44, !dbg !696
  call void @llvm.dbg.value(metadata i32* %0, metadata !636, metadata !DIExpression()) #7, !dbg !697
  call void @llvm.dbg.value(metadata i32 2, metadata !639, metadata !DIExpression()) #7, !dbg !697
  call void @llvm.dbg.value(metadata i32 14, metadata !640, metadata !DIExpression()) #7, !dbg !697
  call void @llvm.dbg.value(metadata i32 10, metadata !641, metadata !DIExpression()) #7, !dbg !697
  call void @llvm.dbg.value(metadata i32 9, metadata !642, metadata !DIExpression()) #7, !dbg !697
  call void @llvm.dbg.value(metadata i32 %47, metadata !643, metadata !DIExpression()) #7, !dbg !697
  call void @llvm.dbg.value(metadata i32 %78, metadata !644, metadata !DIExpression()) #7, !dbg !697
  call void @llvm.dbg.value(metadata i32 %45, metadata !645, metadata !DIExpression()) #7, !dbg !697
  %79 = add i32 %78, %45, !dbg !699
  call void @llvm.dbg.value(metadata i32 %79, metadata !646, metadata !DIExpression()) #7, !dbg !697
  %80 = call i32 @llvm.fshl.i32(i32 %79, i32 %79, i32 9) #7, !dbg !700
  call void @llvm.dbg.value(metadata i32 %80, metadata !647, metadata !DIExpression()) #7, !dbg !697
  %81 = xor i32 %80, %47, !dbg !701
  call void @llvm.dbg.value(metadata i32* %0, metadata !636, metadata !DIExpression()) #7, !dbg !702
  call void @llvm.dbg.value(metadata i32 6, metadata !639, metadata !DIExpression()) #7, !dbg !702
  call void @llvm.dbg.value(metadata i32 2, metadata !640, metadata !DIExpression()) #7, !dbg !702
  call void @llvm.dbg.value(metadata i32 14, metadata !641, metadata !DIExpression()) #7, !dbg !702
  call void @llvm.dbg.value(metadata i32 13, metadata !642, metadata !DIExpression()) #7, !dbg !702
  call void @llvm.dbg.value(metadata i32 %46, metadata !643, metadata !DIExpression()) #7, !dbg !702
  call void @llvm.dbg.value(metadata i32 %81, metadata !644, metadata !DIExpression()) #7, !dbg !702
  call void @llvm.dbg.value(metadata i32 %78, metadata !645, metadata !DIExpression()) #7, !dbg !702
  %82 = add i32 %81, %78, !dbg !704
  call void @llvm.dbg.value(metadata i32 %82, metadata !646, metadata !DIExpression()) #7, !dbg !702
  %83 = call i32 @llvm.fshl.i32(i32 %82, i32 %82, i32 13) #7, !dbg !705
  call void @llvm.dbg.value(metadata i32 %83, metadata !647, metadata !DIExpression()) #7, !dbg !702
  %84 = xor i32 %83, %46, !dbg !706
  call void @llvm.dbg.value(metadata i32* %0, metadata !636, metadata !DIExpression()) #7, !dbg !707
  call void @llvm.dbg.value(metadata i32 10, metadata !639, metadata !DIExpression()) #7, !dbg !707
  call void @llvm.dbg.value(metadata i32 6, metadata !640, metadata !DIExpression()) #7, !dbg !707
  call void @llvm.dbg.value(metadata i32 2, metadata !641, metadata !DIExpression()) #7, !dbg !707
  call void @llvm.dbg.value(metadata i32 18, metadata !642, metadata !DIExpression()) #7, !dbg !707
  call void @llvm.dbg.value(metadata i32 %45, metadata !643, metadata !DIExpression()) #7, !dbg !707
  call void @llvm.dbg.value(metadata i32 %84, metadata !644, metadata !DIExpression()) #7, !dbg !707
  call void @llvm.dbg.value(metadata i32 %81, metadata !645, metadata !DIExpression()) #7, !dbg !707
  %85 = add i32 %84, %81, !dbg !709
  call void @llvm.dbg.value(metadata i32 %85, metadata !646, metadata !DIExpression()) #7, !dbg !707
  %86 = call i32 @llvm.fshl.i32(i32 %85, i32 %85, i32 18) #7, !dbg !710
  call void @llvm.dbg.value(metadata i32 %86, metadata !647, metadata !DIExpression()) #7, !dbg !707
  %87 = xor i32 %86, %45, !dbg !711
  call void @llvm.dbg.value(metadata i32* %0, metadata !627, metadata !DIExpression()) #7, !dbg !712
  call void @llvm.dbg.value(metadata i32 15, metadata !630, metadata !DIExpression()) #7, !dbg !712
  call void @llvm.dbg.value(metadata i32 3, metadata !631, metadata !DIExpression()) #7, !dbg !712
  call void @llvm.dbg.value(metadata i32 7, metadata !632, metadata !DIExpression()) #7, !dbg !712
  call void @llvm.dbg.value(metadata i32 11, metadata !633, metadata !DIExpression()) #7, !dbg !712
  call void @llvm.dbg.value(metadata i32* %0, metadata !636, metadata !DIExpression()) #7, !dbg !714
  call void @llvm.dbg.value(metadata i32 3, metadata !639, metadata !DIExpression()) #7, !dbg !714
  call void @llvm.dbg.value(metadata i32 15, metadata !640, metadata !DIExpression()) #7, !dbg !714
  call void @llvm.dbg.value(metadata i32 11, metadata !641, metadata !DIExpression()) #7, !dbg !714
  call void @llvm.dbg.value(metadata i32 7, metadata !642, metadata !DIExpression()) #7, !dbg !714
  call void @llvm.dbg.value(metadata i32 %48, metadata !643, metadata !DIExpression()) #7, !dbg !714
  call void @llvm.dbg.value(metadata i32 %49, metadata !644, metadata !DIExpression()) #7, !dbg !714
  call void @llvm.dbg.value(metadata i32 %50, metadata !645, metadata !DIExpression()) #7, !dbg !714
  %88 = add i32 %50, %49, !dbg !716
  call void @llvm.dbg.value(metadata i32 %88, metadata !646, metadata !DIExpression()) #7, !dbg !714
  %89 = call i32 @llvm.fshl.i32(i32 %88, i32 %88, i32 7) #7, !dbg !717
  call void @llvm.dbg.value(metadata i32 %89, metadata !647, metadata !DIExpression()) #7, !dbg !714
  %90 = xor i32 %89, %48, !dbg !718
  call void @llvm.dbg.value(metadata i32* %0, metadata !636, metadata !DIExpression()) #7, !dbg !719
  call void @llvm.dbg.value(metadata i32 7, metadata !639, metadata !DIExpression()) #7, !dbg !719
  call void @llvm.dbg.value(metadata i32 3, metadata !640, metadata !DIExpression()) #7, !dbg !719
  call void @llvm.dbg.value(metadata i32 15, metadata !641, metadata !DIExpression()) #7, !dbg !719
  call void @llvm.dbg.value(metadata i32 9, metadata !642, metadata !DIExpression()) #7, !dbg !719
  call void @llvm.dbg.value(metadata i32 %51, metadata !643, metadata !DIExpression()) #7, !dbg !719
  call void @llvm.dbg.value(metadata i32 %90, metadata !644, metadata !DIExpression()) #7, !dbg !719
  call void @llvm.dbg.value(metadata i32 %49, metadata !645, metadata !DIExpression()) #7, !dbg !719
  %91 = add i32 %90, %49, !dbg !721
  call void @llvm.dbg.value(metadata i32 %91, metadata !646, metadata !DIExpression()) #7, !dbg !719
  %92 = call i32 @llvm.fshl.i32(i32 %91, i32 %91, i32 9) #7, !dbg !722
  call void @llvm.dbg.value(metadata i32 %92, metadata !647, metadata !DIExpression()) #7, !dbg !719
  %93 = xor i32 %92, %51, !dbg !723
  call void @llvm.dbg.value(metadata i32* %0, metadata !636, metadata !DIExpression()) #7, !dbg !724
  call void @llvm.dbg.value(metadata i32 11, metadata !639, metadata !DIExpression()) #7, !dbg !724
  call void @llvm.dbg.value(metadata i32 7, metadata !640, metadata !DIExpression()) #7, !dbg !724
  call void @llvm.dbg.value(metadata i32 3, metadata !641, metadata !DIExpression()) #7, !dbg !724
  call void @llvm.dbg.value(metadata i32 13, metadata !642, metadata !DIExpression()) #7, !dbg !724
  call void @llvm.dbg.value(metadata i32 %50, metadata !643, metadata !DIExpression()) #7, !dbg !724
  call void @llvm.dbg.value(metadata i32 %93, metadata !644, metadata !DIExpression()) #7, !dbg !724
  call void @llvm.dbg.value(metadata i32 %90, metadata !645, metadata !DIExpression()) #7, !dbg !724
  %94 = add i32 %93, %90, !dbg !726
  call void @llvm.dbg.value(metadata i32 %94, metadata !646, metadata !DIExpression()) #7, !dbg !724
  %95 = call i32 @llvm.fshl.i32(i32 %94, i32 %94, i32 13) #7, !dbg !727
  call void @llvm.dbg.value(metadata i32 %95, metadata !647, metadata !DIExpression()) #7, !dbg !724
  %96 = xor i32 %95, %50, !dbg !728
  call void @llvm.dbg.value(metadata i32* %0, metadata !636, metadata !DIExpression()) #7, !dbg !729
  call void @llvm.dbg.value(metadata i32 15, metadata !639, metadata !DIExpression()) #7, !dbg !729
  call void @llvm.dbg.value(metadata i32 11, metadata !640, metadata !DIExpression()) #7, !dbg !729
  call void @llvm.dbg.value(metadata i32 7, metadata !641, metadata !DIExpression()) #7, !dbg !729
  call void @llvm.dbg.value(metadata i32 18, metadata !642, metadata !DIExpression()) #7, !dbg !729
  call void @llvm.dbg.value(metadata i32 %49, metadata !643, metadata !DIExpression()) #7, !dbg !729
  call void @llvm.dbg.value(metadata i32 %96, metadata !644, metadata !DIExpression()) #7, !dbg !729
  call void @llvm.dbg.value(metadata i32 %93, metadata !645, metadata !DIExpression()) #7, !dbg !729
  %97 = add i32 %96, %93, !dbg !731
  call void @llvm.dbg.value(metadata i32 %97, metadata !646, metadata !DIExpression()) #7, !dbg !729
  %98 = call i32 @llvm.fshl.i32(i32 %97, i32 %97, i32 18) #7, !dbg !732
  call void @llvm.dbg.value(metadata i32 %98, metadata !647, metadata !DIExpression()) #7, !dbg !729
  %99 = xor i32 %98, %49, !dbg !733
  call void @llvm.dbg.value(metadata i32* %0, metadata !627, metadata !DIExpression()) #7, !dbg !734
  call void @llvm.dbg.value(metadata i32 0, metadata !630, metadata !DIExpression()) #7, !dbg !734
  call void @llvm.dbg.value(metadata i32 1, metadata !631, metadata !DIExpression()) #7, !dbg !734
  call void @llvm.dbg.value(metadata i32 2, metadata !632, metadata !DIExpression()) #7, !dbg !734
  call void @llvm.dbg.value(metadata i32 3, metadata !633, metadata !DIExpression()) #7, !dbg !734
  call void @llvm.dbg.value(metadata i32* %0, metadata !636, metadata !DIExpression()) #7, !dbg !736
  call void @llvm.dbg.value(metadata i32 1, metadata !639, metadata !DIExpression()) #7, !dbg !736
  call void @llvm.dbg.value(metadata i32 0, metadata !640, metadata !DIExpression()) #7, !dbg !736
  call void @llvm.dbg.value(metadata i32 3, metadata !641, metadata !DIExpression()) #7, !dbg !736
  call void @llvm.dbg.value(metadata i32 7, metadata !642, metadata !DIExpression()) #7, !dbg !736
  call void @llvm.dbg.value(metadata i32 %72, metadata !643, metadata !DIExpression()) #7, !dbg !736
  call void @llvm.dbg.value(metadata i32 %63, metadata !644, metadata !DIExpression()) #7, !dbg !736
  call void @llvm.dbg.value(metadata i32 %90, metadata !645, metadata !DIExpression()) #7, !dbg !736
  %100 = add i32 %90, %63, !dbg !738
  call void @llvm.dbg.value(metadata i32 %100, metadata !646, metadata !DIExpression()) #7, !dbg !736
  %101 = call i32 @llvm.fshl.i32(i32 %100, i32 %100, i32 7) #7, !dbg !739
  call void @llvm.dbg.value(metadata i32 %101, metadata !647, metadata !DIExpression()) #7, !dbg !736
  %102 = xor i32 %101, %72, !dbg !740
  call void @llvm.dbg.value(metadata i32* %0, metadata !636, metadata !DIExpression()) #7, !dbg !741
  call void @llvm.dbg.value(metadata i32 2, metadata !639, metadata !DIExpression()) #7, !dbg !741
  call void @llvm.dbg.value(metadata i32 1, metadata !640, metadata !DIExpression()) #7, !dbg !741
  call void @llvm.dbg.value(metadata i32 0, metadata !641, metadata !DIExpression()) #7, !dbg !741
  call void @llvm.dbg.value(metadata i32 9, metadata !642, metadata !DIExpression()) #7, !dbg !741
  call void @llvm.dbg.value(metadata i32 %81, metadata !643, metadata !DIExpression()) #7, !dbg !741
  call void @llvm.dbg.value(metadata i32 %102, metadata !644, metadata !DIExpression()) #7, !dbg !741
  call void @llvm.dbg.value(metadata i32 %63, metadata !645, metadata !DIExpression()) #7, !dbg !741
  %103 = add i32 %102, %63, !dbg !743
  call void @llvm.dbg.value(metadata i32 %103, metadata !646, metadata !DIExpression()) #7, !dbg !741
  %104 = call i32 @llvm.fshl.i32(i32 %103, i32 %103, i32 9) #7, !dbg !744
  call void @llvm.dbg.value(metadata i32 %104, metadata !647, metadata !DIExpression()) #7, !dbg !741
  %105 = xor i32 %104, %81, !dbg !745
  call void @llvm.dbg.value(metadata i32* %0, metadata !636, metadata !DIExpression()) #7, !dbg !746
  call void @llvm.dbg.value(metadata i32 3, metadata !639, metadata !DIExpression()) #7, !dbg !746
  call void @llvm.dbg.value(metadata i32 2, metadata !640, metadata !DIExpression()) #7, !dbg !746
  call void @llvm.dbg.value(metadata i32 1, metadata !641, metadata !DIExpression()) #7, !dbg !746
  call void @llvm.dbg.value(metadata i32 13, metadata !642, metadata !DIExpression()) #7, !dbg !746
  call void @llvm.dbg.value(metadata i32 %90, metadata !643, metadata !DIExpression()) #7, !dbg !746
  call void @llvm.dbg.value(metadata i32 %105, metadata !644, metadata !DIExpression()) #7, !dbg !746
  call void @llvm.dbg.value(metadata i32 %102, metadata !645, metadata !DIExpression()) #7, !dbg !746
  %106 = add i32 %105, %102, !dbg !748
  call void @llvm.dbg.value(metadata i32 %106, metadata !646, metadata !DIExpression()) #7, !dbg !746
  %107 = call i32 @llvm.fshl.i32(i32 %106, i32 %106, i32 13) #7, !dbg !749
  call void @llvm.dbg.value(metadata i32 %107, metadata !647, metadata !DIExpression()) #7, !dbg !746
  %108 = xor i32 %107, %90, !dbg !750
  call void @llvm.dbg.value(metadata i32* %0, metadata !636, metadata !DIExpression()) #7, !dbg !751
  call void @llvm.dbg.value(metadata i32 0, metadata !639, metadata !DIExpression()) #7, !dbg !751
  call void @llvm.dbg.value(metadata i32 3, metadata !640, metadata !DIExpression()) #7, !dbg !751
  call void @llvm.dbg.value(metadata i32 2, metadata !641, metadata !DIExpression()) #7, !dbg !751
  call void @llvm.dbg.value(metadata i32 18, metadata !642, metadata !DIExpression()) #7, !dbg !751
  call void @llvm.dbg.value(metadata i32 %63, metadata !643, metadata !DIExpression()) #7, !dbg !751
  call void @llvm.dbg.value(metadata i32 %108, metadata !644, metadata !DIExpression()) #7, !dbg !751
  call void @llvm.dbg.value(metadata i32 %105, metadata !645, metadata !DIExpression()) #7, !dbg !751
  %109 = add i32 %108, %105, !dbg !753
  call void @llvm.dbg.value(metadata i32 %109, metadata !646, metadata !DIExpression()) #7, !dbg !751
  %110 = call i32 @llvm.fshl.i32(i32 %109, i32 %109, i32 18) #7, !dbg !754
  call void @llvm.dbg.value(metadata i32 %110, metadata !647, metadata !DIExpression()) #7, !dbg !751
  %111 = xor i32 %110, %63, !dbg !755
  call void @llvm.dbg.value(metadata i32* %0, metadata !627, metadata !DIExpression()) #7, !dbg !756
  call void @llvm.dbg.value(metadata i32 5, metadata !630, metadata !DIExpression()) #7, !dbg !756
  call void @llvm.dbg.value(metadata i32 6, metadata !631, metadata !DIExpression()) #7, !dbg !756
  call void @llvm.dbg.value(metadata i32 7, metadata !632, metadata !DIExpression()) #7, !dbg !756
  call void @llvm.dbg.value(metadata i32 4, metadata !633, metadata !DIExpression()) #7, !dbg !756
  call void @llvm.dbg.value(metadata i32* %0, metadata !636, metadata !DIExpression()) #7, !dbg !758
  call void @llvm.dbg.value(metadata i32 6, metadata !639, metadata !DIExpression()) #7, !dbg !758
  call void @llvm.dbg.value(metadata i32 5, metadata !640, metadata !DIExpression()) #7, !dbg !758
  call void @llvm.dbg.value(metadata i32 4, metadata !641, metadata !DIExpression()) #7, !dbg !758
  call void @llvm.dbg.value(metadata i32 7, metadata !642, metadata !DIExpression()) #7, !dbg !758
  call void @llvm.dbg.value(metadata i32 %84, metadata !643, metadata !DIExpression()) #7, !dbg !758
  call void @llvm.dbg.value(metadata i32 %75, metadata !644, metadata !DIExpression()) #7, !dbg !758
  call void @llvm.dbg.value(metadata i32 %54, metadata !645, metadata !DIExpression()) #7, !dbg !758
  %112 = add i32 %75, %54, !dbg !760
  call void @llvm.dbg.value(metadata i32 %112, metadata !646, metadata !DIExpression()) #7, !dbg !758
  %113 = call i32 @llvm.fshl.i32(i32 %112, i32 %112, i32 7) #7, !dbg !761
  call void @llvm.dbg.value(metadata i32 %113, metadata !647, metadata !DIExpression()) #7, !dbg !758
  %114 = xor i32 %84, %113, !dbg !762
  call void @llvm.dbg.value(metadata i32* %0, metadata !636, metadata !DIExpression()) #7, !dbg !763
  call void @llvm.dbg.value(metadata i32 7, metadata !639, metadata !DIExpression()) #7, !dbg !763
  call void @llvm.dbg.value(metadata i32 6, metadata !640, metadata !DIExpression()) #7, !dbg !763
  call void @llvm.dbg.value(metadata i32 5, metadata !641, metadata !DIExpression()) #7, !dbg !763
  call void @llvm.dbg.value(metadata i32 9, metadata !642, metadata !DIExpression()) #7, !dbg !763
  call void @llvm.dbg.value(metadata i32 %93, metadata !643, metadata !DIExpression()) #7, !dbg !763
  call void @llvm.dbg.value(metadata i32 %114, metadata !644, metadata !DIExpression()) #7, !dbg !763
  call void @llvm.dbg.value(metadata i32 %75, metadata !645, metadata !DIExpression()) #7, !dbg !763
  %115 = add i32 %114, %75, !dbg !765
  call void @llvm.dbg.value(metadata i32 %115, metadata !646, metadata !DIExpression()) #7, !dbg !763
  %116 = call i32 @llvm.fshl.i32(i32 %115, i32 %115, i32 9) #7, !dbg !766
  call void @llvm.dbg.value(metadata i32 %116, metadata !647, metadata !DIExpression()) #7, !dbg !763
  %117 = xor i32 %93, %116, !dbg !767
  call void @llvm.dbg.value(metadata i32* %0, metadata !636, metadata !DIExpression()) #7, !dbg !768
  call void @llvm.dbg.value(metadata i32 4, metadata !639, metadata !DIExpression()) #7, !dbg !768
  call void @llvm.dbg.value(metadata i32 7, metadata !640, metadata !DIExpression()) #7, !dbg !768
  call void @llvm.dbg.value(metadata i32 6, metadata !641, metadata !DIExpression()) #7, !dbg !768
  call void @llvm.dbg.value(metadata i32 13, metadata !642, metadata !DIExpression()) #7, !dbg !768
  call void @llvm.dbg.value(metadata i32 %54, metadata !643, metadata !DIExpression()) #7, !dbg !768
  call void @llvm.dbg.value(metadata i32 %117, metadata !644, metadata !DIExpression()) #7, !dbg !768
  call void @llvm.dbg.value(metadata i32 %114, metadata !645, metadata !DIExpression()) #7, !dbg !768
  %118 = add i32 %117, %114, !dbg !770
  call void @llvm.dbg.value(metadata i32 %118, metadata !646, metadata !DIExpression()) #7, !dbg !768
  %119 = call i32 @llvm.fshl.i32(i32 %118, i32 %118, i32 13) #7, !dbg !771
  call void @llvm.dbg.value(metadata i32 %119, metadata !647, metadata !DIExpression()) #7, !dbg !768
  %120 = xor i32 %119, %54, !dbg !772
  call void @llvm.dbg.value(metadata i32* %0, metadata !636, metadata !DIExpression()) #7, !dbg !773
  call void @llvm.dbg.value(metadata i32 5, metadata !639, metadata !DIExpression()) #7, !dbg !773
  call void @llvm.dbg.value(metadata i32 4, metadata !640, metadata !DIExpression()) #7, !dbg !773
  call void @llvm.dbg.value(metadata i32 7, metadata !641, metadata !DIExpression()) #7, !dbg !773
  call void @llvm.dbg.value(metadata i32 18, metadata !642, metadata !DIExpression()) #7, !dbg !773
  call void @llvm.dbg.value(metadata i32 %75, metadata !643, metadata !DIExpression()) #7, !dbg !773
  call void @llvm.dbg.value(metadata i32 %120, metadata !644, metadata !DIExpression()) #7, !dbg !773
  call void @llvm.dbg.value(metadata i32 %117, metadata !645, metadata !DIExpression()) #7, !dbg !773
  %121 = add i32 %120, %117, !dbg !775
  call void @llvm.dbg.value(metadata i32 %121, metadata !646, metadata !DIExpression()) #7, !dbg !773
  %122 = call i32 @llvm.fshl.i32(i32 %121, i32 %121, i32 18) #7, !dbg !776
  call void @llvm.dbg.value(metadata i32 %122, metadata !647, metadata !DIExpression()) #7, !dbg !773
  %123 = xor i32 %122, %75, !dbg !777
  call void @llvm.dbg.value(metadata i32* %0, metadata !627, metadata !DIExpression()) #7, !dbg !778
  call void @llvm.dbg.value(metadata i32 10, metadata !630, metadata !DIExpression()) #7, !dbg !778
  call void @llvm.dbg.value(metadata i32 11, metadata !631, metadata !DIExpression()) #7, !dbg !778
  call void @llvm.dbg.value(metadata i32 8, metadata !632, metadata !DIExpression()) #7, !dbg !778
  call void @llvm.dbg.value(metadata i32 9, metadata !633, metadata !DIExpression()) #7, !dbg !778
  call void @llvm.dbg.value(metadata i32* %0, metadata !636, metadata !DIExpression()) #7, !dbg !780
  call void @llvm.dbg.value(metadata i32 11, metadata !639, metadata !DIExpression()) #7, !dbg !780
  call void @llvm.dbg.value(metadata i32 10, metadata !640, metadata !DIExpression()) #7, !dbg !780
  call void @llvm.dbg.value(metadata i32 9, metadata !641, metadata !DIExpression()) #7, !dbg !780
  call void @llvm.dbg.value(metadata i32 7, metadata !642, metadata !DIExpression()) #7, !dbg !780
  call void @llvm.dbg.value(metadata i32 %96, metadata !643, metadata !DIExpression()) #7, !dbg !780
  call void @llvm.dbg.value(metadata i32 %87, metadata !644, metadata !DIExpression()) #7, !dbg !780
  call void @llvm.dbg.value(metadata i32 %66, metadata !645, metadata !DIExpression()) #7, !dbg !780
  %124 = add i32 %87, %66, !dbg !782
  call void @llvm.dbg.value(metadata i32 %124, metadata !646, metadata !DIExpression()) #7, !dbg !780
  %125 = call i32 @llvm.fshl.i32(i32 %124, i32 %124, i32 7) #7, !dbg !783
  call void @llvm.dbg.value(metadata i32 %125, metadata !647, metadata !DIExpression()) #7, !dbg !780
  %126 = xor i32 %96, %125, !dbg !784
  call void @llvm.dbg.value(metadata i32* %0, metadata !636, metadata !DIExpression()) #7, !dbg !785
  call void @llvm.dbg.value(metadata i32 8, metadata !639, metadata !DIExpression()) #7, !dbg !785
  call void @llvm.dbg.value(metadata i32 11, metadata !640, metadata !DIExpression()) #7, !dbg !785
  call void @llvm.dbg.value(metadata i32 10, metadata !641, metadata !DIExpression()) #7, !dbg !785
  call void @llvm.dbg.value(metadata i32 9, metadata !642, metadata !DIExpression()) #7, !dbg !785
  call void @llvm.dbg.value(metadata i32 %57, metadata !643, metadata !DIExpression()) #7, !dbg !785
  call void @llvm.dbg.value(metadata i32 %126, metadata !644, metadata !DIExpression()) #7, !dbg !785
  call void @llvm.dbg.value(metadata i32 %87, metadata !645, metadata !DIExpression()) #7, !dbg !785
  %127 = add i32 %126, %87, !dbg !787
  call void @llvm.dbg.value(metadata i32 %127, metadata !646, metadata !DIExpression()) #7, !dbg !785
  %128 = call i32 @llvm.fshl.i32(i32 %127, i32 %127, i32 9) #7, !dbg !788
  call void @llvm.dbg.value(metadata i32 %128, metadata !647, metadata !DIExpression()) #7, !dbg !785
  %129 = xor i32 %128, %57, !dbg !789
  call void @llvm.dbg.value(metadata i32* %0, metadata !636, metadata !DIExpression()) #7, !dbg !790
  call void @llvm.dbg.value(metadata i32 9, metadata !639, metadata !DIExpression()) #7, !dbg !790
  call void @llvm.dbg.value(metadata i32 8, metadata !640, metadata !DIExpression()) #7, !dbg !790
  call void @llvm.dbg.value(metadata i32 11, metadata !641, metadata !DIExpression()) #7, !dbg !790
  call void @llvm.dbg.value(metadata i32 13, metadata !642, metadata !DIExpression()) #7, !dbg !790
  call void @llvm.dbg.value(metadata i32 %66, metadata !643, metadata !DIExpression()) #7, !dbg !790
  call void @llvm.dbg.value(metadata i32 %129, metadata !644, metadata !DIExpression()) #7, !dbg !790
  call void @llvm.dbg.value(metadata i32 %126, metadata !645, metadata !DIExpression()) #7, !dbg !790
  %130 = add i32 %129, %126, !dbg !792
  call void @llvm.dbg.value(metadata i32 %130, metadata !646, metadata !DIExpression()) #7, !dbg !790
  %131 = call i32 @llvm.fshl.i32(i32 %130, i32 %130, i32 13) #7, !dbg !793
  call void @llvm.dbg.value(metadata i32 %131, metadata !647, metadata !DIExpression()) #7, !dbg !790
  %132 = xor i32 %131, %66, !dbg !794
  call void @llvm.dbg.value(metadata i32* %0, metadata !636, metadata !DIExpression()) #7, !dbg !795
  call void @llvm.dbg.value(metadata i32 10, metadata !639, metadata !DIExpression()) #7, !dbg !795
  call void @llvm.dbg.value(metadata i32 9, metadata !640, metadata !DIExpression()) #7, !dbg !795
  call void @llvm.dbg.value(metadata i32 8, metadata !641, metadata !DIExpression()) #7, !dbg !795
  call void @llvm.dbg.value(metadata i32 18, metadata !642, metadata !DIExpression()) #7, !dbg !795
  call void @llvm.dbg.value(metadata i32 %87, metadata !643, metadata !DIExpression()) #7, !dbg !795
  call void @llvm.dbg.value(metadata i32 %132, metadata !644, metadata !DIExpression()) #7, !dbg !795
  call void @llvm.dbg.value(metadata i32 %129, metadata !645, metadata !DIExpression()) #7, !dbg !795
  %133 = add i32 %132, %129, !dbg !797
  call void @llvm.dbg.value(metadata i32 %133, metadata !646, metadata !DIExpression()) #7, !dbg !795
  %134 = call i32 @llvm.fshl.i32(i32 %133, i32 %133, i32 18) #7, !dbg !798
  call void @llvm.dbg.value(metadata i32 %134, metadata !647, metadata !DIExpression()) #7, !dbg !795
  %135 = xor i32 %134, %87, !dbg !799
  call void @llvm.dbg.value(metadata i32* %0, metadata !627, metadata !DIExpression()) #7, !dbg !800
  call void @llvm.dbg.value(metadata i32 15, metadata !630, metadata !DIExpression()) #7, !dbg !800
  call void @llvm.dbg.value(metadata i32 12, metadata !631, metadata !DIExpression()) #7, !dbg !800
  call void @llvm.dbg.value(metadata i32 13, metadata !632, metadata !DIExpression()) #7, !dbg !800
  call void @llvm.dbg.value(metadata i32 14, metadata !633, metadata !DIExpression()) #7, !dbg !800
  call void @llvm.dbg.value(metadata i32* %0, metadata !636, metadata !DIExpression()) #7, !dbg !802
  call void @llvm.dbg.value(metadata i32 12, metadata !639, metadata !DIExpression()) #7, !dbg !802
  call void @llvm.dbg.value(metadata i32 15, metadata !640, metadata !DIExpression()) #7, !dbg !802
  call void @llvm.dbg.value(metadata i32 14, metadata !641, metadata !DIExpression()) #7, !dbg !802
  call void @llvm.dbg.value(metadata i32 7, metadata !642, metadata !DIExpression()) #7, !dbg !802
  call void @llvm.dbg.value(metadata i32 %60, metadata !643, metadata !DIExpression()) #7, !dbg !802
  call void @llvm.dbg.value(metadata i32 %99, metadata !644, metadata !DIExpression()) #7, !dbg !802
  call void @llvm.dbg.value(metadata i32 %78, metadata !645, metadata !DIExpression()) #7, !dbg !802
  %136 = add i32 %99, %78, !dbg !804
  call void @llvm.dbg.value(metadata i32 %136, metadata !646, metadata !DIExpression()) #7, !dbg !802
  %137 = call i32 @llvm.fshl.i32(i32 %136, i32 %136, i32 7) #7, !dbg !805
  call void @llvm.dbg.value(metadata i32 %137, metadata !647, metadata !DIExpression()) #7, !dbg !802
  %138 = xor i32 %137, %60, !dbg !806
  call void @llvm.dbg.value(metadata i32* %0, metadata !636, metadata !DIExpression()) #7, !dbg !807
  call void @llvm.dbg.value(metadata i32 13, metadata !639, metadata !DIExpression()) #7, !dbg !807
  call void @llvm.dbg.value(metadata i32 12, metadata !640, metadata !DIExpression()) #7, !dbg !807
  call void @llvm.dbg.value(metadata i32 15, metadata !641, metadata !DIExpression()) #7, !dbg !807
  call void @llvm.dbg.value(metadata i32 9, metadata !642, metadata !DIExpression()) #7, !dbg !807
  call void @llvm.dbg.value(metadata i32 %69, metadata !643, metadata !DIExpression()) #7, !dbg !807
  call void @llvm.dbg.value(metadata i32 %138, metadata !644, metadata !DIExpression()) #7, !dbg !807
  call void @llvm.dbg.value(metadata i32 %99, metadata !645, metadata !DIExpression()) #7, !dbg !807
  %139 = add i32 %138, %99, !dbg !809
  call void @llvm.dbg.value(metadata i32 %139, metadata !646, metadata !DIExpression()) #7, !dbg !807
  %140 = call i32 @llvm.fshl.i32(i32 %139, i32 %139, i32 9) #7, !dbg !810
  call void @llvm.dbg.value(metadata i32 %140, metadata !647, metadata !DIExpression()) #7, !dbg !807
  %141 = xor i32 %140, %69, !dbg !811
  call void @llvm.dbg.value(metadata i32* %0, metadata !636, metadata !DIExpression()) #7, !dbg !812
  call void @llvm.dbg.value(metadata i32 14, metadata !639, metadata !DIExpression()) #7, !dbg !812
  call void @llvm.dbg.value(metadata i32 13, metadata !640, metadata !DIExpression()) #7, !dbg !812
  call void @llvm.dbg.value(metadata i32 12, metadata !641, metadata !DIExpression()) #7, !dbg !812
  call void @llvm.dbg.value(metadata i32 13, metadata !642, metadata !DIExpression()) #7, !dbg !812
  call void @llvm.dbg.value(metadata i32 %78, metadata !643, metadata !DIExpression()) #7, !dbg !812
  call void @llvm.dbg.value(metadata i32 %141, metadata !644, metadata !DIExpression()) #7, !dbg !812
  call void @llvm.dbg.value(metadata i32 %138, metadata !645, metadata !DIExpression()) #7, !dbg !812
  %142 = add i32 %141, %138, !dbg !814
  call void @llvm.dbg.value(metadata i32 %142, metadata !646, metadata !DIExpression()) #7, !dbg !812
  %143 = call i32 @llvm.fshl.i32(i32 %142, i32 %142, i32 13) #7, !dbg !815
  call void @llvm.dbg.value(metadata i32 %143, metadata !647, metadata !DIExpression()) #7, !dbg !812
  %144 = xor i32 %143, %78, !dbg !816
  call void @llvm.dbg.value(metadata i32* %0, metadata !636, metadata !DIExpression()) #7, !dbg !817
  call void @llvm.dbg.value(metadata i32 15, metadata !639, metadata !DIExpression()) #7, !dbg !817
  call void @llvm.dbg.value(metadata i32 14, metadata !640, metadata !DIExpression()) #7, !dbg !817
  call void @llvm.dbg.value(metadata i32 13, metadata !641, metadata !DIExpression()) #7, !dbg !817
  call void @llvm.dbg.value(metadata i32 18, metadata !642, metadata !DIExpression()) #7, !dbg !817
  call void @llvm.dbg.value(metadata i32 %99, metadata !643, metadata !DIExpression()) #7, !dbg !817
  call void @llvm.dbg.value(metadata i32 %144, metadata !644, metadata !DIExpression()) #7, !dbg !817
  call void @llvm.dbg.value(metadata i32 %141, metadata !645, metadata !DIExpression()) #7, !dbg !817
  %145 = add i32 %144, %141, !dbg !819
  call void @llvm.dbg.value(metadata i32 %145, metadata !646, metadata !DIExpression()) #7, !dbg !817
  %146 = call i32 @llvm.fshl.i32(i32 %145, i32 %145, i32 18) #7, !dbg !820
  call void @llvm.dbg.value(metadata i32 %146, metadata !647, metadata !DIExpression()) #7, !dbg !817
  %147 = xor i32 %146, %99, !dbg !821
  %148 = add nuw nsw i32 %35, 1, !dbg !822
  call void @llvm.dbg.value(metadata i32 %148, metadata !615, metadata !DIExpression()), !dbg !618
  %149 = icmp eq i32 %148, 10, !dbg !823
  br i1 %149, label %33, label %34, !dbg !619, !llvm.loop !824
}

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare void @llvm.dbg.value(metadata, metadata, metadata) #6

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.fshl.i32(i32, i32, i32) #6

attributes #0 = { nofree nosync nounwind uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="i686" "target-features"="+cx8,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nofree nosync nounwind readnone speculatable willreturn }
attributes #2 = { argmemonly mustprogress nofree nosync nounwind willreturn }
attributes #3 = { argmemonly mustprogress nofree nounwind willreturn writeonly }
attributes #4 = { argmemonly mustprogress nofree nounwind willreturn }
attributes #5 = { inlinehint nofree nosync nounwind uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="i686" "target-features"="+cx8,+x87" "tune-cpu"="generic" }
attributes #6 = { nofree nosync nounwind readnone speculatable willreturn }
attributes #7 = { nounwind }

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!11, !12, !13, !14, !15, !16, !17}
!llvm.ident = !{!18}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "Ubuntu clang version 14.0.0-1ubuntu1.1", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !2, splitDebugInlining: false, nameTableKind: None)
!1 = !DIFile(filename: "hacl-c/hacl-c/Hacl_Salsa20.c", directory: "/mnt/c/Users/fwill/Documents/HS24/semester_project/tools/binsec/binsec/examples/hacl", checksumkind: CSK_MD5, checksum: "54aec34bd2af851fa8c64a1a83791c8a")
!2 = !{!3, !8}
!3 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint64_t", file: !4, line: 27, baseType: !5)
!4 = !DIFile(filename: "/usr/include/bits/stdint-uintn.h", directory: "", checksumkind: CSK_MD5, checksum: "2bf2ae53c58c01b1a1b9383b5195125c")
!5 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uint64_t", file: !6, line: 48, baseType: !7)
!6 = !DIFile(filename: "/usr/include/bits/types.h", directory: "", checksumkind: CSK_MD5, checksum: "d108b5f93a74c50510d7d9bc0ab36df9")
!7 = !DIBasicType(name: "unsigned long long", size: 64, encoding: DW_ATE_unsigned)
!8 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint32_t", file: !4, line: 26, baseType: !9)
!9 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uint32_t", file: !6, line: 42, baseType: !10)
!10 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!11 = !{i32 1, !"NumRegisterParameters", i32 0}
!12 = !{i32 7, !"Dwarf Version", i32 5}
!13 = !{i32 2, !"Debug Info Version", i32 3}
!14 = !{i32 1, !"wchar_size", i32 4}
!15 = !{i32 7, !"PIC Level", i32 2}
!16 = !{i32 7, !"PIE Level", i32 2}
!17 = !{i32 7, !"uwtable", i32 1}
!18 = !{!"Ubuntu clang version 14.0.0-1ubuntu1.1"}
!19 = distinct !DISubprogram(name: "Hacl_Salsa20_salsa20", scope: !1, file: !1, line: 369, type: !20, scopeLine: 377, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !26)
!20 = !DISubroutineType(types: !21)
!21 = !{null, !22, !22, !8, !22, !22, !3}
!22 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !23, size: 32)
!23 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint8_t", file: !4, line: 24, baseType: !24)
!24 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uint8_t", file: !6, line: 38, baseType: !25)
!25 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!26 = !{!27, !28, !29, !30, !31, !32}
!27 = !DILocalVariable(name: "output", arg: 1, scope: !19, file: !1, line: 370, type: !22)
!28 = !DILocalVariable(name: "plain", arg: 2, scope: !19, file: !1, line: 371, type: !22)
!29 = !DILocalVariable(name: "len", arg: 3, scope: !19, file: !1, line: 372, type: !8)
!30 = !DILocalVariable(name: "k", arg: 4, scope: !19, file: !1, line: 373, type: !22)
!31 = !DILocalVariable(name: "n1", arg: 5, scope: !19, file: !1, line: 374, type: !22)
!32 = !DILocalVariable(name: "ctr", arg: 6, scope: !19, file: !1, line: 375, type: !3)
!33 = !DILocation(line: 0, scope: !19)
!34 = !DILocalVariable(name: "output", arg: 1, scope: !35, file: !1, line: 296, type: !22)
!35 = distinct !DISubprogram(name: "Hacl_Impl_Salsa20_salsa20", scope: !1, file: !1, line: 295, type: !20, scopeLine: 303, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !36)
!36 = !{!34, !37, !38, !39, !40, !41, !42, !46}
!37 = !DILocalVariable(name: "plain", arg: 2, scope: !35, file: !1, line: 297, type: !22)
!38 = !DILocalVariable(name: "len", arg: 3, scope: !35, file: !1, line: 298, type: !8)
!39 = !DILocalVariable(name: "k", arg: 4, scope: !35, file: !1, line: 299, type: !22)
!40 = !DILocalVariable(name: "n1", arg: 5, scope: !35, file: !1, line: 300, type: !22)
!41 = !DILocalVariable(name: "ctr", arg: 6, scope: !35, file: !1, line: 301, type: !3)
!42 = !DILocalVariable(name: "buf", scope: !35, file: !1, line: 304, type: !43)
!43 = !DICompositeType(tag: DW_TAG_array_type, baseType: !8, size: 512, elements: !44)
!44 = !{!45}
!45 = !DISubrange(count: 16)
!46 = !DILocalVariable(name: "st", scope: !35, file: !1, line: 305, type: !47)
!47 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !8, size: 32)
!48 = !DILocation(line: 0, scope: !35, inlinedAt: !49)
!49 = distinct !DILocation(line: 378, column: 3, scope: !19)
!50 = !DILocation(line: 304, column: 3, scope: !35, inlinedAt: !49)
!51 = !DILocation(line: 304, column: 12, scope: !35, inlinedAt: !49)
!52 = !DILocation(line: 305, column: 18, scope: !35, inlinedAt: !49)
!53 = !DILocalVariable(name: "st", arg: 1, scope: !54, file: !1, line: 214, type: !47)
!54 = distinct !DISubprogram(name: "Hacl_Impl_Salsa20_init", scope: !1, file: !1, line: 214, type: !55, scopeLine: 215, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !57)
!55 = !DISubroutineType(types: !56)
!56 = !{null, !47, !22, !22}
!57 = !{!53, !58, !59}
!58 = !DILocalVariable(name: "k", arg: 2, scope: !54, file: !1, line: 214, type: !22)
!59 = !DILocalVariable(name: "n1", arg: 3, scope: !54, file: !1, line: 214, type: !22)
!60 = !DILocation(line: 0, scope: !54, inlinedAt: !61)
!61 = distinct !DILocation(line: 306, column: 3, scope: !35, inlinedAt: !49)
!62 = !DILocalVariable(name: "st", arg: 1, scope: !63, file: !1, line: 100, type: !47)
!63 = distinct !DISubprogram(name: "Hacl_Impl_Salsa20_setup", scope: !1, file: !1, line: 100, type: !64, scopeLine: 101, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !66)
!64 = !DISubroutineType(types: !65)
!65 = !{null, !47, !22, !22, !3}
!66 = !{!62, !67, !68, !69, !70, !74, !75, !76, !77, !78, !79, !80, !81, !82, !83, !84, !85, !86, !87}
!67 = !DILocalVariable(name: "k", arg: 2, scope: !63, file: !1, line: 100, type: !22)
!68 = !DILocalVariable(name: "n1", arg: 3, scope: !63, file: !1, line: 100, type: !22)
!69 = !DILocalVariable(name: "c", arg: 4, scope: !63, file: !1, line: 100, type: !3)
!70 = !DILocalVariable(name: "tmp", scope: !63, file: !1, line: 102, type: !71)
!71 = !DICompositeType(tag: DW_TAG_array_type, baseType: !8, size: 320, elements: !72)
!72 = !{!73}
!73 = !DISubrange(count: 10)
!74 = !DILocalVariable(name: "k_", scope: !63, file: !1, line: 103, type: !47)
!75 = !DILocalVariable(name: "n_", scope: !63, file: !1, line: 104, type: !47)
!76 = !DILocalVariable(name: "c0", scope: !63, file: !1, line: 107, type: !8)
!77 = !DILocalVariable(name: "c1", scope: !63, file: !1, line: 108, type: !8)
!78 = !DILocalVariable(name: "k0", scope: !63, file: !1, line: 109, type: !8)
!79 = !DILocalVariable(name: "k1", scope: !63, file: !1, line: 110, type: !8)
!80 = !DILocalVariable(name: "k2", scope: !63, file: !1, line: 111, type: !8)
!81 = !DILocalVariable(name: "k3", scope: !63, file: !1, line: 112, type: !8)
!82 = !DILocalVariable(name: "k4", scope: !63, file: !1, line: 113, type: !8)
!83 = !DILocalVariable(name: "k5", scope: !63, file: !1, line: 114, type: !8)
!84 = !DILocalVariable(name: "k6", scope: !63, file: !1, line: 115, type: !8)
!85 = !DILocalVariable(name: "k7", scope: !63, file: !1, line: 116, type: !8)
!86 = !DILocalVariable(name: "n0", scope: !63, file: !1, line: 117, type: !8)
!87 = !DILocalVariable(name: "n11", scope: !63, file: !1, line: 118, type: !8)
!88 = !DILocation(line: 0, scope: !63, inlinedAt: !89)
!89 = distinct !DILocation(line: 216, column: 3, scope: !54, inlinedAt: !61)
!90 = !DILocalVariable(name: "output", arg: 1, scope: !91, file: !1, line: 79, type: !47)
!91 = distinct !DISubprogram(name: "Hacl_Lib_LoadStore32_uint32s_from_le_bytes", scope: !1, file: !1, line: 79, type: !92, scopeLine: 80, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !94)
!92 = !DISubroutineType(types: !93)
!93 = !{null, !47, !22, !8}
!94 = !{!90, !95, !96, !97, !99, !102}
!95 = !DILocalVariable(name: "input", arg: 2, scope: !91, file: !1, line: 79, type: !22)
!96 = !DILocalVariable(name: "len", arg: 3, scope: !91, file: !1, line: 79, type: !8)
!97 = !DILocalVariable(name: "i", scope: !98, file: !1, line: 81, type: !8)
!98 = distinct !DILexicalBlock(scope: !91, file: !1, line: 81, column: 3)
!99 = !DILocalVariable(name: "x0", scope: !100, file: !1, line: 83, type: !22)
!100 = distinct !DILexicalBlock(scope: !101, file: !1, line: 82, column: 3)
!101 = distinct !DILexicalBlock(scope: !98, file: !1, line: 81, column: 3)
!102 = !DILocalVariable(name: "inputi", scope: !100, file: !1, line: 84, type: !8)
!103 = !DILocation(line: 0, scope: !91, inlinedAt: !104)
!104 = distinct !DILocation(line: 105, column: 3, scope: !63, inlinedAt: !89)
!105 = !DILocation(line: 0, scope: !98, inlinedAt: !104)
!106 = !DILocation(line: 85, column: 15, scope: !100, inlinedAt: !104)
!107 = !DILocation(line: 0, scope: !100, inlinedAt: !104)
!108 = !DILocation(line: 85, column: 15, scope: !100, inlinedAt: !109)
!109 = distinct !DILocation(line: 106, column: 3, scope: !63, inlinedAt: !89)
!110 = !DILocation(line: 0, scope: !98, inlinedAt: !109)
!111 = !DILocation(line: 0, scope: !100, inlinedAt: !109)
!112 = !DILocalVariable(name: "b", arg: 1, scope: !113, file: !1, line: 55, type: !47)
!113 = distinct !DISubprogram(name: "Hacl_Lib_Create_make_h32_16", scope: !1, file: !1, line: 54, type: !114, scopeLine: 73, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !116)
!114 = !DISubroutineType(types: !115)
!115 = !{null, !47, !8, !8, !8, !8, !8, !8, !8, !8, !8, !8, !8, !8, !8, !8, !8, !8}
!116 = !{!112, !117, !118, !119, !120, !121, !122, !123, !124, !125, !126, !127, !128, !129, !130, !131, !132}
!117 = !DILocalVariable(name: "s0", arg: 2, scope: !113, file: !1, line: 56, type: !8)
!118 = !DILocalVariable(name: "s1", arg: 3, scope: !113, file: !1, line: 57, type: !8)
!119 = !DILocalVariable(name: "s2", arg: 4, scope: !113, file: !1, line: 58, type: !8)
!120 = !DILocalVariable(name: "s3", arg: 5, scope: !113, file: !1, line: 59, type: !8)
!121 = !DILocalVariable(name: "s4", arg: 6, scope: !113, file: !1, line: 60, type: !8)
!122 = !DILocalVariable(name: "s5", arg: 7, scope: !113, file: !1, line: 61, type: !8)
!123 = !DILocalVariable(name: "s6", arg: 8, scope: !113, file: !1, line: 62, type: !8)
!124 = !DILocalVariable(name: "s7", arg: 9, scope: !113, file: !1, line: 63, type: !8)
!125 = !DILocalVariable(name: "s8", arg: 10, scope: !113, file: !1, line: 64, type: !8)
!126 = !DILocalVariable(name: "s9", arg: 11, scope: !113, file: !1, line: 65, type: !8)
!127 = !DILocalVariable(name: "s10", arg: 12, scope: !113, file: !1, line: 66, type: !8)
!128 = !DILocalVariable(name: "s11", arg: 13, scope: !113, file: !1, line: 67, type: !8)
!129 = !DILocalVariable(name: "s12", arg: 14, scope: !113, file: !1, line: 68, type: !8)
!130 = !DILocalVariable(name: "s13", arg: 15, scope: !113, file: !1, line: 69, type: !8)
!131 = !DILocalVariable(name: "s14", arg: 16, scope: !113, file: !1, line: 70, type: !8)
!132 = !DILocalVariable(name: "s15", arg: 17, scope: !113, file: !1, line: 71, type: !8)
!133 = !DILocation(line: 0, scope: !113, inlinedAt: !134)
!134 = distinct !DILocation(line: 119, column: 3, scope: !63, inlinedAt: !89)
!135 = !DILocalVariable(name: "b", arg: 1, scope: !136, file: !1, line: 38, type: !47)
!136 = distinct !DISubprogram(name: "Hacl_Lib_Create_make_h32_8", scope: !1, file: !1, line: 37, type: !137, scopeLine: 48, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !139)
!137 = !DISubroutineType(types: !138)
!138 = !{null, !47, !8, !8, !8, !8, !8, !8, !8, !8}
!139 = !{!135, !140, !141, !142, !143, !144, !145, !146, !147}
!140 = !DILocalVariable(name: "s0", arg: 2, scope: !136, file: !1, line: 39, type: !8)
!141 = !DILocalVariable(name: "s1", arg: 3, scope: !136, file: !1, line: 40, type: !8)
!142 = !DILocalVariable(name: "s2", arg: 4, scope: !136, file: !1, line: 41, type: !8)
!143 = !DILocalVariable(name: "s3", arg: 5, scope: !136, file: !1, line: 42, type: !8)
!144 = !DILocalVariable(name: "s4", arg: 6, scope: !136, file: !1, line: 43, type: !8)
!145 = !DILocalVariable(name: "s5", arg: 7, scope: !136, file: !1, line: 44, type: !8)
!146 = !DILocalVariable(name: "s6", arg: 8, scope: !136, file: !1, line: 45, type: !8)
!147 = !DILocalVariable(name: "s7", arg: 9, scope: !136, file: !1, line: 46, type: !8)
!148 = !DILocation(line: 0, scope: !136, inlinedAt: !149)
!149 = distinct !DILocation(line: 74, column: 3, scope: !113, inlinedAt: !134)
!150 = !DILocalVariable(name: "b", arg: 1, scope: !151, file: !1, line: 28, type: !47)
!151 = distinct !DISubprogram(name: "Hacl_Lib_Create_make_h32_4", scope: !1, file: !1, line: 28, type: !152, scopeLine: 29, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !154)
!152 = !DISubroutineType(types: !153)
!153 = !{null, !47, !8, !8, !8, !8}
!154 = !{!150, !155, !156, !157, !158}
!155 = !DILocalVariable(name: "s0", arg: 2, scope: !151, file: !1, line: 28, type: !8)
!156 = !DILocalVariable(name: "s1", arg: 3, scope: !151, file: !1, line: 28, type: !8)
!157 = !DILocalVariable(name: "s2", arg: 4, scope: !151, file: !1, line: 28, type: !8)
!158 = !DILocalVariable(name: "s3", arg: 5, scope: !151, file: !1, line: 28, type: !8)
!159 = !DILocation(line: 0, scope: !151, inlinedAt: !160)
!160 = distinct !DILocation(line: 49, column: 3, scope: !136, inlinedAt: !149)
!161 = !DILocation(line: 30, column: 9, scope: !151, inlinedAt: !160)
!162 = !{!163, !163, i64 0}
!163 = !{!"int", !164, i64 0}
!164 = !{!"omnipotent char", !165, i64 0}
!165 = !{!"Simple C/C++ TBAA"}
!166 = !DILocation(line: 31, column: 3, scope: !151, inlinedAt: !160)
!167 = !DILocation(line: 31, column: 9, scope: !151, inlinedAt: !160)
!168 = !DILocation(line: 32, column: 3, scope: !151, inlinedAt: !160)
!169 = !DILocation(line: 32, column: 9, scope: !151, inlinedAt: !160)
!170 = !DILocation(line: 33, column: 3, scope: !151, inlinedAt: !160)
!171 = !DILocation(line: 33, column: 9, scope: !151, inlinedAt: !160)
!172 = !DILocation(line: 50, column: 32, scope: !136, inlinedAt: !149)
!173 = !DILocation(line: 0, scope: !151, inlinedAt: !174)
!174 = distinct !DILocation(line: 50, column: 3, scope: !136, inlinedAt: !149)
!175 = !DILocation(line: 30, column: 9, scope: !151, inlinedAt: !174)
!176 = !DILocation(line: 31, column: 3, scope: !151, inlinedAt: !174)
!177 = !DILocation(line: 31, column: 9, scope: !151, inlinedAt: !174)
!178 = !DILocation(line: 32, column: 3, scope: !151, inlinedAt: !174)
!179 = !DILocation(line: 32, column: 9, scope: !151, inlinedAt: !174)
!180 = !DILocation(line: 33, column: 3, scope: !151, inlinedAt: !174)
!181 = !DILocation(line: 33, column: 9, scope: !151, inlinedAt: !174)
!182 = !DILocation(line: 75, column: 32, scope: !113, inlinedAt: !134)
!183 = !DILocation(line: 0, scope: !136, inlinedAt: !184)
!184 = distinct !DILocation(line: 75, column: 3, scope: !113, inlinedAt: !134)
!185 = !DILocation(line: 0, scope: !151, inlinedAt: !186)
!186 = distinct !DILocation(line: 49, column: 3, scope: !136, inlinedAt: !184)
!187 = !DILocation(line: 30, column: 9, scope: !151, inlinedAt: !186)
!188 = !DILocation(line: 31, column: 3, scope: !151, inlinedAt: !186)
!189 = !DILocation(line: 31, column: 9, scope: !151, inlinedAt: !186)
!190 = !DILocation(line: 32, column: 3, scope: !151, inlinedAt: !186)
!191 = !DILocation(line: 32, column: 9, scope: !151, inlinedAt: !186)
!192 = !DILocation(line: 33, column: 3, scope: !151, inlinedAt: !186)
!193 = !DILocation(line: 33, column: 9, scope: !151, inlinedAt: !186)
!194 = !DILocation(line: 50, column: 32, scope: !136, inlinedAt: !184)
!195 = !DILocation(line: 0, scope: !151, inlinedAt: !196)
!196 = distinct !DILocation(line: 50, column: 3, scope: !136, inlinedAt: !184)
!197 = !DILocation(line: 30, column: 9, scope: !151, inlinedAt: !196)
!198 = !DILocation(line: 31, column: 3, scope: !151, inlinedAt: !196)
!199 = !DILocation(line: 31, column: 9, scope: !151, inlinedAt: !196)
!200 = !DILocation(line: 32, column: 3, scope: !151, inlinedAt: !196)
!201 = !DILocation(line: 32, column: 9, scope: !151, inlinedAt: !196)
!202 = !DILocation(line: 33, column: 3, scope: !151, inlinedAt: !196)
!203 = !DILocation(line: 33, column: 9, scope: !151, inlinedAt: !196)
!204 = !DILocalVariable(name: "output", arg: 1, scope: !205, file: !1, line: 276, type: !22)
!205 = distinct !DISubprogram(name: "Hacl_Impl_Salsa20_salsa20_counter_mode", scope: !1, file: !1, line: 275, type: !206, scopeLine: 282, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !208)
!206 = !DISubroutineType(types: !207)
!207 = !{null, !22, !22, !8, !47, !3}
!208 = !{!204, !209, !210, !211, !212, !213, !214, !215, !216, !217, !218}
!209 = !DILocalVariable(name: "plain", arg: 2, scope: !205, file: !1, line: 277, type: !22)
!210 = !DILocalVariable(name: "len", arg: 3, scope: !205, file: !1, line: 278, type: !8)
!211 = !DILocalVariable(name: "st", arg: 4, scope: !205, file: !1, line: 279, type: !47)
!212 = !DILocalVariable(name: "ctr", arg: 5, scope: !205, file: !1, line: 280, type: !3)
!213 = !DILocalVariable(name: "blocks_len", scope: !205, file: !1, line: 283, type: !8)
!214 = !DILocalVariable(name: "part_len", scope: !205, file: !1, line: 284, type: !8)
!215 = !DILocalVariable(name: "output_", scope: !205, file: !1, line: 285, type: !22)
!216 = !DILocalVariable(name: "plain_", scope: !205, file: !1, line: 286, type: !22)
!217 = !DILocalVariable(name: "output__", scope: !205, file: !1, line: 287, type: !22)
!218 = !DILocalVariable(name: "plain__", scope: !205, file: !1, line: 288, type: !22)
!219 = !DILocation(line: 0, scope: !205, inlinedAt: !220)
!220 = distinct !DILocation(line: 307, column: 3, scope: !35, inlinedAt: !49)
!221 = !DILocation(line: 283, column: 29, scope: !205, inlinedAt: !220)
!222 = !DILocation(line: 284, column: 27, scope: !205, inlinedAt: !220)
!223 = !DILocation(line: 287, column: 46, scope: !205, inlinedAt: !220)
!224 = !DILocalVariable(name: "output", arg: 1, scope: !225, file: !1, line: 259, type: !22)
!225 = distinct !DISubprogram(name: "Hacl_Impl_Salsa20_salsa20_counter_mode_blocks", scope: !1, file: !1, line: 258, type: !206, scopeLine: 265, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !226)
!226 = !{!224, !227, !228, !229, !230, !231, !233, !236}
!227 = !DILocalVariable(name: "plain", arg: 2, scope: !225, file: !1, line: 260, type: !22)
!228 = !DILocalVariable(name: "len", arg: 3, scope: !225, file: !1, line: 261, type: !8)
!229 = !DILocalVariable(name: "st", arg: 4, scope: !225, file: !1, line: 262, type: !47)
!230 = !DILocalVariable(name: "ctr", arg: 5, scope: !225, file: !1, line: 263, type: !3)
!231 = !DILocalVariable(name: "i", scope: !232, file: !1, line: 266, type: !8)
!232 = distinct !DILexicalBlock(scope: !225, file: !1, line: 266, column: 3)
!233 = !DILocalVariable(name: "b", scope: !234, file: !1, line: 268, type: !22)
!234 = distinct !DILexicalBlock(scope: !235, file: !1, line: 267, column: 3)
!235 = distinct !DILexicalBlock(scope: !232, file: !1, line: 266, column: 3)
!236 = !DILocalVariable(name: "o", scope: !234, file: !1, line: 269, type: !22)
!237 = !DILocation(line: 0, scope: !225, inlinedAt: !238)
!238 = distinct !DILocation(line: 289, column: 3, scope: !205, inlinedAt: !220)
!239 = !DILocation(line: 0, scope: !232, inlinedAt: !238)
!240 = !DILocation(line: 266, column: 37, scope: !235, inlinedAt: !238)
!241 = !DILocation(line: 266, column: 3, scope: !232, inlinedAt: !238)
!242 = !DILocation(line: 270, column: 46, scope: !234, inlinedAt: !238)
!243 = !DILocation(line: 270, column: 44, scope: !234, inlinedAt: !238)
!244 = !DILocalVariable(name: "st", arg: 3, scope: !245, file: !1, line: 240, type: !47)
!245 = distinct !DISubprogram(name: "Hacl_Impl_Salsa20_update", scope: !1, file: !1, line: 240, type: !246, scopeLine: 241, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !248)
!246 = !DISubroutineType(types: !247)
!247 = !{null, !22, !22, !47, !3}
!248 = !{!249, !250, !244, !251, !252, !256, !257, !258, !259, !261, !264}
!249 = !DILocalVariable(name: "output", arg: 1, scope: !245, file: !1, line: 240, type: !22)
!250 = !DILocalVariable(name: "plain", arg: 2, scope: !245, file: !1, line: 240, type: !22)
!251 = !DILocalVariable(name: "ctr", arg: 4, scope: !245, file: !1, line: 240, type: !3)
!252 = !DILocalVariable(name: "b", scope: !245, file: !1, line: 242, type: !253)
!253 = !DICompositeType(tag: DW_TAG_array_type, baseType: !8, size: 1536, elements: !254)
!254 = !{!255}
!255 = !DISubrange(count: 48)
!256 = !DILocalVariable(name: "k", scope: !245, file: !1, line: 243, type: !47)
!257 = !DILocalVariable(name: "ib", scope: !245, file: !1, line: 244, type: !47)
!258 = !DILocalVariable(name: "ob", scope: !245, file: !1, line: 245, type: !47)
!259 = !DILocalVariable(name: "i", scope: !260, file: !1, line: 248, type: !8)
!260 = distinct !DILexicalBlock(scope: !245, file: !1, line: 248, column: 3)
!261 = !DILocalVariable(name: "xi", scope: !262, file: !1, line: 250, type: !8)
!262 = distinct !DILexicalBlock(scope: !263, file: !1, line: 249, column: 3)
!263 = distinct !DILexicalBlock(scope: !260, file: !1, line: 248, column: 3)
!264 = !DILocalVariable(name: "yi", scope: !262, file: !1, line: 251, type: !8)
!265 = !DILocation(line: 0, scope: !245, inlinedAt: !266)
!266 = distinct !DILocation(line: 270, column: 5, scope: !234, inlinedAt: !238)
!267 = !DILocation(line: 242, column: 3, scope: !245, inlinedAt: !266)
!268 = !DILocation(line: 242, column: 12, scope: !245, inlinedAt: !266)
!269 = !DILocalVariable(name: "k", arg: 1, scope: !270, file: !1, line: 195, type: !47)
!270 = distinct !DISubprogram(name: "Hacl_Impl_Salsa20_salsa20_core", scope: !1, file: !1, line: 195, type: !271, scopeLine: 196, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !273)
!271 = !DISubroutineType(types: !272)
!272 = !{null, !47, !47, !3}
!273 = !{!269, !274, !275, !276, !277}
!274 = !DILocalVariable(name: "st", arg: 2, scope: !270, file: !1, line: 195, type: !47)
!275 = !DILocalVariable(name: "ctr", arg: 3, scope: !270, file: !1, line: 195, type: !3)
!276 = !DILocalVariable(name: "c0", scope: !270, file: !1, line: 197, type: !8)
!277 = !DILocalVariable(name: "c1", scope: !270, file: !1, line: 198, type: !8)
!278 = !DILocation(line: 0, scope: !270, inlinedAt: !279)
!279 = distinct !DILocation(line: 246, column: 3, scope: !245, inlinedAt: !266)
!280 = !DILocation(line: 197, column: 17, scope: !270, inlinedAt: !279)
!281 = !DILocation(line: 198, column: 32, scope: !270, inlinedAt: !279)
!282 = !DILocation(line: 198, column: 17, scope: !270, inlinedAt: !279)
!283 = !DILocation(line: 199, column: 10, scope: !270, inlinedAt: !279)
!284 = !DILocation(line: 200, column: 10, scope: !270, inlinedAt: !279)
!285 = !DILocalVariable(name: "st", arg: 1, scope: !286, file: !1, line: 190, type: !47)
!286 = distinct !DISubprogram(name: "Hacl_Impl_Salsa20_copy_state", scope: !1, file: !1, line: 190, type: !287, scopeLine: 191, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !289)
!287 = !DISubroutineType(types: !288)
!288 = !{null, !47, !47}
!289 = !{!285, !290}
!290 = !DILocalVariable(name: "st_", arg: 2, scope: !286, file: !1, line: 190, type: !47)
!291 = !DILocation(line: 0, scope: !286, inlinedAt: !292)
!292 = distinct !DILocation(line: 201, column: 3, scope: !270, inlinedAt: !279)
!293 = !DILocation(line: 192, column: 3, scope: !286, inlinedAt: !292)
!294 = !DILocation(line: 202, column: 3, scope: !270, inlinedAt: !279)
!295 = !DILocalVariable(name: "st", arg: 1, scope: !296, file: !1, line: 180, type: !47)
!296 = distinct !DISubprogram(name: "Hacl_Impl_Salsa20_sum_states", scope: !1, file: !1, line: 180, type: !287, scopeLine: 181, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !297)
!297 = !{!295, !298, !299, !301, !304}
!298 = !DILocalVariable(name: "st_", arg: 2, scope: !296, file: !1, line: 180, type: !47)
!299 = !DILocalVariable(name: "i", scope: !300, file: !1, line: 182, type: !8)
!300 = distinct !DILexicalBlock(scope: !296, file: !1, line: 182, column: 3)
!301 = !DILocalVariable(name: "xi", scope: !302, file: !1, line: 184, type: !8)
!302 = distinct !DILexicalBlock(scope: !303, file: !1, line: 183, column: 3)
!303 = distinct !DILexicalBlock(scope: !300, file: !1, line: 182, column: 3)
!304 = !DILocalVariable(name: "yi", scope: !302, file: !1, line: 185, type: !8)
!305 = !DILocation(line: 0, scope: !296, inlinedAt: !306)
!306 = distinct !DILocation(line: 203, column: 3, scope: !270, inlinedAt: !279)
!307 = !DILocation(line: 0, scope: !300, inlinedAt: !306)
!308 = !DILocation(line: 182, column: 3, scope: !300, inlinedAt: !306)
!309 = !DILocation(line: 184, column: 19, scope: !302, inlinedAt: !306)
!310 = !DILocation(line: 0, scope: !302, inlinedAt: !306)
!311 = !DILocation(line: 185, column: 19, scope: !302, inlinedAt: !306)
!312 = !DILocation(line: 186, column: 16, scope: !302, inlinedAt: !306)
!313 = !DILocation(line: 186, column: 11, scope: !302, inlinedAt: !306)
!314 = !DILocation(line: 182, column: 60, scope: !303, inlinedAt: !306)
!315 = !DILocation(line: 182, column: 37, scope: !303, inlinedAt: !306)
!316 = distinct !{!316, !308, !317, !318, !319}
!317 = !DILocation(line: 187, column: 3, scope: !300, inlinedAt: !306)
!318 = !{!"llvm.loop.mustprogress"}
!319 = !{!"llvm.loop.unroll.disable"}
!320 = !DILocation(line: 268, column: 40, scope: !234, inlinedAt: !238)
!321 = !DILocation(line: 268, column: 24, scope: !234, inlinedAt: !238)
!322 = !DILocation(line: 85, column: 15, scope: !100, inlinedAt: !323)
!323 = distinct !DILocation(line: 247, column: 3, scope: !245, inlinedAt: !266)
!324 = !DILocation(line: 0, scope: !98, inlinedAt: !323)
!325 = !DILocation(line: 0, scope: !100, inlinedAt: !323)
!326 = !DILocation(line: 248, column: 3, scope: !260, inlinedAt: !266)
!327 = !DILocation(line: 0, scope: !260, inlinedAt: !266)
!328 = !DILocation(line: 250, column: 19, scope: !262, inlinedAt: !266)
!329 = !DILocation(line: 0, scope: !262, inlinedAt: !266)
!330 = !DILocation(line: 251, column: 19, scope: !262, inlinedAt: !266)
!331 = !DILocation(line: 252, column: 16, scope: !262, inlinedAt: !266)
!332 = !DILocation(line: 252, column: 5, scope: !262, inlinedAt: !266)
!333 = !DILocation(line: 252, column: 11, scope: !262, inlinedAt: !266)
!334 = !DILocation(line: 248, column: 60, scope: !263, inlinedAt: !266)
!335 = !DILocation(line: 248, column: 37, scope: !263, inlinedAt: !266)
!336 = distinct !{!336, !326, !337, !318, !319}
!337 = !DILocation(line: 253, column: 3, scope: !260, inlinedAt: !266)
!338 = !DILocation(line: 269, column: 25, scope: !234, inlinedAt: !238)
!339 = !DILocation(line: 355, column: 54, scope: !340, inlinedAt: !347)
!340 = distinct !DISubprogram(name: "store32", scope: !341, file: !341, line: 355, type: !342, scopeLine: 355, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !344)
!341 = !DIFile(filename: "hacl-c/hacl-c/kremlib.h", directory: "/mnt/c/Users/fwill/Documents/HS24/semester_project/tools/binsec/binsec/examples/hacl", checksumkind: CSK_MD5, checksum: "cde125f1f98cb7b9ee1f380d4178ebe4")
!342 = !DISubroutineType(types: !343)
!343 = !{null, !22, !8}
!344 = !{!345, !346}
!345 = !DILocalVariable(name: "b", arg: 1, scope: !340, file: !341, line: 355, type: !22)
!346 = !DILocalVariable(name: "i", arg: 2, scope: !340, file: !341, line: 355, type: !8)
!347 = distinct !DILocation(line: 96, column: 5, scope: !348, inlinedAt: !361)
!348 = distinct !DILexicalBlock(scope: !349, file: !1, line: 93, column: 3)
!349 = distinct !DILexicalBlock(scope: !350, file: !1, line: 92, column: 3)
!350 = distinct !DILexicalBlock(scope: !351, file: !1, line: 92, column: 3)
!351 = distinct !DISubprogram(name: "Hacl_Lib_LoadStore32_uint32s_to_le_bytes", scope: !1, file: !1, line: 90, type: !352, scopeLine: 91, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !354)
!352 = !DISubroutineType(types: !353)
!353 = !{null, !22, !47, !8}
!354 = !{!355, !356, !357, !358, !359, !360}
!355 = !DILocalVariable(name: "output", arg: 1, scope: !351, file: !1, line: 90, type: !22)
!356 = !DILocalVariable(name: "input", arg: 2, scope: !351, file: !1, line: 90, type: !47)
!357 = !DILocalVariable(name: "len", arg: 3, scope: !351, file: !1, line: 90, type: !8)
!358 = !DILocalVariable(name: "i", scope: !350, file: !1, line: 92, type: !8)
!359 = !DILocalVariable(name: "hd1", scope: !348, file: !1, line: 94, type: !8)
!360 = !DILocalVariable(name: "x0", scope: !348, file: !1, line: 95, type: !22)
!361 = distinct !DILocation(line: 254, column: 3, scope: !245, inlinedAt: !266)
!362 = !DILocation(line: 0, scope: !348, inlinedAt: !361)
!363 = !DILocation(line: 0, scope: !340, inlinedAt: !347)
!364 = !DILocation(line: 0, scope: !350, inlinedAt: !361)
!365 = !DILocation(line: 255, column: 1, scope: !245, inlinedAt: !266)
!366 = !DILocation(line: 266, column: 50, scope: !235, inlinedAt: !238)
!367 = distinct !{!367, !241, !368, !318, !319}
!368 = !DILocation(line: 271, column: 3, scope: !232, inlinedAt: !238)
!369 = !DILocation(line: 290, column: 16, scope: !370, inlinedAt: !220)
!370 = distinct !DILexicalBlock(scope: !205, file: !1, line: 290, column: 7)
!371 = !DILocation(line: 290, column: 7, scope: !205, inlinedAt: !220)
!372 = !DILocation(line: 291, column: 74, scope: !370, inlinedAt: !220)
!373 = !DILocation(line: 291, column: 72, scope: !370, inlinedAt: !220)
!374 = !DILocalVariable(name: "len", arg: 3, scope: !375, file: !1, line: 223, type: !8)
!375 = distinct !DISubprogram(name: "Hacl_Impl_Salsa20_update_last", scope: !1, file: !1, line: 220, type: !206, scopeLine: 227, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !376)
!376 = !{!377, !378, !374, !379, !380, !381, !385, !386, !388, !391}
!377 = !DILocalVariable(name: "output", arg: 1, scope: !375, file: !1, line: 221, type: !22)
!378 = !DILocalVariable(name: "plain", arg: 2, scope: !375, file: !1, line: 222, type: !22)
!379 = !DILocalVariable(name: "st", arg: 4, scope: !375, file: !1, line: 224, type: !47)
!380 = !DILocalVariable(name: "ctr", arg: 5, scope: !375, file: !1, line: 225, type: !3)
!381 = !DILocalVariable(name: "block", scope: !375, file: !1, line: 228, type: !382)
!382 = !DICompositeType(tag: DW_TAG_array_type, baseType: !23, size: 512, elements: !383)
!383 = !{!384}
!384 = !DISubrange(count: 64)
!385 = !DILocalVariable(name: "mask", scope: !375, file: !1, line: 230, type: !22)
!386 = !DILocalVariable(name: "i", scope: !387, file: !1, line: 231, type: !8)
!387 = distinct !DILexicalBlock(scope: !375, file: !1, line: 231, column: 3)
!388 = !DILocalVariable(name: "xi", scope: !389, file: !1, line: 233, type: !23)
!389 = distinct !DILexicalBlock(scope: !390, file: !1, line: 232, column: 3)
!390 = distinct !DILexicalBlock(scope: !387, file: !1, line: 231, column: 3)
!391 = !DILocalVariable(name: "yi", scope: !389, file: !1, line: 234, type: !23)
!392 = !DILocation(line: 0, scope: !375, inlinedAt: !393)
!393 = distinct !DILocation(line: 291, column: 5, scope: !370, inlinedAt: !220)
!394 = !DILocation(line: 228, column: 3, scope: !375, inlinedAt: !393)
!395 = !DILocation(line: 228, column: 11, scope: !375, inlinedAt: !393)
!396 = !DILocalVariable(name: "stream_block", arg: 1, scope: !397, file: !1, line: 207, type: !22)
!397 = distinct !DISubprogram(name: "Hacl_Impl_Salsa20_salsa20_block", scope: !1, file: !1, line: 207, type: !398, scopeLine: 208, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !400)
!398 = !DISubroutineType(types: !399)
!399 = !{null, !22, !47, !3}
!400 = !{!396, !401, !402, !403}
!401 = !DILocalVariable(name: "st", arg: 2, scope: !397, file: !1, line: 207, type: !47)
!402 = !DILocalVariable(name: "ctr", arg: 3, scope: !397, file: !1, line: 207, type: !3)
!403 = !DILocalVariable(name: "st_", scope: !397, file: !1, line: 209, type: !43)
!404 = !DILocation(line: 0, scope: !397, inlinedAt: !405)
!405 = distinct !DILocation(line: 229, column: 3, scope: !375, inlinedAt: !393)
!406 = !DILocation(line: 209, column: 3, scope: !397, inlinedAt: !405)
!407 = !DILocation(line: 209, column: 12, scope: !397, inlinedAt: !405)
!408 = !DILocation(line: 210, column: 34, scope: !397, inlinedAt: !405)
!409 = !DILocation(line: 0, scope: !270, inlinedAt: !410)
!410 = distinct !DILocation(line: 210, column: 3, scope: !397, inlinedAt: !405)
!411 = !DILocation(line: 197, column: 17, scope: !270, inlinedAt: !410)
!412 = !DILocation(line: 198, column: 32, scope: !270, inlinedAt: !410)
!413 = !DILocation(line: 198, column: 17, scope: !270, inlinedAt: !410)
!414 = !DILocation(line: 199, column: 10, scope: !270, inlinedAt: !410)
!415 = !DILocation(line: 200, column: 10, scope: !270, inlinedAt: !410)
!416 = !DILocation(line: 0, scope: !286, inlinedAt: !417)
!417 = distinct !DILocation(line: 201, column: 3, scope: !270, inlinedAt: !410)
!418 = !DILocation(line: 192, column: 3, scope: !286, inlinedAt: !417)
!419 = !DILocation(line: 202, column: 3, scope: !270, inlinedAt: !410)
!420 = !DILocation(line: 0, scope: !296, inlinedAt: !421)
!421 = distinct !DILocation(line: 203, column: 3, scope: !270, inlinedAt: !410)
!422 = !DILocation(line: 0, scope: !300, inlinedAt: !421)
!423 = !DILocation(line: 182, column: 3, scope: !300, inlinedAt: !421)
!424 = !DILocation(line: 184, column: 19, scope: !302, inlinedAt: !421)
!425 = !DILocation(line: 0, scope: !302, inlinedAt: !421)
!426 = !DILocation(line: 185, column: 19, scope: !302, inlinedAt: !421)
!427 = !DILocation(line: 186, column: 16, scope: !302, inlinedAt: !421)
!428 = !DILocation(line: 186, column: 11, scope: !302, inlinedAt: !421)
!429 = !DILocation(line: 182, column: 60, scope: !303, inlinedAt: !421)
!430 = !DILocation(line: 182, column: 37, scope: !303, inlinedAt: !421)
!431 = distinct !{!431, !423, !432, !318, !319}
!432 = !DILocation(line: 187, column: 3, scope: !300, inlinedAt: !421)
!433 = !DILocation(line: 288, column: 28, scope: !205, inlinedAt: !220)
!434 = !DILocation(line: 287, column: 30, scope: !205, inlinedAt: !220)
!435 = !DILocation(line: 355, column: 54, scope: !340, inlinedAt: !436)
!436 = distinct !DILocation(line: 96, column: 5, scope: !348, inlinedAt: !437)
!437 = distinct !DILocation(line: 211, column: 3, scope: !397, inlinedAt: !405)
!438 = !DILocation(line: 0, scope: !350, inlinedAt: !437)
!439 = !DILocation(line: 0, scope: !348, inlinedAt: !437)
!440 = !DILocation(line: 0, scope: !340, inlinedAt: !436)
!441 = !DILocation(line: 212, column: 1, scope: !397, inlinedAt: !405)
!442 = !DILocation(line: 0, scope: !387, inlinedAt: !393)
!443 = !DILocation(line: 231, column: 3, scope: !387, inlinedAt: !393)
!444 = !DILocation(line: 233, column: 18, scope: !389, inlinedAt: !393)
!445 = !{!164, !164, i64 0}
!446 = !DILocation(line: 0, scope: !389, inlinedAt: !393)
!447 = !DILocation(line: 234, column: 18, scope: !389, inlinedAt: !393)
!448 = !DILocation(line: 235, column: 20, scope: !389, inlinedAt: !393)
!449 = !DILocation(line: 235, column: 5, scope: !389, inlinedAt: !393)
!450 = !DILocation(line: 235, column: 15, scope: !389, inlinedAt: !393)
!451 = !DILocation(line: 231, column: 50, scope: !390, inlinedAt: !393)
!452 = !DILocation(line: 231, column: 37, scope: !390, inlinedAt: !393)
!453 = distinct !{!453, !443, !454, !318, !319}
!454 = !DILocation(line: 236, column: 3, scope: !387, inlinedAt: !393)
!455 = !DILocation(line: 237, column: 1, scope: !375, inlinedAt: !393)
!456 = !DILocation(line: 291, column: 5, scope: !370, inlinedAt: !220)
!457 = !DILocation(line: 308, column: 1, scope: !35, inlinedAt: !49)
!458 = !DILocation(line: 379, column: 1, scope: !19)
!459 = distinct !DISubprogram(name: "Hacl_Salsa20_hsalsa20", scope: !1, file: !1, line: 381, type: !460, scopeLine: 382, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !462)
!460 = !DISubroutineType(types: !461)
!461 = !{null, !22, !22, !22}
!462 = !{!463, !464, !465}
!463 = !DILocalVariable(name: "output", arg: 1, scope: !459, file: !1, line: 381, type: !22)
!464 = !DILocalVariable(name: "key", arg: 2, scope: !459, file: !1, line: 381, type: !22)
!465 = !DILocalVariable(name: "nonce", arg: 3, scope: !459, file: !1, line: 381, type: !22)
!466 = !DILocation(line: 0, scope: !459)
!467 = !DILocalVariable(name: "output", arg: 1, scope: !468, file: !1, line: 349, type: !22)
!468 = distinct !DISubprogram(name: "Hacl_Impl_HSalsa20_crypto_core_hsalsa20", scope: !1, file: !1, line: 349, type: !460, scopeLine: 350, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !469)
!469 = !{!467, !470, !471, !472, !476, !477, !478, !479, !480, !481, !482, !483, !484, !485}
!470 = !DILocalVariable(name: "nonce", arg: 2, scope: !468, file: !1, line: 349, type: !22)
!471 = !DILocalVariable(name: "key", arg: 3, scope: !468, file: !1, line: 349, type: !22)
!472 = !DILocalVariable(name: "tmp", scope: !468, file: !1, line: 351, type: !473)
!473 = !DICompositeType(tag: DW_TAG_array_type, baseType: !8, size: 768, elements: !474)
!474 = !{!475}
!475 = !DISubrange(count: 24)
!476 = !DILocalVariable(name: "st", scope: !468, file: !1, line: 352, type: !47)
!477 = !DILocalVariable(name: "hs", scope: !468, file: !1, line: 353, type: !47)
!478 = !DILocalVariable(name: "hs0", scope: !468, file: !1, line: 356, type: !8)
!479 = !DILocalVariable(name: "hs1", scope: !468, file: !1, line: 357, type: !8)
!480 = !DILocalVariable(name: "hs2", scope: !468, file: !1, line: 358, type: !8)
!481 = !DILocalVariable(name: "hs3", scope: !468, file: !1, line: 359, type: !8)
!482 = !DILocalVariable(name: "hs4", scope: !468, file: !1, line: 360, type: !8)
!483 = !DILocalVariable(name: "hs5", scope: !468, file: !1, line: 361, type: !8)
!484 = !DILocalVariable(name: "hs6", scope: !468, file: !1, line: 362, type: !8)
!485 = !DILocalVariable(name: "hs7", scope: !468, file: !1, line: 363, type: !8)
!486 = !DILocation(line: 0, scope: !468, inlinedAt: !487)
!487 = distinct !DILocation(line: 383, column: 3, scope: !459)
!488 = !DILocation(line: 351, column: 3, scope: !468, inlinedAt: !487)
!489 = !DILocation(line: 351, column: 12, scope: !468, inlinedAt: !487)
!490 = !DILocation(line: 352, column: 18, scope: !468, inlinedAt: !487)
!491 = !DILocation(line: 353, column: 22, scope: !468, inlinedAt: !487)
!492 = !DILocalVariable(name: "st", arg: 1, scope: !493, file: !1, line: 310, type: !47)
!493 = distinct !DISubprogram(name: "Hacl_Impl_HSalsa20_setup", scope: !1, file: !1, line: 310, type: !55, scopeLine: 311, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !494)
!494 = !{!492, !495, !496, !497, !501, !502, !503, !504, !505, !506, !507, !508, !509, !510, !511, !512, !513, !514}
!495 = !DILocalVariable(name: "k", arg: 2, scope: !493, file: !1, line: 310, type: !22)
!496 = !DILocalVariable(name: "n1", arg: 3, scope: !493, file: !1, line: 310, type: !22)
!497 = !DILocalVariable(name: "tmp", scope: !493, file: !1, line: 312, type: !498)
!498 = !DICompositeType(tag: DW_TAG_array_type, baseType: !8, size: 384, elements: !499)
!499 = !{!500}
!500 = !DISubrange(count: 12)
!501 = !DILocalVariable(name: "k_", scope: !493, file: !1, line: 313, type: !47)
!502 = !DILocalVariable(name: "n_", scope: !493, file: !1, line: 314, type: !47)
!503 = !DILocalVariable(name: "k0", scope: !493, file: !1, line: 317, type: !8)
!504 = !DILocalVariable(name: "k1", scope: !493, file: !1, line: 318, type: !8)
!505 = !DILocalVariable(name: "k2", scope: !493, file: !1, line: 319, type: !8)
!506 = !DILocalVariable(name: "k3", scope: !493, file: !1, line: 320, type: !8)
!507 = !DILocalVariable(name: "k4", scope: !493, file: !1, line: 321, type: !8)
!508 = !DILocalVariable(name: "k5", scope: !493, file: !1, line: 322, type: !8)
!509 = !DILocalVariable(name: "k6", scope: !493, file: !1, line: 323, type: !8)
!510 = !DILocalVariable(name: "k7", scope: !493, file: !1, line: 324, type: !8)
!511 = !DILocalVariable(name: "n0", scope: !493, file: !1, line: 325, type: !8)
!512 = !DILocalVariable(name: "n11", scope: !493, file: !1, line: 326, type: !8)
!513 = !DILocalVariable(name: "n2", scope: !493, file: !1, line: 327, type: !8)
!514 = !DILocalVariable(name: "n3", scope: !493, file: !1, line: 328, type: !8)
!515 = !DILocation(line: 0, scope: !493, inlinedAt: !516)
!516 = distinct !DILocation(line: 354, column: 3, scope: !468, inlinedAt: !487)
!517 = !DILocation(line: 0, scope: !91, inlinedAt: !518)
!518 = distinct !DILocation(line: 315, column: 3, scope: !493, inlinedAt: !516)
!519 = !DILocation(line: 0, scope: !98, inlinedAt: !518)
!520 = !DILocation(line: 85, column: 15, scope: !100, inlinedAt: !518)
!521 = !DILocation(line: 0, scope: !100, inlinedAt: !518)
!522 = !DILocation(line: 85, column: 15, scope: !100, inlinedAt: !523)
!523 = distinct !DILocation(line: 316, column: 3, scope: !493, inlinedAt: !516)
!524 = !DILocation(line: 0, scope: !98, inlinedAt: !523)
!525 = !DILocation(line: 0, scope: !100, inlinedAt: !523)
!526 = !DILocation(line: 0, scope: !113, inlinedAt: !527)
!527 = distinct !DILocation(line: 329, column: 3, scope: !493, inlinedAt: !516)
!528 = !DILocation(line: 0, scope: !136, inlinedAt: !529)
!529 = distinct !DILocation(line: 74, column: 3, scope: !113, inlinedAt: !527)
!530 = !DILocation(line: 0, scope: !151, inlinedAt: !531)
!531 = distinct !DILocation(line: 49, column: 3, scope: !136, inlinedAt: !529)
!532 = !DILocation(line: 30, column: 9, scope: !151, inlinedAt: !531)
!533 = !DILocation(line: 31, column: 3, scope: !151, inlinedAt: !531)
!534 = !DILocation(line: 31, column: 9, scope: !151, inlinedAt: !531)
!535 = !DILocation(line: 32, column: 3, scope: !151, inlinedAt: !531)
!536 = !DILocation(line: 32, column: 9, scope: !151, inlinedAt: !531)
!537 = !DILocation(line: 33, column: 3, scope: !151, inlinedAt: !531)
!538 = !DILocation(line: 33, column: 9, scope: !151, inlinedAt: !531)
!539 = !DILocation(line: 50, column: 32, scope: !136, inlinedAt: !529)
!540 = !DILocation(line: 0, scope: !151, inlinedAt: !541)
!541 = distinct !DILocation(line: 50, column: 3, scope: !136, inlinedAt: !529)
!542 = !DILocation(line: 30, column: 9, scope: !151, inlinedAt: !541)
!543 = !DILocation(line: 31, column: 3, scope: !151, inlinedAt: !541)
!544 = !DILocation(line: 31, column: 9, scope: !151, inlinedAt: !541)
!545 = !DILocation(line: 32, column: 3, scope: !151, inlinedAt: !541)
!546 = !DILocation(line: 32, column: 9, scope: !151, inlinedAt: !541)
!547 = !DILocation(line: 33, column: 3, scope: !151, inlinedAt: !541)
!548 = !DILocation(line: 33, column: 9, scope: !151, inlinedAt: !541)
!549 = !DILocation(line: 75, column: 32, scope: !113, inlinedAt: !527)
!550 = !DILocation(line: 0, scope: !136, inlinedAt: !551)
!551 = distinct !DILocation(line: 75, column: 3, scope: !113, inlinedAt: !527)
!552 = !DILocation(line: 0, scope: !151, inlinedAt: !553)
!553 = distinct !DILocation(line: 49, column: 3, scope: !136, inlinedAt: !551)
!554 = !DILocation(line: 30, column: 9, scope: !151, inlinedAt: !553)
!555 = !DILocation(line: 31, column: 3, scope: !151, inlinedAt: !553)
!556 = !DILocation(line: 31, column: 9, scope: !151, inlinedAt: !553)
!557 = !DILocation(line: 32, column: 3, scope: !151, inlinedAt: !553)
!558 = !DILocation(line: 32, column: 9, scope: !151, inlinedAt: !553)
!559 = !DILocation(line: 33, column: 3, scope: !151, inlinedAt: !553)
!560 = !DILocation(line: 33, column: 9, scope: !151, inlinedAt: !553)
!561 = !DILocation(line: 50, column: 32, scope: !136, inlinedAt: !551)
!562 = !DILocation(line: 0, scope: !151, inlinedAt: !563)
!563 = distinct !DILocation(line: 50, column: 3, scope: !136, inlinedAt: !551)
!564 = !DILocation(line: 30, column: 9, scope: !151, inlinedAt: !563)
!565 = !DILocation(line: 31, column: 3, scope: !151, inlinedAt: !563)
!566 = !DILocation(line: 31, column: 9, scope: !151, inlinedAt: !563)
!567 = !DILocation(line: 32, column: 3, scope: !151, inlinedAt: !563)
!568 = !DILocation(line: 32, column: 9, scope: !151, inlinedAt: !563)
!569 = !DILocation(line: 33, column: 3, scope: !151, inlinedAt: !563)
!570 = !DILocation(line: 33, column: 9, scope: !151, inlinedAt: !563)
!571 = !DILocation(line: 355, column: 3, scope: !468, inlinedAt: !487)
!572 = !DILocation(line: 356, column: 18, scope: !468, inlinedAt: !487)
!573 = !DILocation(line: 357, column: 18, scope: !468, inlinedAt: !487)
!574 = !DILocation(line: 358, column: 18, scope: !468, inlinedAt: !487)
!575 = !DILocation(line: 359, column: 18, scope: !468, inlinedAt: !487)
!576 = !DILocation(line: 360, column: 18, scope: !468, inlinedAt: !487)
!577 = !DILocation(line: 361, column: 18, scope: !468, inlinedAt: !487)
!578 = !DILocation(line: 362, column: 18, scope: !468, inlinedAt: !487)
!579 = !DILocation(line: 363, column: 18, scope: !468, inlinedAt: !487)
!580 = !DILocation(line: 0, scope: !136, inlinedAt: !581)
!581 = distinct !DILocation(line: 364, column: 3, scope: !468, inlinedAt: !487)
!582 = !DILocation(line: 0, scope: !151, inlinedAt: !583)
!583 = distinct !DILocation(line: 49, column: 3, scope: !136, inlinedAt: !581)
!584 = !DILocation(line: 30, column: 9, scope: !151, inlinedAt: !583)
!585 = !DILocation(line: 31, column: 3, scope: !151, inlinedAt: !583)
!586 = !DILocation(line: 31, column: 9, scope: !151, inlinedAt: !583)
!587 = !DILocation(line: 32, column: 3, scope: !151, inlinedAt: !583)
!588 = !DILocation(line: 32, column: 9, scope: !151, inlinedAt: !583)
!589 = !DILocation(line: 33, column: 3, scope: !151, inlinedAt: !583)
!590 = !DILocation(line: 33, column: 9, scope: !151, inlinedAt: !583)
!591 = !DILocation(line: 50, column: 32, scope: !136, inlinedAt: !581)
!592 = !DILocation(line: 0, scope: !151, inlinedAt: !593)
!593 = distinct !DILocation(line: 50, column: 3, scope: !136, inlinedAt: !581)
!594 = !DILocation(line: 30, column: 9, scope: !151, inlinedAt: !593)
!595 = !DILocation(line: 31, column: 3, scope: !151, inlinedAt: !593)
!596 = !DILocation(line: 31, column: 9, scope: !151, inlinedAt: !593)
!597 = !DILocation(line: 32, column: 3, scope: !151, inlinedAt: !593)
!598 = !DILocation(line: 32, column: 9, scope: !151, inlinedAt: !593)
!599 = !DILocation(line: 33, column: 3, scope: !151, inlinedAt: !593)
!600 = !DILocation(line: 33, column: 9, scope: !151, inlinedAt: !593)
!601 = !DILocation(line: 0, scope: !351, inlinedAt: !602)
!602 = distinct !DILocation(line: 365, column: 3, scope: !468, inlinedAt: !487)
!603 = !DILocation(line: 0, scope: !350, inlinedAt: !602)
!604 = !DILocation(line: 355, column: 54, scope: !340, inlinedAt: !605)
!605 = distinct !DILocation(line: 96, column: 5, scope: !348, inlinedAt: !602)
!606 = !DILocation(line: 0, scope: !348, inlinedAt: !602)
!607 = !DILocation(line: 0, scope: !340, inlinedAt: !605)
!608 = !DILocation(line: 366, column: 1, scope: !468, inlinedAt: !487)
!609 = !DILocation(line: 384, column: 1, scope: !459)
!610 = distinct !DISubprogram(name: "Hacl_Impl_Salsa20_rounds", scope: !1, file: !1, line: 174, type: !611, scopeLine: 175, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !613)
!611 = !DISubroutineType(types: !612)
!612 = !{null, !47}
!613 = !{!614, !615}
!614 = !DILocalVariable(name: "st", arg: 1, scope: !610, file: !1, line: 174, type: !47)
!615 = !DILocalVariable(name: "i", scope: !616, file: !1, line: 176, type: !8)
!616 = distinct !DILexicalBlock(scope: !610, file: !1, line: 176, column: 3)
!617 = !DILocation(line: 0, scope: !610)
!618 = !DILocation(line: 0, scope: !616)
!619 = !DILocation(line: 176, column: 3, scope: !616)
!620 = !DILocation(line: 0, scope: !621, inlinedAt: !624)
!621 = distinct !DISubprogram(name: "Hacl_Impl_Salsa20_double_round", scope: !1, file: !1, line: 158, type: !611, scopeLine: 159, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !622)
!622 = !{!623}
!623 = !DILocalVariable(name: "st", arg: 1, scope: !621, file: !1, line: 158, type: !47)
!624 = distinct !DILocation(line: 177, column: 5, scope: !625)
!625 = distinct !DILexicalBlock(scope: !616, file: !1, line: 176, column: 3)
!626 = !DILocation(line: 178, column: 1, scope: !610)
!627 = !DILocalVariable(name: "st", arg: 1, scope: !628, file: !1, line: 150, type: !47)
!628 = distinct !DISubprogram(name: "Hacl_Impl_Salsa20_quarter_round", scope: !1, file: !1, line: 150, type: !152, scopeLine: 151, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !629)
!629 = !{!627, !630, !631, !632, !633}
!630 = !DILocalVariable(name: "a", arg: 2, scope: !628, file: !1, line: 150, type: !8)
!631 = !DILocalVariable(name: "b", arg: 3, scope: !628, file: !1, line: 150, type: !8)
!632 = !DILocalVariable(name: "c", arg: 4, scope: !628, file: !1, line: 150, type: !8)
!633 = !DILocalVariable(name: "d", arg: 5, scope: !628, file: !1, line: 150, type: !8)
!634 = !DILocation(line: 0, scope: !628, inlinedAt: !635)
!635 = distinct !DILocation(line: 160, column: 3, scope: !621, inlinedAt: !624)
!636 = !DILocalVariable(name: "st", arg: 1, scope: !637, file: !1, line: 139, type: !47)
!637 = distinct !DISubprogram(name: "Hacl_Impl_Salsa20_line", scope: !1, file: !1, line: 139, type: !152, scopeLine: 140, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !638)
!638 = !{!636, !639, !640, !641, !642, !643, !644, !645, !646, !647}
!639 = !DILocalVariable(name: "a", arg: 2, scope: !637, file: !1, line: 139, type: !8)
!640 = !DILocalVariable(name: "b", arg: 3, scope: !637, file: !1, line: 139, type: !8)
!641 = !DILocalVariable(name: "d", arg: 4, scope: !637, file: !1, line: 139, type: !8)
!642 = !DILocalVariable(name: "s", arg: 5, scope: !637, file: !1, line: 139, type: !8)
!643 = !DILocalVariable(name: "sa", scope: !637, file: !1, line: 141, type: !8)
!644 = !DILocalVariable(name: "sb", scope: !637, file: !1, line: 142, type: !8)
!645 = !DILocalVariable(name: "sd", scope: !637, file: !1, line: 143, type: !8)
!646 = !DILocalVariable(name: "sbd", scope: !637, file: !1, line: 144, type: !8)
!647 = !DILocalVariable(name: "sbds", scope: !637, file: !1, line: 145, type: !8)
!648 = !DILocation(line: 0, scope: !637, inlinedAt: !649)
!649 = distinct !DILocation(line: 152, column: 3, scope: !628, inlinedAt: !635)
!650 = !DILocation(line: 144, column: 21, scope: !637, inlinedAt: !649)
!651 = !DILocation(line: 145, column: 28, scope: !637, inlinedAt: !649)
!652 = !DILocation(line: 146, column: 14, scope: !637, inlinedAt: !649)
!653 = !DILocation(line: 0, scope: !637, inlinedAt: !654)
!654 = distinct !DILocation(line: 153, column: 3, scope: !628, inlinedAt: !635)
!655 = !DILocation(line: 144, column: 21, scope: !637, inlinedAt: !654)
!656 = !DILocation(line: 145, column: 28, scope: !637, inlinedAt: !654)
!657 = !DILocation(line: 146, column: 14, scope: !637, inlinedAt: !654)
!658 = !DILocation(line: 0, scope: !637, inlinedAt: !659)
!659 = distinct !DILocation(line: 154, column: 3, scope: !628, inlinedAt: !635)
!660 = !DILocation(line: 144, column: 21, scope: !637, inlinedAt: !659)
!661 = !DILocation(line: 145, column: 28, scope: !637, inlinedAt: !659)
!662 = !DILocation(line: 146, column: 14, scope: !637, inlinedAt: !659)
!663 = !DILocation(line: 0, scope: !637, inlinedAt: !664)
!664 = distinct !DILocation(line: 155, column: 3, scope: !628, inlinedAt: !635)
!665 = !DILocation(line: 144, column: 21, scope: !637, inlinedAt: !664)
!666 = !DILocation(line: 145, column: 28, scope: !637, inlinedAt: !664)
!667 = !DILocation(line: 146, column: 14, scope: !637, inlinedAt: !664)
!668 = !DILocation(line: 0, scope: !628, inlinedAt: !669)
!669 = distinct !DILocation(line: 161, column: 3, scope: !621, inlinedAt: !624)
!670 = !DILocation(line: 0, scope: !637, inlinedAt: !671)
!671 = distinct !DILocation(line: 152, column: 3, scope: !628, inlinedAt: !669)
!672 = !DILocation(line: 144, column: 21, scope: !637, inlinedAt: !671)
!673 = !DILocation(line: 145, column: 28, scope: !637, inlinedAt: !671)
!674 = !DILocation(line: 146, column: 14, scope: !637, inlinedAt: !671)
!675 = !DILocation(line: 0, scope: !637, inlinedAt: !676)
!676 = distinct !DILocation(line: 153, column: 3, scope: !628, inlinedAt: !669)
!677 = !DILocation(line: 144, column: 21, scope: !637, inlinedAt: !676)
!678 = !DILocation(line: 145, column: 28, scope: !637, inlinedAt: !676)
!679 = !DILocation(line: 146, column: 14, scope: !637, inlinedAt: !676)
!680 = !DILocation(line: 0, scope: !637, inlinedAt: !681)
!681 = distinct !DILocation(line: 154, column: 3, scope: !628, inlinedAt: !669)
!682 = !DILocation(line: 144, column: 21, scope: !637, inlinedAt: !681)
!683 = !DILocation(line: 145, column: 28, scope: !637, inlinedAt: !681)
!684 = !DILocation(line: 146, column: 14, scope: !637, inlinedAt: !681)
!685 = !DILocation(line: 0, scope: !637, inlinedAt: !686)
!686 = distinct !DILocation(line: 155, column: 3, scope: !628, inlinedAt: !669)
!687 = !DILocation(line: 144, column: 21, scope: !637, inlinedAt: !686)
!688 = !DILocation(line: 145, column: 28, scope: !637, inlinedAt: !686)
!689 = !DILocation(line: 146, column: 14, scope: !637, inlinedAt: !686)
!690 = !DILocation(line: 0, scope: !628, inlinedAt: !691)
!691 = distinct !DILocation(line: 162, column: 3, scope: !621, inlinedAt: !624)
!692 = !DILocation(line: 0, scope: !637, inlinedAt: !693)
!693 = distinct !DILocation(line: 152, column: 3, scope: !628, inlinedAt: !691)
!694 = !DILocation(line: 144, column: 21, scope: !637, inlinedAt: !693)
!695 = !DILocation(line: 145, column: 28, scope: !637, inlinedAt: !693)
!696 = !DILocation(line: 146, column: 14, scope: !637, inlinedAt: !693)
!697 = !DILocation(line: 0, scope: !637, inlinedAt: !698)
!698 = distinct !DILocation(line: 153, column: 3, scope: !628, inlinedAt: !691)
!699 = !DILocation(line: 144, column: 21, scope: !637, inlinedAt: !698)
!700 = !DILocation(line: 145, column: 28, scope: !637, inlinedAt: !698)
!701 = !DILocation(line: 146, column: 14, scope: !637, inlinedAt: !698)
!702 = !DILocation(line: 0, scope: !637, inlinedAt: !703)
!703 = distinct !DILocation(line: 154, column: 3, scope: !628, inlinedAt: !691)
!704 = !DILocation(line: 144, column: 21, scope: !637, inlinedAt: !703)
!705 = !DILocation(line: 145, column: 28, scope: !637, inlinedAt: !703)
!706 = !DILocation(line: 146, column: 14, scope: !637, inlinedAt: !703)
!707 = !DILocation(line: 0, scope: !637, inlinedAt: !708)
!708 = distinct !DILocation(line: 155, column: 3, scope: !628, inlinedAt: !691)
!709 = !DILocation(line: 144, column: 21, scope: !637, inlinedAt: !708)
!710 = !DILocation(line: 145, column: 28, scope: !637, inlinedAt: !708)
!711 = !DILocation(line: 146, column: 14, scope: !637, inlinedAt: !708)
!712 = !DILocation(line: 0, scope: !628, inlinedAt: !713)
!713 = distinct !DILocation(line: 163, column: 3, scope: !621, inlinedAt: !624)
!714 = !DILocation(line: 0, scope: !637, inlinedAt: !715)
!715 = distinct !DILocation(line: 152, column: 3, scope: !628, inlinedAt: !713)
!716 = !DILocation(line: 144, column: 21, scope: !637, inlinedAt: !715)
!717 = !DILocation(line: 145, column: 28, scope: !637, inlinedAt: !715)
!718 = !DILocation(line: 146, column: 14, scope: !637, inlinedAt: !715)
!719 = !DILocation(line: 0, scope: !637, inlinedAt: !720)
!720 = distinct !DILocation(line: 153, column: 3, scope: !628, inlinedAt: !713)
!721 = !DILocation(line: 144, column: 21, scope: !637, inlinedAt: !720)
!722 = !DILocation(line: 145, column: 28, scope: !637, inlinedAt: !720)
!723 = !DILocation(line: 146, column: 14, scope: !637, inlinedAt: !720)
!724 = !DILocation(line: 0, scope: !637, inlinedAt: !725)
!725 = distinct !DILocation(line: 154, column: 3, scope: !628, inlinedAt: !713)
!726 = !DILocation(line: 144, column: 21, scope: !637, inlinedAt: !725)
!727 = !DILocation(line: 145, column: 28, scope: !637, inlinedAt: !725)
!728 = !DILocation(line: 146, column: 14, scope: !637, inlinedAt: !725)
!729 = !DILocation(line: 0, scope: !637, inlinedAt: !730)
!730 = distinct !DILocation(line: 155, column: 3, scope: !628, inlinedAt: !713)
!731 = !DILocation(line: 144, column: 21, scope: !637, inlinedAt: !730)
!732 = !DILocation(line: 145, column: 28, scope: !637, inlinedAt: !730)
!733 = !DILocation(line: 146, column: 14, scope: !637, inlinedAt: !730)
!734 = !DILocation(line: 0, scope: !628, inlinedAt: !735)
!735 = distinct !DILocation(line: 164, column: 3, scope: !621, inlinedAt: !624)
!736 = !DILocation(line: 0, scope: !637, inlinedAt: !737)
!737 = distinct !DILocation(line: 152, column: 3, scope: !628, inlinedAt: !735)
!738 = !DILocation(line: 144, column: 21, scope: !637, inlinedAt: !737)
!739 = !DILocation(line: 145, column: 28, scope: !637, inlinedAt: !737)
!740 = !DILocation(line: 146, column: 14, scope: !637, inlinedAt: !737)
!741 = !DILocation(line: 0, scope: !637, inlinedAt: !742)
!742 = distinct !DILocation(line: 153, column: 3, scope: !628, inlinedAt: !735)
!743 = !DILocation(line: 144, column: 21, scope: !637, inlinedAt: !742)
!744 = !DILocation(line: 145, column: 28, scope: !637, inlinedAt: !742)
!745 = !DILocation(line: 146, column: 14, scope: !637, inlinedAt: !742)
!746 = !DILocation(line: 0, scope: !637, inlinedAt: !747)
!747 = distinct !DILocation(line: 154, column: 3, scope: !628, inlinedAt: !735)
!748 = !DILocation(line: 144, column: 21, scope: !637, inlinedAt: !747)
!749 = !DILocation(line: 145, column: 28, scope: !637, inlinedAt: !747)
!750 = !DILocation(line: 146, column: 14, scope: !637, inlinedAt: !747)
!751 = !DILocation(line: 0, scope: !637, inlinedAt: !752)
!752 = distinct !DILocation(line: 155, column: 3, scope: !628, inlinedAt: !735)
!753 = !DILocation(line: 144, column: 21, scope: !637, inlinedAt: !752)
!754 = !DILocation(line: 145, column: 28, scope: !637, inlinedAt: !752)
!755 = !DILocation(line: 146, column: 14, scope: !637, inlinedAt: !752)
!756 = !DILocation(line: 0, scope: !628, inlinedAt: !757)
!757 = distinct !DILocation(line: 165, column: 3, scope: !621, inlinedAt: !624)
!758 = !DILocation(line: 0, scope: !637, inlinedAt: !759)
!759 = distinct !DILocation(line: 152, column: 3, scope: !628, inlinedAt: !757)
!760 = !DILocation(line: 144, column: 21, scope: !637, inlinedAt: !759)
!761 = !DILocation(line: 145, column: 28, scope: !637, inlinedAt: !759)
!762 = !DILocation(line: 146, column: 14, scope: !637, inlinedAt: !759)
!763 = !DILocation(line: 0, scope: !637, inlinedAt: !764)
!764 = distinct !DILocation(line: 153, column: 3, scope: !628, inlinedAt: !757)
!765 = !DILocation(line: 144, column: 21, scope: !637, inlinedAt: !764)
!766 = !DILocation(line: 145, column: 28, scope: !637, inlinedAt: !764)
!767 = !DILocation(line: 146, column: 14, scope: !637, inlinedAt: !764)
!768 = !DILocation(line: 0, scope: !637, inlinedAt: !769)
!769 = distinct !DILocation(line: 154, column: 3, scope: !628, inlinedAt: !757)
!770 = !DILocation(line: 144, column: 21, scope: !637, inlinedAt: !769)
!771 = !DILocation(line: 145, column: 28, scope: !637, inlinedAt: !769)
!772 = !DILocation(line: 146, column: 14, scope: !637, inlinedAt: !769)
!773 = !DILocation(line: 0, scope: !637, inlinedAt: !774)
!774 = distinct !DILocation(line: 155, column: 3, scope: !628, inlinedAt: !757)
!775 = !DILocation(line: 144, column: 21, scope: !637, inlinedAt: !774)
!776 = !DILocation(line: 145, column: 28, scope: !637, inlinedAt: !774)
!777 = !DILocation(line: 146, column: 14, scope: !637, inlinedAt: !774)
!778 = !DILocation(line: 0, scope: !628, inlinedAt: !779)
!779 = distinct !DILocation(line: 166, column: 3, scope: !621, inlinedAt: !624)
!780 = !DILocation(line: 0, scope: !637, inlinedAt: !781)
!781 = distinct !DILocation(line: 152, column: 3, scope: !628, inlinedAt: !779)
!782 = !DILocation(line: 144, column: 21, scope: !637, inlinedAt: !781)
!783 = !DILocation(line: 145, column: 28, scope: !637, inlinedAt: !781)
!784 = !DILocation(line: 146, column: 14, scope: !637, inlinedAt: !781)
!785 = !DILocation(line: 0, scope: !637, inlinedAt: !786)
!786 = distinct !DILocation(line: 153, column: 3, scope: !628, inlinedAt: !779)
!787 = !DILocation(line: 144, column: 21, scope: !637, inlinedAt: !786)
!788 = !DILocation(line: 145, column: 28, scope: !637, inlinedAt: !786)
!789 = !DILocation(line: 146, column: 14, scope: !637, inlinedAt: !786)
!790 = !DILocation(line: 0, scope: !637, inlinedAt: !791)
!791 = distinct !DILocation(line: 154, column: 3, scope: !628, inlinedAt: !779)
!792 = !DILocation(line: 144, column: 21, scope: !637, inlinedAt: !791)
!793 = !DILocation(line: 145, column: 28, scope: !637, inlinedAt: !791)
!794 = !DILocation(line: 146, column: 14, scope: !637, inlinedAt: !791)
!795 = !DILocation(line: 0, scope: !637, inlinedAt: !796)
!796 = distinct !DILocation(line: 155, column: 3, scope: !628, inlinedAt: !779)
!797 = !DILocation(line: 144, column: 21, scope: !637, inlinedAt: !796)
!798 = !DILocation(line: 145, column: 28, scope: !637, inlinedAt: !796)
!799 = !DILocation(line: 146, column: 14, scope: !637, inlinedAt: !796)
!800 = !DILocation(line: 0, scope: !628, inlinedAt: !801)
!801 = distinct !DILocation(line: 167, column: 3, scope: !621, inlinedAt: !624)
!802 = !DILocation(line: 0, scope: !637, inlinedAt: !803)
!803 = distinct !DILocation(line: 152, column: 3, scope: !628, inlinedAt: !801)
!804 = !DILocation(line: 144, column: 21, scope: !637, inlinedAt: !803)
!805 = !DILocation(line: 145, column: 28, scope: !637, inlinedAt: !803)
!806 = !DILocation(line: 146, column: 14, scope: !637, inlinedAt: !803)
!807 = !DILocation(line: 0, scope: !637, inlinedAt: !808)
!808 = distinct !DILocation(line: 153, column: 3, scope: !628, inlinedAt: !801)
!809 = !DILocation(line: 144, column: 21, scope: !637, inlinedAt: !808)
!810 = !DILocation(line: 145, column: 28, scope: !637, inlinedAt: !808)
!811 = !DILocation(line: 146, column: 14, scope: !637, inlinedAt: !808)
!812 = !DILocation(line: 0, scope: !637, inlinedAt: !813)
!813 = distinct !DILocation(line: 154, column: 3, scope: !628, inlinedAt: !801)
!814 = !DILocation(line: 144, column: 21, scope: !637, inlinedAt: !813)
!815 = !DILocation(line: 145, column: 28, scope: !637, inlinedAt: !813)
!816 = !DILocation(line: 146, column: 14, scope: !637, inlinedAt: !813)
!817 = !DILocation(line: 0, scope: !637, inlinedAt: !818)
!818 = distinct !DILocation(line: 155, column: 3, scope: !628, inlinedAt: !801)
!819 = !DILocation(line: 144, column: 21, scope: !637, inlinedAt: !818)
!820 = !DILocation(line: 145, column: 28, scope: !637, inlinedAt: !818)
!821 = !DILocation(line: 146, column: 14, scope: !637, inlinedAt: !818)
!822 = !DILocation(line: 176, column: 60, scope: !625)
!823 = !DILocation(line: 176, column: 37, scope: !625)
!824 = distinct !{!824, !619, !825, !318, !319}
!825 = !DILocation(line: 177, column: 38, scope: !616)
