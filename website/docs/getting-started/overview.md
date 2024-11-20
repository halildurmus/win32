---
title: Overview
slug: /
---

[`package:win32`][package:win32] exposes a curated surface of [Win32] and
[COM (Component Object Model)][COM] APIs through Dart FFI, enabling
functionality that is not available through `dart:io`, Flutter plugins, or
platform channels.

Typical use cases include:

- **Flutter apps on Windows**
  Access system settings, hardware devices, registry data, native dialogs, and
  other OS-level features unavailable through Dart or Flutter itself.
- **Platform-specific implementations**
  Write cross-platform packages with a Windows-specific backend.
- **Advanced tooling and utilities**
  Build command-line tools or background services that require native file,
  process, or security APIs.

## 📚 Next Steps

📘 Start with the [Quick Start](/docs/getting-started/quick-start) guide to make
your first Win32 API call from Dart.

From there, explore the conceptual guides to understand how Win32 and COM APIs
are projected into Dart and how to use them safely and effectively.

[package:win32]: https://pub.dev/packages/win32
[Win32]: https://learn.microsoft.com/windows/win32/api/
[COM]: https://learn.microsoft.com/windows/win32/com/component-object-model--com--portal
