[![pub package](https://img.shields.io/pub/v/win32_runner.svg)](https://pub.dev/packages/win32_runner)
[![Language](https://img.shields.io/badge/language-Dart-blue.svg)](https://dart.dev)

Experimental package for running Flutter apps from a Dart runner, instead of the
C++ runner that is provided by default when you do `flutter create`.

You might use this to create a Windows Flutter app without requiring a C++
compiler on your system.

At present, this is not much more than a lightweight experiment. It doesn't
currently support plugins or theme changes. It is therefore not recommended for
use with production apps: it's more a proof-of-concept.

A sample app that uses it can be found in the `example\` subdirectory. This can
be used to run an existing Flutter app.

For example:

```text
# Create a sample app
C:\src\win32_runner> cd ..
C:\src> flutter create simpleapp
C:\src> cd simpleapp

# Compile Flutter code and assets to the build\ subdirectory
C:\src\simpleapp> flutter assemble -dTargetPlatform=windows-x64 --output=build -dBuildMode=release release_bundle_windows_assets

# Compile Dart runner
C:\src\simpleapp> dart compile exe ..\win32_runner\example\win32_runner.dart -o win32_runner.exe

# Run Flutter app
C:\src\simpleapp> win32+runner
```

Sample results:
![image](https://user-images.githubusercontent.com/2319867/151905570-d2ec6dc0-a188-49b9-a186-a1b035ae59c7.png)
