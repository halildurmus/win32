---
title: Quick Start
---

## 🧩 Calling Native Libraries with FFI

The **Windows API** was originally written with **C** developers in mind. As a
result, many of the conventions are designed around the characteristics and
capabilities of the C runtime. Fortunately, the wide popularity of C means that
many languages, including Dart, have good support for calling C code and
handling C coding conventions.

In Dart, the primary means for calling C code is through **FFI**
(Foreign Function Interface). Dart provides both a library,
[`dart:ffi`][dart:ffi], and a package, [`package:ffi`][package:ffi], which
together offer useful **low-level** functions and helpers.

To add **ffi** and **win32** packages to your project, use the appropriate
command below based on your project type (**Flutter** or **Dart-only**):

<InstallPackagesCommand args="ffi win32" />

To utilize **FFI** features, you typically import both the library and the
package, along with the **win32** package, as follows:

```dart
import 'dart:ffi';

import 'package:ffi/ffi.dart';
import 'package:win32/win32.dart';
```

## 🚀 Calling Your First Win32 API

Here's a simple example of how to call the [`Beep`][Beep] function to play an
A<sub>4</sub> note for ½ second:

```dart title="beep.dart"
import 'package:win32/win32.dart';

void main() {
  Beep(440 /* Hz */, 500 /* ms */);
}
```

## 📚 Next Steps

🔍 Explore [real-life examples](/examples) built using **win32** to see what you
can achieve.

📦 Discover [packages](/packages) built on top of **win32** to find the ones
that best suit your needs.

📘 Dive into the [Functions] guide to deepen your understanding of Win32
functions.

[Beep]: https://learn.microsoft.com/windows/win32/api/utilapiset/nf-utilapiset-beep
[dart:ffi]: https://api.dart.dev/stable/dart-ffi/dart-ffi-library.html
[Functions]: /docs/guides-concepts/functions
[package:ffi]: https://pub.dev/packages/ffi
