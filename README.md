A package that wraps some of the most common Win32 API calls using FFI to make
them accessible to Dart code without requiring a C compiler or the Windows SDK.

[![pub package](https://img.shields.io/pub/v/win32.svg)](https://pub.dev/packages/win32)
[![Language](https://img.shields.io/badge/language-Dart-blue.svg)](https://dart.dev)

Perhaps of more use than the APIs themselves, this package provides a variety of
instructive examples for more complex FFI usage scenarios.

## Requirements

This package assumes the Dart 64-bit compiler, running on Windows.

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

[More complex examples](https://github.com/timsneath/win32/blob/master/example/README.md)
can found in the `example` subdirectory. 

## Features and bugs

Please file feature requests and bugs at the [issue tracker][tracker]. This
is a hobby project, and should not be viewed as having the same level of
quality assurance as an official package from the Dart team. I'm a product
manager having fun on my weekends!

[tracker]: http://github.com/timsneath/win32
