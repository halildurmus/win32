[![ci][ci_badge]][ci_link]
[![Package: winmd][package_badge]][package_link]
[![Publisher: halildurmus.dev][publisher_badge]][publisher_link]
[![Language: Dart][language_badge]][language_link]
[![License: BSD-3-Clause][license_badge]][license_link]
[![codecov][codecov_badge_link]][codecov_link]

**Inspect and generate [Windows Metadata (.winmd)][WinMD] files based on the
[ECMA-335] standard.**

`package:winmd` provides both low-level primitives and high-level abstractions
for working with `.winmd` files. It is a core component of Dart-based Windows
interop tooling — most notably powering **[package:win32]**.

## ✨ Features

- **Parse** `.winmd` files into rich, strongly-typed Dart object models
- **Query** type definitions, methods, fields, and more across multiple metadata
  sources
- **Resolve** symbols quickly without knowing their namespace up front
- **Merge** multiple `.winmd` files into a single, unified file
- **Generate** `.winmd` files programmatically from scratch
- **Cross-platform** — works on Windows, Linux, and macOS

## ⚡ Quick Example

The example below loads WinRT metadata from a `.winmd` file and inspects a
class and an enum:

```dart
import 'dart:io' as io;

import 'package:winmd/winmd.dart';

void main() {
  // Load WinRT metadata from a local .winmd file.
  const winmdPath = r'C:\WINDOWS\System32\WinMetadata\Windows.Storage.winmd';
  final bytes = io.File(winmdPath).readAsBytesSync();
  final reader = MetadataReader.read(bytes);
  final index = MetadataIndex.fromReader(reader);

  // Optional: Use MetadataLookup for efficient type resolution by name.
  // This is especially helpful when the namespace of the target type is
  // unknown.
  final metadata = MetadataLookup(index);

  // Lookup a WinRT class (e.g., StorageFile) and list its public methods.
  final storageFile = metadata.findSingleTypeByName('StorageFile');
  print('WinRT class "${storageFile.name}" has the following methods:');
  for (final method in storageFile.methods) {
    print('  ${method.name}');
  }
  print('');

  // Lookup a WinRT enum (e.g., FileAttributes) and display its members.
  final enumType = metadata.findSingleTypeByName('FileAttributes');
  print('WinRT enum "${enumType.name}" has the following fields:');

  // The first field represents the underlying integral type (e.g., Int32).
  final underlyingType = enumType.fields.first;
  print('  ${underlyingType.name} = ${underlyingType.signature.type}');

  // Subsequent fields are named values within the enum.
  for (final field in enumType.fields.skip(1)) {
    print('  ${field.name} = ${field.constant?.value}');
  }
}
```

## 📝 Documentation

Full API reference is available here:

👉 [API Reference][api_reference_link].

Additional usage examples are located in the [example] directory.

## 🐞 Features and Bugs

If you encounter bugs or need additional functionality, please
[file an issue][issue_tracker_link].

[api_reference_link]: https://pub.dev/documentation/winmd/latest/
[ci_badge]: https://github.com/halildurmus/winmd/actions/workflows/winmd.yml/badge.svg
[ci_link]: https://github.com/halildurmus/winmd/actions/workflows/winmd.yml
[codecov_badge_link]: https://codecov.io/gh/halildurmus/winmd/branch/main/graph/badge.svg?token=1ouz1Jr9nW
[codecov_link]: https://codecov.io/gh/halildurmus/winmd
[ECMA-335]: https://ecma-international.org/publications-and-standards/standards/ecma-335/
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
[package:win32]: https://pub.dev/packages/win32
[WinMD]: https://learn.microsoft.com/uwp/winrt-cref/winmd-files
