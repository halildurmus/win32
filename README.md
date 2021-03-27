![Dart/Win32](https://github.com/timsneath/win32/blob/main/doc/images/win32.png?raw=true)

A package that wraps some of the most common Win32 API calls using FFI to make
them accessible to Dart code without requiring a C compiler or the Windows SDK.

[![pub package](https://img.shields.io/pub/v/win32.svg)](https://pub.dev/packages/win32)
[![Language](https://img.shields.io/badge/language-Dart-blue.svg)](https://dart.dev)
![Build](https://github.com/timsneath/win32/workflows/Build/badge.svg)

In addition to exposing the APIs themselves, this package offers a variety of
instructive examples for more complex FFI usage scenarios.

By design, this package provides minimal modifications to the Win32 API to
support Dart idioms. The goal is to provide high familiarity to an existing
Win32 developer. Other plugins may build on these primitives to provide a
friendly API for Dart and Flutter developers. A good example of that is
[filepicker_windows](https://pub.dev/packages/filepicker_windows), which offers
a common item dialog suitable for incorporation into an existing Flutter app.

## Usage

This package lets you write apps that use the Windows API directly from Dart, by
wrapping common Win32, COM and Windows Runtime APIs using Dart FFI.

You could use it to call a Win32 API like
[EnumFontFamiliesEx](https://docs.microsoft.com/en-us/windows/win32/api/wingdi/nf-wingdi-enumfontfamiliesexw)
to enumerate all locally-installed fonts:

![Fonts screenshot](https://github.com/timsneath/win32/blob/main/doc/images/fonts.png?raw=true)

or access system information that is not exposed directly by the Dart framework
libraries:

![System information screenshot](https://github.com/timsneath/win32/blob/main/doc/images/power.png?raw=true)

You could use it to build a Windows app with Flutter that relies on Win32 APIs:

![Disk explorer screenshot](https://github.com/timsneath/win32/blob/main/doc/images/disk_explorer.png?raw=true)

You could even use it to build a traditional Win32 app, written purely in Dart,
that could have come straight out of a classic Charles Petzold book on
programming Windows apps:

![Dart notepad screenshot](https://github.com/timsneath/win32/blob/main/doc/images/notepad.png?raw=true)

or even, perhaps, a fully-fledged game using GDI:

![Dart Tetris for Win32 screenshot](https://github.com/timsneath/win32/blob/main/doc/images/tetris.png?raw=true)

You might even build a package that depends upon it, like
[dart_console](https://pub.dev/packages/dart_console), which enables advanced
console manipulation:

![Dart console ANSI color demo screenshot](https://github.com/timsneath/win32/blob/main/doc/images/console.png?raw=true)

or [filepicker_windows](https://pub.dev/packages/filepicker_windows), which
provides a modern Windows file picker for Flutter:

![Windows file picker screenshot](https://github.com/timsneath/win32/blob/main/doc/images/filepicker.png?raw=true)

## Getting started

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
| `calendar.dart`    | Gets information about the calendar from a WinRT API      |
| `console.dart`     | Shows usage of console APIs                               |
| `credentials.dart` | Adds a credential to the store and retrieves it           |
| `customwin.dart`   | Displays a non-rectangular window                         |
| `devices.dart`     | Uses volume management APIs to list all disk devices      |
| `dialog.dart`      | Create a custom dialog box in code                        |
| `dialogshow.dart`  | Creates a common item dialog (file picker) using COM      |
| `dump.dart`        | Use debugger libraries to print DLL exported functions    |
| `dynamic_load.dart`| Demonstrate loading a DLL and calling it at runtime       |
| `filever.dart`     | Getting file version information from the file resource   |
| `guid.dart`        | Creates a globally unique identifier (GUID)               |
| `knownfolder.dart` | Retrieves known folders from the current user profile     |
| `manifest\`        | Demonstrates the use of app manifests for compiled apps   |
| `modules.dart`     | Enumerates all loaded modules on the current system       |
| `monitor.dart`     | Uses DDC and monitor-config API to get monitor caps       |
| `msgbox.dart`      | Demonstrates a MessageBox from the console                |
| `notepad\notepad.dart` | Lightweight replica of the Windows notepad applet     |
| `paint.dart`       | Demonstrates simple GDI drawing and min/max window sizing |
| `play_sound.dart`  | Plays a WAV file through the Windows PlaySound API        |
| `screenshot.dart`  | Takes a screenshot of the current desktop                 |
| `scroll.dart`      | Example of horizontal and vertical scrolling text window  |
| `sendinput.dart`   | Sends keyboard and mouse input to another window          |
| `snake.dart`       | Snake game using various GDI features                     |
| `sysinfo.dart`     | Examples of getting device information from native C APIs |
| `tetris\main.dart` | Port of an open-source Tetris game to Dart                |
| `wallpaper.dart`   | Shows what wallpaper and background color are set         |
| `window.dart`      | Enumerates open windows and basic window manipulation     |
| `winmd.dart`       | Interrogate Windows Runtime types                         |
| `wmi.dart`         | Using WMI from COM to retrieve device/OS information      |

### Flutter samples

The `explorer\` subdirectory contains an example of a simple Flutter app that
uses the volume management Win32 APIs to find the disk drives connected to your
computer and their volume IDs and attached paths.

## Requirements

This package assumes the [Dart 64-bit compiler](https://dart.dev/get-dart),
running on Windows. Many commands are tested on 32-bit Windows, but due to the
lack of a compiler for 32-bit executables and the increasing lack of machines
running 32-bit OSes, this is inevitably a low priority. The package is also
tested on Windows-on-ARM architecture, running in x64 emulation mode.

## Features and bugs

The current package only projects a subset of the Win32 API, but new APIs will
be add based on user demand. I'm particularly interested in unblocking plugins
for Windows. Please file feature requests and bugs at the [issue
tracker][tracker].

**Disclaimer**: This is a hobby project, and should not be viewed as having the
same level of quality assurance as an official package from the Dart team. I'm a
product manager having fun on my weekends!

## Backwards compatibility

The library version uses semver, but you should not assume a strict guarantee of
no breaking changes between minor versions. That guarantee is not possible to
make, for several reasons:

- Several times, my fixing a bug in the fidelity of the Win32 API has tightened
  the constraints over a parameter (for example, `Pointer` becomes
  `Pointer<INPUT>`). These changes should be signalled in the log.
- Adding new features may itself cause a breaking change. For example, if you
  declare a missing Windows constant in your own code that is then added, Dart
  will complain about the duplicate definition.

One solution is to pin to a specific version of Win32, or declare a more
tightly-bounded version dependency (e.g. `'>=1.7.0 <1.8.0'` rather than merely
`^1.7.0`). But the best approach is simply to test regularly with the latest
version of this package, and continue to move your minimum forward. As the
package matures, these issues should gradually fade away.

## Acknowledgements

The Tetris example listed above is a fuller worked example of a reasonably
complete program that uses the Dart Win32 package. It is a port of a C version
of the game by Chang-Hung Liang. [More information...](tetris/README.md)

The [C implementation of Snake](https://github.com/davidejones/winsnake) is by
David Jones, and is ported with his permission.

The original C version of the Notepad example was authored by Charles Petzold,
and is kindly [licensed by him](https://www.charlespetzold.com/faq.html) without
restriction.

The summary Win32 API documentation comments are [licensed by Microsoft][] under
the [Creative Commons Attribution 4.0 International Public License][license].

[tracker]: https://github.com/timsneath/win32
[licensed by Microsoft]: https://github.com/MicrosoftDocs/win32/blob/7b49862e8d58cfad5d4e5e22104c9fca7fd6db2f/ThirdPartyNotices
[license]: https://github.com/MicrosoftDocs/win32/blob/7b49862e8d58cfad5d4e5e22104c9fca7fd6db2f/LICENSE
