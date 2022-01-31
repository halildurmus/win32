# win32_runner

Experimental package for running Flutter apps from a Dart runner, instead of the
C++ runner that is provided by default when you do `flutter create`.

You can use this (in theory) to create a Windows Flutter app without requiring a
C++ compiler on your system.

At present, this is not much more than a lightweight experiment. It doesn't
currently support high-DPI scaling, or plugins, or theme changes. It is
therefore not recommended for use with production apps: it's more a
proof-of-concept.

A sample app that uses it can be found in the example\ subdirectory. This can be
used to run an existing Flutter app.

For example:

```text
C:\src\win32_runner> cd ..
C:\src> flutter create simpleapp
C:\src> cd simpleapp
C:\src\simpleapp> flutter build windows
C:\src\simpleapp> dart ..\win32_runner\example\main.dart --path .
```
