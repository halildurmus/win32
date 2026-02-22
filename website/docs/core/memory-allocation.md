---
title: Memory Allocation
---

Dart is a **garbage-collected** language. When you create Dart objects — such as
strings or class instances — the Dart runtime is responsible for **allocating**
memory and **reclaiming** it when those objects are no longer **reachable**.

This model does **not** extend across the FFI boundary.

When calling Win32 APIs through **FFI**, you are responsible for the
**lifetime** of any native memory you allocate or receive from Windows.
Understanding who *owns* a block of memory — and when it must be released — is
essential for writing correct, leak-free interop code.

## When Native Memory Is Required

Only primitive values (such as integers) can be passed directly across the FFI
boundary. All other data — such as **strings**, **structs**, and **buffers**
— must reside in **native memory**.

As a result, FFI code typically follows this pattern:

* **Allocate** native memory explicitly
* **Pass** pointers to that memory into Win32 APIs
* **Release** the memory when it is no longer needed

Failing to release native memory will eventually **exhaust the native heap**
and destabilize your application.

## Allocating Native Memory

Native memory is typically allocated using the [`calloc()`][calloc] allocator
from [`package:ffi`][package:ffi].

[`package:win32`][package:win32] additionally provides allocators such as
[`adaptiveCalloc()`][adaptiveCalloc], which behave like `calloc()` but
also participate in optional [**leak tracking**][Leak Tracking].

```dart
void main() {
  // highlight-next-line
  final pBuffer = adaptiveCalloc<Uint8>(256);
}
```

This allocates **256 bytes** of *zero-initialized* memory and returns a
`Pointer<Uint8>`. The memory can be accessed using indexed syntax:

```dart
for (var i = 0; i < 256; i++) {
  // highlight-next-line
  pBuffer[i] = i % 8;
}
```

:::danger

Only **access memory** that you have explicitly **allocated**. Reading or
writing outside the bounds of an allocation can result in
**undefined behavior**, including **crashes** and **data corruption**.

:::

## Freeing Native Memory

Allocated native memory must be released explicitly when it is no longer needed.

[`dart:ffi`][dart:ffi] library exposes [`calloc.free()`][calloc.free], but
`package:win32` provides a top-level convenience function [`free()`][free]:

```dart
free(pBuffer);
```

:::note

When a Dart program *exits*, Windows will reclaim all remaining native memory.
Long-running applications must **not** rely on this behavior.

Native memory is **not** garbage-collected. Failing to free allocations results
in memory leaks that accumulate over time.

:::

## Ownership Rules

Every block of native memory has a single, well-defined owner.

> **If you allocate the memory, you must free it.**

In practice:

| Source of memory                                | Owner  | How to release |
| ----------------------------------------------- | ------ | -------------- |
| `calloc()`, `malloc()`, `adaptiveCalloc()` etc. | You    | `free(ptr)`    |
| Pointer returned by a Win32 API                 | Varies | API-specific   |

> Always consult the Windows API documentation to determine ownership of
> returned pointers and the correct way to release them.

[calloc]: https://pub.dev/documentation/ffi/latest/ffi/calloc-constant.html
[package:ffi]: https://pub.dev/packages/ffi
[package:win32]: https://pub.dev/packages/win32
[adaptiveCalloc]: https://pub.dev/documentation/win32/latest/win32/adaptiveCalloc-constant.html
[leak tracking]: /docs/advanced/leak-tracking
[calloc.free]: https://api.dart.dev/dart-ffi/Allocator/free.html
[dart:ffi]: https://api.dart.dev/dart-ffi/
[free]: https://pub.dev/documentation/win32/latest/win32/free.html
