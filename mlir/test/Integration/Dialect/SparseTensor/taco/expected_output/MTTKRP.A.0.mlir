#map = affine_map<(d0, d1, d2, d3) -> (d0, d2, d3)>
#map1 = affine_map<(d0, d1, d2, d3) -> (d3, d1)>
#map2 = affine_map<(d0, d1, d2, d3) -> (d0, d2, d1)>
#map3 = affine_map<(d0, d1, d2) -> (d0, d2, d1)>
#map4 = affine_map<(d0, d1, d2) -> (d2, d1)>
#map5 = affine_map<(d0, d1, d2) -> (d0, d1)>
module {
  func.func @MTTKRP.A.0.main(%arg0: tensor<128x128x128xf32, #sparse_tensor.encoding<{ lvlTypes = [ "compressed", "compressed", "compressed" ] }>>, %arg1: tensor<128x32xf32, #sparse_tensor.encoding<{ lvlTypes = [ "dense", "dense" ] }>>, %arg2: tensor<128x32xf32, #sparse_tensor.encoding<{ lvlTypes = [ "dense", "dense" ] }>>) -> tensor<128x32xf32, #sparse_tensor.encoding<{ lvlTypes = [ "dense", "dense" ] }>> attributes {llvm.emit_c_interface} {
    %0 = bufferization.alloc_tensor() : tensor<128x128x32xf32, #sparse_tensor.encoding<{ lvlTypes = [ "compressed", "compressed", "dense" ] }>>
    %1 = linalg.generic {indexing_maps = [#map, #map1, #map2], iterator_types = ["parallel", "parallel", "parallel", "reduction"]} ins(%arg0, %arg1 : tensor<128x128x128xf32, #sparse_tensor.encoding<{ lvlTypes = [ "compressed", "compressed", "compressed" ] }>>, tensor<128x32xf32, #sparse_tensor.encoding<{ lvlTypes = [ "dense", "dense" ] }>>) outs(%0 : tensor<128x128x32xf32, #sparse_tensor.encoding<{ lvlTypes = [ "compressed", "compressed", "dense" ] }>>) {
    ^bb0(%in: f32, %in_0: f32, %out: f32):
      %4 = arith.mulf %in, %in_0 : f32
      %5 = arith.addf %out, %4 : f32
      linalg.yield %5 : f32
    } -> tensor<128x128x32xf32, #sparse_tensor.encoding<{ lvlTypes = [ "compressed", "compressed", "dense" ] }>>
    %2 = bufferization.alloc_tensor() : tensor<128x32xf32, #sparse_tensor.encoding<{ lvlTypes = [ "dense", "dense" ] }>>
    %3 = linalg.generic {indexing_maps = [#map3, #map4, #map5], iterator_types = ["parallel", "parallel", "reduction"]} ins(%1, %arg2 : tensor<128x128x32xf32, #sparse_tensor.encoding<{ lvlTypes = [ "compressed", "compressed", "dense" ] }>>, tensor<128x32xf32, #sparse_tensor.encoding<{ lvlTypes = [ "dense", "dense" ] }>>) outs(%2 : tensor<128x32xf32, #sparse_tensor.encoding<{ lvlTypes = [ "dense", "dense" ] }>>) {
    ^bb0(%in: f32, %in_0: f32, %out: f32):
      %4 = arith.mulf %in, %in_0 : f32
      %5 = arith.addf %out, %4 : f32
      linalg.yield %5 : f32
    } -> tensor<128x32xf32, #sparse_tensor.encoding<{ lvlTypes = [ "dense", "dense" ] }>>
    return %3 : tensor<128x32xf32, #sparse_tensor.encoding<{ lvlTypes = [ "dense", "dense" ] }>>
  }
}

