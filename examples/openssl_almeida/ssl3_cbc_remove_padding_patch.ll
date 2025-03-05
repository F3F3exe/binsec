; ModuleID = 'ssl3_cbc_remove_padding_patch.ll'
source_filename = "ssl3_cbc_remove_padding_patch_wrapper.c"
target datalayout = "e-m:e-p:32:32-f64:32:64-f80:32-n8:16:32-S128"
target triple = "i386-unknown-linux-gnu"

%struct.ssl_st = type { i8*, i32, %struct.ssl3_state_st*, %struct.evp_cipher_ctx_st*, i32 }
%struct.ssl3_state_st = type { i32, [8 x i8] }
%struct.evp_cipher_ctx_st = type { %struct.evp_cipher_st* }
%struct.evp_cipher_st = type { i32 }
%struct.ssl3_record_st = type { i32, i8*, i32, i8* }

; Function Attrs: noinline norecurse nounwind
define dso_local i32 @ssl3_cbc_remove_padding(%struct.ssl_st* nocapture readnone, %struct.ssl3_record_st* nocapture, i32, i32) local_unnamed_addr #0 {
  %5 = add i32 %3, 1
  %6 = getelementptr inbounds %struct.ssl3_record_st, %struct.ssl3_record_st* %1, i32 0, i32 0
  %7 = load i32, i32* %6, align 4
  %8 = icmp ugt i32 %5, %7
  br i1 %8, label %28, label %9

; <label>:9:                                      ; preds = %4
  %10 = getelementptr inbounds %struct.ssl3_record_st, %struct.ssl3_record_st* %1, i32 0, i32 1
  %11 = load i8*, i8** %10, align 4
  %12 = add i32 %7, -1
  %13 = getelementptr inbounds i8, i8* %11, i32 %12
  %14 = load i8, i8* %13, align 1
  %15 = zext i8 %14 to i32
  %16 = add i32 %5, %15
  %17 = tail call fastcc i32 @constant_time_ge(i32 %7, i32 %16)
  %18 = add nuw nsw i32 %15, 1
  %19 = tail call fastcc i32 @constant_time_ge(i32 %2, i32 %18)
  %20 = and i32 %19, %17
  %21 = and i32 %20, %18
  %22 = sub i32 %7, %21
  store i32 %22, i32* %6, align 4
  %23 = shl nuw nsw i32 %21, 8
  %24 = getelementptr inbounds %struct.ssl3_record_st, %struct.ssl3_record_st* %1, i32 0, i32 2
  %25 = load i32, i32* %24, align 4
  %26 = or i32 %23, %25
  store i32 %26, i32* %24, align 4
  %27 = tail call fastcc i32 @constant_time_select_int(i32 %20)
  br label %28

; <label>:28:                                     ; preds = %9, %4
  %.0 = phi i32 [ %27, %9 ], [ 0, %4 ]
  ret i32 %.0
}

; Function Attrs: noinline norecurse nounwind readnone
define internal fastcc i32 @constant_time_ge(i32, i32) unnamed_addr #1 {
  %3 = tail call fastcc i32 @constant_time_lt(i32 %0, i32 %1)
  %4 = xor i32 %3, -1
  ret i32 %4
}

; Function Attrs: noinline norecurse nounwind readnone
define internal fastcc i32 @constant_time_select_int(i32) unnamed_addr #1 {
  %2 = tail call fastcc i32 @constant_time_select(i32 %0)
  ret i32 %2
}

; Function Attrs: noinline nounwind
define dso_local i32 @main() local_unnamed_addr #2 {
  %1 = alloca [200 x i8], align 1
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca [200 x i8], align 1
  %7 = alloca %struct.ssl3_record_st, align 4
  store i32 200, i32* %2, align 4
  %8 = getelementptr inbounds [200 x i8], [200 x i8]* %1, i32 0, i32 0
  call void @high_input_200(i8* nonnull %8) #4
  %9 = bitcast i32* %2 to i8*
  call void @low_input_4(i8* nonnull %9) #4
  %10 = bitcast i32* %5 to i8*
  call void @low_input_4(i8* nonnull %10) #4
  %11 = getelementptr inbounds [200 x i8], [200 x i8]* %6, i32 0, i32 0
  call void @low_input_200(i8* nonnull %11) #4
  %12 = bitcast i32* %3 to i8*
  call void @low_input_4(i8* nonnull %12) #4
  %13 = bitcast i32* %4 to i8*
  call void @low_input_4(i8* nonnull %13) #4
  %14 = getelementptr inbounds %struct.ssl3_record_st, %struct.ssl3_record_st* %7, i32 0, i32 0
  %15 = load i32, i32* %2, align 4
  store i32 %15, i32* %14, align 4
  %16 = getelementptr inbounds %struct.ssl3_record_st, %struct.ssl3_record_st* %7, i32 0, i32 1
  store i8* %8, i8** %16, align 4
  %17 = getelementptr inbounds %struct.ssl3_record_st, %struct.ssl3_record_st* %7, i32 0, i32 2
  %18 = load i32, i32* %5, align 4
  store i32 %18, i32* %17, align 4
  %19 = getelementptr inbounds %struct.ssl3_record_st, %struct.ssl3_record_st* %7, i32 0, i32 3
  store i8* null, i8** %19, align 4
  %20 = load i32, i32* %3, align 4
  %21 = load i32, i32* %4, align 4
  %22 = call i32 @ssl3_cbc_remove_padding(%struct.ssl_st* undef, %struct.ssl3_record_st* nonnull %7, i32 %20, i32 %21)
  ret i32 %22
}

declare dso_local void @high_input_200(i8*) local_unnamed_addr #3

declare dso_local void @low_input_4(i8*) local_unnamed_addr #3

declare dso_local void @low_input_200(i8*) local_unnamed_addr #3

; Function Attrs: noinline norecurse nounwind readnone
define internal fastcc i32 @constant_time_lt(i32, i32) unnamed_addr #1 {
  %3 = xor i32 %1, %0
  %4 = sub i32 %0, %1
  %5 = xor i32 %4, %1
  %6 = or i32 %5, %3
  %7 = xor i32 %6, %0
  %8 = tail call fastcc i32 @constant_time_msb(i32 %7)
  ret i32 %8
}

; Function Attrs: noinline norecurse nounwind readnone
define internal fastcc i32 @constant_time_msb(i32) unnamed_addr #1 {
  %2 = ashr i32 %0, 31
  ret i32 %2
}

; Function Attrs: noinline norecurse nounwind readnone
define internal fastcc i32 @constant_time_select(i32) unnamed_addr #1 {
  %2 = or i32 %0, 1
  %3 = xor i32 %2, -2
  ret i32 %3
}

attributes #0 = { noinline norecurse nounwind "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="i386" "target-features"="+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { noinline norecurse nounwind readnone "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="i386" "target-features"="+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { noinline nounwind "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="i386" "target-features"="+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="i386" "target-features"="+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind }

!llvm.module.flags = !{!0, !1}
!llvm.ident = !{!2}

!0 = !{i32 1, !"NumRegisterParameters", i32 0}
!1 = !{i32 1, !"wchar_size", i32 4}
!2 = !{!"clang version 7.1.0 (tags/RELEASE_710/final)"}
