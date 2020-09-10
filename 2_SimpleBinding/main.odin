package sum

foreign import sum "sum.lib";
import "core:fmt";


c_int :: i32;

foreign sum {
  @(link_name="sum_int") sum_int :: proc(a: c_int, b: c_int) -> c_int ---;
}

main :: proc() {
  fmt.println("Hello world");
  fmt.println(size_of(i32));
  fmt.println(sum_int(1, 2));
}