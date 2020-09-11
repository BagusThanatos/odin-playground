package sum

import "core:sys/win32"
import "core:fmt";


c_int :: i32;

// Define types for bind procs

Multiply_Proc:: #type proc(a: c_int, b: c_int) -> c_int;
Divide_Proc:: #type proc(a: c_int, b: c_int) -> c_int;


main :: proc() {
  multiplyDllPath :: "multiply.dll";
  divideDllPath :: "bin/divide.dll";

  multiplyDll := win32.load_library_a(multiplyDllPath);
  divideDll := win32.load_library_a(divideDllPath);

  // LoadFunctions
  multiply_proc := cast(Multiply_Proc)win32.get_proc_address(multiplyDll, "c_multiply");
  if multiply_proc == nil {
    fmt.eprintln("Error getting multiply proc");
    return;
  }
  divide_proc := cast(Divide_Proc)win32.get_proc_address(divideDll, "odin_divide");
  if divide_proc == nil {
    fmt.eprintln("Error getting divide proc");
    fmt.eprintln(divideDll);
    return;
  }
  fmt.println(multiply_proc(5, 2));
  fmt.println(divide_proc(4, 2));
}