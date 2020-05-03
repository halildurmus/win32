A package that wraps some of the most common Win32 API calls using FFI to make
them accessible to Dart code without requiring a C compiler or the Windows SDK.

[![pub package](https://img.shields.io/pub/v/win32.svg)](https://pub.dev/packages/win32)
[![Language](https://img.shields.io/badge/language-Dart-blue.svg)](https://dart.dev)

Perhaps of more use than the APIs themselves, this package provides a variety of
instructive examples for more complex FFI usage scenarios.

## Requirements

This package assumes the [Dart 32-bit or 64-bit compiler](https://dart.dev/get-dart),
running on Windows.

## Usage

A simple Petzoldian Hello World example can be found in the `example`
subdirectory. This example demonstrates creating a Win32 window and responding
to common messages such as `WM_PAINT` through a `WindowProc` callback function.

To run it, type:

```
dart example\hello.dart
```

This should display a window with a text message.

This can be compiled into a standalone Win32 executable by running:

```
dart2native example\hello.dart -o example\bin\hello.exe
```

## Samples

### Dart samples

The package includes several examples in the `example` subdirectory. These
examples use the Win32 API for all UI display and do not require Flutter.

| Example            | Description                                               |
| ------------------ | --------------------------------------------------------- |
| `hello.dart`       | Basic Petzoldian "hello world" Win32 app                  |
| `paint.dart`       | Demonstrates simple GDI drawing and min/max window sizing |
| `scroll.dart`      | Example of horizontal and vertical scrolling text window  |
| `console.dart`     | Shows usage of console APIs                               |
| `msgbox.dart`      | Demonstrates a MessageBox from the console                |
| `sendinput.dart`   | Sends keyboard and mouse input to another window          |
| `knownfolder.dart` | Shows usage of shell APIs to retrieve user's home dir     |
| `window.dart`      | Enumerates open windows and basic window manipulation     |
| `guid.dart`        | Creates a globally unique identifier (GUID)               |
| `devices.dart`     | Uses volume management APIs to list all disk devices      |
| `snake.dart`       | Snake game using various GDI features                     |
| `tetris\main.dart` | Port of an open-source Tetris game to Dart                |
| `notepad\notepad.dart` | Lightweight replica of the Windows notepad applet     |

### Flutter samples

The `explorer\` subdirectory contains an example of a simple Flutter app that
uses the volume management Win32 APIs to find the disk drives connected to your
computer and their volume IDs and attached paths.

## Features and bugs

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
Petzold, and is kindly [licensed by him](http://www.charlespetzold.com/faq.html)
without restriction.

[tracker]: http://github.com/timsneath/win32
