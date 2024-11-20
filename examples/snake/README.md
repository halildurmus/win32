# Snake Game

<img
  alt="Snake Game screenshot"
  src="https://raw.githubusercontent.com/halildurmus/win32/main/packages/win32/screenshots/snake.png"
  height="400" />

A classic **Snake** game written in Dart.

---

## Features

- Classic snake gameplay
- Progressive difficulty (speed increases with length)
- Pause functionality
- Game over and restart

## Controls

- **Arrow Keys**: Control snake direction
- **PAUSE**: Pause/resume the game
- **ENTER**: Restart after game over

---

## Building the Application

### Build

From the `examples/snake` directory, run:

```cmd
dart build cli -o build
```

The resulting output has the following structure:

```text
build/
  bundle/
    bin/
      snake.exe
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
      snake.exe
      snake.exe.manifest
    lib/
      win32.dll
```

### Run

Launch the application directly:

```cmd
build\bundle\bin\snake.exe
```
