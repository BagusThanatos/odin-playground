package main

import "core:fmt"

main :: proc(){
  fmt.println("Defers");

  // Should output
  // 0
  // 1
  // 2
  // 3
  for i:=0; i < 100; i+=1 {
    defer fmt.println(i);
    if i == 3 do return;
  }
}
