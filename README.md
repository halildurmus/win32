A Dart FFI example showing how to create a basic "Hello World" Win32
application using Dart FFI. No Win32 SDK or C code is required. 

This requires the Dart 64-bit compiler. 

The Dart code is in `src\main.dart`. All Win32 API calls are in a `Win32`
class, which wraps the FFI typedefs and dynamic library loading. That class can
be found in `src\win32.dart`, and contains a variety of instructive examples
for more complex FFI usage scenarios.

To run, type:

```
dart src\main.dart
```

This should create a blank window:
![](https://github.com/timsneath/win32/raw/master/images/win32.PNG)

To create a standalone Dart executable, simply run:

```
dart2native src\main.dart -o win32dart.exe
```
