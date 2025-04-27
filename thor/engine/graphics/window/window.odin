package window
import "vendor:glfw"

init :: proc() {
    monitor: glfw.MonitorHandle = glfw.GetPrimaryMonitor()
    glfw.CreateWindow(800, 600, "Glfw rules!", monitor, nil)
}