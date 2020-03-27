A package that wraps common Win32 API calls using FFI to make them
accessible to Dart code without requiring a C compiler or the Windows SDK.

This package provides a variety of instructive examples for more complex FFI usage scenarios.

## Requirements

This package assumes the Dart 64-bit compiler. 

## Usage

A Hello World example can be found in the `example` subdirectory. To run it, type:

```
dart example\hello.dart
```

This should create a window with a text message.

This can be compiled into a standalone Win32 executable by running:

```
dart2native example\hello.dart -o hello.exe
```

## Features and bugs

Please file feature requests and bugs at the [issue tracker][tracker].

[tracker]: http://github.com/timsneath/win32
