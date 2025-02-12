; ModuleID = '02.c'
source_filename = "02.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

@a = dso_local global i32 0, align 4
@b = dso_local global i32 0, align 4
@c = dso_local global i32 0, align 4

; Function Attrs: nounwind uwtable
define dso_local zeroext i8 @issue(i32 noundef %0, i8 noundef zeroext %1, i8 noundef zeroext %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i8, align 1
  %6 = alloca i8, align 1
  %7 = alloca i32, align 4
  store i32 %0, i32* %4, align 4, !tbaa !5
  store i8 %1, i8* %5, align 1, !tbaa !9
  store i8 %2, i8* %6, align 1, !tbaa !9
  %8 = bitcast i32* %7 to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %8) #3
  %9 = load i32, i32* %4, align 4, !tbaa !5
  %10 = icmp ne i32 %9, 0
  %11 = xor i1 %10, true
  %12 = xor i1 %11, true
  %13 = zext i1 %12 to i32
  store i32 %13, i32* %7, align 4, !tbaa !5
  %14 = load i32, i32* %7, align 4, !tbaa !5
  %15 = load i8, i8* %5, align 1, !tbaa !9
  %16 = zext i8 %15 to i32
  %17 = mul nsw i32 %14, %16
  %18 = load i32, i32* %7, align 4, !tbaa !5
  %19 = sub nsw i32 1, %18
  %20 = load i8, i8* %6, align 1, !tbaa !9
  %21 = zext i8 %20 to i32
  %22 = mul nsw i32 %19, %21
  %23 = add nsw i32 %17, %22
  %24 = trunc i32 %23 to i8
  %25 = bitcast i32* %7 to i8*
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %25) #3
  ret i8 %24
}

; Function Attrs: argmemonly nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0i8(i64 immarg, i8* nocapture) #1

; Function Attrs: argmemonly nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0i8(i64 immarg, i8* nocapture) #1

; Function Attrs: nounwind uwtable
define dso_local i32 @main(i32 noundef %0, i8** noundef %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8**, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i8 (i32, i8, i8)*, align 8
  store i32 0, i32* %3, align 4
  store i32 %0, i32* %4, align 4, !tbaa !5
  store i8** %1, i8*** %5, align 8, !tbaa !10
  %10 = bitcast i32* %6 to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %10) #3
  store i32 2, i32* %6, align 4, !tbaa !5
  %11 = bitcast i32* %7 to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %11) #3
  store i32 5, i32* %7, align 4, !tbaa !5
  %12 = bitcast i32* %8 to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %12) #3
  store i32 0, i32* %8, align 4, !tbaa !5
  %13 = bitcast i32* %8 to i8*
  call void @high_input_4(i8* noundef %13)
  %14 = bitcast i32* %6 to i8*
  call void @low_input_4(i8* noundef %14)
  %15 = bitcast i32* %7 to i8*
  call void @low_input_4(i8* noundef %15)
  %16 = bitcast i8 (i32, i8, i8)** %9 to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* %16) #3
  store volatile i8 (i32, i8, i8)* @issue, i8 (i32, i8, i8)** %9, align 8, !tbaa !10
  %17 = load volatile i8 (i32, i8, i8)*, i8 (i32, i8, i8)** %9, align 8, !tbaa !10
  %18 = load i32, i32* %8, align 4, !tbaa !5
  %19 = load i32, i32* %6, align 4, !tbaa !5
  %20 = trunc i32 %19 to i8
  %21 = load i32, i32* %7, align 4, !tbaa !5
  %22 = trunc i32 %21 to i8
  %23 = call zeroext i8 %17(i32 noundef %18, i8 noundef zeroext %20, i8 noundef zeroext %22)
  %24 = zext i8 %23 to i32
  %25 = bitcast i8 (i32, i8, i8)** %9 to i8*
  call void @llvm.lifetime.end.p0i8(i64 8, i8* %25) #3
  %26 = bitcast i32* %8 to i8*
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %26) #3
  %27 = bitcast i32* %7 to i8*
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %27) #3
  %28 = bitcast i32* %6 to i8*
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %28) #3
  ret i32 %24
}

declare void @high_input_4(i8* noundef) #2

declare void @low_input_4(i8* noundef) #2

attributes #0 = { nounwind uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { argmemonly nofree nosync nounwind willreturn }
attributes #2 = { "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nounwind }

!llvm.module.flags = !{!0, !1, !2, !3}
!llvm.ident = !{!4}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 1}
!4 = !{!"Ubuntu clang version 14.0.0-1ubuntu1.1"}
!5 = !{!6, !6, i64 0}
!6 = !{!"int", !7, i64 0}
!7 = !{!"omnipotent char", !8, i64 0}
!8 = !{!"Simple C/C++ TBAA"}
!9 = !{!7, !7, i64 0}
!10 = !{!11, !11, i64 0}
!11 = !{!"any pointer", !7, i64 0}
