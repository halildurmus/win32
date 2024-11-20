---
title: Integer Types
---

Dart has a single, arbitrary-precision `int` type. In contrast, the Win32 API
uses many fixed-width integer types with explicit **size** and **signedness**.

When calling Win32 functions, [`package:win32`][package:win32] handles
marshaling Dart `int` values into the correct native representation for you.
However, when **receiving** values through pointers or struct fields, you must
allocate the correct native type or risk silent data corruption.

Understanding these native integer types is therefore essential when working
with output parameters, buffers, and structs.

## Common Win32 Integer Types

The following table lists the most common integer types encountered in the Win32
API and their `dart:ffi` equivalents:

| Common Win32 Names                            | `dart:ffi` Type |    Size    | Signed |                               Range |
| --------------------------------------------- | :-------------: | :--------: | :----: | ----------------------------------: |
| `BYTE`, `UINT8`, `CHAR`                       |     `Uint8`     |   8 bits   |   No   |                            0 to 255 |
| `INT8`                                        |      `Int8`     |   8 bits   |   Yes  |                         -128 to 127 |
| `WORD`, `ATOM`, `UINT16`, `USHORT`            |     `Uint16`    |   16 bits  |   No   |                          0 to 65535 |
| `INT16`, `SHORT`                              |     `Int16`     |   16 bits  |   Yes  |                     -32768 to 32767 |
| `DWORD`, `UINT`, `UINT32`, `ULONG`            |     `Uint32`    |   32 bits  |   No   |               0 to 2<sup>32</sup>-1 |
| `INT`, `INT32`, `LONG`                        |     `Int32`     |   32 bits  |   Yes  | -2<sup>31</sup> to 2<sup>31</sup>-1 |
| `DWORDLONG`, `ULONGLONG`, `UINT64`, `ULONG64` |     `Uint64`    |   64 bits  |   No   |               0 to 2<sup>64</sup>-1 |
| `LONGLONG`, `INT64`                           |     `Int64`     |   64 bits  |   Yes  | -2<sup>63</sup> to 2<sup>63</sup>-1 |
| `LONG_PTR`                                    |     `IntPtr`    | 32/64 bits |   Yes  |              Matches pointer length |
| `UINT_PTR`, `ULONG_PTR`                       |     `IntPtr`    | 32/64 bits |   No   |              Matches pointer length |
| `HANDLE`                                      |     `Pointer`   | 32/64 bits |   No   |    Opaque handle (not numeric data) |

## Typedefs in `package:win32`

`package:win32` provides Dart [`typedefs`][typedefs] for all common Win32
integer types, such as `DWORD`, `ULONG64`, and `ULONGLONG`.

You should prefer these typedefs over raw `dart:ffi` types when interacting with
Win32 APIs, as they match the native signatures exactly and improve readability.

## Output Parameters and Pointers

Many Win32 functions return values through **output parameters** such as
`LPDWORD`, `PULONG64`, or `LPINT`.

The FFI type you allocate determines how the native bytes are interpreted in
Dart. Using the wrong type will produce incorrect values.

For example, the
[`GetPhysicallyInstalledSystemMemory`][GetPhysicallyInstalledSystemMemory]
function fills a `PULONGLONG` output parameter:

```dart title="sysinfo.dart"
String getSystemMemorySize() {
  return using((arena) {
    // ULONGLONG matches the native PULONGLONG output parameter.
    // highlight-next-line
    final lpMemorySize = arena<ULONGLONG>();
    final Win32Result(:value, :error) = GetPhysicallyInstalledSystemMemory(
      lpMemorySize,
    );
    if (!value) throw WindowsException(error.toHRESULT());
    return lpMemorySize.value ~/ 1024;
  });
}
```

<CommonViewSourceCode href="https://github.com/halildurmus/win32/blob/main/examples/sysinfo.dart" />

[package:win32]: https://pub.dev/packages/win32
[typedefs]: https://dart.dev/language/typedefs
[GetPhysicallyInstalledSystemMemory]: https://learn.microsoft.com/windows/win32/api/sysinfoapi/nf-sysinfoapi-getphysicallyinstalledsystemmemory
