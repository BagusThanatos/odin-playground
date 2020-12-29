package main

import "core:fmt"

main :: proc() {
  a := 10;
  fmt.println(&a);

  b : ^int; // This does not point to anytihng yet
  fmt.println(b);
  b = &a; // Point it to a
  fmt.println(b);

  b^ = 0;
  fmt.println(b^);
  fmt.println(a);
}
