; ModuleID = 'tea_encrypt.ll'
source_filename = "tea_encrypt_wrapper.c"
target datalayout = "e-m:e-p:32:32-f64:32:64-f80:32-n8:16:32-S128"
target triple = "i386-unknown-linux-gnu"

; Function Attrs: noinline norecurse nounwind
define dso_local void @encipher(i32* nocapture readonly, i32* nocapture, i32* nocapture readonly) local_unnamed_addr #0 {
  %4 = load i32, i32* %0, align 4
  %5 = getelementptr inbounds i32, i32* %0, i32 1
  %6 = load i32, i32* %5, align 4
  %7 = load i32, i32* %2, align 4
  %8 = getelementptr inbounds i32, i32* %2, i32 1
  %9 = load i32, i32* %8, align 4
  %10 = getelementptr inbounds i32, i32* %2, i32 2
  %11 = load i32, i32* %10, align 4
  %12 = getelementptr inbounds i32, i32* %2, i32 3
  %13 = load i32, i32* %12, align 4
  br label %14

; <label>:14:                                     ; preds = %14, %3
  %.04 = phi i32 [ 32, %3 ], [ %15, %14 ]
  %.0263 = phi i32 [ %4, %3 ], [ %24, %14 ]
  %.0272 = phi i32 [ %6, %3 ], [ %32, %14 ]
  %.0281 = phi i32 [ 0, %3 ], [ %16, %14 ]
  %15 = add nsw i32 %.04, -1
  %16 = add i32 %.0281, -1640531527
  %17 = shl i32 %.0272, 4
  %18 = add i32 %17, %7
  %19 = add i32 %16, %.0272
  %20 = lshr i32 %.0272, 5
  %21 = add i32 %20, %9
  %22 = xor i32 %21, %18
  %23 = xor i32 %22, %19
  %24 = add i32 %23, %.0263
  %25 = shl i32 %24, 4
  %26 = add i32 %25, %11
  %27 = add i32 %24, %16
  %28 = xor i32 %26, %27
  %29 = lshr i32 %24, 5
  %30 = add i32 %29, %13
  %31 = xor i32 %28, %30
  %32 = add i32 %31, %.0272
  %33 = icmp eq i32 %15, 0
  br i1 %33, label %34, label %14

; <label>:34:                                     ; preds = %14
  store i32 %24, i32* %1, align 4
  %35 = getelementptr inbounds i32, i32* %1, i32 1
  store i32 %32, i32* %35, align 4
  ret void
}

; Function Attrs: noinline norecurse nounwind
define dso_local void @decipher(i32* nocapture readonly, i32* nocapture, i32* nocapture readonly) local_unnamed_addr #0 {
  %4 = load i32, i32* %0, align 4
  %5 = getelementptr inbounds i32, i32* %0, i32 1
  %6 = load i32, i32* %5, align 4
  %7 = load i32, i32* %2, align 4
  %8 = getelementptr inbounds i32, i32* %2, i32 1
  %9 = load i32, i32* %8, align 4
  %10 = getelementptr inbounds i32, i32* %2, i32 2
  %11 = load i32, i32* %10, align 4
  %12 = getelementptr inbounds i32, i32* %2, i32 3
  %13 = load i32, i32* %12, align 4
  br label %14

; <label>:14:                                     ; preds = %14, %3
  %.04 = phi i32 [ 32, %3 ], [ %15, %14 ]
  %.0253 = phi i32 [ %4, %3 ], [ %31, %14 ]
  %.0262 = phi i32 [ %6, %3 ], [ %23, %14 ]
  %.0271 = phi i32 [ -957401312, %3 ], [ %32, %14 ]
  %15 = add nsw i32 %.04, -1
  %16 = shl i32 %.0253, 4
  %17 = add i32 %16, %11
  %18 = add i32 %.0271, %.0253
  %19 = lshr i32 %.0253, 5
  %20 = add i32 %19, %13
  %21 = xor i32 %20, %17
  %22 = xor i32 %21, %18
  %23 = sub i32 %.0262, %22
  %24 = shl i32 %23, 4
  %25 = add i32 %24, %7
  %26 = add i32 %23, %.0271
  %27 = xor i32 %25, %26
  %28 = lshr i32 %23, 5
  %29 = add i32 %28, %9
  %30 = xor i32 %27, %29
  %31 = sub i32 %.0253, %30
  %32 = add i32 %.0271, 1640531527
  %33 = icmp eq i32 %15, 0
  br i1 %33, label %34, label %14

; <label>:34:                                     ; preds = %14
  store i32 %31, i32* %1, align 4
  %35 = getelementptr inbounds i32, i32* %1, i32 1
  store i32 %23, i32* %35, align 4
  ret void
}

; Function Attrs: noinline nounwind
define dso_local i32 @main() local_unnamed_addr #1 {
  %1 = alloca [4 x i32], align 4
  %2 = alloca [2 x i32], align 4
  %3 = alloca [2 x i32], align 4
  %4 = getelementptr inbounds [4 x i32], [4 x i32]* %1, i32 0, i32 0
  %5 = bitcast [4 x i32]* %1 to i8*
  call void @high_input_16(i8* nonnull %5) #3
  %6 = getelementptr inbounds [2 x i32], [2 x i32]* %2, i32 0, i32 0
  %7 = bitcast [2 x i32]* %2 to i8*
  call void @high_input_8(i8* nonnull %7) #3
  %8 = getelementptr inbounds [2 x i32], [2 x i32]* %3, i32 0, i32 0
  %9 = bitcast [2 x i32]* %3 to i8*
  call void @high_input_8(i8* nonnull %9) #3
  call void @encipher(i32* nonnull %6, i32* nonnull %8, i32* nonnull %4)
  ret i32 0
}

declare dso_local void @high_input_16(i8*) local_unnamed_addr #2

declare dso_local void @high_input_8(i8*) local_unnamed_addr #2

attributes #0 = { noinline norecurse nounwind "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="i386" "target-features"="+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { noinline nounwind "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="i386" "target-features"="+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="i386" "target-features"="+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind }

!llvm.module.flags = !{!0, !1}
!llvm.ident = !{!2}

!0 = !{i32 1, !"NumRegisterParameters", i32 0}
!1 = !{i32 1, !"wchar_size", i32 4}
!2 = !{!"clang version 7.1.0 (tags/RELEASE_710/final)"}
