---
title: Memory Management Patterns
---

Allocating native memory is straightforward. **Managing its lifetime correctly**
is not.

For most Win32 interop code,
**scope-based lifetime management with `Arena` should be the default**.
Manual calls to [`free()`][free] are a lower-level escape hatch for cases where
memory must outlive a lexical scope.

## Manual Lifetime Management with `try` / `finally` Blocks

At the lowest level, native memory must be freed explicitly.

> This pattern is **correct but low-level**, and should be reserved for cases
> where scope-based lifetime management is not viable.

The most basic safe pattern uses `try` / `finally` blocks, ensuring cleanup
happens regardless of success or failure:

```dart title="customtitlebar.dart"
bool isWindowMaximized(HWND hWnd) {
  final windowPlacement = adaptiveCalloc<WINDOWPLACEMENT>()
    ..ref.length = sizeOf<WINDOWPLACEMENT>();
  // highlight-next-line
  try {
    final Win32Result(:value, :error) = GetWindowPlacement(
      hWnd,
      windowPlacement,
    );
    if (!value) throw WindowsException(error.toHRESULT());
    return windowPlacement.ref.showCmd == SW_SHOWMAXIMIZED;
  // highlight-next-line
  } finally {
    free(windowPlacement);
  }
}
```

<CommonViewSourceCode href="https://github.com/halildurmus/win32/blob/main/examples/customtitlebar.dart" />

This approach is **correct** and **exception-safe**. However, it does not scale
well.

As the number of allocations grows:

* Cleanup code becomes verbose
* Control flow becomes harder to reason about
* Missing a single `free()` introduces a leak

For anything beyond trivial cases, a higher-level pattern is strongly preferred.

## Scope-based Lifetime Management with `Arena` (Recommended)

An [`Arena`][Arena] tracks all allocations made through it and releases them
automatically when the scope exits:

**Benefits**:

* Cleanup is automatic and exception-safe
* Error paths require no special handling
* Ownership and lifetimes are explicit in the code structure

Example:

```dart title="process.dart"
DateTime processCreationTime() {
  // highlight-next-line
  return using((arena) {
    final hProcess = GetCurrentProcess();
    final pCreationTime = arena<FILETIME>();
    final pExitTime = arena<FILETIME>();
    final pKernelTime = arena<FILETIME>();
    final pUserTime = arena<FILETIME>();

    var Win32Result(:value, :error) = GetProcessTimes(
      hProcess,
      pCreationTime,
      pExitTime,
      pKernelTime,
      pUserTime,
    );
    if (!value) throw WindowsException(error.toHRESULT());

    final pCreationSystemTime = arena<SYSTEMTIME>();
    Win32Result(:value, :error) = FileTimeToSystemTime(
      pCreationTime,
      pCreationSystemTime,
    );
    if (!value) throw WindowsException(error.toHRESULT());

    final SYSTEMTIME(:wYear, :wMonth, :wDay, :wHour, :wMinute, :wSecond) =
        pCreationSystemTime.ref;
    return DateTime.utc(wYear, wMonth, wDay, wHour, wMinute, wSecond).toLocal();
  });
}
```

<CommonViewSourceCode href="https://github.com/halildurmus/win32/blob/main/examples/process.dart" />

:::danger

Never store `Arena`-allocated pointers in fields, globals, or closures that may
outlive the [`using()`][using] scope.

Doing so creates dangling pointers that can appear to work and then fail
unpredictably.

:::

## Modeling Multiple Lifetimes with Nested `Arena`s

An `Arena` defines a **single lifetime boundary**. In some cases, that boundary
is too coarse.

Nested arenas allow you to introduce **shorter-lived sub-scopes** inside a
larger allocation context:

```dart
// highlight-next-line
using((outerArena) {
  final globalPtr = outerArena<DWORD>();

  // highlight-next-line
  using((innerArena) {
    final temp = innerArena<DWORD>();
    // temp is valid only within this block
  }); // temp freed here

  // globalPtr remains valid
}); // globalPtr freed here
```

Each `using()` call creates an **independent** arena with its own lifetime.

This pattern is useful when temporary allocations would otherwise accumulate
until the end of a long-running scope.

## Selecting an Allocation Strategy

**Use `Arena` when**:

* The lifetime fits within a lexical scope
* Allocations are temporary or function-local
* You want exception safety by default

**Use manual allocation when**:

* Memory must outlive a function call
* State is global or shared
* You are making allocations in a tight loop and need to minimize overhead

Both approaches can be mixed safely:

```dart
late final Pointer<WCHAR> globalBuffer;

void setup() {
  globalBuffer = adaptiveCalloc<WCHAR>(1024);
}

void process() {
  using((arena) {
    final temp = arena<DWORD>();
    copyToBuffer(temp, globalBuffer);
  });
}

void cleanup() {
  free(globalBuffer);
}
```

:::tip

If you observe unexplained native memory growth, see [Leak Tracking] for runtime
detection of leaked allocations.

:::

[free]: https://pub.dev/documentation/win32/latest/win32/free.html
[Arena]: https://pub.dev/documentation/ffi/latest/ffi/Arena-class.html
[using]: https://pub.dev/documentation/ffi/latest/ffi/using.html
[leak tracking]: /docs/advanced/leak-tracking
