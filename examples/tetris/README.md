# Tetris Game

<img
  alt="Tetris Game screenshot"
  src="https://raw.githubusercontent.com/halildurmus/win32/main/packages/win32/screenshots/tetris.png"
  height="400" />

A classic **Tetris** game written in Dart.

---

## Features

- Classic Tetris gameplay with falling blocks
- Ghost piece preview
- Tetromino rotation and movement controls
- Support for soft and hard drops
- Next piece preview
- Line clearing with score tracking
- Incremental speed increase as the game progresses

## Controls

- **Arrow Left/Right**: Move tetromino left/right
- **Arrow Up**: Rotate tetromino
- **Arrow Down**: Soft drop tetromino
- **SPACE**: Hard drop tetromino
- **PAUSE**: Pause/resume the game
- **ENTER**: Restart after game over

---

## Building the Application

### Build

From the `examples/tetris` directory, run:

```cmd
dart build cli -o build
```

The resulting output has the following structure:

```text
build/
  bundle/
    bin/
      tetris.exe
    lib/
      win32.dll
```

### Copy Runtime Resources

Copy the runtime resources (application icon and app manifest) next to the
executable:

```cmd
copy resources\* build\bundle\bin\
```

After copying, the directory layout should look like:

```text
build/
  bundle/
    bin/
      dart.ico
      tetris.exe
      tetris.exe.manifest
    lib/
      win32.dll
```

### Run

Launch the application directly:

```cmd
build\bundle\bin\tetris.exe
```
