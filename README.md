[![ci][ci_badge]][ci_link]
[![Package: win32_registry][package_badge]][package_link]
[![Publisher: halildurmus.dev][publisher_badge]][publisher_link]
[![Language: Dart][language_badge]][language_link]
[![License: BSD-3-Clause][license_badge]][license_link]
[![codecov][codecov_badge_link]][codecov_link]

**A modern, type-safe Dart API for accessing and managing the Windows Registry.**

This package builds on top of the [package:win32][win32_pub_dev_link] and
provides a high-level abstraction over native registry APIs. It eliminates the
need to work directly with FFI, raw pointers, or low-level Win32 calls while
preserving performance and correctness.

## ✨ Features

- **Key Management** — Create, open, delete, and rename registry keys.
- **Typed Values** — Read and write strings, integers, binary data, and
  multi-string values using strongly typed APIs.
- **Change Monitoring** — Listen for registry modifications.
- **Metadata Queries** — Inspect subkeys, values, sizes, and timestamps.
- **Transaction Support** — Perform registry operations atomically.

## ⚡ Quick Example

Reads the Windows build number from the registry:

```dart
import 'package:win32_registry/win32_registry.dart';

void main() {
  final key = LOCAL_MACHINE.open(
    r'Software\Microsoft\Windows NT\CurrentVersion',
  );
  final buildNumber = key.getString('CurrentBuild');
  if (buildNumber != null) {
    print('Windows build number: $buildNumber');
  }
  key.close();
}
```

## 📝 Documentation

Full API reference is available here:

👉 [API Reference][api_reference_link].

Additional usage examples are located in the [example] directory.

## 🐞 Features and Bugs

If you encounter bugs or need additional functionality, please
[file an issue][issue_tracker_link].

[api_reference_link]: https://pub.dev/documentation/win32_registry/latest/
[ci_badge]: https://github.com/halildurmus/win32_registry/actions/workflows/win32_registry.yml/badge.svg
[ci_link]: https://github.com/halildurmus/win32_registry/actions/workflows/win32_registry.yml
[codecov_badge_link]: https://codecov.io/gh/halildurmus/win32_registry/branch/main/graph/badge.svg?token=6ThVC4ejhx
[codecov_link]: https://codecov.io/gh/halildurmus/win32_registry
[example]: https://github.com/halildurmus/win32_registry/tree/main/example
[issue_tracker_link]: https://github.com/halildurmus/win32_registry/issues
[language_badge]: https://img.shields.io/badge/language-Dart-blue.svg
[language_link]: https://dart.dev
[license_badge]: https://img.shields.io/github/license/halildurmus/win32_registry?color=blue
[license_link]: https://opensource.org/licenses/BSD-3-Clause
[package_badge]: https://img.shields.io/pub/v/win32_registry.svg
[package_link]: https://pub.dev/packages/win32_registry
[publisher_badge]: https://img.shields.io/pub/publisher/win32_registry.svg
[publisher_link]: https://pub.dev/publishers/halildurmus.dev
[win32_pub_dev_link]: https://pub.dev/packages/win32
