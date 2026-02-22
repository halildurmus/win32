---
title: Methods
---

[`package:win32`][package:win32] exposes COM methods with idiomatic Dart
signatures.

## Reserved and Optional Parameters

Some COM methods include parameters that are not always meaningful to the
caller.

These fall into two distinct categories.

### Reserved Parameters

*Reserved* parameters exist only for ABI or historical compatibility. They
must always be set to `0` or [`nullptr`][nullptr] and have no semantic meaning.

In `package:win32`, reserved parameters are **removed entirely** from the Dart
signature and supplied automatically behind the scenes.

```dart
final storage = IStorage(...);
// Native: storage::EnumElements(NULL, NULL, NULL, &enum);
// highlight-next-line
storage.enumElements();
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
final network = INetwork(...);
// highlight-next-line
if (!network.isConnectedToInternet) {
  // handle not connected
}
```

You never work with `TRUE`, `FALSE`, or integer return values — only Dart
`bool`.

## `HRESULT`-Based APIs

Most COM methods return an [`HRESULT`][HRESULT]. In `package:win32`, you almost
never handle `HRESULT` values directly.

### Failures Throw

If a COM method reports failure via `HRESULT`, the Dart function throws a
[`WindowsException`][WindowsException].

```dart
using((arena) {
  final dialog = arena.com<IFileOpenDialog>(FileOpenDialog);
  // If the interface is not supported, a WindowsException is thrown.
  // highlight-next-line
  dialog.queryInterface<IDesktopWallpaper>();
});
```

You can still catch and handle failures explicitly:

```dart
using((arena) {
  // highlight-next-line
  try {
    final dialog = arena.com<IFileOpenDialog>(FileOpenDialog);
    dialog.queryInterface<IDesktopWallpaper>();
  // highlight-next-line
  } on WindowsException catch (e) {
    // handle error
    if (e.hr == E_NOINTERFACE) {
      // specific handling
    }
  }
});
```

### Out Parameters Become Return Values

If a method logically produces a value via an out parameter, the Dart projection
returns that value directly.

```dart
final errorInfo = IErrorInfo(...);
final guid = errorInfo.getGUID(); // returns Pointer<GUID>
```

You do not pass output buffers or inspect `HRESULT`s manually.

:::note

Returned pointers and COM objects follow the same ownership rules as their
native counterparts. Be sure to [`free`][free] or [`release`][release] them as
appropriate.

:::

## COM Queries Return Typed Interfaces

Methods that conceptually *query* an interface are projected as generic Dart
methods that return the requested type directly.

```dart
using((arena) {
  // Create the FileOpenDialog COM object.
  final fileDialog = arena.com<IFileDialog>(FileOpenDialog);

  // Query additional interfaces from the same COM object.
  // highlight-next-line
  final fileDialog2 = arena.adopt(fileDialog.queryInterface<IFileDialog2>());
});
```

You don't pass IIDs or output pointers. The returned object is already typed and
ready to use.

## Method Transformations

COM method names are systematically normalized into Dart-safe, camel-cased
identifiers.

The transformation is deterministic and follows these rules:

### Getter and Setter Projections

Methods that follow COM property conventions are mapped to idiomatic Dart
accessors:

* `get_Foo` → `foo`
* `put_Foo` → `setFoo`
* `putref_Foo` → `setFoo`

### General Name Normalization

For all other methods:

* Underscore-separated names are converted to lower camelCase
(`Enum_Elements` → `enumElements`)
* The first segment is preserved as-is
* Subsequent segments are capitalized
* The final name is sanitized into a valid Dart identifier

Examples:

* `add_Item` → `addItem`
* `remove_EventHandler` → `removeEventHandler`
* `get_Value` → `value`
* `put_Value` → `setValue`

### Dart Name Conflicts

Certain COM method names conflict with core Dart members.

These are handled explicitly:

* `get_RuntimeType` → `runtimeType$` (avoids collision with
  `Object.runtimeType`)
* `ToString`, `toString` → `toUtf16String` (avoids collision with
  `Object.toString`)

### Overloaded Methods

Dart does not support overloaded methods. When multiple COM methods share the
same name (including inherited methods), `package:win32` disambiguates them
by appending a numeric suffix.

The suffix is assigned deterministically based on the overload order in the
interface hierarchy.

Examples:

* `GetValue` → `getValue`
* `GetValue` (overload) → `getValue1`
* `GetValue` (second overload) → `getValue2`

Overload detection traverses the full interface inheritance chain to ensure that
shadowed or versioned methods (e.g., `IDWriteFactory1` vs `IDWriteFactory2`) are
handled correctly.

This guarantees that:

* No projected method names collide
* All COM methods remain accessible
* Naming remains stable across releases

[package:win32]: https://pub.dev/packages/win32
[WindowsException]: https://pub.dev/documentation/win32/latest/win32/WindowsException-class.html
[nullptr]: https://api.dart.dev/dart-ffi/nullptr.html
[HRESULT]: https://wikipedia.org/wiki/HRESULT
[free]: https://pub.dev/documentation/win32/latest/win32/free.html
[release]: https://pub.dev/documentation/win32/latest/win32/IUnknown/release.html
