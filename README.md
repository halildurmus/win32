[![ci][ci_badge]][ci_link]
[![Package: filepicker_windows][package_badge]][package_link]
[![Publisher: halildurmus.dev][publisher_badge]][publisher_link]
[![Language: Dart][language_badge]][language_link]
[![License: BSD-3-Clause][license_badge]][license_link]

A package that provides a friendly Dart API for file and directory selection for
Windows using common dialog controls.

This package builds on top of the Dart [win32] package, offering a high-level
Dart wrapper that avoids the need for users to understand FFI or write directly
to the Win32 API.

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

Additional examples can be located within the [example] directory.

For a more advanced demonstration, you can explore a Flutter application in the
`example\wallpaper\` directory. This application illustrates how to select an
image file and set it as your desktop wallpaper.

## Feature requests and bugs

Please file feature requests and bugs at the
[issue tracker][issue_tracker_link].

[ci_badge]: https://github.com/halildurmus/filepicker_windows/actions/workflows/build.yml/badge.svg
[ci_link]: https://github.com/halildurmus/filepicker_windows/actions/workflows/build.yml
[example]: https://github.com/halildurmus/filepicker_windows/tree/main/example
[issue_tracker_link]: https://github.com/halildurmus/filepicker_windows/issues
[language_badge]: https://img.shields.io/badge/language-Dart-blue.svg
[language_link]: https://dart.dev
[license_badge]: https://img.shields.io/github/license/halildurmus/filepicker_windows?color=blue
[license_link]: https://opensource.org/licenses/BSD-3-Clause
[package_badge]: https://img.shields.io/pub/v/filepicker_windows.svg
[package_link]: https://pub.dev/packages/filepicker_windows
[publisher_badge]: https://img.shields.io/pub/publisher/filepicker_windows.svg
[publisher_link]: https://pub.dev/publishers/halildurmus.dev
[win32]: https://pub.dev/packages/win32
