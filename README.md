A package that wraps some of the most common Win32 API calls using FFI to make
them accessible to Dart code without requiring a C compiler or the Windows SDK.

[![pub package](https://img.shields.io/pub/v/win32.svg)](https://pub.dev/packages/win32)
[![Language](https://img.shields.io/badge/language-Dart-blue.svg)](https://dart.dev)

Perhaps of as much use as the APIs themselves, this package provides a variety of
instructive examples for more complex FFI usage scenarios.

By design, this package provides minimal modifications to the Win32 API to support
Dart idioms. The goal is to provide high familiarity to an existing Win32 developer.
Other plugins may build on these primitives to provide a friendly API for Dart and
Flutter developers. A good example of that is
[filepicker_windows](https://pub.dev/packages/filepicker_windows), which offers a
common item dialog suitable for incorporation into an existing Flutter app.

## What does this package do

This package lets you write apps that use the Windows API directly from Dart, by
wrapping common Win32, COM and Windows Runtime APIs using Dart FFI.

You could use it to call a Win32 API like
[EnumFontFamiliesEx](https://docs.microsoft.com/en-us/windows/win32/api/wingdi/nf-wingdi-enumfontfamiliesexw)
to enumerate all locally-installed fonts:
![Fonts screenshot](https://github.com/timsneath/win32/blob/master/doc/images/fonts.png?raw=true)

or access system information that is not exposed directly by the Dart framework libraries:
![System information screenshot](https://github.com/timsneath/win32/blob/master/doc/images/power.png?raw=true)

You could use it to build a Windows app with Flutter that relies on Win32 APIs:
![Disk explorer screenshot](https://github.com/timsneath/win32/blob/master/doc/images/disk_explorer.png?raw=true)

You could even use it to build a traditional Win32 app that could have come straight out of a classic Charles Petzold book on programming Windows apps:
![Dart notepad screenshot](https://github.com/timsneath/win32/blob/master/doc/images/notepad.png?raw=true)

or even perhaps a game:
![Dart Tetris for Win32 screenshot](https://github.com/timsneath/win32/blob/master/doc/images/tetris.png?raw=true)

You might even build a package that depends upon it, like [dart_console](https://pub.dev/packages/dart_console), which enables advanced console manipulation:
![Dart console ANSI color demo screenshot](https://github.com/timsneath/win32/blob/master/doc/images/console.png?raw=true)

or [filepicker_windows](https://pub.dev/packages/filepicker_windows), which provides a modern Windows file picker:
![Windows file picker screenshot](https://github.com/timsneath/win32/blob/master/doc/images/filepicker.png?raw=true)

## Usage

Many more samples can be found in the `example\` subdirectory, along with a test
suite in the `test\` subdirectory that shows other API calls.

A good starting point is `hello.dart`. This example demonstrates creating a
Win32 window and responding to common messages such as `WM_PAINT` through a
`WindowProc` callback function.

To run it, type:

```cmd
dart example\hello.dart
```

This should display a window with a text message.

This can be compiled into a standalone Win32 executable by running:

```cmd
dart compile exe example\hello.dart -o example\bin\hello.exe
```

## Samples

### Dart samples

The package includes a number of examples in the `example` subdirectory. These
examples use the Win32 API for all UI display and do not require Flutter.

| Example            | Description                                               |
| ------------------ | --------------------------------------------------------- |
| `hello.dart`       | Basic Petzoldian "hello world" Win32 app                  |
| `paint.dart`       | Demonstrates simple GDI drawing and min/max window sizing |
| `scroll.dart`      | Example of horizontal and vertical scrolling text window  |
| `console.dart`     | Shows usage of console APIs                               |
| `msgbox.dart`      | Demonstrates a MessageBox from the console                |
| `calendar.dart`    | Gets information about the calendar from a WinRT API      |
| `sendinput.dart`   | Sends keyboard and mouse input to another window          |
| `knownfolder.dart` | Retrieves known folders from the current user profile     |
| `window.dart`      | Enumerates open windows and basic window manipulation     |
| `monitor.dart`     | Uses DDC and monitor-config API to get monitor caps       |
| `wallpaper.dart`   | Shows what wallpaper and background color are set         |
| `guid.dart`        | Creates a globally unique identifier (GUID)               |
| `devices.dart`     | Uses volume management APIs to list all disk devices      |
| `modules.dart`     | Enumerates all loaded modules on the current system       |
| `snake.dart`       | Snake game using various GDI features                     |
| `dialogshow.dart`  | Creates a common item dialog (file picker) using COM      |
| `wmi.dart`         | Using WMI from COM to retrieve device/OS information      |
| `sysinfo.dart`     | Examples of getting device information from native C APIs |
| `manifest\`        | Demonstrates the use of app manifests for compiled apps   |
| `winmd.dart`       | Interrogate Windows Runtime types                         |
| `credentials.dart` | Adds a credential to the store and retrieves it           |
| `dynamic_load.dart`| Demonstrate loading a DLL and calling it at runtime       |
| `tetris\main.dart` | Port of an open-source Tetris game to Dart                |
| `notepad\notepad.dart` | Lightweight replica of the Windows notepad applet     |

### Flutter samples

The `explorer\` subdirectory contains an example of a simple Flutter app that
uses the volume management Win32 APIs to find the disk drives connected to your
computer and their volume IDs and attached paths.

## Requirements

This package assumes the [Dart 32-bit or 64-bit compiler](https://dart.dev/get-dart),
running on Windows.

## Features and bugs

Let me know what APIs you're interested in seeing. I'm not planning to project
the entire Windows API, but I'm particularly interested in examples that either
unblock a plugin for Windows or that demonstrate more complex Windows APIs that
represent an important pattern.

Please file feature requests and bugs at the [issue tracker][tracker]. This
is a hobby project, and should not be viewed as having the same level of
quality assurance as an official package from the Dart team. I'm a product
manager having fun on my weekends!

## Acknowledgements

The Tetris example listed above is a fuller worked example of a reasonably
complete program that uses the Dart Win32 package. It is a port of a C version
of the game by Chang-Hung Liang. [More information...](tetris/README.md)

The [C implementation of the Snake game](https://github.com/davidejones/winsnake)
is by David Jones, and is ported with his permission.

The original C version of the Notepad example was originally authored by Charles
Petzold, and is kindly [licensed by him](https://www.charlespetzold.com/faq.html)
without restriction.

[tracker]: https://github.com/timsneath/win32
