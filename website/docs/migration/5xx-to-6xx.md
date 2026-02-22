---
title: Migrating from 5.x.x to 6.x.x
---

[`package:win32`][package:win32] version `6.x.x` introduces significant
improvements to the Win32 API surface, focusing on **safety**, **ergonomics**,
and **idiomatic Dart patterns**.

This guide covers **breaking changes** and **recommended migration patterns**.

## Overview of Major Changes

* **Exception-based error handling**: APIs that return [`HRESULT`][HRESULT] now
  throw [`WindowsException`][WindowsException] **on failure**, instead of
  requiring manual `if (FAILED(hr)) { ... }` checks.
* **Output Values are Returned Directly**: APIs that previously required
  pointer-based *out* parameters now return their logical output values
  directly.
* **APIs That Call `SetLastError()`**: These APIs now return a
  [`Win32Result<T>`][Win32Result], which captures both the logical return value
  and the associated last-error code atomically on the native side, ensuring the
  **error state is preserved**.
* **Win32 `BOOL` mapped to Dart `bool`**: All Win32 `BOOL` values — return
  values, parameters, and struct fields — are now exposed as Dart `bool` instead
  of `int`.
* **Strongly typed Win32 handles**: Opaque Win32 handles (e.g., `HKEY`, `HWND`,
  `HICON`)are now exposed as extension types instead of raw `int` or `Pointer`,
  improving readability, intent, and type safety while remaining ABI-compatible
  with native code.
* **Enums as extension types**: Win32 enums are now represented as
  **extension types**, improving type safety while remaining fully interoperable
  with **int**.
* **Modernized string APIs**: String conversion APIs have been streamlined, with
  clearer naming and better support for scoped allocation
* **Explicit COM lifetime management**: COM interfaces no longer use `Finalizer`
  for automatic cleanup. You **must** now call
  [`IUnknown.release()`][IUnknown.release] explicitly, or use [`Arena`][Arena]
  to manage lifetimes automatically.
* **Scope-based lifetime management with `Arena`**: New APIs enable
  deterministic, scope-based cleanup of native memory and COM objects.

## `winsock2` Library Removal

The `winsock2` library has been removed. All Winsock APIs are now exported
directly from the main `win32` library.

To migrate, replace the `winsock2.dart` import with `win32.dart`. If your code
already imports `win32.dart`, simply remove the `winsock2.dart` import:

```diff
- import 'package:win32/winsock2.dart';
+ import 'package:win32/win32.dart';

// ...
```

## String Conversion Changes

String-related APIs have been renamed and simplified. In most cases, migration
is mechanical.

### String Extension Renames

Most migrations only require renaming the extension methods:

```diff
- final ansiString = 'Hello'.toANSI();
+ final ansiString = 'Hello'.toPcstr();

- final array = ['foo', 'bar'].toWideCharArray();
+ final array = ['foo', 'bar'].toPcwstr();

free(array);
free(ansiString);
```

:::tip

Instead of manually freeing strings, prefer `Arena` for scoped allocation:

```dart
using((arena) {
  final ansiString = arena.pcstr('Hello');
  final array = ['foo', 'bar'].toPcwstr(allocator: arena);
  // ...
});
```

:::

### `TEXT()` Function Removal

The `TEXT()` helper has been removed. Use string extension method instead:

```diff
- final lpszClassName = TEXT('MyWindowClass');
+ final lpszClassName = 'MyWindowClass'.toPcwstr();

// ...

free(lpszClassName);
```

:::tip

Instead of manually freeing strings, prefer `Arena` for scoped allocation:

```dart
using((arena) {
  final lpszClassName = arena.pcwstr('MyWindowClass');
  // ...
});
```

:::

### Unpacking String Arrays

String array helpers have been simplified. Wrap the pointer explicitly and
convert to a Dart list:

```diff
final ptr = ...; // Pointer<Utf16>
- final list = ptr.unpackStringArray(20);
+ final list = PWSTR(ptr).toDartStringList(20);
```

### `BSTR` Class Removal

The `BSTR` class has been removed. Instead, use string extension methods:

```diff
- final bstr = BSTR.fromString('Hello');
+ final bstr = 'Hello'.toBstr();

// ...

- bstr.free();
+ SysFreeString(bstr);
```

:::tip

Instead of manually calling [`SysFreeString()`][SysFreeString], prefer `Arena`
for scoped allocation:

```dart
using((arena) {
  final bstr = arena.bstr('Hello');
  // ...
});
```

:::

## GUID Changes

GUID handling has been simplified and made more explicit. Most changes are
mechanical.

### `Guid` Class Removal

The `Guid` class has been removed. Use `GUID` struct instead:

| Operation         | Before                | After            |
| ----------------- | --------------------- |----------------- |
| Parse from string | `Guid.parse('{...}')` | `GUID('{...}')`  |
| Zero GUID         | `Guid.zero()`         | `GUID.zero()`    |
| Generate random   | `Guid.generate()`     | `CoCreateGuid()` |

```diff
- final guid = Guid.parse('{6B29FC40-CA47-1067-B31D-00DD010662DA}');
+ final guid = GUID('{6B29FC40-CA47-1067-B31D-00DD010662DA}');
```

### `GUIDFromString()` Function Removal

The `GUIDFromString()` helper has been removed. Convert to native memory via
`GUID.toNative()` instead:

```diff
- final ptr = GUIDFromString('{...}');
+ final ptr = GUID('{...}').toNative();

// ...

free(ptr);
```

:::tip

Instead of manually freeing the pointer, prefer `Arena` for scoped allocation:

```dart
using((arena) {
  final ptr = GUID('{...}').toNative(allocator: arena);
  // ...
});
```

:::

### CLSID / IID Conversion Helpers Removal

The `convertToCLSID()` and `convertToIID()` helpers have been removed.

Use the corresponding Win32 APIs directly:

```diff
- final clsid = convertToCLSID('{...}');
+ using((arena) {
+   final lpsz = arena.pcwstr('{...}');
+   final clsid = arena.using(CLSIDFromString(lpsz), free);
+   // ...
+ });
```

```diff
- final iid = convertToIID('{...}');
+ using((arena) {
+   final lpsz = arena.pcwstr('{...}');
+   final guid = arena.using(IIDFromString(lpsz), free);
+   // ...
+ });
```

### GUID Constants

GUID constants now return `GUID` values instead of `String`:

```diff
- final guid = GUIDFromString(FOLDERID_Desktop);
+ using((arena) {
+   final guid = FOLDERID_Desktop.toNativeGuid(allocator: arena);
+   // ...
+ });
```

### `GUID.Data4` Field Change

The `Data4` field is now represented as `Array<Uint8>` instead of an `int`.

```diff
final guid = calloc<GUID>();
- guid.ref.Data4 = 0x1234567890ABCDEF;
+ final data4 = guid.ref.Data4;
+ data4[0] = 0x12;
+ data4[1] = 0x34;
+ data4[2] = 0x56;
+ data4[3] = 0x78;
+ data4[4] = 0x90;
+ data4[5] = 0xAB;
+ data4[6] = 0xCD;
+ data4[7] = 0xEF;
```

This matches the native Windows layout exactly.

## Boolean Conversions

Win32 APIs that expose boolean values via `BOOL` now map directly to Dart
`bool`. This applies uniformly to
**return values, parameters, and struct fields**.

```diff
- if (IsWindows10OrGreater() == TRUE) {
+ if (IsWindows10OrGreater()) {
    // ...
}
```

**What changed**:

* All Win32 `BOOL` return values now return `bool`
* Parameters of type `BOOL` are now typed as `bool`
* Struct fields declared as `BOOL` are now `bool`

This removes the need for manual comparisons against `TRUE` / `FALSE` and
prevents accidental misuse of integer values where a boolean is required.

## Error Handling Changes

### `HRESULT`-Based APIs

Win32 functions and COM methods that return `HRESULT` now:

* **Throw `WindowsException` on failure**
* **Return logical output values directly** (instead of using *out* parameters)

This eliminates manual `FAILED(hr)` checks and pointer plumbing:

```diff
- final guid = calloc<GUID>();
- final hr = CoCreateGuid(guid);
- if (FAILED(hr)) {
-   free(guid);
-   throw WindowsException(hr);
- }
+ final guid = CoCreateGuid(); // Throws WindowsException on failure
print(guid.ref);
free(guid);
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

## APIs That Call `SetLastError()`

Many Win32 APIs indicate failure by their return value and record corresponding
error code in the thread-local *last-error* slot via
[`SetLastError()`][SetLastError]. This error code can be queried using
[`GetLastError()`][GetLastError].

This is **not reliable in Dart FFI**, because transitions between Dart and
native code can overwrite the error state.

This is a known limitation of Dart FFI (see
[dart-lang/sdk#38832](https://github.com/dart-lang/sdk/issues/38832)) and
**cannot be reliably mitigated in user code**.

To address this, `package:win32` adopts a different convention for APIs that
follow this pattern. These APIs return a [`Win32Result<T>`][Win32Result],
which captures both the logical return value and the associated last-error
code atomically on the native side, ensuring the **error state is preserved**.

```diff
- final hWnd = CreateWindowEx(...);
- if (hWnd == 0) {
-   final error = GetLastError(); // May be corrupted
-   throw WindowsException(HRESULT_FROM_WIN32(error));
- }
+ final Win32Result(value: hWwnd, :error) = CreateWindowEx(...);
+ if (hWnd.isNull) throw WindowsException(error.toHRESULT());
```

## Exception Changes

### `COMException` Removal

The `COMException` class has been removed. It was
**not used or thrown anywhere** in `package:win32` and existed only as a legacy
type.

All Win32 and COM failures are represented by `WindowsException`, which already
carries the underlying `HRESULT` and provides consistent error handling across
the entire API surface.

Removing `COMException` eliminates dead API surface and avoids implying a
distinction that never actually existed in practice.

### Accessing `HRESULT` Messages

Formatting error messages has been simplified and made more explicit.

```diff
- final message = WindowsException.convertWindowsErrorToString(E_NOINTERFACE);
+ final message = E_NOINTERFACE.message;
```

This makes error-message retrieval a responsibility of the `HRESULT` value
itself, rather than a static helper on the exception type.

## COM API Changes

### Explicit Lifetime Management

COM interfaces **no longer** use `Finalizer`s for automatic cleanup. You are
now responsible for releasing COM objects by calling
[IUnknown.release()][IUnknown.release] when they are no longer needed.

This makes COM object lifetimes **deterministic** and avoids GC-dependent
cleanup.

```diff
final dialog = IFileOpenDialog(...);
// ...
+ dialog.release(); // Must call explicitly
```

### `QueryInterface`-Style Methods Return Values Directly

Methods that conceptually *return another interface* now do exactly that.

You no longer allocate output pointers, pass IIDs manually, or check `HRESULT`s.

```diff
final fileDialog = ...; // IFileDialog
- final pIID = convertToIID(IID_IFileDialog2);
- final ppv = calloc<COMObject>();
- try {
-   final hr = fileDialog.queryInterface(pIID, ppv.cast());
-   if (FAILED(hr)) {
-     free(ppv);
-     throw WindowsException(hr);
-   }
-   final fileDialog2 = IFileDialog2(ppv.cast());
- } finally {
-   free(pIID);
- }
+ final fileDialog2 = fileDialog.queryInterface<IFileDialog2>();
```

:::tip

Use `Arena` to manage COM lifetimes safely and concisely:

```dart
using((arena) {
  final fileDialog = arena.com<IFileOpenDialog>(FileOpenDialog);
  final fileDialog2 = arena.adopt(fileDialog.queryInterface<IFileDialog2>());
  // Both automatically released at the end of the using() block
});
```

:::

### `COMObject` Struct Removal

The `COMObject` struct has been removed. Raw COM pointers are now represented by
the `VTablePointer` typedef, which more accurately reflects what is actually
being stored

```diff
- final ppv = calloc<COMObject>();
+ final ppv = calloc<VTablePointer>();
```

## `Dispatcher` Changes

`Dispatcher` allows interacting with COM objects using late binding.

`v6` significantly simplifies `Dispatcher` usage by:

* Eliminating manual `VARIANT` construction
* Returning strongly typed values
* Making ownership and cleanup explicit

### Constructor Changes

`Dispatcher.fromCLSID()` now accepts `GUID` instead of `String`.

If you were using GUID constants (e.g., `WinHttpRequest`),
**no changes are required**, as they now return `GUID` values directly.

If you were passing string literals, wrap them in `GUID()`:

```diff
- final dispatcher = Dispatcher.fromCLSID('{...}');
+ final dispatcher = Dispatcher.fromCLSID(GUID('{...}'));
```

### `invoke()` Returns Typed Values

`invoke()` no longer requires manual `VARIANT` and `DISPPARAMS` setup. Arguments
are passed as Dart values, and the result is returned in a typed wrapper.

```diff
- final folderPath = BSTR.fromString(r'C:\ExampleFolder');
- final folderPathParam = arena<VARIANT>();
- VariantInit(folderPathParam);
- folderPathParam.ref
-   ..vt = VT_BSTR
-   ..bstrVal = folderPath.ptr;
- final folderParams = arena<DISPPARAMS>();
- folderParams.ref
-   ..rgvarg = folderPathParam
-   ..cArgs = 1;
- final resultParam = arena<VARIANT>();
- VariantInit(resultParam);
- fileSystemObject.invoke('CreateFolder', folderParams, resultParam);
- VariantClear(folderPathParam);
- final folder = Dispatcher(resultParam.ref.pdispVal);
+ final dispatch = fileSystemObject.invoke<IDispatch>('CreateFolder', const [
+   r'C:\ExampleFolder',
+ ]);
+ final folder = Dispatcher(dispatch.value);
// ...
```

### `get()` Returns Typed Results

Property access is now strongly typed:

```diff
- final folderPathResult = folder.get('Path');
- final folderPath = folderPathResult.ref.bstrVal.toDartString();
- VariantClear(folderPathResult);
+ final folderPathResult = folder.get<String>('Path');
+ final folderPath = folderPathResult.value;
+ folderPathResult.free();
```

### `set()` Accepts Dart Values

Property assignment no longer requires manual `VARIANT` construction:

```diff
- final newFolderName = BSTR.fromString('ExampleFolderRenamed');
- final newFolderNameParam = arena<VARIANT>();
- VariantInit(newFolderNameParam);
- newFolderNameParam.ref
-   ..vt = VT_BSTR
-   ..bstrVal = newFolderName.ptr;
- folder.set('Name', newFolderNameParam);
- VariantClear(newFolderNameParam);
+ folder.set('Name', 'ExampleFolderRenamed');
```

## Strongly Typed Win32 Handles

Opaque Win32 handle types (e.g., `HKEY`, `HWND`) are now represented as
**extension types** instead of plain Dart `int` or `Pointer` values.

This provides **stronger type safety** and clearer intent at the Dart level,
while remaining fully ABI-compatible with native code.

If an API previously returned or accepted `int` or `Pointer`, replace them with
the corresponding handle type:

```diff
- int hIcon = ExtractAssociatedIcon(...);
+ HICON hIcon = ExtractAssociatedIcon(...);

- EnumFontFamiliesEx(hDC, searchFont, lpProc.nativeFunction, 0, 0);
+ EnumFontFamiliesEx(
    hDC,
    searchFont,
    lpProc.nativeFunction,
    const LPARAM(0),
    0,
  );

final wc = arena<WNDCLASS>();
wc.ref
  ..style = CS_HREDRAW | CS_VREDRAW
-  ..hbrBackground = GetStockObject(WHITE_BRUSH)
+  ..hbrBackground = HBRUSH(GetStockObject(WHITE_BRUSH))
    // ...
```

## Enum Extension Type Changes

All Win32 enums are now represented as **extension types** instead of raw `int`
constants.

This provides **stronger type safety** at the Dart level while remaining fully
ABI-compatible with `int` and native code.

If a function previously accepted `int` and now accepts an enum extension type,
simply replace numeric literals with the corresponding enum constants:

```diff
... CreateWindowEx(
-  int dwExStyle,
+  WINDOW_EX_STYLE dwExStyle,
  ...,
) { ... }

CreateWindowEx(
-  0,
+  WS_EX_LEFT,
  ...,
);
```

## Memory Allocation (Optional)

While not required, migrating to the allocators provided by `package:win32`
prepares your code to take advantage of **native memory leak tracking**.

This is especially useful during development and debugging of FFI-heavy code.

```diff
- final ptr = calloc<DWORD>();
+ final ptr = adaptiveCalloc<DWORD>();

// ...

free(ptr);
```

Leak tracking is **opt-in** and has no effect unless explicitly enabled.

For details. see the [Leak Tracking] documentation.

## Other Notable Changes

### Binary Data Conversion

Binary buffer conversion APIs have been renamed for clarity and consistency with
other native conversion helpers:

```diff
final uint8List = Uint8List(...);
- final ptr = uint8List.allocatePointer();
+ final ptr = uint8List.toNative();
```

### `FILETIME` Conversion Semantics

The `FILETIME.toDateTime()` API has been clarified. The parameter was renamed
and its meaning made explicit.

```diff
- final dateTime = filetime.toDateTime(convertToLocalTimeZone: true);
+ final dateTime = filetime.toDateTime(isUtc: false);
```

**Interpretation:**

* `isUtc: true`  = Treat `FILETIME` as UTC (no conversion)
* `isUtc: false` = Convert to local time

### `PROPERTYKEY` Constants

`PROPERTYKEY` constants are no longer exposed as static methods. They are now
top-level constants returning `PROPERTYKEY` values directly:

```diff
- final pkey = PROPERTYKEY.PKEY_DeviceClass_Characteristics();
+ final pkey = PKEY_DeviceClass_Characteristics;
```

If a pointer is required:

```dart
final pkey = PKEY_DeviceClass_Characteristics;
final pkeyPtr = pkey.toNative();

// ...

free(pkeyPtr);
```

### `initApp()` Callback Signature

* The `hInstance` parameter is now typed as `HINSTANCE` instead of `int`.
* The `nShowCmd` parameter is now typed as `SHOW_WINDOW_CMD` instead of `int`:

```diff
- initApp(int hInstance, List<String> args, int nShowCmd) {
+ initApp(HINSTANCE hInstance, List<String> args, SHOW_WINDOW_CMD nShowCmd) {
  // ...
});
```

### `isWindowsRuntimeAvailable()` is Now a Getter

`isWindowsRuntimeAvailable()` is now exposed as a getter instead of a function:

```diff
- if (isWindowsRuntimeAvailable()) {
+ if (isWindowsRuntimeAvailable) {
  // ...
}
```

## Getting Help

If you encounter issues while migrating to `v6.x.x`, the following steps will
usually resolve them quickly:

1. **Start with compiler errors**
  Most breaking changes surface as type errors with actionable messages.
2. **Review the [Functions] documentation**
  This explains the new return-value and error-handling patterns.
3. **Check the [COM Methods] documentation**
  Covers updated COM lifetimes, `QueryInterface` semantics, and exception
  behavior.
4. **Check the [examples] directory**
  All examples have been fully migrated to `v6.x.x`.
5. **File an issue on GitHub**
  If something is unclear or incorrect, please open an issue. Migration feedback
  is especially valuable and helps refine the API and documentation.

[package:win32]: https://pub.dev/packages/win32
[HRESULT]: https://pub.dev/documentation/win32/latest/win32/HRESULT-class.html
[WindowsException]: https://pub.dev/documentation/win32/latest/win32/WindowsException-class.html
[GetLastError]: https://learn.microsoft.com/windows/win32/api/errhandlingapi/nf-errhandlingapi-getlasterror
[SetLastError]: https://learn.microsoft.com/windows/win32/api/errhandlingapi/nf-errhandlingapi-setlasterror
[Win32Result]: https://pub.dev/documentation/win32/latest/win32/Win32Result-class.html
[IUnknown.release]: https://pub.dev/documentation/win32/latest/win32/IUnknown/release.html
[Arena]: https://pub.dev/documentation/ffi/latest/ffi/Arena-class.html
[SysFreeString]: https://learn.microsoft.com/windows/win32/api/oleauto/nf-oleauto-sysfreestring
[Leak Tracking]: ../advanced/leak-tracking.md
[Functions]: ../core/functions.md
[COM Methods]: ../advanced/com/methods.md
[examples]: https://github.com/halildurmus/win32/tree/main/examples
