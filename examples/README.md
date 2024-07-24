The package includes a number of examples in the `examples\` subdirectory, which
demonstrate various aspects of invoking Windows APIs, including:

- Invoking C-style APIs, including creating structs and memory management
- Building classic (Win32) desktop UI
- Using callback functions with Win32 APIs
- Invoking COM classes (both `IUnknown` and `IDispatch` interface types)
- Integrating Windows code with Flutter

Other examples of packages that use `package:win32` can be found on
[pub.dev](https://pub.dev/packages?q=dependency%3Awin32).

## Windows system APIs (kernel32)

| Example               | Description                                             |
| --------------------- | ------------------------------------------------------- |
| [manifest]            | Demonstrates the use of app manifests for compiled apps |
| [service_manager_cli] | Demonstrates managing Windows services                  |
| [credentials.dart]    | Adds a credential to the store and retrieves it         |
| [dump.dart]           | Use debugger libraries to print DLL exported functions  |
| [dynamic_load.dart]   | Demonstrate loading a DLL and calling it at runtime     |
| [filever.dart]        | Getting file version information from the file resource |
| [modules.dart]        | Enumerates all loaded modules on the current system     |
| [pipe.dart]           | Shows use of named pipes for interprocess communication |
| [registry.dart]       | Demonstrates querying the registry for values           |
| [vt.dart]             | Shows virtual terminal sequences                        |
| [wsl.dart]            | Retrieve information from a WSL instance through APIs   |

[manifest]: https://github.com/halildurmus/win32/blob/main/examples/manifest
[service_manager_cli]: https://github.com/halildurmus/win32/blob/main/examples/service_manager_cli
[credentials.dart]: https://github.com/halildurmus/win32/blob/main/examples/credentials.dart
[dump.dart]: https://github.com/halildurmus/win32/blob/main/examples/dump.dart
[dynamic_load.dart]: https://github.com/halildurmus/win32/blob/main/examples/dynamic_load.dart
[filever.dart]: https://github.com/halildurmus/win32/blob/main/examples/filever.dart
[modules.dart]: https://github.com/halildurmus/win32/blob/main/examples/modules.dart
[pipe.dart]: https://github.com/halildurmus/win32/blob/main/examples/pipe.dart
[registry.dart]: https://github.com/halildurmus/win32/blob/main/examples/registry.dart
[vt.dart]: https://github.com/halildurmus/win32/blob/main/examples/vt.dart
[wsl.dart]: https://github.com/halildurmus/win32/blob/main/examples/wsl.dart

## Accessing local hardware and devices

| Example             | Description                                               |
| ------------------- | --------------------------------------------------------- |
| [bluetooth.dart]    | Demonstrate enumerating Bluetooth devices                 |
| [bluetoothle.dart]  | Enumerate Bluetooth LE (Low Energy) devices               |
| [devices.dart]      | Uses volume management APIs to list all disk devices      |
| [diskinfo.dart]     | Use `DeviceIoControl` API for direct device operations    |
| [gamepad.dart]      | Show which gamepads are connected                         |
| [midi.dart]         | Demonstrates MIDI playback using MCI commands             |
| [monitor.dart]      | Uses DDC and monitor-config API to get monitor caps       |
| [play_sound.dart]   | Plays a WAV file through the Windows `PlaySound` API      |
| [printer_list.dart] | Enumerate available printers on the system                |
| [printer_raw.dart]  | Sends RAW data directly to a Windows Printer              |
| [serial.dart]       | Demonstrates serial port management                       |
| [setupapi.dart]     | Show using setup APIs to retrieve device interfaces       |
| [speech.dart]       | Use Windows speech engine for text-to-speech              |
| [speech_voice.dart] | Use `ISpeechVoice` for text-to-speech                     |
| [sysinfo.dart]      | Examples of getting device information from native C APIs |
| [wasapi.dart]       | Demonstrates sound generation with WASAPI library         |

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
[speech_voice.dart]: https://github.com/halildurmus/win32/blob/main/examples/speech_voice.dart
[sysinfo.dart]: https://github.com/halildurmus/win32/blob/main/examples/sysinfo.dart
[wasapi.dart]: https://github.com/halildurmus/win32/blob/main/examples/wasapi.dart

## Windows shell manipulation (shell32)

| Example             | Description                                             |
| ------------------- | ------------------------------------------------------- |
| [shell_notify_icon] | Demonstrates adding an icon to the system tray          |
| [knownfolder.dart]  | Retrieves known folders from the current user profile   |
| [magnifier.dart]    | Provides a magnifier window using the Magnification API |
| [recycle_bin.dart]  | Queries the recycle bin and adds an item to it          |
| [screenshot.dart]   | Takes snapshots of all connected displays               |
| [shortcut.dart]     | Demonstrates creating a Windows shell link              |
| [wallpaper.dart]    | Shows what wallpaper and background color are set       |

[shell_notify_icon]: https://github.com/halildurmus/win32/blob/main/examples/shell_notify_icon
[knownfolder.dart]: https://github.com/halildurmus/win32/blob/main/examples/knownfolder.dart
[magnifier.dart]: https://github.com/halildurmus/win32/blob/main/examples/magnifier.dart
[recycle_bin.dart]: https://github.com/halildurmus/win32/blob/main/examples/recycle_bin.dart
[screenshot.dart]: https://github.com/halildurmus/win32/blob/main/examples/screenshot.dart
[shortcut.dart]: https://github.com/halildurmus/win32/blob/main/examples/shortcut.dart
[wallpaper.dart]: https://github.com/halildurmus/win32/blob/main/examples/wallpaper.dart

## Win32-style UI development (user32, gdi32, commdlg32)

| Example               | Description                                               |
| --------------------- | --------------------------------------------------------- |
| [notepad]             | Lightweight replica of the Windows notepad applet         |
| [tetris]              | Port of an open-source Tetris game to Dart                |
| [hello.dart]          | Basic Petzoldian "hello world" Win32 app                  |
| [msgbox.dart]         | Demonstrates a MessageBox from the console                |
| [commdlg.dart]        | Demonstrates using the color chooser common dialog box    |
| [customtitlebar.dart] | Demonstrates creation of owner-draw title bar region      |
| [customwin.dart]      | Displays a non-rectangular window                         |
| [dialogbox.dart]      | Create a custom dialog box in code                        |
| [dialogshow.dart]     | Creates a common item dialog (file picker) using COM      |
| [paint.dart]          | Demonstrates simple GDI drawing and min/max window sizing |
| [scroll.dart]         | Example of horizontal and vertical scrolling text window  |
| [sendinput.dart]      | Sends keyboard and mouse input to another window          |
| [snake.dart]          | Snake game using various GDI features                     |
| [taskdialog.dart]     | Demonstrates using modern task dialog boxes               |
| [window.dart]         | Enumerates open windows and basic window manipulation     |

[notepad]: https://github.com/halildurmus/win32/blob/main/examples/notepad
[tetris]: https://github.com/halildurmus/win32/blob/main/examples/tetris
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
[snake.dart]: https://github.com/halildurmus/win32/blob/main/examples/snake.dart
[taskdialog.dart]: https://github.com/halildurmus/win32/blob/main/examples/taskdialog.dart
[window.dart]: https://github.com/halildurmus/win32/blob/main/examples/window.dart

## COM APIs

| Example             | Description                                                    |
| ------------------- | -------------------------------------------------------------- |
| [com_context.dart]  | Shows interaction of Dart isolates and COM apartments          |
| [com_demo.dart]     | Demonstrates COM object creation, casting, and calling methods |
| [guid.dart]         | Creates a globally unique identifier (GUID)                    |
| [idispatch.dart]    | Demonstrates the use of `IDispatch`                            |
| [uiautomation.dart] | Demonstrates calling Windows UI Automation APIs                |
| [winhttp.dart]      | Demonstrates using WinHTTP APIs to make HTTP requests          |
| [wmi_perf.dart]     | Uses WMI to retrieve performance counters                      |
| [wmi_wql.dart]      | Uses WMI to retrieve information using WQL                     |

[com_context.dart]: https://github.com/halildurmus/win32/blob/main/examples/com_context.dart
[com_demo.dart]: https://github.com/halildurmus/win32/blob/main/examples/com_demo.dart
[guid.dart]: https://github.com/halildurmus/win32/blob/main/examples/guid.dart
[idispatch.dart]: https://github.com/halildurmus/win32/blob/main/examples/idispatch.dart
[uiautomation.dart]: https://github.com/halildurmus/win32/blob/main/examples/uiautomation.dart
[winhttp.dart]: https://github.com/halildurmus/win32/blob/main/examples/winhttp.dart
[wmi_perf.dart]: https://github.com/halildurmus/win32/blob/main/examples/wmi_perf.dart
[wmi_wql.dart]: https://github.com/halildurmus/win32/blob/main/examples/wmi_wql.dart

## Flutter

| Example        | Description                                 |
| -------------- | ------------------------------------------- |
| [explorer]     | Demonstrates calling Win32 file picker APIs |
| [task_manager] | Demonstrates managing running processes     |

[explorer]: https://github.com/halildurmus/win32/blob/main/examples/explorer
[task_manager]: https://github.com/halildurmus/win32/blob/main/examples/task_manager
