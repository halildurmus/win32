---
title: Leak Tracking
---

[`package:ffi_leak_tracker`][package:ffi_leak_tracker] helps you find and
diagnose native memory leaks in Dart FFI code. It tracks allocations made
through its custom allocators and answers one question precisely:

> Which native allocations made from Dart were never freed, and where were they
> allocated?

When enabled, the tracker records every allocation — capturing the address,
size, type, call stack, and timestamp — and can report any that were never
freed.

A few things worth knowing upfront:

* Tracking is **opt-in** and off by default
* In **release** builds, adaptive allocators compile away to
  [`calloc()`][calloc] / [`malloc()`][malloc] with **zero-overhead**
* Only allocations made through `package:ffi_leak_tracker` allocators are
  tracked; — calls to `calloc()` / `malloc()` directly are not visible to the
  tracker.

## Allocators

`package:ffi_leak_tracker` provides four allocators:

| Allocator                              | Zeroes memory | Release build                      |
| :------------------------------------: | :-----------: | :--------------------------------: |
| [`adaptiveCalloc`][adaptiveCalloc]     | ✓             | compile away to [`calloc`][calloc] |
| [`adaptiveMalloc`][adaptiveMalloc]     | ✗             | compile away to [`malloc`][malloc] |
| [`diagnosticCalloc`][diagnosticCalloc] | ✓             | retains tracking                   |
| [`diagnosticMalloc`][diagnosticMalloc] | ✗             | retains tracking                   |

**Adaptive allocators** are the right default for most code They participate in
leak tracking in **debug** and **profile** builds and disappear entirely in
**release** builds, so there is no overhead.

**Diagnostic allocators** retain tracking in all build modes. Use them only when
you need to investigate leaks that reproduce exclusively in **release** builds
— they carry measurable overhead and are not suitable as general-purpose
allocators.

## Enabling Tracking

Importing `package:ffi_leak_tracker` and using its allocators does not
automatically start tracking. This lets you control exactly when tracking is
active and avoid recording allocations you don't care about.

### Globally

Call [`LeakTracker.enable()`][enable] early in your program to enable tracking
for the entire process lifetime:

```dart
void main() {
  // highlight-next-line
  LeakTracker.enable();
  // ... rest of your code
}
```

For most applications, you only want tracking in **debug** and **profile**
builds. Use [`LeakTracker.enableInDebug()`][enableInDebug] instead — it is
tree-shaken away in **release** builds and is equivalent to wrapping
`LeakTracker.enable()` in a `!kReleaseMode` guard:

```dart
void main() {
  // highlight-next-line
  LeakTracker.enableInDebug();
  // ... rest of your code
}
```

To stop recording, call [`LeakTracker.disable()`][disable]. To query the current
state, read [`LeakTracker.enabled`][enabled].

### Scoped Tracking

To isolate tracking to a specific operation — such as a single test or
benchmark — use [`LeakTracker.runScoped()`][runScoped]:

```dart
LeakTracker.runScoped(() {
  // Only allocations made inside this callback are tracked.
  final ptr = adaptiveCalloc<Int32>();
  adaptiveCalloc.free(ptr);
});
```

Tracking is automatically enabled for the duration of the callback. The scope
maintains its own isolated registry, independent of any outer tracking context.
An optional `filter` parameter lets you suppress specific allocations within
the scope.

## Reporting Leaks

Call [`LeakTracker.emit()`][emit] at any point to print outstanding (un-freed)
allocations:

```dart
void main() {
  LeakTracker.enableInDebug();
  // ... rest of your code
  // highlight-next-line
  LeakTracker.emit();
}
```

By default, output goes to the console. Pass a custom
[`LeaksEmitter`][LeaksEmitter] to redirect it — for example, to a JSON file,
a logging framework, or a test reporter:

```dart
LeakTracker.emit(emitter: const .json('leaks.json'));

// Or with a fully custom emitter:
LeakTracker.emit(emitter: const MyCustomEmitter());
```

`LeakTracker.emit()` does not clear the registry. To reset it, call
[`LeakTracker.reset()`][reset].

To assert that no leaks are present — and throw a `LeakTrackerException` if
any tracked allocations remain — use
[`LeakTracker.verifyNoLeaks()`][verifyNoLeaks]. The debug-only variant,
[`LeakTracker.verifyNoLeaksInDebug()`][verifyNoLeaksInDebug], is a no-op in
release builds:

```dart
void main() {
  LeakTracker.enableInDebug();
  // ... rest of your code
  // highlight-next-line
  LeakTracker.verifyNoLeaksInDebug();
}
```

### Leak Detection in Tests

The snippet below enables tracking for an entire test suite, resets the
registry before each test, and asserts no leaks remain after each test — with
no boilerplate required in the tests themselves:

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

## How It Works

1. An allocation is made through a `package:ffi_leak_tracker` allocator while
   tracking is enabled.
2. The allocator registers the allocation with the tracker, recording its
   address, size, type, timestamp, and current call stack.
3. When the memory is freed via the same allocator's `free()`, the tracker
   removes the record from its registry.
4. When `LeakTracker.emit()` or `LeakTracker.verifyNoLeaks()` is called, any
   allocation still present in the registry is reported as a leak.

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
