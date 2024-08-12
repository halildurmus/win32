---
title: Overview
slug: /
---

## 🎯 What is win32?

**win32** is a [Dart package] that wraps some of the most common [Win32 API] calls
using [FFI] to make them accessible to Dart code without needing a C compiler
or the Windows SDK.

The package simplifies the process of writing Dart code that can access
**Windows hardware** and **system services** by providing easy-to-use bindings
for traditional **Win32** and [COM (Component Object Model)][COM] API calls.

With **win32**, you can seamlessly integrate with **Windows-specific
functionalities** and leverage the full power of the underlying operating system.

## 💡 Why win32?

**win32** is incredibly versatile and can be useful in a variety of scenarios.

Here are a few examples:

- **Flutter Development on Windows**: If you're a Flutter developer creating an
  app for Windows, you might need to access hardware accessories like gamepads
  or retrieve settings from the Windows registry. **win32** makes this possible
  with ease.
- **Cross-Platform Package Development**: When writing a new cross-platform
  package, you can use **win32** for the Windows-specific implementation,
  ensuring your package works seamlessly on Windows.
- **Enhanced Command-Line Utilities**: If you're developing a command-line
  utility with Dart and require more advanced file APIs than what the `dart:io`
  library offers, **win32** provides the necessary functionality.
- **Integration with Existing Windows Libraries**: For apps that need to
  integrate with other Windows libraries that have published metadata, **win32**
  facilitates this integration smoothly.

> The main goal of **win32** is to provide Dart developers with direct access to
underlying Windows APIs, eliminating the need to map API conventions manually to
Dart. This simplifies the development process and enhances productivity.

## 🌟 Key Features

- **Direct Windows API Access**: Invoke Windows API functions directly from Dart
  without the need for a C compiler or additional setup.
- **COM Support**: Easily interact with COM libraries and components for
  advanced Windows functionalities.
- **Extensive API Coverage**: Access a broad range of Windows APIs, including
  system services, hardware, and registry.
- **Seamless Integration**: Effortlessly integrate with existing Windows
  libraries and services, enabling smooth interoperability.
- **Cross-Platform Development**: Develop cross-platform packages with specific
  implementations tailored for Windows environments.
- **Developer-Friendly**: Simplifies the complexity of Win32 API calls into
  easy-to-use Dart functions, enhancing developer productivity.

## 📚 Next Steps

📘 Dive into the [Quick Start](/docs/getting-started/quick-start) guide to learn
how to make your first **Win32 API** call.

[COM]: https://learn.microsoft.com/windows/win32/com/component-object-model--com--portal
[Dart package]: https://pub.dev/packages/win32
[FFI]: https://dart.dev/guides/libraries/c-interop
[Win32 API]: https://learn.microsoft.com/windows/win32/api/
