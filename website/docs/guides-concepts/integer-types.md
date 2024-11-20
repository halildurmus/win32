---
title: Integer Types
---

Unlike Dart, which has a single integer type for storing values between
**-2<sup>63</sup>-1** and **2<sup>63</sup>**, the Win32 API utilizes various
integer types in both **signed** and **unsigned** forms.

The following table lists the common integer types encountered when working with
Win32 APIs:

| Common Win32 Names                            | `dart:ffi` Type | Size       | Signed |                               Range |
| --------------------------------------------- | :-------------: | :--------: | :----: | ----------------------------------: |
| `BYTE`, `UINT8`, `CHAR`                       | `Uint8`         | 8 bits     | No     |                            0 to 255 |
| `INT8`                                        | `Int8`          | 8 bits     | Yes    |                         -127 to 128 |
| `WORD`, `ATOM`, `UINT16`, `USHORT`            | `Uint16`        | 16 bits    | No     |                          0 to 65535 |
| `INT16`, `SHORT`                              | `Int16`         | 16 bits    | Yes    |                     -32767 to 32768 |
| `DWORD`, `UINT`, `UINT32`, `ULONG`            | `Uint32`        | 32 bits    | No     |                 0 to 2<sup>32</sup> |
| `INT`, `INT32`, `LONG`                        | `Int32`         | 32 bits    | Yes    | -2<sup>31</sup>-1 to 2<sup>31</sup> |
| `DWORDLONG`, `ULONGLONG`, `UINT64`, `ULONG64` | `Uint64`        | 64 bits    | No     |                 0 to 2<sup>64</sup> |
| `LONGLONG`, `INT64`                           | `Int64`         | 64 bits    | Yes    | -2<sup>63</sup>-1 to 2<sup>63</sup> |
| `HANDLE`, `LONG_PTR`, `UINT_PTR`, `ULONG_PTR` | `IntPtr`        | 32/64 bits | No     |              Matches pointer length |

When calling a function and passing a value, you don't need to worry about
converting from a Dart `int` type to the appropriate native representation:
**win32** includes all the metadata to handle this conversion for you.

:::note

However, understanding the type of data becomes crucial when a function
_returns_ a value. In Win32, functions often use a [`Pointer`][Pointer] argument
that they fill with the relevant data, making it important to know the expected
data type.

:::

> **win32** provides [`typedefs`][typedefs] for all common Win32 integer types,
so you don't need to remember the size and sign of types like `DWORD`.

Here’s an example demonstrating how to retrieve the size of system memory using
**win32**:

```dart title="memory.dart"
import 'dart:ffi';

import 'package:win32/win32.dart';

void main() {
  final lpMemorySize = loggingCalloc<ULONGLONG>();
  GetPhysicallyInstalledSystemMemory(lpMemorySize);
  final memorySizeMB = lpMemorySize.value ~/ 1024;
  print('System has ${memorySizeMB}MB of RAM installed.');
  free(lpMemorySize);
}
```

:::simple

`lpMemorySize` could also be allocated as `loggingCalloc<ULONG64>()` or
`loggingCalloc<Uint64>()` — they all refer to the _same_ type.

:::

> For a more detailed demonstration of retrieving system information, see the
[`sysinfo.dart`][sysinfo.dart] example.

[Pointer]: https://api.dart.dev/stable/dart-ffi/Pointer-class.html
[sysinfo.dart]: https://github.com/halildurmus/win32/blob/main/examples/sysinfo.dart
[typedefs]: https://dart.dev/language/typedefs
