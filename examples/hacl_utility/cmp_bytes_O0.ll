; ModuleID = 'cmp_bytes.c'
source_filename = "cmp_bytes.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main() #0 {
  %1 = alloca i32, align 4
  %2 = alloca [200 x i8], align 16
  %3 = alloca [200 x i8], align 16
  store i32 0, i32* %1, align 4
  %4 = getelementptr inbounds [200 x i8], [200 x i8]* %2, i64 0, i64 0
  call void @high_input_200(i8* noundef %4)
  %5 = getelementptr inbounds [200 x i8], [200 x i8]* %3, i64 0, i64 0
  call void @high_input_200(i8* noundef %5)
  %6 = getelementptr inbounds [200 x i8], [200 x i8]* %2, i64 0, i64 0
  %7 = getelementptr inbounds [200 x i8], [200 x i8]* %3, i64 0, i64 0
  %8 = call zeroext i8 @Hacl_Policies_cmp_bytes(i8* noundef %6, i8* noundef %7, i32 noundef 200)
  %9 = zext i8 %8 to i32
  ret i32 %9
}

declare void @high_input_200(i8* noundef) #1

declare zeroext i8 @Hacl_Policies_cmp_bytes(i8* noundef, i8* noundef, i32 noundef) #1

attributes #0 = { noinline nounwind optnone uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }

!llvm.module.flags = !{!0, !1, !2, !3, !4}
!llvm.ident = !{!5}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 1}
!4 = !{i32 7, !"frame-pointer", i32 2}
!5 = !{!"Ubuntu clang version 14.0.0-1ubuntu1.1"}
