#map = affine_map<(d0, d1) -> (d0, d1)>
#map1 = affine_map<(d0, d1) -> ()>
module {
  func.func @Reduce2D.z.0.main(%arg0: tensor<128x128xf32, #sparse_tensor.encoding<{ lvlTypes = [ "dense", "compressed" ] }>>) -> tensor<f32> attributes {llvm.emit_c_interface} {
    %0 = tensor.empty() : tensor<f32>
    %cst = arith.constant 0.000000e+00 : f32
    %1 = linalg.fill ins(%cst : f32) outs(%0 : tensor<f32>) -> tensor<f32>
    %2 = linalg.generic {indexing_maps = [#map, #map1], iterator_types = ["reduction", "reduction"]} ins(%arg0 : tensor<128x128xf32, #sparse_tensor.encoding<{ lvlTypes = [ "dense", "compressed" ] }>>) outs(%1 : tensor<f32>) {
    ^bb0(%in: f32, %out: f32):
      %3 = arith.addf %out, %in : f32
      linalg.yield %3 : f32
    } -> tensor<f32>
    return %2 : tensor<f32>
  }
}

