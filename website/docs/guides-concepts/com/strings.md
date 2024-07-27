---
title: Strings
---

Most COM interfaces use regular C strings, which are allocated and managed using
the techniques described in
[Allocating strings](../memory-allocation#allocating-strings).

However, some COM APIs use the [`BSTR`][BSTR] type, particularly those that
support late binding (often known as `IDispatch`) interfaces.

`BSTR` types differ from `Pointer<Utf16>` in that they include a
**4-byte prefix** stored immediately prior to the string itself, representing
its length in bytes. The pointer points to the **first character** of the data
string, not to the length prefix.

:::warning

`BSTR`s should never be created using Dart's memory allocation functions.

For example, the following code is **incorrect** because it does not
**allocate** and **store** the **length prefix**.

```dart
final bstr = 'I am a happy BSTR'.toNativeUtf16();
```

:::

## Creating `BSTR` Objects

**win32** package offers a **wrapper** for the COM memory allocation functions,
ensuring that `BSTR` types can be created correctly. Instead of using Dart's
memory allocation directly, you should use the wrapper provided:

```dart
final bstr = BSTR.fromString('I am a happy BSTR');
```

When examined by a debugger, the **4-bytes** prior to this location will contain
a 32-bit integer with the value **34**, representing the **length** of the
string encoded in **UTF-16** (two bytes per character):

```dart
  final bstr = BSTR.fromString('I am a happy BSTR');
  final len = bstr.ptr.cast<Uint32>()[-1];
  print('Length of bstr: $len');
  bstr.free();
```

As demonstrated above, you can access the pointer for a `BSTR` using its `.ptr`
property.

## Freeing `BSTR` Objects

As with other manually allocated memory, Dart does not garbage collect `BSTR`
objects; therefore, you are responsible for freeing the memory allocated for a
`BSTR` when it is no longer needed.

:::warning

Do not use the global `free()` function to release `BSTR` memory, as it will
**not free** the length prefix. Instead, use either the `.free()` method on the
`BSTR` object itself, or the Windows API [`SysFreeString`][SysFreeString]:

```dart
free(bstr);              // BAD!!! This will leak memory

bstr.free();             // OK
SysFreeString(bstr.ptr); // Also OK
```

:::

[BSTR]: https://learn.microsoft.com/previous-versions/windows/desktop/automat/bstr
[SysFreeString]: https://learn.microsoft.com/windows/win32/api/oleauto/nf-oleauto-sysfreestring
