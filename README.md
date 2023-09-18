<img src="https://raw.githubusercontent.com/dart-windows/.github/main/assets/dart-windows-card.png" width="50%" height="50%">

A package that provides a friendly Dart API for file and directory selection for
Windows using common dialog controls.

This package builds on top of the Dart [win32][win32_pub_link] package, offering
a high-level Dart wrapper that avoids the need for users to understand FFI or
write directly to the Win32 API.

Part of the [Dart | Windows][dart_windows_link] suite of Windows packages.

[![Package: filepicker_windows][package_badge]][package_link]
[![Publisher: win32.pub][publisher_badge]][publisher_link]
[![Language: Dart][language_badge]][language_link]
[![License: BSD-3-Clause][license_badge]][license_link]

## Usage

### File Picker

Show a file picker dialog, allowing the user to select a file.

```dart
import 'package:filepicker_windows/filepicker_windows.dart';

void main() {
  final file = OpenFilePicker()
    ..filterSpecification = {
      'Word Document (*.doc)': '*.doc',
      'Web Page (*.htm; *.html)': '*.htm;*.html',
      'Text Document (*.txt)': '*.txt',
      'All Files': '*.*'
    }
    ..defaultFilterIndex = 0
    ..defaultExtension = 'doc'
    ..title = 'Select a document';

  final result = file.getFile();
  if (result != null) {
    print(result.path);
  }
}
```

### Directory Picker

Show a directory picker dialog, allowing the user to select a directory.

```dart
import 'package:filepicker_windows/filepicker_windows.dart';

void main() {
  final file = DirectoryPicker()..title = 'Select a directory';

  final result = file.getDirectory();
  if (result != null) {
    print(result.path);
  }
}
```

Additional examples can be located within the `example\` directory.

For a more advanced demonstration, you can explore a Flutter application in the
`example\wallpaper\` directory. This application illustrates how to select an
image file and set it as your desktop wallpaper.

[dart_windows_link]: https://github.com/dart-windows
[language_badge]: https://img.shields.io/badge/language-Dart-blue.svg
[language_link]: https://dart.dev
[license_badge]: https://img.shields.io/github/license/dart-windows/filepicker_windows?color=blue
[license_link]: https://opensource.org/licenses/BSD-3-Clause
[package_badge]: https://img.shields.io/pub/v/filepicker_windows.svg
[package_link]: https://pub.dev/packages/filepicker_windows
[publisher_badge]: https://img.shields.io/pub/publisher/filepicker_windows.svg
[publisher_link]: https://pub.dev/publishers/win32.pub
[win32_pub_link]: https://pub.dev/packages/win32
