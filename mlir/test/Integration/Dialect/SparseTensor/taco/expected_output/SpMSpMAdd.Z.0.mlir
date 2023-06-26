#map = affine_map<(d0, d1) -> (d0, d1)>
module {
  func.func @SpMSpMAdd.Z.0.main(%arg0: tensor<128x256xf32, #sparse_tensor.encoding<{ lvlTypes = [ "dense", "compressed" ] }>>, %arg1: tensor<128x256xf32, #sparse_tensor.encoding<{ lvlTypes = [ "dense", "compressed" ] }>>) -> tensor<128x256xf32, #sparse_tensor.encoding<{ lvlTypes = [ "dense", "dense" ] }>> attributes {llvm.emit_c_interface} {
    %0 = bufferization.alloc_tensor() : tensor<128x256xf32, #sparse_tensor.encoding<{ lvlTypes = [ "dense", "dense" ] }>>
    %1 = linalg.generic {indexing_maps = [#map, #map, #map], iterator_types = ["parallel", "parallel"]} ins(%arg0, %arg1 : tensor<128x256xf32, #sparse_tensor.encoding<{ lvlTypes = [ "dense", "compressed" ] }>>, tensor<128x256xf32, #sparse_tensor.encoding<{ lvlTypes = [ "dense", "compressed" ] }>>) outs(%0 : tensor<128x256xf32, #sparse_tensor.encoding<{ lvlTypes = [ "dense", "dense" ] }>>) {
    ^bb0(%in: f32, %in_0: f32, %out: f32):
      %2 = arith.addf %in, %in_0 : f32
      linalg.yield %2 : f32
    } -> tensor<128x256xf32, #sparse_tensor.encoding<{ lvlTypes = [ "dense", "dense" ] }>>
    return %1 : tensor<128x256xf32, #sparse_tensor.encoding<{ lvlTypes = [ "dense", "dense" ] }>>
  }
}

