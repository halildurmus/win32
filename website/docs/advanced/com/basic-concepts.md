---
title: Basic Concepts
---

Since [`package:win32`][package:win32] primarily focuses on providing a
**lightweight wrapper** over the underlying Windows API, you can use the same
COM APIs described in Microsoft documentation to create and manipulate objects
(e.g., [`CoCreateInstance()`][CoCreateInstance] and
[`IUnknown::QueryInterface()`][QueryInterface]).

However, a direct C-style approach introduces significant **boilerplate** and
**manual lifetime management**, which is both error-prone and non-idiomatic in
Dart.

To address this, the library provides a more ergonomic approach using
**scope-based lifetime management with `Arena`**. This eliminates most manual
cleanup, and is the **recommended** way to work with COM APIs.

## Initializing the COM Library

Before calling any COM APIs, you must initialize the COM library by calling
[`CoInitializeEx()`][CoInitializeEx]. Threading models are outside the scope of
this guide, but a typical initialization looks like this:

```dart
CoInitializeEx(COINIT_MULTITHREADED);
```

You usually do this **once** near program startup. The examples below assume COM
has already been initialized.

## The Scoped Ownership Model (Recommended)

The library uses an **arena-based lifetime model** built on `using()` and
`Arena`.

An `Arena` acts as a **native lifetime boundary:**

- Memory allocated in the arena is freed together
- COM interfaces have [`IUnknown.release()`][IUnknown.release] called exactly
  once
- Native strings are destroyed using their correct deallocator

Any resource created or adopted through arena helpers is **owned by the arena**
and is automatically released when the arena is disposed.

This eliminates the need for manual cleanup and makes ownership explicit at the
API boundary.

```dart
using((arena) {
  final shell = arena.com<IShellItem>(ShellItem);
  final path  = arena.pcwstr(r'C:\Windows');
  // Native resources are safe to use within this scope.
});
// All associated native resources are released here.
```

If an object is created or adopted through these helpers, its lifetime is
**exactly equal to the lifetime of the arena** and must not be managed manually.

## Creating COM Objects

### Low-level (C-style)

You can create COM objects using `CoCreateInstance()`:

```dart
using((arena) {
 final rclsid = FileOpenDialog.toNative(allocator: arena);
 final fileDialog = CoCreateInstance<IFileDialog>(rclsid, null, CLSCTX_ALL);
});
```

This approach requires you to:

- Allocate the native `GUID` manually
- Track and release the COM object yourself

It is correct, but unnecessarily verbose.

### Recommended: [`ArenaExtension.com()`][ArenaExtension.com]

Instead, use the arena helper:

```dart
using((arena) {
  final fileDialog = arena.com<IFileDialog>(FileOpenDialog);
  fileDialog.setTitle(arena.pcwstr('Select a file'));
});
```

`ArenaExtension.com()`:

- Calls `CoCreateInstance()`
- Transfers ownership of the initial reference to the arena
- Ensures `release()` is called exactly once when the arena is disposed

The returned interface is safe to use for the duration of the arena scope and
**must not** be manually released.

## Requesting an Interface from a COM Object

COM objects can implement multiple interfaces, but you cannot simply cast an
object to a different interface. Instead, you must request a pointer to a
specific interface using [`IUnknown.queryInterface()`][IUnknown.queryInterface].

Every COM interface in `package:win32` derives from `IUnknown`, so you can call
`queryInterface()` on any object:

```dart
final modalWindow = fileDialog.queryInterface<IModalWindow>();
```

Alternatively, you can use the `from()` constructor, which wraps
`queryInterface()`:

```dart
final modalWindow = IModalWindow.from(fileDialog);
```

Attempting to cast a COM object to an unsupported interface throws a
`WindowsException` with an `hr` of `E_NOINTERFACE`.

### Recommended: [`ArenaExtension.adopt()`][ArenaExtension.adopt]

When you query a secondary interface, COM returns a **new reference**. That
reference must be released separately.

If you are using the arena model, you should adopt the new interface into the
same arena:

```dart
using((arena) {
  final dialog  = arena.com<IFileOpenDialog>(FileOpenDialog);
  // highlight-next-line
  final dialog2 = arena.adopt(dialog.queryInterface<IFileDialog2>());
  // Both interfaces are now owned by the arena.
});
```

`ArenaExtension.adopt()`:

- Transfers ownership of an already-created COM interface to the arena
- Ensures `release()` is called exactly once when the arena is disposed

After adoption, the object **must not** be manually released.

## Releasing COM Objects

### Manual Release (Low-level)

At the COM level, releasing an object is done by calling `release()`:

```dart
fileDialog.release();
```

This is necessary to prevent **memory leaks** and ensure the object's memory is
properly released.

:::tip

If you manage COM lifetimes manually, you must do this in a `try` / `finally`
block to guarantee cleanup even when exceptions are thrown.

:::

### Recommended: Let the Arena Manage Lifetime

When you use `ArenaExtension.com()` or `ArenaExtension.adopt()`, you
**must not** call `release()` yourself.

```dart
using((arena) {
  final dialog = arena.com<IFileOpenDialog>(FileOpenDialog);
  // The arena will call release on `dialog` when this block exits.
});
```

This model guarantees:

- Exactly-once `release()` call
- No leaks
- No double-free errors
- No forgotten cleanup on exceptional paths

Letting COM interfaces escape the arena scope is a logic error and will
inevitably lead to **use-after-free** bugs.

[package:win32]: https://pub.dev/packages/win32
[CoCreateInstance]: https://learn.microsoft.com/windows/win32/api/combaseapi/nf-combaseapi-cocreateinstance
[QueryInterface]: https://learn.microsoft.com/windows/win32/api/unknwn/nf-unknwn-iunknown-queryinterface(refiid_void)
[using]: https://pub.dev/documentation/ffi/latest/ffi/using.html
[Arena]: https://pub.dev/documentation/ffi/latest/ffi/Arena-class.html
[CoInitializeEx]: https://learn.microsoft.com/windows/win32/api/combaseapi/nf-combaseapi-coinitializeex
[IUnknown.release]: https://pub.dev/documentation/win32/latest/win32/IUnknown/release.html
[ArenaExtension.com]: https://pub.dev/documentation/win32/latest/win32/ArenaExtension/com.html
[IUnknown.queryInterface]: https://pub.dev/documentation/win32/latest/win32/IUnknown/queryInterface.html
[ArenaExtension.adopt]: https://pub.dev/documentation/win32/latest/win32/ArenaExtension/adopt.html
