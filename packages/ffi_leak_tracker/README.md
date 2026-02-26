[![ci][ci_badge]][ci_link]
[![codecov][codecov_badge_link]][codecov_link]
[![Package: ffi_leak_tracker][package_badge]][package_link]
[![Publisher: halildurmus.dev][publisher_badge]][publisher_link]
[![Language: Dart][language_badge]][language_link]
[![License: BSD-3-Clause][license_badge]][license_link]

**Allocation tracking and leak detection for Dart FFI code.**

## 🎯 Overview

`package:ffi_leak_tracker` helps you find and diagnose native memory leaks in
Dart FFI code by tracking allocations made through its custom allocators.

When tracking is enabled, every allocation is recorded with its size, type,
call stack, and timestamp. You can then assert that all memory has been freed,
inspect live allocations programmatically, or emit diagnostic reports — making
it easy to catch leaks in tests or narrow down where they originate in
production.

The package is designed to have no impact on release performance. The adaptive
allocators (`adaptiveCalloc()`, `adaptiveMalloc()`) compile away to standard
`calloc()` and `malloc()` in release builds, so you can leave them in place
unconditionally.

The diagnostic allocators (`diagnosticCalloc()`, `diagnosticMalloc()`) are
available for cases where tracking must remain active regardless of build mode.

Tracking can be enabled globally or scoped to a zone, so you can isolate
specific tests or benchmarks without affecting the rest of your application.

## ⚡ Quick Example

```dart
import 'dart:ffi';

import 'package:ffi_leak_tracker/ffi_leak_tracker.dart';

void main() {
  // Enable tracking only in debug/profile builds.
  LeakTracker.enableInDebug();

  print('Allocating memory without freeing it...');
  final ptr = adaptiveCalloc<Int32>();

  // Fix the leak by uncommenting:
  // adaptiveCalloc.free(ptr);

  print('Verifying for leaks...');

  // In debug builds this throws if any allocations remain.
  LeakTracker.verifyNoLeaksInDebug();

  print('No leaks detected.');
}
```

## 📝 Documentation

Full documentation is available at
[win32.pub/docs/advanced/leak-tracking][leak-tracking].

## 🐞 Features and Bugs

If you encounter bugs or need additional functionality, please
[file an issue](https://github.com/halildurmus/win32/issues).

[ci_badge]: https://img.shields.io/github/actions/workflow/status/halildurmus/win32/ffi_leak_tracker.yml
[ci_link]: https://github.com/halildurmus/win32/actions/workflows/ffi_leak_tracker.yml
[codecov_badge_link]: https://codecov.io/gh/halildurmus/win32/graph/badge.svg?token=RVL4TNLEJA&flags=ffi_leak_tracker
[codecov_link]: https://codecov.io/gh/halildurmus/win32
[language_badge]: https://img.shields.io/badge/language-Dart-blue.svg
[language_link]: https://dart.dev
[license_badge]: https://img.shields.io/github/license/halildurmus/win32
[license_link]: https://opensource.org/licenses/BSD-3-Clause
[package_badge]: https://img.shields.io/pub/v/ffi_leak_tracker.svg
[package_link]: https://pub.dev/packages/ffi_leak_tracker
[publisher_badge]: https://img.shields.io/pub/publisher/ffi_leak_tracker.svg
[publisher_link]: https://pub.dev/publishers/halildurmus.dev
[leak-tracking]: https://win32.pub/docs/advanced/leak-tracking
