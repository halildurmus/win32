# Examples

This package includes a comprehensive set of examples in the [examples]
directory, demonstrating practical, idiomatic use of Windows APIs from Dart.

## What you will find

Across the examples, you will see how to:

- Invoke C-style Win32 APIs, including struct layout, pointer management, and
  lifetime control
- Build classic Win32 desktop applications using `user32`, `gdi32`, and common
  dialogs
- Register and use native callback functions safely from Dart
- Create and consume COM objects via both `IUnknown` and `IDispatch`
- Integrate low-level Windows APIs into Flutter desktop applications

For real-world usage beyond these samples, explore packages on that depend on
[package:win32].

[examples]: https://github.com/halildurmus/win32/tree/main/examples
[package:win32]: https://pub.dev/packages?q=dependency%3Awin32

## Windows system APIs (kernel32)

Examples focused on core system services such as processes, modules, files,
pipes, and the registry.

| Example               | Description                                       |
| --------------------- | ------------------------------------------------- |
| [manifest]            | App manifests for compiled executables            |
| [service_manager_cli] | Managing Windows services                         |
| [credentials.dart]    | Writing and reading credentials from the store    |
| [dump.dart]           | Enumerating DLL exports using debugger APIs       |
| [dynamic_load.dart]   | Loading DLLs and resolving symbols at runtime     |
| [fileinfo.dart]       | Querying file metadata with `GetFileAttributesEx` |
| [filever.dart]        | Reading version information from file resources   |
| [modules.dart]        | Enumerating loaded modules                        |
| [pipe.dart]           | Named pipes and IPC                               |
| [registry.dart]       | Querying and enumerating registry keys            |
| [vt.dart]             | Virtual terminal (ANSI) sequences                 |
| [wsl.dart]            | Accessing WSL instance information                |

[manifest]: https://github.com/halildurmus/win32/blob/main/examples/manifest
[service_manager_cli]: https://github.com/halildurmus/win32/blob/main/examples/service_manager_cli
[credentials.dart]: https://github.com/halildurmus/win32/blob/main/examples/credentials.dart
[dump.dart]: https://github.com/halildurmus/win32/blob/main/examples/dump.dart
[dynamic_load.dart]: https://github.com/halildurmus/win32/blob/main/examples/dynamic_load.dart
[fileinfo.dart]: https://github.com/halildurmus/win32/blob/main/examples/fileinfo.dart
[filever.dart]: https://github.com/halildurmus/win32/blob/main/examples/filever.dart
[modules.dart]: https://github.com/halildurmus/win32/blob/main/examples/modules.dart
[pipe.dart]: https://github.com/halildurmus/win32/blob/main/examples/pipe.dart
[registry.dart]: https://github.com/halildurmus/win32/blob/main/examples/registry.dart
[vt.dart]: https://github.com/halildurmus/win32/blob/main/examples/vt.dart
[wsl.dart]: https://github.com/halildurmus/win32/blob/main/examples/wsl.dart

## Accessing local hardware and devices

Examples that interact directly with hardware, drivers, and device subsystems.

| Example             | Description                                        |
| ------------------- | -------------------------------------------------- |
| [bluetooth.dart]    | Enumerating Bluetooth devices                      |
| [bluetoothle.dart]  | Enumerating Bluetooth LE (Low Energy) devices      |
| [devices.dart]      | Listing disk devices via volume APIs               |
| [diskinfo.dart]     | Low-level device operations with `DeviceIoControl` |
| [gamepad.dart]      | Detecting connected game controllers               |
| [midi.dart]         | MIDI playback using MCI                            |
| [monitor.dart]      | Querying monitor capabilities (DDC/CI)             |
| [play_sound.dart]   | Playing WAV audio with `PlaySound`                 |
| [printer_list.dart] | Enumerating installed printers                     |
| [printer_raw.dart]  | Sending RAW data directly to printers              |
| [serial.dart]       | Serial port enumeration and configuration          |
| [setupapi.dart]     | Device interface discovery via SetupAPI            |
| [speech.dart]       | Text-to-speech via Windows Speech APIs             |
| [sysinfo.dart]      | System information from native APIs                |
| [wasapi.dart]       | Audio generation with WASAPI                       |

[bluetooth.dart]: https://github.com/halildurmus/win32/blob/main/examples/bluetooth.dart
[bluetoothle.dart]: https://github.com/halildurmus/win32/blob/main/examples/bluetoothle.dart
[devices.dart]: https://github.com/halildurmus/win32/blob/main/examples/devices.dart
[diskinfo.dart]: https://github.com/halildurmus/win32/blob/main/examples/diskinfo.dart
[gamepad.dart]: https://github.com/halildurmus/win32/blob/main/examples/gamepad.dart
[midi.dart]: https://github.com/halildurmus/win32/blob/main/examples/midi.dart
[monitor.dart]: https://github.com/halildurmus/win32/blob/main/examples/monitor.dart
[play_sound.dart]: https://github.com/halildurmus/win32/blob/main/examples/play_sound.dart
[printer_list.dart]: https://github.com/halildurmus/win32/blob/main/examples/printer_list.dart
[printer_raw.dart]: https://github.com/halildurmus/win32/blob/main/examples/printer_raw.dart
[serial.dart]: https://github.com/halildurmus/win32/blob/main/examples/serial.dart
[setupapi.dart]: https://github.com/halildurmus/win32/blob/main/examples/setupapi.dart
[speech.dart]: https://github.com/halildurmus/win32/blob/main/examples/speech.dart
[sysinfo.dart]: https://github.com/halildurmus/win32/blob/main/examples/sysinfo.dart
[wasapi.dart]: https://github.com/halildurmus/win32/blob/main/examples/wasapi.dart

## Windows shell manipulation (shell32)

Examples that integrate with the Windows shell and user environment.

| Example             | Description                                      |
| ------------------- | ------------------------------------------------ |
| [system_tray_icon]  | Adding an icon to the system tray                |
| [knownfolder.dart]  | Accessing known user folders                     |
| [magnifier.dart]    | Screen magnification using the Magnification API |
| [recycle_bin.dart]  | Querying and modifying the recycle bin           |
| [screenshot.dart]   | Capturing screenshots of all displays            |
| [shortcut.dart]     | Creating `.lnk` shell shortcuts                  |
| [wallpaper.dart]    | Querying wallpaper and background settings       |

[system_tray_icon]: https://github.com/halildurmus/win32/blob/main/examples/system_tray_icon
[knownfolder.dart]: https://github.com/halildurmus/win32/blob/main/examples/knownfolder.dart
[magnifier.dart]: https://github.com/halildurmus/win32/blob/main/examples/magnifier.dart
[recycle_bin.dart]: https://github.com/halildurmus/win32/blob/main/examples/recycle_bin.dart
[screenshot.dart]: https://github.com/halildurmus/win32/blob/main/examples/screenshot.dart
[shortcut.dart]: https://github.com/halildurmus/win32/blob/main/examples/shortcut.dart
[wallpaper.dart]: https://github.com/halildurmus/win32/blob/main/examples/wallpaper.dart

## Win32-style UI development (user32, gdi32, commdlg32)

Classic desktop UI examples demonstrating message loops, painting, dialogs,
and input handling.

| Example               | Description                                 |
| --------------------- | --------------------------------------------|
| [dartnote]            | Lightweight Notepad-style text editor       |
| [snake]               | Snake game using GDI rendering              |
| [task_dialog]         | Modern task dialogs                         |
| [tetris]              | Tetris game using GDI rendering             |
| [usb_drive_monitor]   | Monitoring USB insertion and removal events |
| [hello.dart]          | Canonical Win32 “Hello, world”              |
| [msgbox.dart]         | Displaying a message box from the console   |
| [commdlg.dart]        | Color chooser common dialog                 |
| [customtitlebar.dart] | Owner-drawn title bar regions               |
| [customwin.dart]      | Non-rectangular window rendering            |
| [dialogbox.dart]      | Custom dialogs defined entirely in code     |
| [dialogshow.dart]     | File picker dialogs via COM                 |
| [paint.dart]          | Basic painting and window sizing            |
| [scroll.dart]         | Horizontal and vertical scrolling           |
| [sendinput.dart]      | Synthesizing keyboard and mouse input       |
| [window.dart]         | Enumerating and manipulating windows        |

[dartnote]: https://github.com/halildurmus/win32/blob/main/examples/dartnote
[snake]: https://github.com/halildurmus/win32/blob/main/examples/snake
[task_dialog]: https://github.com/halildurmus/win32/blob/main/examples/task_dialog
[tetris]: https://github.com/halildurmus/win32/blob/main/examples/tetris
[usb_drive_monitor]: https://github.com/halildurmus/win32/blob/main/examples/usb_drive_monitor
[hello.dart]: https://github.com/halildurmus/win32/blob/main/examples/hello.dart
[msgbox.dart]: https://github.com/halildurmus/win32/blob/main/examples/msgbox.dart
[commdlg.dart]: https://github.com/halildurmus/win32/blob/main/examples/commdlg.dart
[customtitlebar.dart]: https://github.com/halildurmus/win32/blob/main/examples/customtitlebar.dart
[customwin.dart]: https://github.com/halildurmus/win32/blob/main/examples/customwin.dart
[dialogbox.dart]: https://github.com/halildurmus/win32/blob/main/examples/dialogbox.dart
[dialogshow.dart]: https://github.com/halildurmus/win32/blob/main/examples/dialogshow.dart
[paint.dart]: https://github.com/halildurmus/win32/blob/main/examples/paint.dart
[scroll.dart]: https://github.com/halildurmus/win32/blob/main/examples/scroll.dart
[sendinput.dart]: https://github.com/halildurmus/win32/blob/main/examples/sendinput.dart
[window.dart]: https://github.com/halildurmus/win32/blob/main/examples/window.dart

## COM APIs

Examples demonstrating COM fundamentals, automation, and system components.

| Example             | Description                              |
| ------------------- | ---------------------------------------- |
| [com_interop]       | Accessing .NET components through COM    |
| [com_context.dart]  | COM apartments and Dart isolates         |
| [com_demo.dart]     | Object creation, casting, and invocation |
| [dispatcher.dart]   | Automation via `Dispatcher`              |
| [guid.dart]         | Creating and manipulating GUIDs          |
| [uiautomation.dart] | Windows UI Automation APIs               |
| [winhttp.dart]      | HTTP requests using WinHTTP              |
| [wmi_perf.dart]     | Performance counters via WMI             |
| [wmi_wql.dart]      | Querying WMI with WQL                    |

[com_interop]: https://github.com/halildurmus/win32/blob/main/examples/com_interop
[com_context.dart]: https://github.com/halildurmus/win32/blob/main/examples/com_context.dart
[com_demo.dart]: https://github.com/halildurmus/win32/blob/main/examples/com_demo.dart
[dispatcher.dart]: https://github.com/halildurmus/win32/blob/main/examples/dispatcher.dart
[guid.dart]: https://github.com/halildurmus/win32/blob/main/examples/guid.dart
[uiautomation.dart]: https://github.com/halildurmus/win32/blob/main/examples/uiautomation.dart
[winhttp.dart]: https://github.com/halildurmus/win32/blob/main/examples/winhttp.dart
[wmi_perf.dart]: https://github.com/halildurmus/win32/blob/main/examples/wmi_perf.dart
[wmi_wql.dart]: https://github.com/halildurmus/win32/blob/main/examples/wmi_wql.dart

## Flutter integration

Examples that bridge low-level Win32 APIs into Flutter desktop applications.

| Example        | Description                                |
| -------------- | ------------------------------------------ |
| [explorer]     | Retrieving volumes on the computer         |
| [task_manager] | Enumerating and managing running processes |

[explorer]: https://github.com/halildurmus/win32/blob/main/examples/explorer
[task_manager]: https://github.com/halildurmus/win32/blob/main/examples/task_manager

## Miscellaneous

| Example               | Description                     |
| --------------------- | ------------------------------- |
| [events.dart]         | Querying Windows event channels |

[events.dart]: https://github.com/halildurmus/win32/blob/main/examples/events.dart
