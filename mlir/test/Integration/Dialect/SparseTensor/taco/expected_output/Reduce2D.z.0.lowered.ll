; ModuleID = 'LLVMDialectModule'
source_filename = "LLVMDialectModule"

declare ptr @malloc(i64)

declare void @free(ptr)

define { ptr, ptr, i64 } @Reduce2D.z.0.main(ptr %0, ptr %1, i64 %2, i64 %3, i64 %4, ptr %5, ptr %6, i64 %7, i64 %8, i64 %9, ptr %10, ptr %11, i64 %12, i64 %13, i64 %14, { [2 x i64], [3 x i64] } %15) {
  %17 = insertvalue { ptr, ptr, i64, [1 x i64], [1 x i64] } undef, ptr %0, 0
  %18 = insertvalue { ptr, ptr, i64, [1 x i64], [1 x i64] } %17, ptr %1, 1
  %19 = insertvalue { ptr, ptr, i64, [1 x i64], [1 x i64] } %18, i64 %2, 2
  %20 = insertvalue { ptr, ptr, i64, [1 x i64], [1 x i64] } %19, i64 %3, 3, 0
  %21 = insertvalue { ptr, ptr, i64, [1 x i64], [1 x i64] } %20, i64 %4, 4, 0
  %22 = insertvalue { ptr, ptr, i64, [1 x i64], [1 x i64] } undef, ptr %10, 0
  %23 = insertvalue { ptr, ptr, i64, [1 x i64], [1 x i64] } %22, ptr %11, 1
  %24 = insertvalue { ptr, ptr, i64, [1 x i64], [1 x i64] } %23, i64 %12, 2
  %25 = insertvalue { ptr, ptr, i64, [1 x i64], [1 x i64] } %24, i64 %13, 3, 0
  %26 = insertvalue { ptr, ptr, i64, [1 x i64], [1 x i64] } %25, i64 %14, 4, 0
  %27 = call ptr @malloc(i64 add (i64 ptrtoint (ptr getelementptr (float, ptr null, i32 1) to i64), i64 64))
  %28 = ptrtoint ptr %27 to i64
  %29 = add i64 %28, 63
  %30 = urem i64 %29, 64
  %31 = sub i64 %29, %30
  %32 = inttoptr i64 %31 to ptr
  %33 = insertvalue { ptr, ptr, i64 } undef, ptr %27, 0
  %34 = insertvalue { ptr, ptr, i64 } %33, ptr %32, 1
  %35 = insertvalue { ptr, ptr, i64 } %34, i64 0, 2
  store float 0.000000e+00, ptr %32, align 4
  %36 = load float, ptr %32, align 4
  br label %37

37:                                               ; preds = %59, %16
  %38 = phi i64 [ %60, %59 ], [ 0, %16 ]
  %39 = phi float [ %51, %59 ], [ %36, %16 ]
  %40 = icmp slt i64 %38, 128
  br i1 %40, label %41, label %61

41:                                               ; preds = %37
  %42 = extractvalue { ptr, ptr, i64, [1 x i64], [1 x i64] } %21, 1
  %43 = getelementptr i64, ptr %42, i64 %38
  %44 = load i64, ptr %43, align 4
  %45 = add i64 %38, 1
  %46 = extractvalue { ptr, ptr, i64, [1 x i64], [1 x i64] } %21, 1
  %47 = getelementptr i64, ptr %46, i64 %45
  %48 = load i64, ptr %47, align 4
  br label %49

49:                                               ; preds = %53, %41
  %50 = phi i64 [ %58, %53 ], [ %44, %41 ]
  %51 = phi float [ %57, %53 ], [ %39, %41 ]
  %52 = icmp slt i64 %50, %48
  br i1 %52, label %53, label %59

53:                                               ; preds = %49
  %54 = extractvalue { ptr, ptr, i64, [1 x i64], [1 x i64] } %26, 1
  %55 = getelementptr float, ptr %54, i64 %50
  %56 = load float, ptr %55, align 4
  %57 = fadd float %51, %56
  %58 = add i64 %50, 1
  br label %49

59:                                               ; preds = %49
  %60 = add i64 %38, 1
  br label %37

61:                                               ; preds = %37
  store float %39, ptr %32, align 4
  ret { ptr, ptr, i64 } %35
}

define void @_mlir_ciface_Reduce2D.z.0.main(ptr %0, ptr %1, ptr %2, ptr %3, { [2 x i64], [3 x i64] } %4) {
  %6 = load { ptr, ptr, i64, [1 x i64], [1 x i64] }, ptr %1, align 8
  %7 = extractvalue { ptr, ptr, i64, [1 x i64], [1 x i64] } %6, 0
  %8 = extractvalue { ptr, ptr, i64, [1 x i64], [1 x i64] } %6, 1
  %9 = extractvalue { ptr, ptr, i64, [1 x i64], [1 x i64] } %6, 2
  %10 = extractvalue { ptr, ptr, i64, [1 x i64], [1 x i64] } %6, 3, 0
  %11 = extractvalue { ptr, ptr, i64, [1 x i64], [1 x i64] } %6, 4, 0
  %12 = load { ptr, ptr, i64, [1 x i64], [1 x i64] }, ptr %2, align 8
  %13 = extractvalue { ptr, ptr, i64, [1 x i64], [1 x i64] } %12, 0
  %14 = extractvalue { ptr, ptr, i64, [1 x i64], [1 x i64] } %12, 1
  %15 = extractvalue { ptr, ptr, i64, [1 x i64], [1 x i64] } %12, 2
  %16 = extractvalue { ptr, ptr, i64, [1 x i64], [1 x i64] } %12, 3, 0
  %17 = extractvalue { ptr, ptr, i64, [1 x i64], [1 x i64] } %12, 4, 0
  %18 = load { ptr, ptr, i64, [1 x i64], [1 x i64] }, ptr %3, align 8
  %19 = extractvalue { ptr, ptr, i64, [1 x i64], [1 x i64] } %18, 0
  %20 = extractvalue { ptr, ptr, i64, [1 x i64], [1 x i64] } %18, 1
  %21 = extractvalue { ptr, ptr, i64, [1 x i64], [1 x i64] } %18, 2
  %22 = extractvalue { ptr, ptr, i64, [1 x i64], [1 x i64] } %18, 3, 0
  %23 = extractvalue { ptr, ptr, i64, [1 x i64], [1 x i64] } %18, 4, 0
  %24 = call { ptr, ptr, i64 } @Reduce2D.z.0.main(ptr %7, ptr %8, i64 %9, i64 %10, i64 %11, ptr %13, ptr %14, i64 %15, i64 %16, i64 %17, ptr %19, ptr %20, i64 %21, i64 %22, i64 %23, { [2 x i64], [3 x i64] } %4)
  store { ptr, ptr, i64 } %24, ptr %0, align 8
  ret void
}

!llvm.module.flags = !{!0}

!0 = !{i32 2, !"Debug Info Version", i32 3}
