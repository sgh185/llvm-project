; ModuleID = 'LLVMDialectModule'
source_filename = "LLVMDialectModule"

%struct.ident_t = type { i32, i32, i32, i32, ptr }

@0 = private unnamed_addr constant [23 x i8] c";unknown;unknown;0;0;;\00", align 1
@1 = private unnamed_addr constant %struct.ident_t { i32 0, i32 2, i32 0, i32 22, ptr @0 }, align 8
@2 = private unnamed_addr constant %struct.ident_t { i32 0, i32 66, i32 0, i32 22, ptr @0 }, align 8
@3 = private unnamed_addr constant %struct.ident_t { i32 0, i32 18, i32 0, i32 22, ptr @0 }, align 8
@.gomp_critical_user_.reduction.var = common global [8 x i32] zeroinitializer, align 4

declare ptr @malloc(i64)

declare void @free(ptr)

define { { ptr, ptr, i64, [1 x i64], [1 x i64] }, { [3 x i64], [1 x i64] } } @SpTMMul.Z.0.main(ptr %0, ptr %1, i64 %2, i64 %3, i64 %4, ptr %5, ptr %6, i64 %7, i64 %8, i64 %9, ptr %10, ptr %11, i64 %12, i64 %13, i64 %14, ptr %15, ptr %16, i64 %17, i64 %18, i64 %19, ptr %20, ptr %21, i64 %22, i64 %23, i64 %24, ptr %25, ptr %26, i64 %27, i64 %28, i64 %29, ptr %30, ptr %31, i64 %32, i64 %33, i64 %34, { [3 x i64], [7 x i64] } %35, ptr %36, ptr %37, i64 %38, i64 %39, i64 %40, { [2 x i64], [1 x i64] } %41) {
  %structArg137 = alloca { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }, align 8
  %.reloaded126 = alloca i64, align 8
  %.reloaded127 = alloca i64, align 8
  %.reloaded128 = alloca { ptr, ptr, i64, [1 x i64], [1 x i64] }, align 8
  %.reloaded129 = alloca { ptr, ptr, i64, [1 x i64], [1 x i64] }, align 8
  %.reloaded130 = alloca { ptr, ptr, i64, [1 x i64], [1 x i64] }, align 8
  %.reloaded131 = alloca { ptr, ptr, i64, [1 x i64], [1 x i64] }, align 8
  %.reloaded132 = alloca { ptr, ptr, i64, [1 x i64], [1 x i64] }, align 8
  %.reloaded133 = alloca { ptr, ptr, i64, [1 x i64], [1 x i64] }, align 8
  %.reloaded134 = alloca { ptr, ptr, i64, [1 x i64], [1 x i64] }, align 8
  %43 = insertvalue { ptr, ptr, i64, [1 x i64], [1 x i64] } undef, ptr %0, 0
  %44 = insertvalue { ptr, ptr, i64, [1 x i64], [1 x i64] } %43, ptr %1, 1
  %45 = insertvalue { ptr, ptr, i64, [1 x i64], [1 x i64] } %44, i64 %2, 2
  %46 = insertvalue { ptr, ptr, i64, [1 x i64], [1 x i64] } %45, i64 %3, 3, 0
  %47 = insertvalue { ptr, ptr, i64, [1 x i64], [1 x i64] } %46, i64 %4, 4, 0
  %48 = insertvalue { ptr, ptr, i64, [1 x i64], [1 x i64] } undef, ptr %5, 0
  %49 = insertvalue { ptr, ptr, i64, [1 x i64], [1 x i64] } %48, ptr %6, 1
  %50 = insertvalue { ptr, ptr, i64, [1 x i64], [1 x i64] } %49, i64 %7, 2
  %51 = insertvalue { ptr, ptr, i64, [1 x i64], [1 x i64] } %50, i64 %8, 3, 0
  %52 = insertvalue { ptr, ptr, i64, [1 x i64], [1 x i64] } %51, i64 %9, 4, 0
  %53 = insertvalue { ptr, ptr, i64, [1 x i64], [1 x i64] } undef, ptr %10, 0
  %54 = insertvalue { ptr, ptr, i64, [1 x i64], [1 x i64] } %53, ptr %11, 1
  %55 = insertvalue { ptr, ptr, i64, [1 x i64], [1 x i64] } %54, i64 %12, 2
  %56 = insertvalue { ptr, ptr, i64, [1 x i64], [1 x i64] } %55, i64 %13, 3, 0
  %57 = insertvalue { ptr, ptr, i64, [1 x i64], [1 x i64] } %56, i64 %14, 4, 0
  %58 = insertvalue { ptr, ptr, i64, [1 x i64], [1 x i64] } undef, ptr %15, 0
  %59 = insertvalue { ptr, ptr, i64, [1 x i64], [1 x i64] } %58, ptr %16, 1
  %60 = insertvalue { ptr, ptr, i64, [1 x i64], [1 x i64] } %59, i64 %17, 2
  %61 = insertvalue { ptr, ptr, i64, [1 x i64], [1 x i64] } %60, i64 %18, 3, 0
  %62 = insertvalue { ptr, ptr, i64, [1 x i64], [1 x i64] } %61, i64 %19, 4, 0
  %63 = insertvalue { ptr, ptr, i64, [1 x i64], [1 x i64] } undef, ptr %20, 0
  %64 = insertvalue { ptr, ptr, i64, [1 x i64], [1 x i64] } %63, ptr %21, 1
  %65 = insertvalue { ptr, ptr, i64, [1 x i64], [1 x i64] } %64, i64 %22, 2
  %66 = insertvalue { ptr, ptr, i64, [1 x i64], [1 x i64] } %65, i64 %23, 3, 0
  %67 = insertvalue { ptr, ptr, i64, [1 x i64], [1 x i64] } %66, i64 %24, 4, 0
  %68 = insertvalue { ptr, ptr, i64, [1 x i64], [1 x i64] } undef, ptr %25, 0
  %69 = insertvalue { ptr, ptr, i64, [1 x i64], [1 x i64] } %68, ptr %26, 1
  %70 = insertvalue { ptr, ptr, i64, [1 x i64], [1 x i64] } %69, i64 %27, 2
  %71 = insertvalue { ptr, ptr, i64, [1 x i64], [1 x i64] } %70, i64 %28, 3, 0
  %72 = insertvalue { ptr, ptr, i64, [1 x i64], [1 x i64] } %71, i64 %29, 4, 0
  %73 = insertvalue { ptr, ptr, i64, [1 x i64], [1 x i64] } undef, ptr %30, 0
  %74 = insertvalue { ptr, ptr, i64, [1 x i64], [1 x i64] } %73, ptr %31, 1
  %75 = insertvalue { ptr, ptr, i64, [1 x i64], [1 x i64] } %74, i64 %32, 2
  %76 = insertvalue { ptr, ptr, i64, [1 x i64], [1 x i64] } %75, i64 %33, 3, 0
  %77 = insertvalue { ptr, ptr, i64, [1 x i64], [1 x i64] } %76, i64 %34, 4, 0
  %78 = insertvalue { ptr, ptr, i64, [1 x i64], [1 x i64] } undef, ptr %36, 0
  %79 = insertvalue { ptr, ptr, i64, [1 x i64], [1 x i64] } %78, ptr %37, 1
  %80 = insertvalue { ptr, ptr, i64, [1 x i64], [1 x i64] } %79, i64 %38, 2
  %81 = insertvalue { ptr, ptr, i64, [1 x i64], [1 x i64] } %80, i64 %39, 3, 0
  %82 = insertvalue { ptr, ptr, i64, [1 x i64], [1 x i64] } %81, i64 %40, 4, 0
  %83 = call ptr @malloc(i64 ptrtoint (ptr getelementptr (float, ptr null, i32 32768) to i64))
  %84 = insertvalue { ptr, ptr, i64, [1 x i64], [1 x i64] } undef, ptr %83, 0
  %85 = insertvalue { ptr, ptr, i64, [1 x i64], [1 x i64] } %84, ptr %83, 1
  %86 = insertvalue { ptr, ptr, i64, [1 x i64], [1 x i64] } %85, i64 0, 2
  %87 = insertvalue { ptr, ptr, i64, [1 x i64], [1 x i64] } %86, i64 32768, 3, 0
  %88 = insertvalue { ptr, ptr, i64, [1 x i64], [1 x i64] } %87, i64 1, 4, 0
  br label %89

89:                                               ; preds = %92, %42
  %90 = phi i64 [ %94, %92 ], [ 0, %42 ]
  %91 = icmp slt i64 %90, 32768
  br i1 %91, label %92, label %95

92:                                               ; preds = %89
  %93 = getelementptr float, ptr %83, i64 %90
  store float 0.000000e+00, ptr %93, align 4
  %94 = add i64 %90, 1
  br label %89

95:                                               ; preds = %89
  %96 = extractvalue { ptr, ptr, i64, [1 x i64], [1 x i64] } %47, 1
  %97 = getelementptr i64, ptr %96, i64 0
  %98 = load i64, ptr %97, align 4
  %99 = extractvalue { ptr, ptr, i64, [1 x i64], [1 x i64] } %47, 1
  %100 = getelementptr i64, ptr %99, i64 1
  %101 = load i64, ptr %100, align 4
  %omp_global_thread_num = call i32 @__kmpc_global_thread_num(ptr @1)
  store i64 %101, ptr %.reloaded126, align 4
  store i64 %98, ptr %.reloaded127, align 4
  store { ptr, ptr, i64, [1 x i64], [1 x i64] } %52, ptr %.reloaded128, align 8
  store { ptr, ptr, i64, [1 x i64], [1 x i64] } %57, ptr %.reloaded129, align 8
  store { ptr, ptr, i64, [1 x i64], [1 x i64] } %62, ptr %.reloaded130, align 8
  store { ptr, ptr, i64, [1 x i64], [1 x i64] } %67, ptr %.reloaded131, align 8
  store { ptr, ptr, i64, [1 x i64], [1 x i64] } %72, ptr %.reloaded132, align 8
  store { ptr, ptr, i64, [1 x i64], [1 x i64] } %77, ptr %.reloaded133, align 8
  store { ptr, ptr, i64, [1 x i64], [1 x i64] } %82, ptr %.reloaded134, align 8
  br label %omp_parallel

omp_parallel:                                     ; preds = %95
  %gep_.reloaded126 = getelementptr { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }, ptr %structArg137, i32 0, i32 0
  store ptr %.reloaded126, ptr %gep_.reloaded126, align 8
  %gep_.reloaded127 = getelementptr { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }, ptr %structArg137, i32 0, i32 1
  store ptr %.reloaded127, ptr %gep_.reloaded127, align 8
  %gep_.reloaded128 = getelementptr { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }, ptr %structArg137, i32 0, i32 2
  store ptr %.reloaded128, ptr %gep_.reloaded128, align 8
  %gep_.reloaded129 = getelementptr { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }, ptr %structArg137, i32 0, i32 3
  store ptr %.reloaded129, ptr %gep_.reloaded129, align 8
  %gep_.reloaded130 = getelementptr { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }, ptr %structArg137, i32 0, i32 4
  store ptr %.reloaded130, ptr %gep_.reloaded130, align 8
  %gep_.reloaded131 = getelementptr { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }, ptr %structArg137, i32 0, i32 5
  store ptr %.reloaded131, ptr %gep_.reloaded131, align 8
  %gep_.reloaded132 = getelementptr { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }, ptr %structArg137, i32 0, i32 6
  store ptr %.reloaded132, ptr %gep_.reloaded132, align 8
  %gep_.reloaded133 = getelementptr { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }, ptr %structArg137, i32 0, i32 7
  store ptr %.reloaded133, ptr %gep_.reloaded133, align 8
  %gep_.reloaded134 = getelementptr { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }, ptr %structArg137, i32 0, i32 8
  store ptr %.reloaded134, ptr %gep_.reloaded134, align 8
  %gep_138 = getelementptr { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }, ptr %structArg137, i32 0, i32 9
  store ptr %83, ptr %gep_138, align 8
  call void (ptr, i32, ptr, ...) @__kmpc_fork_call(ptr @1, i32 1, ptr @SpTMMul.Z.0.main..omp_par.3, ptr %structArg137)
  br label %omp.par.outlined.exit125

omp.par.outlined.exit125:                         ; preds = %omp_parallel
  br label %omp.par.exit.split

omp.par.exit.split:                               ; preds = %omp.par.outlined.exit125
  %102 = insertvalue { { ptr, ptr, i64, [1 x i64], [1 x i64] }, { [3 x i64], [1 x i64] } } undef, { ptr, ptr, i64, [1 x i64], [1 x i64] } %88, 0
  %103 = insertvalue { { ptr, ptr, i64, [1 x i64], [1 x i64] }, { [3 x i64], [1 x i64] } } %102, { [3 x i64], [1 x i64] } { [3 x i64] [i64 16, i64 32, i64 64], [1 x i64] [i64 32768] }, 1
  ret { { ptr, ptr, i64, [1 x i64], [1 x i64] }, { [3 x i64], [1 x i64] } } %103
}

; Function Attrs: norecurse nounwind
define internal void @SpTMMul.Z.0.main..omp_par.3(ptr noalias %tid.addr, ptr noalias %zero.addr, ptr %0) #0 {
omp.par.entry:
  %gep_.reloaded126 = getelementptr { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }, ptr %0, i32 0, i32 0
  %loadgep_.reloaded126 = load ptr, ptr %gep_.reloaded126, align 8
  %gep_.reloaded127 = getelementptr { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }, ptr %0, i32 0, i32 1
  %loadgep_.reloaded127 = load ptr, ptr %gep_.reloaded127, align 8
  %gep_.reloaded128 = getelementptr { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }, ptr %0, i32 0, i32 2
  %loadgep_.reloaded128 = load ptr, ptr %gep_.reloaded128, align 8
  %gep_.reloaded129 = getelementptr { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }, ptr %0, i32 0, i32 3
  %loadgep_.reloaded129 = load ptr, ptr %gep_.reloaded129, align 8
  %gep_.reloaded130 = getelementptr { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }, ptr %0, i32 0, i32 4
  %loadgep_.reloaded130 = load ptr, ptr %gep_.reloaded130, align 8
  %gep_.reloaded131 = getelementptr { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }, ptr %0, i32 0, i32 5
  %loadgep_.reloaded131 = load ptr, ptr %gep_.reloaded131, align 8
  %gep_.reloaded132 = getelementptr { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }, ptr %0, i32 0, i32 6
  %loadgep_.reloaded132 = load ptr, ptr %gep_.reloaded132, align 8
  %gep_.reloaded133 = getelementptr { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }, ptr %0, i32 0, i32 7
  %loadgep_.reloaded133 = load ptr, ptr %gep_.reloaded133, align 8
  %gep_.reloaded134 = getelementptr { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }, ptr %0, i32 0, i32 8
  %loadgep_.reloaded134 = load ptr, ptr %gep_.reloaded134, align 8
  %gep_ = getelementptr { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }, ptr %0, i32 0, i32 9
  %loadgep_ = load ptr, ptr %gep_, align 8
  %structArg = alloca { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }, align 8
  %.reloaded111 = alloca i64, align 8
  %.reloaded112 = alloca i64, align 8
  %.reloaded113 = alloca { ptr, ptr, i64, [1 x i64], [1 x i64] }, align 8
  %.reloaded114 = alloca i64, align 8
  %.reloaded115 = alloca { ptr, ptr, i64, [1 x i64], [1 x i64] }, align 8
  %.reloaded116 = alloca { ptr, ptr, i64, [1 x i64], [1 x i64] }, align 8
  %.reloaded117 = alloca { ptr, ptr, i64, [1 x i64], [1 x i64] }, align 8
  %.reloaded118 = alloca { ptr, ptr, i64, [1 x i64], [1 x i64] }, align 8
  %tid.addr.local = alloca i32, align 4
  %1 = load i32, ptr %tid.addr, align 4
  store i32 %1, ptr %tid.addr.local, align 4
  %tid = load i32, ptr %tid.addr.local, align 4
  %2 = load i64, ptr %loadgep_.reloaded126, align 4
  %3 = load i64, ptr %loadgep_.reloaded127, align 4
  %4 = load { ptr, ptr, i64, [1 x i64], [1 x i64] }, ptr %loadgep_.reloaded128, align 8
  %5 = load { ptr, ptr, i64, [1 x i64], [1 x i64] }, ptr %loadgep_.reloaded129, align 8
  %6 = load { ptr, ptr, i64, [1 x i64], [1 x i64] }, ptr %loadgep_.reloaded130, align 8
  %7 = load { ptr, ptr, i64, [1 x i64], [1 x i64] }, ptr %loadgep_.reloaded131, align 8
  %8 = load { ptr, ptr, i64, [1 x i64], [1 x i64] }, ptr %loadgep_.reloaded132, align 8
  %9 = load { ptr, ptr, i64, [1 x i64], [1 x i64] }, ptr %loadgep_.reloaded133, align 8
  %10 = load { ptr, ptr, i64, [1 x i64], [1 x i64] }, ptr %loadgep_.reloaded134, align 8
  %p.lastiter119 = alloca i32, align 4
  %p.lowerbound120 = alloca i64, align 8
  %p.upperbound121 = alloca i64, align 8
  %p.stride122 = alloca i64, align 8
  br label %omp.par.region

omp.par.region:                                   ; preds = %omp.par.entry
  br label %omp.par.region1

omp.par.region1:                                  ; preds = %omp.par.region
  %11 = select i1 false, i64 %2, i64 %3
  %12 = select i1 false, i64 %3, i64 %2
  %13 = sub nsw i64 %12, %11
  %14 = icmp sle i64 %12, %11
  %15 = sub i64 %13, 1
  %16 = udiv i64 %15, 1
  %17 = add i64 %16, 1
  %18 = icmp ule i64 %13, 1
  %19 = select i1 %18, i64 1, i64 %17
  %omp_loop.tripcount = select i1 %14, i64 0, i64 %19
  br label %omp_loop.preheader

omp_loop.preheader:                               ; preds = %omp.par.region1
  store i64 0, ptr %p.lowerbound120, align 4
  %20 = sub i64 %omp_loop.tripcount, 1
  store i64 %20, ptr %p.upperbound121, align 4
  store i64 1, ptr %p.stride122, align 4
  %omp_global_thread_num123 = call i32 @__kmpc_global_thread_num(ptr @1)
  call void @__kmpc_for_static_init_8u(ptr @1, i32 %omp_global_thread_num123, i32 34, ptr %p.lastiter119, ptr %p.lowerbound120, ptr %p.upperbound121, ptr %p.stride122, i64 1, i64 0)
  %21 = load i64, ptr %p.lowerbound120, align 4
  %22 = load i64, ptr %p.upperbound121, align 4
  %23 = sub i64 %22, %21
  %24 = add i64 %23, 1
  br label %omp_loop.header

omp_loop.header:                                  ; preds = %omp_loop.inc, %omp_loop.preheader
  %omp_loop.iv = phi i64 [ 0, %omp_loop.preheader ], [ %omp_loop.next, %omp_loop.inc ]
  br label %omp_loop.cond

omp_loop.cond:                                    ; preds = %omp_loop.header
  %omp_loop.cmp = icmp ult i64 %omp_loop.iv, %24
  br i1 %omp_loop.cmp, label %omp_loop.body, label %omp_loop.exit

omp_loop.exit:                                    ; preds = %omp_loop.cond
  call void @__kmpc_for_static_fini(ptr @1, i32 %omp_global_thread_num123)
  %omp_global_thread_num124 = call i32 @__kmpc_global_thread_num(ptr @1)
  call void @__kmpc_barrier(ptr @2, i32 %omp_global_thread_num124)
  br label %omp_loop.after

omp_loop.after:                                   ; preds = %omp_loop.exit
  br label %omp.region.cont

omp.region.cont:                                  ; preds = %omp_loop.after
  br label %omp.par.pre_finalize

omp.par.pre_finalize:                             ; preds = %omp.region.cont
  br label %omp.par.outlined.exit125.exitStub

omp_loop.body:                                    ; preds = %omp_loop.cond
  %25 = add i64 %omp_loop.iv, %21
  %26 = mul i64 %25, 1
  %27 = add i64 %26, %3
  br label %omp.wsloop.region

omp.wsloop.region:                                ; preds = %omp_loop.body
  %28 = extractvalue { ptr, ptr, i64, [1 x i64], [1 x i64] } %4, 1
  %29 = getelementptr i64, ptr %28, i64 %27
  %30 = load i64, ptr %29, align 4
  %31 = extractvalue { ptr, ptr, i64, [1 x i64], [1 x i64] } %5, 1
  %32 = getelementptr i64, ptr %31, i64 %27
  %33 = load i64, ptr %32, align 4
  %34 = add i64 %27, 1
  %35 = extractvalue { ptr, ptr, i64, [1 x i64], [1 x i64] } %5, 1
  %36 = getelementptr i64, ptr %35, i64 %34
  %37 = load i64, ptr %36, align 4
  %omp_global_thread_num3 = call i32 @__kmpc_global_thread_num(ptr @1)
  store i64 %37, ptr %.reloaded111, align 4
  store i64 %33, ptr %.reloaded112, align 4
  store { ptr, ptr, i64, [1 x i64], [1 x i64] } %6, ptr %.reloaded113, align 8
  store i64 %30, ptr %.reloaded114, align 4
  store { ptr, ptr, i64, [1 x i64], [1 x i64] } %7, ptr %.reloaded115, align 8
  store { ptr, ptr, i64, [1 x i64], [1 x i64] } %8, ptr %.reloaded116, align 8
  store { ptr, ptr, i64, [1 x i64], [1 x i64] } %9, ptr %.reloaded117, align 8
  store { ptr, ptr, i64, [1 x i64], [1 x i64] } %10, ptr %.reloaded118, align 8
  br label %omp_parallel

omp_parallel:                                     ; preds = %omp.wsloop.region
  %gep_.reloaded111 = getelementptr { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }, ptr %structArg, i32 0, i32 0
  store ptr %.reloaded111, ptr %gep_.reloaded111, align 8
  %gep_.reloaded112 = getelementptr { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }, ptr %structArg, i32 0, i32 1
  store ptr %.reloaded112, ptr %gep_.reloaded112, align 8
  %gep_.reloaded113 = getelementptr { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }, ptr %structArg, i32 0, i32 2
  store ptr %.reloaded113, ptr %gep_.reloaded113, align 8
  %gep_.reloaded114 = getelementptr { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }, ptr %structArg, i32 0, i32 3
  store ptr %.reloaded114, ptr %gep_.reloaded114, align 8
  %gep_.reloaded115 = getelementptr { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }, ptr %structArg, i32 0, i32 4
  store ptr %.reloaded115, ptr %gep_.reloaded115, align 8
  %gep_.reloaded116 = getelementptr { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }, ptr %structArg, i32 0, i32 5
  store ptr %.reloaded116, ptr %gep_.reloaded116, align 8
  %gep_.reloaded117 = getelementptr { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }, ptr %structArg, i32 0, i32 6
  store ptr %.reloaded117, ptr %gep_.reloaded117, align 8
  %gep_.reloaded118 = getelementptr { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }, ptr %structArg, i32 0, i32 7
  store ptr %.reloaded118, ptr %gep_.reloaded118, align 8
  %gep_1 = getelementptr { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }, ptr %structArg, i32 0, i32 8
  store ptr %loadgep_, ptr %gep_1, align 8
  call void (ptr, i32, ptr, ...) @__kmpc_fork_call(ptr @1, i32 1, ptr @SpTMMul.Z.0.main..omp_par.2, ptr %structArg)
  br label %omp.par.outlined.exit110

omp.par.outlined.exit110:                         ; preds = %omp_parallel
  br label %omp.par.exit9.split

omp.par.exit9.split:                              ; preds = %omp.par.outlined.exit110
  br label %omp.region.cont2

omp.region.cont2:                                 ; preds = %omp.par.exit9.split
  br label %omp_loop.inc

omp_loop.inc:                                     ; preds = %omp.region.cont2
  %omp_loop.next = add nuw i64 %omp_loop.iv, 1
  br label %omp_loop.header

omp.par.outlined.exit125.exitStub:                ; preds = %omp.par.pre_finalize
  ret void
}

; Function Attrs: norecurse nounwind
define internal void @SpTMMul.Z.0.main..omp_par.2(ptr noalias %tid.addr4, ptr noalias %zero.addr5, ptr %0) #0 {
omp.par.entry6:
  %gep_.reloaded111 = getelementptr { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }, ptr %0, i32 0, i32 0
  %loadgep_.reloaded111 = load ptr, ptr %gep_.reloaded111, align 8
  %gep_.reloaded112 = getelementptr { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }, ptr %0, i32 0, i32 1
  %loadgep_.reloaded112 = load ptr, ptr %gep_.reloaded112, align 8
  %gep_.reloaded113 = getelementptr { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }, ptr %0, i32 0, i32 2
  %loadgep_.reloaded113 = load ptr, ptr %gep_.reloaded113, align 8
  %gep_.reloaded114 = getelementptr { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }, ptr %0, i32 0, i32 3
  %loadgep_.reloaded114 = load ptr, ptr %gep_.reloaded114, align 8
  %gep_.reloaded115 = getelementptr { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }, ptr %0, i32 0, i32 4
  %loadgep_.reloaded115 = load ptr, ptr %gep_.reloaded115, align 8
  %gep_.reloaded116 = getelementptr { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }, ptr %0, i32 0, i32 5
  %loadgep_.reloaded116 = load ptr, ptr %gep_.reloaded116, align 8
  %gep_.reloaded117 = getelementptr { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }, ptr %0, i32 0, i32 6
  %loadgep_.reloaded117 = load ptr, ptr %gep_.reloaded117, align 8
  %gep_.reloaded118 = getelementptr { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }, ptr %0, i32 0, i32 7
  %loadgep_.reloaded118 = load ptr, ptr %gep_.reloaded118, align 8
  %gep_ = getelementptr { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }, ptr %0, i32 0, i32 8
  %loadgep_ = load ptr, ptr %gep_, align 8
  %structArg135 = alloca { ptr, ptr, ptr, ptr, ptr, ptr, ptr }, align 8
  %.reloaded98 = alloca i64, align 8
  %.reloaded99 = alloca { ptr, ptr, i64, [1 x i64], [1 x i64] }, align 8
  %.reloaded100 = alloca i64, align 8
  %.reloaded101 = alloca { ptr, ptr, i64, [1 x i64], [1 x i64] }, align 8
  %.reloaded102 = alloca { ptr, ptr, i64, [1 x i64], [1 x i64] }, align 8
  %.reloaded103 = alloca { ptr, ptr, i64, [1 x i64], [1 x i64] }, align 8
  %tid.addr.local10 = alloca i32, align 4
  %1 = load i32, ptr %tid.addr4, align 4
  store i32 %1, ptr %tid.addr.local10, align 4
  %tid11 = load i32, ptr %tid.addr.local10, align 4
  %2 = load i64, ptr %loadgep_.reloaded111, align 4
  %3 = load i64, ptr %loadgep_.reloaded112, align 4
  %4 = load { ptr, ptr, i64, [1 x i64], [1 x i64] }, ptr %loadgep_.reloaded113, align 8
  %5 = load i64, ptr %loadgep_.reloaded114, align 4
  %6 = load { ptr, ptr, i64, [1 x i64], [1 x i64] }, ptr %loadgep_.reloaded115, align 8
  %7 = load { ptr, ptr, i64, [1 x i64], [1 x i64] }, ptr %loadgep_.reloaded116, align 8
  %8 = load { ptr, ptr, i64, [1 x i64], [1 x i64] }, ptr %loadgep_.reloaded117, align 8
  %9 = load { ptr, ptr, i64, [1 x i64], [1 x i64] }, ptr %loadgep_.reloaded118, align 8
  %p.lastiter104 = alloca i32, align 4
  %p.lowerbound105 = alloca i64, align 8
  %p.upperbound106 = alloca i64, align 8
  %p.stride107 = alloca i64, align 8
  br label %omp.par.region7

omp.par.region7:                                  ; preds = %omp.par.entry6
  br label %omp.par.region15

omp.par.region15:                                 ; preds = %omp.par.region7
  %10 = select i1 false, i64 %2, i64 %3
  %11 = select i1 false, i64 %3, i64 %2
  %12 = sub nsw i64 %11, %10
  %13 = icmp sle i64 %11, %10
  %14 = sub i64 %12, 1
  %15 = udiv i64 %14, 1
  %16 = add i64 %15, 1
  %17 = icmp ule i64 %12, 1
  %18 = select i1 %17, i64 1, i64 %16
  %omp_loop.tripcount16 = select i1 %13, i64 0, i64 %18
  br label %omp_loop.preheader17

omp_loop.preheader17:                             ; preds = %omp.par.region15
  store i64 0, ptr %p.lowerbound105, align 4
  %19 = sub i64 %omp_loop.tripcount16, 1
  store i64 %19, ptr %p.upperbound106, align 4
  store i64 1, ptr %p.stride107, align 4
  %omp_global_thread_num108 = call i32 @__kmpc_global_thread_num(ptr @1)
  call void @__kmpc_for_static_init_8u(ptr @1, i32 %omp_global_thread_num108, i32 34, ptr %p.lastiter104, ptr %p.lowerbound105, ptr %p.upperbound106, ptr %p.stride107, i64 1, i64 0)
  %20 = load i64, ptr %p.lowerbound105, align 4
  %21 = load i64, ptr %p.upperbound106, align 4
  %22 = sub i64 %21, %20
  %23 = add i64 %22, 1
  br label %omp_loop.header18

omp_loop.header18:                                ; preds = %omp_loop.inc21, %omp_loop.preheader17
  %omp_loop.iv24 = phi i64 [ 0, %omp_loop.preheader17 ], [ %omp_loop.next26, %omp_loop.inc21 ]
  br label %omp_loop.cond19

omp_loop.cond19:                                  ; preds = %omp_loop.header18
  %omp_loop.cmp25 = icmp ult i64 %omp_loop.iv24, %23
  br i1 %omp_loop.cmp25, label %omp_loop.body20, label %omp_loop.exit22

omp_loop.exit22:                                  ; preds = %omp_loop.cond19
  call void @__kmpc_for_static_fini(ptr @1, i32 %omp_global_thread_num108)
  %omp_global_thread_num109 = call i32 @__kmpc_global_thread_num(ptr @1)
  call void @__kmpc_barrier(ptr @2, i32 %omp_global_thread_num109)
  br label %omp_loop.after23

omp_loop.after23:                                 ; preds = %omp_loop.exit22
  br label %omp.region.cont14

omp.region.cont14:                                ; preds = %omp_loop.after23
  br label %omp.par.pre_finalize8

omp.par.pre_finalize8:                            ; preds = %omp.region.cont14
  br label %omp.par.outlined.exit110.exitStub

omp_loop.body20:                                  ; preds = %omp_loop.cond19
  %24 = add i64 %omp_loop.iv24, %20
  %25 = mul i64 %24, 1
  %26 = add i64 %25, %3
  br label %omp.wsloop.region28

omp.wsloop.region28:                              ; preds = %omp_loop.body20
  %27 = extractvalue { ptr, ptr, i64, [1 x i64], [1 x i64] } %4, 1
  %28 = getelementptr i64, ptr %27, i64 %26
  %29 = load i64, ptr %28, align 4
  %30 = mul i64 %5, 32
  %31 = add i64 %30, %29
  %omp_global_thread_num29 = call i32 @__kmpc_global_thread_num(ptr @1)
  store i64 %31, ptr %.reloaded98, align 4
  store { ptr, ptr, i64, [1 x i64], [1 x i64] } %6, ptr %.reloaded99, align 8
  store i64 %26, ptr %.reloaded100, align 4
  store { ptr, ptr, i64, [1 x i64], [1 x i64] } %7, ptr %.reloaded101, align 8
  store { ptr, ptr, i64, [1 x i64], [1 x i64] } %8, ptr %.reloaded102, align 8
  store { ptr, ptr, i64, [1 x i64], [1 x i64] } %9, ptr %.reloaded103, align 8
  br label %omp_parallel

omp_parallel:                                     ; preds = %omp.wsloop.region28
  %gep_.reloaded98 = getelementptr { ptr, ptr, ptr, ptr, ptr, ptr, ptr }, ptr %structArg135, i32 0, i32 0
  store ptr %.reloaded98, ptr %gep_.reloaded98, align 8
  %gep_.reloaded99 = getelementptr { ptr, ptr, ptr, ptr, ptr, ptr, ptr }, ptr %structArg135, i32 0, i32 1
  store ptr %.reloaded99, ptr %gep_.reloaded99, align 8
  %gep_.reloaded100 = getelementptr { ptr, ptr, ptr, ptr, ptr, ptr, ptr }, ptr %structArg135, i32 0, i32 2
  store ptr %.reloaded100, ptr %gep_.reloaded100, align 8
  %gep_.reloaded101 = getelementptr { ptr, ptr, ptr, ptr, ptr, ptr, ptr }, ptr %structArg135, i32 0, i32 3
  store ptr %.reloaded101, ptr %gep_.reloaded101, align 8
  %gep_.reloaded102 = getelementptr { ptr, ptr, ptr, ptr, ptr, ptr, ptr }, ptr %structArg135, i32 0, i32 4
  store ptr %.reloaded102, ptr %gep_.reloaded102, align 8
  %gep_.reloaded103 = getelementptr { ptr, ptr, ptr, ptr, ptr, ptr, ptr }, ptr %structArg135, i32 0, i32 5
  store ptr %.reloaded103, ptr %gep_.reloaded103, align 8
  %gep_136 = getelementptr { ptr, ptr, ptr, ptr, ptr, ptr, ptr }, ptr %structArg135, i32 0, i32 6
  store ptr %loadgep_, ptr %gep_136, align 8
  call void (ptr, i32, ptr, ...) @__kmpc_fork_call(ptr @1, i32 1, ptr @SpTMMul.Z.0.main..omp_par.1, ptr %structArg135)
  br label %omp.par.outlined.exit97

omp.par.outlined.exit97:                          ; preds = %omp_parallel
  br label %omp.par.exit35.split

omp.par.exit35.split:                             ; preds = %omp.par.outlined.exit97
  br label %omp.region.cont27

omp.region.cont27:                                ; preds = %omp.par.exit35.split
  br label %omp_loop.inc21

omp_loop.inc21:                                   ; preds = %omp.region.cont27
  %omp_loop.next26 = add nuw i64 %omp_loop.iv24, 1
  br label %omp_loop.header18

omp.par.outlined.exit110.exitStub:                ; preds = %omp.par.pre_finalize8
  ret void
}

; Function Attrs: norecurse nounwind
define internal void @SpTMMul.Z.0.main..omp_par.1(ptr noalias %tid.addr30, ptr noalias %zero.addr31, ptr %0) #0 {
omp.par.entry32:
  %gep_.reloaded98 = getelementptr { ptr, ptr, ptr, ptr, ptr, ptr, ptr }, ptr %0, i32 0, i32 0
  %loadgep_.reloaded98 = load ptr, ptr %gep_.reloaded98, align 8
  %gep_.reloaded99 = getelementptr { ptr, ptr, ptr, ptr, ptr, ptr, ptr }, ptr %0, i32 0, i32 1
  %loadgep_.reloaded99 = load ptr, ptr %gep_.reloaded99, align 8
  %gep_.reloaded100 = getelementptr { ptr, ptr, ptr, ptr, ptr, ptr, ptr }, ptr %0, i32 0, i32 2
  %loadgep_.reloaded100 = load ptr, ptr %gep_.reloaded100, align 8
  %gep_.reloaded101 = getelementptr { ptr, ptr, ptr, ptr, ptr, ptr, ptr }, ptr %0, i32 0, i32 3
  %loadgep_.reloaded101 = load ptr, ptr %gep_.reloaded101, align 8
  %gep_.reloaded102 = getelementptr { ptr, ptr, ptr, ptr, ptr, ptr, ptr }, ptr %0, i32 0, i32 4
  %loadgep_.reloaded102 = load ptr, ptr %gep_.reloaded102, align 8
  %gep_.reloaded103 = getelementptr { ptr, ptr, ptr, ptr, ptr, ptr, ptr }, ptr %0, i32 0, i32 5
  %loadgep_.reloaded103 = load ptr, ptr %gep_.reloaded103, align 8
  %gep_ = getelementptr { ptr, ptr, ptr, ptr, ptr, ptr, ptr }, ptr %0, i32 0, i32 6
  %loadgep_ = load ptr, ptr %gep_, align 8
  %structArg = alloca { ptr, ptr, ptr, ptr, ptr, ptr, ptr }, align 8
  %.reloaded = alloca i64, align 8
  %.reloaded86 = alloca i64, align 8
  %.reloaded87 = alloca { ptr, ptr, i64, [1 x i64], [1 x i64] }, align 8
  %.reloaded88 = alloca i64, align 8
  %.reloaded89 = alloca { ptr, ptr, i64, [1 x i64], [1 x i64] }, align 8
  %.reloaded90 = alloca { ptr, ptr, i64, [1 x i64], [1 x i64] }, align 8
  %tid.addr.local36 = alloca i32, align 4
  %1 = load i32, ptr %tid.addr30, align 4
  store i32 %1, ptr %tid.addr.local36, align 4
  %tid37 = load i32, ptr %tid.addr.local36, align 4
  %2 = load i64, ptr %loadgep_.reloaded98, align 4
  %3 = load { ptr, ptr, i64, [1 x i64], [1 x i64] }, ptr %loadgep_.reloaded99, align 8
  %4 = load i64, ptr %loadgep_.reloaded100, align 4
  %5 = load { ptr, ptr, i64, [1 x i64], [1 x i64] }, ptr %loadgep_.reloaded101, align 8
  %6 = load { ptr, ptr, i64, [1 x i64], [1 x i64] }, ptr %loadgep_.reloaded102, align 8
  %7 = load { ptr, ptr, i64, [1 x i64], [1 x i64] }, ptr %loadgep_.reloaded103, align 8
  %p.lastiter91 = alloca i32, align 4
  %p.lowerbound92 = alloca i64, align 8
  %p.upperbound93 = alloca i64, align 8
  %p.stride94 = alloca i64, align 8
  br label %omp.par.region33

omp.par.region33:                                 ; preds = %omp.par.entry32
  br label %omp.par.region41

omp.par.region41:                                 ; preds = %omp.par.region33
  %8 = alloca float, i64 1, align 4
  br label %omp_loop.preheader42

omp_loop.preheader42:                             ; preds = %omp.par.region41
  store i64 0, ptr %p.lowerbound92, align 4
  store i64 63, ptr %p.upperbound93, align 4
  store i64 1, ptr %p.stride94, align 4
  %omp_global_thread_num95 = call i32 @__kmpc_global_thread_num(ptr @1)
  call void @__kmpc_for_static_init_8u(ptr @1, i32 %omp_global_thread_num95, i32 34, ptr %p.lastiter91, ptr %p.lowerbound92, ptr %p.upperbound93, ptr %p.stride94, i64 1, i64 0)
  %9 = load i64, ptr %p.lowerbound92, align 4
  %10 = load i64, ptr %p.upperbound93, align 4
  %11 = sub i64 %10, %9
  %12 = add i64 %11, 1
  br label %omp_loop.header43

omp_loop.header43:                                ; preds = %omp_loop.inc46, %omp_loop.preheader42
  %omp_loop.iv49 = phi i64 [ 0, %omp_loop.preheader42 ], [ %omp_loop.next51, %omp_loop.inc46 ]
  br label %omp_loop.cond44

omp_loop.cond44:                                  ; preds = %omp_loop.header43
  %omp_loop.cmp50 = icmp ult i64 %omp_loop.iv49, %12
  br i1 %omp_loop.cmp50, label %omp_loop.body45, label %omp_loop.exit47

omp_loop.exit47:                                  ; preds = %omp_loop.cond44
  call void @__kmpc_for_static_fini(ptr @1, i32 %omp_global_thread_num95)
  %omp_global_thread_num96 = call i32 @__kmpc_global_thread_num(ptr @1)
  call void @__kmpc_barrier(ptr @2, i32 %omp_global_thread_num96)
  br label %omp_loop.after48

omp_loop.after48:                                 ; preds = %omp_loop.exit47
  br label %omp.region.cont40

omp.region.cont40:                                ; preds = %omp_loop.after48
  br label %omp.par.pre_finalize34

omp.par.pre_finalize34:                           ; preds = %omp.region.cont40
  br label %omp.par.outlined.exit97.exitStub

omp_loop.body45:                                  ; preds = %omp_loop.cond44
  %13 = add i64 %omp_loop.iv49, %9
  %14 = mul i64 %13, 1
  %15 = add i64 %14, 0
  br label %omp.wsloop.region53

omp.wsloop.region53:                              ; preds = %omp_loop.body45
  %16 = mul i64 %2, 64
  %17 = add i64 %16, %15
  %18 = getelementptr float, ptr %loadgep_, i64 %17
  %19 = load float, ptr %18, align 4
  %20 = extractvalue { ptr, ptr, i64, [1 x i64], [1 x i64] } %3, 1
  %21 = getelementptr i64, ptr %20, i64 %4
  %22 = load i64, ptr %21, align 4
  %23 = add i64 %4, 1
  %24 = extractvalue { ptr, ptr, i64, [1 x i64], [1 x i64] } %3, 1
  %25 = getelementptr i64, ptr %24, i64 %23
  %26 = load i64, ptr %25, align 4
  store float %19, ptr %8, align 4
  %omp_global_thread_num54 = call i32 @__kmpc_global_thread_num(ptr @1)
  store i64 %26, ptr %.reloaded, align 4
  store i64 %22, ptr %.reloaded86, align 4
  store { ptr, ptr, i64, [1 x i64], [1 x i64] } %5, ptr %.reloaded87, align 8
  store i64 %15, ptr %.reloaded88, align 4
  store { ptr, ptr, i64, [1 x i64], [1 x i64] } %6, ptr %.reloaded89, align 8
  store { ptr, ptr, i64, [1 x i64], [1 x i64] } %7, ptr %.reloaded90, align 8
  br label %omp_parallel

omp_parallel:                                     ; preds = %omp.wsloop.region53
  %gep_.reloaded = getelementptr { ptr, ptr, ptr, ptr, ptr, ptr, ptr }, ptr %structArg, i32 0, i32 0
  store ptr %.reloaded, ptr %gep_.reloaded, align 8
  %gep_.reloaded86 = getelementptr { ptr, ptr, ptr, ptr, ptr, ptr, ptr }, ptr %structArg, i32 0, i32 1
  store ptr %.reloaded86, ptr %gep_.reloaded86, align 8
  %gep_.reloaded87 = getelementptr { ptr, ptr, ptr, ptr, ptr, ptr, ptr }, ptr %structArg, i32 0, i32 2
  store ptr %.reloaded87, ptr %gep_.reloaded87, align 8
  %gep_.reloaded88 = getelementptr { ptr, ptr, ptr, ptr, ptr, ptr, ptr }, ptr %structArg, i32 0, i32 3
  store ptr %.reloaded88, ptr %gep_.reloaded88, align 8
  %gep_.reloaded89 = getelementptr { ptr, ptr, ptr, ptr, ptr, ptr, ptr }, ptr %structArg, i32 0, i32 4
  store ptr %.reloaded89, ptr %gep_.reloaded89, align 8
  %gep_.reloaded90 = getelementptr { ptr, ptr, ptr, ptr, ptr, ptr, ptr }, ptr %structArg, i32 0, i32 5
  store ptr %.reloaded90, ptr %gep_.reloaded90, align 8
  %gep_1 = getelementptr { ptr, ptr, ptr, ptr, ptr, ptr, ptr }, ptr %structArg, i32 0, i32 6
  store ptr %8, ptr %gep_1, align 8
  call void (ptr, i32, ptr, ...) @__kmpc_fork_call(ptr @1, i32 1, ptr @SpTMMul.Z.0.main..omp_par, ptr %structArg)
  br label %omp.par.outlined.exit

omp.par.outlined.exit:                            ; preds = %omp_parallel
  br label %omp.par.exit60.split

omp.par.exit60.split:                             ; preds = %omp.par.outlined.exit
  %27 = load float, ptr %8, align 4
  %28 = getelementptr float, ptr %loadgep_, i64 %17
  store float %27, ptr %28, align 4
  br label %omp.region.cont52

omp.region.cont52:                                ; preds = %omp.par.exit60.split
  br label %omp_loop.inc46

omp_loop.inc46:                                   ; preds = %omp.region.cont52
  %omp_loop.next51 = add nuw i64 %omp_loop.iv49, 1
  br label %omp_loop.header43

omp.par.outlined.exit97.exitStub:                 ; preds = %omp.par.pre_finalize34
  ret void
}

; Function Attrs: norecurse nounwind
define internal void @SpTMMul.Z.0.main..omp_par(ptr noalias %tid.addr55, ptr noalias %zero.addr56, ptr %0) #0 {
omp.par.entry57:
  %gep_.reloaded = getelementptr { ptr, ptr, ptr, ptr, ptr, ptr, ptr }, ptr %0, i32 0, i32 0
  %loadgep_.reloaded = load ptr, ptr %gep_.reloaded, align 8
  %gep_.reloaded86 = getelementptr { ptr, ptr, ptr, ptr, ptr, ptr, ptr }, ptr %0, i32 0, i32 1
  %loadgep_.reloaded86 = load ptr, ptr %gep_.reloaded86, align 8
  %gep_.reloaded87 = getelementptr { ptr, ptr, ptr, ptr, ptr, ptr, ptr }, ptr %0, i32 0, i32 2
  %loadgep_.reloaded87 = load ptr, ptr %gep_.reloaded87, align 8
  %gep_.reloaded88 = getelementptr { ptr, ptr, ptr, ptr, ptr, ptr, ptr }, ptr %0, i32 0, i32 3
  %loadgep_.reloaded88 = load ptr, ptr %gep_.reloaded88, align 8
  %gep_.reloaded89 = getelementptr { ptr, ptr, ptr, ptr, ptr, ptr, ptr }, ptr %0, i32 0, i32 4
  %loadgep_.reloaded89 = load ptr, ptr %gep_.reloaded89, align 8
  %gep_.reloaded90 = getelementptr { ptr, ptr, ptr, ptr, ptr, ptr, ptr }, ptr %0, i32 0, i32 5
  %loadgep_.reloaded90 = load ptr, ptr %gep_.reloaded90, align 8
  %gep_ = getelementptr { ptr, ptr, ptr, ptr, ptr, ptr, ptr }, ptr %0, i32 0, i32 6
  %loadgep_ = load ptr, ptr %gep_, align 8
  %tid.addr.local61 = alloca i32, align 4
  %1 = load i32, ptr %tid.addr55, align 4
  store i32 %1, ptr %tid.addr.local61, align 4
  %tid62 = load i32, ptr %tid.addr.local61, align 4
  %2 = load i64, ptr %loadgep_.reloaded, align 4
  %3 = load i64, ptr %loadgep_.reloaded86, align 4
  %4 = load { ptr, ptr, i64, [1 x i64], [1 x i64] }, ptr %loadgep_.reloaded87, align 8
  %5 = load i64, ptr %loadgep_.reloaded88, align 4
  %6 = load { ptr, ptr, i64, [1 x i64], [1 x i64] }, ptr %loadgep_.reloaded89, align 8
  %7 = load { ptr, ptr, i64, [1 x i64], [1 x i64] }, ptr %loadgep_.reloaded90, align 8
  %8 = alloca float, align 4
  %p.lastiter = alloca i32, align 4
  %p.lowerbound = alloca i64, align 8
  %p.upperbound = alloca i64, align 8
  %p.stride = alloca i64, align 8
  %red.array = alloca [1 x ptr], align 8
  br label %omp.par.region58

omp.par.region58:                                 ; preds = %omp.par.entry57
  br label %omp.par.region66

omp.par.region66:                                 ; preds = %omp.par.region58
  store float 0.000000e+00, ptr %8, align 4
  %9 = select i1 false, i64 %2, i64 %3
  %10 = select i1 false, i64 %3, i64 %2
  %11 = sub nsw i64 %10, %9
  %12 = icmp sle i64 %10, %9
  %13 = sub i64 %11, 1
  %14 = udiv i64 %13, 1
  %15 = add i64 %14, 1
  %16 = icmp ule i64 %11, 1
  %17 = select i1 %16, i64 1, i64 %15
  %omp_loop.tripcount67 = select i1 %12, i64 0, i64 %17
  br label %omp_loop.preheader68

omp_loop.preheader68:                             ; preds = %omp.par.region66
  store i64 0, ptr %p.lowerbound, align 4
  %18 = sub i64 %omp_loop.tripcount67, 1
  store i64 %18, ptr %p.upperbound, align 4
  store i64 1, ptr %p.stride, align 4
  %omp_global_thread_num82 = call i32 @__kmpc_global_thread_num(ptr @1)
  call void @__kmpc_for_static_init_8u(ptr @1, i32 %omp_global_thread_num82, i32 34, ptr %p.lastiter, ptr %p.lowerbound, ptr %p.upperbound, ptr %p.stride, i64 1, i64 0)
  %19 = load i64, ptr %p.lowerbound, align 4
  %20 = load i64, ptr %p.upperbound, align 4
  %21 = sub i64 %20, %19
  %22 = add i64 %21, 1
  br label %omp_loop.header69

omp_loop.header69:                                ; preds = %omp_loop.inc72, %omp_loop.preheader68
  %omp_loop.iv75 = phi i64 [ 0, %omp_loop.preheader68 ], [ %omp_loop.next77, %omp_loop.inc72 ]
  br label %omp_loop.cond70

omp_loop.cond70:                                  ; preds = %omp_loop.header69
  %omp_loop.cmp76 = icmp ult i64 %omp_loop.iv75, %22
  br i1 %omp_loop.cmp76, label %omp_loop.body71, label %omp_loop.exit73

omp_loop.exit73:                                  ; preds = %omp_loop.cond70
  call void @__kmpc_for_static_fini(ptr @1, i32 %omp_global_thread_num82)
  %omp_global_thread_num83 = call i32 @__kmpc_global_thread_num(ptr @1)
  call void @__kmpc_barrier(ptr @2, i32 %omp_global_thread_num83)
  br label %omp_loop.after74

omp_loop.after74:                                 ; preds = %omp_loop.exit73
  %red.array.elem.0 = getelementptr inbounds [1 x ptr], ptr %red.array, i64 0, i64 0
  store ptr %8, ptr %red.array.elem.0, align 8
  %omp_global_thread_num84 = call i32 @__kmpc_global_thread_num(ptr @3)
  %reduce = call i32 @__kmpc_reduce(ptr @3, i32 %omp_global_thread_num84, i32 1, i64 8, ptr %red.array, ptr @.omp.reduction.func, ptr @.gomp_critical_user_.reduction.var)
  switch i32 %reduce, label %reduce.finalize [
    i32 1, label %reduce.switch.nonatomic
    i32 2, label %reduce.switch.atomic
  ]

reduce.switch.atomic:                             ; preds = %omp_loop.after74
  %23 = load float, ptr %8, align 4
  %24 = atomicrmw fadd ptr %loadgep_, float %23 monotonic, align 4
  br label %reduce.finalize

reduce.switch.nonatomic:                          ; preds = %omp_loop.after74
  %red.value.0 = load float, ptr %loadgep_, align 4
  %red.private.value.0 = load float, ptr %8, align 4
  %25 = fadd float %red.value.0, %red.private.value.0
  store float %25, ptr %loadgep_, align 4
  call void @__kmpc_end_reduce(ptr @3, i32 %omp_global_thread_num84, ptr @.gomp_critical_user_.reduction.var)
  br label %reduce.finalize

reduce.finalize:                                  ; preds = %reduce.switch.atomic, %reduce.switch.nonatomic, %omp_loop.after74
  %omp_global_thread_num85 = call i32 @__kmpc_global_thread_num(ptr @1)
  call void @__kmpc_barrier(ptr @2, i32 %omp_global_thread_num85)
  br label %omp.region.cont65

omp.region.cont65:                                ; preds = %reduce.finalize
  br label %omp.par.pre_finalize59

omp.par.pre_finalize59:                           ; preds = %omp.region.cont65
  br label %omp.par.outlined.exit.exitStub

omp_loop.body71:                                  ; preds = %omp_loop.cond70
  %26 = add i64 %omp_loop.iv75, %19
  %27 = mul i64 %26, 1
  %28 = add i64 %27, %3
  br label %omp.wsloop.region79

omp.wsloop.region79:                              ; preds = %omp_loop.body71
  %29 = call ptr @llvm.stacksave()
  br label %omp.wsloop.region80

omp.wsloop.region80:                              ; preds = %omp.wsloop.region79
  %30 = extractvalue { ptr, ptr, i64, [1 x i64], [1 x i64] } %4, 1
  %31 = getelementptr i64, ptr %30, i64 %28
  %32 = load i64, ptr %31, align 4
  %33 = mul i64 %5, 64
  %34 = add i64 %33, %32
  %35 = extractvalue { ptr, ptr, i64, [1 x i64], [1 x i64] } %6, 1
  %36 = getelementptr float, ptr %35, i64 %28
  %37 = load float, ptr %36, align 4
  %38 = extractvalue { ptr, ptr, i64, [1 x i64], [1 x i64] } %7, 1
  %39 = getelementptr float, ptr %38, i64 %34
  %40 = load float, ptr %39, align 4
  %41 = fmul float %37, %40
  %42 = load float, ptr %8, align 4
  %43 = fadd float %42, %41
  store float %43, ptr %8, align 4
  call void @llvm.stackrestore(ptr %29)
  br label %omp.wsloop.region81

omp.wsloop.region81:                              ; preds = %omp.wsloop.region80
  br label %omp.region.cont78

omp.region.cont78:                                ; preds = %omp.wsloop.region81
  br label %omp_loop.inc72

omp_loop.inc72:                                   ; preds = %omp.region.cont78
  %omp_loop.next77 = add nuw i64 %omp_loop.iv75, 1
  br label %omp_loop.header69

omp.par.outlined.exit.exitStub:                   ; preds = %omp.par.pre_finalize59
  ret void
}

define void @_mlir_ciface_SpTMMul.Z.0.main(ptr %0, ptr %1, ptr %2, ptr %3, ptr %4, ptr %5, ptr %6, ptr %7, { [3 x i64], [7 x i64] } %8, ptr %9, { [2 x i64], [1 x i64] } %10) {
  %12 = load { ptr, ptr, i64, [1 x i64], [1 x i64] }, ptr %1, align 8
  %13 = extractvalue { ptr, ptr, i64, [1 x i64], [1 x i64] } %12, 0
  %14 = extractvalue { ptr, ptr, i64, [1 x i64], [1 x i64] } %12, 1
  %15 = extractvalue { ptr, ptr, i64, [1 x i64], [1 x i64] } %12, 2
  %16 = extractvalue { ptr, ptr, i64, [1 x i64], [1 x i64] } %12, 3, 0
  %17 = extractvalue { ptr, ptr, i64, [1 x i64], [1 x i64] } %12, 4, 0
  %18 = load { ptr, ptr, i64, [1 x i64], [1 x i64] }, ptr %2, align 8
  %19 = extractvalue { ptr, ptr, i64, [1 x i64], [1 x i64] } %18, 0
  %20 = extractvalue { ptr, ptr, i64, [1 x i64], [1 x i64] } %18, 1
  %21 = extractvalue { ptr, ptr, i64, [1 x i64], [1 x i64] } %18, 2
  %22 = extractvalue { ptr, ptr, i64, [1 x i64], [1 x i64] } %18, 3, 0
  %23 = extractvalue { ptr, ptr, i64, [1 x i64], [1 x i64] } %18, 4, 0
  %24 = load { ptr, ptr, i64, [1 x i64], [1 x i64] }, ptr %3, align 8
  %25 = extractvalue { ptr, ptr, i64, [1 x i64], [1 x i64] } %24, 0
  %26 = extractvalue { ptr, ptr, i64, [1 x i64], [1 x i64] } %24, 1
  %27 = extractvalue { ptr, ptr, i64, [1 x i64], [1 x i64] } %24, 2
  %28 = extractvalue { ptr, ptr, i64, [1 x i64], [1 x i64] } %24, 3, 0
  %29 = extractvalue { ptr, ptr, i64, [1 x i64], [1 x i64] } %24, 4, 0
  %30 = load { ptr, ptr, i64, [1 x i64], [1 x i64] }, ptr %4, align 8
  %31 = extractvalue { ptr, ptr, i64, [1 x i64], [1 x i64] } %30, 0
  %32 = extractvalue { ptr, ptr, i64, [1 x i64], [1 x i64] } %30, 1
  %33 = extractvalue { ptr, ptr, i64, [1 x i64], [1 x i64] } %30, 2
  %34 = extractvalue { ptr, ptr, i64, [1 x i64], [1 x i64] } %30, 3, 0
  %35 = extractvalue { ptr, ptr, i64, [1 x i64], [1 x i64] } %30, 4, 0
  %36 = load { ptr, ptr, i64, [1 x i64], [1 x i64] }, ptr %5, align 8
  %37 = extractvalue { ptr, ptr, i64, [1 x i64], [1 x i64] } %36, 0
  %38 = extractvalue { ptr, ptr, i64, [1 x i64], [1 x i64] } %36, 1
  %39 = extractvalue { ptr, ptr, i64, [1 x i64], [1 x i64] } %36, 2
  %40 = extractvalue { ptr, ptr, i64, [1 x i64], [1 x i64] } %36, 3, 0
  %41 = extractvalue { ptr, ptr, i64, [1 x i64], [1 x i64] } %36, 4, 0
  %42 = load { ptr, ptr, i64, [1 x i64], [1 x i64] }, ptr %6, align 8
  %43 = extractvalue { ptr, ptr, i64, [1 x i64], [1 x i64] } %42, 0
  %44 = extractvalue { ptr, ptr, i64, [1 x i64], [1 x i64] } %42, 1
  %45 = extractvalue { ptr, ptr, i64, [1 x i64], [1 x i64] } %42, 2
  %46 = extractvalue { ptr, ptr, i64, [1 x i64], [1 x i64] } %42, 3, 0
  %47 = extractvalue { ptr, ptr, i64, [1 x i64], [1 x i64] } %42, 4, 0
  %48 = load { ptr, ptr, i64, [1 x i64], [1 x i64] }, ptr %7, align 8
  %49 = extractvalue { ptr, ptr, i64, [1 x i64], [1 x i64] } %48, 0
  %50 = extractvalue { ptr, ptr, i64, [1 x i64], [1 x i64] } %48, 1
  %51 = extractvalue { ptr, ptr, i64, [1 x i64], [1 x i64] } %48, 2
  %52 = extractvalue { ptr, ptr, i64, [1 x i64], [1 x i64] } %48, 3, 0
  %53 = extractvalue { ptr, ptr, i64, [1 x i64], [1 x i64] } %48, 4, 0
  %54 = load { ptr, ptr, i64, [1 x i64], [1 x i64] }, ptr %9, align 8
  %55 = extractvalue { ptr, ptr, i64, [1 x i64], [1 x i64] } %54, 0
  %56 = extractvalue { ptr, ptr, i64, [1 x i64], [1 x i64] } %54, 1
  %57 = extractvalue { ptr, ptr, i64, [1 x i64], [1 x i64] } %54, 2
  %58 = extractvalue { ptr, ptr, i64, [1 x i64], [1 x i64] } %54, 3, 0
  %59 = extractvalue { ptr, ptr, i64, [1 x i64], [1 x i64] } %54, 4, 0
  %60 = call { { ptr, ptr, i64, [1 x i64], [1 x i64] }, { [3 x i64], [1 x i64] } } @SpTMMul.Z.0.main(ptr %13, ptr %14, i64 %15, i64 %16, i64 %17, ptr %19, ptr %20, i64 %21, i64 %22, i64 %23, ptr %25, ptr %26, i64 %27, i64 %28, i64 %29, ptr %31, ptr %32, i64 %33, i64 %34, i64 %35, ptr %37, ptr %38, i64 %39, i64 %40, i64 %41, ptr %43, ptr %44, i64 %45, i64 %46, i64 %47, ptr %49, ptr %50, i64 %51, i64 %52, i64 %53, { [3 x i64], [7 x i64] } %8, ptr %55, ptr %56, i64 %57, i64 %58, i64 %59, { [2 x i64], [1 x i64] } %10)
  store { { ptr, ptr, i64, [1 x i64], [1 x i64] }, { [3 x i64], [1 x i64] } } %60, ptr %0, align 8
  ret void
}

; Function Attrs: nounwind
declare i32 @__kmpc_global_thread_num(ptr) #1

; Function Attrs: nocallback nofree nosync nounwind willreturn
declare ptr @llvm.stacksave() #2

; Function Attrs: nocallback nofree nosync nounwind willreturn
declare void @llvm.stackrestore(ptr) #2

; Function Attrs: nounwind
declare void @__kmpc_for_static_init_8u(ptr, i32, i32, ptr, ptr, ptr, ptr, i64, i64) #1

; Function Attrs: nounwind
declare void @__kmpc_for_static_fini(ptr, i32) #1

; Function Attrs: convergent nounwind
declare void @__kmpc_barrier(ptr, i32) #3

define internal void @.omp.reduction.func(ptr %0, ptr %1) {
  %3 = getelementptr inbounds [1 x ptr], ptr %0, i64 0, i64 0
  %4 = load ptr, ptr %3, align 8
  %5 = load float, ptr %4, align 4
  %6 = getelementptr inbounds [1 x ptr], ptr %1, i64 0, i64 0
  %7 = load ptr, ptr %6, align 8
  %8 = load float, ptr %7, align 4
  %9 = fadd float %5, %8
  store float %9, ptr %4, align 4
  ret void
}

; Function Attrs: convergent nounwind
declare i32 @__kmpc_reduce(ptr, i32, i32, i64, ptr, ptr, ptr) #3

; Function Attrs: convergent nounwind
declare void @__kmpc_end_reduce(ptr, i32, ptr) #3

; Function Attrs: nounwind
declare !callback !1 void @__kmpc_fork_call(ptr, i32, ptr, ...) #1

attributes #0 = { norecurse nounwind }
attributes #1 = { nounwind }
attributes #2 = { nocallback nofree nosync nounwind willreturn }
attributes #3 = { convergent nounwind }

!llvm.module.flags = !{!0}

!0 = !{i32 2, !"Debug Info Version", i32 3}
!1 = !{!2}
!2 = !{i64 2, i64 -1, i64 -1, i1 true}
