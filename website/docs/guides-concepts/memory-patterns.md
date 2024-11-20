---
title: Patterns for Memory Management
---

Consider the following **bad** example of a function that calls
[`CoCreateGuid`][CoCreateGuid] to return a string:

```dart title="guid.dart"
import 'dart:ffi';

import 'package:ffi/ffi.dart';
import 'package:win32/win32.dart';

// BAD: Don't do this, since the memory for pGuid may not be released.
String createGUID() {
  // highlight-next-line
  final pGuid = loggingCalloc<GUID>();

  final hr = CoCreateGuid(pGuid);
  // highlight-next-line
  if (FAILED(hr)) throw WindowsException(hr);
  final guid = pGuid.ref.toString();
  // highlight-next-line
  free(pGuid);
  return guid;
}
```

<details>

<summary>Can you see a potential bug in this code?</summary>

Here's the problem: if `CoCreateGuid()` fails, `pGuid` will not be **released**
prior to the **exception** being thrown. In this example, there are simple
solutions (e.g., call `free` in both **failure** and **success** scenarios).
However, when you're allocating many different objects, this approach can lead
to **unreadable code** with plenty of opportunities for **memory leaks**.

</details>

## The `try`/`finally` pattern

One **effective** approach is using the `try`/`finally` pattern in Dart, which
ensures that the `finally` clause will be **executed** regardless of whether an
**exception** is thrown.

```dart
// GOOD: This approach is safe and convenient.
String createGUID() {
  final pGuid = loggingCalloc<GUID>();
  // highlight-next-line
  try {
    final hr = CoCreateGuid(pGuid);
    if (FAILED(hr)) throw WindowsException(hr);
    return pGuid.ref.toString();
  // highlight-next-line
  } finally {
    free(pGuid);
  }
}
```

In the above example, `free` will be called regardless of whether
`CoCreateGuid()` fails or not. There's no need to **allocate** the result to a
separate string before returning, as the `finally` block ensures **proper
cleanup** at the **appropriate time**.

## The `using` pattern

For simpler methods, the `try`/`finally` pattern works well. But as you add more
manually-allocated objects, this approach becomes more **unwieldy**.

For example, consider this function, which queries Windows for the **timestamp**
when the currently-running process was created:

```dart title="process.dart"
import 'dart:ffi';

import 'package:ffi/ffi.dart';
import 'package:win32/win32.dart';

DateTime processCreationTime() {
  final hProcess = GetCurrentProcess();
  final pCreationTime = loggingCalloc<FILETIME>();
  final pExitTime = loggingCalloc<FILETIME>();
  final pKernelTime = loggingCalloc<FILETIME>();
  final pUserTime = loggingCalloc<FILETIME>();
  final pCreationSystemTime = loggingCalloc<SYSTEMTIME>();

  try {
    // Retrieve timing information for the current process.
    var hr = GetProcessTimes(
        hProcess, pCreationTime, pExitTime, pKernelTime, pUserTime);
    if (FAILED(hr)) throw WindowsException(hr);

    // Convert to UTC.
    hr = FileTimeToSystemTime(pCreationTime, pCreationSystemTime);
    if (FAILED(hr)) throw WindowsException(hr);
    final SYSTEMTIME(:wYear, :wMonth, :wDay, :wHour, :wMinute, :wSecond) =
        pCreationSystemTime.ref;
    return DateTime.utc(wYear, wMonth, wDay, wHour, wMinute, wSecond).toLocal();
  } finally {
    free(pCreationTime);
    free(pExitTime);
    free(pKernelTime);
    free(pUserTime);
    free(pCreationSystemTime);
  }
}
```

There are two problems with this code. Firstly, each variable has to be
individually **freed**. Secondly, the variable `pCreationSystemTime` has to be
allocated even if the first call fails. This can be a nuisance in larger
methods.

An alternative approach is to use the [`using`][using] pattern with an
[`Arena`][Arena] object, which is a memory allocator that tracks memory
allocations and automatically releases them when the `using` scope ends.

Here's the same function written this way:

```dart
DateTime processCreationTime() {
  return using((arena) {
    final hProcess = GetCurrentProcess();
    final pCreationTime = arena<FILETIME>();
    final pExitTime = arena<FILETIME>();
    final pKernelTime = arena<FILETIME>();
    final pUserTime = arena<FILETIME>();

    // Retrieve timing information for the current process.
    var hr = GetProcessTimes(
        hProcess, pCreationTime, pExitTime, pKernelTime, pUserTime);
    if (FAILED(hr)) throw WindowsException(hr);

    // Convert to UTC.
    final pCreationSystemTime = arena<SYSTEMTIME>();
    hr = FileTimeToSystemTime(pCreationTime, pCreationSystemTime);
    if (FAILED(hr)) throw WindowsException(hr);
    final SYSTEMTIME(:wYear, :wMonth, :wDay, :wHour, :wMinute, :wSecond) =
        pCreationSystemTime.ref;
    return DateTime.utc(wYear, wMonth, wDay, wHour, wMinute, wSecond).toLocal();
  });
}
```

In the above code, the need for individual `free` calls is dispensed with. When
the `using` scope ends, the **arena** releases all the variables that have been
allocated. `Arena`s can also be **nested** or **shared** across functions, which
can be useful when you need greater control over the **lifetime** of
manually-allocated **memory**.

:::tip

The `.toNativeUtf16()` String extension method supports passing a
**custom allocator**, making it compatible with `Arena`s:

```dart
final pTitle = 'Window title'.toNativeUtf16(allocator: arena);
```

:::

<CommonViewSourceCode href="https://github.com/halildurmus/win32/blob/main/examples/process.dart" />

[Arena]: https://pub.dev/documentation/ffi/latest/ffi/Arena-class.html
[CoCreateGuid]: https://learn.microsoft.com/windows/win32/api/combaseapi/nf-combaseapi-cocreateguid
[using]: https://pub.dev/documentation/ffi/latest/ffi/using.html
