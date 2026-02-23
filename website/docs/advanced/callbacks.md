---
title: Callbacks
---

Some Win32 APIs invoke **caller-supplied functions** to report progress, stream
results, or notify events. These are *not* Dart-style async callbacks — they are
**native calls back into Dart code**.

From Dart FFI's perspective, a Win32 callback is a function pointer that the
native API stores and later invokes on an arbitrary thread.

## Creating Callbacks

Win32 API may invoke your callback from:

- The same thread
- A worker thread
- A thread pool thread
- A GUI thread

Dart therefore provides multiple callback modes with different safety and
threading guarantees to create **native-callable** callbacks.

| Constructor                                                            | Callable From    | Return Type | Restrictions                                   |
| ---------------------------------------------------------------------- | :--------------: | :---------: | ---------------------------------------------- |
| [`NativeCallable.isolateLocal`][NativeCallable.isolateLocal]           | Same thread only | Any         | Must be invoked on the creating thread         |
| [`NativeCallable.listener`][NativeCallable.listener]                   | Any thread       | `void`-only | No return values                               |
| [`NativeCallable.isolateGroupBound`][NativeCallable.isolateGroupBound] | Any thread       | Any         | May only access **isolate-group-shared** state |

### `NativeCallable.isolateLocal`

Use this when the native API **guarantees** that the callback runs on the same
thread that registered it.

```dart
final callback = NativeCallable<FONTENUMPROC>.isolateLocal(
  enumerateFonts,
  exceptionalReturn: 0,
);
```

### `NativeCallable.listener`

Use this when the callback:

- May be invoked from **any thread**
- Returns `void`
- Is used for notifications or events

```dart
final callback = NativeCallable<Void Function(Int32)>.listener(onEvent);
```

### `NativeCallable.isolateGroupBound` (**Preview**)

> Requires `--experimental-shared-data` flag to be passed to the Dart VM in
> order to access **isolate-group-shared** state.
>
> For example: `dart --experimental-shared-data run example.dart`

Use this when the callback:

- May be invoked from **any thread**
- Must return a value

```dart
final callback = NativeCallable<FONTENUMPROC>.isolateGroupBound(
  enumerateFonts,
  exceptionalReturn: 0,
);
```

This allows invocation from arbitrary threads, but with the restriction that the
callback may only access **isolate-group-shared** state.

## Defining a Callback Function

The Dart function must match the **native callback signature** exactly.

For example, let's look at the [`EnumFontFamiliesEx`][EnumFontFamiliesEx]
function, which **enumerates** all uniquely-named **fonts** in the system that
match a specified set of font characteristics. `EnumFontFamiliesEx` takes a
`LOGFONT` struct which contains information about the fonts to enumerate.

The Dart function signature looks like this:

```dart
int EnumFontFamiliesEx(
  int hdc,
  Pointer<LOGFONT> lpLogfont,
  // highlight-next-line
  Pointer<NativeFunction<FONTENUMPROC>> lpProc,
  int lParam,
  int dwFlags,
) { ... }
```

Notice the **third** parameter — a pointer to the callback function. This is
called **once** for every enumerated font, and is defined as:

```dart
typedef FONTENUMPROC =
    Int32 Function(
      Pointer<LOGFONT> param0,
      Pointer<TEXTMETRIC> param1,
      Uint32 param2,
      IntPtr param3,
    );
```

Define a Dart function using Dart equivalents:

```dart
int enumerateFonts(
  Pointer<LOGFONT> logFont,
  Pointer<TEXTMETRIC> _,
  int _,
  int _,
) {
  final logFontEx = logFont.cast<ENUMLOGFONTEX>();
  print(logFontEx.ref.elfFullName);
  return TRUE; // continue enumeration
}
```

## Registering a Callback

Example using `EnumFontFamiliesEx`:

```dart title="fonts.dart"
int enumerateFonts(
  Pointer<LOGFONT> logFont,
  Pointer<TEXTMETRIC> _,
  int _,
  int _,
) {
  final logFontEx = logFont.cast<ENUMLOGFONTEX>();
  print(logFontEx.ref.elfFullName);
  return TRUE; // continue enumeration
}

void main() {
  final hDC = GetDC(null);
  final searchFont = adaptiveCalloc<LOGFONT>()
    ..ref.lfCharSet = HANGUL_CHARSET;

  // highlight-start
  final callback = NativeCallable<FONTENUMPROC>.isolateLocal(
    enumerateFonts,
    exceptionalReturn: 0,
  );
  // highlight-end

  // highlight-start
  EnumFontFamiliesEx(
    hDC,
    searchFont,
    callback.nativeFunction,
    const .new(0),
    0,
  );
  // highlight-end

  callback.close();
  free(searchFont);
}
```

<CommonViewSourceCode href="https://github.com/halildurmus/win32/blob/main/examples/fonts.dart" />

## Lifetime And Ownership

Callbacks are native resources.

You **must** close them when no longer needed:

```dart
final callback = NativeCallable<FONTENUMPROC>.isolateLocal(...);
...
callback.close();
```

## Choosing the Right Callback Mode

| Situation                                           | Use                                |
| --------------------------------------------------- | ---------------------------------- |
| Callback runs on the registering thread             | `NativeCallable.isolateLocal`      |
| Callback runs on arbitrary threads, returns `void`  | `NativeCallable.listener`          |
| Callback runs on arbitrary threads, returns a value | `NativeCallable.isolateGroupBound` |

:::tip

Prefer `NativeCallable.isolateLocal`. Use the other two only when forced by the
API's threading behavior.

:::

## Common Failure Modes

### Wrong Thread

```text
Cannot invoke a native callback outside an isolate.
```

**Cause:**

You used `NativeCallable.isolateLocal`, but Win32 API invoked the callback from
another thread.

**Fix:**

Switch to `NativeCallable.isolateGroupBound` or `NativeCallable.listener`.

### Use-After-Close

Crash or access violation.

**Cause:**

You closed the callback while native code still held its function pointer.

**Fix:**

- Ensure the callback **outlives** all native uses
- **Close** only after the native API is done

[NativeCallable.isolateLocal]: https://api.dart.dev/dart-ffi/NativeCallable/NativeCallable.isolateLocal.html
[NativeCallable.listener]: https://api.dart.dev/dart-ffi/NativeCallable/NativeCallable.listener.html
[NativeCallable.isolateGroupBound]: https://api.dart.dev/dart-ffi/NativeCallable/NativeCallable.isolateGroupBound.html
[EnumFontFamiliesEx]: https://learn.microsoft.com/windows/win32/api/wingdi/nf-wingdi-enumfontfamiliesexw
