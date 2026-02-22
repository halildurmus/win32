---
title: Overview
slug: /
---

[`package:win32`][package:win32] provides Dart FFI bindings to a subset of
[Win32] and [COM (Component Object Model)][COM] APIs, giving you access to
native Windows functionality that falls outside the scope of `dart:io`, Flutter
plugins, and platform channels.

## 🧠 When to Use This Package

`package:win32` is the right tool when you need to go beyond what the Dart and
Flutter ecosystems provide out of the box. Common scenarios include:

- **Flutter apps on Windows** — Access system settings, hardware devices,
  registry data, native dialogs, and other OS-level features.
- **Cross-platform packages** — Implement a Windows-specific backend behind a
  shared platform interface.
- **CLI tools and background services** — Reach native file, process, registry,
  and security APIs from a command-line or headless context.

## 🎯 Design Philosophy

The package projects Win32 and COM APIs into Dart with three guiding goals:

- **Idiomatic Dart** — Projected APIs feel natural in Dart while preserving
  native behavior and ABI compatibility.
- **Safer defaults** — Common native patterns such as `HRESULT` error handling
  and out-parameter returns are wrapped to reduce boilerplate and common
  mistakes.
- **Explicit ownership** — Native pointers and COM objects still follow native
  lifetime rules. Allocation and cleanup remain your responsibility, by design.

## ✅ Prerequisites

o use this package effectively, you should be comfortable with:

- Dart FFI fundamentals (`dart:ffi`, pointers, and native types)
- Manual memory management and deterministic cleanup
- Reading Win32 and COM API documentation on [Microsoft Learn][Win32]

If any of these are new to you, the conceptual guides below cover each topic
before you encounter them in practice.

## 🚀 Where to Start

Begin with the [Quick Start](/docs/getting-started/quick-start) guide to make
your first Win32 API call from Dart. Then work through the conceptual docs in
order:

1. [Functions](/docs/core/functions)
2. [Memory Allocation](/docs/core/memory-allocation)
3. [Memory Management Patterns](/docs/core/memory-management-patterns)
4. [Integer Types](/docs/core/integer-types)
5. [Strings](/docs/core/strings)
6. [Structs](/docs/core/structs)

[package:win32]: https://pub.dev/packages/win32
[Win32]: https://learn.microsoft.com/windows/win32/api/
[COM]: https://learn.microsoft.com/windows/win32/com/component-object-model--com--portal
