; ModuleID = 'uint16_gte_mask.ll'
source_filename = "uint16_gte_mask.c"
target datalayout = "e-m:e-p:32:32-p270:32:32-p271:32:32-p272:64:64-f64:32:64-f80:32-n8:16:32-S128"
target triple = "i386-pc-linux-gnu"

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @main() local_unnamed_addr #0 {
  %1 = alloca i16, align 2
  %2 = alloca i16, align 2
  %3 = bitcast i16* %1 to i8*
  call void @high_input_2(i8* noundef nonnull %3) #2
  %4 = bitcast i16* %2 to i8*
  call void @high_input_2(i8* noundef nonnull %4) #2
  %5 = load i16, i16* %1, align 2
  %6 = load i16, i16* %2, align 2
  %7 = call fastcc zeroext i16 @FStar_UInt16_gte_mask(i16 noundef zeroext %5, i16 noundef zeroext %6)
  %8 = zext i16 %7 to i32
  ret i32 %8
}

declare void @high_input_2(i8* noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind uwtable
define internal fastcc zeroext i16 @FStar_UInt16_gte_mask(i16 noundef zeroext %0, i16 noundef zeroext %1) unnamed_addr #0 {
  %3 = icmp uge i16 %0, %1
  %4 = sext i1 %3 to i16
  ret i16 %4
}

attributes #0 = { noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="i386" "target-features"="+x87" }
attributes #1 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="i386" "target-features"="+x87" }
attributes #2 = { nounwind }

!llvm.module.flags = !{!0, !1, !2, !3, !4, !5}
!llvm.ident = !{!6}

!0 = !{i32 1, !"NumRegisterParameters", i32 0}
!1 = !{i32 1, !"wchar_size", i32 4}
!2 = !{i32 7, !"PIC Level", i32 2}
!3 = !{i32 7, !"PIE Level", i32 2}
!4 = !{i32 7, !"uwtable", i32 1}
!5 = !{i32 7, !"frame-pointer", i32 2}
!6 = !{!"Ubuntu clang version 14.0.0-1ubuntu1.1"}
