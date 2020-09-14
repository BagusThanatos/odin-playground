package sum

import "core:fmt";
import "core:strings"
import "../raylib-odin/raylib";

main :: proc() {
    fmt.println("hello");

    // NOTE(Bagus): we can use `using raylib;` for shorter code here, but not now
    //using raylib;

    // Initialization
    //--------------------------------------------------------------------------------------
    screenWidth :i32 = 800;
    screenHeight :i32 = 450;

    raylib.init_window(screenWidth, screenHeight, "Hello");

    raylib.set_target_fps(60);
    //--------------------------------------------------------------------------------------

    ball_color := raylib.DARKBLUE;
    
    some_strings := [3]cstring{"HELLO 111", "HELLO 222", "HELLO 333"};
    some_strings_index := 0;

    // Main game loop
    for !raylib.window_should_close()    // Detect window close button or ESC key
    {
        ball_position := raylib.get_mouse_position();

        if raylib.is_mouse_button_pressed(.LEFT_BUTTON) do ball_color = raylib.MAROON;
        else if raylib.is_mouse_button_pressed(.MIDDLE_BUTTON) do ball_color = raylib.LIME;
        else if raylib.is_mouse_button_pressed(.RIGHT_BUTTON) do ball_color = raylib.DARKBLUE;

        current_fps := raylib.get_fps();
        mouse_move := raylib.get_mouse_wheel_move();
        
        // NOTE(Bagus): This can be simpler but well, just want to try it
        if mouse_move > 0 && some_strings_index < len(some_strings) - 2 do some_strings_index += 1;
        else if mouse_move < 0 && some_strings_index > 0 do some_strings_index -= 1;
        
        {
            raylib.begin_drawing();
            defer raylib.end_drawing();

            raylib.draw_circle_v(ball_position, 40, ball_color);

            raylib.clear_background(raylib.RAYWHITE);
            
            text := fmt.tprintf("Hello! FPS: %d", current_fps);
            raylib.draw_text(strings.unsafe_string_to_cstring(text), 190, 200, 20, raylib.LIGHTGRAY);
            raylib.draw_text(some_strings[some_strings_index], 190, 230, 20, raylib.LIGHTGRAY);
            raylib.draw_text(some_strings[some_strings_index + 1], 190, 250, 20, raylib.LIGHTGRAY);
        }
    }

    raylib.close_window();        // Close window and OpenGL context
}