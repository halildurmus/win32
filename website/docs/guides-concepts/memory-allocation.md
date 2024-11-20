---
title: Memory Allocation
---

Dart is a **garbage-collected** language. When you create objects (e.g.,
allocating a string to a variable or instantiating a class), Dart is responsible
for **allocating** memory for them and ensuring that the memory used is
**freed** when those objects are no longer in use.

However, when working with libraries through **FFI**, only primitive values
(such as integers) can be passed directly to the native code being called. For
other types, such as **strings** and **data structures**, you must **manage**
memory allocation from the **heap** and ensure it is **freed** when no longer
needed.

## Allocating Memory with Dart

Allocating a block of memory for use with Windows in Dart can be easily achieved
using the [`calloc()`][calloc] function from the `package:ffi`. This function
calls the underlying Windows API to **allocate** and **zero out** memory from
the heap.

Here's a simple example:

```dart
final pBuffer = loggingCalloc<Uint8>(256);
```

This snippet allocates **256 bytes** and returns a `Pointer<Uint8>` object,
which can be used to manage the memory. You can access the allocated memory
using `pBuffer` with an indexed array operator.

For instance, to fill the allocated memory with a repeated range of `[0..7]`,
you can do the following:

```dart
for (var i = 0; i < 256; i++) {
  pBuffer[i] = i % 8;
}
```

This code will fill the allocated memory with the sequence
`[0, 1, 2, 3, 4, 5, 6, 7]` repeated throughout the block.

:::danger

Be careful to only **access memory** that you have **allocated**. Reading or
writing to **unallocated memory** can result in **non-deterministic behavior**,
which may include **immediate crashes** of your application or even
**data corruption**.

:::

## Freeing Memory

When you have completed the operation for which the allocated memory was needed,
you should **release** it so that it can be reused. The `dart:ffi` library
provides a [`calloc.free()`][calloc.free] method. However, for convenience, the
**win32** provides a simple [`free()`][free] global function, which you can use
as follows:

```dart
free(pBuffer);
```

:::info

When your Dart program _exits_, Windows will automatically free all allocated
**memory** that hasn't previously been released, but you shouldn't depend on
that.

In the absence of any other **garbage collection** for **native memory**,
long-running applications that don't release _manually-allocated_ memory will
gradually exhaust the available **heap space** (this is known as "**leaking**"
memory).

:::

## Allocating Strings

Win32 APIs, as projected by Dart, typically assume a
**16-bit Unicode encoding**, where each character is represented by **2 bytes**.
The `dart:ffi` library provides a convenient method
[`.toNativeUtf16()`][toNativeUtf16] that copies a Dart string to
**native memory**, returning a `Pointer<Utf16>` object that can be passed to
Win32 APIs.

Here's an example:

```dart
import 'dart:ffi';

import 'package:ffi/ffi.dart';
import 'package:win32/win32.dart';

void main() {
  // highlight-start
  final verb = 'open'.toNativeUtf16();
  final process = 'notepad.exe'.toNativeUtf16();
  // highlight-end
  ShellExecute(0, verb, process, nullptr, nullptr, SW_SHOW);

  // Do something...

  free(verb);
  free(process);
}

```

In this example, `verb` and `process` are of type `Pointer<Utf16>`, representing
pointers to native memory. The allocated memory includes **2 bytes for each
character** in the Dart string, plus a final **null-terminating character**
(`\x00`).

:::note

Behind the scenes, the `.toNativeUtf16()` method **allocates** memory using the
same underlying functions as the `calloc()` method above, so you are still
responsible for **freeing** its memory.

:::

If you need to create a new string, **win32** provides a straightforward
function [`wsalloc`][wsalloc] to **allocate** the necessary storage. This is
especially useful when you need to _receive_ a string from Windows.

The following example calls the [`SHGetFolderPath`][SHGetFolderPath] API to
retrieve the directory of the **Desktop** folder:

```dart title="desktop.dart"
import 'package:ffi/ffi.dart';
import 'package:win32/win32.dart';

void main() {
  // highlight-next-line
  final path = wsalloc(MAX_PATH);

  try {
    final result = SHGetFolderPath(NULL, CSIDL_DESKTOP, NULL, 0, path);
    if (SUCCEEDED(result)) {
      print('The Windows desktop folder is at ${path.toDartString()}');
    } else {
      print('Failed to get the desktop folder path.');
    }
  } finally {
    free(path);
  }
}
```

In the example above, the returned value is converted back to a Dart string
using the [`.toDartString()`][toDartString] extension method on
`Pointer<Utf16>`.

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

> For a more detailed demonstration of calling various shell APIs to retrieve
known folder locations, see the [`knownfolder.dart`][knownfolder.dart] example.

[calloc]: https://pub.dev/documentation/ffi/latest/ffi/calloc-constant.html
[calloc.free]: https://api.dart.dev/stable/dart-ffi/Allocator/free.html
[free]: https://pub.dev/documentation/win32/latest/win32/free.html
[knownfolder.dart]: https://github.com/halildurmus/win32/blob/main/examples/knownfolder.dart
[SHGetFolderPath]: https://learn.microsoft.com/windows/win32/api/shlobj_core/nf-shlobj_core-shgetfolderpathw
[toDartString]: https://pub.dev/documentation/ffi/latest/ffi/Utf16Pointer/toDartString.html
[toNativeUtf16]: https://pub.dev/documentation/ffi/latest/ffi/StringUtf16Pointer/toNativeUtf16.html
[wsalloc]: https://pub.dev/documentation/win32/latest/win32/wsalloc.html
