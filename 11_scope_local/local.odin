package main

import "core:fmt"

// @private is local to the package
@private
print_here :: proc() {
  fmt.println("hello");
}
