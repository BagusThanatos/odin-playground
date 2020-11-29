package main

import "core:fmt"
import "core:os"


main :: proc(){
  fmt.println("hello world!");

  // Read core/os/os.odin for how this work
  data, success := os.read_entire_file("text.txt");
  if !success {
    fmt.println("Failed to read file!");
    return;
  }

  fmt.println(string(data));
  fmt.println(os.args);
}
