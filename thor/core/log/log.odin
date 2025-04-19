package log
import "core:fmt"

print :: proc(i: string) {
    fmt.print(i)
}

println :: proc(i: string) {
    fmt.println(i)
}

printf :: proc(i: string) {
    fmt.printf(i)
}

printfln :: proc(i: string) {
    fmt.printfln(i)
}