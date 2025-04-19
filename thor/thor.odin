package thor

import render "render"
import input "platform/input"
import window "platform/window"

Input  :: input
Render :: render
Window :: window

startup :: proc(title: cstring, width: i32, height: i32) {
    window.init(title, width, height)
    input.init()
    render.init()
}

shutdown :: proc() {
    render.shutdown()
    input.shutdown()
    window.shutdown()
}

should_close :: proc() -> bool {
    return window.should_close()
}

begin_frame :: proc() {
    render.begin_frame()
}

end_frame :: proc() {
    render.end_frame()
}
