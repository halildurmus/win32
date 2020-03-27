A Dart FFI example showing how to create a basic "Hello World" Win32
application using Dart FFI. No Win32 SDK or C code is required. 

This requires the Dart 64-bit compiler. 

To run, type

```
dart bin\main.dart
```

This should create a blank window:
![]()

To create a standalone Dart executable, simply run

```
dart2native bin\main.dart -o win32dart.exe
```
