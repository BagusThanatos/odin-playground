package main

import "./local"

main :: proc() {
  print_here();

/*
  This should not work as the function is not private
  local.print_here2();

*/
}
