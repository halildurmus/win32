---
title: Functions
---

[`package:win32`][package:win32] exposes Win32 APIs as
**global Dart functions**, projected into a safer and more idiomatic Dart
surface.

In most cases, you can call Win32 APIs as if they were normal Dart functions.

## Reserved and Optional Parameters

Some Win32 APIs include parameters that are not always meaningful to the caller.

These fall into two distinct categories.

### Reserved Parameters

*Reserved* parameters exist only for ABI or historical compatibility. They
must always be set to `0` or [`nullptr`][nullptr] and have no semantic meaning.

In `package:win32`, reserved parameters are **removed entirely** from the Dart
signature and supplied automatically behind the scenes.

```dart
// Native: CoInitializeEx(NULL, COINIT_MULTITHREADED)
CoInitializeEx(COINIT_MULTITHREADED);
```

You never see or pass reserved parameters in Dart.

### Optional Parameters

*Optional* parameters are semantically meaningful but not required for all
calls. They may accept real values (such as pointers or integers), but can also
be omitted.

In `package:win32`, optional parameters are projected as
**nullable Dart types**. Passing `null` maps to `0` or `nullptr` on the native
side.

This makes it explicit at the call site which parameters are optional, while
still allowing real values to be passed when needed.

## Win32 `BOOL` Becomes Dart `bool`

Win32 APIs that use the `BOOL` type are projected to Dart `bool`.

```dart
final success = MagShowSystemCursor(true);
if (!success) {
  // handle error
}
```

You never work with `TRUE`, `FALSE`, or integer return values — only Dart
`bool`.

## `HRESULT`-Based APIs

Most COM and system APIs return an [`HRESULT`][HRESULT]. In `package:win32`, you
almost never handle `HRESULT` values directly.

### Failures Throw

If a Win32 API reports failure via `HRESULT`, the Dart function throws a
[`WindowsException`][WindowsException].

```dart
CoGetApartmentType(pAptType, pAptQualifier); // throws on failure
```

You can still catch and handle failures explicitly:

```dart
try {
  CoGetApartmentType(pAptType, pAptQualifier);
} on WindowsException catch (e) {
  // handle error
  if (e.hr == CO_E_NOTINITIALIZED) {
    // specific handling
  }
}
```

### Output Values are Returned Directly

If a function logically produces a value via an *out* parameter, the Dart
projection returns that value directly.

```dart
final guid = CoCreateGuid(); // returns Pointer<GUID>
```

You do not pass output buffers or inspect `HRESULT`s manually.

:::note

Returned pointers and COM objects follow the same ownership rules as their
native counterparts. Be sure to [`free()`][free] or
[`IUnknown.release()`][IUnknown.release] them as appropriate.

:::

## APIs That Call `SetLastError()`

Many Win32 APIs indicate failure by their return value and record corresponding
error code in the thread-local *last-error* slot via
[`SetLastError()`][SetLastError]. This error code can be queried using
[`GetLastError()`][GetLastError].

In Dart, calling `GetLastError()` directly after a Win32 API invocation is
**not reliable**. Between the original native call and a Dart-side
`GetLastError()` invocation, the Dart runtime may perform additional native
operations that **overwrite the last-error state**.

This is a known limitation of Dart FFI (see
[dart-lang/sdk#38832](https://github.com/dart-lang/sdk/issues/38832)) and
**cannot be reliably mitigated in user code**.

To address this, `package:win32` adopts a different convention for APIs that
follow this pattern. These APIs return a [`Win32Result<T>`][Win32Result],
which captures both the logical return value and the associated last-error
code atomically on the native side, ensuring the **error state is preserved**.

```dart
final Win32Result(:value, :error) = WriteFile(...);
if (!value) {
  print('Error: ${error.toHRESULT()}');
}
```

When calling APIs that return `Win32Result<T>`:

* **Always** inspect `value` first to determine **success** or **failure**.
* Consult `error` **only** when the API contract *indicates* failure.

## COM Queries Return Typed Interfaces

APIs that conceptually *query* an interface are projected as generic Dart
functions that return the requested type directly.

```dart
final clsid = FileOpenDialog.toNative();
final dialog = CoCreateInstance<IFileDialog>(
  clsid,
  null,
  CLSCTX_ALL,
); // returns IFileDialog
```

You don't pass IIDs or output pointers. The returned object is already typed and
ready to use.

[package:win32]: https://pub.dev/packages/win32
[WindowsException]: https://pub.dev/documentation/win32/latest/win32/WindowsException-class.html
[nullptr]: https://api.dart.dev/dart-ffi/nullptr.html
[HRESULT]: https://wikipedia.org/wiki/HRESULT
[free]: https://pub.dev/documentation/win32/latest/win32/free.html
[IUnknown.release]: https://pub.dev/documentation/win32/latest/win32/IUnknown/release.html
[SetLastError]: https://learn.microsoft.com/windows/win32/api/errhandlingapi/nf-errhandlingapi-setlasterror
[Win32Result]: https://pub.dev/documentation/win32/latest/win32/Win32Result-class.html
[GetLastError]: https://learn.microsoft.com/windows/win32/api/errhandlingapi/nf-errhandlingapi-getlasterror
