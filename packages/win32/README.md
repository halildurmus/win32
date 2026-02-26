<div align="center">

  <a href="https://win32.pub">
    <img
      alt="package:win32 logo"
      src="https://raw.githubusercontent.com/halildurmus/win32/main/assets/readme_banner.png"
      height="320" />
  </a>

</div>

<div align="center">

  [Homepage](https://win32.pub) ·
  [Documentation](https://win32.pub/docs) ·
  [Examples](https://win32.pub/examples) ·
  [Packages](https://win32.pub/packages) ·
  [Migrating to v6](https://win32.pub/docs/migration/5xx-to-6xx)

</div>

<div align="center">
  <a href="https://docs.flutter.dev/packages-and-plugins/favorites">
    <img
      alt="Flutter Favorite logo"
      src="https://raw.githubusercontent.com/halildurmus/win32/main/assets/FlutterFavoriteLogo.png"
      width="75"
      align="right" />
  </a>

  <br />

  [![ci][ci_badge]][ci_link]
  [![codecov][codecov_badge_link]][codecov_link]
  [![GitHub stars][github_stars_badge]][github_stars_link]
  [![Package: win32][package_badge]][package_link]
  [![Publisher: halildurmus.dev][publisher_badge]][publisher_link]
  [![Language: Dart][language_badge]][language_link]
  [![License: BSD-3-Clause][license_badge]][license_link]

</div>

[ci_badge]: https://img.shields.io/github/actions/workflow/status/halildurmus/win32/win32.yml
[ci_link]: https://github.com/halildurmus/win32/actions/workflows/win32.yml
[codecov_badge_link]: https://codecov.io/gh/halildurmus/win32/graph/badge.svg?token=RVL4TNLEJA
[codecov_link]: https://codecov.io/gh/halildurmus/win32
[github_stars_badge]: https://img.shields.io/github/stars/halildurmus/win32?style=flat&color=yellow
[github_stars_link]: https://github.com/halildurmus/win32/stargazers
[package_badge]: https://img.shields.io/pub/v/win32
[package_link]: https://pub.dev/packages/win32
[publisher_badge]: https://img.shields.io/pub/publisher/win32
[publisher_link]: https://pub.dev/publishers/halildurmus.dev
[language_badge]: https://img.shields.io/badge/language-Dart-blue
[language_link]: https://dart.dev
[license_badge]: https://img.shields.io/github/license/halildurmus/win32
[license_link]: https://opensource.org/licenses/BSD-3-Clause

## 🎯 Overview

`package:win32` exposes a curated surface of [Win32] and
[COM (Component Object Model)][COM] APIs through Dart FFI, enabling
functionality that is not available through `dart:io`, Flutter plugins,
or platform channels.

Typical use cases include:

- **Flutter apps on Windows**
  Access system settings, hardware devices, registry data, native dialogs, and
  other OS-level features unavailable through Dart or Flutter itself.
- **Platform-specific implementations**
  Write cross-platform packages with a Windows-specific backend.
- **Advanced tooling and utilities**
  Build command-line tools or background services that require native file,
  process, or security APIs.

[Win32]: https://learn.microsoft.com/windows/win32/api/
[COM]: https://learn.microsoft.com/windows/win32/com/component-object-model--com--portal

## ⚡ Quick Example

The example below shows how to call a native Win32 API directly from Dart:

```dart
import 'package:ffi/ffi.dart';
import 'package:win32/win32.dart';

void main() {
  using((arena) {
    final Win32Result(:value, :error) = MessageBox(
      null,
      arena.pcwstr('Hello from Dart'),
      arena.pcwstr('Dart Win32 MessageBox Demo'),
      MB_OK | MB_ICONINFORMATION,
    );
    switch (value) {
      case IDOK:
        print('OK pressed');
      case 0:
        throw WindowsException(error.toHRESULT());
    }
  });
}
```

<a href="https://github.com/halildurmus/win32/blob/main/examples/msgbox.dart">
  <img
    alt="MessageBox example screenshot"
    src="https://raw.githubusercontent.com/halildurmus/win32/main/assets/messagebox.png"
    height="150" />
</a>

## 📝 Documentation

Full documentation, conceptual guides, and API references are available at
[win32.pub/docs](https://win32.pub/docs).

Start with the **Quick Start** guide to make your first Win32 API call.

## 🌟 Examples

This repository includes a wide range of examples demonstrating real-world
usage in the [examples directory]:

- **Flutter desktop apps** using native Win32 APIs
- **System information tools**
- **Traditional Win32 GUI applications written in Dart**
- **Games using GDI**
- **USB and system event monitoring**
- **COM interop scenarios**

[examples directory]: https://github.com/halildurmus/win32/tree/main/examples

Here are some screenshots from examples built with `package:win32`:

<div align="center">

<a href="https://github.com/halildurmus/win32/tree/main/examples/task_manager">
  <img
    alt="Task Manager example"
    src="https://raw.githubusercontent.com/halildurmus/win32/main/packages/win32/screenshots/task_manager.png"
    height="200" />
</a>

<a href="https://github.com/halildurmus/win32/tree/main/examples/dartnote">
  <img
    alt="DartNote example"
    src="https://raw.githubusercontent.com/halildurmus/win32/main/packages/win32/screenshots/dartnote.png"
    height="200" />
</a>

<a href="https://github.com/halildurmus/win32/tree/main/examples/tetris">
  <img
    alt="Tetris example"
    src="https://raw.githubusercontent.com/halildurmus/win32/main/packages/win32/screenshots/tetris.png"
    height="200" />
</a>

</div>

## 📦 Packages Built on `package:win32`

Many Dart packages build on top of `package:win32` to provide more idiomatic
APIs:

- [filepicker_windows] — Access to native Windows file dialogs
- [win32_clipboard] — Access to Windows clipboard
- [win32_gamepad] — Access to gamepads
- [win32_gui] — Object-oriented Win32 GUI APIs
- [win32_registry] — Access to Windows Registry
- [win32_runner] — Experimental Flutter runner

Find more packages on [pub.dev](https://pub.dev/packages?q=dependency%3Awin32).

[filepicker_windows]: https://pub.dev/packages/filepicker_windows
[win32_clipboard]: https://pub.dev/packages/win32_clipboard
[win32_gamepad]: https://pub.dev/packages/win32_gamepad
[win32_gui]: https://pub.dev/packages/win32_gui
[win32_registry]: https://pub.dev/packages/win32_registry
[win32_runner]: https://pub.dev/packages/win32_runner

## 🐞 Features and Bugs

`package:win32` exposes a subset of the Windows API, with more APIs added
regularly based on user demand.

If you encounter bugs or need additional functionality, please
[file an issue](https://github.com/halildurmus/win32/issues).

## 🙏 Contributors

Thank you to everyone who contributes by writing code, reporting issues,
reviewing pull requests, or building packages on top of `package:win32`.

<br />

[![win32 contributors graph][contributors_graph]][contributors_link]

[contributors_graph]: https://contrib.rocks/image?repo=halildurmus/win32
[contributors_link]: https://github.com/halildurmus/win32/graphs/contributors

## 🎉 Acknowledgements

The original C version of the [custom titlebar example] is by Dmitriy Kubyshkin
and is licensed under the MIT License.

Win32 API documentation comments are [licensed by Microsoft] under the
[Creative Commons Attribution 4.0 International Public License].

[custom titlebar example]: https://github.com/grassator/win32-window-custom-titlebar
[licensed by Microsoft]: https://github.com/MicrosoftDocs/win32/blob/7b49862e8d58cfad5d4e5e22104c9fca7fd6db2f/ThirdPartyNotices
[Creative Commons Attribution 4.0 International Public License]: https://github.com/MicrosoftDocs/win32/blob/7b49862e8d58cfad5d4e5e22104c9fca7fd6db2f/LICENSE
