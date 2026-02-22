---
title: Leak Tracking
---

[`package:ffi_leak_tracker`][package:ffi_leak_tracker] helps you find and
diagnose native memory leaks in Dart FFI code by tracking allocations made
through its custom allocators.

It is designed to answer one question precisely:

> Which native allocations made from Dart were never freed, and where were they
> allocated?

When enabled, the leak tracker records every allocation made through its
allocators — capturing the size, type, call stack, and timestamp — and can
report any that were not freed.

A few things worth knowing upfront:

* Tracking is **opt-in** and disabled by default
* In **release** builds, adaptive allocators compile away to
  [`calloc()`][calloc] / [`malloc()`][malloc] from [`package:ffi`][package:ffi]
  with **zero-overhead**
* Only allocations made through `package:ffi_leak_tracker` allocators are
  tracked — allocations via `calloc()` / `malloc()` directly are invisible
  to the tracker

## Allocators

`package:ffi_leak_tracker` provides four allocators:

| Allocator                              | Zeroes memory | Release build                      |
| :------------------------------------: | :-----------: | :--------------------------------: |
| [`adaptiveCalloc`][adaptiveCalloc]     | ✓             | compile away to [`calloc`][calloc] |
| [`adaptiveMalloc`][adaptiveMalloc]     | ✗             | compile away to [`malloc`][malloc] |
| [`diagnosticCalloc`][diagnosticCalloc] | ✓             | retains tracking                   |
| [`diagnosticMalloc`][diagnosticMalloc] | ✗             | retains tracking                   |

**Adaptive allocators** are the right default for application code. They
participate in leak tracking in **debug** and **profile** builds and disappear
entirely in **release** builds.

**Diagnostic allocators** retain tracking regardless of build mode. Use them
only when you need to investigate leaks that reproduce exclusively in
**release** builds — they introduce measurable overhead and should not be used
as general-purpose allocators.

## Enabling Tracking

Leak tracking **must be explicitly enabled** before any allocations you want to
track are made. Allocations performed before tracking is enabled are not
retroactively recorded.

### Globally

Call [`LeakTracker.enable()`][enable] early in your program to enable tracking
for the entire runtime:

```dart
void main() {
  // highlight-next-line
  LeakTracker.enable();
  // ... rest of your code
}
```

To enable only in **debug** and **profile** builds — which is the recommended
approach for most applications — use
[`LeakTracker.enableInDebug()`][enableInDebug]:

```dart
void main() {
  // highlight-next-line
  LeakTracker.enableInDebug();
  // ... rest of your code
}
```

This is equivalent to wrapping `enable()` in a `!kReleaseMode` check and ensures
adaptive allocators **compile away cleanly in release builds**.

To stop recording allocations, call [`LeakTracker.disable()`][disable].
To query the current state, read [`LeakTracker.enabled`][enabled].

### Scoped (`Zone`s)

To isolate tracking to a specific operation — such as a single test or
benchmark — use [`LeakTracker.runScoped()`][runScoped]:

```dart
LeakTracker.runScoped(() {
  // Only allocations made here are tracked.
  final ptr = adaptiveCalloc<Int32>();
  adaptiveCalloc.free(ptr);
});
```

Tracking is automatically enabled for the duration of the callback and the scope
maintains its own independent registry, isolated from any outer tracking
context. An optional `filter` parameter lets you suppress specific allocations
within the scope.

## Reporting Leaks

To emit a report of outstanding allocations at any point, call
[`LeakTracker.emit()`][emit]:

```dart
void main() {
  LeakTracker.enable();
  // ... rest of your code
  // highlight-next-line
  LeakTracker.emit();
}
```

By default this prints to the console. You can pass a custom
[`LeaksEmitter`][LeaksEmitter] to redirect output — for example to a file in
JSON format, a logging framework, or a test reporter:

```dart
LeakTracker.emit(emitter: const .json('leaks.json'));

// Or with a custom emitter implementation:
LeakTracker.emit(emitter: const MyCustomEmitter());
```

`LeakTracker.emit()` does not clear the registry. To clear the registry, call
[`LeakTracker.reset()`][reset].

To assert that no leaks are present — for example in a test — use
[`LeakTracker.verifyNoLeaks()`][verifyNoLeaks], which throws a
`LeakTrackerException` if any tracked allocations remain outstanding.

To perform this check only in **debug** and **profile** builds, use
[`LeakTracker.verifyNoLeaksInDebug()`][verifyNoLeaksInDebug]:

```dart
void main() {
  LeakTracker.enableInDebug();
  // ... rest of your code
  // highlight-next-line
  LeakTracker.verifyNoLeaksInDebug();
}
```

And here's how you might use it in a test:

```dart
import 'dart:ffi';

import 'package:ffi_leak_tracker/ffi_leak_tracker.dart';
import 'package:test/test.dart';

void main() {
  // highlight-next-line
  setUpAll(LeakTracker.enableInDebug);

  // highlight-next-line
  setUp(LeakTracker.reset);

  // highlight-next-line
  tearDown(LeakTracker.verifyNoLeaksInDebug);

  test('my native memory test', () {
    final ptr = adaptiveCalloc<Int32>();
    // ... test code
    adaptiveCalloc.free(ptr);
  });

  // ... more tests
}
```

This will automatically enable tracking for all tests, reset the registry before
each test, and verify that no leaks remain after each test — without any
boilerplate in the tests themselves.

## How It Works

1. An allocation is made through a `package:ffi_leak_tracker` allocator after
   tracking is enabled
2. The allocator registers the allocation with the leak tracker, recording its
   address, size, type, timestamp, and current call stack
3. When the memory is freed via the same allocator's `free()`, the tracker
   removes the record from its registry
4. When `LeakTracker.emit()` or `LeakTracker.verifyNoLeaks()` is called, any
   allocation still present in the tracker's registry is reported as a leak

## Example

```dart
import 'dart:ffi';

import 'package:ffi_leak_tracker/ffi_leak_tracker.dart';

void main() {
  // Enable tracking only in debug/profile builds.
  LeakTracker.enableInDebug();

  print('Allocating memory without freeing it...');
  final ptr = adaptiveCalloc<Int32>();

  // Fix the leak by uncommenting:
  // adaptiveCalloc.free(ptr);

  print('Verifying for leaks...');

  // In debug builds this throws if any allocations remain.
  LeakTracker.verifyNoLeaksInDebug();

  print('No leaks detected.');
}
```

[package:ffi_leak_tracker]: https://pub.dev/packages/ffi_leak_tracker
[package:ffi]: https://pub.dev/packages/ffi
[calloc]: https://pub.dev/documentation/ffi/latest/ffi/calloc-constant.html
[malloc]: https://pub.dev/documentation/ffi/latest/ffi/malloc-constant.html
[adaptiveCalloc]: https://pub.dev/documentation/ffi_leak_tracker/latest/ffi_leak_tracker/adaptiveCalloc-constant.html
[adaptiveMalloc]: https://pub.dev/documentation/ffi_leak_tracker/latest/ffi_leak_tracker/adaptiveMalloc-constant.html
[diagnosticCalloc]: https://pub.dev/documentation/ffi_leak_tracker/latest/ffi_leak_tracker/diagnosticCalloc-constant.html
[diagnosticMalloc]: https://pub.dev/documentation/ffi_leak_tracker/latest/ffi_leak_tracker/diagnosticMalloc-constant.html
[enable]: https://pub.dev/documentation/ffi_leak_tracker/latest/ffi_leak_tracker/LeakTracker/enable.html
[enableInDebug]: https://pub.dev/documentation/ffi_leak_tracker/latest/ffi_leak_tracker/LeakTracker/enableInDebug.html
[disable]: https://pub.dev/documentation/ffi_leak_tracker/latest/ffi_leak_tracker/disableLeakTracking.html
[enabled]: https://pub.dev/documentation/ffi_leak_tracker/latest/ffi_leak_tracker/LeakTracker/enabled.html
[runScoped]: https://pub.dev/documentation/ffi_leak_tracker/latest/ffi_leak_tracker/LeakTracker/runScoped.html
[emit]: https://pub.dev/documentation/ffi_leak_tracker/latest/ffi_leak_tracker/LeakTracker/emit.html
[LeaksEmitter]: https://pub.dev/documentation/ffi_leak_tracker/latest/ffi_leak_tracker/LeaksEmitter.html
[reset]: https://pub.dev/documentation/ffi_leak_tracker/latest/ffi_leak_tracker/LeakTracker/reset.html
[verifyNoLeaks]: https://pub.dev/documentation/ffi_leak_tracker/latest/ffi_leak_tracker/LeakTracker/verifyNoLeaks.html
[verifyNoLeaksInDebug]: https://pub.dev/documentation/ffi_leak_tracker/latest/ffi_leak_tracker/LeakTracker/verifyNoLeaksInDebug.html
