[![ci][ci_badge]][ci_link]
[![Package: win32_runner][package_badge]][package_link]
[![Publisher: halildurmus.dev][publisher_badge]][publisher_link]
[![Language: Dart][language_badge]][language_link]
[![License: BSD-3-Clause][license_badge]][license_link]

An *experimental* package that allows you to run Flutter apps from a Dart runner
instead of the default C++ runner that is provided when you create a new Flutter
project using `flutter create`.

This package is particularly useful if you want to create a Windows Flutter app
without the need for a C++ compiler on your system.

**Important Note:** This package is currently in an *experimental* stage and
should not be used for production applications. It is primarily a
proof-of-concept, and as such, it has some limitations. For example, it does not
support plugins.

## Usage

You can use the sample app in the [example] subdirectory to run an existing
Flutter app on Windows using the Dart runner:

1. Clone the repository:

```console
C:\src> git clone https://github.com/halildurmus/win32_runner.git
C:\src> cd win32_runner
```

2. Install dependencies:

```console
C:\src\win32_runner> dart pub get
```

3. Create a sample app:

```console
C:\src\win32_runner> cd ..
C:\src> flutter create simpleapp
C:\src> cd simpleapp
```

4. Compile Flutter code and assets to the `build\` subdirectory:

```console
C:\src\simpleapp> flutter assemble -dTargetPlatform=windows-x64 --output=build -dBuildMode=release release_bundle_windows-x64_assets
```

5. Compile Dart runner:

```console
C:\src\simpleapp> dart compile exe ..\win32_runner\example\win32_runner.dart -o win32_runner.exe
```

6. Run Flutter app:

```console
C:\src\simpleapp> .\win32_runner
```

Once you've followed these steps, you should see your Flutter app running on
Windows using the Dart runner:

![demo][demo_image_link]

## Feature requests and bugs

Please file feature requests and bugs at the
[issue tracker][issue_tracker_link].

[ci_badge]: https://github.com/halildurmus/win32_runner/actions/workflows/build.yml/badge.svg
[ci_link]: https://github.com/halildurmus/win32_runner/actions/workflows/build.yml
[demo_image_link]: https://raw.githubusercontent.com/halildurmus/win32_runner/main/screenshots/demo.png
[example]: https://github.com/halildurmus/win32_runner/tree/main/example
[issue_tracker_link]: https://github.com/halildurmus/win32_runner/issues
[language_badge]: https://img.shields.io/badge/language-Dart-blue.svg
[language_link]: https://dart.dev
[license_badge]: https://img.shields.io/github/license/halildurmus/win32_runner?color=blue
[license_link]: https://opensource.org/licenses/BSD-3-Clause
[package_badge]: https://img.shields.io/pub/v/win32_runner.svg
[package_link]: https://pub.dev/packages/win32_runner
[publisher_badge]: https://img.shields.io/pub/publisher/win32_runner.svg
[publisher_link]: https://pub.dev/publishers/halildurmus.dev
