[![ci][ci_badge]][ci_link]
[![codecov][codecov_badge_link]][codecov_link]
[![Package: win32_clipboard][package_badge]][package_link]
[![Publisher: halildurmus.dev][publisher_badge]][publisher_link]
[![Language: Dart][language_badge]][language_link]
[![License: BSD-3-Clause][license_badge]][license_link]

**A modern, type-safe Dart API for accessing and managing the
Windows Clipboard.**

This package builds on top of the [package:win32] and provides a high-level
abstraction over native clipboard APIs. It eliminates the need to work directly
with FFI, raw pointers, or low-level Win32 calls while preserving performance
and correctness.

## ✨ Features

- **Text Operations**: Read and write Unicode text to the clipboard.
- **File List Operations**: Read and write lists of file paths to the clipboard.
- **Format Inspection**: Check which formats are currently available on the
  clipboard.
- **Custom Formats**: Register and use custom clipboard formats with typed data.
- **Change Monitoring**: Subscribe to a stream of clipboard change notifications
  via `ClipboardChangeMonitor` class.
- **Clear Clipboard**: Clear all clipboard contents in one call.

## 🚀 Getting Started

Add the package to your `pubspec.yaml`:

```yaml
dependencies:
  win32_clipboard: ^2.0.0
```

Then import it:

```dart
import 'package:win32_clipboard/win32_clipboard.dart';
```

## ⚡ Quick Example

### Reading and writing text

```dart
// Write text to the clipboard.
Clipboard.setText('Hello, clipboard!');

// Read it back.
final text = Clipboard.getText();
print(text); // Hello, clipboard!
```

### Reading and writing a file list

```dart
// Write a list of file paths.
Clipboard.setFileList([
  r'C:\Users\user\Documents\report.pdf',
  r'C:\Users\user\Pictures\photo.png',
]);

// Read it back.
final files = Clipboard.getFileList();
print(files); // [C:\Users\user\Documents\report.pdf, ...]
```

### Monitoring clipboard changes

`ClipboardChangeMonitor` runs a native change-notification loop in a dedicated
isolate and surfaces updates as a broadcast stream, so it never blocks your
main isolate or event loop.

```dart
final monitor = ClipboardChangeMonitor();
await monitor.start();

// Fires whenever any clipboard content changes.
monitor.events.listen((_) => print('Clipboard changed'));

// Convenience streams that only emit when the relevant format is present.
monitor.onTextChanged.listen((text) => print('New text: $text'));
monitor.onFileListChanged.listen((files) => print('New files: $files'));

// Always close the monitor when you're done to release native resources.
await monitor.close();
```

### Registering and using a custom format

```dart
final format = Clipboard.registerFormat('com.example.MyFormat');

final ptr = calloc<Uint8>()..value = 42;
Clipboard.setData(ClipboardData.pointer(ptr, 1, format));
calloc.free(ptr);

// Check whether your format is available.
if (Clipboard.hasFormat(format)) {
  final data = Clipboard.getData(format);
  // ...
}
```

## 📝 Documentation

Full API reference is available here:

👉 [API Reference][api_reference_link].

Additional usage examples are located in the [example] directory.

## 🐞 Features and Bugs

If you encounter bugs or need additional functionality, please
[file an issue][issue_tracker_link].

[api_reference_link]: https://pub.dev/documentation/win32_clipboard/latest/
[ci_badge]: https://github.com/halildurmus/win32/actions/workflows/win32_clipboard.yml/badge.svg
[ci_link]: https://github.com/halildurmus/win32/actions/workflows/win32_clipboard.yml
[codecov_badge_link]: https://codecov.io/gh/halildurmus/win32/branch/main/graph/badge.svg?token=AM792MK0UT
[codecov_link]: https://codecov.io/gh/halildurmus/win32
[issue_tracker_link]: https://github.com/halildurmus/win32/issues
[language_badge]: https://img.shields.io/badge/language-Dart-blue.svg
[language_link]: https://dart.dev
[license_badge]: https://img.shields.io/github/license/halildurmus/win32
[license_link]: https://opensource.org/licenses/BSD-3-Clause
[package_badge]: https://img.shields.io/pub/v/win32_clipboard.svg
[package_link]: https://pub.dev/packages/win32_clipboard
[publisher_badge]: https://img.shields.io/pub/publisher/win32_clipboard.svg
[publisher_link]: https://pub.dev/publishers/halildurmus.dev
[package:win32]: https://pub.dev/packages/win32
