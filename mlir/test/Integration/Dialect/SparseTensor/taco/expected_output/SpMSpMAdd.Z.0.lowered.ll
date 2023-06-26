; ModuleID = 'LLVMDialectModule'
source_filename = "LLVMDialectModule"

%struct.ident_t = type { i32, i32, i32, i32, ptr }

@0 = private unnamed_addr constant [23 x i8] c";unknown;unknown;0;0;;\00", align 1
@1 = private unnamed_addr constant %struct.ident_t { i32 0, i32 2, i32 0, i32 22, ptr @0 }, align 8
@2 = private unnamed_addr constant %struct.ident_t { i32 0, i32 66, i32 0, i32 22, ptr @0 }, align 8

declare ptr @malloc(i64)

declare void @free(ptr)

define { { ptr, ptr, i64, [1 x i64], [1 x i64] }, { [2 x i64], [1 x i64] } } @SpMSpMAdd.Z.0.main(ptr %0, ptr %1, i64 %2, i64 %3, i64 %4, ptr %5, ptr %6, i64 %7, i64 %8, i64 %9, ptr %10, ptr %11, i64 %12, i64 %13, i64 %14, { [2 x i64], [3 x i64] } %15, ptr %16, ptr %17, i64 %18, i64 %19, i64 %20, ptr %21, ptr %22, i64 %23, i64 %24, i64 %25, ptr %26, ptr %27, i64 %28, i64 %29, i64 %30, { [2 x i64], [3 x i64] } %31) {
  %structArg99 = alloca { ptr, ptr, ptr, ptr, ptr, ptr, ptr }, align 8
  %.reloaded90 = alloca { ptr, ptr, i64, [1 x i64], [1 x i64] }, align 8
  %.reloaded91 = alloca { ptr, ptr, i64, [1 x i64], [1 x i64] }, align 8
  %.reloaded92 = alloca { ptr, ptr, i64, [1 x i64], [1 x i64] }, align 8
  %.reloaded93 = alloca { ptr, ptr, i64, [1 x i64], [1 x i64] }, align 8
  %.reloaded94 = alloca { ptr, ptr, i64, [1 x i64], [1 x i64] }, align 8
  %.reloaded95 = alloca { ptr, ptr, i64, [1 x i64], [1 x i64] }, align 8
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
  %63 = call ptr @malloc(i64 ptrtoint (ptr getelementptr (float, ptr null, i32 32768) to i64))
  %64 = insertvalue { ptr, ptr, i64, [1 x i64], [1 x i64] } undef, ptr %63, 0
  %65 = insertvalue { ptr, ptr, i64, [1 x i64], [1 x i64] } %64, ptr %63, 1
  %66 = insertvalue { ptr, ptr, i64, [1 x i64], [1 x i64] } %65, i64 0, 2
  %67 = insertvalue { ptr, ptr, i64, [1 x i64], [1 x i64] } %66, i64 32768, 3, 0
  %68 = insertvalue { ptr, ptr, i64, [1 x i64], [1 x i64] } %67, i64 1, 4, 0
  br label %69

69:                                               ; preds = %72, %32
  %70 = phi i64 [ %74, %72 ], [ 0, %32 ]
  %71 = icmp slt i64 %70, 32768
  br i1 %71, label %72, label %75

72:                                               ; preds = %69
  %73 = getelementptr float, ptr %63, i64 %70
  store float 0.000000e+00, ptr %73, align 4
  %74 = add i64 %70, 1
  br label %69

75:                                               ; preds = %69
  %omp_global_thread_num = call i32 @__kmpc_global_thread_num(ptr @1)
  store { ptr, ptr, i64, [1 x i64], [1 x i64] } %37, ptr %.reloaded90, align 8
  store { ptr, ptr, i64, [1 x i64], [1 x i64] } %52, ptr %.reloaded91, align 8
  store { ptr, ptr, i64, [1 x i64], [1 x i64] } %42, ptr %.reloaded92, align 8
  store { ptr, ptr, i64, [1 x i64], [1 x i64] } %47, ptr %.reloaded93, align 8
  store { ptr, ptr, i64, [1 x i64], [1 x i64] } %57, ptr %.reloaded94, align 8
  store { ptr, ptr, i64, [1 x i64], [1 x i64] } %62, ptr %.reloaded95, align 8
  br label %omp_parallel

omp_parallel:                                     ; preds = %75
  %gep_.reloaded90 = getelementptr { ptr, ptr, ptr, ptr, ptr, ptr, ptr }, ptr %structArg99, i32 0, i32 0
  store ptr %.reloaded90, ptr %gep_.reloaded90, align 8
  %gep_.reloaded91 = getelementptr { ptr, ptr, ptr, ptr, ptr, ptr, ptr }, ptr %structArg99, i32 0, i32 1
  store ptr %.reloaded91, ptr %gep_.reloaded91, align 8
  %gep_.reloaded92 = getelementptr { ptr, ptr, ptr, ptr, ptr, ptr, ptr }, ptr %structArg99, i32 0, i32 2
  store ptr %.reloaded92, ptr %gep_.reloaded92, align 8
  %gep_.reloaded93 = getelementptr { ptr, ptr, ptr, ptr, ptr, ptr, ptr }, ptr %structArg99, i32 0, i32 3
  store ptr %.reloaded93, ptr %gep_.reloaded93, align 8
  %gep_.reloaded94 = getelementptr { ptr, ptr, ptr, ptr, ptr, ptr, ptr }, ptr %structArg99, i32 0, i32 4
  store ptr %.reloaded94, ptr %gep_.reloaded94, align 8
  %gep_.reloaded95 = getelementptr { ptr, ptr, ptr, ptr, ptr, ptr, ptr }, ptr %structArg99, i32 0, i32 5
  store ptr %.reloaded95, ptr %gep_.reloaded95, align 8
  %gep_100 = getelementptr { ptr, ptr, ptr, ptr, ptr, ptr, ptr }, ptr %structArg99, i32 0, i32 6
  store ptr %63, ptr %gep_100, align 8
  call void (ptr, i32, ptr, ...) @__kmpc_fork_call(ptr @1, i32 1, ptr @SpMSpMAdd.Z.0.main..omp_par.2, ptr %structArg99)
  br label %omp.par.outlined.exit89

omp.par.outlined.exit89:                          ; preds = %omp_parallel
  br label %omp.par.exit.split

omp.par.exit.split:                               ; preds = %omp.par.outlined.exit89
  %76 = insertvalue { { ptr, ptr, i64, [1 x i64], [1 x i64] }, { [2 x i64], [1 x i64] } } undef, { ptr, ptr, i64, [1 x i64], [1 x i64] } %68, 0
  %77 = insertvalue { { ptr, ptr, i64, [1 x i64], [1 x i64] }, { [2 x i64], [1 x i64] } } %76, { [2 x i64], [1 x i64] } { [2 x i64] [i64 128, i64 256], [1 x i64] [i64 32768] }, 1
  ret { { ptr, ptr, i64, [1 x i64], [1 x i64] }, { [2 x i64], [1 x i64] } } %77
}

; Function Attrs: norecurse nounwind
define internal void @SpMSpMAdd.Z.0.main..omp_par.2(ptr noalias %tid.addr, ptr noalias %zero.addr, ptr %0) #0 {
omp.par.entry:
  %gep_.reloaded90 = getelementptr { ptr, ptr, ptr, ptr, ptr, ptr, ptr }, ptr %0, i32 0, i32 0
  %loadgep_.reloaded90 = load ptr, ptr %gep_.reloaded90, align 8
  %gep_.reloaded91 = getelementptr { ptr, ptr, ptr, ptr, ptr, ptr, ptr }, ptr %0, i32 0, i32 1
  %loadgep_.reloaded91 = load ptr, ptr %gep_.reloaded91, align 8
  %gep_.reloaded92 = getelementptr { ptr, ptr, ptr, ptr, ptr, ptr, ptr }, ptr %0, i32 0, i32 2
  %loadgep_.reloaded92 = load ptr, ptr %gep_.reloaded92, align 8
  %gep_.reloaded93 = getelementptr { ptr, ptr, ptr, ptr, ptr, ptr, ptr }, ptr %0, i32 0, i32 3
  %loadgep_.reloaded93 = load ptr, ptr %gep_.reloaded93, align 8
  %gep_.reloaded94 = getelementptr { ptr, ptr, ptr, ptr, ptr, ptr, ptr }, ptr %0, i32 0, i32 4
  %loadgep_.reloaded94 = load ptr, ptr %gep_.reloaded94, align 8
  %gep_.reloaded95 = getelementptr { ptr, ptr, ptr, ptr, ptr, ptr, ptr }, ptr %0, i32 0, i32 5
  %loadgep_.reloaded95 = load ptr, ptr %gep_.reloaded95, align 8
  %gep_ = getelementptr { ptr, ptr, ptr, ptr, ptr, ptr, ptr }, ptr %0, i32 0, i32 6
  %loadgep_ = load ptr, ptr %gep_, align 8
  %structArg96 = alloca { ptr, ptr, ptr, ptr, ptr, ptr }, align 8
  %structArg = alloca { ptr, ptr, ptr, ptr, ptr, ptr }, align 8
  %.reloaded78 = alloca i64, align 8
  %.reloaded79 = alloca i64, align 8
  %.reloaded80 = alloca { ptr, ptr, i64, [1 x i64], [1 x i64] }, align 8
  %.reloaded81 = alloca i64, align 8
  %.reloaded82 = alloca { ptr, ptr, i64, [1 x i64], [1 x i64] }, align 8
  %.reloaded = alloca i64, align 8
  %.reloaded41 = alloca i64, align 8
  %.reloaded42 = alloca { ptr, ptr, i64, [1 x i64], [1 x i64] }, align 8
  %.reloaded43 = alloca i64, align 8
  %.reloaded44 = alloca { ptr, ptr, i64, [1 x i64], [1 x i64] }, align 8
  %tid.addr.local = alloca i32, align 4
  %1 = load i32, ptr %tid.addr, align 4
  store i32 %1, ptr %tid.addr.local, align 4
  %tid = load i32, ptr %tid.addr.local, align 4
  %2 = load { ptr, ptr, i64, [1 x i64], [1 x i64] }, ptr %loadgep_.reloaded90, align 8
  %3 = load { ptr, ptr, i64, [1 x i64], [1 x i64] }, ptr %loadgep_.reloaded91, align 8
  %4 = load { ptr, ptr, i64, [1 x i64], [1 x i64] }, ptr %loadgep_.reloaded92, align 8
  %5 = load { ptr, ptr, i64, [1 x i64], [1 x i64] }, ptr %loadgep_.reloaded93, align 8
  %6 = load { ptr, ptr, i64, [1 x i64], [1 x i64] }, ptr %loadgep_.reloaded94, align 8
  %7 = load { ptr, ptr, i64, [1 x i64], [1 x i64] }, ptr %loadgep_.reloaded95, align 8
  %p.lastiter83 = alloca i32, align 4
  %p.lowerbound84 = alloca i64, align 8
  %p.upperbound85 = alloca i64, align 8
  %p.stride86 = alloca i64, align 8
  br label %omp.par.region

omp.par.region:                                   ; preds = %omp.par.entry
  br label %omp.par.region1

omp.par.region1:                                  ; preds = %omp.par.region
  br label %omp_loop.preheader

omp_loop.preheader:                               ; preds = %omp.par.region1
  store i64 0, ptr %p.lowerbound84, align 4
  store i64 127, ptr %p.upperbound85, align 4
  store i64 1, ptr %p.stride86, align 4
  %omp_global_thread_num87 = call i32 @__kmpc_global_thread_num(ptr @1)
  call void @__kmpc_for_static_init_8u(ptr @1, i32 %omp_global_thread_num87, i32 34, ptr %p.lastiter83, ptr %p.lowerbound84, ptr %p.upperbound85, ptr %p.stride86, i64 1, i64 0)
  %8 = load i64, ptr %p.lowerbound84, align 4
  %9 = load i64, ptr %p.upperbound85, align 4
  %10 = sub i64 %9, %8
  %11 = add i64 %10, 1
  br label %omp_loop.header

omp_loop.header:                                  ; preds = %omp_loop.inc, %omp_loop.preheader
  %omp_loop.iv = phi i64 [ 0, %omp_loop.preheader ], [ %omp_loop.next, %omp_loop.inc ]
  br label %omp_loop.cond

omp_loop.cond:                                    ; preds = %omp_loop.header
  %omp_loop.cmp = icmp ult i64 %omp_loop.iv, %11
  br i1 %omp_loop.cmp, label %omp_loop.body, label %omp_loop.exit

omp_loop.exit:                                    ; preds = %omp_loop.cond
  call void @__kmpc_for_static_fini(ptr @1, i32 %omp_global_thread_num87)
  %omp_global_thread_num88 = call i32 @__kmpc_global_thread_num(ptr @1)
  call void @__kmpc_barrier(ptr @2, i32 %omp_global_thread_num88)
  br label %omp_loop.after

omp_loop.after:                                   ; preds = %omp_loop.exit
  br label %omp.region.cont

omp.region.cont:                                  ; preds = %omp_loop.after
  br label %omp.par.pre_finalize

omp.par.pre_finalize:                             ; preds = %omp.region.cont
  br label %omp.par.outlined.exit89.exitStub

omp_loop.body:                                    ; preds = %omp_loop.cond
  %12 = add i64 %omp_loop.iv, %8
  %13 = mul i64 %12, 1
  %14 = add i64 %13, 0
  br label %omp.wsloop.region

omp.wsloop.region:                                ; preds = %omp_loop.body
  %15 = extractvalue { ptr, ptr, i64, [1 x i64], [1 x i64] } %2, 1
  %16 = getelementptr i64, ptr %15, i64 %14
  %17 = load i64, ptr %16, align 4
  %18 = add i64 %14, 1
  %19 = extractvalue { ptr, ptr, i64, [1 x i64], [1 x i64] } %2, 1
  %20 = getelementptr i64, ptr %19, i64 %18
  %21 = load i64, ptr %20, align 4
  %22 = extractvalue { ptr, ptr, i64, [1 x i64], [1 x i64] } %3, 1
  %23 = getelementptr i64, ptr %22, i64 %14
  %24 = load i64, ptr %23, align 4
  %25 = add i64 %14, 1
  %26 = extractvalue { ptr, ptr, i64, [1 x i64], [1 x i64] } %3, 1
  %27 = getelementptr i64, ptr %26, i64 %25
  %28 = load i64, ptr %27, align 4
  br label %omp.wsloop.region3

omp.wsloop.region3:                               ; preds = %omp.wsloop.region12, %omp.wsloop.region
  %29 = phi i64 [ %53, %omp.wsloop.region12 ], [ %17, %omp.wsloop.region ]
  %30 = phi i64 [ %56, %omp.wsloop.region12 ], [ %24, %omp.wsloop.region ]
  %31 = icmp ult i64 %29, %21
  %32 = icmp ult i64 %30, %28
  %33 = and i1 %31, %32
  br i1 %33, label %omp.wsloop.region4, label %omp.wsloop.region13

omp.wsloop.region13:                              ; preds = %omp.wsloop.region3
  %omp_global_thread_num14 = call i32 @__kmpc_global_thread_num(ptr @1)
  store i64 %21, ptr %.reloaded, align 4
  store i64 %29, ptr %.reloaded41, align 4
  store { ptr, ptr, i64, [1 x i64], [1 x i64] } %4, ptr %.reloaded42, align 8
  store i64 %14, ptr %.reloaded43, align 4
  store { ptr, ptr, i64, [1 x i64], [1 x i64] } %5, ptr %.reloaded44, align 8
  br label %omp_parallel

omp_parallel:                                     ; preds = %omp.wsloop.region13
  %gep_.reloaded = getelementptr { ptr, ptr, ptr, ptr, ptr, ptr }, ptr %structArg, i32 0, i32 0
  store ptr %.reloaded, ptr %gep_.reloaded, align 8
  %gep_.reloaded41 = getelementptr { ptr, ptr, ptr, ptr, ptr, ptr }, ptr %structArg, i32 0, i32 1
  store ptr %.reloaded41, ptr %gep_.reloaded41, align 8
  %gep_.reloaded42 = getelementptr { ptr, ptr, ptr, ptr, ptr, ptr }, ptr %structArg, i32 0, i32 2
  store ptr %.reloaded42, ptr %gep_.reloaded42, align 8
  %gep_.reloaded43 = getelementptr { ptr, ptr, ptr, ptr, ptr, ptr }, ptr %structArg, i32 0, i32 3
  store ptr %.reloaded43, ptr %gep_.reloaded43, align 8
  %gep_.reloaded44 = getelementptr { ptr, ptr, ptr, ptr, ptr, ptr }, ptr %structArg, i32 0, i32 4
  store ptr %.reloaded44, ptr %gep_.reloaded44, align 8
  %gep_1 = getelementptr { ptr, ptr, ptr, ptr, ptr, ptr }, ptr %structArg, i32 0, i32 5
  store ptr %loadgep_, ptr %gep_1, align 8
  call void (ptr, i32, ptr, ...) @__kmpc_fork_call(ptr @1, i32 1, ptr @SpMSpMAdd.Z.0.main..omp_par, ptr %structArg)
  br label %omp.par.outlined.exit

omp.par.outlined.exit:                            ; preds = %omp_parallel
  br label %omp.par.exit20.split

omp.par.exit20.split:                             ; preds = %omp.par.outlined.exit
  %omp_global_thread_num45 = call i32 @__kmpc_global_thread_num(ptr @1)
  store i64 %28, ptr %.reloaded78, align 4
  store i64 %30, ptr %.reloaded79, align 4
  store { ptr, ptr, i64, [1 x i64], [1 x i64] } %6, ptr %.reloaded80, align 8
  store i64 %14, ptr %.reloaded81, align 4
  store { ptr, ptr, i64, [1 x i64], [1 x i64] } %7, ptr %.reloaded82, align 8
  br label %omp_parallel98

omp_parallel98:                                   ; preds = %omp.par.exit20.split
  %gep_.reloaded78 = getelementptr { ptr, ptr, ptr, ptr, ptr, ptr }, ptr %structArg96, i32 0, i32 0
  store ptr %.reloaded78, ptr %gep_.reloaded78, align 8
  %gep_.reloaded79 = getelementptr { ptr, ptr, ptr, ptr, ptr, ptr }, ptr %structArg96, i32 0, i32 1
  store ptr %.reloaded79, ptr %gep_.reloaded79, align 8
  %gep_.reloaded80 = getelementptr { ptr, ptr, ptr, ptr, ptr, ptr }, ptr %structArg96, i32 0, i32 2
  store ptr %.reloaded80, ptr %gep_.reloaded80, align 8
  %gep_.reloaded81 = getelementptr { ptr, ptr, ptr, ptr, ptr, ptr }, ptr %structArg96, i32 0, i32 3
  store ptr %.reloaded81, ptr %gep_.reloaded81, align 8
  %gep_.reloaded82 = getelementptr { ptr, ptr, ptr, ptr, ptr, ptr }, ptr %structArg96, i32 0, i32 4
  store ptr %.reloaded82, ptr %gep_.reloaded82, align 8
  %gep_97 = getelementptr { ptr, ptr, ptr, ptr, ptr, ptr }, ptr %structArg96, i32 0, i32 5
  store ptr %loadgep_, ptr %gep_97, align 8
  call void (ptr, i32, ptr, ...) @__kmpc_fork_call(ptr @1, i32 1, ptr @SpMSpMAdd.Z.0.main..omp_par.1, ptr %structArg96)
  br label %omp.par.outlined.exit77

omp.par.outlined.exit77:                          ; preds = %omp_parallel98
  br label %omp.par.exit51.split

omp.par.exit51.split:                             ; preds = %omp.par.outlined.exit77
  br label %omp.region.cont2

omp.region.cont2:                                 ; preds = %omp.par.exit51.split
  br label %omp_loop.inc

omp_loop.inc:                                     ; preds = %omp.region.cont2
  %omp_loop.next = add nuw i64 %omp_loop.iv, 1
  br label %omp_loop.header

omp.wsloop.region4:                               ; preds = %omp.wsloop.region3
  %34 = phi i64 [ %29, %omp.wsloop.region3 ]
  %35 = phi i64 [ %30, %omp.wsloop.region3 ]
  %36 = extractvalue { ptr, ptr, i64, [1 x i64], [1 x i64] } %4, 1
  %37 = getelementptr i64, ptr %36, i64 %34
  %38 = load i64, ptr %37, align 4
  %39 = extractvalue { ptr, ptr, i64, [1 x i64], [1 x i64] } %6, 1
  %40 = getelementptr i64, ptr %39, i64 %35
  %41 = load i64, ptr %40, align 4
  %42 = icmp ult i64 %41, %38
  %43 = select i1 %42, i64 %41, i64 %38
  %44 = mul i64 %14, 256
  %45 = add i64 %44, %43
  %46 = icmp eq i64 %38, %43
  %47 = icmp eq i64 %41, %43
  %48 = and i1 %46, %47
  br i1 %48, label %omp.wsloop.region5, label %omp.wsloop.region6

omp.wsloop.region6:                               ; preds = %omp.wsloop.region4
  %49 = icmp eq i64 %38, %43
  br i1 %49, label %omp.wsloop.region7, label %omp.wsloop.region8

omp.wsloop.region8:                               ; preds = %omp.wsloop.region6
  %50 = icmp eq i64 %41, %43
  br i1 %50, label %omp.wsloop.region9, label %omp.wsloop.region10

omp.wsloop.region10:                              ; preds = %omp.wsloop.region9, %omp.wsloop.region8
  br label %omp.wsloop.region11

omp.wsloop.region11:                              ; preds = %omp.wsloop.region7, %omp.wsloop.region10
  br label %omp.wsloop.region12

omp.wsloop.region12:                              ; preds = %omp.wsloop.region5, %omp.wsloop.region11
  %51 = icmp eq i64 %38, %43
  %52 = add i64 %34, 1
  %53 = select i1 %51, i64 %52, i64 %34
  %54 = icmp eq i64 %41, %43
  %55 = add i64 %35, 1
  %56 = select i1 %54, i64 %55, i64 %35
  br label %omp.wsloop.region3

omp.wsloop.region9:                               ; preds = %omp.wsloop.region8
  %57 = extractvalue { ptr, ptr, i64, [1 x i64], [1 x i64] } %7, 1
  %58 = getelementptr float, ptr %57, i64 %35
  %59 = load float, ptr %58, align 4
  %60 = getelementptr float, ptr %loadgep_, i64 %45
  store float %59, ptr %60, align 4
  br label %omp.wsloop.region10

omp.wsloop.region7:                               ; preds = %omp.wsloop.region6
  %61 = extractvalue { ptr, ptr, i64, [1 x i64], [1 x i64] } %5, 1
  %62 = getelementptr float, ptr %61, i64 %34
  %63 = load float, ptr %62, align 4
  %64 = getelementptr float, ptr %loadgep_, i64 %45
  store float %63, ptr %64, align 4
  br label %omp.wsloop.region11

omp.wsloop.region5:                               ; preds = %omp.wsloop.region4
  %65 = extractvalue { ptr, ptr, i64, [1 x i64], [1 x i64] } %5, 1
  %66 = getelementptr float, ptr %65, i64 %34
  %67 = load float, ptr %66, align 4
  %68 = extractvalue { ptr, ptr, i64, [1 x i64], [1 x i64] } %7, 1
  %69 = getelementptr float, ptr %68, i64 %35
  %70 = load float, ptr %69, align 4
  %71 = fadd float %67, %70
  %72 = getelementptr float, ptr %loadgep_, i64 %45
  store float %71, ptr %72, align 4
  br label %omp.wsloop.region12

omp.par.outlined.exit89.exitStub:                 ; preds = %omp.par.pre_finalize
  ret void
}

; Function Attrs: norecurse nounwind
define internal void @SpMSpMAdd.Z.0.main..omp_par.1(ptr noalias %tid.addr46, ptr noalias %zero.addr47, ptr %0) #0 {
omp.par.entry48:
  %gep_.reloaded78 = getelementptr { ptr, ptr, ptr, ptr, ptr, ptr }, ptr %0, i32 0, i32 0
  %loadgep_.reloaded78 = load ptr, ptr %gep_.reloaded78, align 8
  %gep_.reloaded79 = getelementptr { ptr, ptr, ptr, ptr, ptr, ptr }, ptr %0, i32 0, i32 1
  %loadgep_.reloaded79 = load ptr, ptr %gep_.reloaded79, align 8
  %gep_.reloaded80 = getelementptr { ptr, ptr, ptr, ptr, ptr, ptr }, ptr %0, i32 0, i32 2
  %loadgep_.reloaded80 = load ptr, ptr %gep_.reloaded80, align 8
  %gep_.reloaded81 = getelementptr { ptr, ptr, ptr, ptr, ptr, ptr }, ptr %0, i32 0, i32 3
  %loadgep_.reloaded81 = load ptr, ptr %gep_.reloaded81, align 8
  %gep_.reloaded82 = getelementptr { ptr, ptr, ptr, ptr, ptr, ptr }, ptr %0, i32 0, i32 4
  %loadgep_.reloaded82 = load ptr, ptr %gep_.reloaded82, align 8
  %gep_ = getelementptr { ptr, ptr, ptr, ptr, ptr, ptr }, ptr %0, i32 0, i32 5
  %loadgep_ = load ptr, ptr %gep_, align 8
  %tid.addr.local52 = alloca i32, align 4
  %1 = load i32, ptr %tid.addr46, align 4
  store i32 %1, ptr %tid.addr.local52, align 4
  %tid53 = load i32, ptr %tid.addr.local52, align 4
  %2 = load i64, ptr %loadgep_.reloaded78, align 4
  %3 = load i64, ptr %loadgep_.reloaded79, align 4
  %4 = load { ptr, ptr, i64, [1 x i64], [1 x i64] }, ptr %loadgep_.reloaded80, align 8
  %5 = load i64, ptr %loadgep_.reloaded81, align 4
  %6 = load { ptr, ptr, i64, [1 x i64], [1 x i64] }, ptr %loadgep_.reloaded82, align 8
  %p.lastiter71 = alloca i32, align 4
  %p.lowerbound72 = alloca i64, align 8
  %p.upperbound73 = alloca i64, align 8
  %p.stride74 = alloca i64, align 8
  br label %omp.par.region49

omp.par.region49:                                 ; preds = %omp.par.entry48
  br label %omp.par.region57

omp.par.region57:                                 ; preds = %omp.par.region49
  %7 = select i1 false, i64 %2, i64 %3
  %8 = select i1 false, i64 %3, i64 %2
  %9 = sub nsw i64 %8, %7
  %10 = icmp sle i64 %8, %7
  %11 = sub i64 %9, 1
  %12 = udiv i64 %11, 1
  %13 = add i64 %12, 1
  %14 = icmp ule i64 %9, 1
  %15 = select i1 %14, i64 1, i64 %13
  %omp_loop.tripcount58 = select i1 %10, i64 0, i64 %15
  br label %omp_loop.preheader59

omp_loop.preheader59:                             ; preds = %omp.par.region57
  store i64 0, ptr %p.lowerbound72, align 4
  %16 = sub i64 %omp_loop.tripcount58, 1
  store i64 %16, ptr %p.upperbound73, align 4
  store i64 1, ptr %p.stride74, align 4
  %omp_global_thread_num75 = call i32 @__kmpc_global_thread_num(ptr @1)
  call void @__kmpc_for_static_init_8u(ptr @1, i32 %omp_global_thread_num75, i32 34, ptr %p.lastiter71, ptr %p.lowerbound72, ptr %p.upperbound73, ptr %p.stride74, i64 1, i64 0)
  %17 = load i64, ptr %p.lowerbound72, align 4
  %18 = load i64, ptr %p.upperbound73, align 4
  %19 = sub i64 %18, %17
  %20 = add i64 %19, 1
  br label %omp_loop.header60

omp_loop.header60:                                ; preds = %omp_loop.inc63, %omp_loop.preheader59
  %omp_loop.iv66 = phi i64 [ 0, %omp_loop.preheader59 ], [ %omp_loop.next68, %omp_loop.inc63 ]
  br label %omp_loop.cond61

omp_loop.cond61:                                  ; preds = %omp_loop.header60
  %omp_loop.cmp67 = icmp ult i64 %omp_loop.iv66, %20
  br i1 %omp_loop.cmp67, label %omp_loop.body62, label %omp_loop.exit64

omp_loop.exit64:                                  ; preds = %omp_loop.cond61
  call void @__kmpc_for_static_fini(ptr @1, i32 %omp_global_thread_num75)
  %omp_global_thread_num76 = call i32 @__kmpc_global_thread_num(ptr @1)
  call void @__kmpc_barrier(ptr @2, i32 %omp_global_thread_num76)
  br label %omp_loop.after65

omp_loop.after65:                                 ; preds = %omp_loop.exit64
  br label %omp.region.cont56

omp.region.cont56:                                ; preds = %omp_loop.after65
  br label %omp.par.pre_finalize50

omp.par.pre_finalize50:                           ; preds = %omp.region.cont56
  br label %omp.par.outlined.exit77.exitStub

omp_loop.body62:                                  ; preds = %omp_loop.cond61
  %21 = add i64 %omp_loop.iv66, %17
  %22 = mul i64 %21, 1
  %23 = add i64 %22, %3
  br label %omp.wsloop.region70

omp.wsloop.region70:                              ; preds = %omp_loop.body62
  %24 = extractvalue { ptr, ptr, i64, [1 x i64], [1 x i64] } %4, 1
  %25 = getelementptr i64, ptr %24, i64 %23
  %26 = load i64, ptr %25, align 4
  %27 = mul i64 %5, 256
  %28 = add i64 %27, %26
  %29 = extractvalue { ptr, ptr, i64, [1 x i64], [1 x i64] } %6, 1
  %30 = getelementptr float, ptr %29, i64 %23
  %31 = load float, ptr %30, align 4
  %32 = getelementptr float, ptr %loadgep_, i64 %28
  store float %31, ptr %32, align 4
  br label %omp.region.cont69

omp.region.cont69:                                ; preds = %omp.wsloop.region70
  br label %omp_loop.inc63

omp_loop.inc63:                                   ; preds = %omp.region.cont69
  %omp_loop.next68 = add nuw i64 %omp_loop.iv66, 1
  br label %omp_loop.header60

omp.par.outlined.exit77.exitStub:                 ; preds = %omp.par.pre_finalize50
  ret void
}

; Function Attrs: norecurse nounwind
define internal void @SpMSpMAdd.Z.0.main..omp_par(ptr noalias %tid.addr15, ptr noalias %zero.addr16, ptr %0) #0 {
omp.par.entry17:
  %gep_.reloaded = getelementptr { ptr, ptr, ptr, ptr, ptr, ptr }, ptr %0, i32 0, i32 0
  %loadgep_.reloaded = load ptr, ptr %gep_.reloaded, align 8
  %gep_.reloaded41 = getelementptr { ptr, ptr, ptr, ptr, ptr, ptr }, ptr %0, i32 0, i32 1
  %loadgep_.reloaded41 = load ptr, ptr %gep_.reloaded41, align 8
  %gep_.reloaded42 = getelementptr { ptr, ptr, ptr, ptr, ptr, ptr }, ptr %0, i32 0, i32 2
  %loadgep_.reloaded42 = load ptr, ptr %gep_.reloaded42, align 8
  %gep_.reloaded43 = getelementptr { ptr, ptr, ptr, ptr, ptr, ptr }, ptr %0, i32 0, i32 3
  %loadgep_.reloaded43 = load ptr, ptr %gep_.reloaded43, align 8
  %gep_.reloaded44 = getelementptr { ptr, ptr, ptr, ptr, ptr, ptr }, ptr %0, i32 0, i32 4
  %loadgep_.reloaded44 = load ptr, ptr %gep_.reloaded44, align 8
  %gep_ = getelementptr { ptr, ptr, ptr, ptr, ptr, ptr }, ptr %0, i32 0, i32 5
  %loadgep_ = load ptr, ptr %gep_, align 8
  %tid.addr.local21 = alloca i32, align 4
  %1 = load i32, ptr %tid.addr15, align 4
  store i32 %1, ptr %tid.addr.local21, align 4
  %tid22 = load i32, ptr %tid.addr.local21, align 4
  %2 = load i64, ptr %loadgep_.reloaded, align 4
  %3 = load i64, ptr %loadgep_.reloaded41, align 4
  %4 = load { ptr, ptr, i64, [1 x i64], [1 x i64] }, ptr %loadgep_.reloaded42, align 8
  %5 = load i64, ptr %loadgep_.reloaded43, align 4
  %6 = load { ptr, ptr, i64, [1 x i64], [1 x i64] }, ptr %loadgep_.reloaded44, align 8
  %p.lastiter = alloca i32, align 4
  %p.lowerbound = alloca i64, align 8
  %p.upperbound = alloca i64, align 8
  %p.stride = alloca i64, align 8
  br label %omp.par.region18

omp.par.region18:                                 ; preds = %omp.par.entry17
  br label %omp.par.region26

omp.par.region26:                                 ; preds = %omp.par.region18
  %7 = select i1 false, i64 %2, i64 %3
  %8 = select i1 false, i64 %3, i64 %2
  %9 = sub nsw i64 %8, %7
  %10 = icmp sle i64 %8, %7
  %11 = sub i64 %9, 1
  %12 = udiv i64 %11, 1
  %13 = add i64 %12, 1
  %14 = icmp ule i64 %9, 1
  %15 = select i1 %14, i64 1, i64 %13
  %omp_loop.tripcount = select i1 %10, i64 0, i64 %15
  br label %omp_loop.preheader27

omp_loop.preheader27:                             ; preds = %omp.par.region26
  store i64 0, ptr %p.lowerbound, align 4
  %16 = sub i64 %omp_loop.tripcount, 1
  store i64 %16, ptr %p.upperbound, align 4
  store i64 1, ptr %p.stride, align 4
  %omp_global_thread_num39 = call i32 @__kmpc_global_thread_num(ptr @1)
  call void @__kmpc_for_static_init_8u(ptr @1, i32 %omp_global_thread_num39, i32 34, ptr %p.lastiter, ptr %p.lowerbound, ptr %p.upperbound, ptr %p.stride, i64 1, i64 0)
  %17 = load i64, ptr %p.lowerbound, align 4
  %18 = load i64, ptr %p.upperbound, align 4
  %19 = sub i64 %18, %17
  %20 = add i64 %19, 1
  br label %omp_loop.header28

omp_loop.header28:                                ; preds = %omp_loop.inc31, %omp_loop.preheader27
  %omp_loop.iv34 = phi i64 [ 0, %omp_loop.preheader27 ], [ %omp_loop.next36, %omp_loop.inc31 ]
  br label %omp_loop.cond29

omp_loop.cond29:                                  ; preds = %omp_loop.header28
  %omp_loop.cmp35 = icmp ult i64 %omp_loop.iv34, %20
  br i1 %omp_loop.cmp35, label %omp_loop.body30, label %omp_loop.exit32

omp_loop.exit32:                                  ; preds = %omp_loop.cond29
  call void @__kmpc_for_static_fini(ptr @1, i32 %omp_global_thread_num39)
  %omp_global_thread_num40 = call i32 @__kmpc_global_thread_num(ptr @1)
  call void @__kmpc_barrier(ptr @2, i32 %omp_global_thread_num40)
  br label %omp_loop.after33

omp_loop.after33:                                 ; preds = %omp_loop.exit32
  br label %omp.region.cont25

omp.region.cont25:                                ; preds = %omp_loop.after33
  br label %omp.par.pre_finalize19

omp.par.pre_finalize19:                           ; preds = %omp.region.cont25
  br label %omp.par.outlined.exit.exitStub

omp_loop.body30:                                  ; preds = %omp_loop.cond29
  %21 = add i64 %omp_loop.iv34, %17
  %22 = mul i64 %21, 1
  %23 = add i64 %22, %3
  br label %omp.wsloop.region38

omp.wsloop.region38:                              ; preds = %omp_loop.body30
  %24 = extractvalue { ptr, ptr, i64, [1 x i64], [1 x i64] } %4, 1
  %25 = getelementptr i64, ptr %24, i64 %23
  %26 = load i64, ptr %25, align 4
  %27 = mul i64 %5, 256
  %28 = add i64 %27, %26
  %29 = extractvalue { ptr, ptr, i64, [1 x i64], [1 x i64] } %6, 1
  %30 = getelementptr float, ptr %29, i64 %23
  %31 = load float, ptr %30, align 4
  %32 = getelementptr float, ptr %loadgep_, i64 %28
  store float %31, ptr %32, align 4
  br label %omp.region.cont37

omp.region.cont37:                                ; preds = %omp.wsloop.region38
  br label %omp_loop.inc31

omp_loop.inc31:                                   ; preds = %omp.region.cont37
  %omp_loop.next36 = add nuw i64 %omp_loop.iv34, 1
  br label %omp_loop.header28

omp.par.outlined.exit.exitStub:                   ; preds = %omp.par.pre_finalize19
  ret void
}

define void @_mlir_ciface_SpMSpMAdd.Z.0.main(ptr %0, ptr %1, ptr %2, ptr %3, { [2 x i64], [3 x i64] } %4, ptr %5, ptr %6, ptr %7, { [2 x i64], [3 x i64] } %8) {
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
  %46 = call { { ptr, ptr, i64, [1 x i64], [1 x i64] }, { [2 x i64], [1 x i64] } } @SpMSpMAdd.Z.0.main(ptr %11, ptr %12, i64 %13, i64 %14, i64 %15, ptr %17, ptr %18, i64 %19, i64 %20, i64 %21, ptr %23, ptr %24, i64 %25, i64 %26, i64 %27, { [2 x i64], [3 x i64] } %4, ptr %29, ptr %30, i64 %31, i64 %32, i64 %33, ptr %35, ptr %36, i64 %37, i64 %38, i64 %39, ptr %41, ptr %42, i64 %43, i64 %44, i64 %45, { [2 x i64], [3 x i64] } %8)
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
