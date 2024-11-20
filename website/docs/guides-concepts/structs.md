---
title: Structs
---

Win32 API frequently uses **C structs** to pass data between functions. This
guide provides detailed information on how to **create**, **pass**, and
**access** struct objects from Dart code.

## Creating Structs

For example, let's assume you want to call the Win32 API
[`GetSystemPowerStatus`][GetSystemPowerStatus], which retrieves the current
power status of the system (e.g., battery or AC powered).

The [Dart function signature] looks like this:

```dart
int GetSystemPowerStatus(Pointer<SYSTEM_POWER_STATUS> lpSystemPowerStatus) { ... }
```

As the documentation indicates, [`SYSTEM_POWER_STATUS`][SYSTEM_POWER_STATUS]
inherits from `dart:ffi`'s [`Struct`][Struct] class.

To create such a struct, you can use `loggingCalloc` to allocate memory for it:

```dart
final lpSystemPowerStatus = loggingCalloc<SYSTEM_POWER_STATUS>();
```

:::info

Dart also provides [`malloc`][malloc], which corresponds to the equivalent C
runtime function that allocates **uninitialized memory**. In practice, `loggingCalloc`
is a good general choice when writing Windows code, as the performance cost of
**initializing memory** is negligible compared to the benefits of avoiding
potential **side effects**.

:::

:::tip

Some structs include a field (typically the first one) for their **size**. This
is usually because they're used with a function that can accept multiple
variants of the same struct (e.g., `WNDCLASS` and `WNDCLASSEX`), with the size
field being used to disambiguate the struct being passed.

The [Dart cascade notation] provides a convenient way to initialize structs like
this:

```dart
final wndClass = loggingCalloc<WNDCLASSEX>()..ref.cbSize = sizeOf<WNDCLASSEX>();
```

:::

## Accessing Struct Fields

To access the fields of `SYSTEM_POWER_STATUS` using `lpSystemPowerStatus`, which
is of type `Pointer<SYSTEM_POWER_STATUS>`, you can use the [`ref`][ref]
property. This property creates a reference to the struct and provides access to
its fields directly.

Here's a simple example that demonstrates how to detect the power status of the
system:

```dart title="power_status.dart"
import 'dart:ffi';

import 'package:ffi/ffi.dart';
import 'package:win32/win32.dart';

void main() {
  // highlight-next-line
  final lpSystemPowerStatus = loggingCalloc<SYSTEM_POWER_STATUS>();

  try {
    final hr = GetSystemPowerStatus(lpSystemPowerStatus);
    if (SUCCEEDED(hr)) {
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
    }
  } finally {
    free(lpSystemPowerStatus);
  }
}
```

Here we pass a newly allocated and initialized `SYSTEM_POWER_STATUS` struct to
the `GetSystemPowerStatus` function, which fills it with values corresponding to
the machine's state. We then access fields of the returned struct by
**dereferencing** the pointer.

> For a more detailed demonstration of retrieving system information, see the
[`sysinfo.dart`][sysinfo.dart] example.

[Dart cascade notation]: https://dart.dev/language/operators#cascade-notation
[Dart function signature]: https://pub.dev/documentation/win32/latest/win32/GetSystemPowerStatus.html
[GetSystemPowerStatus]: https://learn.microsoft.com/windows/win32/api/winbase/nf-winbase-getsystempowerstatus
[malloc]: https://pub.dev/documentation/ffi/latest/ffi/malloc-constant.html
[ref]: https://api.dart.dev/stable/dart-ffi/StructPointer/ref.html
[Struct]: https://api.dart.dev/stable/dart-ffi/Struct-class.html
[sysinfo.dart]: https://github.com/halildurmus/win32/blob/main/examples/sysinfo.dart
[SYSTEM_POWER_STATUS]: https://pub.dev/documentation/win32/latest/win32/SYSTEM_POWER_STATUS-class.html
