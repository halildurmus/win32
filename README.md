[![ci][ci_badge]][ci_link]
[![Package: winmd][package_badge]][package_link]
[![Publisher: halildurmus.dev][publisher_badge]][publisher_link]
[![Language: Dart][language_badge]][language_link]
[![License: BSD-3-Clause][license_badge]][license_link]
[![codecov][codecov_badge_link]][codecov_link]

A package that provides a Dart language abstraction over
[Windows Metadata (WinMD) files][windows_metadata_files_link], making it
possible to load them and build Dart FFI interop libraries from the results.

It can be used to query Windows developer APIs, encompassing both unmanaged
APIs like Win32 or COM, as well as modern APIs like Windows Runtime (WinRT) that
include their own metadata.

## Architecture

![Architecture diagram][architecture_diagram_link]

## Usage

A simple example that loads the `MessageBoxW` function and prints out its
parameters and return type:

```dart
import 'package:winmd/winmd.dart';

void main() async {
  // Load the Win32 metadata.
  final scope = await MetadataStore.loadWin32Scope();

  // Find a namespace.
  final namespace =
      scope.findTypeDef('Windows.Win32.UI.WindowsAndMessaging.Apis')!;

  // Sort the functions alphabetically.
  final sortedMethods =
      namespace.methods..sort((a, b) => a.name.compareTo(b.name));

  // Find a specific function.
  const funcName = 'MessageBoxW';
  final method = sortedMethods.firstWhere((m) => m.name == funcName);

  // Print out some information about it.
  print('Win32 function $funcName [token #${method.token}]');

  // Retrieve its parameters and project them into Dart FFI types.
  final params = method.parameters
      .map(
        (param) => '${param.typeIdentifier.name.split('.').last} ${param.name}',
      )
      .join(', ');
  print('The parameters are:\n  $params');

  final returnType = method.returnType.typeIdentifier.name.split('.').last;
  print('It returns type: $returnType.');

  MetadataStore.close();
}
```

More examples can be found in the [example] subdirectory.

## Packages built on winmd

- [win32][win32_package_link]: provides Dart FFI bindings to the Win32 API,
  allowing you to call unmanaged Windows APIs using Dart types.

## Feature requests and bugs

Please file feature requests and bugs at the
[issue tracker][issue_tracker_link].

[architecture_diagram_link]: https://github.com/halildurmus/winmd/blob/main/metadata.drawio.svg?raw=true
[ci_badge]: https://github.com/halildurmus/winmd/actions/workflows/winmd.yml/badge.svg
[ci_link]: https://github.com/halildurmus/winmd/actions/workflows/winmd.yml
[codecov_badge_link]: https://codecov.io/gh/halildurmus/winmd/branch/main/graph/badge.svg?token=1ouz1Jr9nW
[codecov_link]: https://codecov.io/gh/halildurmus/winmd
[example]: https://github.com/halildurmus/winmd/tree/main/example
[issue_tracker_link]: https://github.com/halildurmus/winmd/issues
[language_badge]: https://img.shields.io/badge/language-Dart-blue.svg
[language_link]: https://dart.dev
[license_badge]: https://img.shields.io/github/license/halildurmus/winmd?color=blue
[license_link]: https://opensource.org/licenses/BSD-3-Clause
[package_badge]: https://img.shields.io/pub/v/winmd.svg
[package_link]: https://pub.dev/packages/winmd
[publisher_badge]: https://img.shields.io/pub/publisher/winmd.svg
[publisher_link]: https://pub.dev/publishers/halildurmus.dev
[win32_package_link]: https://pub.dev/packages/win32
[windows_metadata_files_link]: https://learn.microsoft.com/uwp/winrt-cref/winmd-files
