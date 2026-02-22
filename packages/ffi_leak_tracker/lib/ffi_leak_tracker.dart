/// Allocation tracking and leak detection for Dart FFI code.
///
/// Provides allocators that record metadata — size, type, timestamp, and call
/// stack — for every native allocation. Recorded allocations can be inspected
/// programmatically, asserted to be leak-free, or emitted as diagnostic
/// reports.
///
/// | Allocator          | Zeroes memory | Release build            |
/// | :----------------: | :-----------: | :----------------------: |
/// | `adaptiveCalloc`   | ✓             | compile away to `calloc` |
/// | `adaptiveMalloc`   | ✗             | compile away to `malloc` |
/// | `diagnosticCalloc` | ✓             | retains tracking         |
/// | `diagnosticMalloc` | ✗             | retains tracking         |
///
/// Prefer the adaptive allocators in application code. Use the diagnostic
/// variants only when tracking must remain active in release builds.
library;

export 'src/allocation.dart';
export 'src/emitter.dart';
export 'src/exception.dart';
export 'src/filter.dart';
export 'src/leak_tracker.dart';
