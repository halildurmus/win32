---
title: Callbacks
---

Some Win32 APIs are **asynchronous**: a function call doesn't complete and
return all the information requested immediately. Dart has the `async`/`await`
pattern for handling asynchronous calls within Dart libraries and packages, but
the C-based Win32 API model does not have a similar construct.

Therefore, calling Win32 APIs that are asynchronous is handled through
**callbacks**, where you pass a function that Win32 executes first to pass data
back.

## Creating Callbacks

Dart currently offers **two ways** to create callback functions that can be
invoked from native functions:

- [`NativeCallable.isolateLocal`][NativeCallable.isolateLocal]: Constructs a
  `NativeCallable` that must be invoked from the **same** thread that created
  it.
- [`NativeCallable.listener`][NativeCallable.listener]: Constructs a
  `NativeCallable` that can be invoked from **any** thread. However, there is a
  **restriction** — only `void` functions are supported.

::::::note

In most cases, utilizing `NativeCallable.isolateLocal` should suffice. However,
if you encounter a `Cannot invoke native callback outside an isolate.` error, it
indicates that the API you're calling operates in a **different thread
context**.

In such cases, if the callback is a `void` function, consider using
`NativeCallable.listener`. If not, there is currently no way to call that
particular API.

:::simple

A **work-in-progress** [proposal] is underway to introduce a
[`NativeCallable.shared`][NativeCallable.shared] constructor, enabling callbacks
to be invoked from **any** thread without restrictions.

:::

::::::

For example, let's look at the [`EnumFontFamiliesEx`][EnumFontFamiliesEx]
function, which **enumerates** all uniquely-named **fonts** in the system that
match a specified set of font characteristics. `EnumFontFamiliesEx` takes a
`LOGFONT` struct which contains information about the fonts to enumerate.

The [Dart function signature] looks like this:

```dart
int EnumFontFamiliesEx(
        int hdc,
        Pointer<LOGFONT> lpLogfont,
    // highlight-next-line
        Pointer<NativeFunction<FONTENUMPROC>> lpProc,
        int lParam,
        int dwFlags) { ... }
```

Notice the **third** parameter — a pointer to the callback function
[`FONTENUMPROC`][FONTENUMPROC]. This is called **once** for every enumerated
font, and is defined as:

```dart
typedef FONTENUMPROC = Int32 Function(Pointer<LOGFONT> lpelfe,
    Pointer<TEXTMETRIC> lpntme, DWORD FontType, LPARAM lParam);
```

To create a callback function, first define a Dart function that matches the
types in the **native callback function** above. Replace any **integer** types
with a Dart `int` type where applicable.

Here's an example:

```dart
int enumerateFonts(
    Pointer<LOGFONT> logFont, Pointer<TEXTMETRIC> _, int _, int _) {
  // Get extended information from the font.
  final logFontEx = logFont.cast<ENUMLOGFONTEX>();
  print(logFontEx.ref.elfFullName);
  return TRUE; // continue enumeration.
}
```

:::simple

- Since we only use the **first** parameter, we use the Dart `_` convention to
  indicate that other parameter values are **ignored**.
- This callback returns `TRUE` to indicate that the enumeration should
  **continue**. Alternatively, we could **stop** the callback from being fired
  for the next enumerated value by returning `FALSE` (for example, if we had
  found a specific font that we were looking for).

:::

Now that we have our function callback, we can use it with `EnumFontFamiliesEx`:

```dart title="fonts.dart"
import 'dart:ffi';

import 'package:ffi/ffi.dart';
import 'package:win32/win32.dart';

int enumerateFonts(
    Pointer<LOGFONT> logFont, Pointer<TEXTMETRIC> _, int _, int _) {
  // Get extended information from the font.
  final logFontEx = logFont.cast<ENUMLOGFONTEX>();
  print(logFontEx.ref.elfFullName);
  return TRUE; // continue enumeration.
}

void main() {
  final hDC = GetDC(NULL);
  final searchFont = calloc<LOGFONT>()
    ..ref.lfCharSet = HANGUL_CHARSET;
  // highlight-start
  final lpProc = NativeCallable<FONTENUMPROC>.isolateLocal(
    enumerateFonts,
    exceptionalReturn: 0,
  );
  // highlight-end

  // highlight-next-line
  EnumFontFamiliesEx(hDC, searchFont, lpProc.nativeFunction, 0, 0);

  lpProc.close(); // Close the callback when it's no longer needed.
  free(searchFont);
}
```

In the above example, we first create a struct `LOGFONT` containing our required
search characteristics (fonts that support the Hangul, or Korean, character
set). We then create a `NativeCallable` for the Dart callback function using the
`NativeCallable.isolateLocal` constructor. Finally, we call the
`EnumFontFamiliesEx` API to initiate the enumeration. The Dart
`enumerateFonts()` function will now be called once for every discovered font
that matches the search characteristics.

<CommonViewSourceCode href="https://github.com/halildurmus/win32/blob/main/examples/fonts.dart" />

[Dart function signature]: https://pub.dev/documentation/win32/latest/win32/EnumFontFamiliesEx.html
[EnumFontFamiliesEx]: https://learn.microsoft.com/windows/win32/api/wingdi/nf-wingdi-enumfontfamiliesexw
[FONTENUMPROC]: https://pub.dev/documentation/win32/latest/win32/FONTENUMPROC.html
[NativeCallable.isolateLocal]: https://api.dart.dev/stable/dart-ffi/NativeCallable/NativeCallable.isolateLocal.html
[NativeCallable.listener]: https://api.dart.dev/stable/dart-ffi/NativeCallable/NativeCallable.listener.html
[NativeCallable.shared]: https://github.com/dart-lang/language/blob/main/working/333%20-%20shared%20memory%20multithreading/proposal.md#upgrading-dartffi
[proposal]: https://github.com/dart-lang/language/blob/main/working/333%20-%20shared%20memory%20multithreading/proposal.md
