package render

import rl "vendor:raylib"

init :: proc() {
    // Any init logic if needed later
}

shutdown :: proc() {
    // Clean up render-related stuff
}

begin_frame :: proc() {
    rl.BeginDrawing()
    rl.ClearBackground(rl.RAYWHITE)
}

end_frame :: proc() {
    rl.EndDrawing()
}

// Optional draw functions (you can move these to sprite.odin or camera.odin later)
draw_text :: proc(text: cstring, x, y, size: i32, color: rl.Color) {
    rl.DrawText(text, x, y, size, color)
}
