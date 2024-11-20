<div align="center">

  [![win32 README banner][banner]][win32.pub]

</div>

[banner]: https://raw.githubusercontent.com/halildurmus/win32/main/assets/readme_banner.png

<div align="center">

  [Homepage][win32.pub] |
  [Documentation](https://win32.pub/docs) |
  [Examples](https://win32.pub/examples) |
  [Packages](https://win32.pub/packages) |
  [Blog](https://win32.pub/blog)

</div>

[win32.pub]: https://win32.pub

<br />

<div align="center">
  <strong>Access Win32 APIs "directly" from Dart.</strong>

  <strong>win32</strong> is a [Dart package][package_link] that provides access
  to the most common Win32 APIs using FFI to make them accessible to Dart code
  without requiring a C compiler or the Windows SDK.
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

## 🎯 What is win32?

**win32** allows Dart developers to tap into a broad range of [Win32 API] calls
using FFI, simplifying access to Windows hardware and system services. By
offering easy-to-use bindings for both traditional Win32 and
[COM (Component Object Model)][COM] APIs, it enables you to fully leverage
Windows-specific functionalities directly in your Dart code.

[COM]: https://learn.microsoft.com/windows/win32/com/component-object-model--com--portal
[Win32 API]: https://learn.microsoft.com/windows/win32/api/

## 💡 Why Use win32?

**win32** is incredibly versatile and can be useful in a variety of scenarios,
including:

- **Flutter Development on Windows**: Need to access hardware accessories like
  gamepads or retrieve settings from the Windows registry in your app? **win32**
  makes this possible with ease.

- **Cross-Platform Package Development**: When writing a new cross-platform
  package, you can use **win32** for the Windows-specific implementation,
  ensuring your package works seamlessly on Windows.

- **Enhanced Command-Line Utilities**: If you're developing a command-line
  utility with Dart and require more advanced file APIs than what the
  `dart:io` library offers, **win32** provides the necessary functionality.

- **Integration with Existing Windows Libraries**: Smoothly integrate your apps
  with other Windows libraries that have published metadata using **win32**.

> The main goal of **win32** is to provide Dart developers with direct access to
underlying Windows APIs, eliminating the need to manually map API conventions to
Dart, simplifying development, and enhancing productivity.

## 📝 Documentation

Explore the full documentation at [win32.pub/docs](https://win32.pub/docs) to
dive deeper into the features and capabilities of the **win32** package.

## 🚀 Getting Started

Add **ffi** and **win32** packages to your project by running the appropriate
command below:

For **Flutter** projects:

```cmd
flutter pub add ffi win32
```

For **Dart-only** projects:

```cmd
dart pub add ffi win32
```

Here's an example that demonstrates how to display a message box using the
[MessageBox] function from the Windows API.

[MessageBox]: https://learn.microsoft.com/windows/win32/api/winuser/nf-winuser-messagebox

```dart
import 'package:ffi/ffi.dart';
import 'package:win32/win32.dart';

void main() {
  final lpCaption = w('Dart MessageBox Demo');
  final lpText = w('''
This is not really an error, but we are pretending for the sake of this demo.

Resource error.
Do you want to try again?
''');
  final result = MessageBox(
    NULL,
    lpText.ptr,
    lpCaption.ptr,
    MB_ICONWARNING | // Warning icon
        MB_CANCELTRYCONTINUE | // Action button
        MB_DEFBUTTON2, // Second button is the default
  );

  switch (result) {
    case IDCANCEL:
      print('Cancel pressed');
    case IDTRYAGAIN:
      print('Try Again pressed');
    case IDCONTINUE:
      print('Continue pressed');
  }
}
```

<a href="https://github.com/halildurmus/win32/blob/main/examples/msgbox.dart">
  <img
    alt="MessageBox screenshot"
    src="https://raw.githubusercontent.com/halildurmus/win32/main/assets/messagebox.png"
    width="300" />
</a>

## 🌟 Use Cases

Here are a few use cases showcasing the power of **win32**:

- **Building Windows Apps with Flutter**: Create a Flutter-based Windows app
  that relies on Win32 APIs.

<a href="https://github.com/halildurmus/win32/tree/main/examples/task_manager">
  <img
    alt="Task Manager App screenshot"
    src="https://raw.githubusercontent.com/halildurmus/win32/main/packages/win32/screenshots/task_manager.png"
    width="600" />
</a>

- **Accessing System Information**: Retrieve system information not directly
  accessible through Dart's core libraries.

<a href="https://github.com/halildurmus/win32/blob/main/examples/sysinfo.dart">
  <img
    alt="System information screenshot"
    src="https://raw.githubusercontent.com/halildurmus/win32/main/assets/power.png" />
</a>

- **Enumerating Installed Fonts**: Use [EnumFontFamiliesEx] to list all
  locally-installed fonts.

[EnumFontFamiliesEx]: https://learn.microsoft.com/windows/win32/api/wingdi/nf-wingdi-enumfontfamiliesexw

<a href="https://github.com/halildurmus/win32/blob/main/examples/fonts.dart">
  <img
    alt="Fonts screenshot"
    src="https://raw.githubusercontent.com/halildurmus/win32/main/assets/fonts.png" />
</a>

- **Developing Traditional Win32 Apps in Dart**: Build classic Windows
  applications purely in Dart.

<a href="https://github.com/halildurmus/win32/tree/main/examples/notepad">
  <img
    alt="DartNote App screenshot"
    src="https://raw.githubusercontent.com/halildurmus/win32/main/packages/win32/screenshots/dartnote.png"
    width="600" />
</a>

- **Game Development**: Create a fully-fledged game using GDI, like the example
  below.

<a href="https://github.com/halildurmus/win32/tree/main/examples/tetris">
  <img
    alt="Tetris Game screenshot"
    src="https://raw.githubusercontent.com/halildurmus/win32/main/packages/win32/screenshots/tetris.png"
    height="400" />
</a>

- **Advanced Console Applications**: Build packages like [dart_console] that
  enable advanced console manipulation.

![Dart console ANSI color demo screenshot][Dart console ANSI color demo screenshot]

- **Modern File Pickers**: Use [filepicker_windows] for a modern Windows file
  picker experience in your Dart/Flutter apps.

[dart_console]: https://pub.dev/packages/dart_console
[Dart console ANSI color demo screenshot]: https://raw.githubusercontent.com/halildurmus/win32/main/assets/console.png

<a href="https://github.com/halildurmus/filepicker_windows/tree/main/example/wallpaper">
  <img
    alt="Windows file picker screenshot"
    src="https://raw.githubusercontent.com/halildurmus/win32/main/assets/filepicker.png" />
</a>

- **Access .NET Components**:
  [Access .NET components through COM interop.][com_interop]

[com_interop]: https://github.com/halildurmus/win32/blob/main/examples/com_interop

- **Monitor System Events**:
  [Detect and respond to USB drive insertion and removal events.][usb_drive.dart]

[usb_drive.dart]: https://github.com/halildurmus/win32/blob/main/examples/usb_drive.dart

<br />

This package provides minimal modifications to the Win32 API to support Dart
idioms, aiming for high familiarity with existing Windows developers. Other Dart
packages can build on these primitives to provide a more idiomatic API for Dart
and Flutter developers.

A good example is [win32_registry], which offers a set of APIs for accessing the
Windows Registry without requiring knowledge of FFI.

## 📚 Examples

There are many examples included with this package that demonstrate calling
various Win32 and COM APIs. These can be found in the [examples] subdirectory,
and a short description of each example can be found
[here](https://github.com/halildurmus/win32/blob/main/examples/README.md).

[examples]: https://github.com/halildurmus/win32/tree/main/examples

## 📦 Packages Built on win32

A growing number of Dart packages are built on the low-level APIs exposed by
**win32**, providing more idiomatic class wrappers that are easy to integrate
into your Flutter and Dart apps.

Here are some of the packages built on top of **win32**:

- [filepicker_windows]: Provides access to Windows file open/save common dialog
  boxes.
- [win32_clipboard]: Access the Windows Clipboard from Dart.
- [win32_gamepad]: A friendly Dart API for accessing gamepads on Windows.
- [win32_gui]: Provides object-oriented API for Win32 GUI development.
- [win32_registry]: Easy access to the Windows Registry from Dart.
- [win32_runner]: An experimental shell (runner) for hosting Flutter apps
  without a C++ compiler.

[filepicker_windows]: https://pub.dev/packages/filepicker_windows
[win32_clipboard]: https://pub.dev/packages/win32_clipboard
[win32_gamepad]: https://pub.dev/packages/win32_gamepad
[win32_gui]: https://pub.dev/packages/win32_gui
[win32_registry]: https://pub.dev/packages/win32_registry
[win32_runner]: https://pub.dev/packages/win32_runner

Find more packages on [pub.dev](https://pub.dev/packages?q=dependency%3Awin32).

## 🐞 Features and Bugs

**win32** package offers a subset of the Win32 API, with more APIs being added
regularly based on user demand. If you require additional functionality or
encounter any bugs, please file an issue on our [issue tracker].

[issue tracker]: <https://github.com/halildurmus/win32/issues>

## 🔄 Backwards Compatibility

While **win32** follows semantic versioning (semver), some breaking changes may
occur in minor versions due to improvements in the [win32metadata] scraper or
the addition of new APIs.

To avoid potential issues, consider _pinning_ to a specific version of **win32**
or regularly testing with the latest version.

[win32metadata]: https://github.com/microsoft/win32metadata

## 🙏 Contributors

A heartfelt thank you to all our contributors who help improve **win32** by
creating packages, assisting with issues and pull requests, and participating in
discussions.

<br />

[![win32 contributors graph][contributors_graph]][contributors_link]

[contributors_graph]: https://contrib.rocks/image?repo=halildurmus/win32
[contributors_link]: https://github.com/halildurmus/win32/graphs/contributors

## 🎉 Acknowledgements

The Tetris example was adapted from a C version by Chang-Hung Liang.

The [C implementation of Snake] by David Jones was ported with his permission.

The original C version of the Notepad example was authored by Charles Petzold,
[licensed by him] without restriction.

The original C version of the [custom titlebar example] is by Dmitriy Kubyshkin
and is licensed under the MIT License.

Win32 API documentation comments are [licensed by Microsoft] under the
[Creative Commons Attribution 4.0 International Public License].

[C implementation of Snake]: https://github.com/davidejones/winsnake
[licensed by him]: https://www.charlespetzold.com/faq.html
[custom titlebar example]: https://github.com/grassator/win32-window-custom-titlebar
[licensed by Microsoft]: https://github.com/MicrosoftDocs/win32/blob/7b49862e8d58cfad5d4e5e22104c9fca7fd6db2f/ThirdPartyNotices
[Creative Commons Attribution 4.0 International Public License]: https://github.com/MicrosoftDocs/win32/blob/7b49862e8d58cfad5d4e5e22104c9fca7fd6db2f/LICENSE
