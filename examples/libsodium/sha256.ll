; ModuleID = 'sha256.ll'
source_filename = "sha256_wrapper.c"
target datalayout = "e-m:e-p:32:32-p270:32:32-p271:32:32-p272:64:64-f64:32:64-f80:32-n8:16:32-S128"
target triple = "i386-pc-linux-gnu"

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main() #0 {
  %1 = alloca i32, align 4
  %2 = alloca [256 x i8], align 1
  %3 = alloca [32 x i8], align 1
  %4 = alloca i32, align 4
  store i32 0, i32* %1, align 4
  %5 = getelementptr inbounds [256 x i8], [256 x i8]* %2, i32 0, i32 0
  call void @high_input_256(i8* noundef %5)
  %6 = getelementptr inbounds [32 x i8], [32 x i8]* %3, i32 0, i32 0
  call void @high_input_32(i8* noundef %6)
  %7 = getelementptr inbounds [32 x i8], [32 x i8]* %3, i32 0, i32 0
  %8 = getelementptr inbounds [256 x i8], [256 x i8]* %2, i32 0, i32 0
  %9 = call i32 @crypto_hash_sha256(i8* noundef %7, i8* noundef %8, i64 noundef 256)
  store i32 %9, i32* %4, align 4
  %10 = load i32, i32* %4, align 4
  ret i32 %10
}

declare void @high_input_256(i8* noundef) #1

declare void @high_input_32(i8* noundef) #1

declare i32 @crypto_hash_sha256(i8* noundef, i8* noundef, i64 noundef) #1

attributes #0 = { noinline nounwind optnone uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="i386" "target-features"="+x87" }
attributes #1 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="i386" "target-features"="+x87" }

!llvm.module.flags = !{!0, !1, !2, !3, !4, !5}
!llvm.ident = !{!6}

!0 = !{i32 1, !"NumRegisterParameters", i32 0}
!1 = !{i32 1, !"wchar_size", i32 4}
!2 = !{i32 7, !"PIC Level", i32 2}
!3 = !{i32 7, !"PIE Level", i32 2}
!4 = !{i32 7, !"uwtable", i32 1}
!5 = !{i32 7, !"frame-pointer", i32 2}
!6 = !{!"Ubuntu clang version 14.0.0-1ubuntu1.1"}
