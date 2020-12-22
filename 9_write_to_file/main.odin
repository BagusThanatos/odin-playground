package main

import "core:fmt"
import "core:os"


main :: proc(){
  fmt.println("hello world!");

  // Read core/os/os.odin and specific os implementations for how this work
  file, err := os.open("coba1.txt", os.O_WRONLY|os.O_CREATE);
  if err != 0 {
    fmt.println("Failed to create handle!");
    fmt.println("ERROR: ", err);
    return;
  }
  defer os.close(file);
  _, err = os.write_string(file, "coba");
  if err != 0 {
    fmt.println("Failed to write string!");
    fmt.println("ERROR: ", err);
    return;
  }


  // Using write_entire_file
  hello := "hello";
  data := transmute([]byte)hello;
  success := os.write_entire_file("coba2.txt", data);
  if !success {
    fmt.println("Failed to write entire file");
    return;
  }
}
