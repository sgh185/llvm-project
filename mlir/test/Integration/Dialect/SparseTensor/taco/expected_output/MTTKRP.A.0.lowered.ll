; ModuleID = 'LLVMDialectModule'
source_filename = "LLVMDialectModule"

%struct.ident_t = type { i32, i32, i32, i32, ptr }

@0 = private unnamed_addr constant [23 x i8] c";unknown;unknown;0;0;;\00", align 1
@1 = private unnamed_addr constant %struct.ident_t { i32 0, i32 2, i32 0, i32 22, ptr @0 }, align 8
@2 = private unnamed_addr constant %struct.ident_t { i32 0, i32 66, i32 0, i32 22, ptr @0 }, align 8

declare ptr @malloc(i64)

declare void @free(ptr)

define { { ptr, ptr, i64, [1 x i64], [1 x i64] }, { ptr, ptr, i64, [1 x i64], [1 x i64] }, { ptr, ptr, i64, [1 x i64], [1 x i64] }, { ptr, ptr, i64, [1 x i64], [1 x i64] }, { ptr, ptr, i64, [1 x i64], [1 x i64] }, { [3 x i64], [5 x i64] } } @_insert_compressed_compressed_dense_128_128_32_f32_0_0(ptr %0, ptr %1, i64 %2, i64 %3, i64 %4, ptr %5, ptr %6, i64 %7, i64 %8, i64 %9, ptr %10, ptr %11, i64 %12, i64 %13, i64 %14, ptr %15, ptr %16, i64 %17, i64 %18, i64 %19, ptr %20, ptr %21, i64 %22, i64 %23, i64 %24, { [3 x i64], [5 x i64] } %25, i64 %26, i64 %27, i64 %28, float %29) {
  %31 = insertvalue { ptr, ptr, i64, [1 x i64], [1 x i64] } undef, ptr %0, 0
  %32 = insertvalue { ptr, ptr, i64, [1 x i64], [1 x i64] } %31, ptr %1, 1
  %33 = insertvalue { ptr, ptr, i64, [1 x i64], [1 x i64] } %32, i64 %2, 2
  %34 = insertvalue { ptr, ptr, i64, [1 x i64], [1 x i64] } %33, i64 %3, 3, 0
  %35 = insertvalue { ptr, ptr, i64, [1 x i64], [1 x i64] } %34, i64 %4, 4, 0
  %36 = insertvalue { ptr, ptr, i64, [1 x i64], [1 x i64] } undef, ptr %5, 0
  %37 = insertvalue { ptr, ptr, i64, [1 x i64], [1 x i64] } %36, ptr %6, 1
  %38 = insertvalue { ptr, ptr, i64, [1 x i64], [1 x i64] } %37, i64 %7, 2
  %39 = insertvalue { ptr, ptr, i64, [1 x i64], [1 x i64] } %38, i64 %8, 3, 0
  %40 = insertvalue { ptr, ptr, i64, [1 x i64], [1 x i64] } %39, i64 %9, 4, 0
  %41 = insertvalue { ptr, ptr, i64, [1 x i64], [1 x i64] } undef, ptr %10, 0
  %42 = insertvalue { ptr, ptr, i64, [1 x i64], [1 x i64] } %41, ptr %11, 1
  %43 = insertvalue { ptr, ptr, i64, [1 x i64], [1 x i64] } %42, i64 %12, 2
  %44 = insertvalue { ptr, ptr, i64, [1 x i64], [1 x i64] } %43, i64 %13, 3, 0
  %45 = insertvalue { ptr, ptr, i64, [1 x i64], [1 x i64] } %44, i64 %14, 4, 0
  %46 = insertvalue { ptr, ptr, i64, [1 x i64], [1 x i64] } undef, ptr %15, 0
  %47 = insertvalue { ptr, ptr, i64, [1 x i64], [1 x i64] } %46, ptr %16, 1
  %48 = insertvalue { ptr, ptr, i64, [1 x i64], [1 x i64] } %47, i64 %17, 2
  %49 = insertvalue { ptr, ptr, i64, [1 x i64], [1 x i64] } %48, i64 %18, 3, 0
  %50 = insertvalue { ptr, ptr, i64, [1 x i64], [1 x i64] } %49, i64 %19, 4, 0
  %51 = insertvalue { ptr, ptr, i64, [1 x i64], [1 x i64] } undef, ptr %20, 0
  %52 = insertvalue { ptr, ptr, i64, [1 x i64], [1 x i64] } %51, ptr %21, 1
  %53 = insertvalue { ptr, ptr, i64, [1 x i64], [1 x i64] } %52, i64 %22, 2
  %54 = insertvalue { ptr, ptr, i64, [1 x i64], [1 x i64] } %53, i64 %23, 3, 0
  %55 = insertvalue { ptr, ptr, i64, [1 x i64], [1 x i64] } %54, i64 %24, 4, 0
  %56 = extractvalue { ptr, ptr, i64, [1 x i64], [1 x i64] } %35, 1
  %57 = getelementptr i64, ptr %56, i64 0
  %58 = load i64, ptr %57, align 4
  %59 = extractvalue { ptr, ptr, i64, [1 x i64], [1 x i64] } %35, 1
  %60 = getelementptr i64, ptr %59, i64 1
  %61 = load i64, ptr %60, align 4
  %62 = extractvalue { [3 x i64], [5 x i64] } %25, 1, 1
  %63 = sub i64 %61, 1
  %64 = icmp ult i64 %58, %61
  br i1 %64, label %65, label %70

65:                                               ; preds = %30
  %66 = extractvalue { ptr, ptr, i64, [1 x i64], [1 x i64] } %40, 1
  %67 = getelementptr i64, ptr %66, i64 %63
  %68 = load i64, ptr %67, align 4
  %69 = icmp eq i64 %68, %26
  br label %71

70:                                               ; preds = %30
  br label %71

71:                                               ; preds = %65, %70
  %72 = phi i1 [ false, %70 ], [ %69, %65 ]
  br label %73

73:                                               ; preds = %71
  %74 = select i1 %72, i64 %63, i64 %62
  br i1 %72, label %75, label %76

75:                                               ; preds = %73
  br label %132

76:                                               ; preds = %73
  %77 = add i64 %62, 1
  %78 = extractvalue { ptr, ptr, i64, [1 x i64], [1 x i64] } %35, 1
  %79 = getelementptr i64, ptr %78, i64 1
  store i64 %77, ptr %79, align 4
  %80 = extractvalue { [3 x i64], [5 x i64] } %25, 1, 1
  %81 = extractvalue { ptr, ptr, i64, [1 x i64], [1 x i64] } %40, 3, 0
  %82 = add i64 %80, 1
  %83 = icmp ugt i64 %82, %81
  br i1 %83, label %84, label %99

84:                                               ; preds = %76
  %85 = mul i64 %81, 2
  %86 = extractvalue { ptr, ptr, i64, [1 x i64], [1 x i64] } %40, 3, 0
  %87 = icmp ugt i64 %85, %86
  br i1 %87, label %88, label %96

88:                                               ; preds = %84
  %89 = mul i64 %85, ptrtoint (ptr getelementptr (i64, ptr null, i32 1) to i64)
  %90 = mul i64 %86, ptrtoint (ptr getelementptr (i64, ptr null, i32 1) to i64)
  %91 = call ptr @malloc(i64 %89)
  %92 = extractvalue { ptr, ptr, i64, [1 x i64], [1 x i64] } %40, 1
  call void @llvm.memcpy.p0.p0.i64(ptr %91, ptr %92, i64 %90, i1 false)
  %93 = extractvalue { ptr, ptr, i64, [1 x i64], [1 x i64] } %40, 0
  call void @free(ptr %93)
  %94 = insertvalue { ptr, ptr, i64, [1 x i64], [1 x i64] } %40, ptr %91, 0
  %95 = insertvalue { ptr, ptr, i64, [1 x i64], [1 x i64] } %94, ptr %91, 1
  br label %96

96:                                               ; preds = %88, %84
  %97 = phi { ptr, ptr, i64, [1 x i64], [1 x i64] } [ %95, %88 ], [ %40, %84 ]
  %98 = insertvalue { ptr, ptr, i64, [1 x i64], [1 x i64] } %97, i64 %85, 3, 0
  br label %100

99:                                               ; preds = %76
  br label %100

100:                                              ; preds = %96, %99
  %101 = phi { ptr, ptr, i64, [1 x i64], [1 x i64] } [ %40, %99 ], [ %98, %96 ]
  br label %102

102:                                              ; preds = %100
  %103 = extractvalue { ptr, ptr, i64, [1 x i64], [1 x i64] } %101, 1
  %104 = getelementptr i64, ptr %103, i64 %80
  store i64 %26, ptr %104, align 4
  %105 = insertvalue { [3 x i64], [5 x i64] } %25, i64 %82, 1, 1
  %106 = extractvalue { [3 x i64], [5 x i64] } %25, 1, 2
  %107 = extractvalue { ptr, ptr, i64, [1 x i64], [1 x i64] } %45, 3, 0
  %108 = add i64 %106, 1
  %109 = icmp ugt i64 %108, %107
  br i1 %109, label %110, label %125

110:                                              ; preds = %102
  %111 = mul i64 %107, 2
  %112 = extractvalue { ptr, ptr, i64, [1 x i64], [1 x i64] } %45, 3, 0
  %113 = icmp ugt i64 %111, %112
  br i1 %113, label %114, label %122

114:                                              ; preds = %110
  %115 = mul i64 %111, ptrtoint (ptr getelementptr (i64, ptr null, i32 1) to i64)
  %116 = mul i64 %112, ptrtoint (ptr getelementptr (i64, ptr null, i32 1) to i64)
  %117 = call ptr @malloc(i64 %115)
  %118 = extractvalue { ptr, ptr, i64, [1 x i64], [1 x i64] } %45, 1
  call void @llvm.memcpy.p0.p0.i64(ptr %117, ptr %118, i64 %116, i1 false)
  %119 = extractvalue { ptr, ptr, i64, [1 x i64], [1 x i64] } %45, 0
  call void @free(ptr %119)
  %120 = insertvalue { ptr, ptr, i64, [1 x i64], [1 x i64] } %45, ptr %117, 0
  %121 = insertvalue { ptr, ptr, i64, [1 x i64], [1 x i64] } %120, ptr %117, 1
  br label %122

122:                                              ; preds = %114, %110
  %123 = phi { ptr, ptr, i64, [1 x i64], [1 x i64] } [ %121, %114 ], [ %45, %110 ]
  %124 = insertvalue { ptr, ptr, i64, [1 x i64], [1 x i64] } %123, i64 %111, 3, 0
  br label %126

125:                                              ; preds = %102
  br label %126

126:                                              ; preds = %122, %125
  %127 = phi { ptr, ptr, i64, [1 x i64], [1 x i64] } [ %45, %125 ], [ %124, %122 ]
  br label %128

128:                                              ; preds = %126
  %129 = extractvalue { ptr, ptr, i64, [1 x i64], [1 x i64] } %127, 1
  %130 = getelementptr i64, ptr %129, i64 %106
  store i64 0, ptr %130, align 4
  %131 = insertvalue { [3 x i64], [5 x i64] } %105, i64 %108, 1, 2
  br label %132

132:                                              ; preds = %75, %128
  %133 = phi { ptr, ptr, i64, [1 x i64], [1 x i64] } [ %101, %128 ], [ %40, %75 ]
  %134 = phi { ptr, ptr, i64, [1 x i64], [1 x i64] } [ %127, %128 ], [ %45, %75 ]
  %135 = phi { [3 x i64], [5 x i64] } [ %131, %128 ], [ %25, %75 ]
  br label %136

136:                                              ; preds = %132
  %137 = add i64 %74, 1
  %138 = extractvalue { ptr, ptr, i64, [1 x i64], [1 x i64] } %134, 1
  %139 = getelementptr i64, ptr %138, i64 %74
  %140 = load i64, ptr %139, align 4
  %141 = extractvalue { ptr, ptr, i64, [1 x i64], [1 x i64] } %134, 1
  %142 = getelementptr i64, ptr %141, i64 %137
  %143 = load i64, ptr %142, align 4
  %144 = extractvalue { [3 x i64], [5 x i64] } %135, 1, 3
  %145 = sub i64 %143, 1
  %146 = icmp ult i64 %140, %143
  br i1 %146, label %147, label %152

147:                                              ; preds = %136
  %148 = extractvalue { ptr, ptr, i64, [1 x i64], [1 x i64] } %50, 1
  %149 = getelementptr i64, ptr %148, i64 %145
  %150 = load i64, ptr %149, align 4
  %151 = icmp eq i64 %150, %27
  br label %155

152:                                              ; preds = %136
  %153 = extractvalue { ptr, ptr, i64, [1 x i64], [1 x i64] } %134, 1
  %154 = getelementptr i64, ptr %153, i64 %74
  store i64 %144, ptr %154, align 4
  br label %155

155:                                              ; preds = %147, %152
  %156 = phi i1 [ false, %152 ], [ %151, %147 ]
  br label %157

157:                                              ; preds = %155
  %158 = select i1 %156, i64 %145, i64 %144
  br i1 %156, label %159, label %160

159:                                              ; preds = %157
  br label %227

160:                                              ; preds = %157
  %161 = add i64 %144, 1
  %162 = extractvalue { ptr, ptr, i64, [1 x i64], [1 x i64] } %134, 1
  %163 = getelementptr i64, ptr %162, i64 %137
  store i64 %161, ptr %163, align 4
  %164 = extractvalue { [3 x i64], [5 x i64] } %135, 1, 3
  %165 = extractvalue { ptr, ptr, i64, [1 x i64], [1 x i64] } %50, 3, 0
  %166 = add i64 %164, 1
  %167 = icmp ugt i64 %166, %165
  br i1 %167, label %168, label %183

168:                                              ; preds = %160
  %169 = mul i64 %165, 2
  %170 = extractvalue { ptr, ptr, i64, [1 x i64], [1 x i64] } %50, 3, 0
  %171 = icmp ugt i64 %169, %170
  br i1 %171, label %172, label %180

172:                                              ; preds = %168
  %173 = mul i64 %169, ptrtoint (ptr getelementptr (i64, ptr null, i32 1) to i64)
  %174 = mul i64 %170, ptrtoint (ptr getelementptr (i64, ptr null, i32 1) to i64)
  %175 = call ptr @malloc(i64 %173)
  %176 = extractvalue { ptr, ptr, i64, [1 x i64], [1 x i64] } %50, 1
  call void @llvm.memcpy.p0.p0.i64(ptr %175, ptr %176, i64 %174, i1 false)
  %177 = extractvalue { ptr, ptr, i64, [1 x i64], [1 x i64] } %50, 0
  call void @free(ptr %177)
  %178 = insertvalue { ptr, ptr, i64, [1 x i64], [1 x i64] } %50, ptr %175, 0
  %179 = insertvalue { ptr, ptr, i64, [1 x i64], [1 x i64] } %178, ptr %175, 1
  br label %180

180:                                              ; preds = %172, %168
  %181 = phi { ptr, ptr, i64, [1 x i64], [1 x i64] } [ %179, %172 ], [ %50, %168 ]
  %182 = insertvalue { ptr, ptr, i64, [1 x i64], [1 x i64] } %181, i64 %169, 3, 0
  br label %184

183:                                              ; preds = %160
  br label %184

184:                                              ; preds = %180, %183
  %185 = phi { ptr, ptr, i64, [1 x i64], [1 x i64] } [ %50, %183 ], [ %182, %180 ]
  br label %186

186:                                              ; preds = %184
  %187 = extractvalue { ptr, ptr, i64, [1 x i64], [1 x i64] } %185, 1
  %188 = getelementptr i64, ptr %187, i64 %164
  store i64 %27, ptr %188, align 4
  %189 = insertvalue { [3 x i64], [5 x i64] } %135, i64 %166, 1, 3
  %190 = extractvalue { [3 x i64], [5 x i64] } %135, 1, 4
  %191 = extractvalue { ptr, ptr, i64, [1 x i64], [1 x i64] } %55, 3, 0
  %192 = add i64 %190, 32
  %193 = icmp ugt i64 %192, %191
  br i1 %193, label %194, label %213

194:                                              ; preds = %186
  br label %195

195:                                              ; preds = %195, %194
  %196 = phi i64 [ %197, %195 ], [ %191, %194 ]
  %197 = mul i64 %196, 2
  %198 = icmp ugt i64 %192, %197
  br i1 %198, label %195, label %199

199:                                              ; preds = %195
  %200 = extractvalue { ptr, ptr, i64, [1 x i64], [1 x i64] } %55, 3, 0
  %201 = icmp ugt i64 %197, %200
  br i1 %201, label %202, label %210

202:                                              ; preds = %199
  %203 = mul i64 %197, ptrtoint (ptr getelementptr (float, ptr null, i32 1) to i64)
  %204 = mul i64 %200, ptrtoint (ptr getelementptr (float, ptr null, i32 1) to i64)
  %205 = call ptr @malloc(i64 %203)
  %206 = extractvalue { ptr, ptr, i64, [1 x i64], [1 x i64] } %55, 1
  call void @llvm.memcpy.p0.p0.i64(ptr %205, ptr %206, i64 %204, i1 false)
  %207 = extractvalue { ptr, ptr, i64, [1 x i64], [1 x i64] } %55, 0
  call void @free(ptr %207)
  %208 = insertvalue { ptr, ptr, i64, [1 x i64], [1 x i64] } %55, ptr %205, 0
  %209 = insertvalue { ptr, ptr, i64, [1 x i64], [1 x i64] } %208, ptr %205, 1
  br label %210

210:                                              ; preds = %202, %199
  %211 = phi { ptr, ptr, i64, [1 x i64], [1 x i64] } [ %209, %202 ], [ %55, %199 ]
  %212 = insertvalue { ptr, ptr, i64, [1 x i64], [1 x i64] } %211, i64 %197, 3, 0
  br label %214

213:                                              ; preds = %186
  br label %214

214:                                              ; preds = %210, %213
  %215 = phi { ptr, ptr, i64, [1 x i64], [1 x i64] } [ %55, %213 ], [ %212, %210 ]
  br label %216

216:                                              ; preds = %214
  %217 = extractvalue { ptr, ptr, i64, [1 x i64], [1 x i64] } %215, 1
  br label %218

218:                                              ; preds = %221, %216
  %219 = phi i64 [ %224, %221 ], [ 0, %216 ]
  %220 = icmp slt i64 %219, 32
  br i1 %220, label %221, label %225

221:                                              ; preds = %218
  %222 = getelementptr float, ptr %217, i64 %190
  %223 = getelementptr float, ptr %222, i64 %219
  store float 0.000000e+00, ptr %223, align 4
  %224 = add i64 %219, 1
  br label %218

225:                                              ; preds = %218
  %226 = insertvalue { [3 x i64], [5 x i64] } %189, i64 %192, 1, 4
  br label %227

227:                                              ; preds = %159, %225
  %228 = phi { ptr, ptr, i64, [1 x i64], [1 x i64] } [ %185, %225 ], [ %50, %159 ]
  %229 = phi { ptr, ptr, i64, [1 x i64], [1 x i64] } [ %215, %225 ], [ %55, %159 ]
  %230 = phi { [3 x i64], [5 x i64] } [ %226, %225 ], [ %135, %159 ]
  br label %231

231:                                              ; preds = %227
  %232 = mul i64 %158, 32
  %233 = add i64 %232, %28
  %234 = extractvalue { ptr, ptr, i64, [1 x i64], [1 x i64] } %229, 1
  %235 = getelementptr float, ptr %234, i64 %233
  store float %29, ptr %235, align 4
  %236 = insertvalue { { ptr, ptr, i64, [1 x i64], [1 x i64] }, { ptr, ptr, i64, [1 x i64], [1 x i64] }, { ptr, ptr, i64, [1 x i64], [1 x i64] }, { ptr, ptr, i64, [1 x i64], [1 x i64] }, { ptr, ptr, i64, [1 x i64], [1 x i64] }, { [3 x i64], [5 x i64] } } undef, { ptr, ptr, i64, [1 x i64], [1 x i64] } %35, 0
  %237 = insertvalue { { ptr, ptr, i64, [1 x i64], [1 x i64] }, { ptr, ptr, i64, [1 x i64], [1 x i64] }, { ptr, ptr, i64, [1 x i64], [1 x i64] }, { ptr, ptr, i64, [1 x i64], [1 x i64] }, { ptr, ptr, i64, [1 x i64], [1 x i64] }, { [3 x i64], [5 x i64] } } %236, { ptr, ptr, i64, [1 x i64], [1 x i64] } %133, 1
  %238 = insertvalue { { ptr, ptr, i64, [1 x i64], [1 x i64] }, { ptr, ptr, i64, [1 x i64], [1 x i64] }, { ptr, ptr, i64, [1 x i64], [1 x i64] }, { ptr, ptr, i64, [1 x i64], [1 x i64] }, { ptr, ptr, i64, [1 x i64], [1 x i64] }, { [3 x i64], [5 x i64] } } %237, { ptr, ptr, i64, [1 x i64], [1 x i64] } %134, 2
  %239 = insertvalue { { ptr, ptr, i64, [1 x i64], [1 x i64] }, { ptr, ptr, i64, [1 x i64], [1 x i64] }, { ptr, ptr, i64, [1 x i64], [1 x i64] }, { ptr, ptr, i64, [1 x i64], [1 x i64] }, { ptr, ptr, i64, [1 x i64], [1 x i64] }, { [3 x i64], [5 x i64] } } %238, { ptr, ptr, i64, [1 x i64], [1 x i64] } %228, 3
  %240 = insertvalue { { ptr, ptr, i64, [1 x i64], [1 x i64] }, { ptr, ptr, i64, [1 x i64], [1 x i64] }, { ptr, ptr, i64, [1 x i64], [1 x i64] }, { ptr, ptr, i64, [1 x i64], [1 x i64] }, { ptr, ptr, i64, [1 x i64], [1 x i64] }, { [3 x i64], [5 x i64] } } %239, { ptr, ptr, i64, [1 x i64], [1 x i64] } %229, 4
  %241 = insertvalue { { ptr, ptr, i64, [1 x i64], [1 x i64] }, { ptr, ptr, i64, [1 x i64], [1 x i64] }, { ptr, ptr, i64, [1 x i64], [1 x i64] }, { ptr, ptr, i64, [1 x i64], [1 x i64] }, { ptr, ptr, i64, [1 x i64], [1 x i64] }, { [3 x i64], [5 x i64] } } %240, { [3 x i64], [5 x i64] } %230, 5
  ret { { ptr, ptr, i64, [1 x i64], [1 x i64] }, { ptr, ptr, i64, [1 x i64], [1 x i64] }, { ptr, ptr, i64, [1 x i64], [1 x i64] }, { ptr, ptr, i64, [1 x i64], [1 x i64] }, { ptr, ptr, i64, [1 x i64], [1 x i64] }, { [3 x i64], [5 x i64] } } %241
}

define i64 @_sparse_binary_search_1_index(i64 %0, i64 %1, ptr %2, ptr %3, i64 %4, i64 %5, i64 %6) {
  %8 = insertvalue { ptr, ptr, i64, [1 x i64], [1 x i64] } undef, ptr %2, 0
  %9 = insertvalue { ptr, ptr, i64, [1 x i64], [1 x i64] } %8, ptr %3, 1
  %10 = insertvalue { ptr, ptr, i64, [1 x i64], [1 x i64] } %9, i64 %4, 2
  %11 = insertvalue { ptr, ptr, i64, [1 x i64], [1 x i64] } %10, i64 %5, 3, 0
  %12 = insertvalue { ptr, ptr, i64, [1 x i64], [1 x i64] } %11, i64 %6, 4, 0
  br label %13

13:                                               ; preds = %17, %7
  %14 = phi i64 [ %30, %17 ], [ %0, %7 ]
  %15 = phi i64 [ %31, %17 ], [ %1, %7 ]
  %16 = icmp ult i64 %14, %15
  br i1 %16, label %17, label %32

17:                                               ; preds = %13
  %18 = phi i64 [ %14, %13 ]
  %19 = phi i64 [ %15, %13 ]
  %20 = add i64 %18, %19
  %21 = lshr i64 %20, 1
  %22 = add i64 %21, 1
  %23 = extractvalue { ptr, ptr, i64, [1 x i64], [1 x i64] } %12, 1
  %24 = getelementptr i64, ptr %23, i64 %1
  %25 = load i64, ptr %24, align 4
  %26 = extractvalue { ptr, ptr, i64, [1 x i64], [1 x i64] } %12, 1
  %27 = getelementptr i64, ptr %26, i64 %21
  %28 = load i64, ptr %27, align 4
  %29 = icmp ult i64 %25, %28
  %30 = select i1 %29, i64 %18, i64 %22
  %31 = select i1 %29, i64 %21, i64 %19
  br label %13

32:                                               ; preds = %13
  ret i64 %14
}

define void @_sparse_sort_stable_1_index(i64 %0, i64 %1, ptr %2, ptr %3, i64 %4, i64 %5, i64 %6) {
  %8 = insertvalue { ptr, ptr, i64, [1 x i64], [1 x i64] } undef, ptr %2, 0
  %9 = insertvalue { ptr, ptr, i64, [1 x i64], [1 x i64] } %8, ptr %3, 1
  %10 = insertvalue { ptr, ptr, i64, [1 x i64], [1 x i64] } %9, i64 %4, 2
  %11 = insertvalue { ptr, ptr, i64, [1 x i64], [1 x i64] } %10, i64 %5, 3, 0
  %12 = insertvalue { ptr, ptr, i64, [1 x i64], [1 x i64] } %11, i64 %6, 4, 0
  %13 = add i64 %0, 1
  br label %14

14:                                               ; preds = %35, %7
  %15 = phi i64 [ %38, %35 ], [ %13, %7 ]
  %16 = icmp slt i64 %15, %1
  br i1 %16, label %17, label %39

17:                                               ; preds = %14
  %18 = call i64 @_sparse_binary_search_1_index(i64 %0, i64 %15, ptr %2, ptr %3, i64 %4, i64 %5, i64 %6)
  %19 = extractvalue { ptr, ptr, i64, [1 x i64], [1 x i64] } %12, 1
  %20 = getelementptr i64, ptr %19, i64 %15
  %21 = load i64, ptr %20, align 4
  %22 = sub i64 %15, %18
  br label %23

23:                                               ; preds = %26, %17
  %24 = phi i64 [ %34, %26 ], [ 0, %17 ]
  %25 = icmp slt i64 %24, %22
  br i1 %25, label %26, label %35

26:                                               ; preds = %23
  %27 = sub i64 %15, %24
  %28 = sub i64 %27, 1
  %29 = extractvalue { ptr, ptr, i64, [1 x i64], [1 x i64] } %12, 1
  %30 = getelementptr i64, ptr %29, i64 %28
  %31 = load i64, ptr %30, align 4
  %32 = extractvalue { ptr, ptr, i64, [1 x i64], [1 x i64] } %12, 1
  %33 = getelementptr i64, ptr %32, i64 %27
  store i64 %31, ptr %33, align 4
  %34 = add i64 %24, 1
  br label %23

35:                                               ; preds = %23
  %36 = extractvalue { ptr, ptr, i64, [1 x i64], [1 x i64] } %12, 1
  %37 = getelementptr i64, ptr %36, i64 %18
  store i64 %21, ptr %37, align 4
  %38 = add i64 %15, 1
  br label %14

39:                                               ; preds = %14
  ret void
}

define void @_sparse_shift_down_1_index(i64 %0, i64 %1, ptr %2, ptr %3, i64 %4, i64 %5, i64 %6, i64 %7) {
  %9 = insertvalue { ptr, ptr, i64, [1 x i64], [1 x i64] } undef, ptr %2, 0
  %10 = insertvalue { ptr, ptr, i64, [1 x i64], [1 x i64] } %9, ptr %3, 1
  %11 = insertvalue { ptr, ptr, i64, [1 x i64], [1 x i64] } %10, i64 %4, 2
  %12 = insertvalue { ptr, ptr, i64, [1 x i64], [1 x i64] } %11, i64 %5, 3, 0
  %13 = insertvalue { ptr, ptr, i64, [1 x i64], [1 x i64] } %12, i64 %6, 4, 0
  %14 = icmp uge i64 %7, 2
  br i1 %14, label %15, label %98

15:                                               ; preds = %8
  %16 = sub i64 %1, %0
  %17 = sub i64 %7, 2
  %18 = lshr i64 %17, 1
  %19 = icmp uge i64 %18, %16
  br i1 %19, label %20, label %97

20:                                               ; preds = %15
  %21 = shl i64 %16, 1
  %22 = add i64 %21, 1
  %23 = add i64 %22, %0
  %24 = add i64 %21, 2
  %25 = icmp ult i64 %24, %7
  br i1 %25, label %26, label %37

26:                                               ; preds = %20
  %27 = add i64 %24, %0
  %28 = extractvalue { ptr, ptr, i64, [1 x i64], [1 x i64] } %13, 1
  %29 = getelementptr i64, ptr %28, i64 %23
  %30 = load i64, ptr %29, align 4
  %31 = extractvalue { ptr, ptr, i64, [1 x i64], [1 x i64] } %13, 1
  %32 = getelementptr i64, ptr %31, i64 %27
  %33 = load i64, ptr %32, align 4
  %34 = icmp ult i64 %30, %33
  %35 = select i1 %34, i64 %24, i64 %22
  %36 = select i1 %34, i64 %27, i64 %23
  br label %38

37:                                               ; preds = %20
  br label %38

38:                                               ; preds = %93, %26, %37
  %39 = phi i64 [ %94, %93 ], [ %22, %37 ], [ %35, %26 ]
  %40 = phi i64 [ %95, %93 ], [ %23, %37 ], [ %36, %26 ]
  %41 = phi i64 [ %60, %93 ], [ %1, %37 ], [ %1, %26 ]
  br label %42

42:                                               ; preds = %38
  %43 = phi i64 [ %41, %38 ]
  %44 = phi i64 [ %39, %38 ]
  %45 = phi i64 [ %40, %38 ]
  br label %46

46:                                               ; preds = %42
  %47 = phi i64 [ %43, %42 ]
  %48 = phi i64 [ %44, %42 ]
  %49 = phi i64 [ %45, %42 ]
  %50 = extractvalue { ptr, ptr, i64, [1 x i64], [1 x i64] } %13, 1
  %51 = getelementptr i64, ptr %50, i64 %47
  %52 = load i64, ptr %51, align 4
  %53 = extractvalue { ptr, ptr, i64, [1 x i64], [1 x i64] } %13, 1
  %54 = getelementptr i64, ptr %53, i64 %49
  %55 = load i64, ptr %54, align 4
  %56 = icmp ult i64 %52, %55
  br i1 %56, label %57, label %96

57:                                               ; preds = %46
  %58 = phi i64 [ %47, %46 ]
  %59 = phi i64 [ %48, %46 ]
  %60 = phi i64 [ %49, %46 ]
  %61 = extractvalue { ptr, ptr, i64, [1 x i64], [1 x i64] } %13, 1
  %62 = getelementptr i64, ptr %61, i64 %58
  %63 = load i64, ptr %62, align 4
  %64 = extractvalue { ptr, ptr, i64, [1 x i64], [1 x i64] } %13, 1
  %65 = getelementptr i64, ptr %64, i64 %60
  %66 = load i64, ptr %65, align 4
  %67 = extractvalue { ptr, ptr, i64, [1 x i64], [1 x i64] } %13, 1
  %68 = getelementptr i64, ptr %67, i64 %58
  store i64 %66, ptr %68, align 4
  %69 = extractvalue { ptr, ptr, i64, [1 x i64], [1 x i64] } %13, 1
  %70 = getelementptr i64, ptr %69, i64 %60
  store i64 %63, ptr %70, align 4
  %71 = icmp uge i64 %18, %59
  br i1 %71, label %72, label %93

72:                                               ; preds = %57
  %73 = shl i64 %59, 1
  %74 = add i64 %73, 1
  %75 = add i64 %74, %0
  %76 = add i64 %73, 2
  %77 = icmp ult i64 %76, %7
  br i1 %77, label %78, label %89

78:                                               ; preds = %72
  %79 = add i64 %76, %0
  %80 = extractvalue { ptr, ptr, i64, [1 x i64], [1 x i64] } %13, 1
  %81 = getelementptr i64, ptr %80, i64 %75
  %82 = load i64, ptr %81, align 4
  %83 = extractvalue { ptr, ptr, i64, [1 x i64], [1 x i64] } %13, 1
  %84 = getelementptr i64, ptr %83, i64 %79
  %85 = load i64, ptr %84, align 4
  %86 = icmp ult i64 %82, %85
  %87 = select i1 %86, i64 %76, i64 %74
  %88 = select i1 %86, i64 %79, i64 %75
  br label %90

89:                                               ; preds = %72
  br label %90

90:                                               ; preds = %78, %89
  %91 = phi i64 [ %74, %89 ], [ %87, %78 ]
  %92 = phi i64 [ %75, %89 ], [ %88, %78 ]
  br label %93

93:                                               ; preds = %90, %57
  %94 = phi i64 [ %91, %90 ], [ %59, %57 ]
  %95 = phi i64 [ %92, %90 ], [ %60, %57 ]
  br label %38

96:                                               ; preds = %46
  br label %97

97:                                               ; preds = %96, %15
  br label %98

98:                                               ; preds = %97, %8
  ret void
}

define void @_sparse_heap_sort_1_index(i64 %0, i64 %1, ptr %2, ptr %3, i64 %4, i64 %5, i64 %6) {
  %8 = insertvalue { ptr, ptr, i64, [1 x i64], [1 x i64] } undef, ptr %2, 0
  %9 = insertvalue { ptr, ptr, i64, [1 x i64], [1 x i64] } %8, ptr %3, 1
  %10 = insertvalue { ptr, ptr, i64, [1 x i64], [1 x i64] } %9, i64 %4, 2
  %11 = insertvalue { ptr, ptr, i64, [1 x i64], [1 x i64] } %10, i64 %5, 3, 0
  %12 = insertvalue { ptr, ptr, i64, [1 x i64], [1 x i64] } %11, i64 %6, 4, 0
  %13 = sub i64 %1, %0
  %14 = sub i64 %13, 2
  %15 = lshr i64 %14, 1
  %16 = add i64 %15, 1
  br label %17

17:                                               ; preds = %20, %7
  %18 = phi i64 [ %23, %20 ], [ 0, %7 ]
  %19 = icmp slt i64 %18, %16
  br i1 %19, label %20, label %24

20:                                               ; preds = %17
  %21 = sub i64 %15, %18
  %22 = add i64 %0, %21
  call void @_sparse_shift_down_1_index(i64 %0, i64 %22, ptr %2, ptr %3, i64 %4, i64 %5, i64 %6, i64 %13)
  %23 = add i64 %18, 1
  br label %17

24:                                               ; preds = %17
  %25 = sub i64 %13, 1
  br label %26

26:                                               ; preds = %29, %24
  %27 = phi i64 [ %44, %29 ], [ 0, %24 ]
  %28 = icmp slt i64 %27, %25
  br i1 %28, label %29, label %45

29:                                               ; preds = %26
  %30 = sub i64 %13, %27
  %31 = add i64 %0, %30
  %32 = sub i64 %31, 1
  %33 = extractvalue { ptr, ptr, i64, [1 x i64], [1 x i64] } %12, 1
  %34 = getelementptr i64, ptr %33, i64 %0
  %35 = load i64, ptr %34, align 4
  %36 = extractvalue { ptr, ptr, i64, [1 x i64], [1 x i64] } %12, 1
  %37 = getelementptr i64, ptr %36, i64 %32
  %38 = load i64, ptr %37, align 4
  %39 = extractvalue { ptr, ptr, i64, [1 x i64], [1 x i64] } %12, 1
  %40 = getelementptr i64, ptr %39, i64 %0
  store i64 %38, ptr %40, align 4
  %41 = extractvalue { ptr, ptr, i64, [1 x i64], [1 x i64] } %12, 1
  %42 = getelementptr i64, ptr %41, i64 %32
  store i64 %35, ptr %42, align 4
  %43 = sub i64 %30, 1
  call void @_sparse_shift_down_1_index(i64 %0, i64 %0, ptr %2, ptr %3, i64 %4, i64 %5, i64 %6, i64 %43)
  %44 = add i64 %27, 1
  br label %26

45:                                               ; preds = %26
  ret void
}

define i64 @_sparse_partition_1_index(i64 %0, i64 %1, ptr %2, ptr %3, i64 %4, i64 %5, i64 %6) {
  %8 = insertvalue { ptr, ptr, i64, [1 x i64], [1 x i64] } undef, ptr %2, 0
  %9 = insertvalue { ptr, ptr, i64, [1 x i64], [1 x i64] } %8, ptr %3, 1
  %10 = insertvalue { ptr, ptr, i64, [1 x i64], [1 x i64] } %9, i64 %4, 2
  %11 = insertvalue { ptr, ptr, i64, [1 x i64], [1 x i64] } %10, i64 %5, 3, 0
  %12 = insertvalue { ptr, ptr, i64, [1 x i64], [1 x i64] } %11, i64 %6, 4, 0
  %13 = add i64 %0, %1
  %14 = lshr i64 %13, 1
  %15 = sub i64 %1, 1
  %16 = sub i64 %1, %0
  %17 = icmp ult i64 %16, 1000
  br i1 %17, label %18, label %76

18:                                               ; preds = %7
  %19 = extractvalue { ptr, ptr, i64, [1 x i64], [1 x i64] } %12, 1
  %20 = getelementptr i64, ptr %19, i64 %14
  %21 = load i64, ptr %20, align 4
  %22 = extractvalue { ptr, ptr, i64, [1 x i64], [1 x i64] } %12, 1
  %23 = getelementptr i64, ptr %22, i64 %0
  %24 = load i64, ptr %23, align 4
  %25 = icmp ult i64 %21, %24
  br i1 %25, label %26, label %37

26:                                               ; preds = %18
  %27 = extractvalue { ptr, ptr, i64, [1 x i64], [1 x i64] } %12, 1
  %28 = getelementptr i64, ptr %27, i64 %14
  %29 = load i64, ptr %28, align 4
  %30 = extractvalue { ptr, ptr, i64, [1 x i64], [1 x i64] } %12, 1
  %31 = getelementptr i64, ptr %30, i64 %0
  %32 = load i64, ptr %31, align 4
  %33 = extractvalue { ptr, ptr, i64, [1 x i64], [1 x i64] } %12, 1
  %34 = getelementptr i64, ptr %33, i64 %14
  store i64 %32, ptr %34, align 4
  %35 = extractvalue { ptr, ptr, i64, [1 x i64], [1 x i64] } %12, 1
  %36 = getelementptr i64, ptr %35, i64 %0
  store i64 %29, ptr %36, align 4
  br label %37

37:                                               ; preds = %26, %18
  %38 = extractvalue { ptr, ptr, i64, [1 x i64], [1 x i64] } %12, 1
  %39 = getelementptr i64, ptr %38, i64 %15
  %40 = load i64, ptr %39, align 4
  %41 = extractvalue { ptr, ptr, i64, [1 x i64], [1 x i64] } %12, 1
  %42 = getelementptr i64, ptr %41, i64 %14
  %43 = load i64, ptr %42, align 4
  %44 = icmp ult i64 %40, %43
  br i1 %44, label %45, label %75

45:                                               ; preds = %37
  %46 = extractvalue { ptr, ptr, i64, [1 x i64], [1 x i64] } %12, 1
  %47 = getelementptr i64, ptr %46, i64 %15
  %48 = load i64, ptr %47, align 4
  %49 = extractvalue { ptr, ptr, i64, [1 x i64], [1 x i64] } %12, 1
  %50 = getelementptr i64, ptr %49, i64 %14
  %51 = load i64, ptr %50, align 4
  %52 = extractvalue { ptr, ptr, i64, [1 x i64], [1 x i64] } %12, 1
  %53 = getelementptr i64, ptr %52, i64 %15
  store i64 %51, ptr %53, align 4
  %54 = extractvalue { ptr, ptr, i64, [1 x i64], [1 x i64] } %12, 1
  %55 = getelementptr i64, ptr %54, i64 %14
  store i64 %48, ptr %55, align 4
  %56 = extractvalue { ptr, ptr, i64, [1 x i64], [1 x i64] } %12, 1
  %57 = getelementptr i64, ptr %56, i64 %14
  %58 = load i64, ptr %57, align 4
  %59 = extractvalue { ptr, ptr, i64, [1 x i64], [1 x i64] } %12, 1
  %60 = getelementptr i64, ptr %59, i64 %0
  %61 = load i64, ptr %60, align 4
  %62 = icmp ult i64 %58, %61
  br i1 %62, label %63, label %74

63:                                               ; preds = %45
  %64 = extractvalue { ptr, ptr, i64, [1 x i64], [1 x i64] } %12, 1
  %65 = getelementptr i64, ptr %64, i64 %14
  %66 = load i64, ptr %65, align 4
  %67 = extractvalue { ptr, ptr, i64, [1 x i64], [1 x i64] } %12, 1
  %68 = getelementptr i64, ptr %67, i64 %0
  %69 = load i64, ptr %68, align 4
  %70 = extractvalue { ptr, ptr, i64, [1 x i64], [1 x i64] } %12, 1
  %71 = getelementptr i64, ptr %70, i64 %14
  store i64 %69, ptr %71, align 4
  %72 = extractvalue { ptr, ptr, i64, [1 x i64], [1 x i64] } %12, 1
  %73 = getelementptr i64, ptr %72, i64 %0
  store i64 %66, ptr %73, align 4
  br label %74

74:                                               ; preds = %63, %45, %268, %202
  br label %75

75:                                               ; preds = %74, %37, %194
  br label %269

76:                                               ; preds = %7
  %77 = add i64 %0, %1
  %78 = lshr i64 %77, 1
  %79 = add i64 %14, %1
  %80 = lshr i64 %79, 1
  %81 = extractvalue { ptr, ptr, i64, [1 x i64], [1 x i64] } %12, 1
  %82 = getelementptr i64, ptr %81, i64 %78
  %83 = load i64, ptr %82, align 4
  %84 = extractvalue { ptr, ptr, i64, [1 x i64], [1 x i64] } %12, 1
  %85 = getelementptr i64, ptr %84, i64 %0
  %86 = load i64, ptr %85, align 4
  %87 = icmp ult i64 %83, %86
  br i1 %87, label %88, label %99

88:                                               ; preds = %76
  %89 = extractvalue { ptr, ptr, i64, [1 x i64], [1 x i64] } %12, 1
  %90 = getelementptr i64, ptr %89, i64 %78
  %91 = load i64, ptr %90, align 4
  %92 = extractvalue { ptr, ptr, i64, [1 x i64], [1 x i64] } %12, 1
  %93 = getelementptr i64, ptr %92, i64 %0
  %94 = load i64, ptr %93, align 4
  %95 = extractvalue { ptr, ptr, i64, [1 x i64], [1 x i64] } %12, 1
  %96 = getelementptr i64, ptr %95, i64 %78
  store i64 %94, ptr %96, align 4
  %97 = extractvalue { ptr, ptr, i64, [1 x i64], [1 x i64] } %12, 1
  %98 = getelementptr i64, ptr %97, i64 %0
  store i64 %91, ptr %98, align 4
  br label %99

99:                                               ; preds = %88, %76
  %100 = extractvalue { ptr, ptr, i64, [1 x i64], [1 x i64] } %12, 1
  %101 = getelementptr i64, ptr %100, i64 %14
  %102 = load i64, ptr %101, align 4
  %103 = extractvalue { ptr, ptr, i64, [1 x i64], [1 x i64] } %12, 1
  %104 = getelementptr i64, ptr %103, i64 %78
  %105 = load i64, ptr %104, align 4
  %106 = icmp ult i64 %102, %105
  br i1 %106, label %107, label %137

107:                                              ; preds = %99
  %108 = extractvalue { ptr, ptr, i64, [1 x i64], [1 x i64] } %12, 1
  %109 = getelementptr i64, ptr %108, i64 %14
  %110 = load i64, ptr %109, align 4
  %111 = extractvalue { ptr, ptr, i64, [1 x i64], [1 x i64] } %12, 1
  %112 = getelementptr i64, ptr %111, i64 %78
  %113 = load i64, ptr %112, align 4
  %114 = extractvalue { ptr, ptr, i64, [1 x i64], [1 x i64] } %12, 1
  %115 = getelementptr i64, ptr %114, i64 %14
  store i64 %113, ptr %115, align 4
  %116 = extractvalue { ptr, ptr, i64, [1 x i64], [1 x i64] } %12, 1
  %117 = getelementptr i64, ptr %116, i64 %78
  store i64 %110, ptr %117, align 4
  %118 = extractvalue { ptr, ptr, i64, [1 x i64], [1 x i64] } %12, 1
  %119 = getelementptr i64, ptr %118, i64 %78
  %120 = load i64, ptr %119, align 4
  %121 = extractvalue { ptr, ptr, i64, [1 x i64], [1 x i64] } %12, 1
  %122 = getelementptr i64, ptr %121, i64 %0
  %123 = load i64, ptr %122, align 4
  %124 = icmp ult i64 %120, %123
  br i1 %124, label %125, label %136

125:                                              ; preds = %107
  %126 = extractvalue { ptr, ptr, i64, [1 x i64], [1 x i64] } %12, 1
  %127 = getelementptr i64, ptr %126, i64 %78
  %128 = load i64, ptr %127, align 4
  %129 = extractvalue { ptr, ptr, i64, [1 x i64], [1 x i64] } %12, 1
  %130 = getelementptr i64, ptr %129, i64 %0
  %131 = load i64, ptr %130, align 4
  %132 = extractvalue { ptr, ptr, i64, [1 x i64], [1 x i64] } %12, 1
  %133 = getelementptr i64, ptr %132, i64 %78
  store i64 %131, ptr %133, align 4
  %134 = extractvalue { ptr, ptr, i64, [1 x i64], [1 x i64] } %12, 1
  %135 = getelementptr i64, ptr %134, i64 %0
  store i64 %128, ptr %135, align 4
  br label %136

136:                                              ; preds = %125, %107
  br label %137

137:                                              ; preds = %136, %99
  %138 = extractvalue { ptr, ptr, i64, [1 x i64], [1 x i64] } %12, 1
  %139 = getelementptr i64, ptr %138, i64 %80
  %140 = load i64, ptr %139, align 4
  %141 = extractvalue { ptr, ptr, i64, [1 x i64], [1 x i64] } %12, 1
  %142 = getelementptr i64, ptr %141, i64 %14
  %143 = load i64, ptr %142, align 4
  %144 = icmp ult i64 %140, %143
  br i1 %144, label %145, label %194

145:                                              ; preds = %137
  %146 = extractvalue { ptr, ptr, i64, [1 x i64], [1 x i64] } %12, 1
  %147 = getelementptr i64, ptr %146, i64 %80
  %148 = load i64, ptr %147, align 4
  %149 = extractvalue { ptr, ptr, i64, [1 x i64], [1 x i64] } %12, 1
  %150 = getelementptr i64, ptr %149, i64 %14
  %151 = load i64, ptr %150, align 4
  %152 = extractvalue { ptr, ptr, i64, [1 x i64], [1 x i64] } %12, 1
  %153 = getelementptr i64, ptr %152, i64 %80
  store i64 %151, ptr %153, align 4
  %154 = extractvalue { ptr, ptr, i64, [1 x i64], [1 x i64] } %12, 1
  %155 = getelementptr i64, ptr %154, i64 %14
  store i64 %148, ptr %155, align 4
  %156 = extractvalue { ptr, ptr, i64, [1 x i64], [1 x i64] } %12, 1
  %157 = getelementptr i64, ptr %156, i64 %14
  %158 = load i64, ptr %157, align 4
  %159 = extractvalue { ptr, ptr, i64, [1 x i64], [1 x i64] } %12, 1
  %160 = getelementptr i64, ptr %159, i64 %78
  %161 = load i64, ptr %160, align 4
  %162 = icmp ult i64 %158, %161
  br i1 %162, label %163, label %193

163:                                              ; preds = %145
  %164 = extractvalue { ptr, ptr, i64, [1 x i64], [1 x i64] } %12, 1
  %165 = getelementptr i64, ptr %164, i64 %14
  %166 = load i64, ptr %165, align 4
  %167 = extractvalue { ptr, ptr, i64, [1 x i64], [1 x i64] } %12, 1
  %168 = getelementptr i64, ptr %167, i64 %78
  %169 = load i64, ptr %168, align 4
  %170 = extractvalue { ptr, ptr, i64, [1 x i64], [1 x i64] } %12, 1
  %171 = getelementptr i64, ptr %170, i64 %14
  store i64 %169, ptr %171, align 4
  %172 = extractvalue { ptr, ptr, i64, [1 x i64], [1 x i64] } %12, 1
  %173 = getelementptr i64, ptr %172, i64 %78
  store i64 %166, ptr %173, align 4
  %174 = extractvalue { ptr, ptr, i64, [1 x i64], [1 x i64] } %12, 1
  %175 = getelementptr i64, ptr %174, i64 %78
  %176 = load i64, ptr %175, align 4
  %177 = extractvalue { ptr, ptr, i64, [1 x i64], [1 x i64] } %12, 1
  %178 = getelementptr i64, ptr %177, i64 %0
  %179 = load i64, ptr %178, align 4
  %180 = icmp ult i64 %176, %179
  br i1 %180, label %181, label %192

181:                                              ; preds = %163
  %182 = extractvalue { ptr, ptr, i64, [1 x i64], [1 x i64] } %12, 1
  %183 = getelementptr i64, ptr %182, i64 %78
  %184 = load i64, ptr %183, align 4
  %185 = extractvalue { ptr, ptr, i64, [1 x i64], [1 x i64] } %12, 1
  %186 = getelementptr i64, ptr %185, i64 %0
  %187 = load i64, ptr %186, align 4
  %188 = extractvalue { ptr, ptr, i64, [1 x i64], [1 x i64] } %12, 1
  %189 = getelementptr i64, ptr %188, i64 %78
  store i64 %187, ptr %189, align 4
  %190 = extractvalue { ptr, ptr, i64, [1 x i64], [1 x i64] } %12, 1
  %191 = getelementptr i64, ptr %190, i64 %0
  store i64 %184, ptr %191, align 4
  br label %192

192:                                              ; preds = %181, %163
  br label %193

193:                                              ; preds = %192, %145
  br label %194

194:                                              ; preds = %193, %137
  %195 = extractvalue { ptr, ptr, i64, [1 x i64], [1 x i64] } %12, 1
  %196 = getelementptr i64, ptr %195, i64 %15
  %197 = load i64, ptr %196, align 4
  %198 = extractvalue { ptr, ptr, i64, [1 x i64], [1 x i64] } %12, 1
  %199 = getelementptr i64, ptr %198, i64 %80
  %200 = load i64, ptr %199, align 4
  %201 = icmp ult i64 %197, %200
  br i1 %201, label %202, label %75

202:                                              ; preds = %194
  %203 = extractvalue { ptr, ptr, i64, [1 x i64], [1 x i64] } %12, 1
  %204 = getelementptr i64, ptr %203, i64 %15
  %205 = load i64, ptr %204, align 4
  %206 = extractvalue { ptr, ptr, i64, [1 x i64], [1 x i64] } %12, 1
  %207 = getelementptr i64, ptr %206, i64 %80
  %208 = load i64, ptr %207, align 4
  %209 = extractvalue { ptr, ptr, i64, [1 x i64], [1 x i64] } %12, 1
  %210 = getelementptr i64, ptr %209, i64 %15
  store i64 %208, ptr %210, align 4
  %211 = extractvalue { ptr, ptr, i64, [1 x i64], [1 x i64] } %12, 1
  %212 = getelementptr i64, ptr %211, i64 %80
  store i64 %205, ptr %212, align 4
  %213 = extractvalue { ptr, ptr, i64, [1 x i64], [1 x i64] } %12, 1
  %214 = getelementptr i64, ptr %213, i64 %80
  %215 = load i64, ptr %214, align 4
  %216 = extractvalue { ptr, ptr, i64, [1 x i64], [1 x i64] } %12, 1
  %217 = getelementptr i64, ptr %216, i64 %14
  %218 = load i64, ptr %217, align 4
  %219 = icmp ult i64 %215, %218
  br i1 %219, label %220, label %74

220:                                              ; preds = %202
  %221 = extractvalue { ptr, ptr, i64, [1 x i64], [1 x i64] } %12, 1
  %222 = getelementptr i64, ptr %221, i64 %80
  %223 = load i64, ptr %222, align 4
  %224 = extractvalue { ptr, ptr, i64, [1 x i64], [1 x i64] } %12, 1
  %225 = getelementptr i64, ptr %224, i64 %14
  %226 = load i64, ptr %225, align 4
  %227 = extractvalue { ptr, ptr, i64, [1 x i64], [1 x i64] } %12, 1
  %228 = getelementptr i64, ptr %227, i64 %80
  store i64 %226, ptr %228, align 4
  %229 = extractvalue { ptr, ptr, i64, [1 x i64], [1 x i64] } %12, 1
  %230 = getelementptr i64, ptr %229, i64 %14
  store i64 %223, ptr %230, align 4
  %231 = extractvalue { ptr, ptr, i64, [1 x i64], [1 x i64] } %12, 1
  %232 = getelementptr i64, ptr %231, i64 %14
  %233 = load i64, ptr %232, align 4
  %234 = extractvalue { ptr, ptr, i64, [1 x i64], [1 x i64] } %12, 1
  %235 = getelementptr i64, ptr %234, i64 %78
  %236 = load i64, ptr %235, align 4
  %237 = icmp ult i64 %233, %236
  br i1 %237, label %238, label %268

238:                                              ; preds = %220
  %239 = extractvalue { ptr, ptr, i64, [1 x i64], [1 x i64] } %12, 1
  %240 = getelementptr i64, ptr %239, i64 %14
  %241 = load i64, ptr %240, align 4
  %242 = extractvalue { ptr, ptr, i64, [1 x i64], [1 x i64] } %12, 1
  %243 = getelementptr i64, ptr %242, i64 %78
  %244 = load i64, ptr %243, align 4
  %245 = extractvalue { ptr, ptr, i64, [1 x i64], [1 x i64] } %12, 1
  %246 = getelementptr i64, ptr %245, i64 %14
  store i64 %244, ptr %246, align 4
  %247 = extractvalue { ptr, ptr, i64, [1 x i64], [1 x i64] } %12, 1
  %248 = getelementptr i64, ptr %247, i64 %78
  store i64 %241, ptr %248, align 4
  %249 = extractvalue { ptr, ptr, i64, [1 x i64], [1 x i64] } %12, 1
  %250 = getelementptr i64, ptr %249, i64 %78
  %251 = load i64, ptr %250, align 4
  %252 = extractvalue { ptr, ptr, i64, [1 x i64], [1 x i64] } %12, 1
  %253 = getelementptr i64, ptr %252, i64 %0
  %254 = load i64, ptr %253, align 4
  %255 = icmp ult i64 %251, %254
  br i1 %255, label %256, label %267

256:                                              ; preds = %238
  %257 = extractvalue { ptr, ptr, i64, [1 x i64], [1 x i64] } %12, 1
  %258 = getelementptr i64, ptr %257, i64 %78
  %259 = load i64, ptr %258, align 4
  %260 = extractvalue { ptr, ptr, i64, [1 x i64], [1 x i64] } %12, 1
  %261 = getelementptr i64, ptr %260, i64 %0
  %262 = load i64, ptr %261, align 4
  %263 = extractvalue { ptr, ptr, i64, [1 x i64], [1 x i64] } %12, 1
  %264 = getelementptr i64, ptr %263, i64 %78
  store i64 %262, ptr %264, align 4
  %265 = extractvalue { ptr, ptr, i64, [1 x i64], [1 x i64] } %12, 1
  %266 = getelementptr i64, ptr %265, i64 %0
  store i64 %259, ptr %266, align 4
  br label %267

267:                                              ; preds = %256, %238
  br label %268

268:                                              ; preds = %267, %220
  br label %74

269:                                              ; preds = %354, %75
  %270 = phi i64 [ %355, %354 ], [ %0, %75 ]
  %271 = phi i64 [ %356, %354 ], [ %15, %75 ]
  %272 = phi i64 [ %357, %354 ], [ %14, %75 ]
  br label %273

273:                                              ; preds = %269
  %274 = phi i64 [ %270, %269 ]
  %275 = phi i64 [ %271, %269 ]
  %276 = phi i64 [ %272, %269 ]
  %277 = icmp ult i64 %274, %275
  br i1 %277, label %278, label %358

278:                                              ; preds = %273
  %279 = phi i64 [ %274, %273 ]
  %280 = phi i64 [ %275, %273 ]
  %281 = phi i64 [ %276, %273 ]
  br label %282

282:                                              ; preds = %291, %278
  %283 = phi i64 [ %293, %291 ], [ %279, %278 ]
  %284 = extractvalue { ptr, ptr, i64, [1 x i64], [1 x i64] } %12, 1
  %285 = getelementptr i64, ptr %284, i64 %283
  %286 = load i64, ptr %285, align 4
  %287 = extractvalue { ptr, ptr, i64, [1 x i64], [1 x i64] } %12, 1
  %288 = getelementptr i64, ptr %287, i64 %281
  %289 = load i64, ptr %288, align 4
  %290 = icmp ult i64 %286, %289
  br i1 %290, label %291, label %294

291:                                              ; preds = %282
  %292 = phi i64 [ %283, %282 ]
  %293 = add i64 %292, 1
  br label %282

294:                                              ; preds = %282
  %295 = extractvalue { ptr, ptr, i64, [1 x i64], [1 x i64] } %12, 1
  %296 = getelementptr i64, ptr %295, i64 %283
  %297 = load i64, ptr %296, align 4
  %298 = extractvalue { ptr, ptr, i64, [1 x i64], [1 x i64] } %12, 1
  %299 = getelementptr i64, ptr %298, i64 %281
  %300 = load i64, ptr %299, align 4
  %301 = icmp eq i64 %297, %300
  br label %302

302:                                              ; preds = %311, %294
  %303 = phi i64 [ %313, %311 ], [ %280, %294 ]
  %304 = extractvalue { ptr, ptr, i64, [1 x i64], [1 x i64] } %12, 1
  %305 = getelementptr i64, ptr %304, i64 %281
  %306 = load i64, ptr %305, align 4
  %307 = extractvalue { ptr, ptr, i64, [1 x i64], [1 x i64] } %12, 1
  %308 = getelementptr i64, ptr %307, i64 %303
  %309 = load i64, ptr %308, align 4
  %310 = icmp ult i64 %306, %309
  br i1 %310, label %311, label %314

311:                                              ; preds = %302
  %312 = phi i64 [ %303, %302 ]
  %313 = add i64 %312, -1
  br label %302

314:                                              ; preds = %302
  %315 = extractvalue { ptr, ptr, i64, [1 x i64], [1 x i64] } %12, 1
  %316 = getelementptr i64, ptr %315, i64 %303
  %317 = load i64, ptr %316, align 4
  %318 = extractvalue { ptr, ptr, i64, [1 x i64], [1 x i64] } %12, 1
  %319 = getelementptr i64, ptr %318, i64 %281
  %320 = load i64, ptr %319, align 4
  %321 = icmp eq i64 %317, %320
  %322 = icmp ult i64 %283, %303
  br i1 %322, label %323, label %350

323:                                              ; preds = %314
  %324 = extractvalue { ptr, ptr, i64, [1 x i64], [1 x i64] } %12, 1
  %325 = getelementptr i64, ptr %324, i64 %283
  %326 = load i64, ptr %325, align 4
  %327 = extractvalue { ptr, ptr, i64, [1 x i64], [1 x i64] } %12, 1
  %328 = getelementptr i64, ptr %327, i64 %303
  %329 = load i64, ptr %328, align 4
  %330 = extractvalue { ptr, ptr, i64, [1 x i64], [1 x i64] } %12, 1
  %331 = getelementptr i64, ptr %330, i64 %283
  store i64 %329, ptr %331, align 4
  %332 = extractvalue { ptr, ptr, i64, [1 x i64], [1 x i64] } %12, 1
  %333 = getelementptr i64, ptr %332, i64 %303
  store i64 %326, ptr %333, align 4
  %334 = icmp eq i64 %283, %281
  br i1 %334, label %335, label %336

335:                                              ; preds = %323
  br label %339

336:                                              ; preds = %323
  %337 = icmp eq i64 %303, %281
  %338 = select i1 %337, i64 %283, i64 %281
  br label %339

339:                                              ; preds = %335, %336
  %340 = phi i64 [ %338, %336 ], [ %303, %335 ]
  br label %341

341:                                              ; preds = %339
  %342 = and i1 %301, %321
  br i1 %342, label %343, label %346

343:                                              ; preds = %341
  %344 = add i64 %283, 1
  %345 = sub i64 %303, 1
  br label %347

346:                                              ; preds = %341
  br label %347

347:                                              ; preds = %343, %346
  %348 = phi i64 [ %283, %346 ], [ %344, %343 ]
  %349 = phi i64 [ %303, %346 ], [ %345, %343 ]
  br label %350

350:                                              ; preds = %347, %314
  %351 = phi i64 [ %348, %347 ], [ %283, %314 ]
  %352 = phi i64 [ %349, %347 ], [ %303, %314 ]
  %353 = phi i64 [ %340, %347 ], [ %281, %314 ]
  br label %354

354:                                              ; preds = %350
  %355 = phi i64 [ %351, %350 ]
  %356 = phi i64 [ %352, %350 ]
  %357 = phi i64 [ %353, %350 ]
  br label %269

358:                                              ; preds = %273
  ret i64 %276
}

define void @_sparse_hybrid_qsort_1_index(i64 %0, i64 %1, ptr %2, ptr %3, i64 %4, i64 %5, i64 %6, i64 %7) {
  %9 = insertvalue { ptr, ptr, i64, [1 x i64], [1 x i64] } undef, ptr %2, 0
  %10 = insertvalue { ptr, ptr, i64, [1 x i64], [1 x i64] } %9, ptr %3, 1
  %11 = insertvalue { ptr, ptr, i64, [1 x i64], [1 x i64] } %10, i64 %4, 2
  %12 = insertvalue { ptr, ptr, i64, [1 x i64], [1 x i64] } %11, i64 %5, 3, 0
  %13 = insertvalue { ptr, ptr, i64, [1 x i64], [1 x i64] } %12, i64 %6, 4, 0
  br label %14

14:                                               ; preds = %54, %8
  %15 = phi i64 [ %52, %54 ], [ %0, %8 ]
  %16 = phi i64 [ %53, %54 ], [ %1, %8 ]
  %17 = add i64 %15, 1
  %18 = icmp ult i64 %17, %16
  br i1 %18, label %19, label %55

19:                                               ; preds = %14
  %20 = phi i64 [ %15, %14 ]
  %21 = phi i64 [ %16, %14 ]
  %22 = sub i64 %21, %20
  %23 = icmp ule i64 %22, 30
  br i1 %23, label %24, label %25

24:                                               ; preds = %19
  call void @_sparse_sort_stable_1_index(i64 %20, i64 %21, ptr %2, ptr %3, i64 %4, i64 %5, i64 %6)
  br label %51

25:                                               ; preds = %19
  %26 = sub i64 %7, 1
  %27 = icmp ule i64 %26, 0
  br i1 %27, label %28, label %29

28:                                               ; preds = %25
  call void @_sparse_heap_sort_1_index(i64 %20, i64 %21, ptr %2, ptr %3, i64 %4, i64 %5, i64 %6)
  br label %47

29:                                               ; preds = %25
  %30 = call i64 @_sparse_partition_1_index(i64 %20, i64 %21, ptr %2, ptr %3, i64 %4, i64 %5, i64 %6)
  %31 = add i64 %30, 1
  %32 = sub i64 %30, %20
  %33 = sub i64 %21, %30
  %34 = icmp ule i64 %32, %33
  %35 = select i1 %34, i64 %31, i64 %20
  %36 = select i1 %34, i64 %21, i64 %30
  br i1 %34, label %37, label %56

37:                                               ; preds = %56, %29
  %38 = phi i64 [ %57, %56 ], [ %32, %29 ]
  %39 = phi i64 [ %58, %56 ], [ %20, %29 ]
  %40 = phi i64 [ %59, %56 ], [ %30, %29 ]
  %41 = icmp ne i64 %38, 0
  br i1 %41, label %42, label %45

42:                                               ; preds = %37
  %43 = phi i64 [ %39, %37 ]
  %44 = phi i64 [ %40, %37 ]
  call void @_sparse_hybrid_qsort_1_index(i64 %43, i64 %44, ptr %2, ptr %3, i64 %4, i64 %5, i64 %6, i64 %26)
  br label %45

45:                                               ; preds = %42, %37
  br label %46

46:                                               ; preds = %45
  br label %47

47:                                               ; preds = %28, %46
  %48 = phi i64 [ %35, %46 ], [ %20, %28 ]
  %49 = phi i64 [ %36, %46 ], [ %20, %28 ]
  br label %50

50:                                               ; preds = %47
  br label %51

51:                                               ; preds = %24, %50
  %52 = phi i64 [ %48, %50 ], [ %20, %24 ]
  %53 = phi i64 [ %49, %50 ], [ %20, %24 ]
  br label %54

54:                                               ; preds = %51
  br label %14

55:                                               ; preds = %14
  ret void

56:                                               ; preds = %29
  %57 = phi i64 [ %33, %29 ]
  %58 = phi i64 [ %31, %29 ]
  %59 = phi i64 [ %21, %29 ]
  br label %37
}

define { { ptr, ptr, i64, [1 x i64], [1 x i64] }, { [2 x i64], [1 x i64] } } @MTTKRP.A.0.main(ptr %0, ptr %1, i64 %2, i64 %3, i64 %4, ptr %5, ptr %6, i64 %7, i64 %8, i64 %9, ptr %10, ptr %11, i64 %12, i64 %13, i64 %14, ptr %15, ptr %16, i64 %17, i64 %18, i64 %19, ptr %20, ptr %21, i64 %22, i64 %23, i64 %24, ptr %25, ptr %26, i64 %27, i64 %28, i64 %29, ptr %30, ptr %31, i64 %32, i64 %33, i64 %34, { [3 x i64], [7 x i64] } %35, ptr %36, ptr %37, i64 %38, i64 %39, i64 %40, { [2 x i64], [1 x i64] } %41, ptr %42, ptr %43, i64 %44, i64 %45, i64 %46, { [2 x i64], [1 x i64] } %47) {
  %structArg = alloca { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }, align 8
  %.reloaded80 = alloca i64, align 8
  %.reloaded81 = alloca i64, align 8
  %.reloaded82 = alloca { ptr, ptr, i64, [1 x i64], [1 x i64] }, align 8
  %.reloaded83 = alloca { ptr, ptr, i64, [1 x i64], [1 x i64] }, align 8
  %.reloaded84 = alloca { ptr, ptr, i64, [1 x i64], [1 x i64] }, align 8
  %.reloaded85 = alloca { ptr, ptr, i64, [1 x i64], [1 x i64] }, align 8
  %.reloaded86 = alloca { ptr, ptr, i64, [1 x i64], [1 x i64] }, align 8
  %49 = insertvalue { ptr, ptr, i64, [1 x i64], [1 x i64] } undef, ptr %0, 0
  %50 = insertvalue { ptr, ptr, i64, [1 x i64], [1 x i64] } %49, ptr %1, 1
  %51 = insertvalue { ptr, ptr, i64, [1 x i64], [1 x i64] } %50, i64 %2, 2
  %52 = insertvalue { ptr, ptr, i64, [1 x i64], [1 x i64] } %51, i64 %3, 3, 0
  %53 = insertvalue { ptr, ptr, i64, [1 x i64], [1 x i64] } %52, i64 %4, 4, 0
  %54 = insertvalue { ptr, ptr, i64, [1 x i64], [1 x i64] } undef, ptr %5, 0
  %55 = insertvalue { ptr, ptr, i64, [1 x i64], [1 x i64] } %54, ptr %6, 1
  %56 = insertvalue { ptr, ptr, i64, [1 x i64], [1 x i64] } %55, i64 %7, 2
  %57 = insertvalue { ptr, ptr, i64, [1 x i64], [1 x i64] } %56, i64 %8, 3, 0
  %58 = insertvalue { ptr, ptr, i64, [1 x i64], [1 x i64] } %57, i64 %9, 4, 0
  %59 = insertvalue { ptr, ptr, i64, [1 x i64], [1 x i64] } undef, ptr %10, 0
  %60 = insertvalue { ptr, ptr, i64, [1 x i64], [1 x i64] } %59, ptr %11, 1
  %61 = insertvalue { ptr, ptr, i64, [1 x i64], [1 x i64] } %60, i64 %12, 2
  %62 = insertvalue { ptr, ptr, i64, [1 x i64], [1 x i64] } %61, i64 %13, 3, 0
  %63 = insertvalue { ptr, ptr, i64, [1 x i64], [1 x i64] } %62, i64 %14, 4, 0
  %64 = insertvalue { ptr, ptr, i64, [1 x i64], [1 x i64] } undef, ptr %15, 0
  %65 = insertvalue { ptr, ptr, i64, [1 x i64], [1 x i64] } %64, ptr %16, 1
  %66 = insertvalue { ptr, ptr, i64, [1 x i64], [1 x i64] } %65, i64 %17, 2
  %67 = insertvalue { ptr, ptr, i64, [1 x i64], [1 x i64] } %66, i64 %18, 3, 0
  %68 = insertvalue { ptr, ptr, i64, [1 x i64], [1 x i64] } %67, i64 %19, 4, 0
  %69 = insertvalue { ptr, ptr, i64, [1 x i64], [1 x i64] } undef, ptr %20, 0
  %70 = insertvalue { ptr, ptr, i64, [1 x i64], [1 x i64] } %69, ptr %21, 1
  %71 = insertvalue { ptr, ptr, i64, [1 x i64], [1 x i64] } %70, i64 %22, 2
  %72 = insertvalue { ptr, ptr, i64, [1 x i64], [1 x i64] } %71, i64 %23, 3, 0
  %73 = insertvalue { ptr, ptr, i64, [1 x i64], [1 x i64] } %72, i64 %24, 4, 0
  %74 = insertvalue { ptr, ptr, i64, [1 x i64], [1 x i64] } undef, ptr %25, 0
  %75 = insertvalue { ptr, ptr, i64, [1 x i64], [1 x i64] } %74, ptr %26, 1
  %76 = insertvalue { ptr, ptr, i64, [1 x i64], [1 x i64] } %75, i64 %27, 2
  %77 = insertvalue { ptr, ptr, i64, [1 x i64], [1 x i64] } %76, i64 %28, 3, 0
  %78 = insertvalue { ptr, ptr, i64, [1 x i64], [1 x i64] } %77, i64 %29, 4, 0
  %79 = insertvalue { ptr, ptr, i64, [1 x i64], [1 x i64] } undef, ptr %30, 0
  %80 = insertvalue { ptr, ptr, i64, [1 x i64], [1 x i64] } %79, ptr %31, 1
  %81 = insertvalue { ptr, ptr, i64, [1 x i64], [1 x i64] } %80, i64 %32, 2
  %82 = insertvalue { ptr, ptr, i64, [1 x i64], [1 x i64] } %81, i64 %33, 3, 0
  %83 = insertvalue { ptr, ptr, i64, [1 x i64], [1 x i64] } %82, i64 %34, 4, 0
  %84 = insertvalue { ptr, ptr, i64, [1 x i64], [1 x i64] } undef, ptr %36, 0
  %85 = insertvalue { ptr, ptr, i64, [1 x i64], [1 x i64] } %84, ptr %37, 1
  %86 = insertvalue { ptr, ptr, i64, [1 x i64], [1 x i64] } %85, i64 %38, 2
  %87 = insertvalue { ptr, ptr, i64, [1 x i64], [1 x i64] } %86, i64 %39, 3, 0
  %88 = insertvalue { ptr, ptr, i64, [1 x i64], [1 x i64] } %87, i64 %40, 4, 0
  %89 = insertvalue { ptr, ptr, i64, [1 x i64], [1 x i64] } undef, ptr %42, 0
  %90 = insertvalue { ptr, ptr, i64, [1 x i64], [1 x i64] } %89, ptr %43, 1
  %91 = insertvalue { ptr, ptr, i64, [1 x i64], [1 x i64] } %90, i64 %44, 2
  %92 = insertvalue { ptr, ptr, i64, [1 x i64], [1 x i64] } %91, i64 %45, 3, 0
  %93 = insertvalue { ptr, ptr, i64, [1 x i64], [1 x i64] } %92, i64 %46, 4, 0
  %94 = call ptr @malloc(i64 ptrtoint (ptr getelementptr (i64, ptr null, i32 16) to i64))
  %95 = insertvalue { ptr, ptr, i64, [1 x i64], [1 x i64] } undef, ptr %94, 0
  %96 = insertvalue { ptr, ptr, i64, [1 x i64], [1 x i64] } %95, ptr %94, 1
  %97 = insertvalue { ptr, ptr, i64, [1 x i64], [1 x i64] } %96, i64 0, 2
  %98 = insertvalue { ptr, ptr, i64, [1 x i64], [1 x i64] } %97, i64 16, 3, 0
  %99 = insertvalue { ptr, ptr, i64, [1 x i64], [1 x i64] } %98, i64 1, 4, 0
  %100 = call ptr @malloc(i64 ptrtoint (ptr getelementptr (i64, ptr null, i32 16) to i64))
  %101 = insertvalue { ptr, ptr, i64, [1 x i64], [1 x i64] } undef, ptr %100, 0
  %102 = insertvalue { ptr, ptr, i64, [1 x i64], [1 x i64] } %101, ptr %100, 1
  %103 = insertvalue { ptr, ptr, i64, [1 x i64], [1 x i64] } %102, i64 0, 2
  %104 = insertvalue { ptr, ptr, i64, [1 x i64], [1 x i64] } %103, i64 16, 3, 0
  %105 = insertvalue { ptr, ptr, i64, [1 x i64], [1 x i64] } %104, i64 1, 4, 0
  %106 = call ptr @malloc(i64 ptrtoint (ptr getelementptr (i64, ptr null, i32 16) to i64))
  %107 = insertvalue { ptr, ptr, i64, [1 x i64], [1 x i64] } undef, ptr %106, 0
  %108 = insertvalue { ptr, ptr, i64, [1 x i64], [1 x i64] } %107, ptr %106, 1
  %109 = insertvalue { ptr, ptr, i64, [1 x i64], [1 x i64] } %108, i64 0, 2
  %110 = insertvalue { ptr, ptr, i64, [1 x i64], [1 x i64] } %109, i64 16, 3, 0
  %111 = insertvalue { ptr, ptr, i64, [1 x i64], [1 x i64] } %110, i64 1, 4, 0
  %112 = call ptr @malloc(i64 ptrtoint (ptr getelementptr (i64, ptr null, i32 16) to i64))
  %113 = insertvalue { ptr, ptr, i64, [1 x i64], [1 x i64] } undef, ptr %112, 0
  %114 = insertvalue { ptr, ptr, i64, [1 x i64], [1 x i64] } %113, ptr %112, 1
  %115 = insertvalue { ptr, ptr, i64, [1 x i64], [1 x i64] } %114, i64 0, 2
  %116 = insertvalue { ptr, ptr, i64, [1 x i64], [1 x i64] } %115, i64 16, 3, 0
  %117 = insertvalue { ptr, ptr, i64, [1 x i64], [1 x i64] } %116, i64 1, 4, 0
  %118 = call ptr @malloc(i64 ptrtoint (ptr getelementptr (float, ptr null, i32 16) to i64))
  %119 = insertvalue { ptr, ptr, i64, [1 x i64], [1 x i64] } undef, ptr %118, 0
  %120 = insertvalue { ptr, ptr, i64, [1 x i64], [1 x i64] } %119, ptr %118, 1
  %121 = insertvalue { ptr, ptr, i64, [1 x i64], [1 x i64] } %120, i64 0, 2
  %122 = insertvalue { ptr, ptr, i64, [1 x i64], [1 x i64] } %121, i64 16, 3, 0
  %123 = insertvalue { ptr, ptr, i64, [1 x i64], [1 x i64] } %122, i64 1, 4, 0
  %124 = getelementptr i64, ptr %94, i64 0
  store i64 0, ptr %124, align 4
  %125 = getelementptr i64, ptr %106, i64 0
  store i64 0, ptr %125, align 4
  %126 = getelementptr i64, ptr %94, i64 1
  store i64 0, ptr %126, align 4
  %127 = call ptr @malloc(i64 ptrtoint (ptr getelementptr (float, ptr null, i32 32) to i64))
  %128 = call ptr @malloc(i64 ptrtoint (ptr getelementptr (i1, ptr null, i32 32) to i64))
  %129 = call ptr @malloc(i64 ptrtoint (ptr getelementptr (i64, ptr null, i32 32) to i64))
  %130 = insertvalue { ptr, ptr, i64, [1 x i64], [1 x i64] } undef, ptr %129, 0
  %131 = insertvalue { ptr, ptr, i64, [1 x i64], [1 x i64] } %130, ptr %129, 1
  %132 = insertvalue { ptr, ptr, i64, [1 x i64], [1 x i64] } %131, i64 0, 2
  %133 = insertvalue { ptr, ptr, i64, [1 x i64], [1 x i64] } %132, i64 32, 3, 0
  %134 = insertvalue { ptr, ptr, i64, [1 x i64], [1 x i64] } %133, i64 1, 4, 0
  br label %135

135:                                              ; preds = %138, %48
  %136 = phi i64 [ %140, %138 ], [ 0, %48 ]
  %137 = icmp slt i64 %136, 32
  br i1 %137, label %138, label %141

138:                                              ; preds = %135
  %139 = getelementptr float, ptr %127, i64 %136
  store float 0.000000e+00, ptr %139, align 4
  %140 = add i64 %136, 1
  br label %135

141:                                              ; preds = %135
  br label %142

142:                                              ; preds = %145, %141
  %143 = phi i64 [ %147, %145 ], [ 0, %141 ]
  %144 = icmp slt i64 %143, 32
  br i1 %144, label %145, label %148

145:                                              ; preds = %142
  %146 = getelementptr i1, ptr %128, i64 %143
  store i1 false, ptr %146, align 1
  %147 = add i64 %143, 1
  br label %142

148:                                              ; preds = %142
  %149 = extractvalue { ptr, ptr, i64, [1 x i64], [1 x i64] } %53, 1
  %150 = getelementptr i64, ptr %149, i64 0
  %151 = load i64, ptr %150, align 4
  %152 = extractvalue { ptr, ptr, i64, [1 x i64], [1 x i64] } %53, 1
  %153 = getelementptr i64, ptr %152, i64 1
  %154 = load i64, ptr %153, align 4
  br label %155

155:                                              ; preds = %289, %148
  %156 = phi i64 [ %290, %289 ], [ %151, %148 ]
  %157 = phi { ptr, ptr, i64, [1 x i64], [1 x i64] } [ %177, %289 ], [ %99, %148 ]
  %158 = phi { ptr, ptr, i64, [1 x i64], [1 x i64] } [ %178, %289 ], [ %105, %148 ]
  %159 = phi { ptr, ptr, i64, [1 x i64], [1 x i64] } [ %179, %289 ], [ %111, %148 ]
  %160 = phi { ptr, ptr, i64, [1 x i64], [1 x i64] } [ %180, %289 ], [ %117, %148 ]
  %161 = phi { ptr, ptr, i64, [1 x i64], [1 x i64] } [ %181, %289 ], [ %123, %148 ]
  %162 = phi { [3 x i64], [5 x i64] } [ %182, %289 ], [ { [3 x i64] [i64 128, i64 128, i64 32], [5 x i64] [i64 2, i64 0, i64 1, i64 0, i64 0] }, %148 ]
  %163 = icmp slt i64 %156, %154
  br i1 %163, label %164, label %291

164:                                              ; preds = %155
  %165 = extractvalue { ptr, ptr, i64, [1 x i64], [1 x i64] } %58, 1
  %166 = getelementptr i64, ptr %165, i64 %156
  %167 = load i64, ptr %166, align 4
  %168 = extractvalue { ptr, ptr, i64, [1 x i64], [1 x i64] } %63, 1
  %169 = getelementptr i64, ptr %168, i64 %156
  %170 = load i64, ptr %169, align 4
  %171 = add i64 %156, 1
  %172 = extractvalue { ptr, ptr, i64, [1 x i64], [1 x i64] } %63, 1
  %173 = getelementptr i64, ptr %172, i64 %171
  %174 = load i64, ptr %173, align 4
  br label %175

175:                                              ; preds = %287, %164
  %176 = phi i64 [ %288, %287 ], [ %170, %164 ]
  %177 = phi { ptr, ptr, i64, [1 x i64], [1 x i64] } [ %240, %287 ], [ %157, %164 ]
  %178 = phi { ptr, ptr, i64, [1 x i64], [1 x i64] } [ %241, %287 ], [ %158, %164 ]
  %179 = phi { ptr, ptr, i64, [1 x i64], [1 x i64] } [ %242, %287 ], [ %159, %164 ]
  %180 = phi { ptr, ptr, i64, [1 x i64], [1 x i64] } [ %243, %287 ], [ %160, %164 ]
  %181 = phi { ptr, ptr, i64, [1 x i64], [1 x i64] } [ %244, %287 ], [ %161, %164 ]
  %182 = phi { [3 x i64], [5 x i64] } [ %245, %287 ], [ %162, %164 ]
  %183 = icmp slt i64 %176, %174
  br i1 %183, label %184, label %289

184:                                              ; preds = %175
  %185 = extractvalue { ptr, ptr, i64, [1 x i64], [1 x i64] } %68, 1
  %186 = getelementptr i64, ptr %185, i64 %176
  %187 = load i64, ptr %186, align 4
  %188 = extractvalue { ptr, ptr, i64, [1 x i64], [1 x i64] } %73, 1
  %189 = getelementptr i64, ptr %188, i64 %176
  %190 = load i64, ptr %189, align 4
  %191 = add i64 %176, 1
  %192 = extractvalue { ptr, ptr, i64, [1 x i64], [1 x i64] } %73, 1
  %193 = getelementptr i64, ptr %192, i64 %191
  %194 = load i64, ptr %193, align 4
  br label %195

195:                                              ; preds = %233, %184
  %196 = phi i64 [ %234, %233 ], [ %190, %184 ]
  %197 = phi i64 [ %208, %233 ], [ 0, %184 ]
  %198 = icmp slt i64 %196, %194
  br i1 %198, label %199, label %235

199:                                              ; preds = %195
  %200 = extractvalue { ptr, ptr, i64, [1 x i64], [1 x i64] } %78, 1
  %201 = getelementptr i64, ptr %200, i64 %196
  %202 = load i64, ptr %201, align 4
  %203 = extractvalue { ptr, ptr, i64, [1 x i64], [1 x i64] } %83, 1
  %204 = getelementptr float, ptr %203, i64 %196
  %205 = load float, ptr %204, align 4
  br label %206

206:                                              ; preds = %230, %199
  %207 = phi i64 [ %232, %230 ], [ 0, %199 ]
  %208 = phi i64 [ %229, %230 ], [ %197, %199 ]
  %209 = icmp slt i64 %207, 32
  br i1 %209, label %210, label %233

210:                                              ; preds = %206
  %211 = mul i64 %202, 32
  %212 = add i64 %211, %207
  %213 = getelementptr float, ptr %127, i64 %207
  %214 = load float, ptr %213, align 4
  %215 = extractvalue { ptr, ptr, i64, [1 x i64], [1 x i64] } %88, 1
  %216 = getelementptr float, ptr %215, i64 %212
  %217 = load float, ptr %216, align 4
  %218 = fmul float %205, %217
  %219 = fadd float %214, %218
  %220 = getelementptr i1, ptr %128, i64 %207
  %221 = load i1, ptr %220, align 1
  %222 = icmp eq i1 %221, false
  br i1 %222, label %223, label %227

223:                                              ; preds = %210
  %224 = getelementptr i1, ptr %128, i64 %207
  store i1 true, ptr %224, align 1
  %225 = getelementptr i64, ptr %129, i64 %208
  store i64 %207, ptr %225, align 4
  %226 = add i64 %208, 1
  br label %228

227:                                              ; preds = %210
  br label %228

228:                                              ; preds = %223, %227
  %229 = phi i64 [ %208, %227 ], [ %226, %223 ]
  br label %230

230:                                              ; preds = %228
  %231 = getelementptr float, ptr %127, i64 %207
  store float %219, ptr %231, align 4
  %232 = add i64 %207, 1
  br label %206

233:                                              ; preds = %206
  %234 = add i64 %196, 1
  br label %195

235:                                              ; preds = %195
  %236 = call i64 @llvm.ctlz.i64(i64 %197, i1 false)
  %237 = sub i64 64, %236
  call void @_sparse_hybrid_qsort_1_index(i64 0, i64 %197, ptr %129, ptr %129, i64 0, i64 32, i64 1, i64 %237)
  br label %238

238:                                              ; preds = %247, %235
  %239 = phi i64 [ %286, %247 ], [ 0, %235 ]
  %240 = phi { ptr, ptr, i64, [1 x i64], [1 x i64] } [ %278, %247 ], [ %177, %235 ]
  %241 = phi { ptr, ptr, i64, [1 x i64], [1 x i64] } [ %279, %247 ], [ %178, %235 ]
  %242 = phi { ptr, ptr, i64, [1 x i64], [1 x i64] } [ %280, %247 ], [ %179, %235 ]
  %243 = phi { ptr, ptr, i64, [1 x i64], [1 x i64] } [ %281, %247 ], [ %180, %235 ]
  %244 = phi { ptr, ptr, i64, [1 x i64], [1 x i64] } [ %282, %247 ], [ %181, %235 ]
  %245 = phi { [3 x i64], [5 x i64] } [ %283, %247 ], [ %182, %235 ]
  %246 = icmp slt i64 %239, %197
  br i1 %246, label %247, label %287

247:                                              ; preds = %238
  %248 = getelementptr i64, ptr %129, i64 %239
  %249 = load i64, ptr %248, align 4
  %250 = getelementptr float, ptr %127, i64 %249
  %251 = load float, ptr %250, align 4
  %252 = extractvalue { ptr, ptr, i64, [1 x i64], [1 x i64] } %240, 0
  %253 = extractvalue { ptr, ptr, i64, [1 x i64], [1 x i64] } %240, 1
  %254 = extractvalue { ptr, ptr, i64, [1 x i64], [1 x i64] } %240, 2
  %255 = extractvalue { ptr, ptr, i64, [1 x i64], [1 x i64] } %240, 3, 0
  %256 = extractvalue { ptr, ptr, i64, [1 x i64], [1 x i64] } %240, 4, 0
  %257 = extractvalue { ptr, ptr, i64, [1 x i64], [1 x i64] } %241, 0
  %258 = extractvalue { ptr, ptr, i64, [1 x i64], [1 x i64] } %241, 1
  %259 = extractvalue { ptr, ptr, i64, [1 x i64], [1 x i64] } %241, 2
  %260 = extractvalue { ptr, ptr, i64, [1 x i64], [1 x i64] } %241, 3, 0
  %261 = extractvalue { ptr, ptr, i64, [1 x i64], [1 x i64] } %241, 4, 0
  %262 = extractvalue { ptr, ptr, i64, [1 x i64], [1 x i64] } %242, 0
  %263 = extractvalue { ptr, ptr, i64, [1 x i64], [1 x i64] } %242, 1
  %264 = extractvalue { ptr, ptr, i64, [1 x i64], [1 x i64] } %242, 2
  %265 = extractvalue { ptr, ptr, i64, [1 x i64], [1 x i64] } %242, 3, 0
  %266 = extractvalue { ptr, ptr, i64, [1 x i64], [1 x i64] } %242, 4, 0
  %267 = extractvalue { ptr, ptr, i64, [1 x i64], [1 x i64] } %243, 0
  %268 = extractvalue { ptr, ptr, i64, [1 x i64], [1 x i64] } %243, 1
  %269 = extractvalue { ptr, ptr, i64, [1 x i64], [1 x i64] } %243, 2
  %270 = extractvalue { ptr, ptr, i64, [1 x i64], [1 x i64] } %243, 3, 0
  %271 = extractvalue { ptr, ptr, i64, [1 x i64], [1 x i64] } %243, 4, 0
  %272 = extractvalue { ptr, ptr, i64, [1 x i64], [1 x i64] } %244, 0
  %273 = extractvalue { ptr, ptr, i64, [1 x i64], [1 x i64] } %244, 1
  %274 = extractvalue { ptr, ptr, i64, [1 x i64], [1 x i64] } %244, 2
  %275 = extractvalue { ptr, ptr, i64, [1 x i64], [1 x i64] } %244, 3, 0
  %276 = extractvalue { ptr, ptr, i64, [1 x i64], [1 x i64] } %244, 4, 0
  %277 = call { { ptr, ptr, i64, [1 x i64], [1 x i64] }, { ptr, ptr, i64, [1 x i64], [1 x i64] }, { ptr, ptr, i64, [1 x i64], [1 x i64] }, { ptr, ptr, i64, [1 x i64], [1 x i64] }, { ptr, ptr, i64, [1 x i64], [1 x i64] }, { [3 x i64], [5 x i64] } } @_insert_compressed_compressed_dense_128_128_32_f32_0_0(ptr %252, ptr %253, i64 %254, i64 %255, i64 %256, ptr %257, ptr %258, i64 %259, i64 %260, i64 %261, ptr %262, ptr %263, i64 %264, i64 %265, i64 %266, ptr %267, ptr %268, i64 %269, i64 %270, i64 %271, ptr %272, ptr %273, i64 %274, i64 %275, i64 %276, { [3 x i64], [5 x i64] } %245, i64 %167, i64 %187, i64 %249, float %251)
  %278 = extractvalue { { ptr, ptr, i64, [1 x i64], [1 x i64] }, { ptr, ptr, i64, [1 x i64], [1 x i64] }, { ptr, ptr, i64, [1 x i64], [1 x i64] }, { ptr, ptr, i64, [1 x i64], [1 x i64] }, { ptr, ptr, i64, [1 x i64], [1 x i64] }, { [3 x i64], [5 x i64] } } %277, 0
  %279 = extractvalue { { ptr, ptr, i64, [1 x i64], [1 x i64] }, { ptr, ptr, i64, [1 x i64], [1 x i64] }, { ptr, ptr, i64, [1 x i64], [1 x i64] }, { ptr, ptr, i64, [1 x i64], [1 x i64] }, { ptr, ptr, i64, [1 x i64], [1 x i64] }, { [3 x i64], [5 x i64] } } %277, 1
  %280 = extractvalue { { ptr, ptr, i64, [1 x i64], [1 x i64] }, { ptr, ptr, i64, [1 x i64], [1 x i64] }, { ptr, ptr, i64, [1 x i64], [1 x i64] }, { ptr, ptr, i64, [1 x i64], [1 x i64] }, { ptr, ptr, i64, [1 x i64], [1 x i64] }, { [3 x i64], [5 x i64] } } %277, 2
  %281 = extractvalue { { ptr, ptr, i64, [1 x i64], [1 x i64] }, { ptr, ptr, i64, [1 x i64], [1 x i64] }, { ptr, ptr, i64, [1 x i64], [1 x i64] }, { ptr, ptr, i64, [1 x i64], [1 x i64] }, { ptr, ptr, i64, [1 x i64], [1 x i64] }, { [3 x i64], [5 x i64] } } %277, 3
  %282 = extractvalue { { ptr, ptr, i64, [1 x i64], [1 x i64] }, { ptr, ptr, i64, [1 x i64], [1 x i64] }, { ptr, ptr, i64, [1 x i64], [1 x i64] }, { ptr, ptr, i64, [1 x i64], [1 x i64] }, { ptr, ptr, i64, [1 x i64], [1 x i64] }, { [3 x i64], [5 x i64] } } %277, 4
  %283 = extractvalue { { ptr, ptr, i64, [1 x i64], [1 x i64] }, { ptr, ptr, i64, [1 x i64], [1 x i64] }, { ptr, ptr, i64, [1 x i64], [1 x i64] }, { ptr, ptr, i64, [1 x i64], [1 x i64] }, { ptr, ptr, i64, [1 x i64], [1 x i64] }, { [3 x i64], [5 x i64] } } %277, 5
  %284 = getelementptr float, ptr %127, i64 %249
  store float 0.000000e+00, ptr %284, align 4
  %285 = getelementptr i1, ptr %128, i64 %249
  store i1 false, ptr %285, align 1
  %286 = add i64 %239, 1
  br label %238

287:                                              ; preds = %238
  %288 = add i64 %176, 1
  br label %175

289:                                              ; preds = %175
  %290 = add i64 %156, 1
  br label %155

291:                                              ; preds = %155
  call void @free(ptr %127)
  call void @free(ptr %128)
  call void @free(ptr %129)
  %292 = extractvalue { [3 x i64], [5 x i64] } %162, 1, 2
  %293 = extractvalue { ptr, ptr, i64, [1 x i64], [1 x i64] } %159, 1
  %294 = getelementptr i64, ptr %293, i64 0
  %295 = load i64, ptr %294, align 4
  br label %296

296:                                              ; preds = %309, %291
  %297 = phi i64 [ %310, %309 ], [ 1, %291 ]
  %298 = phi i64 [ %305, %309 ], [ %295, %291 ]
  %299 = icmp slt i64 %297, %292
  br i1 %299, label %300, label %311

300:                                              ; preds = %296
  %301 = extractvalue { ptr, ptr, i64, [1 x i64], [1 x i64] } %159, 1
  %302 = getelementptr i64, ptr %301, i64 %297
  %303 = load i64, ptr %302, align 4
  %304 = icmp eq i64 %303, 0
  %305 = select i1 %304, i64 %298, i64 %303
  br i1 %304, label %306, label %309

306:                                              ; preds = %300
  %307 = extractvalue { ptr, ptr, i64, [1 x i64], [1 x i64] } %159, 1
  %308 = getelementptr i64, ptr %307, i64 %297
  store i64 %298, ptr %308, align 4
  br label %309

309:                                              ; preds = %306, %300
  %310 = add i64 %297, 1
  br label %296

311:                                              ; preds = %296
  %312 = call ptr @malloc(i64 ptrtoint (ptr getelementptr (float, ptr null, i32 4096) to i64))
  %313 = insertvalue { ptr, ptr, i64, [1 x i64], [1 x i64] } undef, ptr %312, 0
  %314 = insertvalue { ptr, ptr, i64, [1 x i64], [1 x i64] } %313, ptr %312, 1
  %315 = insertvalue { ptr, ptr, i64, [1 x i64], [1 x i64] } %314, i64 0, 2
  %316 = insertvalue { ptr, ptr, i64, [1 x i64], [1 x i64] } %315, i64 4096, 3, 0
  %317 = insertvalue { ptr, ptr, i64, [1 x i64], [1 x i64] } %316, i64 1, 4, 0
  br label %318

318:                                              ; preds = %321, %311
  %319 = phi i64 [ %323, %321 ], [ 0, %311 ]
  %320 = icmp slt i64 %319, 4096
  br i1 %320, label %321, label %324

321:                                              ; preds = %318
  %322 = getelementptr float, ptr %312, i64 %319
  store float 0.000000e+00, ptr %322, align 4
  %323 = add i64 %319, 1
  br label %318

324:                                              ; preds = %318
  %325 = extractvalue { ptr, ptr, i64, [1 x i64], [1 x i64] } %157, 1
  %326 = getelementptr i64, ptr %325, i64 0
  %327 = load i64, ptr %326, align 4
  %328 = extractvalue { ptr, ptr, i64, [1 x i64], [1 x i64] } %157, 1
  %329 = getelementptr i64, ptr %328, i64 1
  %330 = load i64, ptr %329, align 4
  %omp_global_thread_num = call i32 @__kmpc_global_thread_num(ptr @1)
  store i64 %330, ptr %.reloaded80, align 4
  store i64 %327, ptr %.reloaded81, align 4
  store { ptr, ptr, i64, [1 x i64], [1 x i64] } %158, ptr %.reloaded82, align 8
  store { ptr, ptr, i64, [1 x i64], [1 x i64] } %159, ptr %.reloaded83, align 8
  store { ptr, ptr, i64, [1 x i64], [1 x i64] } %160, ptr %.reloaded84, align 8
  store { ptr, ptr, i64, [1 x i64], [1 x i64] } %161, ptr %.reloaded85, align 8
  store { ptr, ptr, i64, [1 x i64], [1 x i64] } %93, ptr %.reloaded86, align 8
  br label %omp_parallel

omp_parallel:                                     ; preds = %324
  %gep_.reloaded80 = getelementptr { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }, ptr %structArg, i32 0, i32 0
  store ptr %.reloaded80, ptr %gep_.reloaded80, align 8
  %gep_.reloaded81 = getelementptr { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }, ptr %structArg, i32 0, i32 1
  store ptr %.reloaded81, ptr %gep_.reloaded81, align 8
  %gep_.reloaded82 = getelementptr { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }, ptr %structArg, i32 0, i32 2
  store ptr %.reloaded82, ptr %gep_.reloaded82, align 8
  %gep_.reloaded83 = getelementptr { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }, ptr %structArg, i32 0, i32 3
  store ptr %.reloaded83, ptr %gep_.reloaded83, align 8
  %gep_.reloaded84 = getelementptr { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }, ptr %structArg, i32 0, i32 4
  store ptr %.reloaded84, ptr %gep_.reloaded84, align 8
  %gep_.reloaded85 = getelementptr { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }, ptr %structArg, i32 0, i32 5
  store ptr %.reloaded85, ptr %gep_.reloaded85, align 8
  %gep_.reloaded86 = getelementptr { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }, ptr %structArg, i32 0, i32 6
  store ptr %.reloaded86, ptr %gep_.reloaded86, align 8
  %gep_ = getelementptr { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }, ptr %structArg, i32 0, i32 7
  store ptr %312, ptr %gep_, align 8
  call void (ptr, i32, ptr, ...) @__kmpc_fork_call(ptr @1, i32 1, ptr @MTTKRP.A.0.main..omp_par.2, ptr %structArg)
  br label %omp.par.outlined.exit79

omp.par.outlined.exit79:                          ; preds = %omp_parallel
  br label %omp.par.exit.split

omp.par.exit.split:                               ; preds = %omp.par.outlined.exit79
  %331 = insertvalue { { ptr, ptr, i64, [1 x i64], [1 x i64] }, { [2 x i64], [1 x i64] } } undef, { ptr, ptr, i64, [1 x i64], [1 x i64] } %317, 0
  %332 = insertvalue { { ptr, ptr, i64, [1 x i64], [1 x i64] }, { [2 x i64], [1 x i64] } } %331, { [2 x i64], [1 x i64] } { [2 x i64] [i64 128, i64 32], [1 x i64] [i64 4096] }, 1
  ret { { ptr, ptr, i64, [1 x i64], [1 x i64] }, { [2 x i64], [1 x i64] } } %332
}

; Function Attrs: norecurse nounwind
define internal void @MTTKRP.A.0.main..omp_par.2(ptr noalias %tid.addr, ptr noalias %zero.addr, ptr %0) #0 {
omp.par.entry:
  %gep_.reloaded80 = getelementptr { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }, ptr %0, i32 0, i32 0
  %loadgep_.reloaded80 = load ptr, ptr %gep_.reloaded80, align 8
  %gep_.reloaded81 = getelementptr { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }, ptr %0, i32 0, i32 1
  %loadgep_.reloaded81 = load ptr, ptr %gep_.reloaded81, align 8
  %gep_.reloaded82 = getelementptr { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }, ptr %0, i32 0, i32 2
  %loadgep_.reloaded82 = load ptr, ptr %gep_.reloaded82, align 8
  %gep_.reloaded83 = getelementptr { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }, ptr %0, i32 0, i32 3
  %loadgep_.reloaded83 = load ptr, ptr %gep_.reloaded83, align 8
  %gep_.reloaded84 = getelementptr { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }, ptr %0, i32 0, i32 4
  %loadgep_.reloaded84 = load ptr, ptr %gep_.reloaded84, align 8
  %gep_.reloaded85 = getelementptr { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }, ptr %0, i32 0, i32 5
  %loadgep_.reloaded85 = load ptr, ptr %gep_.reloaded85, align 8
  %gep_.reloaded86 = getelementptr { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }, ptr %0, i32 0, i32 6
  %loadgep_.reloaded86 = load ptr, ptr %gep_.reloaded86, align 8
  %gep_ = getelementptr { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }, ptr %0, i32 0, i32 7
  %loadgep_ = load ptr, ptr %gep_, align 8
  %structArg87 = alloca { ptr, ptr, ptr, ptr, ptr, ptr, ptr }, align 8
  %.reloaded67 = alloca i64, align 8
  %.reloaded68 = alloca i64, align 8
  %.reloaded69 = alloca { ptr, ptr, i64, [1 x i64], [1 x i64] }, align 8
  %.reloaded70 = alloca i64, align 8
  %.reloaded71 = alloca { ptr, ptr, i64, [1 x i64], [1 x i64] }, align 8
  %.reloaded72 = alloca { ptr, ptr, i64, [1 x i64], [1 x i64] }, align 8
  %tid.addr.local = alloca i32, align 4
  %1 = load i32, ptr %tid.addr, align 4
  store i32 %1, ptr %tid.addr.local, align 4
  %tid = load i32, ptr %tid.addr.local, align 4
  %2 = load i64, ptr %loadgep_.reloaded80, align 4
  %3 = load i64, ptr %loadgep_.reloaded81, align 4
  %4 = load { ptr, ptr, i64, [1 x i64], [1 x i64] }, ptr %loadgep_.reloaded82, align 8
  %5 = load { ptr, ptr, i64, [1 x i64], [1 x i64] }, ptr %loadgep_.reloaded83, align 8
  %6 = load { ptr, ptr, i64, [1 x i64], [1 x i64] }, ptr %loadgep_.reloaded84, align 8
  %7 = load { ptr, ptr, i64, [1 x i64], [1 x i64] }, ptr %loadgep_.reloaded85, align 8
  %8 = load { ptr, ptr, i64, [1 x i64], [1 x i64] }, ptr %loadgep_.reloaded86, align 8
  %p.lastiter73 = alloca i32, align 4
  %p.lowerbound74 = alloca i64, align 8
  %p.upperbound75 = alloca i64, align 8
  %p.stride76 = alloca i64, align 8
  br label %omp.par.region

omp.par.region:                                   ; preds = %omp.par.entry
  br label %omp.par.region1

omp.par.region1:                                  ; preds = %omp.par.region
  %9 = select i1 false, i64 %2, i64 %3
  %10 = select i1 false, i64 %3, i64 %2
  %11 = sub nsw i64 %10, %9
  %12 = icmp sle i64 %10, %9
  %13 = sub i64 %11, 1
  %14 = udiv i64 %13, 1
  %15 = add i64 %14, 1
  %16 = icmp ule i64 %11, 1
  %17 = select i1 %16, i64 1, i64 %15
  %omp_loop.tripcount = select i1 %12, i64 0, i64 %17
  br label %omp_loop.preheader

omp_loop.preheader:                               ; preds = %omp.par.region1
  store i64 0, ptr %p.lowerbound74, align 4
  %18 = sub i64 %omp_loop.tripcount, 1
  store i64 %18, ptr %p.upperbound75, align 4
  store i64 1, ptr %p.stride76, align 4
  %omp_global_thread_num77 = call i32 @__kmpc_global_thread_num(ptr @1)
  call void @__kmpc_for_static_init_8u(ptr @1, i32 %omp_global_thread_num77, i32 34, ptr %p.lastiter73, ptr %p.lowerbound74, ptr %p.upperbound75, ptr %p.stride76, i64 1, i64 0)
  %19 = load i64, ptr %p.lowerbound74, align 4
  %20 = load i64, ptr %p.upperbound75, align 4
  %21 = sub i64 %20, %19
  %22 = add i64 %21, 1
  br label %omp_loop.header

omp_loop.header:                                  ; preds = %omp_loop.inc, %omp_loop.preheader
  %omp_loop.iv = phi i64 [ 0, %omp_loop.preheader ], [ %omp_loop.next, %omp_loop.inc ]
  br label %omp_loop.cond

omp_loop.cond:                                    ; preds = %omp_loop.header
  %omp_loop.cmp = icmp ult i64 %omp_loop.iv, %22
  br i1 %omp_loop.cmp, label %omp_loop.body, label %omp_loop.exit

omp_loop.exit:                                    ; preds = %omp_loop.cond
  call void @__kmpc_for_static_fini(ptr @1, i32 %omp_global_thread_num77)
  %omp_global_thread_num78 = call i32 @__kmpc_global_thread_num(ptr @1)
  call void @__kmpc_barrier(ptr @2, i32 %omp_global_thread_num78)
  br label %omp_loop.after

omp_loop.after:                                   ; preds = %omp_loop.exit
  br label %omp.region.cont

omp.region.cont:                                  ; preds = %omp_loop.after
  br label %omp.par.pre_finalize

omp.par.pre_finalize:                             ; preds = %omp.region.cont
  br label %omp.par.outlined.exit79.exitStub

omp_loop.body:                                    ; preds = %omp_loop.cond
  %23 = add i64 %omp_loop.iv, %19
  %24 = mul i64 %23, 1
  %25 = add i64 %24, %3
  br label %omp.wsloop.region

omp.wsloop.region:                                ; preds = %omp_loop.body
  %26 = extractvalue { ptr, ptr, i64, [1 x i64], [1 x i64] } %4, 1
  %27 = getelementptr i64, ptr %26, i64 %25
  %28 = load i64, ptr %27, align 4
  %29 = extractvalue { ptr, ptr, i64, [1 x i64], [1 x i64] } %5, 1
  %30 = getelementptr i64, ptr %29, i64 %25
  %31 = load i64, ptr %30, align 4
  %32 = add i64 %25, 1
  %33 = extractvalue { ptr, ptr, i64, [1 x i64], [1 x i64] } %5, 1
  %34 = getelementptr i64, ptr %33, i64 %32
  %35 = load i64, ptr %34, align 4
  %omp_global_thread_num3 = call i32 @__kmpc_global_thread_num(ptr @1)
  store i64 %35, ptr %.reloaded67, align 4
  store i64 %31, ptr %.reloaded68, align 4
  store { ptr, ptr, i64, [1 x i64], [1 x i64] } %6, ptr %.reloaded69, align 8
  store i64 %28, ptr %.reloaded70, align 4
  store { ptr, ptr, i64, [1 x i64], [1 x i64] } %7, ptr %.reloaded71, align 8
  store { ptr, ptr, i64, [1 x i64], [1 x i64] } %8, ptr %.reloaded72, align 8
  br label %omp_parallel

omp_parallel:                                     ; preds = %omp.wsloop.region
  %gep_.reloaded67 = getelementptr { ptr, ptr, ptr, ptr, ptr, ptr, ptr }, ptr %structArg87, i32 0, i32 0
  store ptr %.reloaded67, ptr %gep_.reloaded67, align 8
  %gep_.reloaded68 = getelementptr { ptr, ptr, ptr, ptr, ptr, ptr, ptr }, ptr %structArg87, i32 0, i32 1
  store ptr %.reloaded68, ptr %gep_.reloaded68, align 8
  %gep_.reloaded69 = getelementptr { ptr, ptr, ptr, ptr, ptr, ptr, ptr }, ptr %structArg87, i32 0, i32 2
  store ptr %.reloaded69, ptr %gep_.reloaded69, align 8
  %gep_.reloaded70 = getelementptr { ptr, ptr, ptr, ptr, ptr, ptr, ptr }, ptr %structArg87, i32 0, i32 3
  store ptr %.reloaded70, ptr %gep_.reloaded70, align 8
  %gep_.reloaded71 = getelementptr { ptr, ptr, ptr, ptr, ptr, ptr, ptr }, ptr %structArg87, i32 0, i32 4
  store ptr %.reloaded71, ptr %gep_.reloaded71, align 8
  %gep_.reloaded72 = getelementptr { ptr, ptr, ptr, ptr, ptr, ptr, ptr }, ptr %structArg87, i32 0, i32 5
  store ptr %.reloaded72, ptr %gep_.reloaded72, align 8
  %gep_88 = getelementptr { ptr, ptr, ptr, ptr, ptr, ptr, ptr }, ptr %structArg87, i32 0, i32 6
  store ptr %loadgep_, ptr %gep_88, align 8
  call void (ptr, i32, ptr, ...) @__kmpc_fork_call(ptr @1, i32 1, ptr @MTTKRP.A.0.main..omp_par.1, ptr %structArg87)
  br label %omp.par.outlined.exit66

omp.par.outlined.exit66:                          ; preds = %omp_parallel
  br label %omp.par.exit9.split

omp.par.exit9.split:                              ; preds = %omp.par.outlined.exit66
  br label %omp.region.cont2

omp.region.cont2:                                 ; preds = %omp.par.exit9.split
  br label %omp_loop.inc

omp_loop.inc:                                     ; preds = %omp.region.cont2
  %omp_loop.next = add nuw i64 %omp_loop.iv, 1
  br label %omp_loop.header

omp.par.outlined.exit79.exitStub:                 ; preds = %omp.par.pre_finalize
  ret void
}

; Function Attrs: norecurse nounwind
define internal void @MTTKRP.A.0.main..omp_par.1(ptr noalias %tid.addr4, ptr noalias %zero.addr5, ptr %0) #0 {
omp.par.entry6:
  %gep_.reloaded67 = getelementptr { ptr, ptr, ptr, ptr, ptr, ptr, ptr }, ptr %0, i32 0, i32 0
  %loadgep_.reloaded67 = load ptr, ptr %gep_.reloaded67, align 8
  %gep_.reloaded68 = getelementptr { ptr, ptr, ptr, ptr, ptr, ptr, ptr }, ptr %0, i32 0, i32 1
  %loadgep_.reloaded68 = load ptr, ptr %gep_.reloaded68, align 8
  %gep_.reloaded69 = getelementptr { ptr, ptr, ptr, ptr, ptr, ptr, ptr }, ptr %0, i32 0, i32 2
  %loadgep_.reloaded69 = load ptr, ptr %gep_.reloaded69, align 8
  %gep_.reloaded70 = getelementptr { ptr, ptr, ptr, ptr, ptr, ptr, ptr }, ptr %0, i32 0, i32 3
  %loadgep_.reloaded70 = load ptr, ptr %gep_.reloaded70, align 8
  %gep_.reloaded71 = getelementptr { ptr, ptr, ptr, ptr, ptr, ptr, ptr }, ptr %0, i32 0, i32 4
  %loadgep_.reloaded71 = load ptr, ptr %gep_.reloaded71, align 8
  %gep_.reloaded72 = getelementptr { ptr, ptr, ptr, ptr, ptr, ptr, ptr }, ptr %0, i32 0, i32 5
  %loadgep_.reloaded72 = load ptr, ptr %gep_.reloaded72, align 8
  %gep_ = getelementptr { ptr, ptr, ptr, ptr, ptr, ptr, ptr }, ptr %0, i32 0, i32 6
  %loadgep_ = load ptr, ptr %gep_, align 8
  %structArg = alloca { ptr, ptr, ptr, ptr, ptr, ptr }, align 8
  %.reloaded = alloca i64, align 8
  %.reloaded56 = alloca i64, align 8
  %.reloaded57 = alloca i64, align 8
  %.reloaded58 = alloca { ptr, ptr, i64, [1 x i64], [1 x i64] }, align 8
  %.reloaded59 = alloca { ptr, ptr, i64, [1 x i64], [1 x i64] }, align 8
  %tid.addr.local10 = alloca i32, align 4
  %1 = load i32, ptr %tid.addr4, align 4
  store i32 %1, ptr %tid.addr.local10, align 4
  %tid11 = load i32, ptr %tid.addr.local10, align 4
  %2 = load i64, ptr %loadgep_.reloaded67, align 4
  %3 = load i64, ptr %loadgep_.reloaded68, align 4
  %4 = load { ptr, ptr, i64, [1 x i64], [1 x i64] }, ptr %loadgep_.reloaded69, align 8
  %5 = load i64, ptr %loadgep_.reloaded70, align 4
  %6 = load { ptr, ptr, i64, [1 x i64], [1 x i64] }, ptr %loadgep_.reloaded71, align 8
  %7 = load { ptr, ptr, i64, [1 x i64], [1 x i64] }, ptr %loadgep_.reloaded72, align 8
  %p.lastiter60 = alloca i32, align 4
  %p.lowerbound61 = alloca i64, align 8
  %p.upperbound62 = alloca i64, align 8
  %p.stride63 = alloca i64, align 8
  br label %omp.par.region7

omp.par.region7:                                  ; preds = %omp.par.entry6
  br label %omp.par.region15

omp.par.region15:                                 ; preds = %omp.par.region7
  %8 = select i1 false, i64 %2, i64 %3
  %9 = select i1 false, i64 %3, i64 %2
  %10 = sub nsw i64 %9, %8
  %11 = icmp sle i64 %9, %8
  %12 = sub i64 %10, 1
  %13 = udiv i64 %12, 1
  %14 = add i64 %13, 1
  %15 = icmp ule i64 %10, 1
  %16 = select i1 %15, i64 1, i64 %14
  %omp_loop.tripcount16 = select i1 %11, i64 0, i64 %16
  br label %omp_loop.preheader17

omp_loop.preheader17:                             ; preds = %omp.par.region15
  store i64 0, ptr %p.lowerbound61, align 4
  %17 = sub i64 %omp_loop.tripcount16, 1
  store i64 %17, ptr %p.upperbound62, align 4
  store i64 1, ptr %p.stride63, align 4
  %omp_global_thread_num64 = call i32 @__kmpc_global_thread_num(ptr @1)
  call void @__kmpc_for_static_init_8u(ptr @1, i32 %omp_global_thread_num64, i32 34, ptr %p.lastiter60, ptr %p.lowerbound61, ptr %p.upperbound62, ptr %p.stride63, i64 1, i64 0)
  %18 = load i64, ptr %p.lowerbound61, align 4
  %19 = load i64, ptr %p.upperbound62, align 4
  %20 = sub i64 %19, %18
  %21 = add i64 %20, 1
  br label %omp_loop.header18

omp_loop.header18:                                ; preds = %omp_loop.inc21, %omp_loop.preheader17
  %omp_loop.iv24 = phi i64 [ 0, %omp_loop.preheader17 ], [ %omp_loop.next26, %omp_loop.inc21 ]
  br label %omp_loop.cond19

omp_loop.cond19:                                  ; preds = %omp_loop.header18
  %omp_loop.cmp25 = icmp ult i64 %omp_loop.iv24, %21
  br i1 %omp_loop.cmp25, label %omp_loop.body20, label %omp_loop.exit22

omp_loop.exit22:                                  ; preds = %omp_loop.cond19
  call void @__kmpc_for_static_fini(ptr @1, i32 %omp_global_thread_num64)
  %omp_global_thread_num65 = call i32 @__kmpc_global_thread_num(ptr @1)
  call void @__kmpc_barrier(ptr @2, i32 %omp_global_thread_num65)
  br label %omp_loop.after23

omp_loop.after23:                                 ; preds = %omp_loop.exit22
  br label %omp.region.cont14

omp.region.cont14:                                ; preds = %omp_loop.after23
  br label %omp.par.pre_finalize8

omp.par.pre_finalize8:                            ; preds = %omp.region.cont14
  br label %omp.par.outlined.exit66.exitStub

omp_loop.body20:                                  ; preds = %omp_loop.cond19
  %22 = add i64 %omp_loop.iv24, %18
  %23 = mul i64 %22, 1
  %24 = add i64 %23, %3
  br label %omp.wsloop.region28

omp.wsloop.region28:                              ; preds = %omp_loop.body20
  %25 = extractvalue { ptr, ptr, i64, [1 x i64], [1 x i64] } %4, 1
  %26 = getelementptr i64, ptr %25, i64 %24
  %27 = load i64, ptr %26, align 4
  %omp_global_thread_num29 = call i32 @__kmpc_global_thread_num(ptr @1)
  store i64 %24, ptr %.reloaded, align 4
  store i64 %27, ptr %.reloaded56, align 4
  store i64 %5, ptr %.reloaded57, align 4
  store { ptr, ptr, i64, [1 x i64], [1 x i64] } %6, ptr %.reloaded58, align 8
  store { ptr, ptr, i64, [1 x i64], [1 x i64] } %7, ptr %.reloaded59, align 8
  br label %omp_parallel

omp_parallel:                                     ; preds = %omp.wsloop.region28
  %gep_.reloaded = getelementptr { ptr, ptr, ptr, ptr, ptr, ptr }, ptr %structArg, i32 0, i32 0
  store ptr %.reloaded, ptr %gep_.reloaded, align 8
  %gep_.reloaded56 = getelementptr { ptr, ptr, ptr, ptr, ptr, ptr }, ptr %structArg, i32 0, i32 1
  store ptr %.reloaded56, ptr %gep_.reloaded56, align 8
  %gep_.reloaded57 = getelementptr { ptr, ptr, ptr, ptr, ptr, ptr }, ptr %structArg, i32 0, i32 2
  store ptr %.reloaded57, ptr %gep_.reloaded57, align 8
  %gep_.reloaded58 = getelementptr { ptr, ptr, ptr, ptr, ptr, ptr }, ptr %structArg, i32 0, i32 3
  store ptr %.reloaded58, ptr %gep_.reloaded58, align 8
  %gep_.reloaded59 = getelementptr { ptr, ptr, ptr, ptr, ptr, ptr }, ptr %structArg, i32 0, i32 4
  store ptr %.reloaded59, ptr %gep_.reloaded59, align 8
  %gep_1 = getelementptr { ptr, ptr, ptr, ptr, ptr, ptr }, ptr %structArg, i32 0, i32 5
  store ptr %loadgep_, ptr %gep_1, align 8
  call void (ptr, i32, ptr, ...) @__kmpc_fork_call(ptr @1, i32 1, ptr @MTTKRP.A.0.main..omp_par, ptr %structArg)
  br label %omp.par.outlined.exit

omp.par.outlined.exit:                            ; preds = %omp_parallel
  br label %omp.par.exit35.split

omp.par.exit35.split:                             ; preds = %omp.par.outlined.exit
  br label %omp.region.cont27

omp.region.cont27:                                ; preds = %omp.par.exit35.split
  br label %omp_loop.inc21

omp_loop.inc21:                                   ; preds = %omp.region.cont27
  %omp_loop.next26 = add nuw i64 %omp_loop.iv24, 1
  br label %omp_loop.header18

omp.par.outlined.exit66.exitStub:                 ; preds = %omp.par.pre_finalize8
  ret void
}

; Function Attrs: norecurse nounwind
define internal void @MTTKRP.A.0.main..omp_par(ptr noalias %tid.addr30, ptr noalias %zero.addr31, ptr %0) #0 {
omp.par.entry32:
  %gep_.reloaded = getelementptr { ptr, ptr, ptr, ptr, ptr, ptr }, ptr %0, i32 0, i32 0
  %loadgep_.reloaded = load ptr, ptr %gep_.reloaded, align 8
  %gep_.reloaded56 = getelementptr { ptr, ptr, ptr, ptr, ptr, ptr }, ptr %0, i32 0, i32 1
  %loadgep_.reloaded56 = load ptr, ptr %gep_.reloaded56, align 8
  %gep_.reloaded57 = getelementptr { ptr, ptr, ptr, ptr, ptr, ptr }, ptr %0, i32 0, i32 2
  %loadgep_.reloaded57 = load ptr, ptr %gep_.reloaded57, align 8
  %gep_.reloaded58 = getelementptr { ptr, ptr, ptr, ptr, ptr, ptr }, ptr %0, i32 0, i32 3
  %loadgep_.reloaded58 = load ptr, ptr %gep_.reloaded58, align 8
  %gep_.reloaded59 = getelementptr { ptr, ptr, ptr, ptr, ptr, ptr }, ptr %0, i32 0, i32 4
  %loadgep_.reloaded59 = load ptr, ptr %gep_.reloaded59, align 8
  %gep_ = getelementptr { ptr, ptr, ptr, ptr, ptr, ptr }, ptr %0, i32 0, i32 5
  %loadgep_ = load ptr, ptr %gep_, align 8
  %tid.addr.local36 = alloca i32, align 4
  %1 = load i32, ptr %tid.addr30, align 4
  store i32 %1, ptr %tid.addr.local36, align 4
  %tid37 = load i32, ptr %tid.addr.local36, align 4
  %2 = load i64, ptr %loadgep_.reloaded, align 4
  %3 = load i64, ptr %loadgep_.reloaded56, align 4
  %4 = load i64, ptr %loadgep_.reloaded57, align 4
  %5 = load { ptr, ptr, i64, [1 x i64], [1 x i64] }, ptr %loadgep_.reloaded58, align 8
  %6 = load { ptr, ptr, i64, [1 x i64], [1 x i64] }, ptr %loadgep_.reloaded59, align 8
  %p.lastiter = alloca i32, align 4
  %p.lowerbound = alloca i64, align 8
  %p.upperbound = alloca i64, align 8
  %p.stride = alloca i64, align 8
  br label %omp.par.region33

omp.par.region33:                                 ; preds = %omp.par.entry32
  br label %omp.par.region41

omp.par.region41:                                 ; preds = %omp.par.region33
  br label %omp_loop.preheader42

omp_loop.preheader42:                             ; preds = %omp.par.region41
  store i64 0, ptr %p.lowerbound, align 4
  store i64 31, ptr %p.upperbound, align 4
  store i64 1, ptr %p.stride, align 4
  %omp_global_thread_num54 = call i32 @__kmpc_global_thread_num(ptr @1)
  call void @__kmpc_for_static_init_8u(ptr @1, i32 %omp_global_thread_num54, i32 34, ptr %p.lastiter, ptr %p.lowerbound, ptr %p.upperbound, ptr %p.stride, i64 1, i64 0)
  %7 = load i64, ptr %p.lowerbound, align 4
  %8 = load i64, ptr %p.upperbound, align 4
  %9 = sub i64 %8, %7
  %10 = add i64 %9, 1
  br label %omp_loop.header43

omp_loop.header43:                                ; preds = %omp_loop.inc46, %omp_loop.preheader42
  %omp_loop.iv49 = phi i64 [ 0, %omp_loop.preheader42 ], [ %omp_loop.next51, %omp_loop.inc46 ]
  br label %omp_loop.cond44

omp_loop.cond44:                                  ; preds = %omp_loop.header43
  %omp_loop.cmp50 = icmp ult i64 %omp_loop.iv49, %10
  br i1 %omp_loop.cmp50, label %omp_loop.body45, label %omp_loop.exit47

omp_loop.exit47:                                  ; preds = %omp_loop.cond44
  call void @__kmpc_for_static_fini(ptr @1, i32 %omp_global_thread_num54)
  %omp_global_thread_num55 = call i32 @__kmpc_global_thread_num(ptr @1)
  call void @__kmpc_barrier(ptr @2, i32 %omp_global_thread_num55)
  br label %omp_loop.after48

omp_loop.after48:                                 ; preds = %omp_loop.exit47
  br label %omp.region.cont40

omp.region.cont40:                                ; preds = %omp_loop.after48
  br label %omp.par.pre_finalize34

omp.par.pre_finalize34:                           ; preds = %omp.region.cont40
  br label %omp.par.outlined.exit.exitStub

omp_loop.body45:                                  ; preds = %omp_loop.cond44
  %11 = add i64 %omp_loop.iv49, %7
  %12 = mul i64 %11, 1
  %13 = add i64 %12, 0
  br label %omp.wsloop.region53

omp.wsloop.region53:                              ; preds = %omp_loop.body45
  %14 = mul i64 %2, 32
  %15 = add i64 %14, %13
  %16 = mul i64 %3, 32
  %17 = add i64 %16, %13
  %18 = mul i64 %4, 32
  %19 = add i64 %18, %13
  %20 = getelementptr float, ptr %loadgep_, i64 %19
  %21 = load float, ptr %20, align 4
  %22 = extractvalue { ptr, ptr, i64, [1 x i64], [1 x i64] } %5, 1
  %23 = getelementptr float, ptr %22, i64 %15
  %24 = load float, ptr %23, align 4
  %25 = extractvalue { ptr, ptr, i64, [1 x i64], [1 x i64] } %6, 1
  %26 = getelementptr float, ptr %25, i64 %17
  %27 = load float, ptr %26, align 4
  %28 = fmul float %24, %27
  %29 = fadd float %21, %28
  %30 = getelementptr float, ptr %loadgep_, i64 %19
  store float %29, ptr %30, align 4
  br label %omp.region.cont52

omp.region.cont52:                                ; preds = %omp.wsloop.region53
  br label %omp_loop.inc46

omp_loop.inc46:                                   ; preds = %omp.region.cont52
  %omp_loop.next51 = add nuw i64 %omp_loop.iv49, 1
  br label %omp_loop.header43

omp.par.outlined.exit.exitStub:                   ; preds = %omp.par.pre_finalize34
  ret void
}

define void @_mlir_ciface_MTTKRP.A.0.main(ptr %0, ptr %1, ptr %2, ptr %3, ptr %4, ptr %5, ptr %6, ptr %7, { [3 x i64], [7 x i64] } %8, ptr %9, { [2 x i64], [1 x i64] } %10, ptr %11, { [2 x i64], [1 x i64] } %12) {
  %14 = load { ptr, ptr, i64, [1 x i64], [1 x i64] }, ptr %1, align 8
  %15 = extractvalue { ptr, ptr, i64, [1 x i64], [1 x i64] } %14, 0
  %16 = extractvalue { ptr, ptr, i64, [1 x i64], [1 x i64] } %14, 1
  %17 = extractvalue { ptr, ptr, i64, [1 x i64], [1 x i64] } %14, 2
  %18 = extractvalue { ptr, ptr, i64, [1 x i64], [1 x i64] } %14, 3, 0
  %19 = extractvalue { ptr, ptr, i64, [1 x i64], [1 x i64] } %14, 4, 0
  %20 = load { ptr, ptr, i64, [1 x i64], [1 x i64] }, ptr %2, align 8
  %21 = extractvalue { ptr, ptr, i64, [1 x i64], [1 x i64] } %20, 0
  %22 = extractvalue { ptr, ptr, i64, [1 x i64], [1 x i64] } %20, 1
  %23 = extractvalue { ptr, ptr, i64, [1 x i64], [1 x i64] } %20, 2
  %24 = extractvalue { ptr, ptr, i64, [1 x i64], [1 x i64] } %20, 3, 0
  %25 = extractvalue { ptr, ptr, i64, [1 x i64], [1 x i64] } %20, 4, 0
  %26 = load { ptr, ptr, i64, [1 x i64], [1 x i64] }, ptr %3, align 8
  %27 = extractvalue { ptr, ptr, i64, [1 x i64], [1 x i64] } %26, 0
  %28 = extractvalue { ptr, ptr, i64, [1 x i64], [1 x i64] } %26, 1
  %29 = extractvalue { ptr, ptr, i64, [1 x i64], [1 x i64] } %26, 2
  %30 = extractvalue { ptr, ptr, i64, [1 x i64], [1 x i64] } %26, 3, 0
  %31 = extractvalue { ptr, ptr, i64, [1 x i64], [1 x i64] } %26, 4, 0
  %32 = load { ptr, ptr, i64, [1 x i64], [1 x i64] }, ptr %4, align 8
  %33 = extractvalue { ptr, ptr, i64, [1 x i64], [1 x i64] } %32, 0
  %34 = extractvalue { ptr, ptr, i64, [1 x i64], [1 x i64] } %32, 1
  %35 = extractvalue { ptr, ptr, i64, [1 x i64], [1 x i64] } %32, 2
  %36 = extractvalue { ptr, ptr, i64, [1 x i64], [1 x i64] } %32, 3, 0
  %37 = extractvalue { ptr, ptr, i64, [1 x i64], [1 x i64] } %32, 4, 0
  %38 = load { ptr, ptr, i64, [1 x i64], [1 x i64] }, ptr %5, align 8
  %39 = extractvalue { ptr, ptr, i64, [1 x i64], [1 x i64] } %38, 0
  %40 = extractvalue { ptr, ptr, i64, [1 x i64], [1 x i64] } %38, 1
  %41 = extractvalue { ptr, ptr, i64, [1 x i64], [1 x i64] } %38, 2
  %42 = extractvalue { ptr, ptr, i64, [1 x i64], [1 x i64] } %38, 3, 0
  %43 = extractvalue { ptr, ptr, i64, [1 x i64], [1 x i64] } %38, 4, 0
  %44 = load { ptr, ptr, i64, [1 x i64], [1 x i64] }, ptr %6, align 8
  %45 = extractvalue { ptr, ptr, i64, [1 x i64], [1 x i64] } %44, 0
  %46 = extractvalue { ptr, ptr, i64, [1 x i64], [1 x i64] } %44, 1
  %47 = extractvalue { ptr, ptr, i64, [1 x i64], [1 x i64] } %44, 2
  %48 = extractvalue { ptr, ptr, i64, [1 x i64], [1 x i64] } %44, 3, 0
  %49 = extractvalue { ptr, ptr, i64, [1 x i64], [1 x i64] } %44, 4, 0
  %50 = load { ptr, ptr, i64, [1 x i64], [1 x i64] }, ptr %7, align 8
  %51 = extractvalue { ptr, ptr, i64, [1 x i64], [1 x i64] } %50, 0
  %52 = extractvalue { ptr, ptr, i64, [1 x i64], [1 x i64] } %50, 1
  %53 = extractvalue { ptr, ptr, i64, [1 x i64], [1 x i64] } %50, 2
  %54 = extractvalue { ptr, ptr, i64, [1 x i64], [1 x i64] } %50, 3, 0
  %55 = extractvalue { ptr, ptr, i64, [1 x i64], [1 x i64] } %50, 4, 0
  %56 = load { ptr, ptr, i64, [1 x i64], [1 x i64] }, ptr %9, align 8
  %57 = extractvalue { ptr, ptr, i64, [1 x i64], [1 x i64] } %56, 0
  %58 = extractvalue { ptr, ptr, i64, [1 x i64], [1 x i64] } %56, 1
  %59 = extractvalue { ptr, ptr, i64, [1 x i64], [1 x i64] } %56, 2
  %60 = extractvalue { ptr, ptr, i64, [1 x i64], [1 x i64] } %56, 3, 0
  %61 = extractvalue { ptr, ptr, i64, [1 x i64], [1 x i64] } %56, 4, 0
  %62 = load { ptr, ptr, i64, [1 x i64], [1 x i64] }, ptr %11, align 8
  %63 = extractvalue { ptr, ptr, i64, [1 x i64], [1 x i64] } %62, 0
  %64 = extractvalue { ptr, ptr, i64, [1 x i64], [1 x i64] } %62, 1
  %65 = extractvalue { ptr, ptr, i64, [1 x i64], [1 x i64] } %62, 2
  %66 = extractvalue { ptr, ptr, i64, [1 x i64], [1 x i64] } %62, 3, 0
  %67 = extractvalue { ptr, ptr, i64, [1 x i64], [1 x i64] } %62, 4, 0
  %68 = call { { ptr, ptr, i64, [1 x i64], [1 x i64] }, { [2 x i64], [1 x i64] } } @MTTKRP.A.0.main(ptr %15, ptr %16, i64 %17, i64 %18, i64 %19, ptr %21, ptr %22, i64 %23, i64 %24, i64 %25, ptr %27, ptr %28, i64 %29, i64 %30, i64 %31, ptr %33, ptr %34, i64 %35, i64 %36, i64 %37, ptr %39, ptr %40, i64 %41, i64 %42, i64 %43, ptr %45, ptr %46, i64 %47, i64 %48, i64 %49, ptr %51, ptr %52, i64 %53, i64 %54, i64 %55, { [3 x i64], [7 x i64] } %8, ptr %57, ptr %58, i64 %59, i64 %60, i64 %61, { [2 x i64], [1 x i64] } %10, ptr %63, ptr %64, i64 %65, i64 %66, i64 %67, { [2 x i64], [1 x i64] } %12)
  store { { ptr, ptr, i64, [1 x i64], [1 x i64] }, { [2 x i64], [1 x i64] } } %68, ptr %0, align 8
  ret void
}

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #1

; Function Attrs: nounwind
declare i32 @__kmpc_global_thread_num(ptr) #2

; Function Attrs: nounwind
declare void @__kmpc_for_static_init_8u(ptr, i32, i32, ptr, ptr, ptr, ptr, i64, i64) #2

; Function Attrs: nounwind
declare void @__kmpc_for_static_fini(ptr, i32) #2

; Function Attrs: convergent nounwind
declare void @__kmpc_barrier(ptr, i32) #3

; Function Attrs: nounwind
declare !callback !1 void @__kmpc_fork_call(ptr, i32, ptr, ...) #2

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.ctlz.i64(i64, i1 immarg) #4

attributes #0 = { norecurse nounwind }
attributes #1 = { nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { nounwind }
attributes #3 = { convergent nounwind }
attributes #4 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }

!llvm.module.flags = !{!0}

!0 = !{i32 2, !"Debug Info Version", i32 3}
!1 = !{!2}
!2 = !{i64 2, i64 -1, i64 -1, i1 true}
