package divide

import "core:testing"

@(test)
divde_test :: proc(t: ^testing.T) {
  testing.expect(t, 2 == odin_divide(4, 2), "dividing does not equal")
}