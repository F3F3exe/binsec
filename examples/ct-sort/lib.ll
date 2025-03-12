; ModuleID = 'lib.ll'
source_filename = "lib.c"
target datalayout = "e-m:e-p:32:32-p270:32:32-p271:32:32-p272:64:64-i128:128-f64:32:64-f80:32-n8:16:32-S128"
target triple = "i386-pc-linux-gnu"

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define dso_local range(i32 0, 2) i32 @sort2(ptr nocapture noundef writeonly %0, ptr nocapture noundef readonly %1) local_unnamed_addr #0 {
  %3 = load i32, ptr %1, align 4, !tbaa !6
  %4 = getelementptr inbounds i8, ptr %1, i32 4
  %5 = load i32, ptr %4, align 4, !tbaa !6
  %6 = icmp slt i32 %3, %5
  %7 = tail call i32 @llvm.smin.i32(i32 %3, i32 %5)
  store i32 %7, ptr %0, align 4, !tbaa !6
  %8 = load i32, ptr %4, align 4
  %9 = load i32, ptr %1, align 4
  %10 = select i1 %6, i32 %8, i32 %9
  %11 = getelementptr inbounds i8, ptr %0, i32 4
  store i32 %10, ptr %11, align 4
  %12 = zext i1 %6 to i32
  ret i32 %12
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define dso_local void @sort3(ptr nocapture noundef writeonly %0, ptr nocapture noundef %1, ptr nocapture noundef %2) local_unnamed_addr #0 {
  %4 = load i32, ptr %2, align 4, !tbaa !6
  %5 = getelementptr inbounds i8, ptr %2, i32 4
  %6 = load i32, ptr %5, align 4, !tbaa !6
  %7 = icmp slt i32 %4, %6
  %8 = tail call i32 @llvm.smin.i32(i32 %4, i32 %6)
  store i32 %8, ptr %1, align 4, !tbaa !6
  %9 = load i32, ptr %5, align 4
  %10 = load i32, ptr %2, align 4
  %11 = select i1 %7, i32 %9, i32 %10
  %12 = getelementptr inbounds i8, ptr %1, i32 4
  store i32 %11, ptr %12, align 4
  %13 = zext i1 %7 to i32
  store i32 %13, ptr %0, align 4, !tbaa !6
  %14 = load i32, ptr %12, align 4, !tbaa !6
  store i32 %14, ptr %5, align 4, !tbaa !6
  %15 = getelementptr inbounds i8, ptr %2, i32 8
  %16 = load i32, ptr %15, align 4, !tbaa !6
  %17 = icmp slt i32 %14, %16
  %18 = tail call i32 @llvm.smin.i32(i32 %14, i32 %16)
  store i32 %18, ptr %12, align 4, !tbaa !6
  %19 = load i32, ptr %15, align 4
  %20 = load i32, ptr %5, align 4
  %21 = select i1 %17, i32 %19, i32 %20
  %22 = getelementptr inbounds i8, ptr %1, i32 8
  store i32 %21, ptr %22, align 4
  %23 = zext i1 %17 to i32
  %24 = getelementptr inbounds i8, ptr %0, i32 4
  store i32 %23, ptr %24, align 4, !tbaa !6
  %25 = load i32, ptr %1, align 4, !tbaa !6
  store i32 %25, ptr %2, align 4, !tbaa !6
  %26 = load i32, ptr %12, align 4, !tbaa !6
  store i32 %26, ptr %5, align 4, !tbaa !6
  %27 = icmp slt i32 %25, %26
  %28 = tail call i32 @llvm.smin.i32(i32 %25, i32 %26)
  store i32 %28, ptr %1, align 4, !tbaa !6
  %29 = load i32, ptr %5, align 4
  %30 = load i32, ptr %2, align 4
  %31 = select i1 %27, i32 %29, i32 %30
  store i32 %31, ptr %12, align 4
  %32 = zext i1 %27 to i32
  %33 = getelementptr inbounds i8, ptr %0, i32 8
  store i32 %32, ptr %33, align 4, !tbaa !6
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define dso_local void @sort2_multiplex(ptr nocapture noundef writeonly %0, ptr nocapture noundef readonly %1) local_unnamed_addr #0 {
  %3 = load i32, ptr %1, align 4, !tbaa !6
  %4 = getelementptr inbounds i8, ptr %1, i32 4
  %5 = load i32, ptr %4, align 4, !tbaa !6
  %6 = icmp slt i32 %3, %5
  %7 = tail call i32 @llvm.smin.i32(i32 %3, i32 %5)
  store i32 %7, ptr %0, align 4, !tbaa !6
  %8 = load i32, ptr %4, align 4, !tbaa !6
  %9 = load i32, ptr %1, align 4, !tbaa !6
  %10 = select i1 %6, i32 %8, i32 %9
  %11 = getelementptr inbounds i8, ptr %0, i32 4
  store i32 %10, ptr %11, align 4, !tbaa !6
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define dso_local void @sort3_multiplex(ptr nocapture noundef %0, ptr nocapture noundef %1) local_unnamed_addr #0 {
  %3 = load i32, ptr %1, align 4, !tbaa !6
  %4 = getelementptr inbounds i8, ptr %1, i32 4
  %5 = load i32, ptr %4, align 4, !tbaa !6
  %6 = icmp slt i32 %3, %5
  %7 = tail call i32 @llvm.smin.i32(i32 %3, i32 %5)
  store i32 %7, ptr %0, align 4, !tbaa !6
  %8 = load i32, ptr %4, align 4, !tbaa !6
  %9 = load i32, ptr %1, align 4, !tbaa !6
  %10 = select i1 %6, i32 %8, i32 %9
  %11 = getelementptr inbounds i8, ptr %0, i32 4
  store i32 %10, ptr %11, align 4, !tbaa !6
  store i32 %10, ptr %4, align 4, !tbaa !6
  %12 = getelementptr inbounds i8, ptr %1, i32 8
  %13 = load i32, ptr %12, align 4, !tbaa !6
  %14 = icmp slt i32 %10, %13
  %15 = tail call i32 @llvm.smin.i32(i32 %10, i32 %13)
  store i32 %15, ptr %11, align 4, !tbaa !6
  %16 = load i32, ptr %12, align 4, !tbaa !6
  %17 = load i32, ptr %4, align 4, !tbaa !6
  %18 = select i1 %14, i32 %16, i32 %17
  %19 = getelementptr inbounds i8, ptr %0, i32 8
  store i32 %18, ptr %19, align 4, !tbaa !6
  %20 = load i32, ptr %0, align 4, !tbaa !6
  store i32 %20, ptr %1, align 4, !tbaa !6
  %21 = load i32, ptr %11, align 4, !tbaa !6
  store i32 %21, ptr %4, align 4, !tbaa !6
  %22 = icmp slt i32 %20, %21
  %23 = tail call i32 @llvm.smin.i32(i32 %20, i32 %21)
  store i32 %23, ptr %0, align 4, !tbaa !6
  %24 = load i32, ptr %4, align 4, !tbaa !6
  %25 = load i32, ptr %1, align 4, !tbaa !6
  %26 = select i1 %22, i32 %24, i32 %25
  store i32 %26, ptr %11, align 4, !tbaa !6
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define dso_local void @sort2_negative(ptr nocapture noundef writeonly %0, ptr nocapture noundef readonly %1) local_unnamed_addr #0 {
  %3 = load i32, ptr %1, align 4, !tbaa !6
  %4 = getelementptr inbounds i8, ptr %1, i32 4
  %5 = load i32, ptr %4, align 4, !tbaa !6
  %6 = icmp slt i32 %3, %5
  %7 = tail call i32 @llvm.smin.i32(i32 %3, i32 %5)
  store i32 %7, ptr %0, align 4, !tbaa !6
  %8 = load i32, ptr %4, align 4
  %9 = load i32, ptr %1, align 4
  %10 = select i1 %6, i32 %8, i32 %9
  %11 = getelementptr inbounds i8, ptr %0, i32 4
  store i32 %10, ptr %11, align 4
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define dso_local void @sort3_negative(ptr nocapture noundef %0, ptr nocapture noundef %1) local_unnamed_addr #0 {
  %3 = load i32, ptr %1, align 4, !tbaa !6
  %4 = getelementptr inbounds i8, ptr %1, i32 4
  %5 = load i32, ptr %4, align 4, !tbaa !6
  %6 = icmp slt i32 %3, %5
  %7 = tail call i32 @llvm.smin.i32(i32 %3, i32 %5)
  store i32 %7, ptr %0, align 4, !tbaa !6
  %8 = load i32, ptr %4, align 4
  %9 = load i32, ptr %1, align 4
  %10 = select i1 %6, i32 %8, i32 %9
  %11 = getelementptr inbounds i8, ptr %0, i32 4
  store i32 %10, ptr %11, align 4
  store i32 %10, ptr %4, align 4, !tbaa !6
  %12 = getelementptr inbounds i8, ptr %1, i32 8
  %13 = load i32, ptr %12, align 4, !tbaa !6
  %14 = icmp slt i32 %10, %13
  %15 = tail call i32 @llvm.smin.i32(i32 %10, i32 %13)
  store i32 %15, ptr %11, align 4, !tbaa !6
  %16 = load i32, ptr %12, align 4
  %17 = load i32, ptr %4, align 4
  %18 = select i1 %14, i32 %16, i32 %17
  %19 = getelementptr inbounds i8, ptr %0, i32 8
  store i32 %18, ptr %19, align 4
  %20 = load i32, ptr %0, align 4, !tbaa !6
  store i32 %20, ptr %1, align 4, !tbaa !6
  %21 = load i32, ptr %11, align 4, !tbaa !6
  store i32 %21, ptr %4, align 4, !tbaa !6
  %22 = icmp slt i32 %20, %21
  %23 = tail call i32 @llvm.smin.i32(i32 %20, i32 %21)
  store i32 %23, ptr %0, align 4, !tbaa !6
  %24 = load i32, ptr %4, align 4
  %25 = load i32, ptr %1, align 4
  %26 = select i1 %22, i32 %24, i32 %25
  store i32 %26, ptr %11, align 4
  ret void
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smin.i32(i32, i32) #1

attributes #0 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="i386" "target-features"="+x87" }
attributes #1 = { mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none) }

!llvm.module.flags = !{!0, !1, !2, !3, !4}
!llvm.ident = !{!5}

!0 = !{i32 1, !"NumRegisterParameters", i32 0}
!1 = !{i32 1, !"wchar_size", i32 4}
!2 = !{i32 8, !"PIC Level", i32 2}
!3 = !{i32 7, !"PIE Level", i32 2}
!4 = !{i32 7, !"uwtable", i32 2}
!5 = !{!"Ubuntu clang version 19.1.7 (++20250114103238+cd708029e0b2-1~exp1~20250114103342.77)"}
!6 = !{!7, !7, i64 0}
!7 = !{!"int", !8, i64 0}
!8 = !{!"omnipotent char", !9, i64 0}
!9 = !{!"Simple C/C++ TBAA"}
