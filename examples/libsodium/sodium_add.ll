; ModuleID = 'sodium_add.ll'
source_filename = "sodium_add.c"
target datalayout = "e-m:e-p:32:32-p270:32:32-p271:32:32-p272:64:64-f64:32:64-f80:32-n8:16:32-S128"
target triple = "i386-pc-linux-gnu"

@__const.main.array1 = private unnamed_addr constant [4 x i8] c"\01\FF\03\04", align 1
@__const.main.array2 = private unnamed_addr constant [4 x i8] c"\02\01\01\02", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @sodium_add(i8* noundef %0, i8* noundef %1, i32 noundef %2) #0 {
  %4 = alloca i8*, align 4
  %5 = alloca i8*, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store i8* %0, i8** %4, align 4
  store i8* %1, i8** %5, align 4
  store i32 %2, i32* %6, align 4
  store i32 0, i32* %8, align 4
  store i32 0, i32* %7, align 4
  br label %9

9:                                                ; preds = %34, %3
  %10 = load i32, i32* %7, align 4
  %11 = load i32, i32* %6, align 4
  %12 = icmp ult i32 %10, %11
  br i1 %12, label %13, label %37

13:                                               ; preds = %9
  %14 = load i8*, i8** %4, align 4
  %15 = load i32, i32* %7, align 4
  %16 = getelementptr inbounds i8, i8* %14, i32 %15
  %17 = load i8, i8* %16, align 1
  %18 = zext i8 %17 to i32
  %19 = load i8*, i8** %5, align 4
  %20 = load i32, i32* %7, align 4
  %21 = getelementptr inbounds i8, i8* %19, i32 %20
  %22 = load i8, i8* %21, align 1
  %23 = zext i8 %22 to i32
  %24 = add i32 %18, %23
  %25 = load i32, i32* %8, align 4
  %26 = add i32 %25, %24
  store i32 %26, i32* %8, align 4
  %27 = load i32, i32* %8, align 4
  %28 = trunc i32 %27 to i8
  %29 = load i8*, i8** %4, align 4
  %30 = load i32, i32* %7, align 4
  %31 = getelementptr inbounds i8, i8* %29, i32 %30
  store i8 %28, i8* %31, align 1
  %32 = load i32, i32* %8, align 4
  %33 = lshr i32 %32, 8
  store i32 %33, i32* %8, align 4
  br label %34

34:                                               ; preds = %13
  %35 = load i32, i32* %7, align 4
  %36 = add i32 %35, 1
  store i32 %36, i32* %7, align 4
  br label %9, !llvm.loop !7

37:                                               ; preds = %9
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main() #0 {
  %1 = alloca i32, align 4
  %2 = alloca [4 x i8], align 1
  %3 = alloca [4 x i8], align 1
  %4 = alloca i32, align 4
  store i32 0, i32* %1, align 4
  %5 = bitcast [4 x i8]* %2 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* align 1 %5, i8* align 1 getelementptr inbounds ([4 x i8], [4 x i8]* @__const.main.array1, i32 0, i32 0), i32 4, i1 false)
  %6 = bitcast [4 x i8]* %3 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* align 1 %6, i8* align 1 getelementptr inbounds ([4 x i8], [4 x i8]* @__const.main.array2, i32 0, i32 0), i32 4, i1 false)
  store i32 4, i32* %4, align 4
  %7 = getelementptr inbounds [4 x i8], [4 x i8]* %2, i32 0, i32 0
  call void @high_input_4(i8* noundef %7)
  %8 = getelementptr inbounds [4 x i8], [4 x i8]* %3, i32 0, i32 0
  call void @high_input_4(i8* noundef %8)
  %9 = getelementptr inbounds [4 x i8], [4 x i8]* %2, i32 0, i32 0
  %10 = getelementptr inbounds [4 x i8], [4 x i8]* %3, i32 0, i32 0
  %11 = load i32, i32* %4, align 4
  call void @sodium_add(i8* noundef %9, i8* noundef %10, i32 noundef %11)
  %12 = getelementptr inbounds [4 x i8], [4 x i8]* %2, i32 0, i32 0
  %13 = load i8, i8* %12, align 1
  %14 = zext i8 %13 to i32
  ret i32 %14
}

; Function Attrs: argmemonly nofree nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i32(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i32, i1 immarg) #1

declare void @high_input_4(i8* noundef) #2

attributes #0 = { noinline nounwind optnone uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="i386" "target-features"="+x87" }
attributes #1 = { argmemonly nofree nounwind willreturn }
attributes #2 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="i386" "target-features"="+x87" }

!llvm.module.flags = !{!0, !1, !2, !3, !4, !5}
!llvm.ident = !{!6}

!0 = !{i32 1, !"NumRegisterParameters", i32 0}
!1 = !{i32 1, !"wchar_size", i32 4}
!2 = !{i32 7, !"PIC Level", i32 2}
!3 = !{i32 7, !"PIE Level", i32 2}
!4 = !{i32 7, !"uwtable", i32 1}
!5 = !{i32 7, !"frame-pointer", i32 2}
!6 = !{!"Ubuntu clang version 14.0.0-1ubuntu1.1"}
!7 = distinct !{!7, !8}
!8 = !{!"llvm.loop.mustprogress"}
