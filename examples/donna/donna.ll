; ModuleID = 'donna.ll'
source_filename = "donna_wrapper.c"
target datalayout = "e-m:e-p:32:32-p270:32:32-p271:32:32-p272:64:64-f64:32:64-f80:32-n8:16:32-S128"
target triple = "i386-pc-linux-gnu"

; Function Attrs: noinline nounwind optnone
define dso_local i32 @curve25519_donna(i8* %0, i8* %1, i8* %2) #0 {
  %4 = alloca i8*, align 4
  %5 = alloca i8*, align 4
  %6 = alloca i8*, align 4
  %7 = alloca [10 x i64], align 8
  %8 = alloca [10 x i64], align 8
  %9 = alloca [11 x i64], align 8
  %10 = alloca [10 x i64], align 8
  %11 = alloca [32 x i8], align 1
  %12 = alloca i32, align 4
  store i8* %0, i8** %4, align 4
  store i8* %1, i8** %5, align 4
  store i8* %2, i8** %6, align 4
  store i32 0, i32* %12, align 4
  br label %13

13:                                               ; preds = %23, %3
  %14 = load i32, i32* %12, align 4
  %15 = icmp slt i32 %14, 32
  br i1 %15, label %16, label %26

16:                                               ; preds = %13
  %17 = load i8*, i8** %5, align 4
  %18 = load i32, i32* %12, align 4
  %19 = getelementptr inbounds i8, i8* %17, i32 %18
  %20 = load i8, i8* %19, align 1
  %21 = load i32, i32* %12, align 4
  %22 = getelementptr inbounds [32 x i8], [32 x i8]* %11, i32 0, i32 %21
  store i8 %20, i8* %22, align 1
  br label %23

23:                                               ; preds = %16
  %24 = load i32, i32* %12, align 4
  %25 = add nsw i32 %24, 1
  store i32 %25, i32* %12, align 4
  br label %13, !llvm.loop !3

26:                                               ; preds = %13
  %27 = getelementptr inbounds [32 x i8], [32 x i8]* %11, i32 0, i32 0
  %28 = load i8, i8* %27, align 1
  %29 = zext i8 %28 to i32
  %30 = and i32 %29, 248
  %31 = trunc i32 %30 to i8
  store i8 %31, i8* %27, align 1
  %32 = getelementptr inbounds [32 x i8], [32 x i8]* %11, i32 0, i32 31
  %33 = load i8, i8* %32, align 1
  %34 = zext i8 %33 to i32
  %35 = and i32 %34, 127
  %36 = trunc i32 %35 to i8
  store i8 %36, i8* %32, align 1
  %37 = getelementptr inbounds [32 x i8], [32 x i8]* %11, i32 0, i32 31
  %38 = load i8, i8* %37, align 1
  %39 = zext i8 %38 to i32
  %40 = or i32 %39, 64
  %41 = trunc i32 %40 to i8
  store i8 %41, i8* %37, align 1
  %42 = getelementptr inbounds [10 x i64], [10 x i64]* %7, i32 0, i32 0
  %43 = load i8*, i8** %6, align 4
  call void @fexpand(i64* %42, i8* %43)
  %44 = getelementptr inbounds [10 x i64], [10 x i64]* %8, i32 0, i32 0
  %45 = getelementptr inbounds [11 x i64], [11 x i64]* %9, i32 0, i32 0
  %46 = getelementptr inbounds [32 x i8], [32 x i8]* %11, i32 0, i32 0
  %47 = getelementptr inbounds [10 x i64], [10 x i64]* %7, i32 0, i32 0
  call void @cmult(i64* %44, i64* %45, i8* %46, i64* %47)
  %48 = getelementptr inbounds [10 x i64], [10 x i64]* %10, i32 0, i32 0
  %49 = getelementptr inbounds [11 x i64], [11 x i64]* %9, i32 0, i32 0
  call void @crecip(i64* %48, i64* %49)
  %50 = getelementptr inbounds [11 x i64], [11 x i64]* %9, i32 0, i32 0
  %51 = getelementptr inbounds [10 x i64], [10 x i64]* %8, i32 0, i32 0
  %52 = getelementptr inbounds [10 x i64], [10 x i64]* %10, i32 0, i32 0
  call void @fmul(i64* %50, i64* %51, i64* %52)
  %53 = load i8*, i8** %4, align 4
  %54 = getelementptr inbounds [11 x i64], [11 x i64]* %9, i32 0, i32 0
  call void @fcontract(i8* %53, i64* %54)
  ret i32 0
}

; Function Attrs: noinline nounwind optnone
define internal void @fexpand(i64* %0, i8* %1) #0 {
  %3 = alloca i64*, align 4
  %4 = alloca i8*, align 4
  store i64* %0, i64** %3, align 4
  store i8* %1, i8** %4, align 4
  %5 = load i8*, i8** %4, align 4
  %6 = getelementptr inbounds i8, i8* %5, i32 0
  %7 = load i8, i8* %6, align 1
  %8 = zext i8 %7 to i64
  %9 = load i8*, i8** %4, align 4
  %10 = getelementptr inbounds i8, i8* %9, i32 1
  %11 = load i8, i8* %10, align 1
  %12 = zext i8 %11 to i64
  %13 = shl i64 %12, 8
  %14 = or i64 %8, %13
  %15 = load i8*, i8** %4, align 4
  %16 = getelementptr inbounds i8, i8* %15, i32 2
  %17 = load i8, i8* %16, align 1
  %18 = zext i8 %17 to i64
  %19 = shl i64 %18, 16
  %20 = or i64 %14, %19
  %21 = load i8*, i8** %4, align 4
  %22 = getelementptr inbounds i8, i8* %21, i32 3
  %23 = load i8, i8* %22, align 1
  %24 = zext i8 %23 to i64
  %25 = shl i64 %24, 24
  %26 = or i64 %20, %25
  %27 = ashr i64 %26, 0
  %28 = and i64 %27, 67108863
  %29 = load i64*, i64** %3, align 4
  %30 = getelementptr inbounds i64, i64* %29, i32 0
  store i64 %28, i64* %30, align 4
  %31 = load i8*, i8** %4, align 4
  %32 = getelementptr inbounds i8, i8* %31, i32 3
  %33 = load i8, i8* %32, align 1
  %34 = zext i8 %33 to i64
  %35 = load i8*, i8** %4, align 4
  %36 = getelementptr inbounds i8, i8* %35, i32 4
  %37 = load i8, i8* %36, align 1
  %38 = zext i8 %37 to i64
  %39 = shl i64 %38, 8
  %40 = or i64 %34, %39
  %41 = load i8*, i8** %4, align 4
  %42 = getelementptr inbounds i8, i8* %41, i32 5
  %43 = load i8, i8* %42, align 1
  %44 = zext i8 %43 to i64
  %45 = shl i64 %44, 16
  %46 = or i64 %40, %45
  %47 = load i8*, i8** %4, align 4
  %48 = getelementptr inbounds i8, i8* %47, i32 6
  %49 = load i8, i8* %48, align 1
  %50 = zext i8 %49 to i64
  %51 = shl i64 %50, 24
  %52 = or i64 %46, %51
  %53 = ashr i64 %52, 2
  %54 = and i64 %53, 33554431
  %55 = load i64*, i64** %3, align 4
  %56 = getelementptr inbounds i64, i64* %55, i32 1
  store i64 %54, i64* %56, align 4
  %57 = load i8*, i8** %4, align 4
  %58 = getelementptr inbounds i8, i8* %57, i32 6
  %59 = load i8, i8* %58, align 1
  %60 = zext i8 %59 to i64
  %61 = load i8*, i8** %4, align 4
  %62 = getelementptr inbounds i8, i8* %61, i32 7
  %63 = load i8, i8* %62, align 1
  %64 = zext i8 %63 to i64
  %65 = shl i64 %64, 8
  %66 = or i64 %60, %65
  %67 = load i8*, i8** %4, align 4
  %68 = getelementptr inbounds i8, i8* %67, i32 8
  %69 = load i8, i8* %68, align 1
  %70 = zext i8 %69 to i64
  %71 = shl i64 %70, 16
  %72 = or i64 %66, %71
  %73 = load i8*, i8** %4, align 4
  %74 = getelementptr inbounds i8, i8* %73, i32 9
  %75 = load i8, i8* %74, align 1
  %76 = zext i8 %75 to i64
  %77 = shl i64 %76, 24
  %78 = or i64 %72, %77
  %79 = ashr i64 %78, 3
  %80 = and i64 %79, 67108863
  %81 = load i64*, i64** %3, align 4
  %82 = getelementptr inbounds i64, i64* %81, i32 2
  store i64 %80, i64* %82, align 4
  %83 = load i8*, i8** %4, align 4
  %84 = getelementptr inbounds i8, i8* %83, i32 9
  %85 = load i8, i8* %84, align 1
  %86 = zext i8 %85 to i64
  %87 = load i8*, i8** %4, align 4
  %88 = getelementptr inbounds i8, i8* %87, i32 10
  %89 = load i8, i8* %88, align 1
  %90 = zext i8 %89 to i64
  %91 = shl i64 %90, 8
  %92 = or i64 %86, %91
  %93 = load i8*, i8** %4, align 4
  %94 = getelementptr inbounds i8, i8* %93, i32 11
  %95 = load i8, i8* %94, align 1
  %96 = zext i8 %95 to i64
  %97 = shl i64 %96, 16
  %98 = or i64 %92, %97
  %99 = load i8*, i8** %4, align 4
  %100 = getelementptr inbounds i8, i8* %99, i32 12
  %101 = load i8, i8* %100, align 1
  %102 = zext i8 %101 to i64
  %103 = shl i64 %102, 24
  %104 = or i64 %98, %103
  %105 = ashr i64 %104, 5
  %106 = and i64 %105, 33554431
  %107 = load i64*, i64** %3, align 4
  %108 = getelementptr inbounds i64, i64* %107, i32 3
  store i64 %106, i64* %108, align 4
  %109 = load i8*, i8** %4, align 4
  %110 = getelementptr inbounds i8, i8* %109, i32 12
  %111 = load i8, i8* %110, align 1
  %112 = zext i8 %111 to i64
  %113 = load i8*, i8** %4, align 4
  %114 = getelementptr inbounds i8, i8* %113, i32 13
  %115 = load i8, i8* %114, align 1
  %116 = zext i8 %115 to i64
  %117 = shl i64 %116, 8
  %118 = or i64 %112, %117
  %119 = load i8*, i8** %4, align 4
  %120 = getelementptr inbounds i8, i8* %119, i32 14
  %121 = load i8, i8* %120, align 1
  %122 = zext i8 %121 to i64
  %123 = shl i64 %122, 16
  %124 = or i64 %118, %123
  %125 = load i8*, i8** %4, align 4
  %126 = getelementptr inbounds i8, i8* %125, i32 15
  %127 = load i8, i8* %126, align 1
  %128 = zext i8 %127 to i64
  %129 = shl i64 %128, 24
  %130 = or i64 %124, %129
  %131 = ashr i64 %130, 6
  %132 = and i64 %131, 67108863
  %133 = load i64*, i64** %3, align 4
  %134 = getelementptr inbounds i64, i64* %133, i32 4
  store i64 %132, i64* %134, align 4
  %135 = load i8*, i8** %4, align 4
  %136 = getelementptr inbounds i8, i8* %135, i32 16
  %137 = load i8, i8* %136, align 1
  %138 = zext i8 %137 to i64
  %139 = load i8*, i8** %4, align 4
  %140 = getelementptr inbounds i8, i8* %139, i32 17
  %141 = load i8, i8* %140, align 1
  %142 = zext i8 %141 to i64
  %143 = shl i64 %142, 8
  %144 = or i64 %138, %143
  %145 = load i8*, i8** %4, align 4
  %146 = getelementptr inbounds i8, i8* %145, i32 18
  %147 = load i8, i8* %146, align 1
  %148 = zext i8 %147 to i64
  %149 = shl i64 %148, 16
  %150 = or i64 %144, %149
  %151 = load i8*, i8** %4, align 4
  %152 = getelementptr inbounds i8, i8* %151, i32 19
  %153 = load i8, i8* %152, align 1
  %154 = zext i8 %153 to i64
  %155 = shl i64 %154, 24
  %156 = or i64 %150, %155
  %157 = ashr i64 %156, 0
  %158 = and i64 %157, 33554431
  %159 = load i64*, i64** %3, align 4
  %160 = getelementptr inbounds i64, i64* %159, i32 5
  store i64 %158, i64* %160, align 4
  %161 = load i8*, i8** %4, align 4
  %162 = getelementptr inbounds i8, i8* %161, i32 19
  %163 = load i8, i8* %162, align 1
  %164 = zext i8 %163 to i64
  %165 = load i8*, i8** %4, align 4
  %166 = getelementptr inbounds i8, i8* %165, i32 20
  %167 = load i8, i8* %166, align 1
  %168 = zext i8 %167 to i64
  %169 = shl i64 %168, 8
  %170 = or i64 %164, %169
  %171 = load i8*, i8** %4, align 4
  %172 = getelementptr inbounds i8, i8* %171, i32 21
  %173 = load i8, i8* %172, align 1
  %174 = zext i8 %173 to i64
  %175 = shl i64 %174, 16
  %176 = or i64 %170, %175
  %177 = load i8*, i8** %4, align 4
  %178 = getelementptr inbounds i8, i8* %177, i32 22
  %179 = load i8, i8* %178, align 1
  %180 = zext i8 %179 to i64
  %181 = shl i64 %180, 24
  %182 = or i64 %176, %181
  %183 = ashr i64 %182, 1
  %184 = and i64 %183, 67108863
  %185 = load i64*, i64** %3, align 4
  %186 = getelementptr inbounds i64, i64* %185, i32 6
  store i64 %184, i64* %186, align 4
  %187 = load i8*, i8** %4, align 4
  %188 = getelementptr inbounds i8, i8* %187, i32 22
  %189 = load i8, i8* %188, align 1
  %190 = zext i8 %189 to i64
  %191 = load i8*, i8** %4, align 4
  %192 = getelementptr inbounds i8, i8* %191, i32 23
  %193 = load i8, i8* %192, align 1
  %194 = zext i8 %193 to i64
  %195 = shl i64 %194, 8
  %196 = or i64 %190, %195
  %197 = load i8*, i8** %4, align 4
  %198 = getelementptr inbounds i8, i8* %197, i32 24
  %199 = load i8, i8* %198, align 1
  %200 = zext i8 %199 to i64
  %201 = shl i64 %200, 16
  %202 = or i64 %196, %201
  %203 = load i8*, i8** %4, align 4
  %204 = getelementptr inbounds i8, i8* %203, i32 25
  %205 = load i8, i8* %204, align 1
  %206 = zext i8 %205 to i64
  %207 = shl i64 %206, 24
  %208 = or i64 %202, %207
  %209 = ashr i64 %208, 3
  %210 = and i64 %209, 33554431
  %211 = load i64*, i64** %3, align 4
  %212 = getelementptr inbounds i64, i64* %211, i32 7
  store i64 %210, i64* %212, align 4
  %213 = load i8*, i8** %4, align 4
  %214 = getelementptr inbounds i8, i8* %213, i32 25
  %215 = load i8, i8* %214, align 1
  %216 = zext i8 %215 to i64
  %217 = load i8*, i8** %4, align 4
  %218 = getelementptr inbounds i8, i8* %217, i32 26
  %219 = load i8, i8* %218, align 1
  %220 = zext i8 %219 to i64
  %221 = shl i64 %220, 8
  %222 = or i64 %216, %221
  %223 = load i8*, i8** %4, align 4
  %224 = getelementptr inbounds i8, i8* %223, i32 27
  %225 = load i8, i8* %224, align 1
  %226 = zext i8 %225 to i64
  %227 = shl i64 %226, 16
  %228 = or i64 %222, %227
  %229 = load i8*, i8** %4, align 4
  %230 = getelementptr inbounds i8, i8* %229, i32 28
  %231 = load i8, i8* %230, align 1
  %232 = zext i8 %231 to i64
  %233 = shl i64 %232, 24
  %234 = or i64 %228, %233
  %235 = ashr i64 %234, 4
  %236 = and i64 %235, 67108863
  %237 = load i64*, i64** %3, align 4
  %238 = getelementptr inbounds i64, i64* %237, i32 8
  store i64 %236, i64* %238, align 4
  %239 = load i8*, i8** %4, align 4
  %240 = getelementptr inbounds i8, i8* %239, i32 28
  %241 = load i8, i8* %240, align 1
  %242 = zext i8 %241 to i64
  %243 = load i8*, i8** %4, align 4
  %244 = getelementptr inbounds i8, i8* %243, i32 29
  %245 = load i8, i8* %244, align 1
  %246 = zext i8 %245 to i64
  %247 = shl i64 %246, 8
  %248 = or i64 %242, %247
  %249 = load i8*, i8** %4, align 4
  %250 = getelementptr inbounds i8, i8* %249, i32 30
  %251 = load i8, i8* %250, align 1
  %252 = zext i8 %251 to i64
  %253 = shl i64 %252, 16
  %254 = or i64 %248, %253
  %255 = load i8*, i8** %4, align 4
  %256 = getelementptr inbounds i8, i8* %255, i32 31
  %257 = load i8, i8* %256, align 1
  %258 = zext i8 %257 to i64
  %259 = shl i64 %258, 24
  %260 = or i64 %254, %259
  %261 = ashr i64 %260, 6
  %262 = and i64 %261, 33554431
  %263 = load i64*, i64** %3, align 4
  %264 = getelementptr inbounds i64, i64* %263, i32 9
  store i64 %262, i64* %264, align 4
  ret void
}

; Function Attrs: noinline nounwind optnone
define internal void @cmult(i64* %0, i64* %1, i8* %2, i64* %3) #0 {
  %5 = alloca i64*, align 4
  %6 = alloca i64*, align 4
  %7 = alloca i8*, align 4
  %8 = alloca i64*, align 4
  %9 = alloca [19 x i64], align 8
  %10 = alloca [19 x i64], align 8
  %11 = alloca [19 x i64], align 8
  %12 = alloca [19 x i64], align 8
  %13 = alloca i64*, align 4
  %14 = alloca i64*, align 4
  %15 = alloca i64*, align 4
  %16 = alloca i64*, align 4
  %17 = alloca i64*, align 4
  %18 = alloca [19 x i64], align 8
  %19 = alloca [19 x i64], align 8
  %20 = alloca [19 x i64], align 8
  %21 = alloca [19 x i64], align 8
  %22 = alloca i64*, align 4
  %23 = alloca i64*, align 4
  %24 = alloca i64*, align 4
  %25 = alloca i64*, align 4
  %26 = alloca i32, align 4
  %27 = alloca i32, align 4
  %28 = alloca i8, align 1
  %29 = alloca i64, align 8
  store i64* %0, i64** %5, align 4
  store i64* %1, i64** %6, align 4
  store i8* %2, i8** %7, align 4
  store i64* %3, i64** %8, align 4
  %30 = bitcast [19 x i64]* %9 to i8*
  call void @llvm.memset.p0i8.i32(i8* align 8 %30, i8 0, i32 152, i1 false)
  %31 = bitcast [19 x i64]* %10 to i8*
  call void @llvm.memset.p0i8.i32(i8* align 8 %31, i8 0, i32 152, i1 false)
  %32 = bitcast i8* %31 to <{ i64, [18 x i64] }>*
  %33 = getelementptr inbounds <{ i64, [18 x i64] }>, <{ i64, [18 x i64] }>* %32, i32 0, i32 0
  store i64 1, i64* %33, align 8
  %34 = bitcast [19 x i64]* %11 to i8*
  call void @llvm.memset.p0i8.i32(i8* align 8 %34, i8 0, i32 152, i1 false)
  %35 = bitcast i8* %34 to <{ i64, [18 x i64] }>*
  %36 = getelementptr inbounds <{ i64, [18 x i64] }>, <{ i64, [18 x i64] }>* %35, i32 0, i32 0
  store i64 1, i64* %36, align 8
  %37 = bitcast [19 x i64]* %12 to i8*
  call void @llvm.memset.p0i8.i32(i8* align 8 %37, i8 0, i32 152, i1 false)
  %38 = getelementptr inbounds [19 x i64], [19 x i64]* %9, i32 0, i32 0
  store i64* %38, i64** %13, align 4
  %39 = getelementptr inbounds [19 x i64], [19 x i64]* %10, i32 0, i32 0
  store i64* %39, i64** %14, align 4
  %40 = getelementptr inbounds [19 x i64], [19 x i64]* %11, i32 0, i32 0
  store i64* %40, i64** %15, align 4
  %41 = getelementptr inbounds [19 x i64], [19 x i64]* %12, i32 0, i32 0
  store i64* %41, i64** %16, align 4
  %42 = bitcast [19 x i64]* %18 to i8*
  call void @llvm.memset.p0i8.i32(i8* align 8 %42, i8 0, i32 152, i1 false)
  %43 = bitcast [19 x i64]* %19 to i8*
  call void @llvm.memset.p0i8.i32(i8* align 8 %43, i8 0, i32 152, i1 false)
  %44 = bitcast i8* %43 to <{ i64, [18 x i64] }>*
  %45 = getelementptr inbounds <{ i64, [18 x i64] }>, <{ i64, [18 x i64] }>* %44, i32 0, i32 0
  store i64 1, i64* %45, align 8
  %46 = bitcast [19 x i64]* %20 to i8*
  call void @llvm.memset.p0i8.i32(i8* align 8 %46, i8 0, i32 152, i1 false)
  %47 = bitcast [19 x i64]* %21 to i8*
  call void @llvm.memset.p0i8.i32(i8* align 8 %47, i8 0, i32 152, i1 false)
  %48 = bitcast i8* %47 to <{ i64, [18 x i64] }>*
  %49 = getelementptr inbounds <{ i64, [18 x i64] }>, <{ i64, [18 x i64] }>* %48, i32 0, i32 0
  store i64 1, i64* %49, align 8
  %50 = getelementptr inbounds [19 x i64], [19 x i64]* %18, i32 0, i32 0
  store i64* %50, i64** %22, align 4
  %51 = getelementptr inbounds [19 x i64], [19 x i64]* %19, i32 0, i32 0
  store i64* %51, i64** %23, align 4
  %52 = getelementptr inbounds [19 x i64], [19 x i64]* %20, i32 0, i32 0
  store i64* %52, i64** %24, align 4
  %53 = getelementptr inbounds [19 x i64], [19 x i64]* %21, i32 0, i32 0
  store i64* %53, i64** %25, align 4
  %54 = load i64*, i64** %13, align 4
  %55 = bitcast i64* %54 to i8*
  %56 = load i64*, i64** %8, align 4
  %57 = bitcast i64* %56 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* align 4 %55, i8* align 4 %57, i32 80, i1 false)
  store i32 0, i32* %26, align 4
  br label %58

58:                                               ; preds = %116, %4
  %59 = load i32, i32* %26, align 4
  %60 = icmp ult i32 %59, 32
  br i1 %60, label %61, label %119

61:                                               ; preds = %58
  %62 = load i8*, i8** %7, align 4
  %63 = load i32, i32* %26, align 4
  %64 = sub i32 31, %63
  %65 = getelementptr inbounds i8, i8* %62, i32 %64
  %66 = load i8, i8* %65, align 1
  store i8 %66, i8* %28, align 1
  store i32 0, i32* %27, align 4
  br label %67

67:                                               ; preds = %112, %61
  %68 = load i32, i32* %27, align 4
  %69 = icmp ult i32 %68, 8
  br i1 %69, label %70, label %115

70:                                               ; preds = %67
  %71 = load i8, i8* %28, align 1
  %72 = zext i8 %71 to i32
  %73 = ashr i32 %72, 7
  %74 = sext i32 %73 to i64
  store i64 %74, i64* %29, align 8
  %75 = load i64*, i64** %15, align 4
  %76 = load i64*, i64** %13, align 4
  %77 = load i64, i64* %29, align 8
  call void @swap_conditional(i64* %75, i64* %76, i64 %77)
  %78 = load i64*, i64** %16, align 4
  %79 = load i64*, i64** %14, align 4
  %80 = load i64, i64* %29, align 8
  call void @swap_conditional(i64* %78, i64* %79, i64 %80)
  %81 = load i64*, i64** %24, align 4
  %82 = load i64*, i64** %25, align 4
  %83 = load i64*, i64** %22, align 4
  %84 = load i64*, i64** %23, align 4
  %85 = load i64*, i64** %15, align 4
  %86 = load i64*, i64** %16, align 4
  %87 = load i64*, i64** %13, align 4
  %88 = load i64*, i64** %14, align 4
  %89 = load i64*, i64** %8, align 4
  call void @fmonty(i64* %81, i64* %82, i64* %83, i64* %84, i64* %85, i64* %86, i64* %87, i64* %88, i64* %89)
  %90 = load i64*, i64** %24, align 4
  %91 = load i64*, i64** %22, align 4
  %92 = load i64, i64* %29, align 8
  call void @swap_conditional(i64* %90, i64* %91, i64 %92)
  %93 = load i64*, i64** %25, align 4
  %94 = load i64*, i64** %23, align 4
  %95 = load i64, i64* %29, align 8
  call void @swap_conditional(i64* %93, i64* %94, i64 %95)
  %96 = load i64*, i64** %15, align 4
  store i64* %96, i64** %17, align 4
  %97 = load i64*, i64** %24, align 4
  store i64* %97, i64** %15, align 4
  %98 = load i64*, i64** %17, align 4
  store i64* %98, i64** %24, align 4
  %99 = load i64*, i64** %16, align 4
  store i64* %99, i64** %17, align 4
  %100 = load i64*, i64** %25, align 4
  store i64* %100, i64** %16, align 4
  %101 = load i64*, i64** %17, align 4
  store i64* %101, i64** %25, align 4
  %102 = load i64*, i64** %13, align 4
  store i64* %102, i64** %17, align 4
  %103 = load i64*, i64** %22, align 4
  store i64* %103, i64** %13, align 4
  %104 = load i64*, i64** %17, align 4
  store i64* %104, i64** %22, align 4
  %105 = load i64*, i64** %14, align 4
  store i64* %105, i64** %17, align 4
  %106 = load i64*, i64** %23, align 4
  store i64* %106, i64** %14, align 4
  %107 = load i64*, i64** %17, align 4
  store i64* %107, i64** %23, align 4
  %108 = load i8, i8* %28, align 1
  %109 = zext i8 %108 to i32
  %110 = shl i32 %109, 1
  %111 = trunc i32 %110 to i8
  store i8 %111, i8* %28, align 1
  br label %112

112:                                              ; preds = %70
  %113 = load i32, i32* %27, align 4
  %114 = add i32 %113, 1
  store i32 %114, i32* %27, align 4
  br label %67, !llvm.loop !5

115:                                              ; preds = %67
  br label %116

116:                                              ; preds = %115
  %117 = load i32, i32* %26, align 4
  %118 = add i32 %117, 1
  store i32 %118, i32* %26, align 4
  br label %58, !llvm.loop !6

119:                                              ; preds = %58
  %120 = load i64*, i64** %5, align 4
  %121 = bitcast i64* %120 to i8*
  %122 = load i64*, i64** %15, align 4
  %123 = bitcast i64* %122 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* align 4 %121, i8* align 4 %123, i32 80, i1 false)
  %124 = load i64*, i64** %6, align 4
  %125 = bitcast i64* %124 to i8*
  %126 = load i64*, i64** %16, align 4
  %127 = bitcast i64* %126 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* align 4 %125, i8* align 4 %127, i32 80, i1 false)
  ret void
}

; Function Attrs: noinline nounwind optnone
define internal void @crecip(i64* %0, i64* %1) #0 {
  %3 = alloca i64*, align 4
  %4 = alloca i64*, align 4
  %5 = alloca [10 x i64], align 8
  %6 = alloca [10 x i64], align 8
  %7 = alloca [10 x i64], align 8
  %8 = alloca [10 x i64], align 8
  %9 = alloca [10 x i64], align 8
  %10 = alloca [10 x i64], align 8
  %11 = alloca [10 x i64], align 8
  %12 = alloca [10 x i64], align 8
  %13 = alloca [10 x i64], align 8
  %14 = alloca [10 x i64], align 8
  %15 = alloca i32, align 4
  store i64* %0, i64** %3, align 4
  store i64* %1, i64** %4, align 4
  %16 = getelementptr inbounds [10 x i64], [10 x i64]* %5, i32 0, i32 0
  %17 = load i64*, i64** %4, align 4
  call void @fsquare(i64* %16, i64* %17)
  %18 = getelementptr inbounds [10 x i64], [10 x i64]* %14, i32 0, i32 0
  %19 = getelementptr inbounds [10 x i64], [10 x i64]* %5, i32 0, i32 0
  call void @fsquare(i64* %18, i64* %19)
  %20 = getelementptr inbounds [10 x i64], [10 x i64]* %13, i32 0, i32 0
  %21 = getelementptr inbounds [10 x i64], [10 x i64]* %14, i32 0, i32 0
  call void @fsquare(i64* %20, i64* %21)
  %22 = getelementptr inbounds [10 x i64], [10 x i64]* %6, i32 0, i32 0
  %23 = getelementptr inbounds [10 x i64], [10 x i64]* %13, i32 0, i32 0
  %24 = load i64*, i64** %4, align 4
  call void @fmul(i64* %22, i64* %23, i64* %24)
  %25 = getelementptr inbounds [10 x i64], [10 x i64]* %7, i32 0, i32 0
  %26 = getelementptr inbounds [10 x i64], [10 x i64]* %6, i32 0, i32 0
  %27 = getelementptr inbounds [10 x i64], [10 x i64]* %5, i32 0, i32 0
  call void @fmul(i64* %25, i64* %26, i64* %27)
  %28 = getelementptr inbounds [10 x i64], [10 x i64]* %13, i32 0, i32 0
  %29 = getelementptr inbounds [10 x i64], [10 x i64]* %7, i32 0, i32 0
  call void @fsquare(i64* %28, i64* %29)
  %30 = getelementptr inbounds [10 x i64], [10 x i64]* %8, i32 0, i32 0
  %31 = getelementptr inbounds [10 x i64], [10 x i64]* %13, i32 0, i32 0
  %32 = getelementptr inbounds [10 x i64], [10 x i64]* %6, i32 0, i32 0
  call void @fmul(i64* %30, i64* %31, i64* %32)
  %33 = getelementptr inbounds [10 x i64], [10 x i64]* %13, i32 0, i32 0
  %34 = getelementptr inbounds [10 x i64], [10 x i64]* %8, i32 0, i32 0
  call void @fsquare(i64* %33, i64* %34)
  %35 = getelementptr inbounds [10 x i64], [10 x i64]* %14, i32 0, i32 0
  %36 = getelementptr inbounds [10 x i64], [10 x i64]* %13, i32 0, i32 0
  call void @fsquare(i64* %35, i64* %36)
  %37 = getelementptr inbounds [10 x i64], [10 x i64]* %13, i32 0, i32 0
  %38 = getelementptr inbounds [10 x i64], [10 x i64]* %14, i32 0, i32 0
  call void @fsquare(i64* %37, i64* %38)
  %39 = getelementptr inbounds [10 x i64], [10 x i64]* %14, i32 0, i32 0
  %40 = getelementptr inbounds [10 x i64], [10 x i64]* %13, i32 0, i32 0
  call void @fsquare(i64* %39, i64* %40)
  %41 = getelementptr inbounds [10 x i64], [10 x i64]* %13, i32 0, i32 0
  %42 = getelementptr inbounds [10 x i64], [10 x i64]* %14, i32 0, i32 0
  call void @fsquare(i64* %41, i64* %42)
  %43 = getelementptr inbounds [10 x i64], [10 x i64]* %9, i32 0, i32 0
  %44 = getelementptr inbounds [10 x i64], [10 x i64]* %13, i32 0, i32 0
  %45 = getelementptr inbounds [10 x i64], [10 x i64]* %8, i32 0, i32 0
  call void @fmul(i64* %43, i64* %44, i64* %45)
  %46 = getelementptr inbounds [10 x i64], [10 x i64]* %13, i32 0, i32 0
  %47 = getelementptr inbounds [10 x i64], [10 x i64]* %9, i32 0, i32 0
  call void @fsquare(i64* %46, i64* %47)
  %48 = getelementptr inbounds [10 x i64], [10 x i64]* %14, i32 0, i32 0
  %49 = getelementptr inbounds [10 x i64], [10 x i64]* %13, i32 0, i32 0
  call void @fsquare(i64* %48, i64* %49)
  store i32 2, i32* %15, align 4
  br label %50

50:                                               ; preds = %58, %2
  %51 = load i32, i32* %15, align 4
  %52 = icmp slt i32 %51, 10
  br i1 %52, label %53, label %61

53:                                               ; preds = %50
  %54 = getelementptr inbounds [10 x i64], [10 x i64]* %13, i32 0, i32 0
  %55 = getelementptr inbounds [10 x i64], [10 x i64]* %14, i32 0, i32 0
  call void @fsquare(i64* %54, i64* %55)
  %56 = getelementptr inbounds [10 x i64], [10 x i64]* %14, i32 0, i32 0
  %57 = getelementptr inbounds [10 x i64], [10 x i64]* %13, i32 0, i32 0
  call void @fsquare(i64* %56, i64* %57)
  br label %58

58:                                               ; preds = %53
  %59 = load i32, i32* %15, align 4
  %60 = add nsw i32 %59, 2
  store i32 %60, i32* %15, align 4
  br label %50, !llvm.loop !7

61:                                               ; preds = %50
  %62 = getelementptr inbounds [10 x i64], [10 x i64]* %10, i32 0, i32 0
  %63 = getelementptr inbounds [10 x i64], [10 x i64]* %14, i32 0, i32 0
  %64 = getelementptr inbounds [10 x i64], [10 x i64]* %9, i32 0, i32 0
  call void @fmul(i64* %62, i64* %63, i64* %64)
  %65 = getelementptr inbounds [10 x i64], [10 x i64]* %13, i32 0, i32 0
  %66 = getelementptr inbounds [10 x i64], [10 x i64]* %10, i32 0, i32 0
  call void @fsquare(i64* %65, i64* %66)
  %67 = getelementptr inbounds [10 x i64], [10 x i64]* %14, i32 0, i32 0
  %68 = getelementptr inbounds [10 x i64], [10 x i64]* %13, i32 0, i32 0
  call void @fsquare(i64* %67, i64* %68)
  store i32 2, i32* %15, align 4
  br label %69

69:                                               ; preds = %77, %61
  %70 = load i32, i32* %15, align 4
  %71 = icmp slt i32 %70, 20
  br i1 %71, label %72, label %80

72:                                               ; preds = %69
  %73 = getelementptr inbounds [10 x i64], [10 x i64]* %13, i32 0, i32 0
  %74 = getelementptr inbounds [10 x i64], [10 x i64]* %14, i32 0, i32 0
  call void @fsquare(i64* %73, i64* %74)
  %75 = getelementptr inbounds [10 x i64], [10 x i64]* %14, i32 0, i32 0
  %76 = getelementptr inbounds [10 x i64], [10 x i64]* %13, i32 0, i32 0
  call void @fsquare(i64* %75, i64* %76)
  br label %77

77:                                               ; preds = %72
  %78 = load i32, i32* %15, align 4
  %79 = add nsw i32 %78, 2
  store i32 %79, i32* %15, align 4
  br label %69, !llvm.loop !8

80:                                               ; preds = %69
  %81 = getelementptr inbounds [10 x i64], [10 x i64]* %13, i32 0, i32 0
  %82 = getelementptr inbounds [10 x i64], [10 x i64]* %14, i32 0, i32 0
  %83 = getelementptr inbounds [10 x i64], [10 x i64]* %10, i32 0, i32 0
  call void @fmul(i64* %81, i64* %82, i64* %83)
  %84 = getelementptr inbounds [10 x i64], [10 x i64]* %14, i32 0, i32 0
  %85 = getelementptr inbounds [10 x i64], [10 x i64]* %13, i32 0, i32 0
  call void @fsquare(i64* %84, i64* %85)
  %86 = getelementptr inbounds [10 x i64], [10 x i64]* %13, i32 0, i32 0
  %87 = getelementptr inbounds [10 x i64], [10 x i64]* %14, i32 0, i32 0
  call void @fsquare(i64* %86, i64* %87)
  store i32 2, i32* %15, align 4
  br label %88

88:                                               ; preds = %96, %80
  %89 = load i32, i32* %15, align 4
  %90 = icmp slt i32 %89, 10
  br i1 %90, label %91, label %99

91:                                               ; preds = %88
  %92 = getelementptr inbounds [10 x i64], [10 x i64]* %14, i32 0, i32 0
  %93 = getelementptr inbounds [10 x i64], [10 x i64]* %13, i32 0, i32 0
  call void @fsquare(i64* %92, i64* %93)
  %94 = getelementptr inbounds [10 x i64], [10 x i64]* %13, i32 0, i32 0
  %95 = getelementptr inbounds [10 x i64], [10 x i64]* %14, i32 0, i32 0
  call void @fsquare(i64* %94, i64* %95)
  br label %96

96:                                               ; preds = %91
  %97 = load i32, i32* %15, align 4
  %98 = add nsw i32 %97, 2
  store i32 %98, i32* %15, align 4
  br label %88, !llvm.loop !9

99:                                               ; preds = %88
  %100 = getelementptr inbounds [10 x i64], [10 x i64]* %11, i32 0, i32 0
  %101 = getelementptr inbounds [10 x i64], [10 x i64]* %13, i32 0, i32 0
  %102 = getelementptr inbounds [10 x i64], [10 x i64]* %9, i32 0, i32 0
  call void @fmul(i64* %100, i64* %101, i64* %102)
  %103 = getelementptr inbounds [10 x i64], [10 x i64]* %13, i32 0, i32 0
  %104 = getelementptr inbounds [10 x i64], [10 x i64]* %11, i32 0, i32 0
  call void @fsquare(i64* %103, i64* %104)
  %105 = getelementptr inbounds [10 x i64], [10 x i64]* %14, i32 0, i32 0
  %106 = getelementptr inbounds [10 x i64], [10 x i64]* %13, i32 0, i32 0
  call void @fsquare(i64* %105, i64* %106)
  store i32 2, i32* %15, align 4
  br label %107

107:                                              ; preds = %115, %99
  %108 = load i32, i32* %15, align 4
  %109 = icmp slt i32 %108, 50
  br i1 %109, label %110, label %118

110:                                              ; preds = %107
  %111 = getelementptr inbounds [10 x i64], [10 x i64]* %13, i32 0, i32 0
  %112 = getelementptr inbounds [10 x i64], [10 x i64]* %14, i32 0, i32 0
  call void @fsquare(i64* %111, i64* %112)
  %113 = getelementptr inbounds [10 x i64], [10 x i64]* %14, i32 0, i32 0
  %114 = getelementptr inbounds [10 x i64], [10 x i64]* %13, i32 0, i32 0
  call void @fsquare(i64* %113, i64* %114)
  br label %115

115:                                              ; preds = %110
  %116 = load i32, i32* %15, align 4
  %117 = add nsw i32 %116, 2
  store i32 %117, i32* %15, align 4
  br label %107, !llvm.loop !10

118:                                              ; preds = %107
  %119 = getelementptr inbounds [10 x i64], [10 x i64]* %12, i32 0, i32 0
  %120 = getelementptr inbounds [10 x i64], [10 x i64]* %14, i32 0, i32 0
  %121 = getelementptr inbounds [10 x i64], [10 x i64]* %11, i32 0, i32 0
  call void @fmul(i64* %119, i64* %120, i64* %121)
  %122 = getelementptr inbounds [10 x i64], [10 x i64]* %14, i32 0, i32 0
  %123 = getelementptr inbounds [10 x i64], [10 x i64]* %12, i32 0, i32 0
  call void @fsquare(i64* %122, i64* %123)
  %124 = getelementptr inbounds [10 x i64], [10 x i64]* %13, i32 0, i32 0
  %125 = getelementptr inbounds [10 x i64], [10 x i64]* %14, i32 0, i32 0
  call void @fsquare(i64* %124, i64* %125)
  store i32 2, i32* %15, align 4
  br label %126

126:                                              ; preds = %134, %118
  %127 = load i32, i32* %15, align 4
  %128 = icmp slt i32 %127, 100
  br i1 %128, label %129, label %137

129:                                              ; preds = %126
  %130 = getelementptr inbounds [10 x i64], [10 x i64]* %14, i32 0, i32 0
  %131 = getelementptr inbounds [10 x i64], [10 x i64]* %13, i32 0, i32 0
  call void @fsquare(i64* %130, i64* %131)
  %132 = getelementptr inbounds [10 x i64], [10 x i64]* %13, i32 0, i32 0
  %133 = getelementptr inbounds [10 x i64], [10 x i64]* %14, i32 0, i32 0
  call void @fsquare(i64* %132, i64* %133)
  br label %134

134:                                              ; preds = %129
  %135 = load i32, i32* %15, align 4
  %136 = add nsw i32 %135, 2
  store i32 %136, i32* %15, align 4
  br label %126, !llvm.loop !11

137:                                              ; preds = %126
  %138 = getelementptr inbounds [10 x i64], [10 x i64]* %14, i32 0, i32 0
  %139 = getelementptr inbounds [10 x i64], [10 x i64]* %13, i32 0, i32 0
  %140 = getelementptr inbounds [10 x i64], [10 x i64]* %12, i32 0, i32 0
  call void @fmul(i64* %138, i64* %139, i64* %140)
  %141 = getelementptr inbounds [10 x i64], [10 x i64]* %13, i32 0, i32 0
  %142 = getelementptr inbounds [10 x i64], [10 x i64]* %14, i32 0, i32 0
  call void @fsquare(i64* %141, i64* %142)
  %143 = getelementptr inbounds [10 x i64], [10 x i64]* %14, i32 0, i32 0
  %144 = getelementptr inbounds [10 x i64], [10 x i64]* %13, i32 0, i32 0
  call void @fsquare(i64* %143, i64* %144)
  store i32 2, i32* %15, align 4
  br label %145

145:                                              ; preds = %153, %137
  %146 = load i32, i32* %15, align 4
  %147 = icmp slt i32 %146, 50
  br i1 %147, label %148, label %156

148:                                              ; preds = %145
  %149 = getelementptr inbounds [10 x i64], [10 x i64]* %13, i32 0, i32 0
  %150 = getelementptr inbounds [10 x i64], [10 x i64]* %14, i32 0, i32 0
  call void @fsquare(i64* %149, i64* %150)
  %151 = getelementptr inbounds [10 x i64], [10 x i64]* %14, i32 0, i32 0
  %152 = getelementptr inbounds [10 x i64], [10 x i64]* %13, i32 0, i32 0
  call void @fsquare(i64* %151, i64* %152)
  br label %153

153:                                              ; preds = %148
  %154 = load i32, i32* %15, align 4
  %155 = add nsw i32 %154, 2
  store i32 %155, i32* %15, align 4
  br label %145, !llvm.loop !12

156:                                              ; preds = %145
  %157 = getelementptr inbounds [10 x i64], [10 x i64]* %13, i32 0, i32 0
  %158 = getelementptr inbounds [10 x i64], [10 x i64]* %14, i32 0, i32 0
  %159 = getelementptr inbounds [10 x i64], [10 x i64]* %11, i32 0, i32 0
  call void @fmul(i64* %157, i64* %158, i64* %159)
  %160 = getelementptr inbounds [10 x i64], [10 x i64]* %14, i32 0, i32 0
  %161 = getelementptr inbounds [10 x i64], [10 x i64]* %13, i32 0, i32 0
  call void @fsquare(i64* %160, i64* %161)
  %162 = getelementptr inbounds [10 x i64], [10 x i64]* %13, i32 0, i32 0
  %163 = getelementptr inbounds [10 x i64], [10 x i64]* %14, i32 0, i32 0
  call void @fsquare(i64* %162, i64* %163)
  %164 = getelementptr inbounds [10 x i64], [10 x i64]* %14, i32 0, i32 0
  %165 = getelementptr inbounds [10 x i64], [10 x i64]* %13, i32 0, i32 0
  call void @fsquare(i64* %164, i64* %165)
  %166 = getelementptr inbounds [10 x i64], [10 x i64]* %13, i32 0, i32 0
  %167 = getelementptr inbounds [10 x i64], [10 x i64]* %14, i32 0, i32 0
  call void @fsquare(i64* %166, i64* %167)
  %168 = getelementptr inbounds [10 x i64], [10 x i64]* %14, i32 0, i32 0
  %169 = getelementptr inbounds [10 x i64], [10 x i64]* %13, i32 0, i32 0
  call void @fsquare(i64* %168, i64* %169)
  %170 = load i64*, i64** %3, align 4
  %171 = getelementptr inbounds [10 x i64], [10 x i64]* %14, i32 0, i32 0
  %172 = getelementptr inbounds [10 x i64], [10 x i64]* %7, i32 0, i32 0
  call void @fmul(i64* %170, i64* %171, i64* %172)
  ret void
}

; Function Attrs: noinline nounwind optnone
define internal void @fmul(i64* %0, i64* %1, i64* %2) #0 {
  %4 = alloca i64*, align 4
  %5 = alloca i64*, align 4
  %6 = alloca i64*, align 4
  %7 = alloca [19 x i64], align 8
  store i64* %0, i64** %4, align 4
  store i64* %1, i64** %5, align 4
  store i64* %2, i64** %6, align 4
  %8 = getelementptr inbounds [19 x i64], [19 x i64]* %7, i32 0, i32 0
  %9 = load i64*, i64** %5, align 4
  %10 = load i64*, i64** %6, align 4
  call void @fproduct(i64* %8, i64* %9, i64* %10)
  %11 = getelementptr inbounds [19 x i64], [19 x i64]* %7, i32 0, i32 0
  call void @freduce_degree(i64* %11)
  %12 = getelementptr inbounds [19 x i64], [19 x i64]* %7, i32 0, i32 0
  call void @freduce_coefficients(i64* %12)
  %13 = load i64*, i64** %4, align 4
  %14 = bitcast i64* %13 to i8*
  %15 = getelementptr inbounds [19 x i64], [19 x i64]* %7, i32 0, i32 0
  %16 = bitcast i64* %15 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* align 4 %14, i8* align 8 %16, i32 80, i1 false)
  ret void
}

; Function Attrs: noinline nounwind optnone
define internal void @fcontract(i8* %0, i64* %1) #0 {
  %3 = alloca i8*, align 4
  %4 = alloca i64*, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca [10 x i32], align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  store i8* %0, i8** %3, align 4
  store i64* %1, i64** %4, align 4
  store i32 0, i32* %5, align 4
  br label %20

20:                                               ; preds = %31, %2
  %21 = load i32, i32* %5, align 4
  %22 = icmp slt i32 %21, 10
  br i1 %22, label %23, label %34

23:                                               ; preds = %20
  %24 = load i64*, i64** %4, align 4
  %25 = load i32, i32* %5, align 4
  %26 = getelementptr inbounds i64, i64* %24, i32 %25
  %27 = load i64, i64* %26, align 4
  %28 = trunc i64 %27 to i32
  %29 = load i32, i32* %5, align 4
  %30 = getelementptr inbounds [10 x i32], [10 x i32]* %7, i32 0, i32 %29
  store i32 %28, i32* %30, align 4
  br label %31

31:                                               ; preds = %23
  %32 = load i32, i32* %5, align 4
  %33 = add nsw i32 %32, 1
  store i32 %33, i32* %5, align 4
  br label %20, !llvm.loop !13

34:                                               ; preds = %20
  store i32 0, i32* %6, align 4
  br label %35

35:                                               ; preds = %130, %34
  %36 = load i32, i32* %6, align 4
  %37 = icmp slt i32 %36, 2
  br i1 %37, label %38, label %133

38:                                               ; preds = %35
  store i32 0, i32* %5, align 4
  br label %39

39:                                               ; preds = %105, %38
  %40 = load i32, i32* %5, align 4
  %41 = icmp slt i32 %40, 9
  br i1 %41, label %42, label %108

42:                                               ; preds = %39
  %43 = load i32, i32* %5, align 4
  %44 = and i32 %43, 1
  %45 = icmp eq i32 %44, 1
  br i1 %45, label %46, label %75

46:                                               ; preds = %42
  %47 = load i32, i32* %5, align 4
  %48 = getelementptr inbounds [10 x i32], [10 x i32]* %7, i32 0, i32 %47
  %49 = load i32, i32* %48, align 4
  %50 = ashr i32 %49, 31
  store i32 %50, i32* %9, align 4
  %51 = load i32, i32* %5, align 4
  %52 = getelementptr inbounds [10 x i32], [10 x i32]* %7, i32 0, i32 %51
  %53 = load i32, i32* %52, align 4
  %54 = load i32, i32* %9, align 4
  %55 = and i32 %53, %54
  %56 = ashr i32 %55, 25
  %57 = sub nsw i32 0, %56
  store i32 %57, i32* %10, align 4
  %58 = load i32, i32* %5, align 4
  %59 = getelementptr inbounds [10 x i32], [10 x i32]* %7, i32 0, i32 %58
  %60 = load i32, i32* %59, align 4
  %61 = load i32, i32* %10, align 4
  %62 = shl i32 %61, 25
  %63 = add nsw i32 %60, %62
  %64 = load i32, i32* %5, align 4
  %65 = getelementptr inbounds [10 x i32], [10 x i32]* %7, i32 0, i32 %64
  store i32 %63, i32* %65, align 4
  %66 = load i32, i32* %5, align 4
  %67 = add nsw i32 %66, 1
  %68 = getelementptr inbounds [10 x i32], [10 x i32]* %7, i32 0, i32 %67
  %69 = load i32, i32* %68, align 4
  %70 = load i32, i32* %10, align 4
  %71 = sub nsw i32 %69, %70
  %72 = load i32, i32* %5, align 4
  %73 = add nsw i32 %72, 1
  %74 = getelementptr inbounds [10 x i32], [10 x i32]* %7, i32 0, i32 %73
  store i32 %71, i32* %74, align 4
  br label %104

75:                                               ; preds = %42
  %76 = load i32, i32* %5, align 4
  %77 = getelementptr inbounds [10 x i32], [10 x i32]* %7, i32 0, i32 %76
  %78 = load i32, i32* %77, align 4
  %79 = ashr i32 %78, 31
  store i32 %79, i32* %11, align 4
  %80 = load i32, i32* %5, align 4
  %81 = getelementptr inbounds [10 x i32], [10 x i32]* %7, i32 0, i32 %80
  %82 = load i32, i32* %81, align 4
  %83 = load i32, i32* %11, align 4
  %84 = and i32 %82, %83
  %85 = ashr i32 %84, 26
  %86 = sub nsw i32 0, %85
  store i32 %86, i32* %12, align 4
  %87 = load i32, i32* %5, align 4
  %88 = getelementptr inbounds [10 x i32], [10 x i32]* %7, i32 0, i32 %87
  %89 = load i32, i32* %88, align 4
  %90 = load i32, i32* %12, align 4
  %91 = shl i32 %90, 26
  %92 = add nsw i32 %89, %91
  %93 = load i32, i32* %5, align 4
  %94 = getelementptr inbounds [10 x i32], [10 x i32]* %7, i32 0, i32 %93
  store i32 %92, i32* %94, align 4
  %95 = load i32, i32* %5, align 4
  %96 = add nsw i32 %95, 1
  %97 = getelementptr inbounds [10 x i32], [10 x i32]* %7, i32 0, i32 %96
  %98 = load i32, i32* %97, align 4
  %99 = load i32, i32* %12, align 4
  %100 = sub nsw i32 %98, %99
  %101 = load i32, i32* %5, align 4
  %102 = add nsw i32 %101, 1
  %103 = getelementptr inbounds [10 x i32], [10 x i32]* %7, i32 0, i32 %102
  store i32 %100, i32* %103, align 4
  br label %104

104:                                              ; preds = %75, %46
  br label %105

105:                                              ; preds = %104
  %106 = load i32, i32* %5, align 4
  %107 = add nsw i32 %106, 1
  store i32 %107, i32* %5, align 4
  br label %39, !llvm.loop !14

108:                                              ; preds = %39
  %109 = getelementptr inbounds [10 x i32], [10 x i32]* %7, i32 0, i32 9
  %110 = load i32, i32* %109, align 4
  %111 = ashr i32 %110, 31
  store i32 %111, i32* %13, align 4
  %112 = getelementptr inbounds [10 x i32], [10 x i32]* %7, i32 0, i32 9
  %113 = load i32, i32* %112, align 4
  %114 = load i32, i32* %13, align 4
  %115 = and i32 %113, %114
  %116 = ashr i32 %115, 25
  %117 = sub nsw i32 0, %116
  store i32 %117, i32* %14, align 4
  %118 = getelementptr inbounds [10 x i32], [10 x i32]* %7, i32 0, i32 9
  %119 = load i32, i32* %118, align 4
  %120 = load i32, i32* %14, align 4
  %121 = shl i32 %120, 25
  %122 = add nsw i32 %119, %121
  %123 = getelementptr inbounds [10 x i32], [10 x i32]* %7, i32 0, i32 9
  store i32 %122, i32* %123, align 4
  %124 = getelementptr inbounds [10 x i32], [10 x i32]* %7, i32 0, i32 0
  %125 = load i32, i32* %124, align 4
  %126 = load i32, i32* %14, align 4
  %127 = mul nsw i32 %126, 19
  %128 = sub nsw i32 %125, %127
  %129 = getelementptr inbounds [10 x i32], [10 x i32]* %7, i32 0, i32 0
  store i32 %128, i32* %129, align 4
  br label %130

130:                                              ; preds = %108
  %131 = load i32, i32* %6, align 4
  %132 = add nsw i32 %131, 1
  store i32 %132, i32* %6, align 4
  br label %35, !llvm.loop !15

133:                                              ; preds = %35
  %134 = getelementptr inbounds [10 x i32], [10 x i32]* %7, i32 0, i32 0
  %135 = load i32, i32* %134, align 4
  %136 = ashr i32 %135, 31
  store i32 %136, i32* %15, align 4
  %137 = getelementptr inbounds [10 x i32], [10 x i32]* %7, i32 0, i32 0
  %138 = load i32, i32* %137, align 4
  %139 = load i32, i32* %15, align 4
  %140 = and i32 %138, %139
  %141 = ashr i32 %140, 26
  %142 = sub nsw i32 0, %141
  store i32 %142, i32* %16, align 4
  %143 = getelementptr inbounds [10 x i32], [10 x i32]* %7, i32 0, i32 0
  %144 = load i32, i32* %143, align 4
  %145 = load i32, i32* %16, align 4
  %146 = shl i32 %145, 26
  %147 = add nsw i32 %144, %146
  %148 = getelementptr inbounds [10 x i32], [10 x i32]* %7, i32 0, i32 0
  store i32 %147, i32* %148, align 4
  %149 = getelementptr inbounds [10 x i32], [10 x i32]* %7, i32 0, i32 1
  %150 = load i32, i32* %149, align 4
  %151 = load i32, i32* %16, align 4
  %152 = sub nsw i32 %150, %151
  %153 = getelementptr inbounds [10 x i32], [10 x i32]* %7, i32 0, i32 1
  store i32 %152, i32* %153, align 4
  store i32 0, i32* %6, align 4
  br label %154

154:                                              ; preds = %211, %133
  %155 = load i32, i32* %6, align 4
  %156 = icmp slt i32 %155, 2
  br i1 %156, label %157, label %214

157:                                              ; preds = %154
  store i32 0, i32* %5, align 4
  br label %158

158:                                              ; preds = %196, %157
  %159 = load i32, i32* %5, align 4
  %160 = icmp slt i32 %159, 9
  br i1 %160, label %161, label %199

161:                                              ; preds = %158
  %162 = load i32, i32* %5, align 4
  %163 = and i32 %162, 1
  %164 = icmp eq i32 %163, 1
  br i1 %164, label %165, label %180

165:                                              ; preds = %161
  %166 = load i32, i32* %5, align 4
  %167 = getelementptr inbounds [10 x i32], [10 x i32]* %7, i32 0, i32 %166
  %168 = load i32, i32* %167, align 4
  %169 = ashr i32 %168, 25
  store i32 %169, i32* %17, align 4
  %170 = load i32, i32* %5, align 4
  %171 = getelementptr inbounds [10 x i32], [10 x i32]* %7, i32 0, i32 %170
  %172 = load i32, i32* %171, align 4
  %173 = and i32 %172, 33554431
  store i32 %173, i32* %171, align 4
  %174 = load i32, i32* %17, align 4
  %175 = load i32, i32* %5, align 4
  %176 = add nsw i32 %175, 1
  %177 = getelementptr inbounds [10 x i32], [10 x i32]* %7, i32 0, i32 %176
  %178 = load i32, i32* %177, align 4
  %179 = add nsw i32 %178, %174
  store i32 %179, i32* %177, align 4
  br label %195

180:                                              ; preds = %161
  %181 = load i32, i32* %5, align 4
  %182 = getelementptr inbounds [10 x i32], [10 x i32]* %7, i32 0, i32 %181
  %183 = load i32, i32* %182, align 4
  %184 = ashr i32 %183, 26
  store i32 %184, i32* %18, align 4
  %185 = load i32, i32* %5, align 4
  %186 = getelementptr inbounds [10 x i32], [10 x i32]* %7, i32 0, i32 %185
  %187 = load i32, i32* %186, align 4
  %188 = and i32 %187, 67108863
  store i32 %188, i32* %186, align 4
  %189 = load i32, i32* %18, align 4
  %190 = load i32, i32* %5, align 4
  %191 = add nsw i32 %190, 1
  %192 = getelementptr inbounds [10 x i32], [10 x i32]* %7, i32 0, i32 %191
  %193 = load i32, i32* %192, align 4
  %194 = add nsw i32 %193, %189
  store i32 %194, i32* %192, align 4
  br label %195

195:                                              ; preds = %180, %165
  br label %196

196:                                              ; preds = %195
  %197 = load i32, i32* %5, align 4
  %198 = add nsw i32 %197, 1
  store i32 %198, i32* %5, align 4
  br label %158, !llvm.loop !16

199:                                              ; preds = %158
  %200 = getelementptr inbounds [10 x i32], [10 x i32]* %7, i32 0, i32 9
  %201 = load i32, i32* %200, align 4
  %202 = ashr i32 %201, 25
  store i32 %202, i32* %19, align 4
  %203 = getelementptr inbounds [10 x i32], [10 x i32]* %7, i32 0, i32 9
  %204 = load i32, i32* %203, align 4
  %205 = and i32 %204, 33554431
  store i32 %205, i32* %203, align 4
  %206 = load i32, i32* %19, align 4
  %207 = mul nsw i32 19, %206
  %208 = getelementptr inbounds [10 x i32], [10 x i32]* %7, i32 0, i32 0
  %209 = load i32, i32* %208, align 4
  %210 = add nsw i32 %209, %207
  store i32 %210, i32* %208, align 4
  br label %211

211:                                              ; preds = %199
  %212 = load i32, i32* %6, align 4
  %213 = add nsw i32 %212, 1
  store i32 %213, i32* %6, align 4
  br label %154, !llvm.loop !17

214:                                              ; preds = %154
  %215 = getelementptr inbounds [10 x i32], [10 x i32]* %7, i32 0, i32 0
  %216 = load i32, i32* %215, align 4
  %217 = call i32 @s32_gte(i32 %216, i32 67108845)
  store i32 %217, i32* %8, align 4
  store i32 1, i32* %5, align 4
  br label %218

218:                                              ; preds = %240, %214
  %219 = load i32, i32* %5, align 4
  %220 = icmp slt i32 %219, 10
  br i1 %220, label %221, label %243

221:                                              ; preds = %218
  %222 = load i32, i32* %5, align 4
  %223 = and i32 %222, 1
  %224 = icmp eq i32 %223, 1
  br i1 %224, label %225, label %232

225:                                              ; preds = %221
  %226 = load i32, i32* %5, align 4
  %227 = getelementptr inbounds [10 x i32], [10 x i32]* %7, i32 0, i32 %226
  %228 = load i32, i32* %227, align 4
  %229 = call i32 @s32_eq(i32 %228, i32 33554431)
  %230 = load i32, i32* %8, align 4
  %231 = and i32 %230, %229
  store i32 %231, i32* %8, align 4
  br label %239

232:                                              ; preds = %221
  %233 = load i32, i32* %5, align 4
  %234 = getelementptr inbounds [10 x i32], [10 x i32]* %7, i32 0, i32 %233
  %235 = load i32, i32* %234, align 4
  %236 = call i32 @s32_eq(i32 %235, i32 67108863)
  %237 = load i32, i32* %8, align 4
  %238 = and i32 %237, %236
  store i32 %238, i32* %8, align 4
  br label %239

239:                                              ; preds = %232, %225
  br label %240

240:                                              ; preds = %239
  %241 = load i32, i32* %5, align 4
  %242 = add nsw i32 %241, 1
  store i32 %242, i32* %5, align 4
  br label %218, !llvm.loop !18

243:                                              ; preds = %218
  %244 = load i32, i32* %8, align 4
  %245 = and i32 %244, 67108845
  %246 = getelementptr inbounds [10 x i32], [10 x i32]* %7, i32 0, i32 0
  %247 = load i32, i32* %246, align 4
  %248 = sub nsw i32 %247, %245
  store i32 %248, i32* %246, align 4
  store i32 1, i32* %5, align 4
  br label %249

249:                                              ; preds = %271, %243
  %250 = load i32, i32* %5, align 4
  %251 = icmp slt i32 %250, 10
  br i1 %251, label %252, label %274

252:                                              ; preds = %249
  %253 = load i32, i32* %5, align 4
  %254 = and i32 %253, 1
  %255 = icmp eq i32 %254, 1
  br i1 %255, label %256, label %263

256:                                              ; preds = %252
  %257 = load i32, i32* %8, align 4
  %258 = and i32 %257, 33554431
  %259 = load i32, i32* %5, align 4
  %260 = getelementptr inbounds [10 x i32], [10 x i32]* %7, i32 0, i32 %259
  %261 = load i32, i32* %260, align 4
  %262 = sub nsw i32 %261, %258
  store i32 %262, i32* %260, align 4
  br label %270

263:                                              ; preds = %252
  %264 = load i32, i32* %8, align 4
  %265 = and i32 %264, 67108863
  %266 = load i32, i32* %5, align 4
  %267 = getelementptr inbounds [10 x i32], [10 x i32]* %7, i32 0, i32 %266
  %268 = load i32, i32* %267, align 4
  %269 = sub nsw i32 %268, %265
  store i32 %269, i32* %267, align 4
  br label %270

270:                                              ; preds = %263, %256
  br label %271

271:                                              ; preds = %270
  %272 = load i32, i32* %5, align 4
  %273 = add nsw i32 %272, 1
  store i32 %273, i32* %5, align 4
  br label %249, !llvm.loop !19

274:                                              ; preds = %249
  %275 = getelementptr inbounds [10 x i32], [10 x i32]* %7, i32 0, i32 1
  %276 = load i32, i32* %275, align 4
  %277 = shl i32 %276, 2
  store i32 %277, i32* %275, align 4
  %278 = getelementptr inbounds [10 x i32], [10 x i32]* %7, i32 0, i32 2
  %279 = load i32, i32* %278, align 4
  %280 = shl i32 %279, 3
  store i32 %280, i32* %278, align 4
  %281 = getelementptr inbounds [10 x i32], [10 x i32]* %7, i32 0, i32 3
  %282 = load i32, i32* %281, align 4
  %283 = shl i32 %282, 5
  store i32 %283, i32* %281, align 4
  %284 = getelementptr inbounds [10 x i32], [10 x i32]* %7, i32 0, i32 4
  %285 = load i32, i32* %284, align 4
  %286 = shl i32 %285, 6
  store i32 %286, i32* %284, align 4
  %287 = getelementptr inbounds [10 x i32], [10 x i32]* %7, i32 0, i32 6
  %288 = load i32, i32* %287, align 4
  %289 = shl i32 %288, 1
  store i32 %289, i32* %287, align 4
  %290 = getelementptr inbounds [10 x i32], [10 x i32]* %7, i32 0, i32 7
  %291 = load i32, i32* %290, align 4
  %292 = shl i32 %291, 3
  store i32 %292, i32* %290, align 4
  %293 = getelementptr inbounds [10 x i32], [10 x i32]* %7, i32 0, i32 8
  %294 = load i32, i32* %293, align 4
  %295 = shl i32 %294, 4
  store i32 %295, i32* %293, align 4
  %296 = getelementptr inbounds [10 x i32], [10 x i32]* %7, i32 0, i32 9
  %297 = load i32, i32* %296, align 4
  %298 = shl i32 %297, 6
  store i32 %298, i32* %296, align 4
  %299 = load i8*, i8** %3, align 4
  %300 = getelementptr inbounds i8, i8* %299, i32 0
  store i8 0, i8* %300, align 1
  %301 = load i8*, i8** %3, align 4
  %302 = getelementptr inbounds i8, i8* %301, i32 16
  store i8 0, i8* %302, align 1
  %303 = getelementptr inbounds [10 x i32], [10 x i32]* %7, i32 0, i32 0
  %304 = load i32, i32* %303, align 4
  %305 = and i32 %304, 255
  %306 = load i8*, i8** %3, align 4
  %307 = getelementptr inbounds i8, i8* %306, i32 0
  %308 = load i8, i8* %307, align 1
  %309 = zext i8 %308 to i32
  %310 = or i32 %309, %305
  %311 = trunc i32 %310 to i8
  store i8 %311, i8* %307, align 1
  %312 = getelementptr inbounds [10 x i32], [10 x i32]* %7, i32 0, i32 0
  %313 = load i32, i32* %312, align 4
  %314 = ashr i32 %313, 8
  %315 = and i32 %314, 255
  %316 = trunc i32 %315 to i8
  %317 = load i8*, i8** %3, align 4
  %318 = getelementptr inbounds i8, i8* %317, i32 1
  store i8 %316, i8* %318, align 1
  %319 = getelementptr inbounds [10 x i32], [10 x i32]* %7, i32 0, i32 0
  %320 = load i32, i32* %319, align 4
  %321 = ashr i32 %320, 16
  %322 = and i32 %321, 255
  %323 = trunc i32 %322 to i8
  %324 = load i8*, i8** %3, align 4
  %325 = getelementptr inbounds i8, i8* %324, i32 2
  store i8 %323, i8* %325, align 1
  %326 = getelementptr inbounds [10 x i32], [10 x i32]* %7, i32 0, i32 0
  %327 = load i32, i32* %326, align 4
  %328 = ashr i32 %327, 24
  %329 = and i32 %328, 255
  %330 = trunc i32 %329 to i8
  %331 = load i8*, i8** %3, align 4
  %332 = getelementptr inbounds i8, i8* %331, i32 3
  store i8 %330, i8* %332, align 1
  %333 = getelementptr inbounds [10 x i32], [10 x i32]* %7, i32 0, i32 1
  %334 = load i32, i32* %333, align 4
  %335 = and i32 %334, 255
  %336 = load i8*, i8** %3, align 4
  %337 = getelementptr inbounds i8, i8* %336, i32 3
  %338 = load i8, i8* %337, align 1
  %339 = zext i8 %338 to i32
  %340 = or i32 %339, %335
  %341 = trunc i32 %340 to i8
  store i8 %341, i8* %337, align 1
  %342 = getelementptr inbounds [10 x i32], [10 x i32]* %7, i32 0, i32 1
  %343 = load i32, i32* %342, align 4
  %344 = ashr i32 %343, 8
  %345 = and i32 %344, 255
  %346 = trunc i32 %345 to i8
  %347 = load i8*, i8** %3, align 4
  %348 = getelementptr inbounds i8, i8* %347, i32 4
  store i8 %346, i8* %348, align 1
  %349 = getelementptr inbounds [10 x i32], [10 x i32]* %7, i32 0, i32 1
  %350 = load i32, i32* %349, align 4
  %351 = ashr i32 %350, 16
  %352 = and i32 %351, 255
  %353 = trunc i32 %352 to i8
  %354 = load i8*, i8** %3, align 4
  %355 = getelementptr inbounds i8, i8* %354, i32 5
  store i8 %353, i8* %355, align 1
  %356 = getelementptr inbounds [10 x i32], [10 x i32]* %7, i32 0, i32 1
  %357 = load i32, i32* %356, align 4
  %358 = ashr i32 %357, 24
  %359 = and i32 %358, 255
  %360 = trunc i32 %359 to i8
  %361 = load i8*, i8** %3, align 4
  %362 = getelementptr inbounds i8, i8* %361, i32 6
  store i8 %360, i8* %362, align 1
  %363 = getelementptr inbounds [10 x i32], [10 x i32]* %7, i32 0, i32 2
  %364 = load i32, i32* %363, align 4
  %365 = and i32 %364, 255
  %366 = load i8*, i8** %3, align 4
  %367 = getelementptr inbounds i8, i8* %366, i32 6
  %368 = load i8, i8* %367, align 1
  %369 = zext i8 %368 to i32
  %370 = or i32 %369, %365
  %371 = trunc i32 %370 to i8
  store i8 %371, i8* %367, align 1
  %372 = getelementptr inbounds [10 x i32], [10 x i32]* %7, i32 0, i32 2
  %373 = load i32, i32* %372, align 4
  %374 = ashr i32 %373, 8
  %375 = and i32 %374, 255
  %376 = trunc i32 %375 to i8
  %377 = load i8*, i8** %3, align 4
  %378 = getelementptr inbounds i8, i8* %377, i32 7
  store i8 %376, i8* %378, align 1
  %379 = getelementptr inbounds [10 x i32], [10 x i32]* %7, i32 0, i32 2
  %380 = load i32, i32* %379, align 4
  %381 = ashr i32 %380, 16
  %382 = and i32 %381, 255
  %383 = trunc i32 %382 to i8
  %384 = load i8*, i8** %3, align 4
  %385 = getelementptr inbounds i8, i8* %384, i32 8
  store i8 %383, i8* %385, align 1
  %386 = getelementptr inbounds [10 x i32], [10 x i32]* %7, i32 0, i32 2
  %387 = load i32, i32* %386, align 4
  %388 = ashr i32 %387, 24
  %389 = and i32 %388, 255
  %390 = trunc i32 %389 to i8
  %391 = load i8*, i8** %3, align 4
  %392 = getelementptr inbounds i8, i8* %391, i32 9
  store i8 %390, i8* %392, align 1
  %393 = getelementptr inbounds [10 x i32], [10 x i32]* %7, i32 0, i32 3
  %394 = load i32, i32* %393, align 4
  %395 = and i32 %394, 255
  %396 = load i8*, i8** %3, align 4
  %397 = getelementptr inbounds i8, i8* %396, i32 9
  %398 = load i8, i8* %397, align 1
  %399 = zext i8 %398 to i32
  %400 = or i32 %399, %395
  %401 = trunc i32 %400 to i8
  store i8 %401, i8* %397, align 1
  %402 = getelementptr inbounds [10 x i32], [10 x i32]* %7, i32 0, i32 3
  %403 = load i32, i32* %402, align 4
  %404 = ashr i32 %403, 8
  %405 = and i32 %404, 255
  %406 = trunc i32 %405 to i8
  %407 = load i8*, i8** %3, align 4
  %408 = getelementptr inbounds i8, i8* %407, i32 10
  store i8 %406, i8* %408, align 1
  %409 = getelementptr inbounds [10 x i32], [10 x i32]* %7, i32 0, i32 3
  %410 = load i32, i32* %409, align 4
  %411 = ashr i32 %410, 16
  %412 = and i32 %411, 255
  %413 = trunc i32 %412 to i8
  %414 = load i8*, i8** %3, align 4
  %415 = getelementptr inbounds i8, i8* %414, i32 11
  store i8 %413, i8* %415, align 1
  %416 = getelementptr inbounds [10 x i32], [10 x i32]* %7, i32 0, i32 3
  %417 = load i32, i32* %416, align 4
  %418 = ashr i32 %417, 24
  %419 = and i32 %418, 255
  %420 = trunc i32 %419 to i8
  %421 = load i8*, i8** %3, align 4
  %422 = getelementptr inbounds i8, i8* %421, i32 12
  store i8 %420, i8* %422, align 1
  %423 = getelementptr inbounds [10 x i32], [10 x i32]* %7, i32 0, i32 4
  %424 = load i32, i32* %423, align 4
  %425 = and i32 %424, 255
  %426 = load i8*, i8** %3, align 4
  %427 = getelementptr inbounds i8, i8* %426, i32 12
  %428 = load i8, i8* %427, align 1
  %429 = zext i8 %428 to i32
  %430 = or i32 %429, %425
  %431 = trunc i32 %430 to i8
  store i8 %431, i8* %427, align 1
  %432 = getelementptr inbounds [10 x i32], [10 x i32]* %7, i32 0, i32 4
  %433 = load i32, i32* %432, align 4
  %434 = ashr i32 %433, 8
  %435 = and i32 %434, 255
  %436 = trunc i32 %435 to i8
  %437 = load i8*, i8** %3, align 4
  %438 = getelementptr inbounds i8, i8* %437, i32 13
  store i8 %436, i8* %438, align 1
  %439 = getelementptr inbounds [10 x i32], [10 x i32]* %7, i32 0, i32 4
  %440 = load i32, i32* %439, align 4
  %441 = ashr i32 %440, 16
  %442 = and i32 %441, 255
  %443 = trunc i32 %442 to i8
  %444 = load i8*, i8** %3, align 4
  %445 = getelementptr inbounds i8, i8* %444, i32 14
  store i8 %443, i8* %445, align 1
  %446 = getelementptr inbounds [10 x i32], [10 x i32]* %7, i32 0, i32 4
  %447 = load i32, i32* %446, align 4
  %448 = ashr i32 %447, 24
  %449 = and i32 %448, 255
  %450 = trunc i32 %449 to i8
  %451 = load i8*, i8** %3, align 4
  %452 = getelementptr inbounds i8, i8* %451, i32 15
  store i8 %450, i8* %452, align 1
  %453 = getelementptr inbounds [10 x i32], [10 x i32]* %7, i32 0, i32 5
  %454 = load i32, i32* %453, align 4
  %455 = and i32 %454, 255
  %456 = load i8*, i8** %3, align 4
  %457 = getelementptr inbounds i8, i8* %456, i32 16
  %458 = load i8, i8* %457, align 1
  %459 = zext i8 %458 to i32
  %460 = or i32 %459, %455
  %461 = trunc i32 %460 to i8
  store i8 %461, i8* %457, align 1
  %462 = getelementptr inbounds [10 x i32], [10 x i32]* %7, i32 0, i32 5
  %463 = load i32, i32* %462, align 4
  %464 = ashr i32 %463, 8
  %465 = and i32 %464, 255
  %466 = trunc i32 %465 to i8
  %467 = load i8*, i8** %3, align 4
  %468 = getelementptr inbounds i8, i8* %467, i32 17
  store i8 %466, i8* %468, align 1
  %469 = getelementptr inbounds [10 x i32], [10 x i32]* %7, i32 0, i32 5
  %470 = load i32, i32* %469, align 4
  %471 = ashr i32 %470, 16
  %472 = and i32 %471, 255
  %473 = trunc i32 %472 to i8
  %474 = load i8*, i8** %3, align 4
  %475 = getelementptr inbounds i8, i8* %474, i32 18
  store i8 %473, i8* %475, align 1
  %476 = getelementptr inbounds [10 x i32], [10 x i32]* %7, i32 0, i32 5
  %477 = load i32, i32* %476, align 4
  %478 = ashr i32 %477, 24
  %479 = and i32 %478, 255
  %480 = trunc i32 %479 to i8
  %481 = load i8*, i8** %3, align 4
  %482 = getelementptr inbounds i8, i8* %481, i32 19
  store i8 %480, i8* %482, align 1
  %483 = getelementptr inbounds [10 x i32], [10 x i32]* %7, i32 0, i32 6
  %484 = load i32, i32* %483, align 4
  %485 = and i32 %484, 255
  %486 = load i8*, i8** %3, align 4
  %487 = getelementptr inbounds i8, i8* %486, i32 19
  %488 = load i8, i8* %487, align 1
  %489 = zext i8 %488 to i32
  %490 = or i32 %489, %485
  %491 = trunc i32 %490 to i8
  store i8 %491, i8* %487, align 1
  %492 = getelementptr inbounds [10 x i32], [10 x i32]* %7, i32 0, i32 6
  %493 = load i32, i32* %492, align 4
  %494 = ashr i32 %493, 8
  %495 = and i32 %494, 255
  %496 = trunc i32 %495 to i8
  %497 = load i8*, i8** %3, align 4
  %498 = getelementptr inbounds i8, i8* %497, i32 20
  store i8 %496, i8* %498, align 1
  %499 = getelementptr inbounds [10 x i32], [10 x i32]* %7, i32 0, i32 6
  %500 = load i32, i32* %499, align 4
  %501 = ashr i32 %500, 16
  %502 = and i32 %501, 255
  %503 = trunc i32 %502 to i8
  %504 = load i8*, i8** %3, align 4
  %505 = getelementptr inbounds i8, i8* %504, i32 21
  store i8 %503, i8* %505, align 1
  %506 = getelementptr inbounds [10 x i32], [10 x i32]* %7, i32 0, i32 6
  %507 = load i32, i32* %506, align 4
  %508 = ashr i32 %507, 24
  %509 = and i32 %508, 255
  %510 = trunc i32 %509 to i8
  %511 = load i8*, i8** %3, align 4
  %512 = getelementptr inbounds i8, i8* %511, i32 22
  store i8 %510, i8* %512, align 1
  %513 = getelementptr inbounds [10 x i32], [10 x i32]* %7, i32 0, i32 7
  %514 = load i32, i32* %513, align 4
  %515 = and i32 %514, 255
  %516 = load i8*, i8** %3, align 4
  %517 = getelementptr inbounds i8, i8* %516, i32 22
  %518 = load i8, i8* %517, align 1
  %519 = zext i8 %518 to i32
  %520 = or i32 %519, %515
  %521 = trunc i32 %520 to i8
  store i8 %521, i8* %517, align 1
  %522 = getelementptr inbounds [10 x i32], [10 x i32]* %7, i32 0, i32 7
  %523 = load i32, i32* %522, align 4
  %524 = ashr i32 %523, 8
  %525 = and i32 %524, 255
  %526 = trunc i32 %525 to i8
  %527 = load i8*, i8** %3, align 4
  %528 = getelementptr inbounds i8, i8* %527, i32 23
  store i8 %526, i8* %528, align 1
  %529 = getelementptr inbounds [10 x i32], [10 x i32]* %7, i32 0, i32 7
  %530 = load i32, i32* %529, align 4
  %531 = ashr i32 %530, 16
  %532 = and i32 %531, 255
  %533 = trunc i32 %532 to i8
  %534 = load i8*, i8** %3, align 4
  %535 = getelementptr inbounds i8, i8* %534, i32 24
  store i8 %533, i8* %535, align 1
  %536 = getelementptr inbounds [10 x i32], [10 x i32]* %7, i32 0, i32 7
  %537 = load i32, i32* %536, align 4
  %538 = ashr i32 %537, 24
  %539 = and i32 %538, 255
  %540 = trunc i32 %539 to i8
  %541 = load i8*, i8** %3, align 4
  %542 = getelementptr inbounds i8, i8* %541, i32 25
  store i8 %540, i8* %542, align 1
  %543 = getelementptr inbounds [10 x i32], [10 x i32]* %7, i32 0, i32 8
  %544 = load i32, i32* %543, align 4
  %545 = and i32 %544, 255
  %546 = load i8*, i8** %3, align 4
  %547 = getelementptr inbounds i8, i8* %546, i32 25
  %548 = load i8, i8* %547, align 1
  %549 = zext i8 %548 to i32
  %550 = or i32 %549, %545
  %551 = trunc i32 %550 to i8
  store i8 %551, i8* %547, align 1
  %552 = getelementptr inbounds [10 x i32], [10 x i32]* %7, i32 0, i32 8
  %553 = load i32, i32* %552, align 4
  %554 = ashr i32 %553, 8
  %555 = and i32 %554, 255
  %556 = trunc i32 %555 to i8
  %557 = load i8*, i8** %3, align 4
  %558 = getelementptr inbounds i8, i8* %557, i32 26
  store i8 %556, i8* %558, align 1
  %559 = getelementptr inbounds [10 x i32], [10 x i32]* %7, i32 0, i32 8
  %560 = load i32, i32* %559, align 4
  %561 = ashr i32 %560, 16
  %562 = and i32 %561, 255
  %563 = trunc i32 %562 to i8
  %564 = load i8*, i8** %3, align 4
  %565 = getelementptr inbounds i8, i8* %564, i32 27
  store i8 %563, i8* %565, align 1
  %566 = getelementptr inbounds [10 x i32], [10 x i32]* %7, i32 0, i32 8
  %567 = load i32, i32* %566, align 4
  %568 = ashr i32 %567, 24
  %569 = and i32 %568, 255
  %570 = trunc i32 %569 to i8
  %571 = load i8*, i8** %3, align 4
  %572 = getelementptr inbounds i8, i8* %571, i32 28
  store i8 %570, i8* %572, align 1
  %573 = getelementptr inbounds [10 x i32], [10 x i32]* %7, i32 0, i32 9
  %574 = load i32, i32* %573, align 4
  %575 = and i32 %574, 255
  %576 = load i8*, i8** %3, align 4
  %577 = getelementptr inbounds i8, i8* %576, i32 28
  %578 = load i8, i8* %577, align 1
  %579 = zext i8 %578 to i32
  %580 = or i32 %579, %575
  %581 = trunc i32 %580 to i8
  store i8 %581, i8* %577, align 1
  %582 = getelementptr inbounds [10 x i32], [10 x i32]* %7, i32 0, i32 9
  %583 = load i32, i32* %582, align 4
  %584 = ashr i32 %583, 8
  %585 = and i32 %584, 255
  %586 = trunc i32 %585 to i8
  %587 = load i8*, i8** %3, align 4
  %588 = getelementptr inbounds i8, i8* %587, i32 29
  store i8 %586, i8* %588, align 1
  %589 = getelementptr inbounds [10 x i32], [10 x i32]* %7, i32 0, i32 9
  %590 = load i32, i32* %589, align 4
  %591 = ashr i32 %590, 16
  %592 = and i32 %591, 255
  %593 = trunc i32 %592 to i8
  %594 = load i8*, i8** %3, align 4
  %595 = getelementptr inbounds i8, i8* %594, i32 30
  store i8 %593, i8* %595, align 1
  %596 = getelementptr inbounds [10 x i32], [10 x i32]* %7, i32 0, i32 9
  %597 = load i32, i32* %596, align 4
  %598 = ashr i32 %597, 24
  %599 = and i32 %598, 255
  %600 = trunc i32 %599 to i8
  %601 = load i8*, i8** %3, align 4
  %602 = getelementptr inbounds i8, i8* %601, i32 31
  store i8 %600, i8* %602, align 1
  ret void
}

; Function Attrs: noinline nounwind optnone
define dso_local i32 @main() #0 {
  %1 = alloca i32, align 4
  %2 = alloca [32 x i8], align 1
  %3 = alloca [32 x i8], align 1
  %4 = alloca [32 x i8], align 1
  %5 = alloca i32, align 4
  store i32 0, i32* %1, align 4
  %6 = getelementptr inbounds [32 x i8], [32 x i8]* %2, i32 0, i32 0
  call void @high_input_32(i8* %6)
  %7 = getelementptr inbounds [32 x i8], [32 x i8]* %3, i32 0, i32 0
  call void @high_input_32(i8* %7)
  %8 = getelementptr inbounds [32 x i8], [32 x i8]* %4, i32 0, i32 0
  call void @low_input_32(i8* %8)
  %9 = getelementptr inbounds [32 x i8], [32 x i8]* %2, i32 0, i32 0
  %10 = getelementptr inbounds [32 x i8], [32 x i8]* %3, i32 0, i32 0
  %11 = getelementptr inbounds [32 x i8], [32 x i8]* %4, i32 0, i32 0
  %12 = call i32 @curve25519_donna(i8* %9, i8* %10, i8* %11)
  store i32 %12, i32* %5, align 4
  %13 = load i32, i32* %5, align 4
  ret i32 %13
}

declare dso_local void @high_input_32(i8*) #1

declare dso_local void @low_input_32(i8*) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i32(i8* nocapture writeonly, i8, i32, i1 immarg) #2

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i32(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i32, i1 immarg) #2

; Function Attrs: noinline nounwind optnone
define internal void @swap_conditional(i64* %0, i64* %1, i64 %2) #0 {
  %4 = alloca i64*, align 4
  %5 = alloca i64*, align 4
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store i64* %0, i64** %4, align 4
  store i64* %1, i64** %5, align 4
  store i64 %2, i64* %6, align 8
  %10 = load i64, i64* %6, align 8
  %11 = sub nsw i64 0, %10
  %12 = trunc i64 %11 to i32
  store i32 %12, i32* %8, align 4
  store i32 0, i32* %7, align 4
  br label %13

13:                                               ; preds = %52, %3
  %14 = load i32, i32* %7, align 4
  %15 = icmp ult i32 %14, 10
  br i1 %15, label %16, label %55

16:                                               ; preds = %13
  %17 = load i32, i32* %8, align 4
  %18 = load i64*, i64** %4, align 4
  %19 = load i32, i32* %7, align 4
  %20 = getelementptr inbounds i64, i64* %18, i32 %19
  %21 = load i64, i64* %20, align 4
  %22 = trunc i64 %21 to i32
  %23 = load i64*, i64** %5, align 4
  %24 = load i32, i32* %7, align 4
  %25 = getelementptr inbounds i64, i64* %23, i32 %24
  %26 = load i64, i64* %25, align 4
  %27 = trunc i64 %26 to i32
  %28 = xor i32 %22, %27
  %29 = and i32 %17, %28
  store i32 %29, i32* %9, align 4
  %30 = load i64*, i64** %4, align 4
  %31 = load i32, i32* %7, align 4
  %32 = getelementptr inbounds i64, i64* %30, i32 %31
  %33 = load i64, i64* %32, align 4
  %34 = trunc i64 %33 to i32
  %35 = load i32, i32* %9, align 4
  %36 = xor i32 %34, %35
  %37 = sext i32 %36 to i64
  %38 = load i64*, i64** %4, align 4
  %39 = load i32, i32* %7, align 4
  %40 = getelementptr inbounds i64, i64* %38, i32 %39
  store i64 %37, i64* %40, align 4
  %41 = load i64*, i64** %5, align 4
  %42 = load i32, i32* %7, align 4
  %43 = getelementptr inbounds i64, i64* %41, i32 %42
  %44 = load i64, i64* %43, align 4
  %45 = trunc i64 %44 to i32
  %46 = load i32, i32* %9, align 4
  %47 = xor i32 %45, %46
  %48 = sext i32 %47 to i64
  %49 = load i64*, i64** %5, align 4
  %50 = load i32, i32* %7, align 4
  %51 = getelementptr inbounds i64, i64* %49, i32 %50
  store i64 %48, i64* %51, align 4
  br label %52

52:                                               ; preds = %16
  %53 = load i32, i32* %7, align 4
  %54 = add i32 %53, 1
  store i32 %54, i32* %7, align 4
  br label %13, !llvm.loop !20

55:                                               ; preds = %13
  ret void
}

; Function Attrs: noinline nounwind optnone
define internal void @fmonty(i64* %0, i64* %1, i64* %2, i64* %3, i64* %4, i64* %5, i64* %6, i64* %7, i64* %8) #0 {
  %10 = alloca i64*, align 4
  %11 = alloca i64*, align 4
  %12 = alloca i64*, align 4
  %13 = alloca i64*, align 4
  %14 = alloca i64*, align 4
  %15 = alloca i64*, align 4
  %16 = alloca i64*, align 4
  %17 = alloca i64*, align 4
  %18 = alloca i64*, align 4
  %19 = alloca [10 x i64], align 8
  %20 = alloca [10 x i64], align 8
  %21 = alloca [19 x i64], align 8
  %22 = alloca [19 x i64], align 8
  %23 = alloca [19 x i64], align 8
  %24 = alloca [19 x i64], align 8
  %25 = alloca [19 x i64], align 8
  %26 = alloca [19 x i64], align 8
  %27 = alloca [19 x i64], align 8
  store i64* %0, i64** %10, align 4
  store i64* %1, i64** %11, align 4
  store i64* %2, i64** %12, align 4
  store i64* %3, i64** %13, align 4
  store i64* %4, i64** %14, align 4
  store i64* %5, i64** %15, align 4
  store i64* %6, i64** %16, align 4
  store i64* %7, i64** %17, align 4
  store i64* %8, i64** %18, align 4
  %28 = getelementptr inbounds [10 x i64], [10 x i64]* %19, i32 0, i32 0
  %29 = bitcast i64* %28 to i8*
  %30 = load i64*, i64** %14, align 4
  %31 = bitcast i64* %30 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* align 8 %29, i8* align 4 %31, i32 80, i1 false)
  %32 = load i64*, i64** %14, align 4
  %33 = load i64*, i64** %15, align 4
  call void @fsum(i64* %32, i64* %33)
  %34 = load i64*, i64** %15, align 4
  %35 = getelementptr inbounds [10 x i64], [10 x i64]* %19, i32 0, i32 0
  call void @fdifference(i64* %34, i64* %35)
  %36 = getelementptr inbounds [10 x i64], [10 x i64]* %20, i32 0, i32 0
  %37 = bitcast i64* %36 to i8*
  %38 = load i64*, i64** %16, align 4
  %39 = bitcast i64* %38 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* align 8 %37, i8* align 4 %39, i32 80, i1 false)
  %40 = load i64*, i64** %16, align 4
  %41 = load i64*, i64** %17, align 4
  call void @fsum(i64* %40, i64* %41)
  %42 = load i64*, i64** %17, align 4
  %43 = getelementptr inbounds [10 x i64], [10 x i64]* %20, i32 0, i32 0
  call void @fdifference(i64* %42, i64* %43)
  %44 = getelementptr inbounds [19 x i64], [19 x i64]* %24, i32 0, i32 0
  %45 = load i64*, i64** %16, align 4
  %46 = load i64*, i64** %15, align 4
  call void @fproduct(i64* %44, i64* %45, i64* %46)
  %47 = getelementptr inbounds [19 x i64], [19 x i64]* %25, i32 0, i32 0
  %48 = load i64*, i64** %14, align 4
  %49 = load i64*, i64** %17, align 4
  call void @fproduct(i64* %47, i64* %48, i64* %49)
  %50 = getelementptr inbounds [19 x i64], [19 x i64]* %24, i32 0, i32 0
  call void @freduce_degree(i64* %50)
  %51 = getelementptr inbounds [19 x i64], [19 x i64]* %24, i32 0, i32 0
  call void @freduce_coefficients(i64* %51)
  %52 = getelementptr inbounds [19 x i64], [19 x i64]* %25, i32 0, i32 0
  call void @freduce_degree(i64* %52)
  %53 = getelementptr inbounds [19 x i64], [19 x i64]* %25, i32 0, i32 0
  call void @freduce_coefficients(i64* %53)
  %54 = getelementptr inbounds [10 x i64], [10 x i64]* %20, i32 0, i32 0
  %55 = bitcast i64* %54 to i8*
  %56 = getelementptr inbounds [19 x i64], [19 x i64]* %24, i32 0, i32 0
  %57 = bitcast i64* %56 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* align 8 %55, i8* align 8 %57, i32 80, i1 false)
  %58 = getelementptr inbounds [19 x i64], [19 x i64]* %24, i32 0, i32 0
  %59 = getelementptr inbounds [19 x i64], [19 x i64]* %25, i32 0, i32 0
  call void @fsum(i64* %58, i64* %59)
  %60 = getelementptr inbounds [19 x i64], [19 x i64]* %25, i32 0, i32 0
  %61 = getelementptr inbounds [10 x i64], [10 x i64]* %20, i32 0, i32 0
  call void @fdifference(i64* %60, i64* %61)
  %62 = getelementptr inbounds [19 x i64], [19 x i64]* %27, i32 0, i32 0
  %63 = getelementptr inbounds [19 x i64], [19 x i64]* %24, i32 0, i32 0
  call void @fsquare(i64* %62, i64* %63)
  %64 = getelementptr inbounds [19 x i64], [19 x i64]* %26, i32 0, i32 0
  %65 = getelementptr inbounds [19 x i64], [19 x i64]* %25, i32 0, i32 0
  call void @fsquare(i64* %64, i64* %65)
  %66 = getelementptr inbounds [19 x i64], [19 x i64]* %25, i32 0, i32 0
  %67 = getelementptr inbounds [19 x i64], [19 x i64]* %26, i32 0, i32 0
  %68 = load i64*, i64** %18, align 4
  call void @fproduct(i64* %66, i64* %67, i64* %68)
  %69 = getelementptr inbounds [19 x i64], [19 x i64]* %25, i32 0, i32 0
  call void @freduce_degree(i64* %69)
  %70 = getelementptr inbounds [19 x i64], [19 x i64]* %25, i32 0, i32 0
  call void @freduce_coefficients(i64* %70)
  %71 = load i64*, i64** %12, align 4
  %72 = bitcast i64* %71 to i8*
  %73 = getelementptr inbounds [19 x i64], [19 x i64]* %27, i32 0, i32 0
  %74 = bitcast i64* %73 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* align 4 %72, i8* align 8 %74, i32 80, i1 false)
  %75 = load i64*, i64** %13, align 4
  %76 = bitcast i64* %75 to i8*
  %77 = getelementptr inbounds [19 x i64], [19 x i64]* %25, i32 0, i32 0
  %78 = bitcast i64* %77 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* align 4 %76, i8* align 8 %78, i32 80, i1 false)
  %79 = getelementptr inbounds [19 x i64], [19 x i64]* %22, i32 0, i32 0
  %80 = load i64*, i64** %14, align 4
  call void @fsquare(i64* %79, i64* %80)
  %81 = getelementptr inbounds [19 x i64], [19 x i64]* %23, i32 0, i32 0
  %82 = load i64*, i64** %15, align 4
  call void @fsquare(i64* %81, i64* %82)
  %83 = load i64*, i64** %10, align 4
  %84 = getelementptr inbounds [19 x i64], [19 x i64]* %22, i32 0, i32 0
  %85 = getelementptr inbounds [19 x i64], [19 x i64]* %23, i32 0, i32 0
  call void @fproduct(i64* %83, i64* %84, i64* %85)
  %86 = load i64*, i64** %10, align 4
  call void @freduce_degree(i64* %86)
  %87 = load i64*, i64** %10, align 4
  call void @freduce_coefficients(i64* %87)
  %88 = getelementptr inbounds [19 x i64], [19 x i64]* %23, i32 0, i32 0
  %89 = getelementptr inbounds [19 x i64], [19 x i64]* %22, i32 0, i32 0
  call void @fdifference(i64* %88, i64* %89)
  %90 = getelementptr inbounds [19 x i64], [19 x i64]* %21, i32 0, i32 0
  %91 = getelementptr inbounds i64, i64* %90, i32 10
  %92 = bitcast i64* %91 to i8*
  call void @llvm.memset.p0i8.i32(i8* align 4 %92, i8 0, i32 72, i1 false)
  %93 = getelementptr inbounds [19 x i64], [19 x i64]* %21, i32 0, i32 0
  %94 = getelementptr inbounds [19 x i64], [19 x i64]* %23, i32 0, i32 0
  call void @fscalar_product(i64* %93, i64* %94, i64 121665)
  %95 = getelementptr inbounds [19 x i64], [19 x i64]* %21, i32 0, i32 0
  call void @freduce_coefficients(i64* %95)
  %96 = getelementptr inbounds [19 x i64], [19 x i64]* %21, i32 0, i32 0
  %97 = getelementptr inbounds [19 x i64], [19 x i64]* %22, i32 0, i32 0
  call void @fsum(i64* %96, i64* %97)
  %98 = load i64*, i64** %11, align 4
  %99 = getelementptr inbounds [19 x i64], [19 x i64]* %23, i32 0, i32 0
  %100 = getelementptr inbounds [19 x i64], [19 x i64]* %21, i32 0, i32 0
  call void @fproduct(i64* %98, i64* %99, i64* %100)
  %101 = load i64*, i64** %11, align 4
  call void @freduce_degree(i64* %101)
  %102 = load i64*, i64** %11, align 4
  call void @freduce_coefficients(i64* %102)
  ret void
}

; Function Attrs: noinline nounwind optnone
define internal void @fsum(i64* %0, i64* %1) #0 {
  %3 = alloca i64*, align 4
  %4 = alloca i64*, align 4
  %5 = alloca i32, align 4
  store i64* %0, i64** %3, align 4
  store i64* %1, i64** %4, align 4
  store i32 0, i32* %5, align 4
  br label %6

6:                                                ; preds = %40, %2
  %7 = load i32, i32* %5, align 4
  %8 = icmp ult i32 %7, 10
  br i1 %8, label %9, label %43

9:                                                ; preds = %6
  %10 = load i64*, i64** %3, align 4
  %11 = load i32, i32* %5, align 4
  %12 = add i32 0, %11
  %13 = getelementptr inbounds i64, i64* %10, i32 %12
  %14 = load i64, i64* %13, align 4
  %15 = load i64*, i64** %4, align 4
  %16 = load i32, i32* %5, align 4
  %17 = add i32 0, %16
  %18 = getelementptr inbounds i64, i64* %15, i32 %17
  %19 = load i64, i64* %18, align 4
  %20 = add nsw i64 %14, %19
  %21 = load i64*, i64** %3, align 4
  %22 = load i32, i32* %5, align 4
  %23 = add i32 0, %22
  %24 = getelementptr inbounds i64, i64* %21, i32 %23
  store i64 %20, i64* %24, align 4
  %25 = load i64*, i64** %3, align 4
  %26 = load i32, i32* %5, align 4
  %27 = add i32 1, %26
  %28 = getelementptr inbounds i64, i64* %25, i32 %27
  %29 = load i64, i64* %28, align 4
  %30 = load i64*, i64** %4, align 4
  %31 = load i32, i32* %5, align 4
  %32 = add i32 1, %31
  %33 = getelementptr inbounds i64, i64* %30, i32 %32
  %34 = load i64, i64* %33, align 4
  %35 = add nsw i64 %29, %34
  %36 = load i64*, i64** %3, align 4
  %37 = load i32, i32* %5, align 4
  %38 = add i32 1, %37
  %39 = getelementptr inbounds i64, i64* %36, i32 %38
  store i64 %35, i64* %39, align 4
  br label %40

40:                                               ; preds = %9
  %41 = load i32, i32* %5, align 4
  %42 = add i32 %41, 2
  store i32 %42, i32* %5, align 4
  br label %6, !llvm.loop !21

43:                                               ; preds = %6
  ret void
}

; Function Attrs: noinline nounwind optnone
define internal void @fdifference(i64* %0, i64* %1) #0 {
  %3 = alloca i64*, align 4
  %4 = alloca i64*, align 4
  %5 = alloca i32, align 4
  store i64* %0, i64** %3, align 4
  store i64* %1, i64** %4, align 4
  store i32 0, i32* %5, align 4
  br label %6

6:                                                ; preds = %22, %2
  %7 = load i32, i32* %5, align 4
  %8 = icmp ult i32 %7, 10
  br i1 %8, label %9, label %25

9:                                                ; preds = %6
  %10 = load i64*, i64** %4, align 4
  %11 = load i32, i32* %5, align 4
  %12 = getelementptr inbounds i64, i64* %10, i32 %11
  %13 = load i64, i64* %12, align 4
  %14 = load i64*, i64** %3, align 4
  %15 = load i32, i32* %5, align 4
  %16 = getelementptr inbounds i64, i64* %14, i32 %15
  %17 = load i64, i64* %16, align 4
  %18 = sub nsw i64 %13, %17
  %19 = load i64*, i64** %3, align 4
  %20 = load i32, i32* %5, align 4
  %21 = getelementptr inbounds i64, i64* %19, i32 %20
  store i64 %18, i64* %21, align 4
  br label %22

22:                                               ; preds = %9
  %23 = load i32, i32* %5, align 4
  %24 = add i32 %23, 1
  store i32 %24, i32* %5, align 4
  br label %6, !llvm.loop !22

25:                                               ; preds = %6
  ret void
}

; Function Attrs: noinline nounwind optnone
define internal void @fproduct(i64* %0, i64* %1, i64* %2) #0 {
  %4 = alloca i64*, align 4
  %5 = alloca i64*, align 4
  %6 = alloca i64*, align 4
  store i64* %0, i64** %4, align 4
  store i64* %1, i64** %5, align 4
  store i64* %2, i64** %6, align 4
  %7 = load i64*, i64** %5, align 4
  %8 = getelementptr inbounds i64, i64* %7, i32 0
  %9 = load i64, i64* %8, align 4
  %10 = trunc i64 %9 to i32
  %11 = sext i32 %10 to i64
  %12 = load i64*, i64** %6, align 4
  %13 = getelementptr inbounds i64, i64* %12, i32 0
  %14 = load i64, i64* %13, align 4
  %15 = trunc i64 %14 to i32
  %16 = sext i32 %15 to i64
  %17 = mul nsw i64 %11, %16
  %18 = load i64*, i64** %4, align 4
  %19 = getelementptr inbounds i64, i64* %18, i32 0
  store i64 %17, i64* %19, align 4
  %20 = load i64*, i64** %5, align 4
  %21 = getelementptr inbounds i64, i64* %20, i32 0
  %22 = load i64, i64* %21, align 4
  %23 = trunc i64 %22 to i32
  %24 = sext i32 %23 to i64
  %25 = load i64*, i64** %6, align 4
  %26 = getelementptr inbounds i64, i64* %25, i32 1
  %27 = load i64, i64* %26, align 4
  %28 = trunc i64 %27 to i32
  %29 = sext i32 %28 to i64
  %30 = mul nsw i64 %24, %29
  %31 = load i64*, i64** %5, align 4
  %32 = getelementptr inbounds i64, i64* %31, i32 1
  %33 = load i64, i64* %32, align 4
  %34 = trunc i64 %33 to i32
  %35 = sext i32 %34 to i64
  %36 = load i64*, i64** %6, align 4
  %37 = getelementptr inbounds i64, i64* %36, i32 0
  %38 = load i64, i64* %37, align 4
  %39 = trunc i64 %38 to i32
  %40 = sext i32 %39 to i64
  %41 = mul nsw i64 %35, %40
  %42 = add nsw i64 %30, %41
  %43 = load i64*, i64** %4, align 4
  %44 = getelementptr inbounds i64, i64* %43, i32 1
  store i64 %42, i64* %44, align 4
  %45 = load i64*, i64** %5, align 4
  %46 = getelementptr inbounds i64, i64* %45, i32 1
  %47 = load i64, i64* %46, align 4
  %48 = trunc i64 %47 to i32
  %49 = sext i32 %48 to i64
  %50 = mul nsw i64 2, %49
  %51 = load i64*, i64** %6, align 4
  %52 = getelementptr inbounds i64, i64* %51, i32 1
  %53 = load i64, i64* %52, align 4
  %54 = trunc i64 %53 to i32
  %55 = sext i32 %54 to i64
  %56 = mul nsw i64 %50, %55
  %57 = load i64*, i64** %5, align 4
  %58 = getelementptr inbounds i64, i64* %57, i32 0
  %59 = load i64, i64* %58, align 4
  %60 = trunc i64 %59 to i32
  %61 = sext i32 %60 to i64
  %62 = load i64*, i64** %6, align 4
  %63 = getelementptr inbounds i64, i64* %62, i32 2
  %64 = load i64, i64* %63, align 4
  %65 = trunc i64 %64 to i32
  %66 = sext i32 %65 to i64
  %67 = mul nsw i64 %61, %66
  %68 = add nsw i64 %56, %67
  %69 = load i64*, i64** %5, align 4
  %70 = getelementptr inbounds i64, i64* %69, i32 2
  %71 = load i64, i64* %70, align 4
  %72 = trunc i64 %71 to i32
  %73 = sext i32 %72 to i64
  %74 = load i64*, i64** %6, align 4
  %75 = getelementptr inbounds i64, i64* %74, i32 0
  %76 = load i64, i64* %75, align 4
  %77 = trunc i64 %76 to i32
  %78 = sext i32 %77 to i64
  %79 = mul nsw i64 %73, %78
  %80 = add nsw i64 %68, %79
  %81 = load i64*, i64** %4, align 4
  %82 = getelementptr inbounds i64, i64* %81, i32 2
  store i64 %80, i64* %82, align 4
  %83 = load i64*, i64** %5, align 4
  %84 = getelementptr inbounds i64, i64* %83, i32 1
  %85 = load i64, i64* %84, align 4
  %86 = trunc i64 %85 to i32
  %87 = sext i32 %86 to i64
  %88 = load i64*, i64** %6, align 4
  %89 = getelementptr inbounds i64, i64* %88, i32 2
  %90 = load i64, i64* %89, align 4
  %91 = trunc i64 %90 to i32
  %92 = sext i32 %91 to i64
  %93 = mul nsw i64 %87, %92
  %94 = load i64*, i64** %5, align 4
  %95 = getelementptr inbounds i64, i64* %94, i32 2
  %96 = load i64, i64* %95, align 4
  %97 = trunc i64 %96 to i32
  %98 = sext i32 %97 to i64
  %99 = load i64*, i64** %6, align 4
  %100 = getelementptr inbounds i64, i64* %99, i32 1
  %101 = load i64, i64* %100, align 4
  %102 = trunc i64 %101 to i32
  %103 = sext i32 %102 to i64
  %104 = mul nsw i64 %98, %103
  %105 = add nsw i64 %93, %104
  %106 = load i64*, i64** %5, align 4
  %107 = getelementptr inbounds i64, i64* %106, i32 0
  %108 = load i64, i64* %107, align 4
  %109 = trunc i64 %108 to i32
  %110 = sext i32 %109 to i64
  %111 = load i64*, i64** %6, align 4
  %112 = getelementptr inbounds i64, i64* %111, i32 3
  %113 = load i64, i64* %112, align 4
  %114 = trunc i64 %113 to i32
  %115 = sext i32 %114 to i64
  %116 = mul nsw i64 %110, %115
  %117 = add nsw i64 %105, %116
  %118 = load i64*, i64** %5, align 4
  %119 = getelementptr inbounds i64, i64* %118, i32 3
  %120 = load i64, i64* %119, align 4
  %121 = trunc i64 %120 to i32
  %122 = sext i32 %121 to i64
  %123 = load i64*, i64** %6, align 4
  %124 = getelementptr inbounds i64, i64* %123, i32 0
  %125 = load i64, i64* %124, align 4
  %126 = trunc i64 %125 to i32
  %127 = sext i32 %126 to i64
  %128 = mul nsw i64 %122, %127
  %129 = add nsw i64 %117, %128
  %130 = load i64*, i64** %4, align 4
  %131 = getelementptr inbounds i64, i64* %130, i32 3
  store i64 %129, i64* %131, align 4
  %132 = load i64*, i64** %5, align 4
  %133 = getelementptr inbounds i64, i64* %132, i32 2
  %134 = load i64, i64* %133, align 4
  %135 = trunc i64 %134 to i32
  %136 = sext i32 %135 to i64
  %137 = load i64*, i64** %6, align 4
  %138 = getelementptr inbounds i64, i64* %137, i32 2
  %139 = load i64, i64* %138, align 4
  %140 = trunc i64 %139 to i32
  %141 = sext i32 %140 to i64
  %142 = mul nsw i64 %136, %141
  %143 = load i64*, i64** %5, align 4
  %144 = getelementptr inbounds i64, i64* %143, i32 1
  %145 = load i64, i64* %144, align 4
  %146 = trunc i64 %145 to i32
  %147 = sext i32 %146 to i64
  %148 = load i64*, i64** %6, align 4
  %149 = getelementptr inbounds i64, i64* %148, i32 3
  %150 = load i64, i64* %149, align 4
  %151 = trunc i64 %150 to i32
  %152 = sext i32 %151 to i64
  %153 = mul nsw i64 %147, %152
  %154 = load i64*, i64** %5, align 4
  %155 = getelementptr inbounds i64, i64* %154, i32 3
  %156 = load i64, i64* %155, align 4
  %157 = trunc i64 %156 to i32
  %158 = sext i32 %157 to i64
  %159 = load i64*, i64** %6, align 4
  %160 = getelementptr inbounds i64, i64* %159, i32 1
  %161 = load i64, i64* %160, align 4
  %162 = trunc i64 %161 to i32
  %163 = sext i32 %162 to i64
  %164 = mul nsw i64 %158, %163
  %165 = add nsw i64 %153, %164
  %166 = mul nsw i64 2, %165
  %167 = add nsw i64 %142, %166
  %168 = load i64*, i64** %5, align 4
  %169 = getelementptr inbounds i64, i64* %168, i32 0
  %170 = load i64, i64* %169, align 4
  %171 = trunc i64 %170 to i32
  %172 = sext i32 %171 to i64
  %173 = load i64*, i64** %6, align 4
  %174 = getelementptr inbounds i64, i64* %173, i32 4
  %175 = load i64, i64* %174, align 4
  %176 = trunc i64 %175 to i32
  %177 = sext i32 %176 to i64
  %178 = mul nsw i64 %172, %177
  %179 = add nsw i64 %167, %178
  %180 = load i64*, i64** %5, align 4
  %181 = getelementptr inbounds i64, i64* %180, i32 4
  %182 = load i64, i64* %181, align 4
  %183 = trunc i64 %182 to i32
  %184 = sext i32 %183 to i64
  %185 = load i64*, i64** %6, align 4
  %186 = getelementptr inbounds i64, i64* %185, i32 0
  %187 = load i64, i64* %186, align 4
  %188 = trunc i64 %187 to i32
  %189 = sext i32 %188 to i64
  %190 = mul nsw i64 %184, %189
  %191 = add nsw i64 %179, %190
  %192 = load i64*, i64** %4, align 4
  %193 = getelementptr inbounds i64, i64* %192, i32 4
  store i64 %191, i64* %193, align 4
  %194 = load i64*, i64** %5, align 4
  %195 = getelementptr inbounds i64, i64* %194, i32 2
  %196 = load i64, i64* %195, align 4
  %197 = trunc i64 %196 to i32
  %198 = sext i32 %197 to i64
  %199 = load i64*, i64** %6, align 4
  %200 = getelementptr inbounds i64, i64* %199, i32 3
  %201 = load i64, i64* %200, align 4
  %202 = trunc i64 %201 to i32
  %203 = sext i32 %202 to i64
  %204 = mul nsw i64 %198, %203
  %205 = load i64*, i64** %5, align 4
  %206 = getelementptr inbounds i64, i64* %205, i32 3
  %207 = load i64, i64* %206, align 4
  %208 = trunc i64 %207 to i32
  %209 = sext i32 %208 to i64
  %210 = load i64*, i64** %6, align 4
  %211 = getelementptr inbounds i64, i64* %210, i32 2
  %212 = load i64, i64* %211, align 4
  %213 = trunc i64 %212 to i32
  %214 = sext i32 %213 to i64
  %215 = mul nsw i64 %209, %214
  %216 = add nsw i64 %204, %215
  %217 = load i64*, i64** %5, align 4
  %218 = getelementptr inbounds i64, i64* %217, i32 1
  %219 = load i64, i64* %218, align 4
  %220 = trunc i64 %219 to i32
  %221 = sext i32 %220 to i64
  %222 = load i64*, i64** %6, align 4
  %223 = getelementptr inbounds i64, i64* %222, i32 4
  %224 = load i64, i64* %223, align 4
  %225 = trunc i64 %224 to i32
  %226 = sext i32 %225 to i64
  %227 = mul nsw i64 %221, %226
  %228 = add nsw i64 %216, %227
  %229 = load i64*, i64** %5, align 4
  %230 = getelementptr inbounds i64, i64* %229, i32 4
  %231 = load i64, i64* %230, align 4
  %232 = trunc i64 %231 to i32
  %233 = sext i32 %232 to i64
  %234 = load i64*, i64** %6, align 4
  %235 = getelementptr inbounds i64, i64* %234, i32 1
  %236 = load i64, i64* %235, align 4
  %237 = trunc i64 %236 to i32
  %238 = sext i32 %237 to i64
  %239 = mul nsw i64 %233, %238
  %240 = add nsw i64 %228, %239
  %241 = load i64*, i64** %5, align 4
  %242 = getelementptr inbounds i64, i64* %241, i32 0
  %243 = load i64, i64* %242, align 4
  %244 = trunc i64 %243 to i32
  %245 = sext i32 %244 to i64
  %246 = load i64*, i64** %6, align 4
  %247 = getelementptr inbounds i64, i64* %246, i32 5
  %248 = load i64, i64* %247, align 4
  %249 = trunc i64 %248 to i32
  %250 = sext i32 %249 to i64
  %251 = mul nsw i64 %245, %250
  %252 = add nsw i64 %240, %251
  %253 = load i64*, i64** %5, align 4
  %254 = getelementptr inbounds i64, i64* %253, i32 5
  %255 = load i64, i64* %254, align 4
  %256 = trunc i64 %255 to i32
  %257 = sext i32 %256 to i64
  %258 = load i64*, i64** %6, align 4
  %259 = getelementptr inbounds i64, i64* %258, i32 0
  %260 = load i64, i64* %259, align 4
  %261 = trunc i64 %260 to i32
  %262 = sext i32 %261 to i64
  %263 = mul nsw i64 %257, %262
  %264 = add nsw i64 %252, %263
  %265 = load i64*, i64** %4, align 4
  %266 = getelementptr inbounds i64, i64* %265, i32 5
  store i64 %264, i64* %266, align 4
  %267 = load i64*, i64** %5, align 4
  %268 = getelementptr inbounds i64, i64* %267, i32 3
  %269 = load i64, i64* %268, align 4
  %270 = trunc i64 %269 to i32
  %271 = sext i32 %270 to i64
  %272 = load i64*, i64** %6, align 4
  %273 = getelementptr inbounds i64, i64* %272, i32 3
  %274 = load i64, i64* %273, align 4
  %275 = trunc i64 %274 to i32
  %276 = sext i32 %275 to i64
  %277 = mul nsw i64 %271, %276
  %278 = load i64*, i64** %5, align 4
  %279 = getelementptr inbounds i64, i64* %278, i32 1
  %280 = load i64, i64* %279, align 4
  %281 = trunc i64 %280 to i32
  %282 = sext i32 %281 to i64
  %283 = load i64*, i64** %6, align 4
  %284 = getelementptr inbounds i64, i64* %283, i32 5
  %285 = load i64, i64* %284, align 4
  %286 = trunc i64 %285 to i32
  %287 = sext i32 %286 to i64
  %288 = mul nsw i64 %282, %287
  %289 = add nsw i64 %277, %288
  %290 = load i64*, i64** %5, align 4
  %291 = getelementptr inbounds i64, i64* %290, i32 5
  %292 = load i64, i64* %291, align 4
  %293 = trunc i64 %292 to i32
  %294 = sext i32 %293 to i64
  %295 = load i64*, i64** %6, align 4
  %296 = getelementptr inbounds i64, i64* %295, i32 1
  %297 = load i64, i64* %296, align 4
  %298 = trunc i64 %297 to i32
  %299 = sext i32 %298 to i64
  %300 = mul nsw i64 %294, %299
  %301 = add nsw i64 %289, %300
  %302 = mul nsw i64 2, %301
  %303 = load i64*, i64** %5, align 4
  %304 = getelementptr inbounds i64, i64* %303, i32 2
  %305 = load i64, i64* %304, align 4
  %306 = trunc i64 %305 to i32
  %307 = sext i32 %306 to i64
  %308 = load i64*, i64** %6, align 4
  %309 = getelementptr inbounds i64, i64* %308, i32 4
  %310 = load i64, i64* %309, align 4
  %311 = trunc i64 %310 to i32
  %312 = sext i32 %311 to i64
  %313 = mul nsw i64 %307, %312
  %314 = add nsw i64 %302, %313
  %315 = load i64*, i64** %5, align 4
  %316 = getelementptr inbounds i64, i64* %315, i32 4
  %317 = load i64, i64* %316, align 4
  %318 = trunc i64 %317 to i32
  %319 = sext i32 %318 to i64
  %320 = load i64*, i64** %6, align 4
  %321 = getelementptr inbounds i64, i64* %320, i32 2
  %322 = load i64, i64* %321, align 4
  %323 = trunc i64 %322 to i32
  %324 = sext i32 %323 to i64
  %325 = mul nsw i64 %319, %324
  %326 = add nsw i64 %314, %325
  %327 = load i64*, i64** %5, align 4
  %328 = getelementptr inbounds i64, i64* %327, i32 0
  %329 = load i64, i64* %328, align 4
  %330 = trunc i64 %329 to i32
  %331 = sext i32 %330 to i64
  %332 = load i64*, i64** %6, align 4
  %333 = getelementptr inbounds i64, i64* %332, i32 6
  %334 = load i64, i64* %333, align 4
  %335 = trunc i64 %334 to i32
  %336 = sext i32 %335 to i64
  %337 = mul nsw i64 %331, %336
  %338 = add nsw i64 %326, %337
  %339 = load i64*, i64** %5, align 4
  %340 = getelementptr inbounds i64, i64* %339, i32 6
  %341 = load i64, i64* %340, align 4
  %342 = trunc i64 %341 to i32
  %343 = sext i32 %342 to i64
  %344 = load i64*, i64** %6, align 4
  %345 = getelementptr inbounds i64, i64* %344, i32 0
  %346 = load i64, i64* %345, align 4
  %347 = trunc i64 %346 to i32
  %348 = sext i32 %347 to i64
  %349 = mul nsw i64 %343, %348
  %350 = add nsw i64 %338, %349
  %351 = load i64*, i64** %4, align 4
  %352 = getelementptr inbounds i64, i64* %351, i32 6
  store i64 %350, i64* %352, align 4
  %353 = load i64*, i64** %5, align 4
  %354 = getelementptr inbounds i64, i64* %353, i32 3
  %355 = load i64, i64* %354, align 4
  %356 = trunc i64 %355 to i32
  %357 = sext i32 %356 to i64
  %358 = load i64*, i64** %6, align 4
  %359 = getelementptr inbounds i64, i64* %358, i32 4
  %360 = load i64, i64* %359, align 4
  %361 = trunc i64 %360 to i32
  %362 = sext i32 %361 to i64
  %363 = mul nsw i64 %357, %362
  %364 = load i64*, i64** %5, align 4
  %365 = getelementptr inbounds i64, i64* %364, i32 4
  %366 = load i64, i64* %365, align 4
  %367 = trunc i64 %366 to i32
  %368 = sext i32 %367 to i64
  %369 = load i64*, i64** %6, align 4
  %370 = getelementptr inbounds i64, i64* %369, i32 3
  %371 = load i64, i64* %370, align 4
  %372 = trunc i64 %371 to i32
  %373 = sext i32 %372 to i64
  %374 = mul nsw i64 %368, %373
  %375 = add nsw i64 %363, %374
  %376 = load i64*, i64** %5, align 4
  %377 = getelementptr inbounds i64, i64* %376, i32 2
  %378 = load i64, i64* %377, align 4
  %379 = trunc i64 %378 to i32
  %380 = sext i32 %379 to i64
  %381 = load i64*, i64** %6, align 4
  %382 = getelementptr inbounds i64, i64* %381, i32 5
  %383 = load i64, i64* %382, align 4
  %384 = trunc i64 %383 to i32
  %385 = sext i32 %384 to i64
  %386 = mul nsw i64 %380, %385
  %387 = add nsw i64 %375, %386
  %388 = load i64*, i64** %5, align 4
  %389 = getelementptr inbounds i64, i64* %388, i32 5
  %390 = load i64, i64* %389, align 4
  %391 = trunc i64 %390 to i32
  %392 = sext i32 %391 to i64
  %393 = load i64*, i64** %6, align 4
  %394 = getelementptr inbounds i64, i64* %393, i32 2
  %395 = load i64, i64* %394, align 4
  %396 = trunc i64 %395 to i32
  %397 = sext i32 %396 to i64
  %398 = mul nsw i64 %392, %397
  %399 = add nsw i64 %387, %398
  %400 = load i64*, i64** %5, align 4
  %401 = getelementptr inbounds i64, i64* %400, i32 1
  %402 = load i64, i64* %401, align 4
  %403 = trunc i64 %402 to i32
  %404 = sext i32 %403 to i64
  %405 = load i64*, i64** %6, align 4
  %406 = getelementptr inbounds i64, i64* %405, i32 6
  %407 = load i64, i64* %406, align 4
  %408 = trunc i64 %407 to i32
  %409 = sext i32 %408 to i64
  %410 = mul nsw i64 %404, %409
  %411 = add nsw i64 %399, %410
  %412 = load i64*, i64** %5, align 4
  %413 = getelementptr inbounds i64, i64* %412, i32 6
  %414 = load i64, i64* %413, align 4
  %415 = trunc i64 %414 to i32
  %416 = sext i32 %415 to i64
  %417 = load i64*, i64** %6, align 4
  %418 = getelementptr inbounds i64, i64* %417, i32 1
  %419 = load i64, i64* %418, align 4
  %420 = trunc i64 %419 to i32
  %421 = sext i32 %420 to i64
  %422 = mul nsw i64 %416, %421
  %423 = add nsw i64 %411, %422
  %424 = load i64*, i64** %5, align 4
  %425 = getelementptr inbounds i64, i64* %424, i32 0
  %426 = load i64, i64* %425, align 4
  %427 = trunc i64 %426 to i32
  %428 = sext i32 %427 to i64
  %429 = load i64*, i64** %6, align 4
  %430 = getelementptr inbounds i64, i64* %429, i32 7
  %431 = load i64, i64* %430, align 4
  %432 = trunc i64 %431 to i32
  %433 = sext i32 %432 to i64
  %434 = mul nsw i64 %428, %433
  %435 = add nsw i64 %423, %434
  %436 = load i64*, i64** %5, align 4
  %437 = getelementptr inbounds i64, i64* %436, i32 7
  %438 = load i64, i64* %437, align 4
  %439 = trunc i64 %438 to i32
  %440 = sext i32 %439 to i64
  %441 = load i64*, i64** %6, align 4
  %442 = getelementptr inbounds i64, i64* %441, i32 0
  %443 = load i64, i64* %442, align 4
  %444 = trunc i64 %443 to i32
  %445 = sext i32 %444 to i64
  %446 = mul nsw i64 %440, %445
  %447 = add nsw i64 %435, %446
  %448 = load i64*, i64** %4, align 4
  %449 = getelementptr inbounds i64, i64* %448, i32 7
  store i64 %447, i64* %449, align 4
  %450 = load i64*, i64** %5, align 4
  %451 = getelementptr inbounds i64, i64* %450, i32 4
  %452 = load i64, i64* %451, align 4
  %453 = trunc i64 %452 to i32
  %454 = sext i32 %453 to i64
  %455 = load i64*, i64** %6, align 4
  %456 = getelementptr inbounds i64, i64* %455, i32 4
  %457 = load i64, i64* %456, align 4
  %458 = trunc i64 %457 to i32
  %459 = sext i32 %458 to i64
  %460 = mul nsw i64 %454, %459
  %461 = load i64*, i64** %5, align 4
  %462 = getelementptr inbounds i64, i64* %461, i32 3
  %463 = load i64, i64* %462, align 4
  %464 = trunc i64 %463 to i32
  %465 = sext i32 %464 to i64
  %466 = load i64*, i64** %6, align 4
  %467 = getelementptr inbounds i64, i64* %466, i32 5
  %468 = load i64, i64* %467, align 4
  %469 = trunc i64 %468 to i32
  %470 = sext i32 %469 to i64
  %471 = mul nsw i64 %465, %470
  %472 = load i64*, i64** %5, align 4
  %473 = getelementptr inbounds i64, i64* %472, i32 5
  %474 = load i64, i64* %473, align 4
  %475 = trunc i64 %474 to i32
  %476 = sext i32 %475 to i64
  %477 = load i64*, i64** %6, align 4
  %478 = getelementptr inbounds i64, i64* %477, i32 3
  %479 = load i64, i64* %478, align 4
  %480 = trunc i64 %479 to i32
  %481 = sext i32 %480 to i64
  %482 = mul nsw i64 %476, %481
  %483 = add nsw i64 %471, %482
  %484 = load i64*, i64** %5, align 4
  %485 = getelementptr inbounds i64, i64* %484, i32 1
  %486 = load i64, i64* %485, align 4
  %487 = trunc i64 %486 to i32
  %488 = sext i32 %487 to i64
  %489 = load i64*, i64** %6, align 4
  %490 = getelementptr inbounds i64, i64* %489, i32 7
  %491 = load i64, i64* %490, align 4
  %492 = trunc i64 %491 to i32
  %493 = sext i32 %492 to i64
  %494 = mul nsw i64 %488, %493
  %495 = add nsw i64 %483, %494
  %496 = load i64*, i64** %5, align 4
  %497 = getelementptr inbounds i64, i64* %496, i32 7
  %498 = load i64, i64* %497, align 4
  %499 = trunc i64 %498 to i32
  %500 = sext i32 %499 to i64
  %501 = load i64*, i64** %6, align 4
  %502 = getelementptr inbounds i64, i64* %501, i32 1
  %503 = load i64, i64* %502, align 4
  %504 = trunc i64 %503 to i32
  %505 = sext i32 %504 to i64
  %506 = mul nsw i64 %500, %505
  %507 = add nsw i64 %495, %506
  %508 = mul nsw i64 2, %507
  %509 = add nsw i64 %460, %508
  %510 = load i64*, i64** %5, align 4
  %511 = getelementptr inbounds i64, i64* %510, i32 2
  %512 = load i64, i64* %511, align 4
  %513 = trunc i64 %512 to i32
  %514 = sext i32 %513 to i64
  %515 = load i64*, i64** %6, align 4
  %516 = getelementptr inbounds i64, i64* %515, i32 6
  %517 = load i64, i64* %516, align 4
  %518 = trunc i64 %517 to i32
  %519 = sext i32 %518 to i64
  %520 = mul nsw i64 %514, %519
  %521 = add nsw i64 %509, %520
  %522 = load i64*, i64** %5, align 4
  %523 = getelementptr inbounds i64, i64* %522, i32 6
  %524 = load i64, i64* %523, align 4
  %525 = trunc i64 %524 to i32
  %526 = sext i32 %525 to i64
  %527 = load i64*, i64** %6, align 4
  %528 = getelementptr inbounds i64, i64* %527, i32 2
  %529 = load i64, i64* %528, align 4
  %530 = trunc i64 %529 to i32
  %531 = sext i32 %530 to i64
  %532 = mul nsw i64 %526, %531
  %533 = add nsw i64 %521, %532
  %534 = load i64*, i64** %5, align 4
  %535 = getelementptr inbounds i64, i64* %534, i32 0
  %536 = load i64, i64* %535, align 4
  %537 = trunc i64 %536 to i32
  %538 = sext i32 %537 to i64
  %539 = load i64*, i64** %6, align 4
  %540 = getelementptr inbounds i64, i64* %539, i32 8
  %541 = load i64, i64* %540, align 4
  %542 = trunc i64 %541 to i32
  %543 = sext i32 %542 to i64
  %544 = mul nsw i64 %538, %543
  %545 = add nsw i64 %533, %544
  %546 = load i64*, i64** %5, align 4
  %547 = getelementptr inbounds i64, i64* %546, i32 8
  %548 = load i64, i64* %547, align 4
  %549 = trunc i64 %548 to i32
  %550 = sext i32 %549 to i64
  %551 = load i64*, i64** %6, align 4
  %552 = getelementptr inbounds i64, i64* %551, i32 0
  %553 = load i64, i64* %552, align 4
  %554 = trunc i64 %553 to i32
  %555 = sext i32 %554 to i64
  %556 = mul nsw i64 %550, %555
  %557 = add nsw i64 %545, %556
  %558 = load i64*, i64** %4, align 4
  %559 = getelementptr inbounds i64, i64* %558, i32 8
  store i64 %557, i64* %559, align 4
  %560 = load i64*, i64** %5, align 4
  %561 = getelementptr inbounds i64, i64* %560, i32 4
  %562 = load i64, i64* %561, align 4
  %563 = trunc i64 %562 to i32
  %564 = sext i32 %563 to i64
  %565 = load i64*, i64** %6, align 4
  %566 = getelementptr inbounds i64, i64* %565, i32 5
  %567 = load i64, i64* %566, align 4
  %568 = trunc i64 %567 to i32
  %569 = sext i32 %568 to i64
  %570 = mul nsw i64 %564, %569
  %571 = load i64*, i64** %5, align 4
  %572 = getelementptr inbounds i64, i64* %571, i32 5
  %573 = load i64, i64* %572, align 4
  %574 = trunc i64 %573 to i32
  %575 = sext i32 %574 to i64
  %576 = load i64*, i64** %6, align 4
  %577 = getelementptr inbounds i64, i64* %576, i32 4
  %578 = load i64, i64* %577, align 4
  %579 = trunc i64 %578 to i32
  %580 = sext i32 %579 to i64
  %581 = mul nsw i64 %575, %580
  %582 = add nsw i64 %570, %581
  %583 = load i64*, i64** %5, align 4
  %584 = getelementptr inbounds i64, i64* %583, i32 3
  %585 = load i64, i64* %584, align 4
  %586 = trunc i64 %585 to i32
  %587 = sext i32 %586 to i64
  %588 = load i64*, i64** %6, align 4
  %589 = getelementptr inbounds i64, i64* %588, i32 6
  %590 = load i64, i64* %589, align 4
  %591 = trunc i64 %590 to i32
  %592 = sext i32 %591 to i64
  %593 = mul nsw i64 %587, %592
  %594 = add nsw i64 %582, %593
  %595 = load i64*, i64** %5, align 4
  %596 = getelementptr inbounds i64, i64* %595, i32 6
  %597 = load i64, i64* %596, align 4
  %598 = trunc i64 %597 to i32
  %599 = sext i32 %598 to i64
  %600 = load i64*, i64** %6, align 4
  %601 = getelementptr inbounds i64, i64* %600, i32 3
  %602 = load i64, i64* %601, align 4
  %603 = trunc i64 %602 to i32
  %604 = sext i32 %603 to i64
  %605 = mul nsw i64 %599, %604
  %606 = add nsw i64 %594, %605
  %607 = load i64*, i64** %5, align 4
  %608 = getelementptr inbounds i64, i64* %607, i32 2
  %609 = load i64, i64* %608, align 4
  %610 = trunc i64 %609 to i32
  %611 = sext i32 %610 to i64
  %612 = load i64*, i64** %6, align 4
  %613 = getelementptr inbounds i64, i64* %612, i32 7
  %614 = load i64, i64* %613, align 4
  %615 = trunc i64 %614 to i32
  %616 = sext i32 %615 to i64
  %617 = mul nsw i64 %611, %616
  %618 = add nsw i64 %606, %617
  %619 = load i64*, i64** %5, align 4
  %620 = getelementptr inbounds i64, i64* %619, i32 7
  %621 = load i64, i64* %620, align 4
  %622 = trunc i64 %621 to i32
  %623 = sext i32 %622 to i64
  %624 = load i64*, i64** %6, align 4
  %625 = getelementptr inbounds i64, i64* %624, i32 2
  %626 = load i64, i64* %625, align 4
  %627 = trunc i64 %626 to i32
  %628 = sext i32 %627 to i64
  %629 = mul nsw i64 %623, %628
  %630 = add nsw i64 %618, %629
  %631 = load i64*, i64** %5, align 4
  %632 = getelementptr inbounds i64, i64* %631, i32 1
  %633 = load i64, i64* %632, align 4
  %634 = trunc i64 %633 to i32
  %635 = sext i32 %634 to i64
  %636 = load i64*, i64** %6, align 4
  %637 = getelementptr inbounds i64, i64* %636, i32 8
  %638 = load i64, i64* %637, align 4
  %639 = trunc i64 %638 to i32
  %640 = sext i32 %639 to i64
  %641 = mul nsw i64 %635, %640
  %642 = add nsw i64 %630, %641
  %643 = load i64*, i64** %5, align 4
  %644 = getelementptr inbounds i64, i64* %643, i32 8
  %645 = load i64, i64* %644, align 4
  %646 = trunc i64 %645 to i32
  %647 = sext i32 %646 to i64
  %648 = load i64*, i64** %6, align 4
  %649 = getelementptr inbounds i64, i64* %648, i32 1
  %650 = load i64, i64* %649, align 4
  %651 = trunc i64 %650 to i32
  %652 = sext i32 %651 to i64
  %653 = mul nsw i64 %647, %652
  %654 = add nsw i64 %642, %653
  %655 = load i64*, i64** %5, align 4
  %656 = getelementptr inbounds i64, i64* %655, i32 0
  %657 = load i64, i64* %656, align 4
  %658 = trunc i64 %657 to i32
  %659 = sext i32 %658 to i64
  %660 = load i64*, i64** %6, align 4
  %661 = getelementptr inbounds i64, i64* %660, i32 9
  %662 = load i64, i64* %661, align 4
  %663 = trunc i64 %662 to i32
  %664 = sext i32 %663 to i64
  %665 = mul nsw i64 %659, %664
  %666 = add nsw i64 %654, %665
  %667 = load i64*, i64** %5, align 4
  %668 = getelementptr inbounds i64, i64* %667, i32 9
  %669 = load i64, i64* %668, align 4
  %670 = trunc i64 %669 to i32
  %671 = sext i32 %670 to i64
  %672 = load i64*, i64** %6, align 4
  %673 = getelementptr inbounds i64, i64* %672, i32 0
  %674 = load i64, i64* %673, align 4
  %675 = trunc i64 %674 to i32
  %676 = sext i32 %675 to i64
  %677 = mul nsw i64 %671, %676
  %678 = add nsw i64 %666, %677
  %679 = load i64*, i64** %4, align 4
  %680 = getelementptr inbounds i64, i64* %679, i32 9
  store i64 %678, i64* %680, align 4
  %681 = load i64*, i64** %5, align 4
  %682 = getelementptr inbounds i64, i64* %681, i32 5
  %683 = load i64, i64* %682, align 4
  %684 = trunc i64 %683 to i32
  %685 = sext i32 %684 to i64
  %686 = load i64*, i64** %6, align 4
  %687 = getelementptr inbounds i64, i64* %686, i32 5
  %688 = load i64, i64* %687, align 4
  %689 = trunc i64 %688 to i32
  %690 = sext i32 %689 to i64
  %691 = mul nsw i64 %685, %690
  %692 = load i64*, i64** %5, align 4
  %693 = getelementptr inbounds i64, i64* %692, i32 3
  %694 = load i64, i64* %693, align 4
  %695 = trunc i64 %694 to i32
  %696 = sext i32 %695 to i64
  %697 = load i64*, i64** %6, align 4
  %698 = getelementptr inbounds i64, i64* %697, i32 7
  %699 = load i64, i64* %698, align 4
  %700 = trunc i64 %699 to i32
  %701 = sext i32 %700 to i64
  %702 = mul nsw i64 %696, %701
  %703 = add nsw i64 %691, %702
  %704 = load i64*, i64** %5, align 4
  %705 = getelementptr inbounds i64, i64* %704, i32 7
  %706 = load i64, i64* %705, align 4
  %707 = trunc i64 %706 to i32
  %708 = sext i32 %707 to i64
  %709 = load i64*, i64** %6, align 4
  %710 = getelementptr inbounds i64, i64* %709, i32 3
  %711 = load i64, i64* %710, align 4
  %712 = trunc i64 %711 to i32
  %713 = sext i32 %712 to i64
  %714 = mul nsw i64 %708, %713
  %715 = add nsw i64 %703, %714
  %716 = load i64*, i64** %5, align 4
  %717 = getelementptr inbounds i64, i64* %716, i32 1
  %718 = load i64, i64* %717, align 4
  %719 = trunc i64 %718 to i32
  %720 = sext i32 %719 to i64
  %721 = load i64*, i64** %6, align 4
  %722 = getelementptr inbounds i64, i64* %721, i32 9
  %723 = load i64, i64* %722, align 4
  %724 = trunc i64 %723 to i32
  %725 = sext i32 %724 to i64
  %726 = mul nsw i64 %720, %725
  %727 = add nsw i64 %715, %726
  %728 = load i64*, i64** %5, align 4
  %729 = getelementptr inbounds i64, i64* %728, i32 9
  %730 = load i64, i64* %729, align 4
  %731 = trunc i64 %730 to i32
  %732 = sext i32 %731 to i64
  %733 = load i64*, i64** %6, align 4
  %734 = getelementptr inbounds i64, i64* %733, i32 1
  %735 = load i64, i64* %734, align 4
  %736 = trunc i64 %735 to i32
  %737 = sext i32 %736 to i64
  %738 = mul nsw i64 %732, %737
  %739 = add nsw i64 %727, %738
  %740 = mul nsw i64 2, %739
  %741 = load i64*, i64** %5, align 4
  %742 = getelementptr inbounds i64, i64* %741, i32 4
  %743 = load i64, i64* %742, align 4
  %744 = trunc i64 %743 to i32
  %745 = sext i32 %744 to i64
  %746 = load i64*, i64** %6, align 4
  %747 = getelementptr inbounds i64, i64* %746, i32 6
  %748 = load i64, i64* %747, align 4
  %749 = trunc i64 %748 to i32
  %750 = sext i32 %749 to i64
  %751 = mul nsw i64 %745, %750
  %752 = add nsw i64 %740, %751
  %753 = load i64*, i64** %5, align 4
  %754 = getelementptr inbounds i64, i64* %753, i32 6
  %755 = load i64, i64* %754, align 4
  %756 = trunc i64 %755 to i32
  %757 = sext i32 %756 to i64
  %758 = load i64*, i64** %6, align 4
  %759 = getelementptr inbounds i64, i64* %758, i32 4
  %760 = load i64, i64* %759, align 4
  %761 = trunc i64 %760 to i32
  %762 = sext i32 %761 to i64
  %763 = mul nsw i64 %757, %762
  %764 = add nsw i64 %752, %763
  %765 = load i64*, i64** %5, align 4
  %766 = getelementptr inbounds i64, i64* %765, i32 2
  %767 = load i64, i64* %766, align 4
  %768 = trunc i64 %767 to i32
  %769 = sext i32 %768 to i64
  %770 = load i64*, i64** %6, align 4
  %771 = getelementptr inbounds i64, i64* %770, i32 8
  %772 = load i64, i64* %771, align 4
  %773 = trunc i64 %772 to i32
  %774 = sext i32 %773 to i64
  %775 = mul nsw i64 %769, %774
  %776 = add nsw i64 %764, %775
  %777 = load i64*, i64** %5, align 4
  %778 = getelementptr inbounds i64, i64* %777, i32 8
  %779 = load i64, i64* %778, align 4
  %780 = trunc i64 %779 to i32
  %781 = sext i32 %780 to i64
  %782 = load i64*, i64** %6, align 4
  %783 = getelementptr inbounds i64, i64* %782, i32 2
  %784 = load i64, i64* %783, align 4
  %785 = trunc i64 %784 to i32
  %786 = sext i32 %785 to i64
  %787 = mul nsw i64 %781, %786
  %788 = add nsw i64 %776, %787
  %789 = load i64*, i64** %4, align 4
  %790 = getelementptr inbounds i64, i64* %789, i32 10
  store i64 %788, i64* %790, align 4
  %791 = load i64*, i64** %5, align 4
  %792 = getelementptr inbounds i64, i64* %791, i32 5
  %793 = load i64, i64* %792, align 4
  %794 = trunc i64 %793 to i32
  %795 = sext i32 %794 to i64
  %796 = load i64*, i64** %6, align 4
  %797 = getelementptr inbounds i64, i64* %796, i32 6
  %798 = load i64, i64* %797, align 4
  %799 = trunc i64 %798 to i32
  %800 = sext i32 %799 to i64
  %801 = mul nsw i64 %795, %800
  %802 = load i64*, i64** %5, align 4
  %803 = getelementptr inbounds i64, i64* %802, i32 6
  %804 = load i64, i64* %803, align 4
  %805 = trunc i64 %804 to i32
  %806 = sext i32 %805 to i64
  %807 = load i64*, i64** %6, align 4
  %808 = getelementptr inbounds i64, i64* %807, i32 5
  %809 = load i64, i64* %808, align 4
  %810 = trunc i64 %809 to i32
  %811 = sext i32 %810 to i64
  %812 = mul nsw i64 %806, %811
  %813 = add nsw i64 %801, %812
  %814 = load i64*, i64** %5, align 4
  %815 = getelementptr inbounds i64, i64* %814, i32 4
  %816 = load i64, i64* %815, align 4
  %817 = trunc i64 %816 to i32
  %818 = sext i32 %817 to i64
  %819 = load i64*, i64** %6, align 4
  %820 = getelementptr inbounds i64, i64* %819, i32 7
  %821 = load i64, i64* %820, align 4
  %822 = trunc i64 %821 to i32
  %823 = sext i32 %822 to i64
  %824 = mul nsw i64 %818, %823
  %825 = add nsw i64 %813, %824
  %826 = load i64*, i64** %5, align 4
  %827 = getelementptr inbounds i64, i64* %826, i32 7
  %828 = load i64, i64* %827, align 4
  %829 = trunc i64 %828 to i32
  %830 = sext i32 %829 to i64
  %831 = load i64*, i64** %6, align 4
  %832 = getelementptr inbounds i64, i64* %831, i32 4
  %833 = load i64, i64* %832, align 4
  %834 = trunc i64 %833 to i32
  %835 = sext i32 %834 to i64
  %836 = mul nsw i64 %830, %835
  %837 = add nsw i64 %825, %836
  %838 = load i64*, i64** %5, align 4
  %839 = getelementptr inbounds i64, i64* %838, i32 3
  %840 = load i64, i64* %839, align 4
  %841 = trunc i64 %840 to i32
  %842 = sext i32 %841 to i64
  %843 = load i64*, i64** %6, align 4
  %844 = getelementptr inbounds i64, i64* %843, i32 8
  %845 = load i64, i64* %844, align 4
  %846 = trunc i64 %845 to i32
  %847 = sext i32 %846 to i64
  %848 = mul nsw i64 %842, %847
  %849 = add nsw i64 %837, %848
  %850 = load i64*, i64** %5, align 4
  %851 = getelementptr inbounds i64, i64* %850, i32 8
  %852 = load i64, i64* %851, align 4
  %853 = trunc i64 %852 to i32
  %854 = sext i32 %853 to i64
  %855 = load i64*, i64** %6, align 4
  %856 = getelementptr inbounds i64, i64* %855, i32 3
  %857 = load i64, i64* %856, align 4
  %858 = trunc i64 %857 to i32
  %859 = sext i32 %858 to i64
  %860 = mul nsw i64 %854, %859
  %861 = add nsw i64 %849, %860
  %862 = load i64*, i64** %5, align 4
  %863 = getelementptr inbounds i64, i64* %862, i32 2
  %864 = load i64, i64* %863, align 4
  %865 = trunc i64 %864 to i32
  %866 = sext i32 %865 to i64
  %867 = load i64*, i64** %6, align 4
  %868 = getelementptr inbounds i64, i64* %867, i32 9
  %869 = load i64, i64* %868, align 4
  %870 = trunc i64 %869 to i32
  %871 = sext i32 %870 to i64
  %872 = mul nsw i64 %866, %871
  %873 = add nsw i64 %861, %872
  %874 = load i64*, i64** %5, align 4
  %875 = getelementptr inbounds i64, i64* %874, i32 9
  %876 = load i64, i64* %875, align 4
  %877 = trunc i64 %876 to i32
  %878 = sext i32 %877 to i64
  %879 = load i64*, i64** %6, align 4
  %880 = getelementptr inbounds i64, i64* %879, i32 2
  %881 = load i64, i64* %880, align 4
  %882 = trunc i64 %881 to i32
  %883 = sext i32 %882 to i64
  %884 = mul nsw i64 %878, %883
  %885 = add nsw i64 %873, %884
  %886 = load i64*, i64** %4, align 4
  %887 = getelementptr inbounds i64, i64* %886, i32 11
  store i64 %885, i64* %887, align 4
  %888 = load i64*, i64** %5, align 4
  %889 = getelementptr inbounds i64, i64* %888, i32 6
  %890 = load i64, i64* %889, align 4
  %891 = trunc i64 %890 to i32
  %892 = sext i32 %891 to i64
  %893 = load i64*, i64** %6, align 4
  %894 = getelementptr inbounds i64, i64* %893, i32 6
  %895 = load i64, i64* %894, align 4
  %896 = trunc i64 %895 to i32
  %897 = sext i32 %896 to i64
  %898 = mul nsw i64 %892, %897
  %899 = load i64*, i64** %5, align 4
  %900 = getelementptr inbounds i64, i64* %899, i32 5
  %901 = load i64, i64* %900, align 4
  %902 = trunc i64 %901 to i32
  %903 = sext i32 %902 to i64
  %904 = load i64*, i64** %6, align 4
  %905 = getelementptr inbounds i64, i64* %904, i32 7
  %906 = load i64, i64* %905, align 4
  %907 = trunc i64 %906 to i32
  %908 = sext i32 %907 to i64
  %909 = mul nsw i64 %903, %908
  %910 = load i64*, i64** %5, align 4
  %911 = getelementptr inbounds i64, i64* %910, i32 7
  %912 = load i64, i64* %911, align 4
  %913 = trunc i64 %912 to i32
  %914 = sext i32 %913 to i64
  %915 = load i64*, i64** %6, align 4
  %916 = getelementptr inbounds i64, i64* %915, i32 5
  %917 = load i64, i64* %916, align 4
  %918 = trunc i64 %917 to i32
  %919 = sext i32 %918 to i64
  %920 = mul nsw i64 %914, %919
  %921 = add nsw i64 %909, %920
  %922 = load i64*, i64** %5, align 4
  %923 = getelementptr inbounds i64, i64* %922, i32 3
  %924 = load i64, i64* %923, align 4
  %925 = trunc i64 %924 to i32
  %926 = sext i32 %925 to i64
  %927 = load i64*, i64** %6, align 4
  %928 = getelementptr inbounds i64, i64* %927, i32 9
  %929 = load i64, i64* %928, align 4
  %930 = trunc i64 %929 to i32
  %931 = sext i32 %930 to i64
  %932 = mul nsw i64 %926, %931
  %933 = add nsw i64 %921, %932
  %934 = load i64*, i64** %5, align 4
  %935 = getelementptr inbounds i64, i64* %934, i32 9
  %936 = load i64, i64* %935, align 4
  %937 = trunc i64 %936 to i32
  %938 = sext i32 %937 to i64
  %939 = load i64*, i64** %6, align 4
  %940 = getelementptr inbounds i64, i64* %939, i32 3
  %941 = load i64, i64* %940, align 4
  %942 = trunc i64 %941 to i32
  %943 = sext i32 %942 to i64
  %944 = mul nsw i64 %938, %943
  %945 = add nsw i64 %933, %944
  %946 = mul nsw i64 2, %945
  %947 = add nsw i64 %898, %946
  %948 = load i64*, i64** %5, align 4
  %949 = getelementptr inbounds i64, i64* %948, i32 4
  %950 = load i64, i64* %949, align 4
  %951 = trunc i64 %950 to i32
  %952 = sext i32 %951 to i64
  %953 = load i64*, i64** %6, align 4
  %954 = getelementptr inbounds i64, i64* %953, i32 8
  %955 = load i64, i64* %954, align 4
  %956 = trunc i64 %955 to i32
  %957 = sext i32 %956 to i64
  %958 = mul nsw i64 %952, %957
  %959 = add nsw i64 %947, %958
  %960 = load i64*, i64** %5, align 4
  %961 = getelementptr inbounds i64, i64* %960, i32 8
  %962 = load i64, i64* %961, align 4
  %963 = trunc i64 %962 to i32
  %964 = sext i32 %963 to i64
  %965 = load i64*, i64** %6, align 4
  %966 = getelementptr inbounds i64, i64* %965, i32 4
  %967 = load i64, i64* %966, align 4
  %968 = trunc i64 %967 to i32
  %969 = sext i32 %968 to i64
  %970 = mul nsw i64 %964, %969
  %971 = add nsw i64 %959, %970
  %972 = load i64*, i64** %4, align 4
  %973 = getelementptr inbounds i64, i64* %972, i32 12
  store i64 %971, i64* %973, align 4
  %974 = load i64*, i64** %5, align 4
  %975 = getelementptr inbounds i64, i64* %974, i32 6
  %976 = load i64, i64* %975, align 4
  %977 = trunc i64 %976 to i32
  %978 = sext i32 %977 to i64
  %979 = load i64*, i64** %6, align 4
  %980 = getelementptr inbounds i64, i64* %979, i32 7
  %981 = load i64, i64* %980, align 4
  %982 = trunc i64 %981 to i32
  %983 = sext i32 %982 to i64
  %984 = mul nsw i64 %978, %983
  %985 = load i64*, i64** %5, align 4
  %986 = getelementptr inbounds i64, i64* %985, i32 7
  %987 = load i64, i64* %986, align 4
  %988 = trunc i64 %987 to i32
  %989 = sext i32 %988 to i64
  %990 = load i64*, i64** %6, align 4
  %991 = getelementptr inbounds i64, i64* %990, i32 6
  %992 = load i64, i64* %991, align 4
  %993 = trunc i64 %992 to i32
  %994 = sext i32 %993 to i64
  %995 = mul nsw i64 %989, %994
  %996 = add nsw i64 %984, %995
  %997 = load i64*, i64** %5, align 4
  %998 = getelementptr inbounds i64, i64* %997, i32 5
  %999 = load i64, i64* %998, align 4
  %1000 = trunc i64 %999 to i32
  %1001 = sext i32 %1000 to i64
  %1002 = load i64*, i64** %6, align 4
  %1003 = getelementptr inbounds i64, i64* %1002, i32 8
  %1004 = load i64, i64* %1003, align 4
  %1005 = trunc i64 %1004 to i32
  %1006 = sext i32 %1005 to i64
  %1007 = mul nsw i64 %1001, %1006
  %1008 = add nsw i64 %996, %1007
  %1009 = load i64*, i64** %5, align 4
  %1010 = getelementptr inbounds i64, i64* %1009, i32 8
  %1011 = load i64, i64* %1010, align 4
  %1012 = trunc i64 %1011 to i32
  %1013 = sext i32 %1012 to i64
  %1014 = load i64*, i64** %6, align 4
  %1015 = getelementptr inbounds i64, i64* %1014, i32 5
  %1016 = load i64, i64* %1015, align 4
  %1017 = trunc i64 %1016 to i32
  %1018 = sext i32 %1017 to i64
  %1019 = mul nsw i64 %1013, %1018
  %1020 = add nsw i64 %1008, %1019
  %1021 = load i64*, i64** %5, align 4
  %1022 = getelementptr inbounds i64, i64* %1021, i32 4
  %1023 = load i64, i64* %1022, align 4
  %1024 = trunc i64 %1023 to i32
  %1025 = sext i32 %1024 to i64
  %1026 = load i64*, i64** %6, align 4
  %1027 = getelementptr inbounds i64, i64* %1026, i32 9
  %1028 = load i64, i64* %1027, align 4
  %1029 = trunc i64 %1028 to i32
  %1030 = sext i32 %1029 to i64
  %1031 = mul nsw i64 %1025, %1030
  %1032 = add nsw i64 %1020, %1031
  %1033 = load i64*, i64** %5, align 4
  %1034 = getelementptr inbounds i64, i64* %1033, i32 9
  %1035 = load i64, i64* %1034, align 4
  %1036 = trunc i64 %1035 to i32
  %1037 = sext i32 %1036 to i64
  %1038 = load i64*, i64** %6, align 4
  %1039 = getelementptr inbounds i64, i64* %1038, i32 4
  %1040 = load i64, i64* %1039, align 4
  %1041 = trunc i64 %1040 to i32
  %1042 = sext i32 %1041 to i64
  %1043 = mul nsw i64 %1037, %1042
  %1044 = add nsw i64 %1032, %1043
  %1045 = load i64*, i64** %4, align 4
  %1046 = getelementptr inbounds i64, i64* %1045, i32 13
  store i64 %1044, i64* %1046, align 4
  %1047 = load i64*, i64** %5, align 4
  %1048 = getelementptr inbounds i64, i64* %1047, i32 7
  %1049 = load i64, i64* %1048, align 4
  %1050 = trunc i64 %1049 to i32
  %1051 = sext i32 %1050 to i64
  %1052 = load i64*, i64** %6, align 4
  %1053 = getelementptr inbounds i64, i64* %1052, i32 7
  %1054 = load i64, i64* %1053, align 4
  %1055 = trunc i64 %1054 to i32
  %1056 = sext i32 %1055 to i64
  %1057 = mul nsw i64 %1051, %1056
  %1058 = load i64*, i64** %5, align 4
  %1059 = getelementptr inbounds i64, i64* %1058, i32 5
  %1060 = load i64, i64* %1059, align 4
  %1061 = trunc i64 %1060 to i32
  %1062 = sext i32 %1061 to i64
  %1063 = load i64*, i64** %6, align 4
  %1064 = getelementptr inbounds i64, i64* %1063, i32 9
  %1065 = load i64, i64* %1064, align 4
  %1066 = trunc i64 %1065 to i32
  %1067 = sext i32 %1066 to i64
  %1068 = mul nsw i64 %1062, %1067
  %1069 = add nsw i64 %1057, %1068
  %1070 = load i64*, i64** %5, align 4
  %1071 = getelementptr inbounds i64, i64* %1070, i32 9
  %1072 = load i64, i64* %1071, align 4
  %1073 = trunc i64 %1072 to i32
  %1074 = sext i32 %1073 to i64
  %1075 = load i64*, i64** %6, align 4
  %1076 = getelementptr inbounds i64, i64* %1075, i32 5
  %1077 = load i64, i64* %1076, align 4
  %1078 = trunc i64 %1077 to i32
  %1079 = sext i32 %1078 to i64
  %1080 = mul nsw i64 %1074, %1079
  %1081 = add nsw i64 %1069, %1080
  %1082 = mul nsw i64 2, %1081
  %1083 = load i64*, i64** %5, align 4
  %1084 = getelementptr inbounds i64, i64* %1083, i32 6
  %1085 = load i64, i64* %1084, align 4
  %1086 = trunc i64 %1085 to i32
  %1087 = sext i32 %1086 to i64
  %1088 = load i64*, i64** %6, align 4
  %1089 = getelementptr inbounds i64, i64* %1088, i32 8
  %1090 = load i64, i64* %1089, align 4
  %1091 = trunc i64 %1090 to i32
  %1092 = sext i32 %1091 to i64
  %1093 = mul nsw i64 %1087, %1092
  %1094 = add nsw i64 %1082, %1093
  %1095 = load i64*, i64** %5, align 4
  %1096 = getelementptr inbounds i64, i64* %1095, i32 8
  %1097 = load i64, i64* %1096, align 4
  %1098 = trunc i64 %1097 to i32
  %1099 = sext i32 %1098 to i64
  %1100 = load i64*, i64** %6, align 4
  %1101 = getelementptr inbounds i64, i64* %1100, i32 6
  %1102 = load i64, i64* %1101, align 4
  %1103 = trunc i64 %1102 to i32
  %1104 = sext i32 %1103 to i64
  %1105 = mul nsw i64 %1099, %1104
  %1106 = add nsw i64 %1094, %1105
  %1107 = load i64*, i64** %4, align 4
  %1108 = getelementptr inbounds i64, i64* %1107, i32 14
  store i64 %1106, i64* %1108, align 4
  %1109 = load i64*, i64** %5, align 4
  %1110 = getelementptr inbounds i64, i64* %1109, i32 7
  %1111 = load i64, i64* %1110, align 4
  %1112 = trunc i64 %1111 to i32
  %1113 = sext i32 %1112 to i64
  %1114 = load i64*, i64** %6, align 4
  %1115 = getelementptr inbounds i64, i64* %1114, i32 8
  %1116 = load i64, i64* %1115, align 4
  %1117 = trunc i64 %1116 to i32
  %1118 = sext i32 %1117 to i64
  %1119 = mul nsw i64 %1113, %1118
  %1120 = load i64*, i64** %5, align 4
  %1121 = getelementptr inbounds i64, i64* %1120, i32 8
  %1122 = load i64, i64* %1121, align 4
  %1123 = trunc i64 %1122 to i32
  %1124 = sext i32 %1123 to i64
  %1125 = load i64*, i64** %6, align 4
  %1126 = getelementptr inbounds i64, i64* %1125, i32 7
  %1127 = load i64, i64* %1126, align 4
  %1128 = trunc i64 %1127 to i32
  %1129 = sext i32 %1128 to i64
  %1130 = mul nsw i64 %1124, %1129
  %1131 = add nsw i64 %1119, %1130
  %1132 = load i64*, i64** %5, align 4
  %1133 = getelementptr inbounds i64, i64* %1132, i32 6
  %1134 = load i64, i64* %1133, align 4
  %1135 = trunc i64 %1134 to i32
  %1136 = sext i32 %1135 to i64
  %1137 = load i64*, i64** %6, align 4
  %1138 = getelementptr inbounds i64, i64* %1137, i32 9
  %1139 = load i64, i64* %1138, align 4
  %1140 = trunc i64 %1139 to i32
  %1141 = sext i32 %1140 to i64
  %1142 = mul nsw i64 %1136, %1141
  %1143 = add nsw i64 %1131, %1142
  %1144 = load i64*, i64** %5, align 4
  %1145 = getelementptr inbounds i64, i64* %1144, i32 9
  %1146 = load i64, i64* %1145, align 4
  %1147 = trunc i64 %1146 to i32
  %1148 = sext i32 %1147 to i64
  %1149 = load i64*, i64** %6, align 4
  %1150 = getelementptr inbounds i64, i64* %1149, i32 6
  %1151 = load i64, i64* %1150, align 4
  %1152 = trunc i64 %1151 to i32
  %1153 = sext i32 %1152 to i64
  %1154 = mul nsw i64 %1148, %1153
  %1155 = add nsw i64 %1143, %1154
  %1156 = load i64*, i64** %4, align 4
  %1157 = getelementptr inbounds i64, i64* %1156, i32 15
  store i64 %1155, i64* %1157, align 4
  %1158 = load i64*, i64** %5, align 4
  %1159 = getelementptr inbounds i64, i64* %1158, i32 8
  %1160 = load i64, i64* %1159, align 4
  %1161 = trunc i64 %1160 to i32
  %1162 = sext i32 %1161 to i64
  %1163 = load i64*, i64** %6, align 4
  %1164 = getelementptr inbounds i64, i64* %1163, i32 8
  %1165 = load i64, i64* %1164, align 4
  %1166 = trunc i64 %1165 to i32
  %1167 = sext i32 %1166 to i64
  %1168 = mul nsw i64 %1162, %1167
  %1169 = load i64*, i64** %5, align 4
  %1170 = getelementptr inbounds i64, i64* %1169, i32 7
  %1171 = load i64, i64* %1170, align 4
  %1172 = trunc i64 %1171 to i32
  %1173 = sext i32 %1172 to i64
  %1174 = load i64*, i64** %6, align 4
  %1175 = getelementptr inbounds i64, i64* %1174, i32 9
  %1176 = load i64, i64* %1175, align 4
  %1177 = trunc i64 %1176 to i32
  %1178 = sext i32 %1177 to i64
  %1179 = mul nsw i64 %1173, %1178
  %1180 = load i64*, i64** %5, align 4
  %1181 = getelementptr inbounds i64, i64* %1180, i32 9
  %1182 = load i64, i64* %1181, align 4
  %1183 = trunc i64 %1182 to i32
  %1184 = sext i32 %1183 to i64
  %1185 = load i64*, i64** %6, align 4
  %1186 = getelementptr inbounds i64, i64* %1185, i32 7
  %1187 = load i64, i64* %1186, align 4
  %1188 = trunc i64 %1187 to i32
  %1189 = sext i32 %1188 to i64
  %1190 = mul nsw i64 %1184, %1189
  %1191 = add nsw i64 %1179, %1190
  %1192 = mul nsw i64 2, %1191
  %1193 = add nsw i64 %1168, %1192
  %1194 = load i64*, i64** %4, align 4
  %1195 = getelementptr inbounds i64, i64* %1194, i32 16
  store i64 %1193, i64* %1195, align 4
  %1196 = load i64*, i64** %5, align 4
  %1197 = getelementptr inbounds i64, i64* %1196, i32 8
  %1198 = load i64, i64* %1197, align 4
  %1199 = trunc i64 %1198 to i32
  %1200 = sext i32 %1199 to i64
  %1201 = load i64*, i64** %6, align 4
  %1202 = getelementptr inbounds i64, i64* %1201, i32 9
  %1203 = load i64, i64* %1202, align 4
  %1204 = trunc i64 %1203 to i32
  %1205 = sext i32 %1204 to i64
  %1206 = mul nsw i64 %1200, %1205
  %1207 = load i64*, i64** %5, align 4
  %1208 = getelementptr inbounds i64, i64* %1207, i32 9
  %1209 = load i64, i64* %1208, align 4
  %1210 = trunc i64 %1209 to i32
  %1211 = sext i32 %1210 to i64
  %1212 = load i64*, i64** %6, align 4
  %1213 = getelementptr inbounds i64, i64* %1212, i32 8
  %1214 = load i64, i64* %1213, align 4
  %1215 = trunc i64 %1214 to i32
  %1216 = sext i32 %1215 to i64
  %1217 = mul nsw i64 %1211, %1216
  %1218 = add nsw i64 %1206, %1217
  %1219 = load i64*, i64** %4, align 4
  %1220 = getelementptr inbounds i64, i64* %1219, i32 17
  store i64 %1218, i64* %1220, align 4
  %1221 = load i64*, i64** %5, align 4
  %1222 = getelementptr inbounds i64, i64* %1221, i32 9
  %1223 = load i64, i64* %1222, align 4
  %1224 = trunc i64 %1223 to i32
  %1225 = sext i32 %1224 to i64
  %1226 = mul nsw i64 2, %1225
  %1227 = load i64*, i64** %6, align 4
  %1228 = getelementptr inbounds i64, i64* %1227, i32 9
  %1229 = load i64, i64* %1228, align 4
  %1230 = trunc i64 %1229 to i32
  %1231 = sext i32 %1230 to i64
  %1232 = mul nsw i64 %1226, %1231
  %1233 = load i64*, i64** %4, align 4
  %1234 = getelementptr inbounds i64, i64* %1233, i32 18
  store i64 %1232, i64* %1234, align 4
  ret void
}

; Function Attrs: noinline nounwind optnone
define internal void @freduce_degree(i64* %0) #0 {
  %2 = alloca i64*, align 4
  store i64* %0, i64** %2, align 4
  %3 = load i64*, i64** %2, align 4
  %4 = getelementptr inbounds i64, i64* %3, i32 18
  %5 = load i64, i64* %4, align 4
  %6 = shl i64 %5, 4
  %7 = load i64*, i64** %2, align 4
  %8 = getelementptr inbounds i64, i64* %7, i32 8
  %9 = load i64, i64* %8, align 4
  %10 = add nsw i64 %9, %6
  store i64 %10, i64* %8, align 4
  %11 = load i64*, i64** %2, align 4
  %12 = getelementptr inbounds i64, i64* %11, i32 18
  %13 = load i64, i64* %12, align 4
  %14 = shl i64 %13, 1
  %15 = load i64*, i64** %2, align 4
  %16 = getelementptr inbounds i64, i64* %15, i32 8
  %17 = load i64, i64* %16, align 4
  %18 = add nsw i64 %17, %14
  store i64 %18, i64* %16, align 4
  %19 = load i64*, i64** %2, align 4
  %20 = getelementptr inbounds i64, i64* %19, i32 18
  %21 = load i64, i64* %20, align 4
  %22 = load i64*, i64** %2, align 4
  %23 = getelementptr inbounds i64, i64* %22, i32 8
  %24 = load i64, i64* %23, align 4
  %25 = add nsw i64 %24, %21
  store i64 %25, i64* %23, align 4
  %26 = load i64*, i64** %2, align 4
  %27 = getelementptr inbounds i64, i64* %26, i32 17
  %28 = load i64, i64* %27, align 4
  %29 = shl i64 %28, 4
  %30 = load i64*, i64** %2, align 4
  %31 = getelementptr inbounds i64, i64* %30, i32 7
  %32 = load i64, i64* %31, align 4
  %33 = add nsw i64 %32, %29
  store i64 %33, i64* %31, align 4
  %34 = load i64*, i64** %2, align 4
  %35 = getelementptr inbounds i64, i64* %34, i32 17
  %36 = load i64, i64* %35, align 4
  %37 = shl i64 %36, 1
  %38 = load i64*, i64** %2, align 4
  %39 = getelementptr inbounds i64, i64* %38, i32 7
  %40 = load i64, i64* %39, align 4
  %41 = add nsw i64 %40, %37
  store i64 %41, i64* %39, align 4
  %42 = load i64*, i64** %2, align 4
  %43 = getelementptr inbounds i64, i64* %42, i32 17
  %44 = load i64, i64* %43, align 4
  %45 = load i64*, i64** %2, align 4
  %46 = getelementptr inbounds i64, i64* %45, i32 7
  %47 = load i64, i64* %46, align 4
  %48 = add nsw i64 %47, %44
  store i64 %48, i64* %46, align 4
  %49 = load i64*, i64** %2, align 4
  %50 = getelementptr inbounds i64, i64* %49, i32 16
  %51 = load i64, i64* %50, align 4
  %52 = shl i64 %51, 4
  %53 = load i64*, i64** %2, align 4
  %54 = getelementptr inbounds i64, i64* %53, i32 6
  %55 = load i64, i64* %54, align 4
  %56 = add nsw i64 %55, %52
  store i64 %56, i64* %54, align 4
  %57 = load i64*, i64** %2, align 4
  %58 = getelementptr inbounds i64, i64* %57, i32 16
  %59 = load i64, i64* %58, align 4
  %60 = shl i64 %59, 1
  %61 = load i64*, i64** %2, align 4
  %62 = getelementptr inbounds i64, i64* %61, i32 6
  %63 = load i64, i64* %62, align 4
  %64 = add nsw i64 %63, %60
  store i64 %64, i64* %62, align 4
  %65 = load i64*, i64** %2, align 4
  %66 = getelementptr inbounds i64, i64* %65, i32 16
  %67 = load i64, i64* %66, align 4
  %68 = load i64*, i64** %2, align 4
  %69 = getelementptr inbounds i64, i64* %68, i32 6
  %70 = load i64, i64* %69, align 4
  %71 = add nsw i64 %70, %67
  store i64 %71, i64* %69, align 4
  %72 = load i64*, i64** %2, align 4
  %73 = getelementptr inbounds i64, i64* %72, i32 15
  %74 = load i64, i64* %73, align 4
  %75 = shl i64 %74, 4
  %76 = load i64*, i64** %2, align 4
  %77 = getelementptr inbounds i64, i64* %76, i32 5
  %78 = load i64, i64* %77, align 4
  %79 = add nsw i64 %78, %75
  store i64 %79, i64* %77, align 4
  %80 = load i64*, i64** %2, align 4
  %81 = getelementptr inbounds i64, i64* %80, i32 15
  %82 = load i64, i64* %81, align 4
  %83 = shl i64 %82, 1
  %84 = load i64*, i64** %2, align 4
  %85 = getelementptr inbounds i64, i64* %84, i32 5
  %86 = load i64, i64* %85, align 4
  %87 = add nsw i64 %86, %83
  store i64 %87, i64* %85, align 4
  %88 = load i64*, i64** %2, align 4
  %89 = getelementptr inbounds i64, i64* %88, i32 15
  %90 = load i64, i64* %89, align 4
  %91 = load i64*, i64** %2, align 4
  %92 = getelementptr inbounds i64, i64* %91, i32 5
  %93 = load i64, i64* %92, align 4
  %94 = add nsw i64 %93, %90
  store i64 %94, i64* %92, align 4
  %95 = load i64*, i64** %2, align 4
  %96 = getelementptr inbounds i64, i64* %95, i32 14
  %97 = load i64, i64* %96, align 4
  %98 = shl i64 %97, 4
  %99 = load i64*, i64** %2, align 4
  %100 = getelementptr inbounds i64, i64* %99, i32 4
  %101 = load i64, i64* %100, align 4
  %102 = add nsw i64 %101, %98
  store i64 %102, i64* %100, align 4
  %103 = load i64*, i64** %2, align 4
  %104 = getelementptr inbounds i64, i64* %103, i32 14
  %105 = load i64, i64* %104, align 4
  %106 = shl i64 %105, 1
  %107 = load i64*, i64** %2, align 4
  %108 = getelementptr inbounds i64, i64* %107, i32 4
  %109 = load i64, i64* %108, align 4
  %110 = add nsw i64 %109, %106
  store i64 %110, i64* %108, align 4
  %111 = load i64*, i64** %2, align 4
  %112 = getelementptr inbounds i64, i64* %111, i32 14
  %113 = load i64, i64* %112, align 4
  %114 = load i64*, i64** %2, align 4
  %115 = getelementptr inbounds i64, i64* %114, i32 4
  %116 = load i64, i64* %115, align 4
  %117 = add nsw i64 %116, %113
  store i64 %117, i64* %115, align 4
  %118 = load i64*, i64** %2, align 4
  %119 = getelementptr inbounds i64, i64* %118, i32 13
  %120 = load i64, i64* %119, align 4
  %121 = shl i64 %120, 4
  %122 = load i64*, i64** %2, align 4
  %123 = getelementptr inbounds i64, i64* %122, i32 3
  %124 = load i64, i64* %123, align 4
  %125 = add nsw i64 %124, %121
  store i64 %125, i64* %123, align 4
  %126 = load i64*, i64** %2, align 4
  %127 = getelementptr inbounds i64, i64* %126, i32 13
  %128 = load i64, i64* %127, align 4
  %129 = shl i64 %128, 1
  %130 = load i64*, i64** %2, align 4
  %131 = getelementptr inbounds i64, i64* %130, i32 3
  %132 = load i64, i64* %131, align 4
  %133 = add nsw i64 %132, %129
  store i64 %133, i64* %131, align 4
  %134 = load i64*, i64** %2, align 4
  %135 = getelementptr inbounds i64, i64* %134, i32 13
  %136 = load i64, i64* %135, align 4
  %137 = load i64*, i64** %2, align 4
  %138 = getelementptr inbounds i64, i64* %137, i32 3
  %139 = load i64, i64* %138, align 4
  %140 = add nsw i64 %139, %136
  store i64 %140, i64* %138, align 4
  %141 = load i64*, i64** %2, align 4
  %142 = getelementptr inbounds i64, i64* %141, i32 12
  %143 = load i64, i64* %142, align 4
  %144 = shl i64 %143, 4
  %145 = load i64*, i64** %2, align 4
  %146 = getelementptr inbounds i64, i64* %145, i32 2
  %147 = load i64, i64* %146, align 4
  %148 = add nsw i64 %147, %144
  store i64 %148, i64* %146, align 4
  %149 = load i64*, i64** %2, align 4
  %150 = getelementptr inbounds i64, i64* %149, i32 12
  %151 = load i64, i64* %150, align 4
  %152 = shl i64 %151, 1
  %153 = load i64*, i64** %2, align 4
  %154 = getelementptr inbounds i64, i64* %153, i32 2
  %155 = load i64, i64* %154, align 4
  %156 = add nsw i64 %155, %152
  store i64 %156, i64* %154, align 4
  %157 = load i64*, i64** %2, align 4
  %158 = getelementptr inbounds i64, i64* %157, i32 12
  %159 = load i64, i64* %158, align 4
  %160 = load i64*, i64** %2, align 4
  %161 = getelementptr inbounds i64, i64* %160, i32 2
  %162 = load i64, i64* %161, align 4
  %163 = add nsw i64 %162, %159
  store i64 %163, i64* %161, align 4
  %164 = load i64*, i64** %2, align 4
  %165 = getelementptr inbounds i64, i64* %164, i32 11
  %166 = load i64, i64* %165, align 4
  %167 = shl i64 %166, 4
  %168 = load i64*, i64** %2, align 4
  %169 = getelementptr inbounds i64, i64* %168, i32 1
  %170 = load i64, i64* %169, align 4
  %171 = add nsw i64 %170, %167
  store i64 %171, i64* %169, align 4
  %172 = load i64*, i64** %2, align 4
  %173 = getelementptr inbounds i64, i64* %172, i32 11
  %174 = load i64, i64* %173, align 4
  %175 = shl i64 %174, 1
  %176 = load i64*, i64** %2, align 4
  %177 = getelementptr inbounds i64, i64* %176, i32 1
  %178 = load i64, i64* %177, align 4
  %179 = add nsw i64 %178, %175
  store i64 %179, i64* %177, align 4
  %180 = load i64*, i64** %2, align 4
  %181 = getelementptr inbounds i64, i64* %180, i32 11
  %182 = load i64, i64* %181, align 4
  %183 = load i64*, i64** %2, align 4
  %184 = getelementptr inbounds i64, i64* %183, i32 1
  %185 = load i64, i64* %184, align 4
  %186 = add nsw i64 %185, %182
  store i64 %186, i64* %184, align 4
  %187 = load i64*, i64** %2, align 4
  %188 = getelementptr inbounds i64, i64* %187, i32 10
  %189 = load i64, i64* %188, align 4
  %190 = shl i64 %189, 4
  %191 = load i64*, i64** %2, align 4
  %192 = getelementptr inbounds i64, i64* %191, i32 0
  %193 = load i64, i64* %192, align 4
  %194 = add nsw i64 %193, %190
  store i64 %194, i64* %192, align 4
  %195 = load i64*, i64** %2, align 4
  %196 = getelementptr inbounds i64, i64* %195, i32 10
  %197 = load i64, i64* %196, align 4
  %198 = shl i64 %197, 1
  %199 = load i64*, i64** %2, align 4
  %200 = getelementptr inbounds i64, i64* %199, i32 0
  %201 = load i64, i64* %200, align 4
  %202 = add nsw i64 %201, %198
  store i64 %202, i64* %200, align 4
  %203 = load i64*, i64** %2, align 4
  %204 = getelementptr inbounds i64, i64* %203, i32 10
  %205 = load i64, i64* %204, align 4
  %206 = load i64*, i64** %2, align 4
  %207 = getelementptr inbounds i64, i64* %206, i32 0
  %208 = load i64, i64* %207, align 4
  %209 = add nsw i64 %208, %205
  store i64 %209, i64* %207, align 4
  ret void
}

; Function Attrs: noinline nounwind optnone
define internal void @freduce_coefficients(i64* %0) #0 {
  %2 = alloca i64*, align 4
  %3 = alloca i32, align 4
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  store i64* %0, i64** %2, align 4
  %6 = load i64*, i64** %2, align 4
  %7 = getelementptr inbounds i64, i64* %6, i32 10
  store i64 0, i64* %7, align 4
  store i32 0, i32* %3, align 4
  br label %8

8:                                                ; preds = %52, %1
  %9 = load i32, i32* %3, align 4
  %10 = icmp ult i32 %9, 10
  br i1 %10, label %11, label %55

11:                                               ; preds = %8
  %12 = load i64*, i64** %2, align 4
  %13 = load i32, i32* %3, align 4
  %14 = getelementptr inbounds i64, i64* %12, i32 %13
  %15 = load i64, i64* %14, align 4
  %16 = call i64 @div_by_2_26(i64 %15)
  store i64 %16, i64* %4, align 8
  %17 = load i64, i64* %4, align 8
  %18 = shl i64 %17, 26
  %19 = load i64*, i64** %2, align 4
  %20 = load i32, i32* %3, align 4
  %21 = getelementptr inbounds i64, i64* %19, i32 %20
  %22 = load i64, i64* %21, align 4
  %23 = sub nsw i64 %22, %18
  store i64 %23, i64* %21, align 4
  %24 = load i64, i64* %4, align 8
  %25 = load i64*, i64** %2, align 4
  %26 = load i32, i32* %3, align 4
  %27 = add i32 %26, 1
  %28 = getelementptr inbounds i64, i64* %25, i32 %27
  %29 = load i64, i64* %28, align 4
  %30 = add nsw i64 %29, %24
  store i64 %30, i64* %28, align 4
  %31 = load i64*, i64** %2, align 4
  %32 = load i32, i32* %3, align 4
  %33 = add i32 %32, 1
  %34 = getelementptr inbounds i64, i64* %31, i32 %33
  %35 = load i64, i64* %34, align 4
  %36 = call i64 @div_by_2_25(i64 %35)
  store i64 %36, i64* %4, align 8
  %37 = load i64, i64* %4, align 8
  %38 = shl i64 %37, 25
  %39 = load i64*, i64** %2, align 4
  %40 = load i32, i32* %3, align 4
  %41 = add i32 %40, 1
  %42 = getelementptr inbounds i64, i64* %39, i32 %41
  %43 = load i64, i64* %42, align 4
  %44 = sub nsw i64 %43, %38
  store i64 %44, i64* %42, align 4
  %45 = load i64, i64* %4, align 8
  %46 = load i64*, i64** %2, align 4
  %47 = load i32, i32* %3, align 4
  %48 = add i32 %47, 2
  %49 = getelementptr inbounds i64, i64* %46, i32 %48
  %50 = load i64, i64* %49, align 4
  %51 = add nsw i64 %50, %45
  store i64 %51, i64* %49, align 4
  br label %52

52:                                               ; preds = %11
  %53 = load i32, i32* %3, align 4
  %54 = add i32 %53, 2
  store i32 %54, i32* %3, align 4
  br label %8, !llvm.loop !23

55:                                               ; preds = %8
  %56 = load i64*, i64** %2, align 4
  %57 = getelementptr inbounds i64, i64* %56, i32 10
  %58 = load i64, i64* %57, align 4
  %59 = shl i64 %58, 4
  %60 = load i64*, i64** %2, align 4
  %61 = getelementptr inbounds i64, i64* %60, i32 0
  %62 = load i64, i64* %61, align 4
  %63 = add nsw i64 %62, %59
  store i64 %63, i64* %61, align 4
  %64 = load i64*, i64** %2, align 4
  %65 = getelementptr inbounds i64, i64* %64, i32 10
  %66 = load i64, i64* %65, align 4
  %67 = shl i64 %66, 1
  %68 = load i64*, i64** %2, align 4
  %69 = getelementptr inbounds i64, i64* %68, i32 0
  %70 = load i64, i64* %69, align 4
  %71 = add nsw i64 %70, %67
  store i64 %71, i64* %69, align 4
  %72 = load i64*, i64** %2, align 4
  %73 = getelementptr inbounds i64, i64* %72, i32 10
  %74 = load i64, i64* %73, align 4
  %75 = load i64*, i64** %2, align 4
  %76 = getelementptr inbounds i64, i64* %75, i32 0
  %77 = load i64, i64* %76, align 4
  %78 = add nsw i64 %77, %74
  store i64 %78, i64* %76, align 4
  %79 = load i64*, i64** %2, align 4
  %80 = getelementptr inbounds i64, i64* %79, i32 10
  store i64 0, i64* %80, align 4
  %81 = load i64*, i64** %2, align 4
  %82 = getelementptr inbounds i64, i64* %81, i32 0
  %83 = load i64, i64* %82, align 4
  %84 = call i64 @div_by_2_26(i64 %83)
  store i64 %84, i64* %5, align 8
  %85 = load i64, i64* %5, align 8
  %86 = shl i64 %85, 26
  %87 = load i64*, i64** %2, align 4
  %88 = getelementptr inbounds i64, i64* %87, i32 0
  %89 = load i64, i64* %88, align 4
  %90 = sub nsw i64 %89, %86
  store i64 %90, i64* %88, align 4
  %91 = load i64, i64* %5, align 8
  %92 = load i64*, i64** %2, align 4
  %93 = getelementptr inbounds i64, i64* %92, i32 1
  %94 = load i64, i64* %93, align 4
  %95 = add nsw i64 %94, %91
  store i64 %95, i64* %93, align 4
  ret void
}

; Function Attrs: noinline nounwind optnone
define internal void @fsquare(i64* %0, i64* %1) #0 {
  %3 = alloca i64*, align 4
  %4 = alloca i64*, align 4
  %5 = alloca [19 x i64], align 8
  store i64* %0, i64** %3, align 4
  store i64* %1, i64** %4, align 4
  %6 = getelementptr inbounds [19 x i64], [19 x i64]* %5, i32 0, i32 0
  %7 = load i64*, i64** %4, align 4
  call void @fsquare_inner(i64* %6, i64* %7)
  %8 = getelementptr inbounds [19 x i64], [19 x i64]* %5, i32 0, i32 0
  call void @freduce_degree(i64* %8)
  %9 = getelementptr inbounds [19 x i64], [19 x i64]* %5, i32 0, i32 0
  call void @freduce_coefficients(i64* %9)
  %10 = load i64*, i64** %3, align 4
  %11 = bitcast i64* %10 to i8*
  %12 = getelementptr inbounds [19 x i64], [19 x i64]* %5, i32 0, i32 0
  %13 = bitcast i64* %12 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* align 4 %11, i8* align 8 %13, i32 80, i1 false)
  ret void
}

; Function Attrs: noinline nounwind optnone
define internal void @fscalar_product(i64* %0, i64* %1, i64 %2) #0 {
  %4 = alloca i64*, align 4
  %5 = alloca i64*, align 4
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  store i64* %0, i64** %4, align 4
  store i64* %1, i64** %5, align 4
  store i64 %2, i64* %6, align 8
  store i32 0, i32* %7, align 4
  br label %8

8:                                                ; preds = %21, %3
  %9 = load i32, i32* %7, align 4
  %10 = icmp ult i32 %9, 10
  br i1 %10, label %11, label %24

11:                                               ; preds = %8
  %12 = load i64*, i64** %5, align 4
  %13 = load i32, i32* %7, align 4
  %14 = getelementptr inbounds i64, i64* %12, i32 %13
  %15 = load i64, i64* %14, align 4
  %16 = load i64, i64* %6, align 8
  %17 = mul nsw i64 %15, %16
  %18 = load i64*, i64** %4, align 4
  %19 = load i32, i32* %7, align 4
  %20 = getelementptr inbounds i64, i64* %18, i32 %19
  store i64 %17, i64* %20, align 4
  br label %21

21:                                               ; preds = %11
  %22 = load i32, i32* %7, align 4
  %23 = add i32 %22, 1
  store i32 %23, i32* %7, align 4
  br label %8, !llvm.loop !24

24:                                               ; preds = %8
  ret void
}

; Function Attrs: noinline nounwind optnone
define internal i64 @div_by_2_26(i64 %0) #0 {
  %2 = alloca i64, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store i64 %0, i64* %2, align 8
  %6 = load i64, i64* %2, align 8
  %7 = lshr i64 %6, 32
  %8 = trunc i64 %7 to i32
  store i32 %8, i32* %3, align 4
  %9 = load i32, i32* %3, align 4
  %10 = ashr i32 %9, 31
  store i32 %10, i32* %4, align 4
  %11 = load i32, i32* %4, align 4
  %12 = lshr i32 %11, 6
  store i32 %12, i32* %5, align 4
  %13 = load i64, i64* %2, align 8
  %14 = load i32, i32* %5, align 4
  %15 = sext i32 %14 to i64
  %16 = add nsw i64 %13, %15
  %17 = ashr i64 %16, 26
  ret i64 %17
}

; Function Attrs: noinline nounwind optnone
define internal i64 @div_by_2_25(i64 %0) #0 {
  %2 = alloca i64, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store i64 %0, i64* %2, align 8
  %6 = load i64, i64* %2, align 8
  %7 = lshr i64 %6, 32
  %8 = trunc i64 %7 to i32
  store i32 %8, i32* %3, align 4
  %9 = load i32, i32* %3, align 4
  %10 = ashr i32 %9, 31
  store i32 %10, i32* %4, align 4
  %11 = load i32, i32* %4, align 4
  %12 = lshr i32 %11, 7
  store i32 %12, i32* %5, align 4
  %13 = load i64, i64* %2, align 8
  %14 = load i32, i32* %5, align 4
  %15 = sext i32 %14 to i64
  %16 = add nsw i64 %13, %15
  %17 = ashr i64 %16, 25
  ret i64 %17
}

; Function Attrs: noinline nounwind optnone
define internal void @fsquare_inner(i64* %0, i64* %1) #0 {
  %3 = alloca i64*, align 4
  %4 = alloca i64*, align 4
  store i64* %0, i64** %3, align 4
  store i64* %1, i64** %4, align 4
  %5 = load i64*, i64** %4, align 4
  %6 = getelementptr inbounds i64, i64* %5, i32 0
  %7 = load i64, i64* %6, align 4
  %8 = trunc i64 %7 to i32
  %9 = sext i32 %8 to i64
  %10 = load i64*, i64** %4, align 4
  %11 = getelementptr inbounds i64, i64* %10, i32 0
  %12 = load i64, i64* %11, align 4
  %13 = trunc i64 %12 to i32
  %14 = sext i32 %13 to i64
  %15 = mul nsw i64 %9, %14
  %16 = load i64*, i64** %3, align 4
  %17 = getelementptr inbounds i64, i64* %16, i32 0
  store i64 %15, i64* %17, align 4
  %18 = load i64*, i64** %4, align 4
  %19 = getelementptr inbounds i64, i64* %18, i32 0
  %20 = load i64, i64* %19, align 4
  %21 = trunc i64 %20 to i32
  %22 = sext i32 %21 to i64
  %23 = mul nsw i64 2, %22
  %24 = load i64*, i64** %4, align 4
  %25 = getelementptr inbounds i64, i64* %24, i32 1
  %26 = load i64, i64* %25, align 4
  %27 = trunc i64 %26 to i32
  %28 = sext i32 %27 to i64
  %29 = mul nsw i64 %23, %28
  %30 = load i64*, i64** %3, align 4
  %31 = getelementptr inbounds i64, i64* %30, i32 1
  store i64 %29, i64* %31, align 4
  %32 = load i64*, i64** %4, align 4
  %33 = getelementptr inbounds i64, i64* %32, i32 1
  %34 = load i64, i64* %33, align 4
  %35 = trunc i64 %34 to i32
  %36 = sext i32 %35 to i64
  %37 = load i64*, i64** %4, align 4
  %38 = getelementptr inbounds i64, i64* %37, i32 1
  %39 = load i64, i64* %38, align 4
  %40 = trunc i64 %39 to i32
  %41 = sext i32 %40 to i64
  %42 = mul nsw i64 %36, %41
  %43 = load i64*, i64** %4, align 4
  %44 = getelementptr inbounds i64, i64* %43, i32 0
  %45 = load i64, i64* %44, align 4
  %46 = trunc i64 %45 to i32
  %47 = sext i32 %46 to i64
  %48 = load i64*, i64** %4, align 4
  %49 = getelementptr inbounds i64, i64* %48, i32 2
  %50 = load i64, i64* %49, align 4
  %51 = trunc i64 %50 to i32
  %52 = sext i32 %51 to i64
  %53 = mul nsw i64 %47, %52
  %54 = add nsw i64 %42, %53
  %55 = mul nsw i64 2, %54
  %56 = load i64*, i64** %3, align 4
  %57 = getelementptr inbounds i64, i64* %56, i32 2
  store i64 %55, i64* %57, align 4
  %58 = load i64*, i64** %4, align 4
  %59 = getelementptr inbounds i64, i64* %58, i32 1
  %60 = load i64, i64* %59, align 4
  %61 = trunc i64 %60 to i32
  %62 = sext i32 %61 to i64
  %63 = load i64*, i64** %4, align 4
  %64 = getelementptr inbounds i64, i64* %63, i32 2
  %65 = load i64, i64* %64, align 4
  %66 = trunc i64 %65 to i32
  %67 = sext i32 %66 to i64
  %68 = mul nsw i64 %62, %67
  %69 = load i64*, i64** %4, align 4
  %70 = getelementptr inbounds i64, i64* %69, i32 0
  %71 = load i64, i64* %70, align 4
  %72 = trunc i64 %71 to i32
  %73 = sext i32 %72 to i64
  %74 = load i64*, i64** %4, align 4
  %75 = getelementptr inbounds i64, i64* %74, i32 3
  %76 = load i64, i64* %75, align 4
  %77 = trunc i64 %76 to i32
  %78 = sext i32 %77 to i64
  %79 = mul nsw i64 %73, %78
  %80 = add nsw i64 %68, %79
  %81 = mul nsw i64 2, %80
  %82 = load i64*, i64** %3, align 4
  %83 = getelementptr inbounds i64, i64* %82, i32 3
  store i64 %81, i64* %83, align 4
  %84 = load i64*, i64** %4, align 4
  %85 = getelementptr inbounds i64, i64* %84, i32 2
  %86 = load i64, i64* %85, align 4
  %87 = trunc i64 %86 to i32
  %88 = sext i32 %87 to i64
  %89 = load i64*, i64** %4, align 4
  %90 = getelementptr inbounds i64, i64* %89, i32 2
  %91 = load i64, i64* %90, align 4
  %92 = trunc i64 %91 to i32
  %93 = sext i32 %92 to i64
  %94 = mul nsw i64 %88, %93
  %95 = load i64*, i64** %4, align 4
  %96 = getelementptr inbounds i64, i64* %95, i32 1
  %97 = load i64, i64* %96, align 4
  %98 = trunc i64 %97 to i32
  %99 = sext i32 %98 to i64
  %100 = mul nsw i64 4, %99
  %101 = load i64*, i64** %4, align 4
  %102 = getelementptr inbounds i64, i64* %101, i32 3
  %103 = load i64, i64* %102, align 4
  %104 = trunc i64 %103 to i32
  %105 = sext i32 %104 to i64
  %106 = mul nsw i64 %100, %105
  %107 = add nsw i64 %94, %106
  %108 = load i64*, i64** %4, align 4
  %109 = getelementptr inbounds i64, i64* %108, i32 0
  %110 = load i64, i64* %109, align 4
  %111 = trunc i64 %110 to i32
  %112 = sext i32 %111 to i64
  %113 = mul nsw i64 2, %112
  %114 = load i64*, i64** %4, align 4
  %115 = getelementptr inbounds i64, i64* %114, i32 4
  %116 = load i64, i64* %115, align 4
  %117 = trunc i64 %116 to i32
  %118 = sext i32 %117 to i64
  %119 = mul nsw i64 %113, %118
  %120 = add nsw i64 %107, %119
  %121 = load i64*, i64** %3, align 4
  %122 = getelementptr inbounds i64, i64* %121, i32 4
  store i64 %120, i64* %122, align 4
  %123 = load i64*, i64** %4, align 4
  %124 = getelementptr inbounds i64, i64* %123, i32 2
  %125 = load i64, i64* %124, align 4
  %126 = trunc i64 %125 to i32
  %127 = sext i32 %126 to i64
  %128 = load i64*, i64** %4, align 4
  %129 = getelementptr inbounds i64, i64* %128, i32 3
  %130 = load i64, i64* %129, align 4
  %131 = trunc i64 %130 to i32
  %132 = sext i32 %131 to i64
  %133 = mul nsw i64 %127, %132
  %134 = load i64*, i64** %4, align 4
  %135 = getelementptr inbounds i64, i64* %134, i32 1
  %136 = load i64, i64* %135, align 4
  %137 = trunc i64 %136 to i32
  %138 = sext i32 %137 to i64
  %139 = load i64*, i64** %4, align 4
  %140 = getelementptr inbounds i64, i64* %139, i32 4
  %141 = load i64, i64* %140, align 4
  %142 = trunc i64 %141 to i32
  %143 = sext i32 %142 to i64
  %144 = mul nsw i64 %138, %143
  %145 = add nsw i64 %133, %144
  %146 = load i64*, i64** %4, align 4
  %147 = getelementptr inbounds i64, i64* %146, i32 0
  %148 = load i64, i64* %147, align 4
  %149 = trunc i64 %148 to i32
  %150 = sext i32 %149 to i64
  %151 = load i64*, i64** %4, align 4
  %152 = getelementptr inbounds i64, i64* %151, i32 5
  %153 = load i64, i64* %152, align 4
  %154 = trunc i64 %153 to i32
  %155 = sext i32 %154 to i64
  %156 = mul nsw i64 %150, %155
  %157 = add nsw i64 %145, %156
  %158 = mul nsw i64 2, %157
  %159 = load i64*, i64** %3, align 4
  %160 = getelementptr inbounds i64, i64* %159, i32 5
  store i64 %158, i64* %160, align 4
  %161 = load i64*, i64** %4, align 4
  %162 = getelementptr inbounds i64, i64* %161, i32 3
  %163 = load i64, i64* %162, align 4
  %164 = trunc i64 %163 to i32
  %165 = sext i32 %164 to i64
  %166 = load i64*, i64** %4, align 4
  %167 = getelementptr inbounds i64, i64* %166, i32 3
  %168 = load i64, i64* %167, align 4
  %169 = trunc i64 %168 to i32
  %170 = sext i32 %169 to i64
  %171 = mul nsw i64 %165, %170
  %172 = load i64*, i64** %4, align 4
  %173 = getelementptr inbounds i64, i64* %172, i32 2
  %174 = load i64, i64* %173, align 4
  %175 = trunc i64 %174 to i32
  %176 = sext i32 %175 to i64
  %177 = load i64*, i64** %4, align 4
  %178 = getelementptr inbounds i64, i64* %177, i32 4
  %179 = load i64, i64* %178, align 4
  %180 = trunc i64 %179 to i32
  %181 = sext i32 %180 to i64
  %182 = mul nsw i64 %176, %181
  %183 = add nsw i64 %171, %182
  %184 = load i64*, i64** %4, align 4
  %185 = getelementptr inbounds i64, i64* %184, i32 0
  %186 = load i64, i64* %185, align 4
  %187 = trunc i64 %186 to i32
  %188 = sext i32 %187 to i64
  %189 = load i64*, i64** %4, align 4
  %190 = getelementptr inbounds i64, i64* %189, i32 6
  %191 = load i64, i64* %190, align 4
  %192 = trunc i64 %191 to i32
  %193 = sext i32 %192 to i64
  %194 = mul nsw i64 %188, %193
  %195 = add nsw i64 %183, %194
  %196 = load i64*, i64** %4, align 4
  %197 = getelementptr inbounds i64, i64* %196, i32 1
  %198 = load i64, i64* %197, align 4
  %199 = trunc i64 %198 to i32
  %200 = sext i32 %199 to i64
  %201 = mul nsw i64 2, %200
  %202 = load i64*, i64** %4, align 4
  %203 = getelementptr inbounds i64, i64* %202, i32 5
  %204 = load i64, i64* %203, align 4
  %205 = trunc i64 %204 to i32
  %206 = sext i32 %205 to i64
  %207 = mul nsw i64 %201, %206
  %208 = add nsw i64 %195, %207
  %209 = mul nsw i64 2, %208
  %210 = load i64*, i64** %3, align 4
  %211 = getelementptr inbounds i64, i64* %210, i32 6
  store i64 %209, i64* %211, align 4
  %212 = load i64*, i64** %4, align 4
  %213 = getelementptr inbounds i64, i64* %212, i32 3
  %214 = load i64, i64* %213, align 4
  %215 = trunc i64 %214 to i32
  %216 = sext i32 %215 to i64
  %217 = load i64*, i64** %4, align 4
  %218 = getelementptr inbounds i64, i64* %217, i32 4
  %219 = load i64, i64* %218, align 4
  %220 = trunc i64 %219 to i32
  %221 = sext i32 %220 to i64
  %222 = mul nsw i64 %216, %221
  %223 = load i64*, i64** %4, align 4
  %224 = getelementptr inbounds i64, i64* %223, i32 2
  %225 = load i64, i64* %224, align 4
  %226 = trunc i64 %225 to i32
  %227 = sext i32 %226 to i64
  %228 = load i64*, i64** %4, align 4
  %229 = getelementptr inbounds i64, i64* %228, i32 5
  %230 = load i64, i64* %229, align 4
  %231 = trunc i64 %230 to i32
  %232 = sext i32 %231 to i64
  %233 = mul nsw i64 %227, %232
  %234 = add nsw i64 %222, %233
  %235 = load i64*, i64** %4, align 4
  %236 = getelementptr inbounds i64, i64* %235, i32 1
  %237 = load i64, i64* %236, align 4
  %238 = trunc i64 %237 to i32
  %239 = sext i32 %238 to i64
  %240 = load i64*, i64** %4, align 4
  %241 = getelementptr inbounds i64, i64* %240, i32 6
  %242 = load i64, i64* %241, align 4
  %243 = trunc i64 %242 to i32
  %244 = sext i32 %243 to i64
  %245 = mul nsw i64 %239, %244
  %246 = add nsw i64 %234, %245
  %247 = load i64*, i64** %4, align 4
  %248 = getelementptr inbounds i64, i64* %247, i32 0
  %249 = load i64, i64* %248, align 4
  %250 = trunc i64 %249 to i32
  %251 = sext i32 %250 to i64
  %252 = load i64*, i64** %4, align 4
  %253 = getelementptr inbounds i64, i64* %252, i32 7
  %254 = load i64, i64* %253, align 4
  %255 = trunc i64 %254 to i32
  %256 = sext i32 %255 to i64
  %257 = mul nsw i64 %251, %256
  %258 = add nsw i64 %246, %257
  %259 = mul nsw i64 2, %258
  %260 = load i64*, i64** %3, align 4
  %261 = getelementptr inbounds i64, i64* %260, i32 7
  store i64 %259, i64* %261, align 4
  %262 = load i64*, i64** %4, align 4
  %263 = getelementptr inbounds i64, i64* %262, i32 4
  %264 = load i64, i64* %263, align 4
  %265 = trunc i64 %264 to i32
  %266 = sext i32 %265 to i64
  %267 = load i64*, i64** %4, align 4
  %268 = getelementptr inbounds i64, i64* %267, i32 4
  %269 = load i64, i64* %268, align 4
  %270 = trunc i64 %269 to i32
  %271 = sext i32 %270 to i64
  %272 = mul nsw i64 %266, %271
  %273 = load i64*, i64** %4, align 4
  %274 = getelementptr inbounds i64, i64* %273, i32 2
  %275 = load i64, i64* %274, align 4
  %276 = trunc i64 %275 to i32
  %277 = sext i32 %276 to i64
  %278 = load i64*, i64** %4, align 4
  %279 = getelementptr inbounds i64, i64* %278, i32 6
  %280 = load i64, i64* %279, align 4
  %281 = trunc i64 %280 to i32
  %282 = sext i32 %281 to i64
  %283 = mul nsw i64 %277, %282
  %284 = load i64*, i64** %4, align 4
  %285 = getelementptr inbounds i64, i64* %284, i32 0
  %286 = load i64, i64* %285, align 4
  %287 = trunc i64 %286 to i32
  %288 = sext i32 %287 to i64
  %289 = load i64*, i64** %4, align 4
  %290 = getelementptr inbounds i64, i64* %289, i32 8
  %291 = load i64, i64* %290, align 4
  %292 = trunc i64 %291 to i32
  %293 = sext i32 %292 to i64
  %294 = mul nsw i64 %288, %293
  %295 = add nsw i64 %283, %294
  %296 = load i64*, i64** %4, align 4
  %297 = getelementptr inbounds i64, i64* %296, i32 1
  %298 = load i64, i64* %297, align 4
  %299 = trunc i64 %298 to i32
  %300 = sext i32 %299 to i64
  %301 = load i64*, i64** %4, align 4
  %302 = getelementptr inbounds i64, i64* %301, i32 7
  %303 = load i64, i64* %302, align 4
  %304 = trunc i64 %303 to i32
  %305 = sext i32 %304 to i64
  %306 = mul nsw i64 %300, %305
  %307 = load i64*, i64** %4, align 4
  %308 = getelementptr inbounds i64, i64* %307, i32 3
  %309 = load i64, i64* %308, align 4
  %310 = trunc i64 %309 to i32
  %311 = sext i32 %310 to i64
  %312 = load i64*, i64** %4, align 4
  %313 = getelementptr inbounds i64, i64* %312, i32 5
  %314 = load i64, i64* %313, align 4
  %315 = trunc i64 %314 to i32
  %316 = sext i32 %315 to i64
  %317 = mul nsw i64 %311, %316
  %318 = add nsw i64 %306, %317
  %319 = mul nsw i64 2, %318
  %320 = add nsw i64 %295, %319
  %321 = mul nsw i64 2, %320
  %322 = add nsw i64 %272, %321
  %323 = load i64*, i64** %3, align 4
  %324 = getelementptr inbounds i64, i64* %323, i32 8
  store i64 %322, i64* %324, align 4
  %325 = load i64*, i64** %4, align 4
  %326 = getelementptr inbounds i64, i64* %325, i32 4
  %327 = load i64, i64* %326, align 4
  %328 = trunc i64 %327 to i32
  %329 = sext i32 %328 to i64
  %330 = load i64*, i64** %4, align 4
  %331 = getelementptr inbounds i64, i64* %330, i32 5
  %332 = load i64, i64* %331, align 4
  %333 = trunc i64 %332 to i32
  %334 = sext i32 %333 to i64
  %335 = mul nsw i64 %329, %334
  %336 = load i64*, i64** %4, align 4
  %337 = getelementptr inbounds i64, i64* %336, i32 3
  %338 = load i64, i64* %337, align 4
  %339 = trunc i64 %338 to i32
  %340 = sext i32 %339 to i64
  %341 = load i64*, i64** %4, align 4
  %342 = getelementptr inbounds i64, i64* %341, i32 6
  %343 = load i64, i64* %342, align 4
  %344 = trunc i64 %343 to i32
  %345 = sext i32 %344 to i64
  %346 = mul nsw i64 %340, %345
  %347 = add nsw i64 %335, %346
  %348 = load i64*, i64** %4, align 4
  %349 = getelementptr inbounds i64, i64* %348, i32 2
  %350 = load i64, i64* %349, align 4
  %351 = trunc i64 %350 to i32
  %352 = sext i32 %351 to i64
  %353 = load i64*, i64** %4, align 4
  %354 = getelementptr inbounds i64, i64* %353, i32 7
  %355 = load i64, i64* %354, align 4
  %356 = trunc i64 %355 to i32
  %357 = sext i32 %356 to i64
  %358 = mul nsw i64 %352, %357
  %359 = add nsw i64 %347, %358
  %360 = load i64*, i64** %4, align 4
  %361 = getelementptr inbounds i64, i64* %360, i32 1
  %362 = load i64, i64* %361, align 4
  %363 = trunc i64 %362 to i32
  %364 = sext i32 %363 to i64
  %365 = load i64*, i64** %4, align 4
  %366 = getelementptr inbounds i64, i64* %365, i32 8
  %367 = load i64, i64* %366, align 4
  %368 = trunc i64 %367 to i32
  %369 = sext i32 %368 to i64
  %370 = mul nsw i64 %364, %369
  %371 = add nsw i64 %359, %370
  %372 = load i64*, i64** %4, align 4
  %373 = getelementptr inbounds i64, i64* %372, i32 0
  %374 = load i64, i64* %373, align 4
  %375 = trunc i64 %374 to i32
  %376 = sext i32 %375 to i64
  %377 = load i64*, i64** %4, align 4
  %378 = getelementptr inbounds i64, i64* %377, i32 9
  %379 = load i64, i64* %378, align 4
  %380 = trunc i64 %379 to i32
  %381 = sext i32 %380 to i64
  %382 = mul nsw i64 %376, %381
  %383 = add nsw i64 %371, %382
  %384 = mul nsw i64 2, %383
  %385 = load i64*, i64** %3, align 4
  %386 = getelementptr inbounds i64, i64* %385, i32 9
  store i64 %384, i64* %386, align 4
  %387 = load i64*, i64** %4, align 4
  %388 = getelementptr inbounds i64, i64* %387, i32 5
  %389 = load i64, i64* %388, align 4
  %390 = trunc i64 %389 to i32
  %391 = sext i32 %390 to i64
  %392 = load i64*, i64** %4, align 4
  %393 = getelementptr inbounds i64, i64* %392, i32 5
  %394 = load i64, i64* %393, align 4
  %395 = trunc i64 %394 to i32
  %396 = sext i32 %395 to i64
  %397 = mul nsw i64 %391, %396
  %398 = load i64*, i64** %4, align 4
  %399 = getelementptr inbounds i64, i64* %398, i32 4
  %400 = load i64, i64* %399, align 4
  %401 = trunc i64 %400 to i32
  %402 = sext i32 %401 to i64
  %403 = load i64*, i64** %4, align 4
  %404 = getelementptr inbounds i64, i64* %403, i32 6
  %405 = load i64, i64* %404, align 4
  %406 = trunc i64 %405 to i32
  %407 = sext i32 %406 to i64
  %408 = mul nsw i64 %402, %407
  %409 = add nsw i64 %397, %408
  %410 = load i64*, i64** %4, align 4
  %411 = getelementptr inbounds i64, i64* %410, i32 2
  %412 = load i64, i64* %411, align 4
  %413 = trunc i64 %412 to i32
  %414 = sext i32 %413 to i64
  %415 = load i64*, i64** %4, align 4
  %416 = getelementptr inbounds i64, i64* %415, i32 8
  %417 = load i64, i64* %416, align 4
  %418 = trunc i64 %417 to i32
  %419 = sext i32 %418 to i64
  %420 = mul nsw i64 %414, %419
  %421 = add nsw i64 %409, %420
  %422 = load i64*, i64** %4, align 4
  %423 = getelementptr inbounds i64, i64* %422, i32 3
  %424 = load i64, i64* %423, align 4
  %425 = trunc i64 %424 to i32
  %426 = sext i32 %425 to i64
  %427 = load i64*, i64** %4, align 4
  %428 = getelementptr inbounds i64, i64* %427, i32 7
  %429 = load i64, i64* %428, align 4
  %430 = trunc i64 %429 to i32
  %431 = sext i32 %430 to i64
  %432 = mul nsw i64 %426, %431
  %433 = load i64*, i64** %4, align 4
  %434 = getelementptr inbounds i64, i64* %433, i32 1
  %435 = load i64, i64* %434, align 4
  %436 = trunc i64 %435 to i32
  %437 = sext i32 %436 to i64
  %438 = load i64*, i64** %4, align 4
  %439 = getelementptr inbounds i64, i64* %438, i32 9
  %440 = load i64, i64* %439, align 4
  %441 = trunc i64 %440 to i32
  %442 = sext i32 %441 to i64
  %443 = mul nsw i64 %437, %442
  %444 = add nsw i64 %432, %443
  %445 = mul nsw i64 2, %444
  %446 = add nsw i64 %421, %445
  %447 = mul nsw i64 2, %446
  %448 = load i64*, i64** %3, align 4
  %449 = getelementptr inbounds i64, i64* %448, i32 10
  store i64 %447, i64* %449, align 4
  %450 = load i64*, i64** %4, align 4
  %451 = getelementptr inbounds i64, i64* %450, i32 5
  %452 = load i64, i64* %451, align 4
  %453 = trunc i64 %452 to i32
  %454 = sext i32 %453 to i64
  %455 = load i64*, i64** %4, align 4
  %456 = getelementptr inbounds i64, i64* %455, i32 6
  %457 = load i64, i64* %456, align 4
  %458 = trunc i64 %457 to i32
  %459 = sext i32 %458 to i64
  %460 = mul nsw i64 %454, %459
  %461 = load i64*, i64** %4, align 4
  %462 = getelementptr inbounds i64, i64* %461, i32 4
  %463 = load i64, i64* %462, align 4
  %464 = trunc i64 %463 to i32
  %465 = sext i32 %464 to i64
  %466 = load i64*, i64** %4, align 4
  %467 = getelementptr inbounds i64, i64* %466, i32 7
  %468 = load i64, i64* %467, align 4
  %469 = trunc i64 %468 to i32
  %470 = sext i32 %469 to i64
  %471 = mul nsw i64 %465, %470
  %472 = add nsw i64 %460, %471
  %473 = load i64*, i64** %4, align 4
  %474 = getelementptr inbounds i64, i64* %473, i32 3
  %475 = load i64, i64* %474, align 4
  %476 = trunc i64 %475 to i32
  %477 = sext i32 %476 to i64
  %478 = load i64*, i64** %4, align 4
  %479 = getelementptr inbounds i64, i64* %478, i32 8
  %480 = load i64, i64* %479, align 4
  %481 = trunc i64 %480 to i32
  %482 = sext i32 %481 to i64
  %483 = mul nsw i64 %477, %482
  %484 = add nsw i64 %472, %483
  %485 = load i64*, i64** %4, align 4
  %486 = getelementptr inbounds i64, i64* %485, i32 2
  %487 = load i64, i64* %486, align 4
  %488 = trunc i64 %487 to i32
  %489 = sext i32 %488 to i64
  %490 = load i64*, i64** %4, align 4
  %491 = getelementptr inbounds i64, i64* %490, i32 9
  %492 = load i64, i64* %491, align 4
  %493 = trunc i64 %492 to i32
  %494 = sext i32 %493 to i64
  %495 = mul nsw i64 %489, %494
  %496 = add nsw i64 %484, %495
  %497 = mul nsw i64 2, %496
  %498 = load i64*, i64** %3, align 4
  %499 = getelementptr inbounds i64, i64* %498, i32 11
  store i64 %497, i64* %499, align 4
  %500 = load i64*, i64** %4, align 4
  %501 = getelementptr inbounds i64, i64* %500, i32 6
  %502 = load i64, i64* %501, align 4
  %503 = trunc i64 %502 to i32
  %504 = sext i32 %503 to i64
  %505 = load i64*, i64** %4, align 4
  %506 = getelementptr inbounds i64, i64* %505, i32 6
  %507 = load i64, i64* %506, align 4
  %508 = trunc i64 %507 to i32
  %509 = sext i32 %508 to i64
  %510 = mul nsw i64 %504, %509
  %511 = load i64*, i64** %4, align 4
  %512 = getelementptr inbounds i64, i64* %511, i32 4
  %513 = load i64, i64* %512, align 4
  %514 = trunc i64 %513 to i32
  %515 = sext i32 %514 to i64
  %516 = load i64*, i64** %4, align 4
  %517 = getelementptr inbounds i64, i64* %516, i32 8
  %518 = load i64, i64* %517, align 4
  %519 = trunc i64 %518 to i32
  %520 = sext i32 %519 to i64
  %521 = mul nsw i64 %515, %520
  %522 = load i64*, i64** %4, align 4
  %523 = getelementptr inbounds i64, i64* %522, i32 5
  %524 = load i64, i64* %523, align 4
  %525 = trunc i64 %524 to i32
  %526 = sext i32 %525 to i64
  %527 = load i64*, i64** %4, align 4
  %528 = getelementptr inbounds i64, i64* %527, i32 7
  %529 = load i64, i64* %528, align 4
  %530 = trunc i64 %529 to i32
  %531 = sext i32 %530 to i64
  %532 = mul nsw i64 %526, %531
  %533 = load i64*, i64** %4, align 4
  %534 = getelementptr inbounds i64, i64* %533, i32 3
  %535 = load i64, i64* %534, align 4
  %536 = trunc i64 %535 to i32
  %537 = sext i32 %536 to i64
  %538 = load i64*, i64** %4, align 4
  %539 = getelementptr inbounds i64, i64* %538, i32 9
  %540 = load i64, i64* %539, align 4
  %541 = trunc i64 %540 to i32
  %542 = sext i32 %541 to i64
  %543 = mul nsw i64 %537, %542
  %544 = add nsw i64 %532, %543
  %545 = mul nsw i64 2, %544
  %546 = add nsw i64 %521, %545
  %547 = mul nsw i64 2, %546
  %548 = add nsw i64 %510, %547
  %549 = load i64*, i64** %3, align 4
  %550 = getelementptr inbounds i64, i64* %549, i32 12
  store i64 %548, i64* %550, align 4
  %551 = load i64*, i64** %4, align 4
  %552 = getelementptr inbounds i64, i64* %551, i32 6
  %553 = load i64, i64* %552, align 4
  %554 = trunc i64 %553 to i32
  %555 = sext i32 %554 to i64
  %556 = load i64*, i64** %4, align 4
  %557 = getelementptr inbounds i64, i64* %556, i32 7
  %558 = load i64, i64* %557, align 4
  %559 = trunc i64 %558 to i32
  %560 = sext i32 %559 to i64
  %561 = mul nsw i64 %555, %560
  %562 = load i64*, i64** %4, align 4
  %563 = getelementptr inbounds i64, i64* %562, i32 5
  %564 = load i64, i64* %563, align 4
  %565 = trunc i64 %564 to i32
  %566 = sext i32 %565 to i64
  %567 = load i64*, i64** %4, align 4
  %568 = getelementptr inbounds i64, i64* %567, i32 8
  %569 = load i64, i64* %568, align 4
  %570 = trunc i64 %569 to i32
  %571 = sext i32 %570 to i64
  %572 = mul nsw i64 %566, %571
  %573 = add nsw i64 %561, %572
  %574 = load i64*, i64** %4, align 4
  %575 = getelementptr inbounds i64, i64* %574, i32 4
  %576 = load i64, i64* %575, align 4
  %577 = trunc i64 %576 to i32
  %578 = sext i32 %577 to i64
  %579 = load i64*, i64** %4, align 4
  %580 = getelementptr inbounds i64, i64* %579, i32 9
  %581 = load i64, i64* %580, align 4
  %582 = trunc i64 %581 to i32
  %583 = sext i32 %582 to i64
  %584 = mul nsw i64 %578, %583
  %585 = add nsw i64 %573, %584
  %586 = mul nsw i64 2, %585
  %587 = load i64*, i64** %3, align 4
  %588 = getelementptr inbounds i64, i64* %587, i32 13
  store i64 %586, i64* %588, align 4
  %589 = load i64*, i64** %4, align 4
  %590 = getelementptr inbounds i64, i64* %589, i32 7
  %591 = load i64, i64* %590, align 4
  %592 = trunc i64 %591 to i32
  %593 = sext i32 %592 to i64
  %594 = load i64*, i64** %4, align 4
  %595 = getelementptr inbounds i64, i64* %594, i32 7
  %596 = load i64, i64* %595, align 4
  %597 = trunc i64 %596 to i32
  %598 = sext i32 %597 to i64
  %599 = mul nsw i64 %593, %598
  %600 = load i64*, i64** %4, align 4
  %601 = getelementptr inbounds i64, i64* %600, i32 6
  %602 = load i64, i64* %601, align 4
  %603 = trunc i64 %602 to i32
  %604 = sext i32 %603 to i64
  %605 = load i64*, i64** %4, align 4
  %606 = getelementptr inbounds i64, i64* %605, i32 8
  %607 = load i64, i64* %606, align 4
  %608 = trunc i64 %607 to i32
  %609 = sext i32 %608 to i64
  %610 = mul nsw i64 %604, %609
  %611 = add nsw i64 %599, %610
  %612 = load i64*, i64** %4, align 4
  %613 = getelementptr inbounds i64, i64* %612, i32 5
  %614 = load i64, i64* %613, align 4
  %615 = trunc i64 %614 to i32
  %616 = sext i32 %615 to i64
  %617 = mul nsw i64 2, %616
  %618 = load i64*, i64** %4, align 4
  %619 = getelementptr inbounds i64, i64* %618, i32 9
  %620 = load i64, i64* %619, align 4
  %621 = trunc i64 %620 to i32
  %622 = sext i32 %621 to i64
  %623 = mul nsw i64 %617, %622
  %624 = add nsw i64 %611, %623
  %625 = mul nsw i64 2, %624
  %626 = load i64*, i64** %3, align 4
  %627 = getelementptr inbounds i64, i64* %626, i32 14
  store i64 %625, i64* %627, align 4
  %628 = load i64*, i64** %4, align 4
  %629 = getelementptr inbounds i64, i64* %628, i32 7
  %630 = load i64, i64* %629, align 4
  %631 = trunc i64 %630 to i32
  %632 = sext i32 %631 to i64
  %633 = load i64*, i64** %4, align 4
  %634 = getelementptr inbounds i64, i64* %633, i32 8
  %635 = load i64, i64* %634, align 4
  %636 = trunc i64 %635 to i32
  %637 = sext i32 %636 to i64
  %638 = mul nsw i64 %632, %637
  %639 = load i64*, i64** %4, align 4
  %640 = getelementptr inbounds i64, i64* %639, i32 6
  %641 = load i64, i64* %640, align 4
  %642 = trunc i64 %641 to i32
  %643 = sext i32 %642 to i64
  %644 = load i64*, i64** %4, align 4
  %645 = getelementptr inbounds i64, i64* %644, i32 9
  %646 = load i64, i64* %645, align 4
  %647 = trunc i64 %646 to i32
  %648 = sext i32 %647 to i64
  %649 = mul nsw i64 %643, %648
  %650 = add nsw i64 %638, %649
  %651 = mul nsw i64 2, %650
  %652 = load i64*, i64** %3, align 4
  %653 = getelementptr inbounds i64, i64* %652, i32 15
  store i64 %651, i64* %653, align 4
  %654 = load i64*, i64** %4, align 4
  %655 = getelementptr inbounds i64, i64* %654, i32 8
  %656 = load i64, i64* %655, align 4
  %657 = trunc i64 %656 to i32
  %658 = sext i32 %657 to i64
  %659 = load i64*, i64** %4, align 4
  %660 = getelementptr inbounds i64, i64* %659, i32 8
  %661 = load i64, i64* %660, align 4
  %662 = trunc i64 %661 to i32
  %663 = sext i32 %662 to i64
  %664 = mul nsw i64 %658, %663
  %665 = load i64*, i64** %4, align 4
  %666 = getelementptr inbounds i64, i64* %665, i32 7
  %667 = load i64, i64* %666, align 4
  %668 = trunc i64 %667 to i32
  %669 = sext i32 %668 to i64
  %670 = mul nsw i64 4, %669
  %671 = load i64*, i64** %4, align 4
  %672 = getelementptr inbounds i64, i64* %671, i32 9
  %673 = load i64, i64* %672, align 4
  %674 = trunc i64 %673 to i32
  %675 = sext i32 %674 to i64
  %676 = mul nsw i64 %670, %675
  %677 = add nsw i64 %664, %676
  %678 = load i64*, i64** %3, align 4
  %679 = getelementptr inbounds i64, i64* %678, i32 16
  store i64 %677, i64* %679, align 4
  %680 = load i64*, i64** %4, align 4
  %681 = getelementptr inbounds i64, i64* %680, i32 8
  %682 = load i64, i64* %681, align 4
  %683 = trunc i64 %682 to i32
  %684 = sext i32 %683 to i64
  %685 = mul nsw i64 2, %684
  %686 = load i64*, i64** %4, align 4
  %687 = getelementptr inbounds i64, i64* %686, i32 9
  %688 = load i64, i64* %687, align 4
  %689 = trunc i64 %688 to i32
  %690 = sext i32 %689 to i64
  %691 = mul nsw i64 %685, %690
  %692 = load i64*, i64** %3, align 4
  %693 = getelementptr inbounds i64, i64* %692, i32 17
  store i64 %691, i64* %693, align 4
  %694 = load i64*, i64** %4, align 4
  %695 = getelementptr inbounds i64, i64* %694, i32 9
  %696 = load i64, i64* %695, align 4
  %697 = trunc i64 %696 to i32
  %698 = sext i32 %697 to i64
  %699 = mul nsw i64 2, %698
  %700 = load i64*, i64** %4, align 4
  %701 = getelementptr inbounds i64, i64* %700, i32 9
  %702 = load i64, i64* %701, align 4
  %703 = trunc i64 %702 to i32
  %704 = sext i32 %703 to i64
  %705 = mul nsw i64 %699, %704
  %706 = load i64*, i64** %3, align 4
  %707 = getelementptr inbounds i64, i64* %706, i32 18
  store i64 %705, i64* %707, align 4
  ret void
}

; Function Attrs: noinline nounwind optnone
define internal i32 @s32_gte(i32 %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  store i32 %1, i32* %4, align 4
  %5 = load i32, i32* %4, align 4
  %6 = load i32, i32* %3, align 4
  %7 = sub nsw i32 %6, %5
  store i32 %7, i32* %3, align 4
  %8 = load i32, i32* %3, align 4
  %9 = ashr i32 %8, 31
  %10 = xor i32 %9, -1
  ret i32 %10
}

; Function Attrs: noinline nounwind optnone
define internal i32 @s32_eq(i32 %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  store i32 %1, i32* %4, align 4
  %5 = load i32, i32* %3, align 4
  %6 = load i32, i32* %4, align 4
  %7 = xor i32 %5, %6
  %8 = xor i32 %7, -1
  store i32 %8, i32* %3, align 4
  %9 = load i32, i32* %3, align 4
  %10 = shl i32 %9, 16
  %11 = load i32, i32* %3, align 4
  %12 = and i32 %11, %10
  store i32 %12, i32* %3, align 4
  %13 = load i32, i32* %3, align 4
  %14 = shl i32 %13, 8
  %15 = load i32, i32* %3, align 4
  %16 = and i32 %15, %14
  store i32 %16, i32* %3, align 4
  %17 = load i32, i32* %3, align 4
  %18 = shl i32 %17, 4
  %19 = load i32, i32* %3, align 4
  %20 = and i32 %19, %18
  store i32 %20, i32* %3, align 4
  %21 = load i32, i32* %3, align 4
  %22 = shl i32 %21, 2
  %23 = load i32, i32* %3, align 4
  %24 = and i32 %23, %22
  store i32 %24, i32* %3, align 4
  %25 = load i32, i32* %3, align 4
  %26 = shl i32 %25, 1
  %27 = load i32, i32* %3, align 4
  %28 = and i32 %27, %26
  store i32 %28, i32* %3, align 4
  %29 = load i32, i32* %3, align 4
  %30 = ashr i32 %29, 31
  ret i32 %30
}

attributes #0 = { noinline nounwind optnone "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="i386" "target-features"="+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="i386" "target-features"="+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0, !1}
!llvm.ident = !{!2}

!0 = !{i32 1, !"NumRegisterParameters", i32 0}
!1 = !{i32 1, !"wchar_size", i32 4}
!2 = !{!"Ubuntu clang version 12.0.0-3ubuntu1~20.04.5"}
!3 = distinct !{!3, !4}
!4 = !{!"llvm.loop.mustprogress"}
!5 = distinct !{!5, !4}
!6 = distinct !{!6, !4}
!7 = distinct !{!7, !4}
!8 = distinct !{!8, !4}
!9 = distinct !{!9, !4}
!10 = distinct !{!10, !4}
!11 = distinct !{!11, !4}
!12 = distinct !{!12, !4}
!13 = distinct !{!13, !4}
!14 = distinct !{!14, !4}
!15 = distinct !{!15, !4}
!16 = distinct !{!16, !4}
!17 = distinct !{!17, !4}
!18 = distinct !{!18, !4}
!19 = distinct !{!19, !4}
!20 = distinct !{!20, !4}
!21 = distinct !{!21, !4}
!22 = distinct !{!22, !4}
!23 = distinct !{!23, !4}
!24 = distinct !{!24, !4}
