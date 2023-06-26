#map = affine_map<(d0, d1) -> (d0, d1)>
#map1 = affine_map<(d0, d1) -> (d1)>
#map2 = affine_map<(d0, d1) -> (d0)>
module {
  func.func @SpMVMul.z.0.main(%arg0: tensor<128x128xf32, #sparse_tensor.encoding<{ lvlTypes = [ "dense", "compressed" ] }>>, %arg1: tensor<128xf32, #sparse_tensor.encoding<{ lvlTypes = [ "dense" ] }>>) -> tensor<128xf32, #sparse_tensor.encoding<{ lvlTypes = [ "dense" ] }>> attributes {llvm.emit_c_interface} {
    %0 = bufferization.alloc_tensor() : tensor<128xf32, #sparse_tensor.encoding<{ lvlTypes = [ "dense" ] }>>
    %1 = linalg.generic {indexing_maps = [#map, #map1, #map2], iterator_types = ["parallel", "reduction"]} ins(%arg0, %arg1 : tensor<128x128xf32, #sparse_tensor.encoding<{ lvlTypes = [ "dense", "compressed" ] }>>, tensor<128xf32, #sparse_tensor.encoding<{ lvlTypes = [ "dense" ] }>>) outs(%0 : tensor<128xf32, #sparse_tensor.encoding<{ lvlTypes = [ "dense" ] }>>) {
    ^bb0(%in: f32, %in_0: f32, %out: f32):
      %2 = arith.mulf %in, %in_0 : f32
      %3 = arith.addf %out, %2 : f32
      linalg.yield %3 : f32
    } -> tensor<128xf32, #sparse_tensor.encoding<{ lvlTypes = [ "dense" ] }>>
    return %1 : tensor<128xf32, #sparse_tensor.encoding<{ lvlTypes = [ "dense" ] }>>
  }
}

