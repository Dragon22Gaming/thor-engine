# thor-engine
 
current plans:
thor/
├── engine/
│   ├── core/                  # Low-level types, macros, utils, logging
│   │   ├── types.odin
│   │   ├── log.odin
│   │   └── macros.odin
│   │
│   ├── system/                # Cross-module engine systems (init, timing, job system, etc.)
│   │   └── engine.odin
│   │
│   ├── graphics/              # Your rendering API abstraction
│   │   ├── graphics.odin      # Public API
│   │   ├── opengl_backend/    # Raw OpenGL implementation
│   │   │   ├── context.odin   # GLFW setup
│   │   │   ├── shaders.odin   # Shader compilation/linking
│   │   │   ├── buffers.odin   # VAO/VBO stuff
│   │   │   └── draw.odin      # Immediate draw calls, batching, etc.
│   │   ├── sprite/            # Sprite renderer
│   │   ├── camera/            # 2D/3D camera logic
│   │   └── renderer_interface.odin  # Defines the `Renderer` struct + proc ptrs
│   │
│   ├── input/
│   │   └── input.odin         # Keyboard/mouse input
│   │
│   ├── assets/
│   │   ├── texture.odin       # Texture loading, metadata
│   │   └── font.odin          # Font system
│   │
│   ├── audio/ (optional)      # Maybe use miniaudio, FMOD, OpenAL, etc.
│   │   └── audio.odin
│   │
│   └── scripting/             # Lua glue layer
│       ├── lua_bindings.odin
│       └── script_system.odin
│
├── studio/                    # Editor app, GUI, scene graph, etc.
│   └── main.odin
│
├── tools/                     # CLI tools, asset pipeline helpers, etc.
│   └── pack_assets.odin