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

define { { ptr, ptr, i64, [1 x i64], [1 x i64] }, { [1 x i64], [1 x i64] } } @SpMVMul.z.0.main(ptr %0, ptr %1, i64 %2, i64 %3, i64 %4, ptr %5, ptr %6, i64 %7, i64 %8, i64 %9, ptr %10, ptr %11, i64 %12, i64 %13, i64 %14, { [2 x i64], [3 x i64] } %15, ptr %16, ptr %17, i64 %18, i64 %19, i64 %20, { [1 x i64], [1 x i64] } %21) {
  %structArg49 = alloca { ptr, ptr, ptr, ptr, ptr }, align 8
  %.reloaded45 = alloca { ptr, ptr, i64, [1 x i64], [1 x i64] }, align 8
  %.reloaded46 = alloca { ptr, ptr, i64, [1 x i64], [1 x i64] }, align 8
  %.reloaded47 = alloca { ptr, ptr, i64, [1 x i64], [1 x i64] }, align 8
  %.reloaded48 = alloca { ptr, ptr, i64, [1 x i64], [1 x i64] }, align 8
  %23 = insertvalue { ptr, ptr, i64, [1 x i64], [1 x i64] } undef, ptr %0, 0
  %24 = insertvalue { ptr, ptr, i64, [1 x i64], [1 x i64] } %23, ptr %1, 1
  %25 = insertvalue { ptr, ptr, i64, [1 x i64], [1 x i64] } %24, i64 %2, 2
  %26 = insertvalue { ptr, ptr, i64, [1 x i64], [1 x i64] } %25, i64 %3, 3, 0
  %27 = insertvalue { ptr, ptr, i64, [1 x i64], [1 x i64] } %26, i64 %4, 4, 0
  %28 = insertvalue { ptr, ptr, i64, [1 x i64], [1 x i64] } undef, ptr %5, 0
  %29 = insertvalue { ptr, ptr, i64, [1 x i64], [1 x i64] } %28, ptr %6, 1
  %30 = insertvalue { ptr, ptr, i64, [1 x i64], [1 x i64] } %29, i64 %7, 2
  %31 = insertvalue { ptr, ptr, i64, [1 x i64], [1 x i64] } %30, i64 %8, 3, 0
  %32 = insertvalue { ptr, ptr, i64, [1 x i64], [1 x i64] } %31, i64 %9, 4, 0
  %33 = insertvalue { ptr, ptr, i64, [1 x i64], [1 x i64] } undef, ptr %10, 0
  %34 = insertvalue { ptr, ptr, i64, [1 x i64], [1 x i64] } %33, ptr %11, 1
  %35 = insertvalue { ptr, ptr, i64, [1 x i64], [1 x i64] } %34, i64 %12, 2
  %36 = insertvalue { ptr, ptr, i64, [1 x i64], [1 x i64] } %35, i64 %13, 3, 0
  %37 = insertvalue { ptr, ptr, i64, [1 x i64], [1 x i64] } %36, i64 %14, 4, 0
  %38 = insertvalue { ptr, ptr, i64, [1 x i64], [1 x i64] } undef, ptr %16, 0
  %39 = insertvalue { ptr, ptr, i64, [1 x i64], [1 x i64] } %38, ptr %17, 1
  %40 = insertvalue { ptr, ptr, i64, [1 x i64], [1 x i64] } %39, i64 %18, 2
  %41 = insertvalue { ptr, ptr, i64, [1 x i64], [1 x i64] } %40, i64 %19, 3, 0
  %42 = insertvalue { ptr, ptr, i64, [1 x i64], [1 x i64] } %41, i64 %20, 4, 0
  %43 = call ptr @malloc(i64 ptrtoint (ptr getelementptr (float, ptr null, i32 16) to i64))
  %44 = insertvalue { ptr, ptr, i64, [1 x i64], [1 x i64] } undef, ptr %43, 0
  %45 = insertvalue { ptr, ptr, i64, [1 x i64], [1 x i64] } %44, ptr %43, 1
  %46 = insertvalue { ptr, ptr, i64, [1 x i64], [1 x i64] } %45, i64 0, 2
  %47 = insertvalue { ptr, ptr, i64, [1 x i64], [1 x i64] } %46, i64 16, 3, 0
  %48 = insertvalue { ptr, ptr, i64, [1 x i64], [1 x i64] } %47, i64 1, 4, 0
  br label %49

49:                                               ; preds = %52, %22
  %50 = phi i64 [ %54, %52 ], [ 0, %22 ]
  %51 = icmp slt i64 %50, 16
  br i1 %51, label %52, label %55

52:                                               ; preds = %49
  %53 = getelementptr float, ptr %43, i64 %50
  store float 0.000000e+00, ptr %53, align 4
  %54 = add i64 %50, 1
  br label %49

55:                                               ; preds = %49
  %omp_global_thread_num = call i32 @__kmpc_global_thread_num(ptr @1)
  store { ptr, ptr, i64, [1 x i64], [1 x i64] } %27, ptr %.reloaded45, align 8
  store { ptr, ptr, i64, [1 x i64], [1 x i64] } %32, ptr %.reloaded46, align 8
  store { ptr, ptr, i64, [1 x i64], [1 x i64] } %37, ptr %.reloaded47, align 8
  store { ptr, ptr, i64, [1 x i64], [1 x i64] } %42, ptr %.reloaded48, align 8
  br label %omp_parallel

omp_parallel:                                     ; preds = %55
  %gep_.reloaded45 = getelementptr { ptr, ptr, ptr, ptr, ptr }, ptr %structArg49, i32 0, i32 0
  store ptr %.reloaded45, ptr %gep_.reloaded45, align 8
  %gep_.reloaded46 = getelementptr { ptr, ptr, ptr, ptr, ptr }, ptr %structArg49, i32 0, i32 1
  store ptr %.reloaded46, ptr %gep_.reloaded46, align 8
  %gep_.reloaded47 = getelementptr { ptr, ptr, ptr, ptr, ptr }, ptr %structArg49, i32 0, i32 2
  store ptr %.reloaded47, ptr %gep_.reloaded47, align 8
  %gep_.reloaded48 = getelementptr { ptr, ptr, ptr, ptr, ptr }, ptr %structArg49, i32 0, i32 3
  store ptr %.reloaded48, ptr %gep_.reloaded48, align 8
  %gep_50 = getelementptr { ptr, ptr, ptr, ptr, ptr }, ptr %structArg49, i32 0, i32 4
  store ptr %43, ptr %gep_50, align 8
  call void (ptr, i32, ptr, ...) @__kmpc_fork_call(ptr @1, i32 1, ptr @SpMVMul.z.0.main..omp_par.1, ptr %structArg49)
  br label %omp.par.outlined.exit44

omp.par.outlined.exit44:                          ; preds = %omp_parallel
  br label %omp.par.exit.split

omp.par.exit.split:                               ; preds = %omp.par.outlined.exit44
  %56 = insertvalue { { ptr, ptr, i64, [1 x i64], [1 x i64] }, { [1 x i64], [1 x i64] } } undef, { ptr, ptr, i64, [1 x i64], [1 x i64] } %48, 0
  %57 = insertvalue { { ptr, ptr, i64, [1 x i64], [1 x i64] }, { [1 x i64], [1 x i64] } } %56, { [1 x i64], [1 x i64] } { [1 x i64] [i64 16], [1 x i64] [i64 16] }, 1
  ret { { ptr, ptr, i64, [1 x i64], [1 x i64] }, { [1 x i64], [1 x i64] } } %57
}

; Function Attrs: norecurse nounwind
define internal void @SpMVMul.z.0.main..omp_par.1(ptr noalias %tid.addr, ptr noalias %zero.addr, ptr %0) #0 {
omp.par.entry:
  %gep_.reloaded45 = getelementptr { ptr, ptr, ptr, ptr, ptr }, ptr %0, i32 0, i32 0
  %loadgep_.reloaded45 = load ptr, ptr %gep_.reloaded45, align 8
  %gep_.reloaded46 = getelementptr { ptr, ptr, ptr, ptr, ptr }, ptr %0, i32 0, i32 1
  %loadgep_.reloaded46 = load ptr, ptr %gep_.reloaded46, align 8
  %gep_.reloaded47 = getelementptr { ptr, ptr, ptr, ptr, ptr }, ptr %0, i32 0, i32 2
  %loadgep_.reloaded47 = load ptr, ptr %gep_.reloaded47, align 8
  %gep_.reloaded48 = getelementptr { ptr, ptr, ptr, ptr, ptr }, ptr %0, i32 0, i32 3
  %loadgep_.reloaded48 = load ptr, ptr %gep_.reloaded48, align 8
  %gep_ = getelementptr { ptr, ptr, ptr, ptr, ptr }, ptr %0, i32 0, i32 4
  %loadgep_ = load ptr, ptr %gep_, align 8
  %structArg = alloca { ptr, ptr, ptr, ptr, ptr, ptr }, align 8
  %.reloaded = alloca i64, align 8
  %.reloaded34 = alloca i64, align 8
  %.reloaded35 = alloca { ptr, ptr, i64, [1 x i64], [1 x i64] }, align 8
  %.reloaded36 = alloca { ptr, ptr, i64, [1 x i64], [1 x i64] }, align 8
  %.reloaded37 = alloca { ptr, ptr, i64, [1 x i64], [1 x i64] }, align 8
  %tid.addr.local = alloca i32, align 4
  %1 = load i32, ptr %tid.addr, align 4
  store i32 %1, ptr %tid.addr.local, align 4
  %tid = load i32, ptr %tid.addr.local, align 4
  %2 = load { ptr, ptr, i64, [1 x i64], [1 x i64] }, ptr %loadgep_.reloaded45, align 8
  %3 = load { ptr, ptr, i64, [1 x i64], [1 x i64] }, ptr %loadgep_.reloaded46, align 8
  %4 = load { ptr, ptr, i64, [1 x i64], [1 x i64] }, ptr %loadgep_.reloaded47, align 8
  %5 = load { ptr, ptr, i64, [1 x i64], [1 x i64] }, ptr %loadgep_.reloaded48, align 8
  %p.lastiter38 = alloca i32, align 4
  %p.lowerbound39 = alloca i64, align 8
  %p.upperbound40 = alloca i64, align 8
  %p.stride41 = alloca i64, align 8
  br label %omp.par.region

omp.par.region:                                   ; preds = %omp.par.entry
  br label %omp.par.region1

omp.par.region1:                                  ; preds = %omp.par.region
  %6 = alloca float, i64 1, align 4
  br label %omp_loop.preheader

omp_loop.preheader:                               ; preds = %omp.par.region1
  store i64 0, ptr %p.lowerbound39, align 4
  store i64 15, ptr %p.upperbound40, align 4
  store i64 1, ptr %p.stride41, align 4
  %omp_global_thread_num42 = call i32 @__kmpc_global_thread_num(ptr @1)
  call void @__kmpc_for_static_init_8u(ptr @1, i32 %omp_global_thread_num42, i32 34, ptr %p.lastiter38, ptr %p.lowerbound39, ptr %p.upperbound40, ptr %p.stride41, i64 1, i64 0)
  %7 = load i64, ptr %p.lowerbound39, align 4
  %8 = load i64, ptr %p.upperbound40, align 4
  %9 = sub i64 %8, %7
  %10 = add i64 %9, 1
  br label %omp_loop.header

omp_loop.header:                                  ; preds = %omp_loop.inc, %omp_loop.preheader
  %omp_loop.iv = phi i64 [ 0, %omp_loop.preheader ], [ %omp_loop.next, %omp_loop.inc ]
  br label %omp_loop.cond

omp_loop.cond:                                    ; preds = %omp_loop.header
  %omp_loop.cmp = icmp ult i64 %omp_loop.iv, %10
  br i1 %omp_loop.cmp, label %omp_loop.body, label %omp_loop.exit

omp_loop.exit:                                    ; preds = %omp_loop.cond
  call void @__kmpc_for_static_fini(ptr @1, i32 %omp_global_thread_num42)
  %omp_global_thread_num43 = call i32 @__kmpc_global_thread_num(ptr @1)
  call void @__kmpc_barrier(ptr @2, i32 %omp_global_thread_num43)
  br label %omp_loop.after

omp_loop.after:                                   ; preds = %omp_loop.exit
  br label %omp.region.cont

omp.region.cont:                                  ; preds = %omp_loop.after
  br label %omp.par.pre_finalize

omp.par.pre_finalize:                             ; preds = %omp.region.cont
  br label %omp.par.outlined.exit44.exitStub

omp_loop.body:                                    ; preds = %omp_loop.cond
  %11 = add i64 %omp_loop.iv, %7
  %12 = mul i64 %11, 1
  %13 = add i64 %12, 0
  br label %omp.wsloop.region

omp.wsloop.region:                                ; preds = %omp_loop.body
  %14 = getelementptr float, ptr %loadgep_, i64 %13
  %15 = load float, ptr %14, align 4
  %16 = extractvalue { ptr, ptr, i64, [1 x i64], [1 x i64] } %2, 1
  %17 = getelementptr i64, ptr %16, i64 %13
  %18 = load i64, ptr %17, align 4
  %19 = add i64 %13, 1
  %20 = extractvalue { ptr, ptr, i64, [1 x i64], [1 x i64] } %2, 1
  %21 = getelementptr i64, ptr %20, i64 %19
  %22 = load i64, ptr %21, align 4
  store float %15, ptr %6, align 4
  %omp_global_thread_num3 = call i32 @__kmpc_global_thread_num(ptr @1)
  store i64 %22, ptr %.reloaded, align 4
  store i64 %18, ptr %.reloaded34, align 4
  store { ptr, ptr, i64, [1 x i64], [1 x i64] } %3, ptr %.reloaded35, align 8
  store { ptr, ptr, i64, [1 x i64], [1 x i64] } %4, ptr %.reloaded36, align 8
  store { ptr, ptr, i64, [1 x i64], [1 x i64] } %5, ptr %.reloaded37, align 8
  br label %omp_parallel

omp_parallel:                                     ; preds = %omp.wsloop.region
  %gep_.reloaded = getelementptr { ptr, ptr, ptr, ptr, ptr, ptr }, ptr %structArg, i32 0, i32 0
  store ptr %.reloaded, ptr %gep_.reloaded, align 8
  %gep_.reloaded34 = getelementptr { ptr, ptr, ptr, ptr, ptr, ptr }, ptr %structArg, i32 0, i32 1
  store ptr %.reloaded34, ptr %gep_.reloaded34, align 8
  %gep_.reloaded35 = getelementptr { ptr, ptr, ptr, ptr, ptr, ptr }, ptr %structArg, i32 0, i32 2
  store ptr %.reloaded35, ptr %gep_.reloaded35, align 8
  %gep_.reloaded36 = getelementptr { ptr, ptr, ptr, ptr, ptr, ptr }, ptr %structArg, i32 0, i32 3
  store ptr %.reloaded36, ptr %gep_.reloaded36, align 8
  %gep_.reloaded37 = getelementptr { ptr, ptr, ptr, ptr, ptr, ptr }, ptr %structArg, i32 0, i32 4
  store ptr %.reloaded37, ptr %gep_.reloaded37, align 8
  %gep_1 = getelementptr { ptr, ptr, ptr, ptr, ptr, ptr }, ptr %structArg, i32 0, i32 5
  store ptr %6, ptr %gep_1, align 8
  call void (ptr, i32, ptr, ...) @__kmpc_fork_call(ptr @1, i32 1, ptr @SpMVMul.z.0.main..omp_par, ptr %structArg)
  br label %omp.par.outlined.exit

omp.par.outlined.exit:                            ; preds = %omp_parallel
  br label %omp.par.exit9.split

omp.par.exit9.split:                              ; preds = %omp.par.outlined.exit
  %23 = load float, ptr %6, align 4
  %24 = getelementptr float, ptr %loadgep_, i64 %13
  store float %23, ptr %24, align 4
  br label %omp.region.cont2

omp.region.cont2:                                 ; preds = %omp.par.exit9.split
  br label %omp_loop.inc

omp_loop.inc:                                     ; preds = %omp.region.cont2
  %omp_loop.next = add nuw i64 %omp_loop.iv, 1
  br label %omp_loop.header

omp.par.outlined.exit44.exitStub:                 ; preds = %omp.par.pre_finalize
  ret void
}

; Function Attrs: norecurse nounwind
define internal void @SpMVMul.z.0.main..omp_par(ptr noalias %tid.addr4, ptr noalias %zero.addr5, ptr %0) #0 {
omp.par.entry6:
  %gep_.reloaded = getelementptr { ptr, ptr, ptr, ptr, ptr, ptr }, ptr %0, i32 0, i32 0
  %loadgep_.reloaded = load ptr, ptr %gep_.reloaded, align 8
  %gep_.reloaded34 = getelementptr { ptr, ptr, ptr, ptr, ptr, ptr }, ptr %0, i32 0, i32 1
  %loadgep_.reloaded34 = load ptr, ptr %gep_.reloaded34, align 8
  %gep_.reloaded35 = getelementptr { ptr, ptr, ptr, ptr, ptr, ptr }, ptr %0, i32 0, i32 2
  %loadgep_.reloaded35 = load ptr, ptr %gep_.reloaded35, align 8
  %gep_.reloaded36 = getelementptr { ptr, ptr, ptr, ptr, ptr, ptr }, ptr %0, i32 0, i32 3
  %loadgep_.reloaded36 = load ptr, ptr %gep_.reloaded36, align 8
  %gep_.reloaded37 = getelementptr { ptr, ptr, ptr, ptr, ptr, ptr }, ptr %0, i32 0, i32 4
  %loadgep_.reloaded37 = load ptr, ptr %gep_.reloaded37, align 8
  %gep_ = getelementptr { ptr, ptr, ptr, ptr, ptr, ptr }, ptr %0, i32 0, i32 5
  %loadgep_ = load ptr, ptr %gep_, align 8
  %tid.addr.local10 = alloca i32, align 4
  %1 = load i32, ptr %tid.addr4, align 4
  store i32 %1, ptr %tid.addr.local10, align 4
  %tid11 = load i32, ptr %tid.addr.local10, align 4
  %2 = load i64, ptr %loadgep_.reloaded, align 4
  %3 = load i64, ptr %loadgep_.reloaded34, align 4
  %4 = load { ptr, ptr, i64, [1 x i64], [1 x i64] }, ptr %loadgep_.reloaded35, align 8
  %5 = load { ptr, ptr, i64, [1 x i64], [1 x i64] }, ptr %loadgep_.reloaded36, align 8
  %6 = load { ptr, ptr, i64, [1 x i64], [1 x i64] }, ptr %loadgep_.reloaded37, align 8
  %7 = alloca float, align 4
  %p.lastiter = alloca i32, align 4
  %p.lowerbound = alloca i64, align 8
  %p.upperbound = alloca i64, align 8
  %p.stride = alloca i64, align 8
  %red.array = alloca [1 x ptr], align 8
  br label %omp.par.region7

omp.par.region7:                                  ; preds = %omp.par.entry6
  br label %omp.par.region15

omp.par.region15:                                 ; preds = %omp.par.region7
  store float 0.000000e+00, ptr %7, align 4
  %8 = select i1 false, i64 %2, i64 %3
  %9 = select i1 false, i64 %3, i64 %2
  %10 = sub nsw i64 %9, %8
  %11 = icmp sle i64 %9, %8
  %12 = sub i64 %10, 1
  %13 = udiv i64 %12, 1
  %14 = add i64 %13, 1
  %15 = icmp ule i64 %10, 1
  %16 = select i1 %15, i64 1, i64 %14
  %omp_loop.tripcount = select i1 %11, i64 0, i64 %16
  br label %omp_loop.preheader16

omp_loop.preheader16:                             ; preds = %omp.par.region15
  store i64 0, ptr %p.lowerbound, align 4
  %17 = sub i64 %omp_loop.tripcount, 1
  store i64 %17, ptr %p.upperbound, align 4
  store i64 1, ptr %p.stride, align 4
  %omp_global_thread_num30 = call i32 @__kmpc_global_thread_num(ptr @1)
  call void @__kmpc_for_static_init_8u(ptr @1, i32 %omp_global_thread_num30, i32 34, ptr %p.lastiter, ptr %p.lowerbound, ptr %p.upperbound, ptr %p.stride, i64 1, i64 0)
  %18 = load i64, ptr %p.lowerbound, align 4
  %19 = load i64, ptr %p.upperbound, align 4
  %20 = sub i64 %19, %18
  %21 = add i64 %20, 1
  br label %omp_loop.header17

omp_loop.header17:                                ; preds = %omp_loop.inc20, %omp_loop.preheader16
  %omp_loop.iv23 = phi i64 [ 0, %omp_loop.preheader16 ], [ %omp_loop.next25, %omp_loop.inc20 ]
  br label %omp_loop.cond18

omp_loop.cond18:                                  ; preds = %omp_loop.header17
  %omp_loop.cmp24 = icmp ult i64 %omp_loop.iv23, %21
  br i1 %omp_loop.cmp24, label %omp_loop.body19, label %omp_loop.exit21

omp_loop.exit21:                                  ; preds = %omp_loop.cond18
  call void @__kmpc_for_static_fini(ptr @1, i32 %omp_global_thread_num30)
  %omp_global_thread_num31 = call i32 @__kmpc_global_thread_num(ptr @1)
  call void @__kmpc_barrier(ptr @2, i32 %omp_global_thread_num31)
  br label %omp_loop.after22

omp_loop.after22:                                 ; preds = %omp_loop.exit21
  %red.array.elem.0 = getelementptr inbounds [1 x ptr], ptr %red.array, i64 0, i64 0
  store ptr %7, ptr %red.array.elem.0, align 8
  %omp_global_thread_num32 = call i32 @__kmpc_global_thread_num(ptr @3)
  %reduce = call i32 @__kmpc_reduce(ptr @3, i32 %omp_global_thread_num32, i32 1, i64 8, ptr %red.array, ptr @.omp.reduction.func, ptr @.gomp_critical_user_.reduction.var)
  switch i32 %reduce, label %reduce.finalize [
    i32 1, label %reduce.switch.nonatomic
    i32 2, label %reduce.switch.atomic
  ]

reduce.switch.atomic:                             ; preds = %omp_loop.after22
  %22 = load float, ptr %7, align 4
  %23 = atomicrmw fadd ptr %loadgep_, float %22 monotonic, align 4
  br label %reduce.finalize

reduce.switch.nonatomic:                          ; preds = %omp_loop.after22
  %red.value.0 = load float, ptr %loadgep_, align 4
  %red.private.value.0 = load float, ptr %7, align 4
  %24 = fadd float %red.value.0, %red.private.value.0
  store float %24, ptr %loadgep_, align 4
  call void @__kmpc_end_reduce(ptr @3, i32 %omp_global_thread_num32, ptr @.gomp_critical_user_.reduction.var)
  br label %reduce.finalize

reduce.finalize:                                  ; preds = %reduce.switch.atomic, %reduce.switch.nonatomic, %omp_loop.after22
  %omp_global_thread_num33 = call i32 @__kmpc_global_thread_num(ptr @1)
  call void @__kmpc_barrier(ptr @2, i32 %omp_global_thread_num33)
  br label %omp.region.cont14

omp.region.cont14:                                ; preds = %reduce.finalize
  br label %omp.par.pre_finalize8

omp.par.pre_finalize8:                            ; preds = %omp.region.cont14
  br label %omp.par.outlined.exit.exitStub

omp_loop.body19:                                  ; preds = %omp_loop.cond18
  %25 = add i64 %omp_loop.iv23, %18
  %26 = mul i64 %25, 1
  %27 = add i64 %26, %3
  br label %omp.wsloop.region27

omp.wsloop.region27:                              ; preds = %omp_loop.body19
  %28 = call ptr @llvm.stacksave()
  br label %omp.wsloop.region28

omp.wsloop.region28:                              ; preds = %omp.wsloop.region27
  %29 = extractvalue { ptr, ptr, i64, [1 x i64], [1 x i64] } %4, 1
  %30 = getelementptr i64, ptr %29, i64 %27
  %31 = load i64, ptr %30, align 4
  %32 = extractvalue { ptr, ptr, i64, [1 x i64], [1 x i64] } %5, 1
  %33 = getelementptr float, ptr %32, i64 %27
  %34 = load float, ptr %33, align 4
  %35 = extractvalue { ptr, ptr, i64, [1 x i64], [1 x i64] } %6, 1
  %36 = getelementptr float, ptr %35, i64 %31
  %37 = load float, ptr %36, align 4
  %38 = fmul float %34, %37
  %39 = load float, ptr %7, align 4
  %40 = fadd float %39, %38
  store float %40, ptr %7, align 4
  call void @llvm.stackrestore(ptr %28)
  br label %omp.wsloop.region29

omp.wsloop.region29:                              ; preds = %omp.wsloop.region28
  br label %omp.region.cont26

omp.region.cont26:                                ; preds = %omp.wsloop.region29
  br label %omp_loop.inc20

omp_loop.inc20:                                   ; preds = %omp.region.cont26
  %omp_loop.next25 = add nuw i64 %omp_loop.iv23, 1
  br label %omp_loop.header17

omp.par.outlined.exit.exitStub:                   ; preds = %omp.par.pre_finalize8
  ret void
}

define void @_mlir_ciface_SpMVMul.z.0.main(ptr %0, ptr %1, ptr %2, ptr %3, { [2 x i64], [3 x i64] } %4, ptr %5, { [1 x i64], [1 x i64] } %6) {
  %8 = load { ptr, ptr, i64, [1 x i64], [1 x i64] }, ptr %1, align 8
  %9 = extractvalue { ptr, ptr, i64, [1 x i64], [1 x i64] } %8, 0
  %10 = extractvalue { ptr, ptr, i64, [1 x i64], [1 x i64] } %8, 1
  %11 = extractvalue { ptr, ptr, i64, [1 x i64], [1 x i64] } %8, 2
  %12 = extractvalue { ptr, ptr, i64, [1 x i64], [1 x i64] } %8, 3, 0
  %13 = extractvalue { ptr, ptr, i64, [1 x i64], [1 x i64] } %8, 4, 0
  %14 = load { ptr, ptr, i64, [1 x i64], [1 x i64] }, ptr %2, align 8
  %15 = extractvalue { ptr, ptr, i64, [1 x i64], [1 x i64] } %14, 0
  %16 = extractvalue { ptr, ptr, i64, [1 x i64], [1 x i64] } %14, 1
  %17 = extractvalue { ptr, ptr, i64, [1 x i64], [1 x i64] } %14, 2
  %18 = extractvalue { ptr, ptr, i64, [1 x i64], [1 x i64] } %14, 3, 0
  %19 = extractvalue { ptr, ptr, i64, [1 x i64], [1 x i64] } %14, 4, 0
  %20 = load { ptr, ptr, i64, [1 x i64], [1 x i64] }, ptr %3, align 8
  %21 = extractvalue { ptr, ptr, i64, [1 x i64], [1 x i64] } %20, 0
  %22 = extractvalue { ptr, ptr, i64, [1 x i64], [1 x i64] } %20, 1
  %23 = extractvalue { ptr, ptr, i64, [1 x i64], [1 x i64] } %20, 2
  %24 = extractvalue { ptr, ptr, i64, [1 x i64], [1 x i64] } %20, 3, 0
  %25 = extractvalue { ptr, ptr, i64, [1 x i64], [1 x i64] } %20, 4, 0
  %26 = load { ptr, ptr, i64, [1 x i64], [1 x i64] }, ptr %5, align 8
  %27 = extractvalue { ptr, ptr, i64, [1 x i64], [1 x i64] } %26, 0
  %28 = extractvalue { ptr, ptr, i64, [1 x i64], [1 x i64] } %26, 1
  %29 = extractvalue { ptr, ptr, i64, [1 x i64], [1 x i64] } %26, 2
  %30 = extractvalue { ptr, ptr, i64, [1 x i64], [1 x i64] } %26, 3, 0
  %31 = extractvalue { ptr, ptr, i64, [1 x i64], [1 x i64] } %26, 4, 0
  %32 = call { { ptr, ptr, i64, [1 x i64], [1 x i64] }, { [1 x i64], [1 x i64] } } @SpMVMul.z.0.main(ptr %9, ptr %10, i64 %11, i64 %12, i64 %13, ptr %15, ptr %16, i64 %17, i64 %18, i64 %19, ptr %21, ptr %22, i64 %23, i64 %24, i64 %25, { [2 x i64], [3 x i64] } %4, ptr %27, ptr %28, i64 %29, i64 %30, i64 %31, { [1 x i64], [1 x i64] } %6)
  store { { ptr, ptr, i64, [1 x i64], [1 x i64] }, { [1 x i64], [1 x i64] } } %32, ptr %0, align 8
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
