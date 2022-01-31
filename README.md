[![pub package](https://img.shields.io/pub/v/win32_runner.svg)](https://pub.dev/packages/win32_runner)
[![Language](https://img.shields.io/badge/language-Dart-blue.svg)](https://dart.dev)

Experimental package for running Flutter apps from a Dart runner, instead of the
C++ runner that is provided by default when you do `flutter create`.

You might use this to create a Windows Flutter app without requiring a C++
compiler on your system.

At present, this is not much more than a lightweight experiment. It doesn't
currently support high-DPI scaling, or plugins, or theme changes. It is
therefore not recommended for use with production apps: it's more a
proof-of-concept.

A sample app that uses it can be found in the `example\` subdirectory. This can be
used to run an existing Flutter app.

For example:

```text
# Create a sample app
C:\src\win32_runner> cd ..
C:\src> flutter create simpleapp
C:\src> cd simpleapp

# Compile Flutter code and assets to the build\ subdirectory
C:\src\simpleapp> flutter assemble -dTargetPlatform=windows-x64 --output=build -dBuildMode=release release_bundle_windows_assets

# Compile Dart runner
C:\src\simpleapp> dart compile exe ..\win32_runner\example\flutter_run.dart -o flutter_run.exe

# Run Flutter app
C:\src\simpleapp> flutter_run
```

Sample results:
![image](https://user-images.githubusercontent.com/2319867/151735711-3f3d3e76-5008-495d-8f30-ea5b1de5ae22.png)
