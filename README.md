<img src="https://raw.githubusercontent.com/dart-windows/.github/main/assets/dart-windows-card.png" width="50%" height="50%">

A package that provides a Dart language abstraction for Windows Metadata (WinMD)
files, making it possible to load them and build Dart FFI interop libraries from
the results.
It can be utilized to query the Windows developer API, encompassing both
unmanaged APIs like Win32 or COM, and APIs like Windows Runtime (WinRT) that
incorporate their own metadata.
Part of the [Dart | Windows][dart_windows_link] suite of Windows packages.

[![ci][ci_badge]][ci_link]
[![Package: winmd][package_badge]][package_link]
[![Publisher: win32.pub][publisher_badge]][publisher_link]
[![Language: Dart][language_badge]][language_link]
[![License: BSD-3-Clause][license_badge]][license_link]
[![codecov][codecov_badge_link]][codecov_link]

## Architecture

![Architecture diagram][architecture_diagram_link]

## Usage

### Windows Runtime (WinRT)

A simple example: loading the `MediaPlayer` class and retrieving information
about its methods.

```dart
import 'package:winmd/winmd.dart';

void main() async {
  // Load the WinRT metadata
  final scope = await MetadataStore.loadWinRTMetadata();

  // A Windows Runtime class
  const typeToGenerate = 'Windows.Media.Playback.MediaPlayer';

  // Find the TypeDef for this class
  final typeDef = scope.findTypeDef(typeToGenerate)!;

  // Create a Dart projection
  print('$typeToGenerate contains the following methods:');

  for (final method in typeDef.methods) {
    print('  ${method.name}');
  }
}
```

### Win32

Load all the methods from the GDI namespace and print out some metadata.

```dart
import 'package:winmd/winmd.dart';

void main() async {
  // Load the Win32 metadata
  final scope = await MetadataStore.loadWin32Metadata();

  // Find a namespace
  final namespace =
      scope.findTypeDef('Windows.Win32.UI.WindowsAndMessaging.Apis')!;

  // Sort the functions alphabetically
  final sortedMethods = namespace.methods
    ..sort((a, b) => a.name.compareTo(b.name));

  // Find a specific function
  const funcName = 'MessageBoxW';
  final method = sortedMethods.firstWhere((m) => m.name == funcName);

  // Print out some information about it
  print('Win32 function $funcName [token #${method.token}]');

  // Retrieve its parameters and project them into Dart FFI types
  final params = method.parameters
      .map((param) =>
          '${param.typeIdentifier.name.split('.').last} ${param.name}')
      .join(', ');
  print('The parameters are:\n  $params');

  final returnType = method.returnType.typeIdentifier.name.split('.').last;
  print('It returns type: $returnType.');
}
```

## Packages built on winmd

There are a growing number of packages that build on the relatively low-level
APIs exposed by the Dart win32 package to provide more idiomatic class wrappers.
These packages typically don't require any knowledge of Windows programming
models or FFI, and are ideal for incorporation into Flutter apps for Windows.

* [win32](https://pub.dev/packages/win32): provides Dart FFI bindings to the
  Win32 API, allowing you to call unmanaged Windows APIs using Dart types.
* [windows_*](https://pub.dev/packages?q=publisher%3Awin32.pub+topic%3Awinrt):
  these packages provides Dart FFI bindings to the Windows Runtime (WinRT) API,
  allowing you to call WinRT APIs using Dart types.

## Feature requests and bugs

Please file feature requests and bugs at the
[issue tracker][issue_tracker_link].

[architecture_diagram_link]: https://github.com/dart-windows/winmd/blob/main/metadata.drawio.svg?raw=true
[ci_badge]: https://github.com/dart-windows/winmd/actions/workflows/dart.yml/badge.svg
[ci_link]: https://github.com/dart-windows/winmd/actions/workflows/dart.yml
[codecov_badge_link]: https://codecov.io/gh/dart-windows/winmd/branch/main/graph/badge.svg?token=1ouz1Jr9nW
[codecov_link]: https://codecov.io/gh/dart-windows/winmd
[dart_windows_link]: https://github.com/dart-windows
[issue_tracker_link]: https://github.com/dart-windows/winmd/issues
[language_badge]: https://img.shields.io/badge/language-Dart-blue.svg
[language_link]: https://dart.dev
[license_badge]: https://img.shields.io/github/license/dart-windows/winmd?color=blue
[license_link]: https://opensource.org/licenses/BSD-3-Clause
[package_badge]: https://img.shields.io/pub/v/winmd.svg
[package_link]: https://pub.dev/packages/winmd
[publisher_badge]: https://img.shields.io/pub/publisher/winmd.svg
[publisher_link]: https://pub.dev/publishers/win32.pub
