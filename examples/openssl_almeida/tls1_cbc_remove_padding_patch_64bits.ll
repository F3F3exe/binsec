; ModuleID = 'tls1_cbc_remove_padding_patch_wrapper2.c'
source_filename = "tls1_cbc_remove_padding_patch_wrapper2.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.ssl_st = type { ptr, i64, ptr, ptr, i32 }
%struct.ssl3_record_st = type { i32, ptr, i32, ptr }
%struct.ssl3_state_st = type { i64, [8 x i8] }
%struct.evp_cipher_ctx_st = type { ptr }
%struct.evp_cipher_st = type { i64 }

@.str = private unnamed_addr constant [9 x i8] zeroinitializer, align 1

; Function Attrs: nounwind uwtable
define dso_local i32 @CRYPTO_memcmp(ptr noundef %0, ptr noundef %1, i64 noundef %2) #0 {
  %4 = alloca ptr, align 8
  %5 = alloca ptr, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca ptr, align 8
  %9 = alloca ptr, align 8
  %10 = alloca i8, align 1
  store ptr %0, ptr %4, align 8, !tbaa !5
  store ptr %1, ptr %5, align 8, !tbaa !5
  store i64 %2, ptr %6, align 8, !tbaa !9
  call void @llvm.lifetime.start.p0(i64 8, ptr %7) #4
  call void @llvm.lifetime.start.p0(i64 8, ptr %8) #4
  %11 = load ptr, ptr %4, align 8, !tbaa !5
  store ptr %11, ptr %8, align 8, !tbaa !5
  call void @llvm.lifetime.start.p0(i64 8, ptr %9) #4
  %12 = load ptr, ptr %5, align 8, !tbaa !5
  store ptr %12, ptr %9, align 8, !tbaa !5
  call void @llvm.lifetime.start.p0(i64 1, ptr %10) #4
  store i8 0, ptr %10, align 1, !tbaa !11
  store i64 0, ptr %7, align 8, !tbaa !9
  br label %13

13:                                               ; preds = %33, %3
  %14 = load i64, ptr %7, align 8, !tbaa !9
  %15 = load i64, ptr %6, align 8, !tbaa !9
  %16 = icmp ult i64 %14, %15
  br i1 %16, label %17, label %36

17:                                               ; preds = %13
  %18 = load ptr, ptr %8, align 8, !tbaa !5
  %19 = load i64, ptr %7, align 8, !tbaa !9
  %20 = getelementptr inbounds i8, ptr %18, i64 %19
  %21 = load i8, ptr %20, align 1, !tbaa !11
  %22 = zext i8 %21 to i32
  %23 = load ptr, ptr %9, align 8, !tbaa !5
  %24 = load i64, ptr %7, align 8, !tbaa !9
  %25 = getelementptr inbounds i8, ptr %23, i64 %24
  %26 = load i8, ptr %25, align 1, !tbaa !11
  %27 = sext i8 %26 to i32
  %28 = xor i32 %22, %27
  %29 = load i8, ptr %10, align 1, !tbaa !11
  %30 = zext i8 %29 to i32
  %31 = or i32 %30, %28
  %32 = trunc i32 %31 to i8
  store i8 %32, ptr %10, align 1, !tbaa !11
  br label %33

33:                                               ; preds = %17
  %34 = load i64, ptr %7, align 8, !tbaa !9
  %35 = add i64 %34, 1
  store i64 %35, ptr %7, align 8, !tbaa !9
  br label %13, !llvm.loop !12

36:                                               ; preds = %13
  %37 = load i8, ptr %10, align 1, !tbaa !11
  %38 = zext i8 %37 to i32
  call void @llvm.lifetime.end.p0(i64 1, ptr %10) #4
  call void @llvm.lifetime.end.p0(i64 8, ptr %9) #4
  call void @llvm.lifetime.end.p0(i64 8, ptr %8) #4
  call void @llvm.lifetime.end.p0(i64 8, ptr %7) #4
  ret i32 %38
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind uwtable
define dso_local i32 @tls1_cbc_remove_padding(ptr noundef %0, ptr noundef %1, i32 noundef %2, i32 noundef %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca ptr, align 8
  %7 = alloca ptr, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i8, align 1
  %17 = alloca i8, align 1
  store ptr %0, ptr %6, align 8, !tbaa !5
  store ptr %1, ptr %7, align 8, !tbaa !5
  store i32 %2, ptr %8, align 4, !tbaa !15
  store i32 %3, ptr %9, align 4, !tbaa !15
  call void @llvm.lifetime.start.p0(i64 4, ptr %10) #4
  call void @llvm.lifetime.start.p0(i64 4, ptr %11) #4
  call void @llvm.lifetime.start.p0(i64 4, ptr %12) #4
  call void @llvm.lifetime.start.p0(i64 4, ptr %13) #4
  call void @llvm.lifetime.start.p0(i64 4, ptr %14) #4
  %18 = load i32, ptr %9, align 4, !tbaa !15
  %19 = add i32 1, %18
  store i32 %19, ptr %14, align 4, !tbaa !15
  %20 = load ptr, ptr %6, align 8, !tbaa !5
  %21 = getelementptr inbounds %struct.ssl_st, ptr %20, i32 0, i32 4
  %22 = load i32, ptr %21, align 8, !tbaa !17
  %23 = and i32 %22, 1
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %25, label %52

25:                                               ; preds = %4
  %26 = load i32, ptr %14, align 4, !tbaa !15
  %27 = load i32, ptr %8, align 4, !tbaa !15
  %28 = add i32 %26, %27
  %29 = load ptr, ptr %7, align 8, !tbaa !5
  %30 = getelementptr inbounds %struct.ssl3_record_st, ptr %29, i32 0, i32 0
  %31 = load i32, ptr %30, align 8, !tbaa !19
  %32 = icmp ugt i32 %28, %31
  br i1 %32, label %33, label %34

33:                                               ; preds = %25
  store i32 0, ptr %5, align 4
  store i32 1, ptr %15, align 4
  br label %207

34:                                               ; preds = %25
  %35 = load i32, ptr %8, align 4, !tbaa !15
  %36 = load ptr, ptr %7, align 8, !tbaa !5
  %37 = getelementptr inbounds %struct.ssl3_record_st, ptr %36, i32 0, i32 1
  %38 = load ptr, ptr %37, align 8, !tbaa !21
  %39 = zext i32 %35 to i64
  %40 = getelementptr inbounds i8, ptr %38, i64 %39
  store ptr %40, ptr %37, align 8, !tbaa !21
  %41 = load i32, ptr %8, align 4, !tbaa !15
  %42 = load ptr, ptr %7, align 8, !tbaa !5
  %43 = getelementptr inbounds %struct.ssl3_record_st, ptr %42, i32 0, i32 3
  %44 = load ptr, ptr %43, align 8, !tbaa !22
  %45 = zext i32 %41 to i64
  %46 = getelementptr inbounds i8, ptr %44, i64 %45
  store ptr %46, ptr %43, align 8, !tbaa !22
  %47 = load i32, ptr %8, align 4, !tbaa !15
  %48 = load ptr, ptr %7, align 8, !tbaa !5
  %49 = getelementptr inbounds %struct.ssl3_record_st, ptr %48, i32 0, i32 0
  %50 = load i32, ptr %49, align 8, !tbaa !19
  %51 = sub i32 %50, %47
  store i32 %51, ptr %49, align 8, !tbaa !19
  br label %60

52:                                               ; preds = %4
  %53 = load i32, ptr %14, align 4, !tbaa !15
  %54 = load ptr, ptr %7, align 8, !tbaa !5
  %55 = getelementptr inbounds %struct.ssl3_record_st, ptr %54, i32 0, i32 0
  %56 = load i32, ptr %55, align 8, !tbaa !19
  %57 = icmp ugt i32 %53, %56
  br i1 %57, label %58, label %59

58:                                               ; preds = %52
  store i32 0, ptr %5, align 4
  store i32 1, ptr %15, align 4
  br label %207

59:                                               ; preds = %52
  br label %60

60:                                               ; preds = %59, %34
  %61 = load ptr, ptr %7, align 8, !tbaa !5
  %62 = getelementptr inbounds %struct.ssl3_record_st, ptr %61, i32 0, i32 1
  %63 = load ptr, ptr %62, align 8, !tbaa !21
  %64 = load ptr, ptr %7, align 8, !tbaa !5
  %65 = getelementptr inbounds %struct.ssl3_record_st, ptr %64, i32 0, i32 0
  %66 = load i32, ptr %65, align 8, !tbaa !19
  %67 = sub i32 %66, 1
  %68 = zext i32 %67 to i64
  %69 = getelementptr inbounds i8, ptr %63, i64 %68
  %70 = load i8, ptr %69, align 1, !tbaa !11
  %71 = zext i8 %70 to i32
  store i32 %71, ptr %10, align 4, !tbaa !15
  %72 = load ptr, ptr %6, align 8, !tbaa !5
  %73 = getelementptr inbounds %struct.ssl_st, ptr %72, i32 0, i32 1
  %74 = load i64, ptr %73, align 8, !tbaa !23
  %75 = and i64 %74, 512
  %76 = icmp ne i64 %75, 0
  br i1 %76, label %77, label %116

77:                                               ; preds = %60
  %78 = load ptr, ptr %6, align 8, !tbaa !5
  %79 = getelementptr inbounds %struct.ssl_st, ptr %78, i32 0, i32 0
  %80 = load ptr, ptr %79, align 8, !tbaa !24
  %81 = icmp ne ptr %80, null
  br i1 %81, label %116, label %82

82:                                               ; preds = %77
  %83 = load ptr, ptr %6, align 8, !tbaa !5
  %84 = getelementptr inbounds %struct.ssl_st, ptr %83, i32 0, i32 2
  %85 = load ptr, ptr %84, align 8, !tbaa !25
  %86 = getelementptr inbounds %struct.ssl3_state_st, ptr %85, i32 0, i32 1
  %87 = getelementptr inbounds [8 x i8], ptr %86, i64 0, i64 0
  %88 = call i32 @CRYPTO_memcmp(ptr noundef %87, ptr noundef @.str, i64 noundef 8)
  %89 = icmp eq i32 %88, 0
  br i1 %89, label %90, label %101

90:                                               ; preds = %82
  %91 = load i32, ptr %10, align 4, !tbaa !15
  %92 = and i32 %91, 1
  %93 = icmp ne i32 %92, 0
  br i1 %93, label %101, label %94

94:                                               ; preds = %90
  %95 = load ptr, ptr %6, align 8, !tbaa !5
  %96 = getelementptr inbounds %struct.ssl_st, ptr %95, i32 0, i32 2
  %97 = load ptr, ptr %96, align 8, !tbaa !25
  %98 = getelementptr inbounds %struct.ssl3_state_st, ptr %97, i32 0, i32 0
  %99 = load i64, ptr %98, align 8, !tbaa !26
  %100 = or i64 %99, 8
  store i64 %100, ptr %98, align 8, !tbaa !26
  br label %101

101:                                              ; preds = %94, %90, %82
  %102 = load ptr, ptr %6, align 8, !tbaa !5
  %103 = getelementptr inbounds %struct.ssl_st, ptr %102, i32 0, i32 2
  %104 = load ptr, ptr %103, align 8, !tbaa !25
  %105 = getelementptr inbounds %struct.ssl3_state_st, ptr %104, i32 0, i32 0
  %106 = load i64, ptr %105, align 8, !tbaa !26
  %107 = and i64 %106, 8
  %108 = icmp ne i64 %107, 0
  br i1 %108, label %109, label %115

109:                                              ; preds = %101
  %110 = load i32, ptr %10, align 4, !tbaa !15
  %111 = icmp ugt i32 %110, 0
  br i1 %111, label %112, label %115

112:                                              ; preds = %109
  %113 = load i32, ptr %10, align 4, !tbaa !15
  %114 = add i32 %113, -1
  store i32 %114, ptr %10, align 4, !tbaa !15
  br label %115

115:                                              ; preds = %112, %109, %101
  br label %116

116:                                              ; preds = %115, %77, %60
  %117 = load ptr, ptr %6, align 8, !tbaa !5
  %118 = getelementptr inbounds %struct.ssl_st, ptr %117, i32 0, i32 3
  %119 = load ptr, ptr %118, align 8, !tbaa !28
  %120 = getelementptr inbounds %struct.evp_cipher_ctx_st, ptr %119, i32 0, i32 0
  %121 = load ptr, ptr %120, align 8, !tbaa !29
  %122 = getelementptr inbounds %struct.evp_cipher_st, ptr %121, i32 0, i32 0
  %123 = load i64, ptr %122, align 8, !tbaa !31
  %124 = and i64 %123, 2097152
  %125 = icmp ne i64 %124, 0
  br i1 %125, label %126, label %133

126:                                              ; preds = %116
  %127 = load i32, ptr %10, align 4, !tbaa !15
  %128 = add i32 %127, 1
  %129 = load ptr, ptr %7, align 8, !tbaa !5
  %130 = getelementptr inbounds %struct.ssl3_record_st, ptr %129, i32 0, i32 0
  %131 = load i32, ptr %130, align 8, !tbaa !19
  %132 = sub i32 %131, %128
  store i32 %132, ptr %130, align 8, !tbaa !19
  store i32 1, ptr %5, align 4
  store i32 1, ptr %15, align 4
  br label %207

133:                                              ; preds = %116
  %134 = load ptr, ptr %7, align 8, !tbaa !5
  %135 = getelementptr inbounds %struct.ssl3_record_st, ptr %134, i32 0, i32 0
  %136 = load i32, ptr %135, align 8, !tbaa !19
  %137 = load i32, ptr %14, align 4, !tbaa !15
  %138 = load i32, ptr %10, align 4, !tbaa !15
  %139 = add i32 %137, %138
  %140 = call i32 @constant_time_ge(i32 noundef %136, i32 noundef %139)
  store i32 %140, ptr %11, align 4, !tbaa !15
  store i32 255, ptr %12, align 4, !tbaa !15
  %141 = load i32, ptr %12, align 4, !tbaa !15
  %142 = load ptr, ptr %7, align 8, !tbaa !5
  %143 = getelementptr inbounds %struct.ssl3_record_st, ptr %142, i32 0, i32 0
  %144 = load i32, ptr %143, align 8, !tbaa !19
  %145 = sub i32 %144, 1
  %146 = icmp ugt i32 %141, %145
  br i1 %146, label %147, label %152

147:                                              ; preds = %133
  %148 = load ptr, ptr %7, align 8, !tbaa !5
  %149 = getelementptr inbounds %struct.ssl3_record_st, ptr %148, i32 0, i32 0
  %150 = load i32, ptr %149, align 8, !tbaa !19
  %151 = sub i32 %150, 1
  store i32 %151, ptr %12, align 4, !tbaa !15
  br label %152

152:                                              ; preds = %147, %133
  store i32 0, ptr %13, align 4, !tbaa !15
  br label %153

153:                                              ; preds = %183, %152
  %154 = load i32, ptr %13, align 4, !tbaa !15
  %155 = load i32, ptr %12, align 4, !tbaa !15
  %156 = icmp ult i32 %154, %155
  br i1 %156, label %157, label %186

157:                                              ; preds = %153
  call void @llvm.lifetime.start.p0(i64 1, ptr %16) #4
  %158 = load i32, ptr %10, align 4, !tbaa !15
  %159 = load i32, ptr %13, align 4, !tbaa !15
  %160 = call zeroext i8 @constant_time_ge_8(i32 noundef %158, i32 noundef %159)
  store i8 %160, ptr %16, align 1, !tbaa !11
  call void @llvm.lifetime.start.p0(i64 1, ptr %17) #4
  %161 = load ptr, ptr %7, align 8, !tbaa !5
  %162 = getelementptr inbounds %struct.ssl3_record_st, ptr %161, i32 0, i32 1
  %163 = load ptr, ptr %162, align 8, !tbaa !21
  %164 = load ptr, ptr %7, align 8, !tbaa !5
  %165 = getelementptr inbounds %struct.ssl3_record_st, ptr %164, i32 0, i32 0
  %166 = load i32, ptr %165, align 8, !tbaa !19
  %167 = sub i32 %166, 1
  %168 = load i32, ptr %13, align 4, !tbaa !15
  %169 = sub i32 %167, %168
  %170 = zext i32 %169 to i64
  %171 = getelementptr inbounds i8, ptr %163, i64 %170
  %172 = load i8, ptr %171, align 1, !tbaa !11
  store i8 %172, ptr %17, align 1, !tbaa !11
  %173 = load i8, ptr %16, align 1, !tbaa !11
  %174 = zext i8 %173 to i32
  %175 = load i32, ptr %10, align 4, !tbaa !15
  %176 = load i8, ptr %17, align 1, !tbaa !11
  %177 = zext i8 %176 to i32
  %178 = xor i32 %175, %177
  %179 = and i32 %174, %178
  %180 = xor i32 %179, -1
  %181 = load i32, ptr %11, align 4, !tbaa !15
  %182 = and i32 %181, %180
  store i32 %182, ptr %11, align 4, !tbaa !15
  call void @llvm.lifetime.end.p0(i64 1, ptr %17) #4
  call void @llvm.lifetime.end.p0(i64 1, ptr %16) #4
  br label %183

183:                                              ; preds = %157
  %184 = load i32, ptr %13, align 4, !tbaa !15
  %185 = add i32 %184, 1
  store i32 %185, ptr %13, align 4, !tbaa !15
  br label %153, !llvm.loop !33

186:                                              ; preds = %153
  %187 = load i32, ptr %11, align 4, !tbaa !15
  %188 = and i32 %187, 255
  %189 = call i32 @constant_time_eq(i32 noundef 255, i32 noundef %188)
  store i32 %189, ptr %11, align 4, !tbaa !15
  %190 = load i32, ptr %11, align 4, !tbaa !15
  %191 = load i32, ptr %10, align 4, !tbaa !15
  %192 = add i32 %191, 1
  %193 = and i32 %190, %192
  store i32 %193, ptr %10, align 4, !tbaa !15
  %194 = load i32, ptr %10, align 4, !tbaa !15
  %195 = load ptr, ptr %7, align 8, !tbaa !5
  %196 = getelementptr inbounds %struct.ssl3_record_st, ptr %195, i32 0, i32 0
  %197 = load i32, ptr %196, align 8, !tbaa !19
  %198 = sub i32 %197, %194
  store i32 %198, ptr %196, align 8, !tbaa !19
  %199 = load i32, ptr %10, align 4, !tbaa !15
  %200 = shl i32 %199, 8
  %201 = load ptr, ptr %7, align 8, !tbaa !5
  %202 = getelementptr inbounds %struct.ssl3_record_st, ptr %201, i32 0, i32 2
  %203 = load i32, ptr %202, align 8, !tbaa !34
  %204 = or i32 %203, %200
  store i32 %204, ptr %202, align 8, !tbaa !34
  %205 = load i32, ptr %11, align 4, !tbaa !15
  %206 = call i32 @constant_time_select_int(i32 noundef %205, i32 noundef 1, i32 noundef -1)
  store i32 %206, ptr %5, align 4
  store i32 1, ptr %15, align 4
  br label %207

207:                                              ; preds = %186, %126, %58, %33
  call void @llvm.lifetime.end.p0(i64 4, ptr %14) #4
  call void @llvm.lifetime.end.p0(i64 4, ptr %13) #4
  call void @llvm.lifetime.end.p0(i64 4, ptr %12) #4
  call void @llvm.lifetime.end.p0(i64 4, ptr %11) #4
  call void @llvm.lifetime.end.p0(i64 4, ptr %10) #4
  %208 = load i32, ptr %5, align 4
  ret i32 %208
}

; Function Attrs: inlinehint nounwind uwtable
define internal i32 @constant_time_ge(i32 noundef %0, i32 noundef %1) #2 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  store i32 %0, ptr %3, align 4, !tbaa !15
  store i32 %1, ptr %4, align 4, !tbaa !15
  %5 = load i32, ptr %3, align 4, !tbaa !15
  %6 = load i32, ptr %4, align 4, !tbaa !15
  %7 = call i32 @constant_time_lt(i32 noundef %5, i32 noundef %6)
  %8 = xor i32 %7, -1
  ret i32 %8
}

; Function Attrs: inlinehint nounwind uwtable
define internal zeroext i8 @constant_time_ge_8(i32 noundef %0, i32 noundef %1) #2 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  store i32 %0, ptr %3, align 4, !tbaa !15
  store i32 %1, ptr %4, align 4, !tbaa !15
  %5 = load i32, ptr %3, align 4, !tbaa !15
  %6 = load i32, ptr %4, align 4, !tbaa !15
  %7 = call i32 @constant_time_ge(i32 noundef %5, i32 noundef %6)
  %8 = trunc i32 %7 to i8
  ret i8 %8
}

; Function Attrs: inlinehint nounwind uwtable
define internal i32 @constant_time_eq(i32 noundef %0, i32 noundef %1) #2 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  store i32 %0, ptr %3, align 4, !tbaa !15
  store i32 %1, ptr %4, align 4, !tbaa !15
  %5 = load i32, ptr %3, align 4, !tbaa !15
  %6 = load i32, ptr %4, align 4, !tbaa !15
  %7 = xor i32 %5, %6
  %8 = call i32 @constant_time_is_zero(i32 noundef %7)
  ret i32 %8
}

; Function Attrs: inlinehint nounwind uwtable
define internal i32 @constant_time_select_int(i32 noundef %0, i32 noundef %1, i32 noundef %2) #2 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store i32 %0, ptr %4, align 4, !tbaa !15
  store i32 %1, ptr %5, align 4, !tbaa !15
  store i32 %2, ptr %6, align 4, !tbaa !15
  %7 = load i32, ptr %4, align 4, !tbaa !15
  %8 = load i32, ptr %5, align 4, !tbaa !15
  %9 = load i32, ptr %6, align 4, !tbaa !15
  %10 = call i32 @constant_time_select(i32 noundef %7, i32 noundef %8, i32 noundef %9)
  ret i32 %10
}

; Function Attrs: nounwind uwtable
define dso_local i32 @main() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i64, align 8
  %3 = alloca i64, align 8
  %4 = alloca i64, align 8
  %5 = alloca i32, align 4
  %6 = alloca [63 x i8], align 16
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.ssl3_state_st, align 8
  %11 = alloca %struct.evp_cipher_st, align 8
  %12 = alloca %struct.evp_cipher_ctx_st, align 8
  %13 = alloca i8, align 1
  %14 = alloca %struct.ssl_st, align 8
  %15 = alloca ptr, align 8
  %16 = alloca %struct.ssl3_record_st, align 8
  %17 = alloca ptr, align 8
  %18 = alloca i32, align 4
  store i32 0, ptr %1, align 4
  call void @llvm.lifetime.start.p0(i64 8, ptr %2) #4
  call void @llvm.lifetime.start.p0(i64 8, ptr %3) #4
  call void @llvm.lifetime.start.p0(i64 8, ptr %4) #4
  call void @llvm.lifetime.start.p0(i64 4, ptr %5) #4
  call void @llvm.lifetime.start.p0(i64 63, ptr %6) #4
  call void @llvm.lifetime.start.p0(i64 4, ptr %7) #4
  store i32 63, ptr %7, align 4, !tbaa !15
  call void @llvm.lifetime.start.p0(i64 4, ptr %8) #4
  call void @llvm.lifetime.start.p0(i64 4, ptr %9) #4
  call void @llvm.lifetime.start.p0(i64 16, ptr %10) #4
  %19 = getelementptr inbounds %struct.ssl3_state_st, ptr %10, i32 0, i32 0
  %20 = load i64, ptr %3, align 8, !tbaa !9
  store i64 %20, ptr %19, align 8, !tbaa !26
  %21 = getelementptr inbounds %struct.ssl3_state_st, ptr %10, i32 0, i32 1
  call void @llvm.memset.p0.i64(ptr align 8 %21, i8 0, i64 8, i1 false)
  call void @llvm.lifetime.start.p0(i64 8, ptr %11) #4
  %22 = getelementptr inbounds %struct.evp_cipher_st, ptr %11, i32 0, i32 0
  %23 = load i64, ptr %4, align 8, !tbaa !9
  store i64 %23, ptr %22, align 8, !tbaa !31
  call void @llvm.lifetime.start.p0(i64 8, ptr %12) #4
  %24 = getelementptr inbounds %struct.evp_cipher_ctx_st, ptr %12, i32 0, i32 0
  store ptr %11, ptr %24, align 8, !tbaa !29
  call void @llvm.lifetime.start.p0(i64 1, ptr %13) #4
  call void @llvm.lifetime.start.p0(i64 40, ptr %14) #4
  %25 = getelementptr inbounds %struct.ssl_st, ptr %14, i32 0, i32 0
  store ptr %13, ptr %25, align 8, !tbaa !24
  %26 = getelementptr inbounds %struct.ssl_st, ptr %14, i32 0, i32 1
  %27 = load i64, ptr %2, align 8, !tbaa !9
  store i64 %27, ptr %26, align 8, !tbaa !23
  %28 = getelementptr inbounds %struct.ssl_st, ptr %14, i32 0, i32 2
  store ptr %10, ptr %28, align 8, !tbaa !25
  %29 = getelementptr inbounds %struct.ssl_st, ptr %14, i32 0, i32 3
  store ptr %12, ptr %29, align 8, !tbaa !28
  %30 = getelementptr inbounds %struct.ssl_st, ptr %14, i32 0, i32 4
  %31 = load i32, ptr %5, align 4, !tbaa !15
  store i32 %31, ptr %30, align 8, !tbaa !17
  call void @llvm.lifetime.start.p0(i64 8, ptr %15) #4
  store ptr %14, ptr %15, align 8, !tbaa !5
  call void @llvm.lifetime.start.p0(i64 32, ptr %16) #4
  %32 = getelementptr inbounds %struct.ssl3_record_st, ptr %16, i32 0, i32 0
  %33 = load i32, ptr %7, align 4, !tbaa !15
  store i32 %33, ptr %32, align 8, !tbaa !19
  %34 = getelementptr inbounds %struct.ssl3_record_st, ptr %16, i32 0, i32 1
  %35 = getelementptr inbounds [63 x i8], ptr %6, i64 0, i64 0
  store ptr %35, ptr %34, align 8, !tbaa !21
  %36 = getelementptr inbounds %struct.ssl3_record_st, ptr %16, i32 0, i32 2
  store i32 0, ptr %36, align 8, !tbaa !34
  %37 = getelementptr inbounds %struct.ssl3_record_st, ptr %16, i32 0, i32 3
  store ptr null, ptr %37, align 8, !tbaa !22
  call void @llvm.lifetime.start.p0(i64 8, ptr %17) #4
  store ptr %16, ptr %17, align 8, !tbaa !5
  call void @llvm.lifetime.start.p0(i64 4, ptr %18) #4
  %38 = load ptr, ptr %15, align 8, !tbaa !5
  %39 = load ptr, ptr %17, align 8, !tbaa !5
  %40 = load i32, ptr %8, align 4, !tbaa !15
  %41 = load i32, ptr %9, align 4, !tbaa !15
  %42 = call i32 @tls1_cbc_remove_padding(ptr noundef %38, ptr noundef %39, i32 noundef %40, i32 noundef %41)
  store i32 %42, ptr %18, align 4, !tbaa !15
  %43 = load i32, ptr %18, align 4, !tbaa !15
  call void @llvm.lifetime.end.p0(i64 4, ptr %18) #4
  call void @llvm.lifetime.end.p0(i64 8, ptr %17) #4
  call void @llvm.lifetime.end.p0(i64 32, ptr %16) #4
  call void @llvm.lifetime.end.p0(i64 8, ptr %15) #4
  call void @llvm.lifetime.end.p0(i64 40, ptr %14) #4
  call void @llvm.lifetime.end.p0(i64 1, ptr %13) #4
  call void @llvm.lifetime.end.p0(i64 8, ptr %12) #4
  call void @llvm.lifetime.end.p0(i64 8, ptr %11) #4
  call void @llvm.lifetime.end.p0(i64 16, ptr %10) #4
  call void @llvm.lifetime.end.p0(i64 4, ptr %9) #4
  call void @llvm.lifetime.end.p0(i64 4, ptr %8) #4
  call void @llvm.lifetime.end.p0(i64 4, ptr %7) #4
  call void @llvm.lifetime.end.p0(i64 63, ptr %6) #4
  call void @llvm.lifetime.end.p0(i64 4, ptr %5) #4
  call void @llvm.lifetime.end.p0(i64 8, ptr %4) #4
  call void @llvm.lifetime.end.p0(i64 8, ptr %3) #4
  call void @llvm.lifetime.end.p0(i64 8, ptr %2) #4
  ret i32 %43
}

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #3

; Function Attrs: inlinehint nounwind uwtable
define internal i32 @constant_time_lt(i32 noundef %0, i32 noundef %1) #2 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  store i32 %0, ptr %3, align 4, !tbaa !15
  store i32 %1, ptr %4, align 4, !tbaa !15
  %5 = load i32, ptr %3, align 4, !tbaa !15
  %6 = load i32, ptr %3, align 4, !tbaa !15
  %7 = load i32, ptr %4, align 4, !tbaa !15
  %8 = xor i32 %6, %7
  %9 = load i32, ptr %3, align 4, !tbaa !15
  %10 = load i32, ptr %4, align 4, !tbaa !15
  %11 = sub i32 %9, %10
  %12 = load i32, ptr %4, align 4, !tbaa !15
  %13 = xor i32 %11, %12
  %14 = or i32 %8, %13
  %15 = xor i32 %5, %14
  %16 = call i32 @constant_time_msb(i32 noundef %15)
  ret i32 %16
}

; Function Attrs: inlinehint nounwind uwtable
define internal i32 @constant_time_msb(i32 noundef %0) #2 {
  %2 = alloca i32, align 4
  store i32 %0, ptr %2, align 4, !tbaa !15
  %3 = load i32, ptr %2, align 4, !tbaa !15
  %4 = lshr i32 %3, 31
  %5 = sub i32 0, %4
  ret i32 %5
}

; Function Attrs: inlinehint nounwind uwtable
define internal i32 @constant_time_is_zero(i32 noundef %0) #2 {
  %2 = alloca i32, align 4
  store i32 %0, ptr %2, align 4, !tbaa !15
  %3 = load i32, ptr %2, align 4, !tbaa !15
  %4 = xor i32 %3, -1
  %5 = load i32, ptr %2, align 4, !tbaa !15
  %6 = sub i32 %5, 1
  %7 = and i32 %4, %6
  %8 = call i32 @constant_time_msb(i32 noundef %7)
  ret i32 %8
}

; Function Attrs: inlinehint nounwind uwtable
define internal i32 @constant_time_select(i32 noundef %0, i32 noundef %1, i32 noundef %2) #2 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store i32 %0, ptr %4, align 4, !tbaa !15
  store i32 %1, ptr %5, align 4, !tbaa !15
  store i32 %2, ptr %6, align 4, !tbaa !15
  %7 = load i32, ptr %4, align 4, !tbaa !15
  %8 = load i32, ptr %5, align 4, !tbaa !15
  %9 = and i32 %7, %8
  %10 = load i32, ptr %4, align 4, !tbaa !15
  %11 = xor i32 %10, -1
  %12 = load i32, ptr %6, align 4, !tbaa !15
  %13 = and i32 %11, %12
  %14 = or i32 %9, %13
  ret i32 %14
}

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { inlinehint nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #4 = { nounwind }

!llvm.module.flags = !{!0, !1, !2, !3}
!llvm.ident = !{!4}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{!"Ubuntu clang version 19.1.7 (++20250114103320+cd708029e0b2-1~exp1~20250114103432.75)"}
!5 = !{!6, !6, i64 0}
!6 = !{!"any pointer", !7, i64 0}
!7 = !{!"omnipotent char", !8, i64 0}
!8 = !{!"Simple C/C++ TBAA"}
!9 = !{!10, !10, i64 0}
!10 = !{!"long", !7, i64 0}
!11 = !{!7, !7, i64 0}
!12 = distinct !{!12, !13, !14}
!13 = !{!"llvm.loop.mustprogress"}
!14 = !{!"llvm.loop.unroll.disable"}
!15 = !{!16, !16, i64 0}
!16 = !{!"int", !7, i64 0}
!17 = !{!18, !16, i64 32}
!18 = !{!"ssl_st", !6, i64 0, !10, i64 8, !6, i64 16, !6, i64 24, !16, i64 32}
!19 = !{!20, !16, i64 0}
!20 = !{!"ssl3_record_st", !16, i64 0, !6, i64 8, !16, i64 16, !6, i64 24}
!21 = !{!20, !6, i64 8}
!22 = !{!20, !6, i64 24}
!23 = !{!18, !10, i64 8}
!24 = !{!18, !6, i64 0}
!25 = !{!18, !6, i64 16}
!26 = !{!27, !10, i64 0}
!27 = !{!"ssl3_state_st", !10, i64 0, !7, i64 8}
!28 = !{!18, !6, i64 24}
!29 = !{!30, !6, i64 0}
!30 = !{!"evp_cipher_ctx_st", !6, i64 0}
!31 = !{!32, !10, i64 0}
!32 = !{!"evp_cipher_st", !10, i64 0}
!33 = distinct !{!33, !13, !14}
!34 = !{!20, !16, i64 16}
