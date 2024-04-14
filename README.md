[![ci][ci_badge]][ci_link]
[![Package: win32_registry][package_badge]][package_link]
[![Publisher: halildurmus.dev][publisher_badge]][publisher_link]
[![Language: Dart][language_badge]][language_link]
[![License: BSD-3-Clause][license_badge]][license_link]
[![codecov][codecov_badge_link]][codecov_link]

A package that provides a friendly Dart API for accessing the Windows Registry.

This package builds on top of the Dart [win32][win32_pub_dev_link] package,
offering a high-level Dart wrapper that avoids the need for users to understand
FFI or write directly to the Win32 API.

## Usage

A simple example that reads the Windows build number from the Windows Registry:

```dart
import 'package:win32_registry/win32_registry.dart';

void main() {
  const keyPath = r'Software\Microsoft\Windows NT\CurrentVersion';
  final key = Registry.openPath(RegistryHive.localMachine, path: keyPath);

  final buildNumber = key.getValueAsString('CurrentBuild');
  if (buildNumber != null) {
    print('Windows build number: $buildNumber');
  }

  key.close();
}
```

More examples can be found in the `example\` subdirectory.

[ci_badge]: https://github.com/halildurmus/win32_registry/actions/workflows/dart.yml/badge.svg
[ci_link]: https://github.com/halildurmus/win32_registry/actions/workflows/dart.yml
[codecov_badge_link]: https://codecov.io/gh/halildurmus/win32_registry/branch/main/graph/badge.svg?token=6ThVC4ejhx
[codecov_link]: https://codecov.io/gh/halildurmus/win32_registry
[language_badge]: https://img.shields.io/badge/language-Dart-blue.svg
[language_link]: https://dart.dev
[license_badge]: https://img.shields.io/github/license/halildurmus/win32_registry?color=blue
[license_link]: https://opensource.org/licenses/BSD-3-Clause
[package_badge]: https://img.shields.io/pub/v/win32_registry.svg
[package_link]: https://pub.dev/packages/win32_registry
[publisher_badge]: https://img.shields.io/pub/publisher/win32_registry.svg
[publisher_link]: https://pub.dev/publishers/halildurmus.dev
[win32_pub_dev_link]: https://pub.dev/packages/win32
