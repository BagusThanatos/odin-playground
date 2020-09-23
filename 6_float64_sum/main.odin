package main

import "core:fmt"
import "../utils"

main :: proc() {
  data := [4]f64{1, 2, 3, 4};
  fmt.println(utils.sum_array_float64(data[:], 4) == 10);
}
