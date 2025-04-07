; ModuleID = 'tls1_cbc_remove_padding_patch.ll'
source_filename = "tls1_cbc_remove_padding_patch_wrapper.c"
target datalayout = "e-m:e-p:32:32-p270:32:32-p271:32:32-p272:64:64-i128:128-f64:32:64-f80:32-n8:16:32-S128"
target triple = "i386-pc-linux-gnu"

%struct.ssl3_state_st = type { i32, [8 x i8] }
%struct.evp_cipher_st = type { i32 }
%struct.evp_cipher_ctx_st = type { ptr }
%struct.ssl_st = type { ptr, i32, ptr, ptr, i32 }
%struct.ssl3_record_st = type { i32, ptr, i32, ptr }

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: read) uwtable
define dso_local range(i32 0, 256) i32 @CRYPTO_memcmp(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1, i32 noundef %2) local_unnamed_addr #0 {
  %4 = icmp eq i32 %2, 0
  br i1 %4, label %18, label %5

5:                                                ; preds = %5, %3
  %6 = phi i8 [ %13, %5 ], [ 0, %3 ]
  %7 = phi i32 [ %14, %5 ], [ 0, %3 ]
  %8 = getelementptr inbounds i8, ptr %0, i32 %7
  %9 = load i8, ptr %8, align 1, !tbaa !6
  %10 = getelementptr inbounds i8, ptr %1, i32 %7
  %11 = load i8, ptr %10, align 1, !tbaa !6
  %12 = xor i8 %11, %9
  %13 = or i8 %12, %6
  %14 = add nuw i32 %7, 1
  %15 = icmp eq i32 %14, %2
  br i1 %15, label %16, label %5, !llvm.loop !9

16:                                               ; preds = %5
  %17 = zext i8 %13 to i32
  br label %18

18:                                               ; preds = %16, %3
  %19 = phi i32 [ 0, %3 ], [ %17, %16 ]
  ret i32 %19
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none) uwtable
define dso_local i32 @tls1_cbc_remove_padding(ptr nocapture noundef readonly %0, ptr nocapture noundef %1, i32 noundef %2, i32 noundef %3) local_unnamed_addr #2 {
  %5 = add i32 %3, 1
  %6 = getelementptr inbounds i8, ptr %0, i32 16
  %7 = load i32, ptr %6, align 4, !tbaa !12
  %8 = and i32 %7, 1
  %9 = icmp eq i32 %8, 0
  br i1 %9, label %22, label %10

10:                                               ; preds = %4
  %11 = add i32 %5, %2
  %12 = load i32, ptr %1, align 4, !tbaa !17
  %13 = icmp ugt i32 %11, %12
  br i1 %13, label %123, label %14

14:                                               ; preds = %10
  %15 = getelementptr inbounds i8, ptr %1, i32 4
  %16 = load ptr, ptr %15, align 4, !tbaa !19
  %17 = getelementptr inbounds i8, ptr %16, i32 %2
  store ptr %17, ptr %15, align 4, !tbaa !19
  %18 = getelementptr inbounds i8, ptr %1, i32 12
  %19 = load ptr, ptr %18, align 4, !tbaa !20
  %20 = getelementptr inbounds i8, ptr %19, i32 %2
  store ptr %20, ptr %18, align 4, !tbaa !20
  %21 = sub i32 %12, %2
  store i32 %21, ptr %1, align 4, !tbaa !17
  br label %25

22:                                               ; preds = %4
  %23 = load i32, ptr %1, align 4, !tbaa !17
  %24 = icmp ugt i32 %5, %23
  br i1 %24, label %123, label %25

25:                                               ; preds = %22, %14
  %26 = getelementptr inbounds i8, ptr %1, i32 4
  %27 = load ptr, ptr %26, align 4, !tbaa !19
  %28 = load i32, ptr %1, align 4, !tbaa !17
  %29 = getelementptr i8, ptr %27, i32 %28
  %30 = getelementptr i8, ptr %29, i32 -1
  %31 = load i8, ptr %30, align 1, !tbaa !6
  %32 = zext i8 %31 to i32
  %33 = getelementptr inbounds i8, ptr %0, i32 4
  %34 = load i32, ptr %33, align 4, !tbaa !21
  %35 = and i32 %34, 512
  %36 = icmp eq i32 %35, 0
  br i1 %36, label %68, label %37

37:                                               ; preds = %25
  %38 = load ptr, ptr %0, align 4, !tbaa !22
  %39 = icmp eq ptr %38, null
  br i1 %39, label %40, label %68

40:                                               ; preds = %37
  %41 = getelementptr inbounds i8, ptr %0, i32 8
  %42 = load ptr, ptr %41, align 4, !tbaa !23
  %43 = getelementptr inbounds i8, ptr %42, i32 4
  br label %44

44:                                               ; preds = %44, %40
  %45 = phi i8 [ %49, %44 ], [ 0, %40 ]
  %46 = phi i32 [ %50, %44 ], [ 0, %40 ]
  %47 = getelementptr inbounds i8, ptr %43, i32 %46
  %48 = load i8, ptr %47, align 1, !tbaa !6
  %49 = or i8 %48, %45
  %50 = add nuw nsw i32 %46, 1
  %51 = icmp eq i32 %50, 8
  br i1 %51, label %52, label %44, !llvm.loop !9

52:                                               ; preds = %44
  %53 = icmp eq i8 %49, 0
  %54 = and i32 %32, 1
  %55 = icmp eq i32 %54, 0
  %56 = select i1 %53, i1 %55, i1 false
  br i1 %56, label %57, label %60

57:                                               ; preds = %52
  %58 = load i32, ptr %42, align 4, !tbaa !24
  %59 = or i32 %58, 8
  store i32 %59, ptr %42, align 4, !tbaa !24
  br label %60

60:                                               ; preds = %57, %52
  %61 = load i32, ptr %42, align 4, !tbaa !24
  %62 = and i32 %61, 8
  %63 = icmp ne i32 %62, 0
  %64 = icmp ne i8 %31, 0
  %65 = select i1 %63, i1 %64, i1 false
  %66 = sext i1 %65 to i32
  %67 = add nsw i32 %66, %32
  br label %68

68:                                               ; preds = %60, %37, %25
  %69 = phi i32 [ %32, %37 ], [ %32, %25 ], [ %67, %60 ]
  %70 = getelementptr inbounds i8, ptr %0, i32 12
  %71 = load ptr, ptr %70, align 4, !tbaa !26
  %72 = load ptr, ptr %71, align 4, !tbaa !27
  %73 = load i32, ptr %72, align 4, !tbaa !29
  %74 = and i32 %73, 2097152
  %75 = icmp eq i32 %74, 0
  br i1 %75, label %79, label %76

76:                                               ; preds = %68
  %77 = xor i32 %69, -1
  %78 = add i32 %28, %77
  store i32 %78, ptr %1, align 4, !tbaa !17
  br label %123

79:                                               ; preds = %68
  %80 = add i32 %69, %5
  %81 = xor i32 %80, %28
  %82 = sub i32 %28, %80
  %83 = xor i32 %82, %80
  %84 = or i32 %83, %81
  %85 = xor i32 %84, %28
  %86 = icmp sgt i32 %85, -1
  %87 = sext i1 %86 to i32
  %88 = add i32 %28, -1
  %89 = icmp eq i32 %88, 0
  br i1 %89, label %111, label %90

90:                                               ; preds = %79
  %91 = tail call i32 @llvm.umin.i32(i32 %88, i32 255)
  %92 = xor i32 %69, -1
  %93 = tail call i32 @llvm.umax.i32(i32 %91, i32 1)
  br label %94

94:                                               ; preds = %94, %90
  %95 = phi i32 [ %87, %90 ], [ %108, %94 ]
  %96 = phi i32 [ 0, %90 ], [ %109, %94 ]
  %97 = sub nsw i32 %69, %96
  %98 = and i32 %97, %92
  %99 = xor i32 %96, -1
  %100 = getelementptr i8, ptr %29, i32 %99
  %101 = load i8, ptr %100, align 1, !tbaa !6
  %102 = icmp slt i32 %98, 0
  %103 = select i1 %102, i32 0, i32 255
  %104 = zext i8 %101 to i32
  %105 = xor i32 %69, %104
  %106 = and i32 %105, %103
  %107 = xor i32 %106, -1
  %108 = and i32 %95, %107
  %109 = add nuw nsw i32 %96, 1
  %110 = icmp eq i32 %109, %93
  br i1 %110, label %111, label %94, !llvm.loop !31

111:                                              ; preds = %94, %79
  %112 = phi i32 [ %87, %79 ], [ %108, %94 ]
  %113 = and i32 %112, 255
  %114 = icmp eq i32 %113, 255
  %115 = add nuw nsw i32 %69, 1
  %116 = select i1 %114, i32 %115, i32 0
  %117 = sub i32 %28, %116
  store i32 %117, ptr %1, align 4, !tbaa !17
  %118 = shl nuw nsw i32 %116, 8
  %119 = getelementptr inbounds i8, ptr %1, i32 8
  %120 = load i32, ptr %119, align 4, !tbaa !32
  %121 = or i32 %120, %118
  store i32 %121, ptr %119, align 4, !tbaa !32
  %122 = select i1 %114, i32 1, i32 -1
  br label %123

123:                                              ; preds = %111, %76, %22, %10
  %124 = phi i32 [ 1, %76 ], [ %122, %111 ], [ 0, %10 ], [ 0, %22 ]
  ret i32 %124
}

; Function Attrs: nounwind uwtable
define dso_local i32 @main() local_unnamed_addr #3 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca [63 x i8], align 1
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.ssl3_state_st, align 4
  %9 = alloca %struct.evp_cipher_st, align 4
  %10 = alloca %struct.evp_cipher_ctx_st, align 4
  %11 = alloca i8, align 1
  %12 = alloca %struct.ssl_st, align 4
  %13 = alloca %struct.ssl3_record_st, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %1) #6
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %2) #6
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %3) #6
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %4) #6
  call void @llvm.lifetime.start.p0(i64 63, ptr nonnull %5) #6
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %6) #6
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %7) #6
  call void @high_input_63(ptr noundef nonnull %5) #6
  call void @low_input_4(ptr noundef nonnull %1) #6
  call void @low_input_4(ptr noundef nonnull %2) #6
  call void @low_input_4(ptr noundef nonnull %3) #6
  call void @low_input_4(ptr noundef nonnull %4) #6
  call void @low_input_4(ptr noundef nonnull %6) #6
  call void @low_input_4(ptr noundef nonnull %7) #6
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %8) #6
  %14 = load i32, ptr %2, align 4, !tbaa !33
  store i32 %14, ptr %8, align 4, !tbaa !24
  %15 = getelementptr inbounds i8, ptr %8, i32 4
  store i64 0, ptr %15, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %9) #6
  %16 = load i32, ptr %3, align 4, !tbaa !33
  store i32 %16, ptr %9, align 4, !tbaa !29
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %10) #6
  store ptr %9, ptr %10, align 4, !tbaa !27
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %11) #6
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %12) #6
  store ptr %11, ptr %12, align 4, !tbaa !22
  %17 = getelementptr inbounds i8, ptr %12, i32 4
  %18 = load i32, ptr %1, align 4, !tbaa !33
  store i32 %18, ptr %17, align 4, !tbaa !21
  %19 = getelementptr inbounds i8, ptr %12, i32 8
  store ptr %8, ptr %19, align 4, !tbaa !23
  %20 = getelementptr inbounds i8, ptr %12, i32 12
  store ptr %10, ptr %20, align 4, !tbaa !26
  %21 = getelementptr inbounds i8, ptr %12, i32 16
  %22 = load i32, ptr %4, align 4, !tbaa !34
  store i32 %22, ptr %21, align 4, !tbaa !12
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %13) #6
  store i32 63, ptr %13, align 4, !tbaa !17
  %23 = getelementptr inbounds i8, ptr %13, i32 4
  store ptr %5, ptr %23, align 4, !tbaa !19
  %24 = getelementptr inbounds i8, ptr %13, i32 8
  store i32 0, ptr %24, align 4, !tbaa !32
  %25 = getelementptr inbounds i8, ptr %13, i32 12
  store ptr null, ptr %25, align 4, !tbaa !20
  %26 = load i32, ptr %6, align 4, !tbaa !34
  %27 = load i32, ptr %7, align 4, !tbaa !34
  %28 = call i32 @tls1_cbc_remove_padding(ptr noundef nonnull %12, ptr noundef nonnull %13, i32 noundef %26, i32 noundef %27)
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %13) #6
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %12) #6
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %11) #6
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %10) #6
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %9) #6
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %8) #6
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %7) #6
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %6) #6
  call void @llvm.lifetime.end.p0(i64 63, ptr nonnull %5) #6
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4) #6
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #6
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %2) #6
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %1) #6
  ret i32 %28
}

declare void @high_input_63(ptr noundef) local_unnamed_addr #4

declare void @low_input_4(ptr noundef) local_unnamed_addr #4

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umin.i32(i32, i32) #5

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umax.i32(i32, i32) #5

attributes #0 = { nofree norecurse nosync nounwind memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="i386" "target-features"="+x87" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="i386" "target-features"="+x87" }
attributes #3 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="i386" "target-features"="+x87" }
attributes #4 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="i386" "target-features"="+x87" }
attributes #5 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #6 = { nounwind }

!llvm.module.flags = !{!0, !1, !2, !3, !4}
!llvm.ident = !{!5}

!0 = !{i32 1, !"NumRegisterParameters", i32 0}
!1 = !{i32 1, !"wchar_size", i32 4}
!2 = !{i32 8, !"PIC Level", i32 2}
!3 = !{i32 7, !"PIE Level", i32 2}
!4 = !{i32 7, !"uwtable", i32 2}
!5 = !{!"Ubuntu clang version 19.1.7 (++20250114103320+cd708029e0b2-1~exp1~20250114103432.75)"}
!6 = !{!7, !7, i64 0}
!7 = !{!"omnipotent char", !8, i64 0}
!8 = !{!"Simple C/C++ TBAA"}
!9 = distinct !{!9, !10, !11}
!10 = !{!"llvm.loop.mustprogress"}
!11 = !{!"llvm.loop.unroll.disable"}
!12 = !{!13, !16, i64 16}
!13 = !{!"ssl_st", !14, i64 0, !15, i64 4, !14, i64 8, !14, i64 12, !16, i64 16}
!14 = !{!"any pointer", !7, i64 0}
!15 = !{!"long", !7, i64 0}
!16 = !{!"int", !7, i64 0}
!17 = !{!18, !16, i64 0}
!18 = !{!"ssl3_record_st", !16, i64 0, !14, i64 4, !16, i64 8, !14, i64 12}
!19 = !{!18, !14, i64 4}
!20 = !{!18, !14, i64 12}
!21 = !{!13, !15, i64 4}
!22 = !{!13, !14, i64 0}
!23 = !{!13, !14, i64 8}
!24 = !{!25, !15, i64 0}
!25 = !{!"ssl3_state_st", !15, i64 0, !7, i64 4}
!26 = !{!13, !14, i64 12}
!27 = !{!28, !14, i64 0}
!28 = !{!"evp_cipher_ctx_st", !14, i64 0}
!29 = !{!30, !15, i64 0}
!30 = !{!"evp_cipher_st", !15, i64 0}
!31 = distinct !{!31, !10, !11}
!32 = !{!18, !16, i64 8}
!33 = !{!15, !15, i64 0}
!34 = !{!16, !16, i64 0}
