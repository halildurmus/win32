# DartNote App

<img
  alt="DartNote App screenshot"
  src="https://raw.githubusercontent.com/halildurmus/win32/main/packages/win32/screenshots/dartnote.png"
  width="600" />

A **Win32 Notepad-style application** written in Dart.

---

## Features

- Create, open, edit, and save plain-text files
- Incremental find with match highlighting and replace support
- Font family, size, and style customization
- Comprehensive keyboard shortcuts for common actions (e.g., `Ctrl+S`, `Ctrl+F`)
- Native Win32 look, behavior, and message handling

---

## Building the Application

### Build

From the `examples/dartnote` directory, run:

```cmd
dart build cli -o build
```

The resulting output has the following structure:

```text
build/
  bundle/
    bin/
      dartnote.exe
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
      dartnote.exe
      dartnote.exe.manifest
    lib/
      win32.dll
```

### Run

Launch the application directly:

```cmd
build\bundle\bin\dartnote.exe
```
