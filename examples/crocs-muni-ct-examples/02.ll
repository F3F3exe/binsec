; ModuleID = '02.ll'
source_filename = "02.c"
target datalayout = "e-m:e-p:32:32-p270:32:32-p271:32:32-p272:64:64-f64:32:64-f80:32-n8:16:32-S128"
target triple = "i386-pc-linux-gnu"

@a = dso_local local_unnamed_addr global i32 0, align 4
@b = dso_local local_unnamed_addr global i32 0, align 4
@c = dso_local local_unnamed_addr global i32 0, align 4

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readnone uwtable willreturn
define dso_local zeroext i8 @issue(i32 noundef %0, i8 noundef zeroext %1, i8 noundef zeroext %2) #0 {
  %.not = icmp eq i32 %0, 0
  %.v = select i1 %.not, i8 %2, i8 %1
  ret i8 %.v
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @main(i32 noundef %0, i8** nocapture noundef readnone %1) local_unnamed_addr #1 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i8 (i32, i8, i8)*, align 4
  store i32 2, i32* %3, align 4
  store i32 5, i32* %4, align 4
  store i32 0, i32* %5, align 4
  %7 = bitcast i32* %5 to i8*
  call void @high_input_4(i8* noundef nonnull %7) #3
  %8 = bitcast i32* %3 to i8*
  call void @low_input_4(i8* noundef nonnull %8) #3
  %9 = bitcast i32* %4 to i8*
  call void @low_input_4(i8* noundef nonnull %9) #3
  store volatile i8 (i32, i8, i8)* @issue, i8 (i32, i8, i8)** %6, align 4
  %.0..0..0. = load volatile i8 (i32, i8, i8)*, i8 (i32, i8, i8)** %6, align 4
  %10 = load i32, i32* %5, align 4
  %11 = load i32, i32* %3, align 4
  %12 = trunc i32 %11 to i8
  %13 = load i32, i32* %4, align 4
  %14 = trunc i32 %13 to i8
  %15 = call zeroext i8 %.0..0..0.(i32 noundef %10, i8 noundef zeroext %12, i8 noundef zeroext %14) #3
  %16 = zext i8 %15 to i32
  ret i32 %16
}

declare void @high_input_4(i8* noundef) local_unnamed_addr #2

declare void @low_input_4(i8* noundef) local_unnamed_addr #2

attributes #0 = { mustprogress nofree noinline norecurse nosync nounwind readnone uwtable willreturn "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="i686" "target-features"="+cx8,+x87" "tune-cpu"="generic" }
attributes #1 = { noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="i686" "target-features"="+cx8,+x87" "tune-cpu"="generic" }
attributes #2 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="i686" "target-features"="+cx8,+x87" "tune-cpu"="generic" }
attributes #3 = { nounwind }

!llvm.module.flags = !{!0, !1, !2, !3, !4, !5}
!llvm.ident = !{!6}

!0 = !{i32 1, !"NumRegisterParameters", i32 0}
!1 = !{i32 1, !"wchar_size", i32 4}
!2 = !{i32 7, !"PIC Level", i32 2}
!3 = !{i32 7, !"PIE Level", i32 2}
!4 = !{i32 7, !"uwtable", i32 1}
!5 = !{i32 7, !"frame-pointer", i32 2}
!6 = !{!"Ubuntu clang version 14.0.0-1ubuntu1.1"}
