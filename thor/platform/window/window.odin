package window

import rl "vendor:raylib"

init :: proc(title: cstring, width: i32, height: i32) {
    rl.InitWindow(width, height, title)
    rl.SetTargetFPS(60)
}

shutdown :: proc() {
    rl.CloseWindow()
}

should_close :: proc() -> bool {
    return rl.WindowShouldClose()
}
