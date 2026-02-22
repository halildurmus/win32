---
title: Strings
---

Win32 APIs make heavy use of **strings** for parameters and return values.

Unlike normal Dart strings, native strings live in **native memory** and follow
**explicit ownership rules**.

Win32 uses multiple string formats:

* **UTF-16** (`WCHAR*`, `LPWSTR`, `PCWSTR`, `PWSTR`) — modern Win32 APIs
* **ANSI** (`CHAR*`, `LPSTR`, `PCSTR`, `PSTR`) — legacy APIs
  (code-page–dependent; often UTF-8 in practice, but not guaranteed)
* **BSTR** — COM automation
* **HSTRING** — WinRT

Modern Win32 APIs almost always use UTF-16 (`PCWSTR` or `PWSTR`).

## Dart Strings to Native Strings

[`package:win32`][package:win32] provides APIs for converting Dart strings into
native representations.

Choose the representation based on the **API signature**, then choose the
allocation style based on **lifetime requirements**.

| Type      | Conversion Method                                                                                                 |
| --------- | ----------------------------------------------------------------------------------------------------------------- |
| `PCWSTR`  | [`StringExtension.toPcwstr()`][StringExtension.toPcwstr] / [`ArenaExtension.pcwstr()`][ArenaExtension.pcwstr]     |
| `PWSTR`   | [`StringExtension.toPwstr()`][StringExtension.toPwstr] / [`ArenaExtension.pwstr()`][ArenaExtension.pwstr]         |
| `PCSTR`   | [`StringExtension.toPcstr()`][StringExtension.toPcstr] / [`ArenaExtension.pcstr()`][ArenaExtension.pcstr]         |
| `PSTR`    | [`StringExtension.toPstr()`][StringExtension.toPstr] / [`ArenaExtension.pstr()`][ArenaExtension.pstr]             |
| `BSTR`    | [`StringExtension.toBstr()`][StringExtension.toBstr] / [`ArenaExtension.bstr()`][ArenaExtension.bstr]             |
| `HSTRING` | [`StringExtension.toHstring()`][StringExtension.toHstring] / [`ArenaExtension.hstring()`][ArenaExtension.hstring] |

All of these methods allocate native memory and return lightweight
**wrapper types** around the underlying pointer or handle.

**Allocation strategies**:

* **Arena-based allocation** ties the string's lifetime to a lexical scope and
  releases it automatically when the arena is disposed.
* **Manual allocation** returns a string whose lifetime you must manage
  explicitly using the appropriate deallocation API.

If you use the [`StringExtension`][StringExtension] methods, you are responsible
for freeing the allocated memory:

* `PCWSTR` / `PWSTR` / `PCSTR` / `PSTR` -> [`free()`][free]
* `BSTR` -> [`SysFreeString()`][SysFreeString]
* `HSTRING` -> [`WindowsDeleteString()`][WindowsDeleteString]

:::tip

Prefer Scope-based Lifetime Management with [`Arena`][Arena] to allocate native
strings unless you have a compelling reason to manage their lifetime manually.

:::

### UTF-16 (PCWSTR / PWSTR)

```dart
using((arena) {
  final text = arena.pcwstr('MessageBox Demo');
  MessageBox(null, text, null, MB_OK);
});
```

This allocates a null-terminated UTF-16 string and returns a [`PCWSTR`][PCWSTR]
wrapper around `Pointer<Utf16>`.

### ANSI (PCSTR / PSTR)

```dart
using((arena) {
  final name = arena.pcstr('kernel32.dll');
  // Use with APIs that require PCSTR
});
```

This allocates a null-terminated string of 8-bit Windows (ANSI) characters and
returns a [`PCSTR`][PCSTR] wrapper around `Pointer<Utf8>`.

### COM Strings (BSTR)

```dart
using((arena) {
  final name = arena.bstr('Hello');
});
```

This allocates a COM `BSTR` string and returns a [`BSTR`][BSTR] wrapper around
`Pointer<Utf16>`.

### WinRT Strings (HSTRING)

```dart
using((arena) {
  final name = arena.hstring('Hello');
});
```

This creates an immutable, reference-counted `HSTRING` and returns a
[`HSTRING`][HSTRING] wrapper around `Pointer`.

To convert a `HSTRING` back to a Dart string, use the
[`HSTRING.toDartString()`][HSTRING.toDartString] method.

## Native Strings to Dart Strings

Many Win32 APIs write UTF-16 text into a caller-provided **buffer**.

When using an `Arena`, allocate a UTF-16 buffer with
[`ArenaExtension.pwstrBuffer()`][ArenaExtension.pwstrBuffer].

The following example calls the [`SHGetFolderPath()`][SHGetFolderPath] API to
retrieve the path of the **Desktop** folder:

```dart
String getDesktopFolderPath() {
  return using((arena) {
    // highlight-next-line
    final path = arena.pwstrBuffer(MAX_PATH);
    SHGetFolderPath(CSIDL_DESKTOP, null, 0, path);
    // highlight-next-line
    return path.toDartString();
  });
}
```

Alternatively, you can allocate the buffer using [`wsalloc()`][wsalloc]:

```dart
String getDesktopFolderPath() {
  // highlight-next-line
  final path = wsalloc(MAX_PATH);
  try {
    SHGetFolderPath(CSIDL_DESKTOP, null, 0, path);
    // highlight-next-line
    return path.toDartString();
  } finally {
    free(path);
  }
}
```

Unlike the previous example, here you must manually free the allocated memory
using `free()`.

The buffer is converted back to a Dart string using the
[`Utf16Pointer.toDartString()`][Utf16Pointer.toDartString] extension method.

<details>

<summary>Why doesn't calling `.toString()` on a `Pointer<Utf16>` work as
expected?</summary>

Since `path` is a `Pointer<Utf16>`, calling `.toString()` on it will simply
print the **address** of the pointer, like this:

```text
Pointer: address=0x1729cc18240
```

To convert the `Pointer<Utf16>` to a Dart string, you need to use the
`.toDartString()` extension method, as shown in the example above.

</details>

### Variable-Length Results

Some APIs require a **two-pass** pattern:

1. Call with a null or zero-length buffer to obtain the required size
2. Allocate a buffer of the reported size
3. Call again to retrieve the data

```dart
String getPathEnvironmentVariable() {
  return using((arena) {
    final name = arena.pcwstr('PATH');
    var Win32Result(value: length, :error) = GetEnvironmentVariable(
      name,
      null,
      0,
    );
    if (length == 0) throw WindowsException(error.toHRESULT());

    // highlight-next-line
    final buffer = arena.pwstrBuffer(length);
    Win32Result(value: length, :error) = GetEnvironmentVariable(
      name,
      buffer,
      length,
    );
    if (length == 0) throw WindowsException(error.toHRESULT());

    // highlight-next-line
    return buffer.toDartString();
  });
}
```

This pattern is common for APIs that return **variable-length** strings.

## `MULTI_SZ` Strings

Some Win32 APIs expect a double-NUL-terminated UTF-16 string block (`MULTI_SZ`).

Use [`StringListExtension.toPcwstr()`][StringListExtension.toPcwstr] or
[`StringListExtension.toPwstr()`][StringListExtension.toPwstr] to convert a Dart
`List<String>`:

```dart
const values = ['banana', 'strawberry', 'kiwi'];
using((arena) {
  final multiSz = values.toPcwstr(allocator: arena);
  // Pass to registry or shell APIs
});
```

The resulting memory layout:

* Each string terminated by a NUL
* A final extra NUL marking the end of the list

[package:win32]: https://pub.dev/packages/win32
[StringExtension.toPcwstr]: https://pub.dev/documentation/win32/latest/win32/StringExtension/toPcwstr.html
[StringExtension.toPwstr]: https://pub.dev/documentation/win32/latest/win32/StringExtension/toPwstr.html
[StringExtension.toPcstr]: https://pub.dev/documentation/win32/latest/win32/StringExtension/toPcstr.html
[StringExtension.toPstr]: https://pub.dev/documentation/win32/latest/win32/StringExtension/toPstr.html
[StringExtension.toBstr]: https://pub.dev/documentation/win32/latest/win32/StringExtension/toBstr.html
[StringExtension.toHstring]: https://pub.dev/documentation/win32/latest/win32/StringExtension/toHstring.html
[ArenaExtension.pcwstr]: https://pub.dev/documentation/win32/latest/win32/ArenaExtension/pcwstr.html
[ArenaExtension.pstr]: https://pub.dev/documentation/win32/latest/win32/ArenaExtension/pstr.html
[ArenaExtension.pcstr]: https://pub.dev/documentation/win32/latest/win32/ArenaExtension/pcstr.html
[ArenaExtension.pwstr]: https://pub.dev/documentation/win32/latest/win32/ArenaExtension/pwstr.html
[ArenaExtension.bstr]: https://pub.dev/documentation/win32/latest/win32/ArenaExtension/bstr.html
[ArenaExtension.hstring]: https://pub.dev/documentation/win32/latest/win32/ArenaExtension/hstring.html
[StringExtension]: https://pub.dev/documentation/win32/latest/win32/StringExtension.html
[free]: https://pub.dev/documentation/win32/latest/win32/free.html
[SysFreeString]: https://pub.dev/documentation/win32/latest/win32/SysFreeString.html
[WindowsDeleteString]: https://pub.dev/documentation/win32/latest/win32/WindowsDeleteString.html
[Arena]: https://pub.dev/documentation/win32/latest/win32/Arena-class.html
[PCWSTR]: https://pub.dev/documentation/win32/latest/win32/PCWSTR-extension-type.html
[PCSTR]: https://pub.dev/documentation/win32/latest/win32/PCSTR-extension-type.html
[BSTR]: https://pub.dev/documentation/win32/latest/win32/BSTR-extension-type.html
[HSTRING]: https://pub.dev/documentation/win32/latest/win32/HSTRING-extension-type.html
[HSTRING.toDartString]: https://pub.dev/documentation/win32/latest/win32/HSTRING/toDartString.html
[SHGetFolderPath]: learn.microsoft.com/windows/win32/api/shlobj_core/nf-shlobj_core-shgetfolderpathw
[ArenaExtension.pwstrBuffer]: https://pub.dev/documentation/win32/latest/win32/ArenaExtension/pwstrBuffer.html
[wsalloc]: https://pub.dev/documentation/win32/latest/win32/wsalloc.html
[Utf16Pointer.toDartString]: https://pub.dev/documentation/ffi/latest/ffi/Utf16Pointer/toDartString.html
[StringListExtension.toPcwstr]: https://pub.dev/documentation/win32/latest/win32/StringListExtension/toPcwstr.html
[StringListExtension.toPwstr]: https://pub.dev/documentation/win32/latest/win32/StringListExtension/toPwstr.html
