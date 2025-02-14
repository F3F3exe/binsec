; ModuleID = 'ssl3_cbc_copy_mac.ll'
source_filename = "ssl3_cbc_copy_mac_wrapper.c"
target datalayout = "e-m:e-p:32:32-p270:32:32-p271:32:32-p272:64:64-f64:32:64-f80:32-n8:16:32-S128"
target triple = "i386-pc-linux-gnu"

%struct.ssl3_record_st = type { i32, i8*, i32, i8* }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ssl3_cbc_copy_mac(i8* noundef %0, %struct.ssl3_record_st* noundef %1, i32 noundef %2, i32 noundef %3) #0 {
  %5 = alloca i8*, align 4
  %6 = alloca %struct.ssl3_record_st*, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca [64 x i8], align 1
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i8, align 1
  %18 = alloca i8, align 1
  %19 = alloca i8, align 1
  store i8* %0, i8** %5, align 4
  store %struct.ssl3_record_st* %1, %struct.ssl3_record_st** %6, align 4
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  %20 = load %struct.ssl3_record_st*, %struct.ssl3_record_st** %6, align 4
  %21 = getelementptr inbounds %struct.ssl3_record_st, %struct.ssl3_record_st* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  store i32 %22, i32* %10, align 4
  %23 = load i32, i32* %10, align 4
  %24 = load i32, i32* %7, align 4
  %25 = sub i32 %23, %24
  store i32 %25, i32* %11, align 4
  store i32 0, i32* %12, align 4
  %26 = load i32, i32* %8, align 4
  %27 = load i32, i32* %7, align 4
  %28 = add i32 %27, 255
  %29 = add i32 %28, 1
  %30 = icmp ugt i32 %26, %29
  br i1 %30, label %31, label %37

31:                                               ; preds = %4
  %32 = load i32, i32* %8, align 4
  %33 = load i32, i32* %7, align 4
  %34 = add i32 %33, 255
  %35 = add i32 %34, 1
  %36 = sub i32 %32, %35
  store i32 %36, i32* %12, align 4
  br label %37

37:                                               ; preds = %31, %4
  %38 = load i32, i32* %7, align 4
  %39 = lshr i32 %38, 1
  store i32 %39, i32* %15, align 4
  %40 = load i32, i32* %15, align 4
  %41 = shl i32 %40, 24
  store i32 %41, i32* %15, align 4
  %42 = load i32, i32* %15, align 4
  %43 = load i32, i32* %11, align 4
  %44 = add i32 %42, %43
  %45 = load i32, i32* %12, align 4
  %46 = sub i32 %44, %45
  %47 = load i32, i32* %7, align 4
  %48 = urem i32 %46, %47
  store i32 %48, i32* %16, align 4
  %49 = getelementptr inbounds [64 x i8], [64 x i8]* %9, i32 0, i32 0
  %50 = load i32, i32* %7, align 4
  call void @llvm.memset.p0i8.i32(i8* align 1 %49, i8 0, i32 %50, i1 false)
  %51 = load i32, i32* %12, align 4
  store i32 %51, i32* %13, align 4
  store i32 0, i32* %14, align 4
  br label %52

52:                                               ; preds = %90, %37
  %53 = load i32, i32* %13, align 4
  %54 = load i32, i32* %8, align 4
  %55 = icmp ult i32 %53, %54
  br i1 %55, label %56, label %93

56:                                               ; preds = %52
  %57 = load i32, i32* %13, align 4
  %58 = load i32, i32* %11, align 4
  %59 = call zeroext i8 @constant_time_ge_8(i32 noundef %57, i32 noundef %58)
  store i8 %59, i8* %17, align 1
  %60 = load i32, i32* %13, align 4
  %61 = load i32, i32* %10, align 4
  %62 = call zeroext i8 @constant_time_ge_8(i32 noundef %60, i32 noundef %61)
  store i8 %62, i8* %18, align 1
  %63 = load %struct.ssl3_record_st*, %struct.ssl3_record_st** %6, align 4
  %64 = getelementptr inbounds %struct.ssl3_record_st, %struct.ssl3_record_st* %63, i32 0, i32 1
  %65 = load i8*, i8** %64, align 4
  %66 = load i32, i32* %13, align 4
  %67 = getelementptr inbounds i8, i8* %65, i32 %66
  %68 = load i8, i8* %67, align 1
  store i8 %68, i8* %19, align 1
  %69 = load i8, i8* %19, align 1
  %70 = zext i8 %69 to i32
  %71 = load i8, i8* %17, align 1
  %72 = zext i8 %71 to i32
  %73 = and i32 %70, %72
  %74 = load i8, i8* %18, align 1
  %75 = zext i8 %74 to i32
  %76 = xor i32 %75, -1
  %77 = and i32 %73, %76
  %78 = load i32, i32* %14, align 4
  %79 = add i32 %78, 1
  store i32 %79, i32* %14, align 4
  %80 = getelementptr inbounds [64 x i8], [64 x i8]* %9, i32 0, i32 %78
  %81 = load i8, i8* %80, align 1
  %82 = zext i8 %81 to i32
  %83 = or i32 %82, %77
  %84 = trunc i32 %83 to i8
  store i8 %84, i8* %80, align 1
  %85 = load i32, i32* %14, align 4
  %86 = load i32, i32* %7, align 4
  %87 = call i32 @constant_time_lt(i32 noundef %85, i32 noundef %86)
  %88 = load i32, i32* %14, align 4
  %89 = and i32 %88, %87
  store i32 %89, i32* %14, align 4
  br label %90

90:                                               ; preds = %56
  %91 = load i32, i32* %13, align 4
  %92 = add i32 %91, 1
  store i32 %92, i32* %13, align 4
  br label %52, !llvm.loop !7

93:                                               ; preds = %52
  %94 = load i8*, i8** %5, align 4
  %95 = load i32, i32* %7, align 4
  call void @llvm.memset.p0i8.i32(i8* align 1 %94, i8 0, i32 %95, i1 false)
  %96 = load i32, i32* %7, align 4
  %97 = load i32, i32* %16, align 4
  %98 = sub i32 %96, %97
  store i32 %98, i32* %16, align 4
  %99 = load i32, i32* %16, align 4
  %100 = load i32, i32* %7, align 4
  %101 = call i32 @constant_time_lt(i32 noundef %99, i32 noundef %100)
  %102 = load i32, i32* %16, align 4
  %103 = and i32 %102, %101
  store i32 %103, i32* %16, align 4
  store i32 0, i32* %13, align 4
  br label %104

104:                                              ; preds = %141, %93
  %105 = load i32, i32* %13, align 4
  %106 = load i32, i32* %7, align 4
  %107 = icmp ult i32 %105, %106
  br i1 %107, label %108, label %144

108:                                              ; preds = %104
  store i32 0, i32* %14, align 4
  br label %109

109:                                              ; preds = %130, %108
  %110 = load i32, i32* %14, align 4
  %111 = load i32, i32* %7, align 4
  %112 = icmp ult i32 %110, %111
  br i1 %112, label %113, label %133

113:                                              ; preds = %109
  %114 = load i32, i32* %13, align 4
  %115 = getelementptr inbounds [64 x i8], [64 x i8]* %9, i32 0, i32 %114
  %116 = load i8, i8* %115, align 1
  %117 = zext i8 %116 to i32
  %118 = load i32, i32* %14, align 4
  %119 = load i32, i32* %16, align 4
  %120 = call zeroext i8 @constant_time_eq_8(i32 noundef %118, i32 noundef %119)
  %121 = zext i8 %120 to i32
  %122 = and i32 %117, %121
  %123 = load i8*, i8** %5, align 4
  %124 = load i32, i32* %14, align 4
  %125 = getelementptr inbounds i8, i8* %123, i32 %124
  %126 = load i8, i8* %125, align 1
  %127 = zext i8 %126 to i32
  %128 = or i32 %127, %122
  %129 = trunc i32 %128 to i8
  store i8 %129, i8* %125, align 1
  br label %130

130:                                              ; preds = %113
  %131 = load i32, i32* %14, align 4
  %132 = add i32 %131, 1
  store i32 %132, i32* %14, align 4
  br label %109, !llvm.loop !9

133:                                              ; preds = %109
  %134 = load i32, i32* %16, align 4
  %135 = add i32 %134, 1
  store i32 %135, i32* %16, align 4
  %136 = load i32, i32* %16, align 4
  %137 = load i32, i32* %7, align 4
  %138 = call i32 @constant_time_lt(i32 noundef %136, i32 noundef %137)
  %139 = load i32, i32* %16, align 4
  %140 = and i32 %139, %138
  store i32 %140, i32* %16, align 4
  br label %141

141:                                              ; preds = %133
  %142 = load i32, i32* %13, align 4
  %143 = add i32 %142, 1
  store i32 %143, i32* %13, align 4
  br label %104, !llvm.loop !10

144:                                              ; preds = %104
  ret void
}

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0i8.i32(i8* nocapture writeonly, i8, i32, i1 immarg) #1

; Function Attrs: noinline nounwind optnone uwtable
define internal zeroext i8 @constant_time_ge_8(i32 noundef %0, i32 noundef %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  store i32 %1, i32* %4, align 4
  %5 = load i32, i32* %3, align 4
  %6 = load i32, i32* %4, align 4
  %7 = call i32 @constant_time_ge(i32 noundef %5, i32 noundef %6)
  %8 = trunc i32 %7 to i8
  ret i8 %8
}

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @constant_time_lt(i32 noundef %0, i32 noundef %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  store i32 %1, i32* %4, align 4
  %5 = load i32, i32* %3, align 4
  %6 = load i32, i32* %3, align 4
  %7 = load i32, i32* %4, align 4
  %8 = xor i32 %6, %7
  %9 = load i32, i32* %3, align 4
  %10 = load i32, i32* %4, align 4
  %11 = sub i32 %9, %10
  %12 = load i32, i32* %4, align 4
  %13 = xor i32 %11, %12
  %14 = or i32 %8, %13
  %15 = xor i32 %5, %14
  %16 = call i32 @constant_time_msb(i32 noundef %15)
  ret i32 %16
}

; Function Attrs: noinline nounwind optnone uwtable
define internal zeroext i8 @constant_time_eq_8(i32 noundef %0, i32 noundef %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  store i32 %1, i32* %4, align 4
  %5 = load i32, i32* %3, align 4
  %6 = load i32, i32* %4, align 4
  %7 = call i32 @constant_time_eq(i32 noundef %5, i32 noundef %6)
  %8 = trunc i32 %7 to i8
  ret i8 %8
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main() #0 {
  %1 = alloca i32, align 4
  %2 = alloca [64 x i8], align 1
  %3 = alloca [384 x i8], align 1
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.ssl3_record_st, align 4
  store i32 0, i32* %1, align 4
  store i32 384, i32* %6, align 4
  %8 = getelementptr inbounds [64 x i8], [64 x i8]* %2, i32 0, i32 0
  call void @high_input_64(i8* noundef %8)
  %9 = getelementptr inbounds [384 x i8], [384 x i8]* %3, i32 0, i32 0
  call void @high_input_384(i8* noundef %9)
  %10 = bitcast i32* %4 to i8*
  call void @low_input_4(i8* noundef %10)
  %11 = bitcast i32* %5 to i8*
  call void @low_input_4(i8* noundef %11)
  %12 = bitcast i32* %6 to i8*
  call void @low_input_4(i8* noundef %12)
  %13 = getelementptr inbounds %struct.ssl3_record_st, %struct.ssl3_record_st* %7, i32 0, i32 0
  %14 = load i32, i32* %4, align 4
  store i32 %14, i32* %13, align 4
  %15 = getelementptr inbounds %struct.ssl3_record_st, %struct.ssl3_record_st* %7, i32 0, i32 1
  %16 = getelementptr inbounds [384 x i8], [384 x i8]* %3, i32 0, i32 0
  store i8* %16, i8** %15, align 4
  %17 = getelementptr inbounds %struct.ssl3_record_st, %struct.ssl3_record_st* %7, i32 0, i32 2
  store i32 0, i32* %17, align 4
  %18 = getelementptr inbounds %struct.ssl3_record_st, %struct.ssl3_record_st* %7, i32 0, i32 3
  store i8* null, i8** %18, align 4
  %19 = getelementptr inbounds [64 x i8], [64 x i8]* %2, i32 0, i32 0
  %20 = load i32, i32* %5, align 4
  %21 = load i32, i32* %6, align 4
  call void @ssl3_cbc_copy_mac(i8* noundef %19, %struct.ssl3_record_st* noundef %7, i32 noundef %20, i32 noundef %21)
  ret i32 0
}

declare void @high_input_64(i8* noundef) #2

declare void @high_input_384(i8* noundef) #2

declare void @low_input_4(i8* noundef) #2

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @constant_time_ge(i32 noundef %0, i32 noundef %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  store i32 %1, i32* %4, align 4
  %5 = load i32, i32* %3, align 4
  %6 = load i32, i32* %4, align 4
  %7 = call i32 @constant_time_lt(i32 noundef %5, i32 noundef %6)
  %8 = xor i32 %7, -1
  ret i32 %8
}

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @constant_time_msb(i32 noundef %0) #0 {
  %2 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  %3 = load i32, i32* %2, align 4
  %4 = lshr i32 %3, 31
  %5 = sub i32 0, %4
  ret i32 %5
}

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @constant_time_eq(i32 noundef %0, i32 noundef %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  store i32 %1, i32* %4, align 4
  %5 = load i32, i32* %3, align 4
  %6 = load i32, i32* %4, align 4
  %7 = xor i32 %5, %6
  %8 = call i32 @constant_time_is_zero(i32 noundef %7)
  ret i32 %8
}

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @constant_time_is_zero(i32 noundef %0) #0 {
  %2 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  %3 = load i32, i32* %2, align 4
  %4 = xor i32 %3, -1
  %5 = load i32, i32* %2, align 4
  %6 = sub i32 %5, 1
  %7 = and i32 %4, %6
  %8 = call i32 @constant_time_msb(i32 noundef %7)
  ret i32 %8
}

attributes #0 = { noinline nounwind optnone uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="i386" "target-features"="+x87" }
attributes #1 = { argmemonly nofree nounwind willreturn writeonly }
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
!9 = distinct !{!9, !8}
!10 = distinct !{!10, !8}
