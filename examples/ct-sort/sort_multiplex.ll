; ModuleID = 'sort_multiplex.ll'
source_filename = "sort_multiplex.c"
target datalayout = "e-m:e-p:32:32-p270:32:32-p271:32:32-p272:64:64-f64:32:64-f80:32-n8:16:32-S128"
target triple = "i386-pc-linux-gnu"

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main() #0 {
  %1 = alloca i32, align 4
  %2 = alloca [3 x i32], align 4
  %3 = alloca [3 x i32], align 4
  store i32 0, i32* %1, align 4
  %4 = bitcast [3 x i32]* %2 to i8*
  call void @high_input_12(i8* noundef %4)
  %5 = bitcast [3 x i32]* %3 to i8*
  call void @high_input_12(i8* noundef %5)
  %6 = getelementptr inbounds [3 x i32], [3 x i32]* %2, i32 0, i32 0
  %7 = getelementptr inbounds [3 x i32], [3 x i32]* %3, i32 0, i32 0
  call void @sort3_multiplex(i32* noundef %6, i32* noundef %7)
  ret i32 0
}

declare void @high_input_12(i8* noundef) #1

declare void @sort3_multiplex(i32* noundef, i32* noundef) #1

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
