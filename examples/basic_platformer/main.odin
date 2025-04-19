package main

import thor "thor"

main :: proc() {
    thor.init(cstring("Thor Platformer Example"), 800, 600)
    defer thor.close()

    thor.init_render()

    for !thor.should_close() {
        thor.BeginDrawing()
        defer thor.EndDrawing()

        thor.clear_background(raylib.Color{r=30, g=30, b=30, a=255})
        thor.draw_text(cstring("Hello via Thor Engine!"), 20, 20, 24, raylib.YELLOW)
    }
}
