; ModuleID = 'hacl-c/hacl-c/Hacl_SHA2_512.c'
source_filename = "hacl-c/hacl-c/Hacl_SHA2_512.c"
target datalayout = "e-m:e-p:32:32-p270:32:32-p271:32:32-p272:64:64-i128:128-f64:32:64-f80:32-n8:16:32-S128"
target triple = "i386-pc-linux-gnu"

%struct.FStar_UInt128_uint128 = type { i64, i64 }

@Hacl_SHA2_512_size_word = dso_local global i32 8, align 4
@Hacl_SHA2_512_size_hash_w = dso_local global i32 8, align 4
@Hacl_SHA2_512_size_block_w = dso_local global i32 16, align 4
@Hacl_SHA2_512_size_hash = dso_local global i32 64, align 4
@Hacl_SHA2_512_size_block = dso_local global i32 128, align 4
@Hacl_SHA2_512_size_k_w = dso_local global i32 80, align 4
@Hacl_SHA2_512_size_ws_w = dso_local global i32 80, align 4
@Hacl_SHA2_512_size_whash_w = dso_local global i32 8, align 4
@Hacl_SHA2_512_size_count_w = dso_local global i32 1, align 4
@Hacl_SHA2_512_size_len_8 = dso_local global i32 16, align 4
@Hacl_SHA2_512_size_state = dso_local global i32 169, align 4
@Hacl_SHA2_512_pos_k_w = dso_local global i32 0, align 4
@Hacl_SHA2_512_pos_ws_w = dso_local global i32 80, align 4
@Hacl_SHA2_512_pos_whash_w = dso_local global i32 160, align 4
@Hacl_SHA2_512_pos_count_w = dso_local global i32 168, align 4

; Function Attrs: noinline nounwind uwtable
define dso_local void @Hacl_SHA2_512_init(ptr noundef %0) #0 {
  %2 = alloca ptr, align 4
  store ptr %0, ptr %2, align 4
  %3 = load ptr, ptr %2, align 4
  call void @Hacl_Impl_SHA2_512_init(ptr noundef %3)
  ret void
}

; Function Attrs: noinline nounwind uwtable
define internal void @Hacl_Impl_SHA2_512_init(ptr noundef %0) #0 {
  %2 = alloca ptr, align 4
  %3 = alloca ptr, align 4
  %4 = alloca ptr, align 4
  %5 = alloca ptr, align 4
  %6 = alloca ptr, align 4
  %7 = alloca ptr, align 4
  %8 = alloca ptr, align 4
  %9 = alloca ptr, align 4
  %10 = alloca ptr, align 4
  %11 = alloca ptr, align 4
  %12 = alloca ptr, align 4
  %13 = alloca ptr, align 4
  %14 = alloca ptr, align 4
  %15 = alloca ptr, align 4
  %16 = alloca ptr, align 4
  %17 = alloca ptr, align 4
  %18 = alloca ptr, align 4
  %19 = alloca ptr, align 4
  %20 = alloca ptr, align 4
  %21 = alloca ptr, align 4
  %22 = alloca ptr, align 4
  %23 = alloca ptr, align 4
  %24 = alloca ptr, align 4
  %25 = alloca ptr, align 4
  %26 = alloca ptr, align 4
  %27 = alloca ptr, align 4
  %28 = alloca ptr, align 4
  %29 = alloca ptr, align 4
  %30 = alloca ptr, align 4
  %31 = alloca ptr, align 4
  %32 = alloca ptr, align 4
  %33 = alloca ptr, align 4
  %34 = alloca ptr, align 4
  %35 = alloca ptr, align 4
  %36 = alloca ptr, align 4
  %37 = alloca ptr, align 4
  %38 = alloca ptr, align 4
  %39 = alloca ptr, align 4
  %40 = alloca ptr, align 4
  %41 = alloca ptr, align 4
  %42 = alloca ptr, align 4
  store ptr %0, ptr %2, align 4
  %43 = load ptr, ptr %2, align 4
  %44 = getelementptr inbounds i64, ptr %43, i32 168
  store ptr %44, ptr %3, align 4
  %45 = load ptr, ptr %2, align 4
  store ptr %45, ptr %4, align 4
  %46 = load ptr, ptr %2, align 4
  %47 = getelementptr inbounds i64, ptr %46, i32 160
  store ptr %47, ptr %5, align 4
  %48 = load ptr, ptr %4, align 4
  store ptr %48, ptr %6, align 4
  %49 = load ptr, ptr %4, align 4
  %50 = getelementptr inbounds i64, ptr %49, i32 16
  store ptr %50, ptr %7, align 4
  %51 = load ptr, ptr %4, align 4
  %52 = getelementptr inbounds i64, ptr %51, i32 32
  store ptr %52, ptr %8, align 4
  %53 = load ptr, ptr %4, align 4
  %54 = getelementptr inbounds i64, ptr %53, i32 48
  store ptr %54, ptr %9, align 4
  %55 = load ptr, ptr %4, align 4
  %56 = getelementptr inbounds i64, ptr %55, i32 64
  store ptr %56, ptr %10, align 4
  %57 = load ptr, ptr %6, align 4
  store ptr %57, ptr %11, align 4
  %58 = load ptr, ptr %6, align 4
  %59 = getelementptr inbounds i64, ptr %58, i32 8
  store ptr %59, ptr %12, align 4
  %60 = load ptr, ptr %11, align 4
  store ptr %60, ptr %13, align 4
  %61 = load ptr, ptr %11, align 4
  %62 = getelementptr inbounds i64, ptr %61, i32 4
  store ptr %62, ptr %14, align 4
  %63 = load ptr, ptr %13, align 4
  %64 = getelementptr inbounds i64, ptr %63, i32 0
  store i64 4794697086780616226, ptr %64, align 4
  %65 = load ptr, ptr %13, align 4
  %66 = getelementptr inbounds i64, ptr %65, i32 1
  store i64 8158064640168781261, ptr %66, align 4
  %67 = load ptr, ptr %13, align 4
  %68 = getelementptr inbounds i64, ptr %67, i32 2
  store i64 -5349999486874862801, ptr %68, align 4
  %69 = load ptr, ptr %13, align 4
  %70 = getelementptr inbounds i64, ptr %69, i32 3
  store i64 -1606136188198331460, ptr %70, align 4
  %71 = load ptr, ptr %14, align 4
  %72 = getelementptr inbounds i64, ptr %71, i32 0
  store i64 4131703408338449720, ptr %72, align 4
  %73 = load ptr, ptr %14, align 4
  %74 = getelementptr inbounds i64, ptr %73, i32 1
  store i64 6480981068601479193, ptr %74, align 4
  %75 = load ptr, ptr %14, align 4
  %76 = getelementptr inbounds i64, ptr %75, i32 2
  store i64 -7908458776815382629, ptr %76, align 4
  %77 = load ptr, ptr %14, align 4
  %78 = getelementptr inbounds i64, ptr %77, i32 3
  store i64 -6116909921290321640, ptr %78, align 4
  %79 = load ptr, ptr %12, align 4
  store ptr %79, ptr %15, align 4
  %80 = load ptr, ptr %12, align 4
  %81 = getelementptr inbounds i64, ptr %80, i32 4
  store ptr %81, ptr %16, align 4
  %82 = load ptr, ptr %15, align 4
  %83 = getelementptr inbounds i64, ptr %82, i32 0
  store i64 -2880145864133508542, ptr %83, align 4
  %84 = load ptr, ptr %15, align 4
  %85 = getelementptr inbounds i64, ptr %84, i32 1
  store i64 1334009975649890238, ptr %85, align 4
  %86 = load ptr, ptr %15, align 4
  %87 = getelementptr inbounds i64, ptr %86, i32 2
  store i64 2608012711638119052, ptr %87, align 4
  %88 = load ptr, ptr %15, align 4
  %89 = getelementptr inbounds i64, ptr %88, i32 3
  store i64 6128411473006802146, ptr %89, align 4
  %90 = load ptr, ptr %16, align 4
  %91 = getelementptr inbounds i64, ptr %90, i32 0
  store i64 8268148722764581231, ptr %91, align 4
  %92 = load ptr, ptr %16, align 4
  %93 = getelementptr inbounds i64, ptr %92, i32 1
  store i64 -9160688886553864527, ptr %93, align 4
  %94 = load ptr, ptr %16, align 4
  %95 = getelementptr inbounds i64, ptr %94, i32 2
  store i64 -7215885187991268811, ptr %95, align 4
  %96 = load ptr, ptr %16, align 4
  %97 = getelementptr inbounds i64, ptr %96, i32 3
  store i64 -4495734319001033068, ptr %97, align 4
  %98 = load ptr, ptr %7, align 4
  store ptr %98, ptr %17, align 4
  %99 = load ptr, ptr %7, align 4
  %100 = getelementptr inbounds i64, ptr %99, i32 8
  store ptr %100, ptr %18, align 4
  %101 = load ptr, ptr %17, align 4
  store ptr %101, ptr %19, align 4
  %102 = load ptr, ptr %17, align 4
  %103 = getelementptr inbounds i64, ptr %102, i32 4
  store ptr %103, ptr %20, align 4
  %104 = load ptr, ptr %19, align 4
  %105 = getelementptr inbounds i64, ptr %104, i32 0
  store i64 -1973867731355612462, ptr %105, align 4
  %106 = load ptr, ptr %19, align 4
  %107 = getelementptr inbounds i64, ptr %106, i32 1
  store i64 -1171420211273849373, ptr %107, align 4
  %108 = load ptr, ptr %19, align 4
  %109 = getelementptr inbounds i64, ptr %108, i32 2
  store i64 1135362057144423861, ptr %109, align 4
  %110 = load ptr, ptr %19, align 4
  %111 = getelementptr inbounds i64, ptr %110, i32 3
  store i64 2597628984639134821, ptr %111, align 4
  %112 = load ptr, ptr %20, align 4
  %113 = getelementptr inbounds i64, ptr %112, i32 0
  store i64 3308224258029322869, ptr %113, align 4
  %114 = load ptr, ptr %20, align 4
  %115 = getelementptr inbounds i64, ptr %114, i32 1
  store i64 5365058923640841347, ptr %115, align 4
  %116 = load ptr, ptr %20, align 4
  %117 = getelementptr inbounds i64, ptr %116, i32 2
  store i64 6679025012923562964, ptr %117, align 4
  %118 = load ptr, ptr %20, align 4
  %119 = getelementptr inbounds i64, ptr %118, i32 3
  store i64 8573033837759648693, ptr %119, align 4
  %120 = load ptr, ptr %18, align 4
  store ptr %120, ptr %21, align 4
  %121 = load ptr, ptr %18, align 4
  %122 = getelementptr inbounds i64, ptr %121, i32 4
  store ptr %122, ptr %22, align 4
  %123 = load ptr, ptr %21, align 4
  %124 = getelementptr inbounds i64, ptr %123, i32 0
  store i64 -7476448914759557205, ptr %124, align 4
  %125 = load ptr, ptr %21, align 4
  %126 = getelementptr inbounds i64, ptr %125, i32 1
  store i64 -6327057829258317296, ptr %126, align 4
  %127 = load ptr, ptr %21, align 4
  %128 = getelementptr inbounds i64, ptr %127, i32 2
  store i64 -5763719355590565569, ptr %128, align 4
  %129 = load ptr, ptr %21, align 4
  %130 = getelementptr inbounds i64, ptr %129, i32 3
  store i64 -4658551843659510044, ptr %130, align 4
  %131 = load ptr, ptr %22, align 4
  %132 = getelementptr inbounds i64, ptr %131, i32 0
  store i64 -4116276920077217854, ptr %132, align 4
  %133 = load ptr, ptr %22, align 4
  %134 = getelementptr inbounds i64, ptr %133, i32 1
  store i64 -3051310485924567259, ptr %134, align 4
  %135 = load ptr, ptr %22, align 4
  %136 = getelementptr inbounds i64, ptr %135, i32 2
  store i64 489312712824947311, ptr %136, align 4
  %137 = load ptr, ptr %22, align 4
  %138 = getelementptr inbounds i64, ptr %137, i32 3
  store i64 1452737877330783856, ptr %138, align 4
  %139 = load ptr, ptr %8, align 4
  store ptr %139, ptr %23, align 4
  %140 = load ptr, ptr %8, align 4
  %141 = getelementptr inbounds i64, ptr %140, i32 8
  store ptr %141, ptr %24, align 4
  %142 = load ptr, ptr %23, align 4
  store ptr %142, ptr %25, align 4
  %143 = load ptr, ptr %23, align 4
  %144 = getelementptr inbounds i64, ptr %143, i32 4
  store ptr %144, ptr %26, align 4
  %145 = load ptr, ptr %25, align 4
  %146 = getelementptr inbounds i64, ptr %145, i32 0
  store i64 2861767655752347644, ptr %146, align 4
  %147 = load ptr, ptr %25, align 4
  %148 = getelementptr inbounds i64, ptr %147, i32 1
  store i64 3322285676063803686, ptr %148, align 4
  %149 = load ptr, ptr %25, align 4
  %150 = getelementptr inbounds i64, ptr %149, i32 2
  store i64 5560940570517711597, ptr %150, align 4
  %151 = load ptr, ptr %25, align 4
  %152 = getelementptr inbounds i64, ptr %151, i32 3
  store i64 5996557281743188959, ptr %152, align 4
  %153 = load ptr, ptr %26, align 4
  %154 = getelementptr inbounds i64, ptr %153, i32 0
  store i64 7280758554555802590, ptr %154, align 4
  %155 = load ptr, ptr %26, align 4
  %156 = getelementptr inbounds i64, ptr %155, i32 1
  store i64 8532644243296465576, ptr %156, align 4
  %157 = load ptr, ptr %26, align 4
  %158 = getelementptr inbounds i64, ptr %157, i32 2
  store i64 -9096487096722542874, ptr %158, align 4
  %159 = load ptr, ptr %26, align 4
  %160 = getelementptr inbounds i64, ptr %159, i32 3
  store i64 -7894198246740708037, ptr %160, align 4
  %161 = load ptr, ptr %24, align 4
  store ptr %161, ptr %27, align 4
  %162 = load ptr, ptr %24, align 4
  %163 = getelementptr inbounds i64, ptr %162, i32 4
  store ptr %163, ptr %28, align 4
  %164 = load ptr, ptr %27, align 4
  %165 = getelementptr inbounds i64, ptr %164, i32 0
  store i64 -6719396339535248540, ptr %165, align 4
  %166 = load ptr, ptr %27, align 4
  %167 = getelementptr inbounds i64, ptr %166, i32 1
  store i64 -6333637450476146687, ptr %167, align 4
  %168 = load ptr, ptr %27, align 4
  %169 = getelementptr inbounds i64, ptr %168, i32 2
  store i64 -4446306890439682159, ptr %169, align 4
  %170 = load ptr, ptr %27, align 4
  %171 = getelementptr inbounds i64, ptr %170, i32 3
  store i64 -4076793802049405392, ptr %171, align 4
  %172 = load ptr, ptr %28, align 4
  %173 = getelementptr inbounds i64, ptr %172, i32 0
  store i64 -3345356375505022440, ptr %173, align 4
  %174 = load ptr, ptr %28, align 4
  %175 = getelementptr inbounds i64, ptr %174, i32 1
  store i64 -2983346525034927856, ptr %175, align 4
  %176 = load ptr, ptr %28, align 4
  %177 = getelementptr inbounds i64, ptr %176, i32 2
  store i64 -860691631967231958, ptr %177, align 4
  %178 = load ptr, ptr %28, align 4
  %179 = getelementptr inbounds i64, ptr %178, i32 3
  store i64 1182934255886127544, ptr %179, align 4
  %180 = load ptr, ptr %9, align 4
  store ptr %180, ptr %29, align 4
  %181 = load ptr, ptr %9, align 4
  %182 = getelementptr inbounds i64, ptr %181, i32 8
  store ptr %182, ptr %30, align 4
  %183 = load ptr, ptr %29, align 4
  store ptr %183, ptr %31, align 4
  %184 = load ptr, ptr %29, align 4
  %185 = getelementptr inbounds i64, ptr %184, i32 4
  store ptr %185, ptr %32, align 4
  %186 = load ptr, ptr %31, align 4
  %187 = getelementptr inbounds i64, ptr %186, i32 0
  store i64 1847814050463011016, ptr %187, align 4
  %188 = load ptr, ptr %31, align 4
  %189 = getelementptr inbounds i64, ptr %188, i32 1
  store i64 2177327727835720531, ptr %189, align 4
  %190 = load ptr, ptr %31, align 4
  %191 = getelementptr inbounds i64, ptr %190, i32 2
  store i64 2830643537854262169, ptr %191, align 4
  %192 = load ptr, ptr %31, align 4
  %193 = getelementptr inbounds i64, ptr %192, i32 3
  store i64 3796741975233480872, ptr %193, align 4
  %194 = load ptr, ptr %32, align 4
  %195 = getelementptr inbounds i64, ptr %194, i32 0
  store i64 4115178125766777443, ptr %195, align 4
  %196 = load ptr, ptr %32, align 4
  %197 = getelementptr inbounds i64, ptr %196, i32 1
  store i64 5681478168544905931, ptr %197, align 4
  %198 = load ptr, ptr %32, align 4
  %199 = getelementptr inbounds i64, ptr %198, i32 2
  store i64 6601373596472566643, ptr %199, align 4
  %200 = load ptr, ptr %32, align 4
  %201 = getelementptr inbounds i64, ptr %200, i32 3
  store i64 7507060721942968483, ptr %201, align 4
  %202 = load ptr, ptr %30, align 4
  store ptr %202, ptr %33, align 4
  %203 = load ptr, ptr %30, align 4
  %204 = getelementptr inbounds i64, ptr %203, i32 4
  store ptr %204, ptr %34, align 4
  %205 = load ptr, ptr %33, align 4
  %206 = getelementptr inbounds i64, ptr %205, i32 0
  store i64 8399075790359081724, ptr %206, align 4
  %207 = load ptr, ptr %33, align 4
  %208 = getelementptr inbounds i64, ptr %207, i32 1
  store i64 8693463985226723168, ptr %208, align 4
  %209 = load ptr, ptr %33, align 4
  %210 = getelementptr inbounds i64, ptr %209, i32 2
  store i64 -8878714635349349518, ptr %210, align 4
  %211 = load ptr, ptr %33, align 4
  %212 = getelementptr inbounds i64, ptr %211, i32 3
  store i64 -8302665154208450068, ptr %212, align 4
  %213 = load ptr, ptr %34, align 4
  %214 = getelementptr inbounds i64, ptr %213, i32 0
  store i64 -8016688836872298968, ptr %214, align 4
  %215 = load ptr, ptr %34, align 4
  %216 = getelementptr inbounds i64, ptr %215, i32 1
  store i64 -6606660893046293015, ptr %216, align 4
  %217 = load ptr, ptr %34, align 4
  %218 = getelementptr inbounds i64, ptr %217, i32 2
  store i64 -4685533653050689259, ptr %218, align 4
  %219 = load ptr, ptr %34, align 4
  %220 = getelementptr inbounds i64, ptr %219, i32 3
  store i64 -4147400797238176981, ptr %220, align 4
  %221 = load ptr, ptr %10, align 4
  store ptr %221, ptr %35, align 4
  %222 = load ptr, ptr %10, align 4
  %223 = getelementptr inbounds i64, ptr %222, i32 8
  store ptr %223, ptr %36, align 4
  %224 = load ptr, ptr %35, align 4
  store ptr %224, ptr %37, align 4
  %225 = load ptr, ptr %35, align 4
  %226 = getelementptr inbounds i64, ptr %225, i32 4
  store ptr %226, ptr %38, align 4
  %227 = load ptr, ptr %37, align 4
  %228 = getelementptr inbounds i64, ptr %227, i32 0
  store i64 -3880063495543823972, ptr %228, align 4
  %229 = load ptr, ptr %37, align 4
  %230 = getelementptr inbounds i64, ptr %229, i32 1
  store i64 -3348786107499101689, ptr %230, align 4
  %231 = load ptr, ptr %37, align 4
  %232 = getelementptr inbounds i64, ptr %231, i32 2
  store i64 -1523767162380948706, ptr %232, align 4
  %233 = load ptr, ptr %37, align 4
  %234 = getelementptr inbounds i64, ptr %233, i32 3
  store i64 -757361751448694408, ptr %234, align 4
  %235 = load ptr, ptr %38, align 4
  %236 = getelementptr inbounds i64, ptr %235, i32 0
  store i64 500013540394364858, ptr %236, align 4
  %237 = load ptr, ptr %38, align 4
  %238 = getelementptr inbounds i64, ptr %237, i32 1
  store i64 748580250866718886, ptr %238, align 4
  %239 = load ptr, ptr %38, align 4
  %240 = getelementptr inbounds i64, ptr %239, i32 2
  store i64 1242879168328830382, ptr %240, align 4
  %241 = load ptr, ptr %38, align 4
  %242 = getelementptr inbounds i64, ptr %241, i32 3
  store i64 1977374033974150939, ptr %242, align 4
  %243 = load ptr, ptr %36, align 4
  store ptr %243, ptr %39, align 4
  %244 = load ptr, ptr %36, align 4
  %245 = getelementptr inbounds i64, ptr %244, i32 4
  store ptr %245, ptr %40, align 4
  %246 = load ptr, ptr %39, align 4
  %247 = getelementptr inbounds i64, ptr %246, i32 0
  store i64 2944078676154940804, ptr %247, align 4
  %248 = load ptr, ptr %39, align 4
  %249 = getelementptr inbounds i64, ptr %248, i32 1
  store i64 3659926193048069267, ptr %249, align 4
  %250 = load ptr, ptr %39, align 4
  %251 = getelementptr inbounds i64, ptr %250, i32 2
  store i64 4368137639120453308, ptr %251, align 4
  %252 = load ptr, ptr %39, align 4
  %253 = getelementptr inbounds i64, ptr %252, i32 3
  store i64 4836135668995329356, ptr %253, align 4
  %254 = load ptr, ptr %40, align 4
  %255 = getelementptr inbounds i64, ptr %254, i32 0
  store i64 5532061633213252278, ptr %255, align 4
  %256 = load ptr, ptr %40, align 4
  %257 = getelementptr inbounds i64, ptr %256, i32 1
  store i64 6448918945643986474, ptr %257, align 4
  %258 = load ptr, ptr %40, align 4
  %259 = getelementptr inbounds i64, ptr %258, i32 2
  store i64 6902733635092675308, ptr %259, align 4
  %260 = load ptr, ptr %40, align 4
  %261 = getelementptr inbounds i64, ptr %260, i32 3
  store i64 7801388544844847127, ptr %261, align 4
  %262 = load ptr, ptr %5, align 4
  store ptr %262, ptr %41, align 4
  %263 = load ptr, ptr %5, align 4
  %264 = getelementptr inbounds i64, ptr %263, i32 4
  store ptr %264, ptr %42, align 4
  %265 = load ptr, ptr %41, align 4
  %266 = getelementptr inbounds i64, ptr %265, i32 0
  store i64 7640891576956012808, ptr %266, align 4
  %267 = load ptr, ptr %41, align 4
  %268 = getelementptr inbounds i64, ptr %267, i32 1
  store i64 -4942790177534073029, ptr %268, align 4
  %269 = load ptr, ptr %41, align 4
  %270 = getelementptr inbounds i64, ptr %269, i32 2
  store i64 4354685564936845355, ptr %270, align 4
  %271 = load ptr, ptr %41, align 4
  %272 = getelementptr inbounds i64, ptr %271, i32 3
  store i64 -6534734903238641935, ptr %272, align 4
  %273 = load ptr, ptr %42, align 4
  %274 = getelementptr inbounds i64, ptr %273, i32 0
  store i64 5840696475078001361, ptr %274, align 4
  %275 = load ptr, ptr %42, align 4
  %276 = getelementptr inbounds i64, ptr %275, i32 1
  store i64 -7276294671716946913, ptr %276, align 4
  %277 = load ptr, ptr %42, align 4
  %278 = getelementptr inbounds i64, ptr %277, i32 2
  store i64 2270897969802886507, ptr %278, align 4
  %279 = load ptr, ptr %42, align 4
  %280 = getelementptr inbounds i64, ptr %279, i32 3
  store i64 6620516959819538809, ptr %280, align 4
  %281 = load ptr, ptr %3, align 4
  %282 = getelementptr inbounds i64, ptr %281, i32 0
  store i64 0, ptr %282, align 4
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @Hacl_SHA2_512_update(ptr noundef %0, ptr noundef %1) #0 {
  %3 = alloca ptr, align 4
  %4 = alloca ptr, align 4
  store ptr %0, ptr %3, align 4
  store ptr %1, ptr %4, align 4
  %5 = load ptr, ptr %3, align 4
  %6 = load ptr, ptr %4, align 4
  call void @Hacl_Impl_SHA2_512_update(ptr noundef %5, ptr noundef %6)
  ret void
}

; Function Attrs: noinline nounwind uwtable
define internal void @Hacl_Impl_SHA2_512_update(ptr noundef %0, ptr noundef %1) #0 {
  %3 = alloca ptr, align 4
  %4 = alloca ptr, align 4
  %5 = alloca [16 x i64], align 8
  %6 = alloca i32, align 4
  %7 = alloca ptr, align 4
  %8 = alloca ptr, align 4
  %9 = alloca ptr, align 4
  %10 = alloca ptr, align 4
  %11 = alloca i32, align 4
  %12 = alloca i64, align 8
  %13 = alloca i32, align 4
  %14 = alloca i64, align 8
  %15 = alloca i64, align 8
  %16 = alloca i64, align 8
  %17 = alloca i64, align 8
  %18 = alloca [8 x i64], align 8
  %19 = alloca i32, align 4
  %20 = alloca i64, align 8
  %21 = alloca i64, align 8
  %22 = alloca i64, align 8
  %23 = alloca i64, align 8
  %24 = alloca i64, align 8
  %25 = alloca i64, align 8
  %26 = alloca i64, align 8
  %27 = alloca i64, align 8
  %28 = alloca i64, align 8
  %29 = alloca i64, align 8
  %30 = alloca i64, align 8
  %31 = alloca i64, align 8
  %32 = alloca i64, align 8
  %33 = alloca i64, align 8
  %34 = alloca ptr, align 4
  %35 = alloca ptr, align 4
  %36 = alloca i32, align 4
  %37 = alloca i64, align 8
  %38 = alloca i64, align 8
  %39 = alloca i64, align 8
  %40 = alloca i64, align 8
  store ptr %0, ptr %3, align 4
  store ptr %1, ptr %4, align 4
  store i32 0, ptr %6, align 4
  br label %41

41:                                               ; preds = %47, %2
  %42 = load i32, ptr %6, align 4
  %43 = icmp ult i32 %42, 16
  br i1 %43, label %44, label %50

44:                                               ; preds = %41
  %45 = load i32, ptr %6, align 4
  %46 = getelementptr inbounds [16 x i64], ptr %5, i32 0, i32 %45
  store i64 0, ptr %46, align 8
  br label %47

47:                                               ; preds = %44
  %48 = load i32, ptr %6, align 4
  %49 = add i32 %48, 1
  store i32 %49, ptr %6, align 4
  br label %41, !llvm.loop !7

50:                                               ; preds = %41
  %51 = getelementptr inbounds [16 x i64], ptr %5, i32 0, i32 0
  %52 = load ptr, ptr %4, align 4
  call void @Hacl_Hash_Lib_LoadStore_uint64s_from_be_bytes(ptr noundef %51, ptr noundef %52, i32 noundef 16)
  %53 = load ptr, ptr %3, align 4
  %54 = getelementptr inbounds i64, ptr %53, i32 160
  store ptr %54, ptr %7, align 4
  %55 = load ptr, ptr %3, align 4
  %56 = getelementptr inbounds i64, ptr %55, i32 80
  store ptr %56, ptr %8, align 4
  %57 = load ptr, ptr %3, align 4
  store ptr %57, ptr %9, align 4
  %58 = load ptr, ptr %3, align 4
  %59 = getelementptr inbounds i64, ptr %58, i32 168
  store ptr %59, ptr %10, align 4
  store i32 0, ptr %11, align 4
  br label %60

60:                                               ; preds = %71, %50
  %61 = load i32, ptr %11, align 4
  %62 = icmp ult i32 %61, 16
  br i1 %62, label %63, label %74

63:                                               ; preds = %60
  %64 = load i32, ptr %11, align 4
  %65 = getelementptr inbounds [16 x i64], ptr %5, i32 0, i32 %64
  %66 = load i64, ptr %65, align 8
  store i64 %66, ptr %12, align 8
  %67 = load i64, ptr %12, align 8
  %68 = load ptr, ptr %8, align 4
  %69 = load i32, ptr %11, align 4
  %70 = getelementptr inbounds i64, ptr %68, i32 %69
  store i64 %67, ptr %70, align 4
  br label %71

71:                                               ; preds = %63
  %72 = load i32, ptr %11, align 4
  %73 = add i32 %72, 1
  store i32 %73, ptr %11, align 4
  br label %60, !llvm.loop !9

74:                                               ; preds = %60
  store i32 16, ptr %13, align 4
  br label %75

75:                                               ; preds = %135, %74
  %76 = load i32, ptr %13, align 4
  %77 = icmp ult i32 %76, 80
  br i1 %77, label %78, label %138

78:                                               ; preds = %75
  %79 = load ptr, ptr %8, align 4
  %80 = load i32, ptr %13, align 4
  %81 = sub i32 %80, 16
  %82 = getelementptr inbounds i64, ptr %79, i32 %81
  %83 = load i64, ptr %82, align 4
  store i64 %83, ptr %14, align 8
  %84 = load ptr, ptr %8, align 4
  %85 = load i32, ptr %13, align 4
  %86 = sub i32 %85, 15
  %87 = getelementptr inbounds i64, ptr %84, i32 %86
  %88 = load i64, ptr %87, align 4
  store i64 %88, ptr %15, align 8
  %89 = load ptr, ptr %8, align 4
  %90 = load i32, ptr %13, align 4
  %91 = sub i32 %90, 7
  %92 = getelementptr inbounds i64, ptr %89, i32 %91
  %93 = load i64, ptr %92, align 4
  store i64 %93, ptr %16, align 8
  %94 = load ptr, ptr %8, align 4
  %95 = load i32, ptr %13, align 4
  %96 = sub i32 %95, 2
  %97 = getelementptr inbounds i64, ptr %94, i32 %96
  %98 = load i64, ptr %97, align 4
  store i64 %98, ptr %17, align 8
  %99 = load i64, ptr %17, align 8
  %100 = lshr i64 %99, 19
  %101 = load i64, ptr %17, align 8
  %102 = shl i64 %101, 45
  %103 = or i64 %100, %102
  %104 = load i64, ptr %17, align 8
  %105 = lshr i64 %104, 61
  %106 = load i64, ptr %17, align 8
  %107 = shl i64 %106, 3
  %108 = or i64 %105, %107
  %109 = load i64, ptr %17, align 8
  %110 = lshr i64 %109, 6
  %111 = xor i64 %108, %110
  %112 = xor i64 %103, %111
  %113 = load i64, ptr %16, align 8
  %114 = add i64 %112, %113
  %115 = load i64, ptr %15, align 8
  %116 = lshr i64 %115, 1
  %117 = load i64, ptr %15, align 8
  %118 = shl i64 %117, 63
  %119 = or i64 %116, %118
  %120 = load i64, ptr %15, align 8
  %121 = lshr i64 %120, 8
  %122 = load i64, ptr %15, align 8
  %123 = shl i64 %122, 56
  %124 = or i64 %121, %123
  %125 = load i64, ptr %15, align 8
  %126 = lshr i64 %125, 7
  %127 = xor i64 %124, %126
  %128 = xor i64 %119, %127
  %129 = add i64 %114, %128
  %130 = load i64, ptr %14, align 8
  %131 = add i64 %129, %130
  %132 = load ptr, ptr %8, align 4
  %133 = load i32, ptr %13, align 4
  %134 = getelementptr inbounds i64, ptr %132, i32 %133
  store i64 %131, ptr %134, align 4
  br label %135

135:                                              ; preds = %78
  %136 = load i32, ptr %13, align 4
  %137 = add i32 %136, 1
  store i32 %137, ptr %13, align 4
  br label %75, !llvm.loop !10

138:                                              ; preds = %75
  call void @llvm.memset.p0.i32(ptr align 8 %18, i8 0, i32 64, i1 false)
  %139 = getelementptr inbounds [8 x i64], ptr %18, i32 0, i32 0
  %140 = load ptr, ptr %7, align 4
  call void @llvm.memcpy.p0.p0.i32(ptr align 8 %139, ptr align 4 %140, i32 64, i1 false)
  store i32 0, ptr %19, align 4
  br label %141

141:                                              ; preds = %263, %138
  %142 = load i32, ptr %19, align 4
  %143 = icmp ult i32 %142, 80
  br i1 %143, label %144, label %266

144:                                              ; preds = %141
  %145 = getelementptr inbounds [8 x i64], ptr %18, i32 0, i32 0
  %146 = load i64, ptr %145, align 8
  store i64 %146, ptr %20, align 8
  %147 = getelementptr inbounds [8 x i64], ptr %18, i32 0, i32 1
  %148 = load i64, ptr %147, align 8
  store i64 %148, ptr %21, align 8
  %149 = getelementptr inbounds [8 x i64], ptr %18, i32 0, i32 2
  %150 = load i64, ptr %149, align 8
  store i64 %150, ptr %22, align 8
  %151 = getelementptr inbounds [8 x i64], ptr %18, i32 0, i32 3
  %152 = load i64, ptr %151, align 8
  store i64 %152, ptr %23, align 8
  %153 = getelementptr inbounds [8 x i64], ptr %18, i32 0, i32 4
  %154 = load i64, ptr %153, align 8
  store i64 %154, ptr %24, align 8
  %155 = getelementptr inbounds [8 x i64], ptr %18, i32 0, i32 5
  %156 = load i64, ptr %155, align 8
  store i64 %156, ptr %25, align 8
  %157 = getelementptr inbounds [8 x i64], ptr %18, i32 0, i32 6
  %158 = load i64, ptr %157, align 8
  store i64 %158, ptr %26, align 8
  %159 = getelementptr inbounds [8 x i64], ptr %18, i32 0, i32 7
  %160 = load i64, ptr %159, align 8
  store i64 %160, ptr %27, align 8
  %161 = load ptr, ptr %9, align 4
  %162 = load i32, ptr %19, align 4
  %163 = getelementptr inbounds i64, ptr %161, i32 %162
  %164 = load i64, ptr %163, align 4
  store i64 %164, ptr %28, align 8
  %165 = load ptr, ptr %8, align 4
  %166 = load i32, ptr %19, align 4
  %167 = getelementptr inbounds i64, ptr %165, i32 %166
  %168 = load i64, ptr %167, align 4
  store i64 %168, ptr %29, align 8
  %169 = load i64, ptr %27, align 8
  %170 = load i64, ptr %24, align 8
  %171 = lshr i64 %170, 14
  %172 = load i64, ptr %24, align 8
  %173 = shl i64 %172, 50
  %174 = or i64 %171, %173
  %175 = load i64, ptr %24, align 8
  %176 = lshr i64 %175, 18
  %177 = load i64, ptr %24, align 8
  %178 = shl i64 %177, 46
  %179 = or i64 %176, %178
  %180 = load i64, ptr %24, align 8
  %181 = lshr i64 %180, 41
  %182 = load i64, ptr %24, align 8
  %183 = shl i64 %182, 23
  %184 = or i64 %181, %183
  %185 = xor i64 %179, %184
  %186 = xor i64 %174, %185
  %187 = add i64 %169, %186
  %188 = load i64, ptr %24, align 8
  %189 = load i64, ptr %25, align 8
  %190 = and i64 %188, %189
  %191 = load i64, ptr %24, align 8
  %192 = xor i64 %191, -1
  %193 = load i64, ptr %26, align 8
  %194 = and i64 %192, %193
  %195 = xor i64 %190, %194
  %196 = add i64 %187, %195
  %197 = load i64, ptr %28, align 8
  %198 = add i64 %196, %197
  %199 = load i64, ptr %29, align 8
  %200 = add i64 %198, %199
  store i64 %200, ptr %30, align 8
  %201 = load i64, ptr %20, align 8
  %202 = lshr i64 %201, 28
  %203 = load i64, ptr %20, align 8
  %204 = shl i64 %203, 36
  %205 = or i64 %202, %204
  %206 = load i64, ptr %20, align 8
  %207 = lshr i64 %206, 34
  %208 = load i64, ptr %20, align 8
  %209 = shl i64 %208, 30
  %210 = or i64 %207, %209
  %211 = load i64, ptr %20, align 8
  %212 = lshr i64 %211, 39
  %213 = load i64, ptr %20, align 8
  %214 = shl i64 %213, 25
  %215 = or i64 %212, %214
  %216 = xor i64 %210, %215
  %217 = xor i64 %205, %216
  %218 = load i64, ptr %20, align 8
  %219 = load i64, ptr %21, align 8
  %220 = and i64 %218, %219
  %221 = load i64, ptr %20, align 8
  %222 = load i64, ptr %22, align 8
  %223 = and i64 %221, %222
  %224 = load i64, ptr %21, align 8
  %225 = load i64, ptr %22, align 8
  %226 = and i64 %224, %225
  %227 = xor i64 %223, %226
  %228 = xor i64 %220, %227
  %229 = add i64 %217, %228
  store i64 %229, ptr %31, align 8
  %230 = load i64, ptr %30, align 8
  %231 = load i64, ptr %31, align 8
  %232 = add i64 %230, %231
  store i64 %232, ptr %32, align 8
  %233 = load i64, ptr %23, align 8
  %234 = load i64, ptr %30, align 8
  %235 = add i64 %233, %234
  store i64 %235, ptr %33, align 8
  %236 = getelementptr inbounds [8 x i64], ptr %18, i32 0, i32 0
  store ptr %236, ptr %34, align 4
  %237 = getelementptr inbounds [8 x i64], ptr %18, i32 0, i32 0
  %238 = getelementptr inbounds i64, ptr %237, i32 4
  store ptr %238, ptr %35, align 4
  %239 = load i64, ptr %32, align 8
  %240 = load ptr, ptr %34, align 4
  %241 = getelementptr inbounds i64, ptr %240, i32 0
  store i64 %239, ptr %241, align 4
  %242 = load i64, ptr %20, align 8
  %243 = load ptr, ptr %34, align 4
  %244 = getelementptr inbounds i64, ptr %243, i32 1
  store i64 %242, ptr %244, align 4
  %245 = load i64, ptr %21, align 8
  %246 = load ptr, ptr %34, align 4
  %247 = getelementptr inbounds i64, ptr %246, i32 2
  store i64 %245, ptr %247, align 4
  %248 = load i64, ptr %22, align 8
  %249 = load ptr, ptr %34, align 4
  %250 = getelementptr inbounds i64, ptr %249, i32 3
  store i64 %248, ptr %250, align 4
  %251 = load i64, ptr %33, align 8
  %252 = load ptr, ptr %35, align 4
  %253 = getelementptr inbounds i64, ptr %252, i32 0
  store i64 %251, ptr %253, align 4
  %254 = load i64, ptr %24, align 8
  %255 = load ptr, ptr %35, align 4
  %256 = getelementptr inbounds i64, ptr %255, i32 1
  store i64 %254, ptr %256, align 4
  %257 = load i64, ptr %25, align 8
  %258 = load ptr, ptr %35, align 4
  %259 = getelementptr inbounds i64, ptr %258, i32 2
  store i64 %257, ptr %259, align 4
  %260 = load i64, ptr %26, align 8
  %261 = load ptr, ptr %35, align 4
  %262 = getelementptr inbounds i64, ptr %261, i32 3
  store i64 %260, ptr %262, align 4
  br label %263

263:                                              ; preds = %144
  %264 = load i32, ptr %19, align 4
  %265 = add i32 %264, 1
  store i32 %265, ptr %19, align 4
  br label %141, !llvm.loop !11

266:                                              ; preds = %141
  store i32 0, ptr %36, align 4
  br label %267

267:                                              ; preds = %284, %266
  %268 = load i32, ptr %36, align 4
  %269 = icmp ult i32 %268, 8
  br i1 %269, label %270, label %287

270:                                              ; preds = %267
  %271 = load ptr, ptr %7, align 4
  %272 = load i32, ptr %36, align 4
  %273 = getelementptr inbounds i64, ptr %271, i32 %272
  %274 = load i64, ptr %273, align 4
  store i64 %274, ptr %37, align 8
  %275 = load i32, ptr %36, align 4
  %276 = getelementptr inbounds [8 x i64], ptr %18, i32 0, i32 %275
  %277 = load i64, ptr %276, align 8
  store i64 %277, ptr %38, align 8
  %278 = load i64, ptr %37, align 8
  %279 = load i64, ptr %38, align 8
  %280 = add i64 %278, %279
  %281 = load ptr, ptr %7, align 4
  %282 = load i32, ptr %36, align 4
  %283 = getelementptr inbounds i64, ptr %281, i32 %282
  store i64 %280, ptr %283, align 4
  br label %284

284:                                              ; preds = %270
  %285 = load i32, ptr %36, align 4
  %286 = add i32 %285, 1
  store i32 %286, ptr %36, align 4
  br label %267, !llvm.loop !12

287:                                              ; preds = %267
  %288 = load ptr, ptr %10, align 4
  %289 = getelementptr inbounds i64, ptr %288, i32 0
  %290 = load i64, ptr %289, align 4
  store i64 %290, ptr %39, align 8
  store i64 1, ptr %40, align 8
  %291 = load i64, ptr %39, align 8
  %292 = load i64, ptr %40, align 8
  %293 = add i64 %291, %292
  %294 = load ptr, ptr %10, align 4
  %295 = getelementptr inbounds i64, ptr %294, i32 0
  store i64 %293, ptr %295, align 4
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @Hacl_SHA2_512_update_multi(ptr noundef %0, ptr noundef %1, i32 noundef %2) #0 {
  %4 = alloca ptr, align 4
  %5 = alloca ptr, align 4
  %6 = alloca i32, align 4
  store ptr %0, ptr %4, align 4
  store ptr %1, ptr %5, align 4
  store i32 %2, ptr %6, align 4
  %7 = load ptr, ptr %4, align 4
  %8 = load ptr, ptr %5, align 4
  %9 = load i32, ptr %6, align 4
  call void @Hacl_Impl_SHA2_512_update_multi(ptr noundef %7, ptr noundef %8, i32 noundef %9)
  ret void
}

; Function Attrs: noinline nounwind uwtable
define internal void @Hacl_Impl_SHA2_512_update_multi(ptr noundef %0, ptr noundef %1, i32 noundef %2) #0 {
  %4 = alloca ptr, align 4
  %5 = alloca ptr, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca ptr, align 4
  store ptr %0, ptr %4, align 4
  store ptr %1, ptr %5, align 4
  store i32 %2, ptr %6, align 4
  store i32 0, ptr %7, align 4
  br label %9

9:                                                ; preds = %20, %3
  %10 = load i32, ptr %7, align 4
  %11 = load i32, ptr %6, align 4
  %12 = icmp ult i32 %10, %11
  br i1 %12, label %13, label %23

13:                                               ; preds = %9
  %14 = load ptr, ptr %5, align 4
  %15 = load i32, ptr %7, align 4
  %16 = mul i32 %15, 128
  %17 = getelementptr inbounds i8, ptr %14, i32 %16
  store ptr %17, ptr %8, align 4
  %18 = load ptr, ptr %4, align 4
  %19 = load ptr, ptr %8, align 4
  call void @Hacl_Impl_SHA2_512_update(ptr noundef %18, ptr noundef %19)
  br label %20

20:                                               ; preds = %13
  %21 = load i32, ptr %7, align 4
  %22 = add i32 %21, 1
  store i32 %22, ptr %7, align 4
  br label %9, !llvm.loop !13

23:                                               ; preds = %9
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @Hacl_SHA2_512_update_last(ptr noundef %0, ptr noundef %1, i64 noundef %2) #0 {
  %4 = alloca ptr, align 4
  %5 = alloca ptr, align 4
  %6 = alloca i64, align 8
  store ptr %0, ptr %4, align 4
  store ptr %1, ptr %5, align 4
  store i64 %2, ptr %6, align 8
  %7 = load ptr, ptr %4, align 4
  %8 = load ptr, ptr %5, align 4
  %9 = load i64, ptr %6, align 8
  call void @Hacl_Impl_SHA2_512_update_last(ptr noundef %7, ptr noundef %8, i64 noundef %9)
  ret void
}

; Function Attrs: noinline nounwind uwtable
define internal void @Hacl_Impl_SHA2_512_update_last(ptr noundef %0, ptr noundef %1, i64 noundef %2) #0 {
  %4 = alloca ptr, align 4
  %5 = alloca ptr, align 4
  %6 = alloca i64, align 8
  %7 = alloca [256 x i8], align 1
  %8 = alloca i32, align 4
  %9 = alloca ptr, align 4
  %10 = alloca i64, align 8
  %11 = alloca ptr, align 4
  %12 = alloca %struct.FStar_UInt128_uint128, align 4
  %13 = alloca %struct.FStar_UInt128_uint128, align 4
  %14 = alloca %struct.FStar_UInt128_uint128, align 4
  %15 = alloca %struct.FStar_UInt128_uint128, align 4
  %16 = alloca i32, align 4
  %17 = alloca ptr, align 4
  %18 = alloca ptr, align 4
  store ptr %0, ptr %4, align 4
  store ptr %1, ptr %5, align 4
  store i64 %2, ptr %6, align 8
  call void @llvm.memset.p0.i32(ptr align 1 %7, i8 0, i32 256, i1 false)
  %19 = load i64, ptr %6, align 8
  %20 = icmp ult i64 %19, 112
  br i1 %20, label %21, label %22

21:                                               ; preds = %3
  store i32 1, ptr %8, align 4
  br label %23

22:                                               ; preds = %3
  store i32 2, ptr %8, align 4
  br label %23

23:                                               ; preds = %22, %21
  %24 = load i64, ptr %6, align 8
  %25 = icmp ult i64 %24, 112
  br i1 %25, label %26, label %29

26:                                               ; preds = %23
  %27 = getelementptr inbounds [256 x i8], ptr %7, i32 0, i32 0
  %28 = getelementptr inbounds i8, ptr %27, i32 128
  store ptr %28, ptr %9, align 4
  br label %31

29:                                               ; preds = %23
  %30 = getelementptr inbounds [256 x i8], ptr %7, i32 0, i32 0
  store ptr %30, ptr %9, align 4
  br label %31

31:                                               ; preds = %29, %26
  %32 = load ptr, ptr %9, align 4
  %33 = load ptr, ptr %5, align 4
  %34 = load i64, ptr %6, align 8
  %35 = trunc i64 %34 to i32
  %36 = mul i32 %35, 1
  call void @llvm.memcpy.p0.p0.i32(ptr align 1 %32, ptr align 1 %33, i32 %36, i1 false)
  %37 = load ptr, ptr %4, align 4
  %38 = getelementptr inbounds i64, ptr %37, i32 168
  %39 = load i64, ptr %38, align 4
  store i64 %39, ptr %10, align 8
  %40 = load ptr, ptr %9, align 4
  %41 = load i64, ptr %6, align 8
  %42 = trunc i64 %41 to i32
  %43 = getelementptr inbounds i8, ptr %40, i32 %42
  store ptr %43, ptr %11, align 4
  %44 = load i64, ptr %10, align 8
  call void @FStar_UInt128_mul_wide(ptr dead_on_unwind writable sret(%struct.FStar_UInt128_uint128) align 4 %14, i64 noundef %44, i64 noundef 128)
  %45 = load i64, ptr %6, align 8
  call void @FStar_UInt128_uint64_to_uint128(ptr dead_on_unwind writable sret(%struct.FStar_UInt128_uint128) align 4 %15, i64 noundef %45)
  %46 = getelementptr inbounds %struct.FStar_UInt128_uint128, ptr %14, i32 0, i32 0
  %47 = load i64, ptr %46, align 4
  %48 = getelementptr inbounds %struct.FStar_UInt128_uint128, ptr %14, i32 0, i32 1
  %49 = load i64, ptr %48, align 4
  %50 = getelementptr inbounds %struct.FStar_UInt128_uint128, ptr %15, i32 0, i32 0
  %51 = load i64, ptr %50, align 4
  %52 = getelementptr inbounds %struct.FStar_UInt128_uint128, ptr %15, i32 0, i32 1
  %53 = load i64, ptr %52, align 4
  call void @FStar_UInt128_add(ptr dead_on_unwind writable sret(%struct.FStar_UInt128_uint128) align 4 %13, i64 %47, i64 %49, i64 %51, i64 %53)
  %54 = getelementptr inbounds %struct.FStar_UInt128_uint128, ptr %13, i32 0, i32 0
  %55 = load i64, ptr %54, align 4
  %56 = getelementptr inbounds %struct.FStar_UInt128_uint128, ptr %13, i32 0, i32 1
  %57 = load i64, ptr %56, align 4
  call void @FStar_UInt128_shift_left(ptr dead_on_unwind writable sret(%struct.FStar_UInt128_uint128) align 4 %12, i64 %55, i64 %57, i32 noundef 3)
  %58 = load i64, ptr %6, align 8
  %59 = trunc i64 %58 to i32
  %60 = add i32 %59, 16
  %61 = add i32 %60, 1
  %62 = sub i32 256, %61
  %63 = urem i32 %62, 128
  store i32 %63, ptr %16, align 4
  %64 = load ptr, ptr %11, align 4
  store ptr %64, ptr %17, align 4
  %65 = load ptr, ptr %11, align 4
  %66 = getelementptr inbounds i8, ptr %65, i32 1
  %67 = load i32, ptr %16, align 4
  %68 = getelementptr inbounds i8, ptr %66, i32 %67
  store ptr %68, ptr %18, align 4
  %69 = load ptr, ptr %17, align 4
  %70 = getelementptr inbounds i8, ptr %69, i32 0
  store i8 -128, ptr %70, align 1
  %71 = load ptr, ptr %18, align 4
  %72 = getelementptr inbounds %struct.FStar_UInt128_uint128, ptr %12, i32 0, i32 0
  %73 = load i64, ptr %72, align 4
  %74 = getelementptr inbounds %struct.FStar_UInt128_uint128, ptr %12, i32 0, i32 1
  %75 = load i64, ptr %74, align 4
  call void @store128_be(ptr noundef %71, i64 %73, i64 %75)
  %76 = load ptr, ptr %4, align 4
  %77 = load ptr, ptr %9, align 4
  %78 = load i32, ptr %8, align 4
  call void @Hacl_Impl_SHA2_512_update_multi(ptr noundef %76, ptr noundef %77, i32 noundef %78)
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @Hacl_SHA2_512_finish(ptr noundef %0, ptr noundef %1) #0 {
  %3 = alloca ptr, align 4
  %4 = alloca ptr, align 4
  store ptr %0, ptr %3, align 4
  store ptr %1, ptr %4, align 4
  %5 = load ptr, ptr %3, align 4
  %6 = load ptr, ptr %4, align 4
  call void @Hacl_Impl_SHA2_512_finish(ptr noundef %5, ptr noundef %6)
  ret void
}

; Function Attrs: noinline nounwind uwtable
define internal void @Hacl_Impl_SHA2_512_finish(ptr noundef %0, ptr noundef %1) #0 {
  %3 = alloca ptr, align 4
  %4 = alloca ptr, align 4
  %5 = alloca ptr, align 4
  store ptr %0, ptr %3, align 4
  store ptr %1, ptr %4, align 4
  %6 = load ptr, ptr %3, align 4
  %7 = getelementptr inbounds i64, ptr %6, i32 160
  store ptr %7, ptr %5, align 4
  %8 = load ptr, ptr %4, align 4
  %9 = load ptr, ptr %5, align 4
  call void @Hacl_Hash_Lib_LoadStore_uint64s_to_be_bytes(ptr noundef %8, ptr noundef %9, i32 noundef 8)
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @Hacl_SHA2_512_hash(ptr noundef %0, ptr noundef %1, i32 noundef %2) #0 {
  %4 = alloca ptr, align 4
  %5 = alloca ptr, align 4
  %6 = alloca i32, align 4
  store ptr %0, ptr %4, align 4
  store ptr %1, ptr %5, align 4
  store i32 %2, ptr %6, align 4
  %7 = load ptr, ptr %4, align 4
  %8 = load ptr, ptr %5, align 4
  %9 = load i32, ptr %6, align 4
  call void @Hacl_Impl_SHA2_512_hash(ptr noundef %7, ptr noundef %8, i32 noundef %9)
  ret void
}

; Function Attrs: noinline nounwind uwtable
define internal void @Hacl_Impl_SHA2_512_hash(ptr noundef %0, ptr noundef %1, i32 noundef %2) #0 {
  %4 = alloca ptr, align 4
  %5 = alloca ptr, align 4
  %6 = alloca i32, align 4
  %7 = alloca [169 x i64], align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca ptr, align 4
  %12 = alloca ptr, align 4
  store ptr %0, ptr %4, align 4
  store ptr %1, ptr %5, align 4
  store i32 %2, ptr %6, align 4
  store i32 0, ptr %8, align 4
  br label %13

13:                                               ; preds = %19, %3
  %14 = load i32, ptr %8, align 4
  %15 = icmp ult i32 %14, 169
  br i1 %15, label %16, label %22

16:                                               ; preds = %13
  %17 = load i32, ptr %8, align 4
  %18 = getelementptr inbounds [169 x i64], ptr %7, i32 0, i32 %17
  store i64 0, ptr %18, align 8
  br label %19

19:                                               ; preds = %16
  %20 = load i32, ptr %8, align 4
  %21 = add i32 %20, 1
  store i32 %21, ptr %8, align 4
  br label %13, !llvm.loop !14

22:                                               ; preds = %13
  %23 = load i32, ptr %6, align 4
  %24 = udiv i32 %23, 128
  store i32 %24, ptr %9, align 4
  %25 = load i32, ptr %6, align 4
  %26 = urem i32 %25, 128
  store i32 %26, ptr %10, align 4
  %27 = load ptr, ptr %5, align 4
  store ptr %27, ptr %11, align 4
  %28 = load ptr, ptr %5, align 4
  %29 = load i32, ptr %9, align 4
  %30 = mul i32 %29, 128
  %31 = getelementptr inbounds i8, ptr %28, i32 %30
  store ptr %31, ptr %12, align 4
  %32 = getelementptr inbounds [169 x i64], ptr %7, i32 0, i32 0
  call void @Hacl_Impl_SHA2_512_init(ptr noundef %32)
  %33 = getelementptr inbounds [169 x i64], ptr %7, i32 0, i32 0
  %34 = load ptr, ptr %11, align 4
  %35 = load i32, ptr %9, align 4
  call void @Hacl_Impl_SHA2_512_update_multi(ptr noundef %33, ptr noundef %34, i32 noundef %35)
  %36 = getelementptr inbounds [169 x i64], ptr %7, i32 0, i32 0
  %37 = load ptr, ptr %12, align 4
  %38 = load i32, ptr %10, align 4
  %39 = zext i32 %38 to i64
  call void @Hacl_Impl_SHA2_512_update_last(ptr noundef %36, ptr noundef %37, i64 noundef %39)
  %40 = getelementptr inbounds [169 x i64], ptr %7, i32 0, i32 0
  %41 = load ptr, ptr %4, align 4
  call void @Hacl_Impl_SHA2_512_finish(ptr noundef %40, ptr noundef %41)
  ret void
}

; Function Attrs: noinline nounwind uwtable
define internal void @Hacl_Hash_Lib_LoadStore_uint64s_from_be_bytes(ptr noundef %0, ptr noundef %1, i32 noundef %2) #0 {
  %4 = alloca ptr, align 4
  %5 = alloca ptr, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca ptr, align 4
  %9 = alloca i64, align 8
  store ptr %0, ptr %4, align 4
  store ptr %1, ptr %5, align 4
  store i32 %2, ptr %6, align 4
  store i32 0, ptr %7, align 4
  br label %10

10:                                               ; preds = %26, %3
  %11 = load i32, ptr %7, align 4
  %12 = load i32, ptr %6, align 4
  %13 = icmp ult i32 %11, %12
  br i1 %13, label %14, label %29

14:                                               ; preds = %10
  %15 = load ptr, ptr %5, align 4
  %16 = load i32, ptr %7, align 4
  %17 = mul i32 8, %16
  %18 = getelementptr inbounds i8, ptr %15, i32 %17
  store ptr %18, ptr %8, align 4
  %19 = load ptr, ptr %8, align 4
  %20 = call i64 @load64(ptr noundef %19)
  %21 = call i64 @__bswap_64(i64 noundef %20)
  store i64 %21, ptr %9, align 8
  %22 = load i64, ptr %9, align 8
  %23 = load ptr, ptr %4, align 4
  %24 = load i32, ptr %7, align 4
  %25 = getelementptr inbounds i64, ptr %23, i32 %24
  store i64 %22, ptr %25, align 4
  br label %26

26:                                               ; preds = %14
  %27 = load i32, ptr %7, align 4
  %28 = add i32 %27, 1
  store i32 %28, ptr %7, align 4
  br label %10, !llvm.loop !15

29:                                               ; preds = %10
  ret void
}

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i32(ptr nocapture writeonly, i8, i32, i1 immarg) #1

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i32(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i32, i1 immarg) #2

; Function Attrs: noinline nounwind uwtable
define internal i64 @__bswap_64(i64 noundef %0) #0 {
  %2 = alloca i64, align 8
  store i64 %0, ptr %2, align 8
  %3 = load i64, ptr %2, align 8
  %4 = and i64 %3, -72057594037927936
  %5 = lshr i64 %4, 56
  %6 = load i64, ptr %2, align 8
  %7 = and i64 %6, 71776119061217280
  %8 = lshr i64 %7, 40
  %9 = or i64 %5, %8
  %10 = load i64, ptr %2, align 8
  %11 = and i64 %10, 280375465082880
  %12 = lshr i64 %11, 24
  %13 = or i64 %9, %12
  %14 = load i64, ptr %2, align 8
  %15 = and i64 %14, 1095216660480
  %16 = lshr i64 %15, 8
  %17 = or i64 %13, %16
  %18 = load i64, ptr %2, align 8
  %19 = and i64 %18, 4278190080
  %20 = shl i64 %19, 8
  %21 = or i64 %17, %20
  %22 = load i64, ptr %2, align 8
  %23 = and i64 %22, 16711680
  %24 = shl i64 %23, 24
  %25 = or i64 %21, %24
  %26 = load i64, ptr %2, align 8
  %27 = and i64 %26, 65280
  %28 = shl i64 %27, 40
  %29 = or i64 %25, %28
  %30 = load i64, ptr %2, align 8
  %31 = and i64 %30, 255
  %32 = shl i64 %31, 56
  %33 = or i64 %29, %32
  ret i64 %33
}

; Function Attrs: noinline nounwind uwtable
define internal i64 @load64(ptr noundef %0) #0 {
  %2 = alloca ptr, align 4
  %3 = alloca i64, align 8
  store ptr %0, ptr %2, align 4
  %4 = load ptr, ptr %2, align 4
  call void @llvm.memcpy.p0.p0.i32(ptr align 8 %3, ptr align 1 %4, i32 8, i1 false)
  %5 = load i64, ptr %3, align 8
  ret i64 %5
}

declare void @FStar_UInt128_shift_left(ptr dead_on_unwind writable sret(%struct.FStar_UInt128_uint128) align 4, i64, i64, i32 noundef) #3

declare void @FStar_UInt128_add(ptr dead_on_unwind writable sret(%struct.FStar_UInt128_uint128) align 4, i64, i64, i64, i64) #3

declare void @FStar_UInt128_mul_wide(ptr dead_on_unwind writable sret(%struct.FStar_UInt128_uint128) align 4, i64 noundef, i64 noundef) #3

declare void @FStar_UInt128_uint64_to_uint128(ptr dead_on_unwind writable sret(%struct.FStar_UInt128_uint128) align 4, i64 noundef) #3

; Function Attrs: noinline nounwind uwtable
define internal void @store128_be(ptr noundef %0, i64 %1, i64 %2) #0 {
  %4 = alloca %struct.FStar_UInt128_uint128, align 4
  %5 = alloca ptr, align 4
  %6 = getelementptr inbounds %struct.FStar_UInt128_uint128, ptr %4, i32 0, i32 0
  store i64 %1, ptr %6, align 4
  %7 = getelementptr inbounds %struct.FStar_UInt128_uint128, ptr %4, i32 0, i32 1
  store i64 %2, ptr %7, align 4
  store ptr %0, ptr %5, align 4
  %8 = load ptr, ptr %5, align 4
  call void @store128_be_(ptr noundef %8, ptr noundef %4)
  ret void
}

; Function Attrs: noinline nounwind uwtable
define internal void @store128_be_(ptr noundef %0, ptr noundef %1) #0 {
  %3 = alloca ptr, align 4
  %4 = alloca ptr, align 4
  store ptr %0, ptr %3, align 4
  store ptr %1, ptr %4, align 4
  %5 = load ptr, ptr %3, align 4
  %6 = load ptr, ptr %4, align 4
  %7 = getelementptr inbounds %struct.FStar_UInt128_uint128, ptr %6, i32 0, i32 1
  %8 = load i64, ptr %7, align 4
  %9 = call i64 @__bswap_64(i64 noundef %8)
  call void @store64(ptr noundef %5, i64 noundef %9)
  %10 = load ptr, ptr %3, align 4
  %11 = getelementptr inbounds i8, ptr %10, i32 8
  %12 = load ptr, ptr %4, align 4
  %13 = getelementptr inbounds %struct.FStar_UInt128_uint128, ptr %12, i32 0, i32 0
  %14 = load i64, ptr %13, align 4
  %15 = call i64 @__bswap_64(i64 noundef %14)
  call void @store64(ptr noundef %11, i64 noundef %15)
  ret void
}

; Function Attrs: noinline nounwind uwtable
define internal void @store64(ptr noundef %0, i64 noundef %1) #0 {
  %3 = alloca ptr, align 4
  %4 = alloca i64, align 8
  store ptr %0, ptr %3, align 4
  store i64 %1, ptr %4, align 8
  %5 = load ptr, ptr %3, align 4
  call void @llvm.memcpy.p0.p0.i32(ptr align 1 %5, ptr align 8 %4, i32 8, i1 false)
  ret void
}

; Function Attrs: noinline nounwind uwtable
define internal void @Hacl_Hash_Lib_LoadStore_uint64s_to_be_bytes(ptr noundef %0, ptr noundef %1, i32 noundef %2) #0 {
  %4 = alloca ptr, align 4
  %5 = alloca ptr, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i64, align 8
  %9 = alloca ptr, align 4
  store ptr %0, ptr %4, align 4
  store ptr %1, ptr %5, align 4
  store i32 %2, ptr %6, align 4
  store i32 0, ptr %7, align 4
  br label %10

10:                                               ; preds = %26, %3
  %11 = load i32, ptr %7, align 4
  %12 = load i32, ptr %6, align 4
  %13 = icmp ult i32 %11, %12
  br i1 %13, label %14, label %29

14:                                               ; preds = %10
  %15 = load ptr, ptr %5, align 4
  %16 = load i32, ptr %7, align 4
  %17 = getelementptr inbounds i64, ptr %15, i32 %16
  %18 = load i64, ptr %17, align 4
  store i64 %18, ptr %8, align 8
  %19 = load ptr, ptr %4, align 4
  %20 = load i32, ptr %7, align 4
  %21 = mul i32 8, %20
  %22 = getelementptr inbounds i8, ptr %19, i32 %21
  store ptr %22, ptr %9, align 4
  %23 = load ptr, ptr %9, align 4
  %24 = load i64, ptr %8, align 8
  %25 = call i64 @__bswap_64(i64 noundef %24)
  call void @store64(ptr noundef %23, i64 noundef %25)
  br label %26

26:                                               ; preds = %14
  %27 = load i32, ptr %7, align 4
  %28 = add i32 %27, 1
  store i32 %28, ptr %7, align 4
  br label %10, !llvm.loop !16

29:                                               ; preds = %10
  ret void
}

attributes #0 = { noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="i386" "target-features"="+x87" }
attributes #1 = { nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #2 = { nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #3 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="i386" "target-features"="+x87" }

!llvm.module.flags = !{!0, !1, !2, !3, !4, !5}
!llvm.ident = !{!6}

!0 = !{i32 1, !"NumRegisterParameters", i32 0}
!1 = !{i32 1, !"wchar_size", i32 4}
!2 = !{i32 8, !"PIC Level", i32 2}
!3 = !{i32 7, !"PIE Level", i32 2}
!4 = !{i32 7, !"uwtable", i32 2}
!5 = !{i32 7, !"frame-pointer", i32 2}
!6 = !{!"Ubuntu clang version 19.1.7 (++20250114103238+cd708029e0b2-1~exp1~20250114103342.77)"}
!7 = distinct !{!7, !8}
!8 = !{!"llvm.loop.mustprogress"}
!9 = distinct !{!9, !8}
!10 = distinct !{!10, !8}
!11 = distinct !{!11, !8}
!12 = distinct !{!12, !8}
!13 = distinct !{!13, !8}
!14 = distinct !{!14, !8}
!15 = distinct !{!15, !8}
!16 = distinct !{!16, !8}
