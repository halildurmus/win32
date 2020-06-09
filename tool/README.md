This folder contains helpers for developing the package.

# build.cmd
Generates EXE files for some of the Dart samples

# constants.cpp
Helper file to confirm widths of structs across various architectures

# generate.dart
Used to automatically generate the COM files from C++ fragments. 
Use with something like the following:
```
dart generate\generate.dart generate\com ..\lib\src\com
```