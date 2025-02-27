; ModuleID = '04.c'
source_filename = "04.c"
target datalayout = "e-m:e-p:32:32-p270:32:32-p271:32:32-p272:64:64-i128:128-f64:32:64-f80:32-n8:16:32-S128"
target triple = "i386-pc-linux-gnu"

@__const.main.a = private unnamed_addr constant [2 x i8] c"\02\05", align 1

; Function Attrs: noinline nounwind uwtable
define dso_local zeroext i8 @issue(ptr noundef %0, ptr noundef %1) #0 {
  %3 = alloca ptr, align 4
  %4 = alloca ptr, align 4
  store ptr %0, ptr %3, align 4
  store ptr %1, ptr %4, align 4
  %5 = load ptr, ptr %4, align 4
  %6 = getelementptr inbounds i8, ptr %5, i32 0
  %7 = load i8, ptr %6, align 1
  %8 = icmp ne i8 %7, 0
  %9 = xor i1 %8, true
  %10 = zext i1 %9 to i32
  %11 = load ptr, ptr %3, align 4
  %12 = getelementptr inbounds i8, ptr %11, i32 0
  %13 = load i8, ptr %12, align 1
  %14 = zext i8 %13 to i32
  %15 = mul nsw i32 %10, %14
  %16 = load ptr, ptr %4, align 4
  %17 = getelementptr inbounds i8, ptr %16, i32 0
  %18 = load i8, ptr %17, align 1
  %19 = zext i8 %18 to i32
  %20 = load ptr, ptr %3, align 4
  %21 = getelementptr inbounds i8, ptr %20, i32 1
  %22 = load i8, ptr %21, align 1
  %23 = zext i8 %22 to i32
  %24 = mul nsw i32 %19, %23
  %25 = add nsw i32 %15, %24
  %26 = trunc i32 %25 to i8
  ret i8 %26
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @main(i32 noundef %0, ptr noundef %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca ptr, align 4
  %6 = alloca [2 x i8], align 1
  %7 = alloca [2 x i8], align 1
  %8 = alloca ptr, align 4
  store i32 0, ptr %3, align 4
  store i32 %0, ptr %4, align 4
  store ptr %1, ptr %5, align 4
  call void @llvm.memcpy.p0.p0.i32(ptr align 1 %6, ptr align 1 @__const.main.a, i32 2, i1 false)
  call void @llvm.memset.p0.i32(ptr align 1 %7, i8 0, i32 2, i1 false)
  %9 = getelementptr inbounds [2 x i8], ptr %6, i32 0, i32 0
  call void @high_input_4(ptr noundef %9)
  %10 = getelementptr inbounds [2 x i8], ptr %7, i32 0, i32 0
  call void @low_input_4(ptr noundef %10)
  store volatile ptr @issue, ptr %8, align 4
  %11 = load volatile ptr, ptr %8, align 4
  %12 = getelementptr inbounds [2 x i8], ptr %6, i32 0, i32 0
  %13 = getelementptr inbounds [2 x i8], ptr %7, i32 0, i32 0
  %14 = call zeroext i8 %11(ptr noundef %12, ptr noundef %13)
  %15 = zext i8 %14 to i32
  ret i32 %15
}

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i32(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i32, i1 immarg) #1

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i32(ptr nocapture writeonly, i8, i32, i1 immarg) #2

declare void @high_input_4(ptr noundef) #3

declare void @low_input_4(ptr noundef) #3

attributes #0 = { noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="i386" "target-features"="+x87" }
attributes #1 = { nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #3 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="i386" "target-features"="+x87" }

!llvm.module.flags = !{!0, !1, !2, !3, !4, !5}
!llvm.ident = !{!6}

!0 = !{i32 1, !"NumRegisterParameters", i32 0}
!1 = !{i32 1, !"wchar_size", i32 4}
!2 = !{i32 8, !"PIC Level", i32 2}
!3 = !{i32 7, !"PIE Level", i32 2}
!4 = !{i32 7, !"uwtable", i32 2}
!5 = !{i32 7, !"frame-pointer", i32 2}
!6 = !{!"Ubuntu clang version 19.1.7 (++20250114103320+cd708029e0b2-1~exp1~20250114103432.75)"}
