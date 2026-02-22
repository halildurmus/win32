# System Tray Icon Example

A **system tray (notification area) icon application** written in Dart.
This example demonstrates how to create and manage a system tray icon using
the Win32 API, including context menus and system tray notifications.

## Building the Application

### Build

From the `examples/system_tray_icon` directory, run:

```cmd
dart build cli -o build
```

The resulting output has the following structure:

```text
build/
  bundle/
    bin/
      system_tray_icon.exe
    lib/
      win32.dll
```

### Copy Runtime Resources

Copy the application icon next to the executable:

```cmd
copy resources\dart.ico build\bundle\bin\
```

### Run

Launch the application:

```cmd
build\bundle\bin\system_tray_icon.exe
```

The application will create a system tray icon in the Windows notification area.

Right-clicking the icon opens a context menu with an option to exit the app.
Left-clicking the icon displays the main application window.
Closing the window does not terminate the application; instead, it hides the
window and returns the application to the system tray.
