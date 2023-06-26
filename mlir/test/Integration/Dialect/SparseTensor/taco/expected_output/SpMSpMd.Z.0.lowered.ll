; ModuleID = 'LLVMDialectModule'
source_filename = "LLVMDialectModule"

%struct.ident_t = type { i32, i32, i32, i32, ptr }

@0 = private unnamed_addr constant [23 x i8] c";unknown;unknown;0;0;;\00", align 1
@1 = private unnamed_addr constant %struct.ident_t { i32 0, i32 2, i32 0, i32 22, ptr @0 }, align 8
@2 = private unnamed_addr constant %struct.ident_t { i32 0, i32 66, i32 0, i32 22, ptr @0 }, align 8

declare ptr @malloc(i64)

declare void @free(ptr)

define { { ptr, ptr, i64, [1 x i64], [1 x i64] }, { [2 x i64], [1 x i64] } } @SpMSpMd.Z.0.main(ptr %0, ptr %1, i64 %2, i64 %3, i64 %4, ptr %5, ptr %6, i64 %7, i64 %8, i64 %9, ptr %10, ptr %11, i64 %12, i64 %13, i64 %14, { [2 x i64], [3 x i64] } %15, ptr %16, ptr %17, i64 %18, i64 %19, i64 %20, ptr %21, ptr %22, i64 %23, i64 %24, i64 %25, ptr %26, ptr %27, i64 %28, i64 %29, i64 %30, { [2 x i64], [3 x i64] } %31) {
  %structArg = alloca { ptr, ptr, ptr, ptr, ptr, ptr, ptr }, align 8
  %.reloaded = alloca { ptr, ptr, i64, [1 x i64], [1 x i64] }, align 8
  %.reloaded22 = alloca { ptr, ptr, i64, [1 x i64], [1 x i64] }, align 8
  %.reloaded23 = alloca { ptr, ptr, i64, [1 x i64], [1 x i64] }, align 8
  %.reloaded24 = alloca { ptr, ptr, i64, [1 x i64], [1 x i64] }, align 8
  %.reloaded25 = alloca { ptr, ptr, i64, [1 x i64], [1 x i64] }, align 8
  %.reloaded26 = alloca { ptr, ptr, i64, [1 x i64], [1 x i64] }, align 8
  %33 = insertvalue { ptr, ptr, i64, [1 x i64], [1 x i64] } undef, ptr %0, 0
  %34 = insertvalue { ptr, ptr, i64, [1 x i64], [1 x i64] } %33, ptr %1, 1
  %35 = insertvalue { ptr, ptr, i64, [1 x i64], [1 x i64] } %34, i64 %2, 2
  %36 = insertvalue { ptr, ptr, i64, [1 x i64], [1 x i64] } %35, i64 %3, 3, 0
  %37 = insertvalue { ptr, ptr, i64, [1 x i64], [1 x i64] } %36, i64 %4, 4, 0
  %38 = insertvalue { ptr, ptr, i64, [1 x i64], [1 x i64] } undef, ptr %5, 0
  %39 = insertvalue { ptr, ptr, i64, [1 x i64], [1 x i64] } %38, ptr %6, 1
  %40 = insertvalue { ptr, ptr, i64, [1 x i64], [1 x i64] } %39, i64 %7, 2
  %41 = insertvalue { ptr, ptr, i64, [1 x i64], [1 x i64] } %40, i64 %8, 3, 0
  %42 = insertvalue { ptr, ptr, i64, [1 x i64], [1 x i64] } %41, i64 %9, 4, 0
  %43 = insertvalue { ptr, ptr, i64, [1 x i64], [1 x i64] } undef, ptr %10, 0
  %44 = insertvalue { ptr, ptr, i64, [1 x i64], [1 x i64] } %43, ptr %11, 1
  %45 = insertvalue { ptr, ptr, i64, [1 x i64], [1 x i64] } %44, i64 %12, 2
  %46 = insertvalue { ptr, ptr, i64, [1 x i64], [1 x i64] } %45, i64 %13, 3, 0
  %47 = insertvalue { ptr, ptr, i64, [1 x i64], [1 x i64] } %46, i64 %14, 4, 0
  %48 = insertvalue { ptr, ptr, i64, [1 x i64], [1 x i64] } undef, ptr %16, 0
  %49 = insertvalue { ptr, ptr, i64, [1 x i64], [1 x i64] } %48, ptr %17, 1
  %50 = insertvalue { ptr, ptr, i64, [1 x i64], [1 x i64] } %49, i64 %18, 2
  %51 = insertvalue { ptr, ptr, i64, [1 x i64], [1 x i64] } %50, i64 %19, 3, 0
  %52 = insertvalue { ptr, ptr, i64, [1 x i64], [1 x i64] } %51, i64 %20, 4, 0
  %53 = insertvalue { ptr, ptr, i64, [1 x i64], [1 x i64] } undef, ptr %21, 0
  %54 = insertvalue { ptr, ptr, i64, [1 x i64], [1 x i64] } %53, ptr %22, 1
  %55 = insertvalue { ptr, ptr, i64, [1 x i64], [1 x i64] } %54, i64 %23, 2
  %56 = insertvalue { ptr, ptr, i64, [1 x i64], [1 x i64] } %55, i64 %24, 3, 0
  %57 = insertvalue { ptr, ptr, i64, [1 x i64], [1 x i64] } %56, i64 %25, 4, 0
  %58 = insertvalue { ptr, ptr, i64, [1 x i64], [1 x i64] } undef, ptr %26, 0
  %59 = insertvalue { ptr, ptr, i64, [1 x i64], [1 x i64] } %58, ptr %27, 1
  %60 = insertvalue { ptr, ptr, i64, [1 x i64], [1 x i64] } %59, i64 %28, 2
  %61 = insertvalue { ptr, ptr, i64, [1 x i64], [1 x i64] } %60, i64 %29, 3, 0
  %62 = insertvalue { ptr, ptr, i64, [1 x i64], [1 x i64] } %61, i64 %30, 4, 0
  %63 = call ptr @malloc(i64 ptrtoint (ptr getelementptr (float, ptr null, i32 16384) to i64))
  %64 = insertvalue { ptr, ptr, i64, [1 x i64], [1 x i64] } undef, ptr %63, 0
  %65 = insertvalue { ptr, ptr, i64, [1 x i64], [1 x i64] } %64, ptr %63, 1
  %66 = insertvalue { ptr, ptr, i64, [1 x i64], [1 x i64] } %65, i64 0, 2
  %67 = insertvalue { ptr, ptr, i64, [1 x i64], [1 x i64] } %66, i64 16384, 3, 0
  %68 = insertvalue { ptr, ptr, i64, [1 x i64], [1 x i64] } %67, i64 1, 4, 0
  br label %69

69:                                               ; preds = %72, %32
  %70 = phi i64 [ %74, %72 ], [ 0, %32 ]
  %71 = icmp slt i64 %70, 16384
  br i1 %71, label %72, label %75

72:                                               ; preds = %69
  %73 = getelementptr float, ptr %63, i64 %70
  store float 0.000000e+00, ptr %73, align 4
  %74 = add i64 %70, 1
  br label %69

75:                                               ; preds = %69
  %omp_global_thread_num = call i32 @__kmpc_global_thread_num(ptr @1)
  store { ptr, ptr, i64, [1 x i64], [1 x i64] } %37, ptr %.reloaded, align 8
  store { ptr, ptr, i64, [1 x i64], [1 x i64] } %52, ptr %.reloaded22, align 8
  store { ptr, ptr, i64, [1 x i64], [1 x i64] } %42, ptr %.reloaded23, align 8
  store { ptr, ptr, i64, [1 x i64], [1 x i64] } %57, ptr %.reloaded24, align 8
  store { ptr, ptr, i64, [1 x i64], [1 x i64] } %47, ptr %.reloaded25, align 8
  store { ptr, ptr, i64, [1 x i64], [1 x i64] } %62, ptr %.reloaded26, align 8
  br label %omp_parallel

omp_parallel:                                     ; preds = %75
  %gep_.reloaded = getelementptr { ptr, ptr, ptr, ptr, ptr, ptr, ptr }, ptr %structArg, i32 0, i32 0
  store ptr %.reloaded, ptr %gep_.reloaded, align 8
  %gep_.reloaded22 = getelementptr { ptr, ptr, ptr, ptr, ptr, ptr, ptr }, ptr %structArg, i32 0, i32 1
  store ptr %.reloaded22, ptr %gep_.reloaded22, align 8
  %gep_.reloaded23 = getelementptr { ptr, ptr, ptr, ptr, ptr, ptr, ptr }, ptr %structArg, i32 0, i32 2
  store ptr %.reloaded23, ptr %gep_.reloaded23, align 8
  %gep_.reloaded24 = getelementptr { ptr, ptr, ptr, ptr, ptr, ptr, ptr }, ptr %structArg, i32 0, i32 3
  store ptr %.reloaded24, ptr %gep_.reloaded24, align 8
  %gep_.reloaded25 = getelementptr { ptr, ptr, ptr, ptr, ptr, ptr, ptr }, ptr %structArg, i32 0, i32 4
  store ptr %.reloaded25, ptr %gep_.reloaded25, align 8
  %gep_.reloaded26 = getelementptr { ptr, ptr, ptr, ptr, ptr, ptr, ptr }, ptr %structArg, i32 0, i32 5
  store ptr %.reloaded26, ptr %gep_.reloaded26, align 8
  %gep_ = getelementptr { ptr, ptr, ptr, ptr, ptr, ptr, ptr }, ptr %structArg, i32 0, i32 6
  store ptr %63, ptr %gep_, align 8
  call void (ptr, i32, ptr, ...) @__kmpc_fork_call(ptr @1, i32 1, ptr @SpMSpMd.Z.0.main..omp_par, ptr %structArg)
  br label %omp.par.outlined.exit

omp.par.outlined.exit:                            ; preds = %omp_parallel
  br label %omp.par.exit.split

omp.par.exit.split:                               ; preds = %omp.par.outlined.exit
  %76 = insertvalue { { ptr, ptr, i64, [1 x i64], [1 x i64] }, { [2 x i64], [1 x i64] } } undef, { ptr, ptr, i64, [1 x i64], [1 x i64] } %68, 0
  %77 = insertvalue { { ptr, ptr, i64, [1 x i64], [1 x i64] }, { [2 x i64], [1 x i64] } } %76, { [2 x i64], [1 x i64] } { [2 x i64] [i64 128, i64 128], [1 x i64] [i64 16384] }, 1
  ret { { ptr, ptr, i64, [1 x i64], [1 x i64] }, { [2 x i64], [1 x i64] } } %77
}

; Function Attrs: norecurse nounwind
define internal void @SpMSpMd.Z.0.main..omp_par(ptr noalias %tid.addr, ptr noalias %zero.addr, ptr %0) #0 {
omp.par.entry:
  %gep_.reloaded = getelementptr { ptr, ptr, ptr, ptr, ptr, ptr, ptr }, ptr %0, i32 0, i32 0
  %loadgep_.reloaded = load ptr, ptr %gep_.reloaded, align 8
  %gep_.reloaded22 = getelementptr { ptr, ptr, ptr, ptr, ptr, ptr, ptr }, ptr %0, i32 0, i32 1
  %loadgep_.reloaded22 = load ptr, ptr %gep_.reloaded22, align 8
  %gep_.reloaded23 = getelementptr { ptr, ptr, ptr, ptr, ptr, ptr, ptr }, ptr %0, i32 0, i32 2
  %loadgep_.reloaded23 = load ptr, ptr %gep_.reloaded23, align 8
  %gep_.reloaded24 = getelementptr { ptr, ptr, ptr, ptr, ptr, ptr, ptr }, ptr %0, i32 0, i32 3
  %loadgep_.reloaded24 = load ptr, ptr %gep_.reloaded24, align 8
  %gep_.reloaded25 = getelementptr { ptr, ptr, ptr, ptr, ptr, ptr, ptr }, ptr %0, i32 0, i32 4
  %loadgep_.reloaded25 = load ptr, ptr %gep_.reloaded25, align 8
  %gep_.reloaded26 = getelementptr { ptr, ptr, ptr, ptr, ptr, ptr, ptr }, ptr %0, i32 0, i32 5
  %loadgep_.reloaded26 = load ptr, ptr %gep_.reloaded26, align 8
  %gep_ = getelementptr { ptr, ptr, ptr, ptr, ptr, ptr, ptr }, ptr %0, i32 0, i32 6
  %loadgep_ = load ptr, ptr %gep_, align 8
  %tid.addr.local = alloca i32, align 4
  %1 = load i32, ptr %tid.addr, align 4
  store i32 %1, ptr %tid.addr.local, align 4
  %tid = load i32, ptr %tid.addr.local, align 4
  %2 = load { ptr, ptr, i64, [1 x i64], [1 x i64] }, ptr %loadgep_.reloaded, align 8
  %3 = load { ptr, ptr, i64, [1 x i64], [1 x i64] }, ptr %loadgep_.reloaded22, align 8
  %4 = load { ptr, ptr, i64, [1 x i64], [1 x i64] }, ptr %loadgep_.reloaded23, align 8
  %5 = load { ptr, ptr, i64, [1 x i64], [1 x i64] }, ptr %loadgep_.reloaded24, align 8
  %6 = load { ptr, ptr, i64, [1 x i64], [1 x i64] }, ptr %loadgep_.reloaded25, align 8
  %7 = load { ptr, ptr, i64, [1 x i64], [1 x i64] }, ptr %loadgep_.reloaded26, align 8
  %p.lastiter = alloca i32, align 4
  %p.lowerbound = alloca i64, align 8
  %p.upperbound = alloca i64, align 8
  %p.stride = alloca i64, align 8
  br label %omp.par.region

omp.par.region:                                   ; preds = %omp.par.entry
  br label %omp.par.region1

omp.par.region1:                                  ; preds = %omp.par.region
  br label %omp_loop.preheader

omp_loop.preheader:                               ; preds = %omp.par.region1
  br label %omp_collapsed.preheader

omp_collapsed.preheader:                          ; preds = %omp_loop.preheader
  store i64 0, ptr %p.lowerbound, align 4
  store i64 16383, ptr %p.upperbound, align 4
  store i64 1, ptr %p.stride, align 4
  %omp_global_thread_num20 = call i32 @__kmpc_global_thread_num(ptr @1)
  call void @__kmpc_for_static_init_8u(ptr @1, i32 %omp_global_thread_num20, i32 34, ptr %p.lastiter, ptr %p.lowerbound, ptr %p.upperbound, ptr %p.stride, i64 1, i64 0)
  %8 = load i64, ptr %p.lowerbound, align 4
  %9 = load i64, ptr %p.upperbound, align 4
  %10 = sub i64 %9, %8
  %11 = add i64 %10, 1
  br label %omp_collapsed.header

omp_collapsed.header:                             ; preds = %omp_collapsed.inc, %omp_collapsed.preheader
  %omp_collapsed.iv = phi i64 [ 0, %omp_collapsed.preheader ], [ %omp_collapsed.next, %omp_collapsed.inc ]
  br label %omp_collapsed.cond

omp_collapsed.cond:                               ; preds = %omp_collapsed.header
  %omp_collapsed.cmp = icmp ult i64 %omp_collapsed.iv, %11
  br i1 %omp_collapsed.cmp, label %omp_collapsed.body, label %omp_collapsed.exit

omp_collapsed.exit:                               ; preds = %omp_collapsed.cond
  call void @__kmpc_for_static_fini(ptr @1, i32 %omp_global_thread_num20)
  %omp_global_thread_num21 = call i32 @__kmpc_global_thread_num(ptr @1)
  call void @__kmpc_barrier(ptr @2, i32 %omp_global_thread_num21)
  br label %omp_collapsed.after

omp_collapsed.after:                              ; preds = %omp_collapsed.exit
  br label %omp_loop.after

omp_loop.after:                                   ; preds = %omp_collapsed.after
  br label %omp.region.cont

omp.region.cont:                                  ; preds = %omp_loop.after
  br label %omp.par.pre_finalize

omp.par.pre_finalize:                             ; preds = %omp.region.cont
  br label %omp.par.outlined.exit.exitStub

omp_collapsed.body:                               ; preds = %omp_collapsed.cond
  %12 = add i64 %omp_collapsed.iv, %8
  %13 = urem i64 %12, 128
  %14 = udiv i64 %12, 128
  br label %omp_loop.body

omp_loop.body:                                    ; preds = %omp_collapsed.body
  %15 = mul i64 %14, 1
  %16 = add i64 %15, 0
  br label %omp_loop.preheader2

omp_loop.preheader2:                              ; preds = %omp_loop.body
  br label %omp_loop.body5

omp_loop.body5:                                   ; preds = %omp_loop.preheader2
  %17 = mul i64 %13, 1
  %18 = add i64 %17, 0
  br label %omp.wsloop.region

omp.wsloop.region:                                ; preds = %omp_loop.body5
  %19 = mul i64 %16, 128
  %20 = add i64 %19, %18
  %21 = getelementptr float, ptr %loadgep_, i64 %20
  %22 = load float, ptr %21, align 4
  %23 = extractvalue { ptr, ptr, i64, [1 x i64], [1 x i64] } %2, 1
  %24 = getelementptr i64, ptr %23, i64 %16
  %25 = load i64, ptr %24, align 4
  %26 = add i64 %16, 1
  %27 = extractvalue { ptr, ptr, i64, [1 x i64], [1 x i64] } %2, 1
  %28 = getelementptr i64, ptr %27, i64 %26
  %29 = load i64, ptr %28, align 4
  %30 = extractvalue { ptr, ptr, i64, [1 x i64], [1 x i64] } %3, 1
  %31 = getelementptr i64, ptr %30, i64 %18
  %32 = load i64, ptr %31, align 4
  %33 = add i64 %18, 1
  %34 = extractvalue { ptr, ptr, i64, [1 x i64], [1 x i64] } %3, 1
  %35 = getelementptr i64, ptr %34, i64 %33
  %36 = load i64, ptr %35, align 4
  br label %omp.wsloop.region13

omp.wsloop.region13:                              ; preds = %omp.wsloop.region18, %omp.wsloop.region
  %37 = phi i64 [ %61, %omp.wsloop.region18 ], [ %25, %omp.wsloop.region ]
  %38 = phi i64 [ %64, %omp.wsloop.region18 ], [ %32, %omp.wsloop.region ]
  %39 = phi float [ %58, %omp.wsloop.region18 ], [ %22, %omp.wsloop.region ]
  %40 = icmp ult i64 %37, %29
  %41 = icmp ult i64 %38, %36
  %42 = and i1 %40, %41
  br i1 %42, label %omp.wsloop.region14, label %omp.wsloop.region19

omp.wsloop.region19:                              ; preds = %omp.wsloop.region13
  %43 = getelementptr float, ptr %loadgep_, i64 %20
  store float %39, ptr %43, align 4
  br label %omp.region.cont12

omp.region.cont12:                                ; preds = %omp.wsloop.region19
  br label %omp_loop.after8

omp_loop.after8:                                  ; preds = %omp.region.cont12
  br label %omp_collapsed.inc

omp_collapsed.inc:                                ; preds = %omp_loop.after8
  %omp_collapsed.next = add nuw i64 %omp_collapsed.iv, 1
  br label %omp_collapsed.header

omp.wsloop.region14:                              ; preds = %omp.wsloop.region13
  %44 = phi i64 [ %37, %omp.wsloop.region13 ]
  %45 = phi i64 [ %38, %omp.wsloop.region13 ]
  %46 = phi float [ %39, %omp.wsloop.region13 ]
  %47 = extractvalue { ptr, ptr, i64, [1 x i64], [1 x i64] } %4, 1
  %48 = getelementptr i64, ptr %47, i64 %44
  %49 = load i64, ptr %48, align 4
  %50 = extractvalue { ptr, ptr, i64, [1 x i64], [1 x i64] } %5, 1
  %51 = getelementptr i64, ptr %50, i64 %45
  %52 = load i64, ptr %51, align 4
  %53 = icmp ult i64 %52, %49
  %54 = select i1 %53, i64 %52, i64 %49
  %55 = icmp eq i64 %49, %54
  %56 = icmp eq i64 %52, %54
  %57 = and i1 %55, %56
  br i1 %57, label %omp.wsloop.region15, label %omp.wsloop.region16

omp.wsloop.region16:                              ; preds = %omp.wsloop.region14
  br label %omp.wsloop.region17

omp.wsloop.region17:                              ; preds = %omp.wsloop.region15, %omp.wsloop.region16
  %58 = phi float [ %46, %omp.wsloop.region16 ], [ %72, %omp.wsloop.region15 ]
  br label %omp.wsloop.region18

omp.wsloop.region18:                              ; preds = %omp.wsloop.region17
  %59 = icmp eq i64 %49, %54
  %60 = add i64 %44, 1
  %61 = select i1 %59, i64 %60, i64 %44
  %62 = icmp eq i64 %52, %54
  %63 = add i64 %45, 1
  %64 = select i1 %62, i64 %63, i64 %45
  br label %omp.wsloop.region13

omp.wsloop.region15:                              ; preds = %omp.wsloop.region14
  %65 = extractvalue { ptr, ptr, i64, [1 x i64], [1 x i64] } %6, 1
  %66 = getelementptr float, ptr %65, i64 %44
  %67 = load float, ptr %66, align 4
  %68 = extractvalue { ptr, ptr, i64, [1 x i64], [1 x i64] } %7, 1
  %69 = getelementptr float, ptr %68, i64 %45
  %70 = load float, ptr %69, align 4
  %71 = fmul float %67, %70
  %72 = fadd float %46, %71
  br label %omp.wsloop.region17

omp.par.outlined.exit.exitStub:                   ; preds = %omp.par.pre_finalize
  ret void
}

define void @_mlir_ciface_SpMSpMd.Z.0.main(ptr %0, ptr %1, ptr %2, ptr %3, { [2 x i64], [3 x i64] } %4, ptr %5, ptr %6, ptr %7, { [2 x i64], [3 x i64] } %8) {
  %10 = load { ptr, ptr, i64, [1 x i64], [1 x i64] }, ptr %1, align 8
  %11 = extractvalue { ptr, ptr, i64, [1 x i64], [1 x i64] } %10, 0
  %12 = extractvalue { ptr, ptr, i64, [1 x i64], [1 x i64] } %10, 1
  %13 = extractvalue { ptr, ptr, i64, [1 x i64], [1 x i64] } %10, 2
  %14 = extractvalue { ptr, ptr, i64, [1 x i64], [1 x i64] } %10, 3, 0
  %15 = extractvalue { ptr, ptr, i64, [1 x i64], [1 x i64] } %10, 4, 0
  %16 = load { ptr, ptr, i64, [1 x i64], [1 x i64] }, ptr %2, align 8
  %17 = extractvalue { ptr, ptr, i64, [1 x i64], [1 x i64] } %16, 0
  %18 = extractvalue { ptr, ptr, i64, [1 x i64], [1 x i64] } %16, 1
  %19 = extractvalue { ptr, ptr, i64, [1 x i64], [1 x i64] } %16, 2
  %20 = extractvalue { ptr, ptr, i64, [1 x i64], [1 x i64] } %16, 3, 0
  %21 = extractvalue { ptr, ptr, i64, [1 x i64], [1 x i64] } %16, 4, 0
  %22 = load { ptr, ptr, i64, [1 x i64], [1 x i64] }, ptr %3, align 8
  %23 = extractvalue { ptr, ptr, i64, [1 x i64], [1 x i64] } %22, 0
  %24 = extractvalue { ptr, ptr, i64, [1 x i64], [1 x i64] } %22, 1
  %25 = extractvalue { ptr, ptr, i64, [1 x i64], [1 x i64] } %22, 2
  %26 = extractvalue { ptr, ptr, i64, [1 x i64], [1 x i64] } %22, 3, 0
  %27 = extractvalue { ptr, ptr, i64, [1 x i64], [1 x i64] } %22, 4, 0
  %28 = load { ptr, ptr, i64, [1 x i64], [1 x i64] }, ptr %5, align 8
  %29 = extractvalue { ptr, ptr, i64, [1 x i64], [1 x i64] } %28, 0
  %30 = extractvalue { ptr, ptr, i64, [1 x i64], [1 x i64] } %28, 1
  %31 = extractvalue { ptr, ptr, i64, [1 x i64], [1 x i64] } %28, 2
  %32 = extractvalue { ptr, ptr, i64, [1 x i64], [1 x i64] } %28, 3, 0
  %33 = extractvalue { ptr, ptr, i64, [1 x i64], [1 x i64] } %28, 4, 0
  %34 = load { ptr, ptr, i64, [1 x i64], [1 x i64] }, ptr %6, align 8
  %35 = extractvalue { ptr, ptr, i64, [1 x i64], [1 x i64] } %34, 0
  %36 = extractvalue { ptr, ptr, i64, [1 x i64], [1 x i64] } %34, 1
  %37 = extractvalue { ptr, ptr, i64, [1 x i64], [1 x i64] } %34, 2
  %38 = extractvalue { ptr, ptr, i64, [1 x i64], [1 x i64] } %34, 3, 0
  %39 = extractvalue { ptr, ptr, i64, [1 x i64], [1 x i64] } %34, 4, 0
  %40 = load { ptr, ptr, i64, [1 x i64], [1 x i64] }, ptr %7, align 8
  %41 = extractvalue { ptr, ptr, i64, [1 x i64], [1 x i64] } %40, 0
  %42 = extractvalue { ptr, ptr, i64, [1 x i64], [1 x i64] } %40, 1
  %43 = extractvalue { ptr, ptr, i64, [1 x i64], [1 x i64] } %40, 2
  %44 = extractvalue { ptr, ptr, i64, [1 x i64], [1 x i64] } %40, 3, 0
  %45 = extractvalue { ptr, ptr, i64, [1 x i64], [1 x i64] } %40, 4, 0
  %46 = call { { ptr, ptr, i64, [1 x i64], [1 x i64] }, { [2 x i64], [1 x i64] } } @SpMSpMd.Z.0.main(ptr %11, ptr %12, i64 %13, i64 %14, i64 %15, ptr %17, ptr %18, i64 %19, i64 %20, i64 %21, ptr %23, ptr %24, i64 %25, i64 %26, i64 %27, { [2 x i64], [3 x i64] } %4, ptr %29, ptr %30, i64 %31, i64 %32, i64 %33, ptr %35, ptr %36, i64 %37, i64 %38, i64 %39, ptr %41, ptr %42, i64 %43, i64 %44, i64 %45, { [2 x i64], [3 x i64] } %8)
  store { { ptr, ptr, i64, [1 x i64], [1 x i64] }, { [2 x i64], [1 x i64] } } %46, ptr %0, align 8
  ret void
}

; Function Attrs: nounwind
declare i32 @__kmpc_global_thread_num(ptr) #1

; Function Attrs: nounwind
declare void @__kmpc_for_static_init_8u(ptr, i32, i32, ptr, ptr, ptr, ptr, i64, i64) #1

; Function Attrs: nounwind
declare void @__kmpc_for_static_fini(ptr, i32) #1

; Function Attrs: convergent nounwind
declare void @__kmpc_barrier(ptr, i32) #2

; Function Attrs: nounwind
declare !callback !1 void @__kmpc_fork_call(ptr, i32, ptr, ...) #1

attributes #0 = { norecurse nounwind }
attributes #1 = { nounwind }
attributes #2 = { convergent nounwind }

!llvm.module.flags = !{!0}

!0 = !{i32 2, !"Debug Info Version", i32 3}
!1 = !{!2}
!2 = !{i64 2, i64 -1, i64 -1, i1 true}
