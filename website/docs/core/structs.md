---
title: Structs
---

Win32 APIs frequently use **C structs** to pass data between functions. In Dart
FFI, these are represented as subclasses of [`Struct`][Struct] and can live in
either **Dart memory** or **native memory**. However, most Win32 APIs expect
structs to be allocated in native memory.

## Allocating Structs

All Win32 structs must be allocated in **native memory** before being passed to
an API.

The simplest and safest way is to use an [`Arena`][Arena]:

```dart
using((arena) {
  // highlight-next-line
  final status = arena<SYSTEM_POWER_STATUS>();
});
```

This allocates **zero-initialized** native memory for the struct.
The memory is automatically freed when the [`using()`][using] scope exits.

This is equivalent to:

```dart
final status = adaptiveCalloc<SYSTEM_POWER_STATUS>();
free(status);
```

...but without requiring manual cleanup.

## Accessing Struct Fields

Struct fields are accessed by dereferencing the pointer using
[`StructPointer.ref`][StructPointer.ref].

```dart
final batteryFlag = status.ref.BatteryFlag;
final lifePercent = status.ref.BatteryLifePercent;
```

You can also destructure the struct for clarity:

```dart
final SYSTEM_POWER_STATUS(:BatteryFlag, :BatteryLifePercent) = status.ref;
```

This avoids repetitive `status.ref.field` access and makes it obvious which
fields are being used.

## Initializing Size Fields

Some Win32 structs include a size field (typically named `cbSize`).
This is used to disambiguate struct variants or versions.

For example, [`WNDCLASSEX`][WNDCLASSEX] must have `cbSize` initialized:

```dart
using((arena) {
  // highlight-next-line
  final wc = arena<WNDCLASSEX>()..ref.cbSize = sizeOf<WNDCLASSEX>();
  RegisterClassEx(wc);
});
```

:::note

If a struct has a `cbSize` (or similar) field, you must initialize it before
passing the struct to any Win32 API. Failure to do this is a common source of
subtle bugs.

:::

## Common Struct Usage Patterns

Win32 APIs use structs in three distinct ways.

### Output-only Structs

The API fills the struct with data.

As an example, consider [`GetSystemPowerStatus`][GetSystemPowerStatus], which
retrieves the current power state of the system.

```dart title="sysinfo.dart"
void main() {
  using((arena) {
    // highlight-next-line
    final lpSystemPowerStatus = adaptiveCalloc<SYSTEM_POWER_STATUS>();

    final Win32Result(:value, :error) = GetSystemPowerStatus(
      lpSystemPowerStatus,
    );
    if (!value) throw WindowsException(error.toHRESULT());

    // highlight-start
    final SYSTEM_POWER_STATUS(:BatteryFlag, :BatteryLifePercent) =
        lpSystemPowerStatus.ref;
    // highlight-end

    if (BatteryFlag >= 128) {
      // This value is only less than 128 if a battery is detected.
      print('No system battery detected.');
    } else {
      if (BatteryLifePercent <= 100) {
        print('Battery detected with $BatteryLifePercent% remaining.');
      } else {
        // Windows sets this value to 255 if it can't detect remaining life.
        print('Battery detected but status unknown.');
      }
    }
  });
}
```

<CommonViewSourceCode href="https://github.com/halildurmus/win32/blob/main/examples/sysinfo.dart" />

Here:

- The struct is allocated by the caller
- The API writes into it
- The fields are read afterward

### Input-only Structs

You populate the struct before passing it to the API.

```dart
using((arena) {
  // highlight-start
  final point = arena<POINT>();
  point.ref
    ..x = 10
    ..y = 20;
  // highlight-end
  ClientToScreen(hwnd, point);
});
```

### Input/Output Structs

You initialize some fields, and the API may overwrite fields:

```dart
using((arena) {
  // highlight-start
  final rect = arena<RECT>();
  rect.ref
    ..left = 0
    ..top = 0
    ..right = 800
    ..bottom = 600;
  // highlight-end
  AdjustWindowRect(rect, WS_OVERLAPPEDWINDOW, false);
  final RECT(:left, :top, :right, :bottom) = rect.ref;
});
```

[Struct]: https://api.dart.dev/dart-ffi/Struct-class.html
[Arena]: https://pub.dev/documentation/ffi/latest/ffi/Arena-class.html
[using]: https://pub.dev/documentation/ffi/latest/ffi/using.html
[StructPointer.ref]: https://api.dart.dev/dart-ffi/StructPointer/ref.html
[WNDCLASSEX]: https://learn.microsoft.com/windows/win32/api/winuser/ns-winuser-wndclassexw
[GetSystemPowerStatus]: https://learn.microsoft.com/windows/win32/api/winbase/nf-winbase-getsystempowerstatus
