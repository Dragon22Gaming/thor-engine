package graphics

import "window"
import opengl "opengl_backend"
import vulkan "vulkan_backend"

API :: "opengl"

init :: proc() {
    window.init()
    if API == "opengl" {
        opengl.init()
    }
    if API == "vulkan" {
        //vulkan.init()
    }
}