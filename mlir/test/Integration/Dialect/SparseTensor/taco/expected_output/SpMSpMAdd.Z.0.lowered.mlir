module attributes {llvm.data_layout = ""} {
  llvm.func @malloc(i64) -> !llvm.ptr
  llvm.func @SpMSpMAdd.Z.0.main(%arg0: !llvm.ptr, %arg1: !llvm.ptr, %arg2: i64, %arg3: i64, %arg4: i64, %arg5: !llvm.ptr, %arg6: !llvm.ptr, %arg7: i64, %arg8: i64, %arg9: i64, %arg10: !llvm.ptr, %arg11: !llvm.ptr, %arg12: i64, %arg13: i64, %arg14: i64, %arg15: !llvm.struct<(array<2 x i64>, array<3 x i64>)>, %arg16: !llvm.ptr, %arg17: !llvm.ptr, %arg18: i64, %arg19: i64, %arg20: i64, %arg21: !llvm.ptr, %arg22: !llvm.ptr, %arg23: i64, %arg24: i64, %arg25: i64, %arg26: !llvm.ptr, %arg27: !llvm.ptr, %arg28: i64, %arg29: i64, %arg30: i64, %arg31: !llvm.struct<(array<2 x i64>, array<3 x i64>)>) -> !llvm.struct<(struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)>, struct<(array<2 x i64>, array<1 x i64>)>)> attributes {llvm.emit_c_interface} {
    %0 = llvm.mlir.undef : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)>
    %1 = llvm.insertvalue %arg0, %0[0] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %2 = llvm.insertvalue %arg1, %1[1] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %3 = llvm.insertvalue %arg2, %2[2] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %4 = llvm.insertvalue %arg3, %3[3, 0] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %5 = llvm.insertvalue %arg4, %4[4, 0] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %6 = llvm.mlir.undef : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)>
    %7 = llvm.insertvalue %arg5, %6[0] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %8 = llvm.insertvalue %arg6, %7[1] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %9 = llvm.insertvalue %arg7, %8[2] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %10 = llvm.insertvalue %arg8, %9[3, 0] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %11 = llvm.insertvalue %arg9, %10[4, 0] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %12 = llvm.mlir.undef : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)>
    %13 = llvm.insertvalue %arg10, %12[0] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %14 = llvm.insertvalue %arg11, %13[1] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %15 = llvm.insertvalue %arg12, %14[2] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %16 = llvm.insertvalue %arg13, %15[3, 0] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %17 = llvm.insertvalue %arg14, %16[4, 0] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %18 = llvm.mlir.undef : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)>
    %19 = llvm.insertvalue %arg16, %18[0] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %20 = llvm.insertvalue %arg17, %19[1] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %21 = llvm.insertvalue %arg18, %20[2] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %22 = llvm.insertvalue %arg19, %21[3, 0] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %23 = llvm.insertvalue %arg20, %22[4, 0] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %24 = llvm.mlir.undef : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)>
    %25 = llvm.insertvalue %arg21, %24[0] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %26 = llvm.insertvalue %arg22, %25[1] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %27 = llvm.insertvalue %arg23, %26[2] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %28 = llvm.insertvalue %arg24, %27[3, 0] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %29 = llvm.insertvalue %arg25, %28[4, 0] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %30 = llvm.mlir.undef : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)>
    %31 = llvm.insertvalue %arg26, %30[0] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %32 = llvm.insertvalue %arg27, %31[1] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %33 = llvm.insertvalue %arg28, %32[2] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %34 = llvm.insertvalue %arg29, %33[3, 0] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %35 = llvm.insertvalue %arg30, %34[4, 0] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %36 = llvm.mlir.constant(0 : index) : i64
    %37 = llvm.mlir.constant(1 : index) : i64
    %38 = llvm.mlir.constant(32768 : index) : i64
    %39 = llvm.mlir.constant(256 : index) : i64
    %40 = llvm.mlir.constant(0.000000e+00 : f32) : f32
    %41 = llvm.mlir.constant(128 : index) : i64
    %42 = llvm.mlir.constant(0 : i64) : i64
    %43 = llvm.mlir.constant(128 : i64) : i64
    %44 = llvm.mlir.constant(256 : i64) : i64
    %45 = llvm.mlir.constant(32768 : i64) : i64
    %46 = llvm.mlir.constant(1 : index) : i64
    %47 = llvm.mlir.constant(32768 : index) : i64
    %48 = llvm.mlir.constant(0 : index) : i64
    %49 = llvm.mlir.null : !llvm.ptr
    %50 = llvm.getelementptr %49[32768] : (!llvm.ptr) -> !llvm.ptr, f32
    %51 = llvm.ptrtoint %50 : !llvm.ptr to i64
    %52 = llvm.call @malloc(%51) : (i64) -> !llvm.ptr
    %53 = llvm.mlir.undef : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)>
    %54 = llvm.insertvalue %52, %53[0] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %55 = llvm.insertvalue %52, %54[1] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %56 = llvm.insertvalue %36, %55[2] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %57 = llvm.insertvalue %38, %56[3, 0] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %58 = llvm.insertvalue %37, %57[4, 0] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %59 = llvm.mlir.undef : !llvm.struct<(array<2 x i64>, array<1 x i64>)>
    %60 = llvm.insertvalue %42, %59[1, 0] : !llvm.struct<(array<2 x i64>, array<1 x i64>)> 
    %61 = llvm.insertvalue %43, %60[0, 0] : !llvm.struct<(array<2 x i64>, array<1 x i64>)> 
    %62 = llvm.insertvalue %44, %61[0, 1] : !llvm.struct<(array<2 x i64>, array<1 x i64>)> 
    llvm.br ^bb1(%48 : i64)
  ^bb1(%63: i64):  // 2 preds: ^bb0, ^bb2
    %64 = llvm.icmp "slt" %63, %47 : i64
    llvm.cond_br %64, ^bb2, ^bb3
  ^bb2:  // pred: ^bb1
    %65 = llvm.getelementptr %52[%63] : (!llvm.ptr, i64) -> !llvm.ptr, f32
    llvm.store %40, %65 : f32, !llvm.ptr
    %66 = llvm.add %63, %46  : i64
    llvm.br ^bb1(%66 : i64)
  ^bb3:  // pred: ^bb1
    %67 = llvm.insertvalue %45, %62[1, 0] : !llvm.struct<(array<2 x i64>, array<1 x i64>)> 
    omp.parallel   {
      omp.wsloop   for  (%arg32) : i64 = (%48) to (%41) step (%46) {
        %71 = llvm.extractvalue %5[1] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
        %72 = llvm.getelementptr %71[%arg32] : (!llvm.ptr, i64) -> !llvm.ptr, i64
        %73 = llvm.load %72 : !llvm.ptr -> i64
        %74 = llvm.add %arg32, %46  : i64
        %75 = llvm.extractvalue %5[1] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
        %76 = llvm.getelementptr %75[%74] : (!llvm.ptr, i64) -> !llvm.ptr, i64
        %77 = llvm.load %76 : !llvm.ptr -> i64
        %78 = llvm.extractvalue %23[1] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
        %79 = llvm.getelementptr %78[%arg32] : (!llvm.ptr, i64) -> !llvm.ptr, i64
        %80 = llvm.load %79 : !llvm.ptr -> i64
        %81 = llvm.add %arg32, %46  : i64
        %82 = llvm.extractvalue %23[1] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
        %83 = llvm.getelementptr %82[%81] : (!llvm.ptr, i64) -> !llvm.ptr, i64
        %84 = llvm.load %83 : !llvm.ptr -> i64
        llvm.br ^bb1(%73, %80 : i64, i64)
      ^bb1(%85: i64, %86: i64):  // 2 preds: ^bb0, ^bb10
        %87 = llvm.icmp "ult" %85, %77 : i64
        %88 = llvm.icmp "ult" %86, %84 : i64
        %89 = llvm.and %87, %88  : i1
        llvm.cond_br %89, ^bb2(%85, %86 : i64, i64), ^bb11
      ^bb2(%90: i64, %91: i64):  // pred: ^bb1
        %92 = llvm.extractvalue %11[1] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
        %93 = llvm.getelementptr %92[%90] : (!llvm.ptr, i64) -> !llvm.ptr, i64
        %94 = llvm.load %93 : !llvm.ptr -> i64
        %95 = llvm.extractvalue %29[1] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
        %96 = llvm.getelementptr %95[%91] : (!llvm.ptr, i64) -> !llvm.ptr, i64
        %97 = llvm.load %96 : !llvm.ptr -> i64
        %98 = llvm.icmp "ult" %97, %94 : i64
        %99 = llvm.select %98, %97, %94 : i1, i64
        %100 = llvm.mul %arg32, %39  : i64
        %101 = llvm.add %100, %99  : i64
        %102 = llvm.icmp "eq" %94, %99 : i64
        %103 = llvm.icmp "eq" %97, %99 : i64
        %104 = llvm.and %102, %103  : i1
        llvm.cond_br %104, ^bb3, ^bb4
      ^bb3:  // pred: ^bb2
        %105 = llvm.extractvalue %17[1] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
        %106 = llvm.getelementptr %105[%90] : (!llvm.ptr, i64) -> !llvm.ptr, f32
        %107 = llvm.load %106 : !llvm.ptr -> f32
        %108 = llvm.extractvalue %35[1] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
        %109 = llvm.getelementptr %108[%91] : (!llvm.ptr, i64) -> !llvm.ptr, f32
        %110 = llvm.load %109 : !llvm.ptr -> f32
        %111 = llvm.fadd %107, %110  : f32
        %112 = llvm.getelementptr %52[%101] : (!llvm.ptr, i64) -> !llvm.ptr, f32
        llvm.store %111, %112 : f32, !llvm.ptr
        llvm.br ^bb10
      ^bb4:  // pred: ^bb2
        %113 = llvm.icmp "eq" %94, %99 : i64
        llvm.cond_br %113, ^bb5, ^bb6
      ^bb5:  // pred: ^bb4
        %114 = llvm.extractvalue %17[1] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
        %115 = llvm.getelementptr %114[%90] : (!llvm.ptr, i64) -> !llvm.ptr, f32
        %116 = llvm.load %115 : !llvm.ptr -> f32
        %117 = llvm.getelementptr %52[%101] : (!llvm.ptr, i64) -> !llvm.ptr, f32
        llvm.store %116, %117 : f32, !llvm.ptr
        llvm.br ^bb9
      ^bb6:  // pred: ^bb4
        %118 = llvm.icmp "eq" %97, %99 : i64
        llvm.cond_br %118, ^bb7, ^bb8
      ^bb7:  // pred: ^bb6
        %119 = llvm.extractvalue %35[1] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
        %120 = llvm.getelementptr %119[%91] : (!llvm.ptr, i64) -> !llvm.ptr, f32
        %121 = llvm.load %120 : !llvm.ptr -> f32
        %122 = llvm.getelementptr %52[%101] : (!llvm.ptr, i64) -> !llvm.ptr, f32
        llvm.store %121, %122 : f32, !llvm.ptr
        llvm.br ^bb8
      ^bb8:  // 2 preds: ^bb6, ^bb7
        llvm.br ^bb9
      ^bb9:  // 2 preds: ^bb5, ^bb8
        llvm.br ^bb10
      ^bb10:  // 2 preds: ^bb3, ^bb9
        %123 = llvm.icmp "eq" %94, %99 : i64
        %124 = llvm.add %90, %46  : i64
        %125 = llvm.select %123, %124, %90 : i1, i64
        %126 = llvm.icmp "eq" %97, %99 : i64
        %127 = llvm.add %91, %46  : i64
        %128 = llvm.select %126, %127, %91 : i1, i64
        llvm.br ^bb1(%125, %128 : i64, i64)
      ^bb11:  // pred: ^bb1
        omp.parallel   {
          omp.wsloop   for  (%arg33) : i64 = (%85) to (%77) step (%46) {
            %129 = llvm.extractvalue %11[1] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
            %130 = llvm.getelementptr %129[%arg33] : (!llvm.ptr, i64) -> !llvm.ptr, i64
            %131 = llvm.load %130 : !llvm.ptr -> i64
            %132 = llvm.mul %arg32, %39  : i64
            %133 = llvm.add %132, %131  : i64
            %134 = llvm.extractvalue %17[1] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
            %135 = llvm.getelementptr %134[%arg33] : (!llvm.ptr, i64) -> !llvm.ptr, f32
            %136 = llvm.load %135 : !llvm.ptr -> f32
            %137 = llvm.getelementptr %52[%133] : (!llvm.ptr, i64) -> !llvm.ptr, f32
            llvm.store %136, %137 : f32, !llvm.ptr
            omp.yield
          }
          omp.terminator
        }
        omp.parallel   {
          omp.wsloop   for  (%arg33) : i64 = (%86) to (%84) step (%46) {
            %129 = llvm.extractvalue %29[1] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
            %130 = llvm.getelementptr %129[%arg33] : (!llvm.ptr, i64) -> !llvm.ptr, i64
            %131 = llvm.load %130 : !llvm.ptr -> i64
            %132 = llvm.mul %arg32, %39  : i64
            %133 = llvm.add %132, %131  : i64
            %134 = llvm.extractvalue %35[1] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
            %135 = llvm.getelementptr %134[%arg33] : (!llvm.ptr, i64) -> !llvm.ptr, f32
            %136 = llvm.load %135 : !llvm.ptr -> f32
            %137 = llvm.getelementptr %52[%133] : (!llvm.ptr, i64) -> !llvm.ptr, f32
            llvm.store %136, %137 : f32, !llvm.ptr
            omp.yield
          }
          omp.terminator
        }
        omp.yield
      }
      omp.terminator
    }
    %68 = llvm.mlir.undef : !llvm.struct<(struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)>, struct<(array<2 x i64>, array<1 x i64>)>)>
    %69 = llvm.insertvalue %58, %68[0] : !llvm.struct<(struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)>, struct<(array<2 x i64>, array<1 x i64>)>)> 
    %70 = llvm.insertvalue %67, %69[1] : !llvm.struct<(struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)>, struct<(array<2 x i64>, array<1 x i64>)>)> 
    llvm.return %70 : !llvm.struct<(struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)>, struct<(array<2 x i64>, array<1 x i64>)>)>
  }
  llvm.func @_mlir_ciface_SpMSpMAdd.Z.0.main(%arg0: !llvm.ptr, %arg1: !llvm.ptr, %arg2: !llvm.ptr, %arg3: !llvm.ptr, %arg4: !llvm.struct<(array<2 x i64>, array<3 x i64>)>, %arg5: !llvm.ptr, %arg6: !llvm.ptr, %arg7: !llvm.ptr, %arg8: !llvm.struct<(array<2 x i64>, array<3 x i64>)>) attributes {llvm.emit_c_interface} {
    %0 = llvm.load %arg1 : !llvm.ptr -> !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)>
    %1 = llvm.extractvalue %0[0] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %2 = llvm.extractvalue %0[1] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %3 = llvm.extractvalue %0[2] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %4 = llvm.extractvalue %0[3, 0] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %5 = llvm.extractvalue %0[4, 0] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %6 = llvm.load %arg2 : !llvm.ptr -> !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)>
    %7 = llvm.extractvalue %6[0] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %8 = llvm.extractvalue %6[1] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %9 = llvm.extractvalue %6[2] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %10 = llvm.extractvalue %6[3, 0] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %11 = llvm.extractvalue %6[4, 0] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %12 = llvm.load %arg3 : !llvm.ptr -> !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)>
    %13 = llvm.extractvalue %12[0] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %14 = llvm.extractvalue %12[1] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %15 = llvm.extractvalue %12[2] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %16 = llvm.extractvalue %12[3, 0] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %17 = llvm.extractvalue %12[4, 0] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %18 = llvm.load %arg5 : !llvm.ptr -> !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)>
    %19 = llvm.extractvalue %18[0] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %20 = llvm.extractvalue %18[1] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %21 = llvm.extractvalue %18[2] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %22 = llvm.extractvalue %18[3, 0] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %23 = llvm.extractvalue %18[4, 0] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %24 = llvm.load %arg6 : !llvm.ptr -> !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)>
    %25 = llvm.extractvalue %24[0] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %26 = llvm.extractvalue %24[1] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %27 = llvm.extractvalue %24[2] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %28 = llvm.extractvalue %24[3, 0] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %29 = llvm.extractvalue %24[4, 0] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %30 = llvm.load %arg7 : !llvm.ptr -> !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)>
    %31 = llvm.extractvalue %30[0] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %32 = llvm.extractvalue %30[1] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %33 = llvm.extractvalue %30[2] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %34 = llvm.extractvalue %30[3, 0] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %35 = llvm.extractvalue %30[4, 0] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %36 = llvm.call @SpMSpMAdd.Z.0.main(%1, %2, %3, %4, %5, %7, %8, %9, %10, %11, %13, %14, %15, %16, %17, %arg4, %19, %20, %21, %22, %23, %25, %26, %27, %28, %29, %31, %32, %33, %34, %35, %arg8) : (!llvm.ptr, !llvm.ptr, i64, i64, i64, !llvm.ptr, !llvm.ptr, i64, i64, i64, !llvm.ptr, !llvm.ptr, i64, i64, i64, !llvm.struct<(array<2 x i64>, array<3 x i64>)>, !llvm.ptr, !llvm.ptr, i64, i64, i64, !llvm.ptr, !llvm.ptr, i64, i64, i64, !llvm.ptr, !llvm.ptr, i64, i64, i64, !llvm.struct<(array<2 x i64>, array<3 x i64>)>) -> !llvm.struct<(struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)>, struct<(array<2 x i64>, array<1 x i64>)>)>
    llvm.store %36, %arg0 : !llvm.struct<(struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)>, struct<(array<2 x i64>, array<1 x i64>)>)>, !llvm.ptr
    llvm.return
  }
}

