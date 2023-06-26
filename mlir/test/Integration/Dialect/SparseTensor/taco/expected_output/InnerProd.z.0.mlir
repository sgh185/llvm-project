#map = affine_map<(d0, d1, d2) -> (d0, d1, d2)>
#map1 = affine_map<(d0, d1, d2) -> ()>
module {
  func.func @InnerProd.z.0.main(%arg0: tensor<128x128x128xf32, #sparse_tensor.encoding<{ lvlTypes = [ "dense", "compressed", "compressed" ] }>>, %arg1: tensor<128x128x128xf32, #sparse_tensor.encoding<{ lvlTypes = [ "dense", "compressed", "compressed" ] }>>) -> tensor<f32> attributes {llvm.emit_c_interface} {
    %0 = tensor.empty() : tensor<f32>
    %cst = arith.constant 0.000000e+00 : f32
    %1 = linalg.fill ins(%cst : f32) outs(%0 : tensor<f32>) -> tensor<f32>
    %2 = linalg.generic {indexing_maps = [#map, #map, #map1], iterator_types = ["reduction", "reduction", "reduction"]} ins(%arg0, %arg1 : tensor<128x128x128xf32, #sparse_tensor.encoding<{ lvlTypes = [ "dense", "compressed", "compressed" ] }>>, tensor<128x128x128xf32, #sparse_tensor.encoding<{ lvlTypes = [ "dense", "compressed", "compressed" ] }>>) outs(%1 : tensor<f32>) {
    ^bb0(%in: f32, %in_0: f32, %out: f32):
      %3 = arith.mulf %in, %in_0 : f32
      %4 = arith.addf %out, %3 : f32
      linalg.yield %4 : f32
    } -> tensor<f32>
    return %2 : tensor<f32>
  }
}

