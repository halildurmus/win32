---
title: Functions
---

**win32** exposes the Win32 functions as **global** Dart functions, allowing you
to call them just like any other Dart function. To maintain consistency with the
C-based functions they wrap, these functions are named with **TitleCase** rather
than Dart’s **camelCase** convention.

## Detecting **Success** or **Failure** of a Function Call

Most Win32 functions use the **return value** to indicate successful execution,
with a **non-zero** value indicating _success_ and **zero** indicating
_failure_.

> **win32** provides [`SUCCEEDED()`][SUCCEEDED] and [`FAILED()`][FAILED]
functions as convenient ways to test the result.

Here’s an example:

```dart
final hr = CloseWindow(hWnd); // minimizes a window with the given handle.
// highlight-next-line
if (FAILED(hr)) {
  print('Window could not be minimized.');
}
```

[FAILED]: https://pub.dev/documentation/win32/latest/win32/FAILED.html
[SUCCEEDED]: https://pub.dev/documentation/win32/latest/win32/SUCCEEDED.html
