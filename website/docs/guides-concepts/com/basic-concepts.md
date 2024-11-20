---
title: Basic Concepts
---

Since the **win32** package primarily focuses on providing a **lightweight
wrapper** for the underlying Windows API primitives, you can use the same API
calls as described in Microsoft documentation to create and manipulate objects
(e.g., [`CoCreateInstance`][CoCreateInstance] and
[`IUnknown->QueryInterface`][QueryInterface]).

However, this approach introduces a certain amount of **boilerplate** and
**non-idiomatic Dart** code. To address this, the library provides **helper
functions** that reduce the labor compared to a pure C-style calling convention.

## Initializing the COM Library

Before calling any COM APIs, you must first **initialize** the COM library by
calling the [`CoInitializeEx`][CoInitializeEx] function. Details of the
threading models are outside the scope of this guide, but typically, you should
write something like this:

```dart
CoInitializeEx(COINIT_MULTITHREADED);
```

## Creating COM Objects

You can create COM objects using the [`CoCreateInstance`][CoCreateInstance]
function:

```dart
hr = CoCreateInstance(clsid, nullptr, CLSCTX_INPROC_SERVER, iid, ppv);
```

However, instead of manually allocating `GUID` structs for the `clsid` and `iid`
values, checking the `hr` result code, and dealing with casting the `ppv` return
object, it is easier to use the [`createInstance`][createInstance] static helper
function:

```dart
final fileDialog2 = createInstance<IFileDialog2>(CLSID_FileOpenDialog);
```

`createInstance` returns an `IFileDialog2` object, which can then be **cast**
into another interfaces. This approach **simplifies** the creation process and
**reduces** boilerplate code.

## Requesting an Interface from a COM Object

COM objects can implement multiple interfaces, but you cannot simply cast an
object to a different interface. Instead, pointers are returned to a specific
interface. Every COM interface in the **win32** package derives from `IUnknown`,
allowing you to call `queryInterface` on any object to retrieve a pointer to a
different supported interface.

For more information on COM interfaces, refer to the [Microsoft documentation].

COM interfaces provide a method that wraps `queryInterface`. If you have an
existing COM object, you can call it as follows:

```dart
  final modalWindow = fileDialog2.cast<IModalWindow>();
```

Alternatively, you can use the `from` constructor that wraps `cast` for you:

```dart
  final modalWindow = IModalWindow.from(fileDialog2);
```

While `createInstance` creates a new COM object, `cast` casts an existing
COM object to a new interface.

Attempting to cast a COM object to an unsupported interface will fail, and a
`WindowsException` will be thrown with an `hr` of `E_NOINTERFACE`.

## Calling Methods on a COM Object

When calling methods on a COM object, it's wise to assign the **return value**
to a variable and test it for **success** or **failure**. You can use the
`SUCCEEDED()` or `FAILED()` functions for this purpose.

For example:

```dart
final hr = fileOpenDialog.show(NULL);
if (SUCCEEDED(hr)) {
  // Do something with the returned dialog box values.
}
```

Failures are reported as `HRESULT` values (e.g., `E_ACCESSDENIED`).
Occasionally, a Win32 error code is converted to an `HRESULT`, such as when a
user cancels a common dialog box:

```dart
final hr = fileOpenDialog.show(NULL);
if (FAILED(hr) && hr == HRESULT_FROM_WIN32(ERROR_CANCELLED)) {
  // User clicked cancel.
}
```

## Releasing COM Objects

In general, releasing COM objects isn't something you need to worry about
because when the object becomes inaccessible to the program, the
[`Finalizer`][Finalizer] _automatically_ **releases** it for you.

::::::warning

If you are manually managing the lifetime of an object, such as by calling the
`.detach()` method, it is important to ensure that you release it properly by
calling the `.release()` method. Additionally, you should free up the memory
that was allocated for the object by calling the `free()` helper function as
follows:

```dart
fileOpenDialog.release(); // Release the COM object.
free(fileOpenDialog.ptr); // Release the allocated memory for the object.
```

This is necessary to prevent **memory leaks** and ensure that the memory used by
the object is properly released.

:::simple

It is important to include this code as part of a `try`/`finally` block to
ensure that the object is **released** properly, even if an **exception** is
thrown during the execution of your code.

:::

::::::

[CoCreateInstance]: https://learn.microsoft.com/windows/win32/api/combaseapi/nf-combaseapi-cocreateinstance
[CoInitializeEx]: https://learn.microsoft.com/windows/win32/api/combaseapi/nf-combaseapi-coinitializeex
[createInstance]: https://pub.dev/documentation/win32/latest/win32/createInstance.html
[Finalizer]: https://api.dart.dev/stable/dart-core/Finalizer-class.html
[Microsoft documentation]: https://learn.microsoft.com/windows/win32/learnwin32/asking-an-object-for-an-interface
[QueryInterface]: https://learn.microsoft.com/windows/win32/api/unknwn/nf-unknwn-iunknown-queryinterface(refiid_void)
