// Note: Require binding from https://github.com/renehsz/odin-sock/blob/master/sock/socket.odin to be put into odin's core/c/libc/socket.odin
package main

import "core:fmt"
import c "core:c/libc"

main :: proc() {
	socket_descriptor := c.socket(c.AddrFamily.INET, c.Type.STREAM, 0)
	fmt.println("socket_descriptor:", socket_descriptor)
	fmt.println("finish")
}
