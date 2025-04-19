package input
import rl "vendor:raylib"

IsKeyDown :: proc(key: rl.KeyboardKey) -> bool {
    return rl.IsKeyDown(key)
}

key_W :: rl.KeyboardKey.W
key_A :: rl.KeyboardKey.A
key_S :: rl.KeyboardKey.S
key_D :: rl.KeyboardKey.D