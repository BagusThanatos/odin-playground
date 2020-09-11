package multiply

c_int :: i32;

@(export)
odin_divide :: proc(a: c_int, b: c_int) -> c_int {
  return a / b;
}
