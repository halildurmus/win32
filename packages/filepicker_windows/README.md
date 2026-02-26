[![ci][ci_badge]][ci_link]
[![Package: filepicker_windows][package_badge]][package_link]
[![Publisher: halildurmus.dev][publisher_badge]][publisher_link]
[![Language: Dart][language_badge]][language_link]
[![License: BSD-3-Clause][license_badge]][license_link]

**File and directory picker for Windows that uses common dialog controls.**

This package builds on top of the [package:win32][win32_pub_dev_link] and
provides a high-level abstraction over native registry APIs. It eliminates the
need to work directly with FFI, raw pointers, or low-level Win32 calls while
preserving performance and correctness.

## ✨ Features

- 📂 Open a single file or multiple files simultaneously
- 💾 Save a file
- 📁 Select a directory
- 🔍 Filter by file type with friendly display names
- 📌 Add custom places to the dialog's navigation pane
- 🪟 Pin to the correct window — always opens as a modal in front of your app

## 🚀 Getting Started

Add the package to your `pubspec.yaml`:

```yaml
dependencies:
  filepicker_windows: ^3.0.0
```

Then import it:

```dart
import 'package:filepicker_windows/filepicker_windows.dart';
```

## ⚡ Quick Example

Show a file open dialog:

```dart
import 'package:filepicker_windows/filepicker_windows.dart';

void main() {
  final picker = OpenFilePicker()
    ..filterSpecification = {
      'Word Document (*.doc)': '*.doc',
      'Web Page (*.htm; *.html)': '*.htm;*.html',
      'Text Document (*.txt)': '*.txt',
      'All Files': '*.*',
    }
    ..defaultFilterIndex = 0
    ..defaultExtension = 'doc'
    ..title = 'Select a document';

  final file = picker.getFile();
  if (file != null) {
    print('Selected file: ${file.path}');
  } else {
    print('No file selected.');
  }
}
```

More examples — including multi-file selection, save dialogs, directory
picking, and custom places — are available in the [example] directory.

For a more advanced demonstration, see `example/wallpaper/`, a Flutter app
that uses the picker to select an image and set it as the desktop wallpaper.

## 📝 Documentation

Full API reference is available here:

👉 [API Reference][api_reference_link].

Additional usage examples are located in the [example] directory.

## 🐞 Features and Bugs

If you encounter bugs or need additional functionality, please
[file an issue][issue_tracker_link].

[api_reference_link]: https://pub.dev/documentation/filepicker_windows/latest/
[ci_badge]: https://github.com/halildurmus/filepicker_windows/actions/workflows/filepicker_windows.yml/badge.svg
[ci_link]: https://github.com/halildurmus/filepicker_windows/actions/workflows/filepicker_windows.yml
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
[win32_pub_dev_link]: https://pub.dev/packages/win32
