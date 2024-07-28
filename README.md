[![ci][ci_badge]][ci_link]
[![Package: win32_clipboard][package_badge]][package_link]
[![Publisher: halildurmus.dev][publisher_badge]][publisher_link]
[![Language: Dart][language_badge]][language_link]
[![License: BSD-3-Clause][license_badge]][license_link]
[![codecov][codecov_badge_link]][codecov_link]

A package that provides a friendly Dart API for accessing the Windows Clipboard.

This package builds on top of the Dart [win32] package, offering a high-level
Dart wrapper that avoids the need for users to understand FFI or write directly
to the Win32 API.

## Usage

### Retrieve text from the clipboard

```dart
import 'package:win32_clipboard/win32_clipboard.dart';

void main() {
  if (Clipboard.hasText) {
    print('Clipboard text: ${Clipboard.getText()}');
  }
}
```

### Write text to the clipboard

```dart
import 'package:win32_clipboard/win32_clipboard.dart';

void main() {
  if (Clipboard.setText('Hello, world!')) {
    print('Clipboard now contains: ${Clipboard.getText()}');
  }
}
```

### Retrieve a list of available clipboard formats

```dart
import 'package:win32_clipboard/win32_clipboard.dart';

void main() {
  print('Clipboard has ${Clipboard.numberOfFormats} format(s)');
  for (final format in Clipboard.formats) {
    print('- $format');
  }
}
```

### Clear the clipboard

```dart
import 'package:win32_clipboard/win32_clipboard.dart';

void main() {
  if (Clipboard.clear()) {
    print('Clipboard contents cleared successfully.');
  }
}
```

To learn more, see the [API Documentation][api_documentation_link].

## Feature requests and bugs

Please file feature requests and bugs at the
[issue tracker][issue_tracker_link].

[api_documentation_link]: https://pub.dev/documentation/win32_clipboard/latest/
[ci_badge]: https://github.com/halildurmus/win32_clipboard/actions/workflows/build.yml/badge.svg
[ci_link]: https://github.com/halildurmus/win32_clipboard/actions/workflows/build.yml
[codecov_badge_link]: https://codecov.io/gh/halildurmus/win32_clipboard/branch/main/graph/badge.svg?token=AM792MK0UT
[codecov_link]: https://codecov.io/gh/halildurmus/win32_clipboard
[issue_tracker_link]: https://github.com/halildurmus/win32_clipboard/issues
[language_badge]: https://img.shields.io/badge/language-Dart-blue.svg
[language_link]: https://dart.dev
[license_badge]: https://img.shields.io/github/license/halildurmus/win32_clipboard?color=blue
[license_link]: https://opensource.org/licenses/BSD-3-Clause
[package_badge]: https://img.shields.io/pub/v/win32_clipboard.svg
[package_link]: https://pub.dev/packages/win32_clipboard
[publisher_badge]: https://img.shields.io/pub/publisher/win32_clipboard.svg
[publisher_link]: https://pub.dev/publishers/halildurmus.dev
[win32]: https://pub.dev/packages/win32
