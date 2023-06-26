#map = affine_map<(d0, d1, d2, d3) -> (d0, d1, d3)>
#map1 = affine_map<(d0, d1, d2, d3) -> (d2, d3)>
#map2 = affine_map<(d0, d1, d2, d3) -> (d0, d1, d2)>
module {
  func.func @SpTMMul.Z.0.main(%arg0: tensor<16x32x64xf32, #sparse_tensor.encoding<{ lvlTypes = [ "compressed", "compressed", "compressed" ] }>>, %arg1: tensor<64x64xf32, #sparse_tensor.encoding<{ lvlTypes = [ "dense", "dense" ] }>>) -> tensor<16x32x64xf32, #sparse_tensor.encoding<{ lvlTypes = [ "dense", "dense", "dense" ] }>> attributes {llvm.emit_c_interface} {
    %0 = bufferization.alloc_tensor() : tensor<16x32x64xf32, #sparse_tensor.encoding<{ lvlTypes = [ "dense", "dense", "dense" ] }>>
    %1 = linalg.generic {indexing_maps = [#map, #map1, #map2], iterator_types = ["parallel", "parallel", "parallel", "reduction"]} ins(%arg0, %arg1 : tensor<16x32x64xf32, #sparse_tensor.encoding<{ lvlTypes = [ "compressed", "compressed", "compressed" ] }>>, tensor<64x64xf32, #sparse_tensor.encoding<{ lvlTypes = [ "dense", "dense" ] }>>) outs(%0 : tensor<16x32x64xf32, #sparse_tensor.encoding<{ lvlTypes = [ "dense", "dense", "dense" ] }>>) {
    ^bb0(%in: f32, %in_0: f32, %out: f32):
      %2 = arith.mulf %in, %in_0 : f32
      %3 = arith.addf %out, %2 : f32
      linalg.yield %3 : f32
    } -> tensor<16x32x64xf32, #sparse_tensor.encoding<{ lvlTypes = [ "dense", "dense", "dense" ] }>>
    return %1 : tensor<16x32x64xf32, #sparse_tensor.encoding<{ lvlTypes = [ "dense", "dense", "dense" ] }>>
  }
}

