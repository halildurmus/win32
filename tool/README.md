This folder contains helpers for developing the package.

# winmd\winmd.dart
Parsers for Windows Metadata format. Will hopefully eventually replace
generate.dart, at least for WinMD / Windows Runtime types.

# generate\generate.dart
Used to automatically generate COM files from C++ fragments. 
Use with something like the following:
```
dart generate\generate.dart generate\com ..\lib\src\generated
```

# build.cmd
Generates EXE files for some of the Dart samples

# constants.cpp
Helper file to confirm widths of structs across various architectures