
package multiply

c_int :: i32;
c_float :: f32;

odin_divide :: proc(a: c_int, b: c_int) -> c_int {
  return a / b;
}