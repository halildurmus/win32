[![ci][ci_badge]][ci_link]
[![Package: win32][package_badge]][package_link]
[![Publisher: win32.pub][publisher_badge]][publisher_link]
[![Language: Dart][language_badge]][language_link]
[![License: BSD-3-Clause][license_badge]][license_link]

[![Flutter Favorite program][flutter_favorite_logo]][flutter_favorite_program_link]

A package that wraps some of the most common Win32 API calls using FFI to make
them accessible to Dart code without requiring a C compiler or the Windows SDK.

## Documentation

* [Overview and concepts](https://win32.pub/docs/category/win32-programming)
* [API reference](https://pub.dev/documentation/win32/latest/)

## Usage

This package lets you write apps that use the Windows API directly from Dart, by
wrapping common Win32 and COM APIs using Dart FFI.

You could use it to call a Win32 API like
[EnumFontFamiliesEx](https://learn.microsoft.com/windows/win32/api/wingdi/nf-wingdi-enumfontfamiliesexw)
to enumerate all locally-installed fonts:

![Fonts screenshot](https://github.com/halildurmus/win32/blob/main/assets/images/fonts.png?raw=true)

or access system information that is not exposed directly by the Dart framework
libraries:

![System information screenshot](https://github.com/halildurmus/win32/blob/main/assets/images/power.png?raw=true)

You could use it to build a Windows app with Flutter that relies on Win32 APIs:

![Disk explorer screenshot](https://github.com/halildurmus/win32/blob/main/assets/images/disk_explorer.png?raw=true)

You could even use it to build a traditional Win32 app, written purely in Dart,
that could have come straight out of a classic Charles Petzold book on
programming Windows apps:

![Dart notepad screenshot](https://github.com/halildurmus/win32/blob/main/assets/images/notepad.png?raw=true)

or even, perhaps, a fully-fledged game using GDI:

![Dart Tetris for Win32 screenshot](https://github.com/halildurmus/win32/blob/main/assets/images/tetris.png?raw=true)

You might even build a package that depends upon it, like
[dart_console](https://pub.dev/packages/dart_console), which enables advanced
console manipulation:

![Dart console ANSI color demo screenshot](https://github.com/halildurmus/win32/blob/main/assets/images/console.png?raw=true)

or [filepicker_windows](https://pub.dev/packages/filepicker_windows), which
provides a modern Windows file picker for Flutter:

![Windows file picker screenshot](https://github.com/halildurmus/win32/blob/main/assets/images/filepicker.png?raw=true)

By design, this package provides minimal modifications to the Win32 API to
support Dart idioms. The goal is to provide high familiarity to an existing
Windows developer. Other Dart packages may build on these primitives to provide
a friendly API for Dart and Flutter developers. A good example of that is
[win32_registry](https://pub.dev/packages/win32_registry), which offers a set of
APIs for accessing the Windows Registry that don't require knowledge of FFI.

## Getting started

Many more samples can be found in the `examples\` subdirectory, along with a
test suite in the `test\` subdirectory that shows other API calls.

A good starting point is `hello.dart`. This example demonstrates creating a
Win32 window and responding to common messages such as `WM_PAINT` through a
`WNDPROC` callback function.

To run it, type:

```cmd
dart examples\hello.dart
```

This should display a window with a text message.

This can be compiled into a standalone Win32 executable by running:

```cmd
dart compile exe examples\hello.dart -o examples\bin\hello.exe
```

For more information on working with the Win32 library from Dart, [consult the
documentation](https://win32.pub/docs/category/win32-programming).

## Examples

There are many examples included with this package that demonstrate calling
various Win32 and COM APIs. These can be found in the `examples\` directory;
a short description of each example can be found [here](
https://pub.dev/packages/win32/example).

## Packages built on win32

There are a growing number of packages that build on the relatively low-level
APIs exposed by the Dart win32 package to provide more idiomatic class wrappers.
These packages typically don't require any knowledge of Windows programming
models or FFI, and are ideal for incorporation into Flutter apps for Windows.

A [full list of these packages can be found on pub](https://pub.dev/packages?q=dependency%3Awin32).

* [filepicker_windows](https://pub.dev/packages/filepicker_windows): makes the
  Windows file open / save common dialog boxes available to Flutter and Dart
  apps.
* [win32_clipboard](https://pub.dev/packages/win32_clipboard): provides a
  friendly Dart API for accessing the Windows Clipboard.
* [win32_gamepad](https://pub.dev/packages/win32_gamepad): provides a friendly
  Dart API for accessing gamepads connected to a Windows machine.
* [win32_gui](https://pub.dev/packages/win32_gui): allows you to create Win32
  GUI applications in an object-oriented style with some helpers.
* [win32_registry](https://pub.dev/packages/win32_registry): provides Dart
  classes for accessing and manipulating the Windows Registry.
* [win32_runner](https://pub.dev/packages/win32_runner): provides an
  experimental shell (or runner) for hosting Flutter apps without needing a C++
  compiler to create the EXE.

## Requirements

This package is designed to run on 64-bit editions of Windows. The primary
target is Intel processors, but the package is also tested on ARM architecture,
running in x64 emulation mode.

## Features and bugs

The current package only projects a subset of the Win32 API, but new APIs will
be added based on user demand, particularly if it unblocks the creation of new
Dart packages for Windows. Please file feature requests and bugs at the [issue
tracker][tracker].

## Backwards compatibility

The library version models semver, but you cannot assume a strict guarantee of
no breaking changes between minor versions. That guarantee is not possible to
make, for several reasons:

* The package is based on [metadata published by
  Microsoft](https://github.com/microsoft/win32metadata), which is generated by
  scraping Win32 SDK header files. As the quality of the scraper improves, there
  may be minor changes to some fields (for example, an unsigned integer may
  become a signed integer).
* Adding new APIs may itself cause a breaking change. For example, if you
  declare a missing Windows constant in your own code that is then added, Dart
  will complain about the duplicate definition.

If this causes you concern, our recommendation is to pin to a specific version
of Win32. But the best approach is simply to test regularly with the latest
version of this package, and continue to move your minimum forward.

## Acknowledgements

The Tetris example listed above is a fuller worked example of a reasonably
complete program that uses the Dart Win32 package. It is a port of a C version
of the game by Chang-Hung Liang.
[More information...](examples/tetris/README.md)

The [C implementation of Snake](https://github.com/davidejones/winsnake) is by
David Jones, and is ported with his permission.

The original C version of the Notepad example was authored by Charles Petzold,
and is kindly [licensed by him](https://www.charlespetzold.com/faq.html) without
restriction.

The original C version of the [custom title bar
example](https://github.com/grassator/win32-window-custom-titlebar) is by
Dmitriy Kubyshkin and is licensed by him under the MIT License.

The summary Win32 API documentation comments are [licensed by Microsoft][] under
the [Creative Commons Attribution 4.0 International Public License][license].

[ci_badge]: https://github.com/halildurmus/win32/actions/workflows/dart.yml/badge.svg
[ci_link]: https://github.com/halildurmus/win32/actions/workflows/dart.yml
[flutter_favorite_logo]: https://raw.githubusercontent.com/halildurmus/win32/main/assets/images/FlutterFavoriteLogo.png
[flutter_favorite_program_link]: https://flutter.dev/docs/development/packages-and-plugins/favorites
[language_badge]: https://img.shields.io/badge/language-Dart-blue.svg
[language_link]: https://dart.dev
[license_badge]: https://img.shields.io/github/license/halildurmus/win32?color=blue
[license_link]: https://opensource.org/licenses/BSD-3-Clause
[tracker]: https://github.com/halildurmus/win32
[licensed by Microsoft]: https://github.com/MicrosoftDocs/win32/blob/7b49862e8d58cfad5d4e5e22104c9fca7fd6db2f/ThirdPartyNotices
[license]: https://github.com/MicrosoftDocs/win32/blob/7b49862e8d58cfad5d4e5e22104c9fca7fd6db2f/LICENSE
[package_badge]: https://img.shields.io/pub/v/win32.svg
[package_link]: https://pub.dev/packages/win32
[publisher_badge]: https://img.shields.io/pub/publisher/win32.svg
[publisher_link]: https://pub.dev/publishers/win32.pub
