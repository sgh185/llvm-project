; ModuleID = 'LLVMDialectModule'
source_filename = "LLVMDialectModule"

declare ptr @malloc(i64)

declare void @free(ptr)

define { ptr, ptr, i64 } @InnerProd.z.0.main(ptr %0, ptr %1, i64 %2, i64 %3, i64 %4, ptr %5, ptr %6, i64 %7, i64 %8, i64 %9, ptr %10, ptr %11, i64 %12, i64 %13, i64 %14, ptr %15, ptr %16, i64 %17, i64 %18, i64 %19, ptr %20, ptr %21, i64 %22, i64 %23, i64 %24, { [3 x i64], [5 x i64] } %25, ptr %26, ptr %27, i64 %28, i64 %29, i64 %30, ptr %31, ptr %32, i64 %33, i64 %34, i64 %35, ptr %36, ptr %37, i64 %38, i64 %39, i64 %40, ptr %41, ptr %42, i64 %43, i64 %44, i64 %45, ptr %46, ptr %47, i64 %48, i64 %49, i64 %50, { [3 x i64], [5 x i64] } %51) {
  %53 = insertvalue { ptr, ptr, i64, [1 x i64], [1 x i64] } undef, ptr %0, 0
  %54 = insertvalue { ptr, ptr, i64, [1 x i64], [1 x i64] } %53, ptr %1, 1
  %55 = insertvalue { ptr, ptr, i64, [1 x i64], [1 x i64] } %54, i64 %2, 2
  %56 = insertvalue { ptr, ptr, i64, [1 x i64], [1 x i64] } %55, i64 %3, 3, 0
  %57 = insertvalue { ptr, ptr, i64, [1 x i64], [1 x i64] } %56, i64 %4, 4, 0
  %58 = insertvalue { ptr, ptr, i64, [1 x i64], [1 x i64] } undef, ptr %5, 0
  %59 = insertvalue { ptr, ptr, i64, [1 x i64], [1 x i64] } %58, ptr %6, 1
  %60 = insertvalue { ptr, ptr, i64, [1 x i64], [1 x i64] } %59, i64 %7, 2
  %61 = insertvalue { ptr, ptr, i64, [1 x i64], [1 x i64] } %60, i64 %8, 3, 0
  %62 = insertvalue { ptr, ptr, i64, [1 x i64], [1 x i64] } %61, i64 %9, 4, 0
  %63 = insertvalue { ptr, ptr, i64, [1 x i64], [1 x i64] } undef, ptr %10, 0
  %64 = insertvalue { ptr, ptr, i64, [1 x i64], [1 x i64] } %63, ptr %11, 1
  %65 = insertvalue { ptr, ptr, i64, [1 x i64], [1 x i64] } %64, i64 %12, 2
  %66 = insertvalue { ptr, ptr, i64, [1 x i64], [1 x i64] } %65, i64 %13, 3, 0
  %67 = insertvalue { ptr, ptr, i64, [1 x i64], [1 x i64] } %66, i64 %14, 4, 0
  %68 = insertvalue { ptr, ptr, i64, [1 x i64], [1 x i64] } undef, ptr %15, 0
  %69 = insertvalue { ptr, ptr, i64, [1 x i64], [1 x i64] } %68, ptr %16, 1
  %70 = insertvalue { ptr, ptr, i64, [1 x i64], [1 x i64] } %69, i64 %17, 2
  %71 = insertvalue { ptr, ptr, i64, [1 x i64], [1 x i64] } %70, i64 %18, 3, 0
  %72 = insertvalue { ptr, ptr, i64, [1 x i64], [1 x i64] } %71, i64 %19, 4, 0
  %73 = insertvalue { ptr, ptr, i64, [1 x i64], [1 x i64] } undef, ptr %20, 0
  %74 = insertvalue { ptr, ptr, i64, [1 x i64], [1 x i64] } %73, ptr %21, 1
  %75 = insertvalue { ptr, ptr, i64, [1 x i64], [1 x i64] } %74, i64 %22, 2
  %76 = insertvalue { ptr, ptr, i64, [1 x i64], [1 x i64] } %75, i64 %23, 3, 0
  %77 = insertvalue { ptr, ptr, i64, [1 x i64], [1 x i64] } %76, i64 %24, 4, 0
  %78 = insertvalue { ptr, ptr, i64, [1 x i64], [1 x i64] } undef, ptr %26, 0
  %79 = insertvalue { ptr, ptr, i64, [1 x i64], [1 x i64] } %78, ptr %27, 1
  %80 = insertvalue { ptr, ptr, i64, [1 x i64], [1 x i64] } %79, i64 %28, 2
  %81 = insertvalue { ptr, ptr, i64, [1 x i64], [1 x i64] } %80, i64 %29, 3, 0
  %82 = insertvalue { ptr, ptr, i64, [1 x i64], [1 x i64] } %81, i64 %30, 4, 0
  %83 = insertvalue { ptr, ptr, i64, [1 x i64], [1 x i64] } undef, ptr %31, 0
  %84 = insertvalue { ptr, ptr, i64, [1 x i64], [1 x i64] } %83, ptr %32, 1
  %85 = insertvalue { ptr, ptr, i64, [1 x i64], [1 x i64] } %84, i64 %33, 2
  %86 = insertvalue { ptr, ptr, i64, [1 x i64], [1 x i64] } %85, i64 %34, 3, 0
  %87 = insertvalue { ptr, ptr, i64, [1 x i64], [1 x i64] } %86, i64 %35, 4, 0
  %88 = insertvalue { ptr, ptr, i64, [1 x i64], [1 x i64] } undef, ptr %36, 0
  %89 = insertvalue { ptr, ptr, i64, [1 x i64], [1 x i64] } %88, ptr %37, 1
  %90 = insertvalue { ptr, ptr, i64, [1 x i64], [1 x i64] } %89, i64 %38, 2
  %91 = insertvalue { ptr, ptr, i64, [1 x i64], [1 x i64] } %90, i64 %39, 3, 0
  %92 = insertvalue { ptr, ptr, i64, [1 x i64], [1 x i64] } %91, i64 %40, 4, 0
  %93 = insertvalue { ptr, ptr, i64, [1 x i64], [1 x i64] } undef, ptr %41, 0
  %94 = insertvalue { ptr, ptr, i64, [1 x i64], [1 x i64] } %93, ptr %42, 1
  %95 = insertvalue { ptr, ptr, i64, [1 x i64], [1 x i64] } %94, i64 %43, 2
  %96 = insertvalue { ptr, ptr, i64, [1 x i64], [1 x i64] } %95, i64 %44, 3, 0
  %97 = insertvalue { ptr, ptr, i64, [1 x i64], [1 x i64] } %96, i64 %45, 4, 0
  %98 = insertvalue { ptr, ptr, i64, [1 x i64], [1 x i64] } undef, ptr %46, 0
  %99 = insertvalue { ptr, ptr, i64, [1 x i64], [1 x i64] } %98, ptr %47, 1
  %100 = insertvalue { ptr, ptr, i64, [1 x i64], [1 x i64] } %99, i64 %48, 2
  %101 = insertvalue { ptr, ptr, i64, [1 x i64], [1 x i64] } %100, i64 %49, 3, 0
  %102 = insertvalue { ptr, ptr, i64, [1 x i64], [1 x i64] } %101, i64 %50, 4, 0
  %103 = call ptr @malloc(i64 add (i64 ptrtoint (ptr getelementptr (float, ptr null, i32 1) to i64), i64 64))
  %104 = ptrtoint ptr %103 to i64
  %105 = add i64 %104, 63
  %106 = urem i64 %105, 64
  %107 = sub i64 %105, %106
  %108 = inttoptr i64 %107 to ptr
  %109 = insertvalue { ptr, ptr, i64 } undef, ptr %103, 0
  %110 = insertvalue { ptr, ptr, i64 } %109, ptr %108, 1
  %111 = insertvalue { ptr, ptr, i64 } %110, i64 0, 2
  store float 0.000000e+00, ptr %108, align 4
  %112 = load float, ptr %108, align 4
  br label %113

113:                                              ; preds = %221, %52
  %114 = phi i64 [ %222, %221 ], [ 0, %52 ]
  %115 = phi float [ %135, %221 ], [ %112, %52 ]
  %116 = icmp slt i64 %114, 128
  br i1 %116, label %117, label %223

117:                                              ; preds = %113
  %118 = extractvalue { ptr, ptr, i64, [1 x i64], [1 x i64] } %57, 1
  %119 = getelementptr i64, ptr %118, i64 %114
  %120 = load i64, ptr %119, align 4
  %121 = add i64 %114, 1
  %122 = extractvalue { ptr, ptr, i64, [1 x i64], [1 x i64] } %57, 1
  %123 = getelementptr i64, ptr %122, i64 %121
  %124 = load i64, ptr %123, align 4
  %125 = extractvalue { ptr, ptr, i64, [1 x i64], [1 x i64] } %82, 1
  %126 = getelementptr i64, ptr %125, i64 %114
  %127 = load i64, ptr %126, align 4
  %128 = add i64 %114, 1
  %129 = extractvalue { ptr, ptr, i64, [1 x i64], [1 x i64] } %82, 1
  %130 = getelementptr i64, ptr %129, i64 %128
  %131 = load i64, ptr %130, align 4
  br label %132

132:                                              ; preds = %214, %117
  %133 = phi i64 [ %217, %214 ], [ %120, %117 ]
  %134 = phi i64 [ %220, %214 ], [ %127, %117 ]
  %135 = phi float [ %213, %214 ], [ %115, %117 ]
  %136 = icmp ult i64 %133, %124
  %137 = icmp ult i64 %134, %131
  %138 = and i1 %136, %137
  br i1 %138, label %139, label %221

139:                                              ; preds = %132
  %140 = phi i64 [ %133, %132 ]
  %141 = phi i64 [ %134, %132 ]
  %142 = phi float [ %135, %132 ]
  %143 = extractvalue { ptr, ptr, i64, [1 x i64], [1 x i64] } %62, 1
  %144 = getelementptr i64, ptr %143, i64 %140
  %145 = load i64, ptr %144, align 4
  %146 = extractvalue { ptr, ptr, i64, [1 x i64], [1 x i64] } %87, 1
  %147 = getelementptr i64, ptr %146, i64 %141
  %148 = load i64, ptr %147, align 4
  %149 = icmp ult i64 %148, %145
  %150 = select i1 %149, i64 %148, i64 %145
  %151 = icmp eq i64 %145, %150
  %152 = icmp eq i64 %148, %150
  %153 = and i1 %151, %152
  br i1 %153, label %154, label %210

154:                                              ; preds = %139
  %155 = extractvalue { ptr, ptr, i64, [1 x i64], [1 x i64] } %67, 1
  %156 = getelementptr i64, ptr %155, i64 %140
  %157 = load i64, ptr %156, align 4
  %158 = add i64 %140, 1
  %159 = extractvalue { ptr, ptr, i64, [1 x i64], [1 x i64] } %67, 1
  %160 = getelementptr i64, ptr %159, i64 %158
  %161 = load i64, ptr %160, align 4
  %162 = extractvalue { ptr, ptr, i64, [1 x i64], [1 x i64] } %92, 1
  %163 = getelementptr i64, ptr %162, i64 %141
  %164 = load i64, ptr %163, align 4
  %165 = add i64 %141, 1
  %166 = extractvalue { ptr, ptr, i64, [1 x i64], [1 x i64] } %92, 1
  %167 = getelementptr i64, ptr %166, i64 %165
  %168 = load i64, ptr %167, align 4
  br label %169

169:                                              ; preds = %203, %154
  %170 = phi i64 [ %206, %203 ], [ %157, %154 ]
  %171 = phi i64 [ %209, %203 ], [ %164, %154 ]
  %172 = phi float [ %202, %203 ], [ %142, %154 ]
  %173 = icmp ult i64 %170, %161
  %174 = icmp ult i64 %171, %168
  %175 = and i1 %173, %174
  br i1 %175, label %176, label %210

176:                                              ; preds = %169
  %177 = phi i64 [ %170, %169 ]
  %178 = phi i64 [ %171, %169 ]
  %179 = phi float [ %172, %169 ]
  %180 = extractvalue { ptr, ptr, i64, [1 x i64], [1 x i64] } %72, 1
  %181 = getelementptr i64, ptr %180, i64 %177
  %182 = load i64, ptr %181, align 4
  %183 = extractvalue { ptr, ptr, i64, [1 x i64], [1 x i64] } %97, 1
  %184 = getelementptr i64, ptr %183, i64 %178
  %185 = load i64, ptr %184, align 4
  %186 = icmp ult i64 %185, %182
  %187 = select i1 %186, i64 %185, i64 %182
  %188 = icmp eq i64 %182, %187
  %189 = icmp eq i64 %185, %187
  %190 = and i1 %188, %189
  br i1 %190, label %191, label %200

191:                                              ; preds = %176
  %192 = extractvalue { ptr, ptr, i64, [1 x i64], [1 x i64] } %77, 1
  %193 = getelementptr float, ptr %192, i64 %177
  %194 = load float, ptr %193, align 4
  %195 = extractvalue { ptr, ptr, i64, [1 x i64], [1 x i64] } %102, 1
  %196 = getelementptr float, ptr %195, i64 %178
  %197 = load float, ptr %196, align 4
  %198 = fmul float %194, %197
  %199 = fadd float %179, %198
  br label %201

200:                                              ; preds = %176
  br label %201

201:                                              ; preds = %191, %200
  %202 = phi float [ %179, %200 ], [ %199, %191 ]
  br label %203

203:                                              ; preds = %201
  %204 = icmp eq i64 %182, %187
  %205 = add i64 %177, 1
  %206 = select i1 %204, i64 %205, i64 %177
  %207 = icmp eq i64 %185, %187
  %208 = add i64 %178, 1
  %209 = select i1 %207, i64 %208, i64 %178
  br label %169

210:                                              ; preds = %169, %139
  %211 = phi float [ %172, %169 ], [ %142, %139 ]
  br label %212

212:                                              ; preds = %210
  %213 = phi float [ %211, %210 ]
  br label %214

214:                                              ; preds = %212
  %215 = icmp eq i64 %145, %150
  %216 = add i64 %140, 1
  %217 = select i1 %215, i64 %216, i64 %140
  %218 = icmp eq i64 %148, %150
  %219 = add i64 %141, 1
  %220 = select i1 %218, i64 %219, i64 %141
  br label %132

221:                                              ; preds = %132
  %222 = add i64 %114, 1
  br label %113

223:                                              ; preds = %113
  store float %115, ptr %108, align 4
  ret { ptr, ptr, i64 } %111
}

define void @_mlir_ciface_InnerProd.z.0.main(ptr %0, ptr %1, ptr %2, ptr %3, ptr %4, ptr %5, { [3 x i64], [5 x i64] } %6, ptr %7, ptr %8, ptr %9, ptr %10, ptr %11, { [3 x i64], [5 x i64] } %12) {
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
  %44 = load { ptr, ptr, i64, [1 x i64], [1 x i64] }, ptr %7, align 8
  %45 = extractvalue { ptr, ptr, i64, [1 x i64], [1 x i64] } %44, 0
  %46 = extractvalue { ptr, ptr, i64, [1 x i64], [1 x i64] } %44, 1
  %47 = extractvalue { ptr, ptr, i64, [1 x i64], [1 x i64] } %44, 2
  %48 = extractvalue { ptr, ptr, i64, [1 x i64], [1 x i64] } %44, 3, 0
  %49 = extractvalue { ptr, ptr, i64, [1 x i64], [1 x i64] } %44, 4, 0
  %50 = load { ptr, ptr, i64, [1 x i64], [1 x i64] }, ptr %8, align 8
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
  %62 = load { ptr, ptr, i64, [1 x i64], [1 x i64] }, ptr %10, align 8
  %63 = extractvalue { ptr, ptr, i64, [1 x i64], [1 x i64] } %62, 0
  %64 = extractvalue { ptr, ptr, i64, [1 x i64], [1 x i64] } %62, 1
  %65 = extractvalue { ptr, ptr, i64, [1 x i64], [1 x i64] } %62, 2
  %66 = extractvalue { ptr, ptr, i64, [1 x i64], [1 x i64] } %62, 3, 0
  %67 = extractvalue { ptr, ptr, i64, [1 x i64], [1 x i64] } %62, 4, 0
  %68 = load { ptr, ptr, i64, [1 x i64], [1 x i64] }, ptr %11, align 8
  %69 = extractvalue { ptr, ptr, i64, [1 x i64], [1 x i64] } %68, 0
  %70 = extractvalue { ptr, ptr, i64, [1 x i64], [1 x i64] } %68, 1
  %71 = extractvalue { ptr, ptr, i64, [1 x i64], [1 x i64] } %68, 2
  %72 = extractvalue { ptr, ptr, i64, [1 x i64], [1 x i64] } %68, 3, 0
  %73 = extractvalue { ptr, ptr, i64, [1 x i64], [1 x i64] } %68, 4, 0
  %74 = call { ptr, ptr, i64 } @InnerProd.z.0.main(ptr %15, ptr %16, i64 %17, i64 %18, i64 %19, ptr %21, ptr %22, i64 %23, i64 %24, i64 %25, ptr %27, ptr %28, i64 %29, i64 %30, i64 %31, ptr %33, ptr %34, i64 %35, i64 %36, i64 %37, ptr %39, ptr %40, i64 %41, i64 %42, i64 %43, { [3 x i64], [5 x i64] } %6, ptr %45, ptr %46, i64 %47, i64 %48, i64 %49, ptr %51, ptr %52, i64 %53, i64 %54, i64 %55, ptr %57, ptr %58, i64 %59, i64 %60, i64 %61, ptr %63, ptr %64, i64 %65, i64 %66, i64 %67, ptr %69, ptr %70, i64 %71, i64 %72, i64 %73, { [3 x i64], [5 x i64] } %12)
  store { ptr, ptr, i64 } %74, ptr %0, align 8
  ret void
}

!llvm.module.flags = !{!0}

!0 = !{i32 2, !"Debug Info Version", i32 3}
