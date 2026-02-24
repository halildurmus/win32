part of 'leak_tracker.dart';

/// A zero-initializing allocator that compile away to [calloc] in release
/// builds.
///
/// - In **debug and profile builds**, this allocator records allocation
///   metadata when leak tracking is enabled. It integrates with the leak
///   tracker to record allocation metadata so that native memory leaks can be
///   detected and reported.
/// - In **release builds**, it aliases directly to [calloc] with zero runtime
///   overhead.
///
/// Platform behavior:
/// - **Windows:** uses `CoTaskMemAlloc` / `CoTaskMemFree`
/// - **POSIX:** uses `calloc` / `free`
///
/// This is the recommended allocator for Win32 interop. Prefer it over
/// [adaptiveMalloc] unless the native API you are calling fully overwrites
/// the allocated buffer and initialization overhead is measurable.
///
/// Use [diagnosticCalloc] instead if you need leak tracking to remain active
/// in release builds.
const Allocator adaptiveCalloc = isReleaseMode ? calloc : diagnosticCalloc;

/// A non-zero-initializing allocator that compile away to [malloc] in release
/// builds.
///
/// - In **debug and profile builds**, this allocator records allocation
///   metadata when leak tracking is enabled. It integrates with the leak
///   tracker to record allocation metadata so that native memory leaks can be
///   detected and reported.
/// - In **release builds**, it aliases directly to [malloc] with zero runtime
///   overhead.
///
/// Platform behavior:
/// - **Windows:** uses `CoTaskMemAlloc` / `CoTaskMemFree`
/// - **POSIX:** uses `malloc` / `free`
///
/// Prefer this over [adaptiveCalloc] only when the native API you are calling
/// fully overwrites the allocated buffer and initialization overhead is
/// measurable. Otherwise, [adaptiveCalloc] is safer because it guarantees
/// zero-initialized memory.
///
/// Use [diagnosticMalloc] instead if you need leak tracking to remain active
/// in release builds.
const Allocator adaptiveMalloc = isReleaseMode ? malloc : diagnosticMalloc;

/// A zero-initializing allocator that always retains leak-tracking capability.
///
/// Unlike [adaptiveCalloc], this allocator is never optimized away in release
/// builds. It records allocation metadata with the leak tracker in every build
/// mode whenever leak tracking is enabled.
///
/// Platform behavior:
/// - **Windows:** uses `CoTaskMemAlloc` / `CoTaskMemFree`
/// - **POSIX:** uses `calloc` / `free`
///
/// This allocator is intended for explicit diagnostic scenarios — for example,
/// when investigating memory issues that only reproduce in release builds.
/// Avoid using it as a general-purpose allocator in performance-sensitive code.
const diagnosticCalloc = DiagnosticCallocAllocator._();

/// A non-zero-initializing allocator that always retains leak-tracking
/// capability.
///
/// Unlike [adaptiveMalloc], this allocator is never optimized away in release
/// builds. It records allocation metadata with the leak tracker in every build
/// mode whenever leak tracking is enabled.
///
/// Platform behavior:
/// - **Windows:** uses `CoTaskMemAlloc` / `CoTaskMemFree`
/// - **POSIX:** uses `malloc` / `free`
///
/// This allocator is intended for explicit diagnostic scenarios — for example,
/// when investigating memory issues that only reproduce in release builds.
/// Avoid using it as a general-purpose allocator in performance-sensitive code.
const diagnosticMalloc = DiagnosticMallocAllocator._();

/// Base class for allocators that integrate with the leak tracker.
///
/// Concrete subclasses allocate native memory using platform-appropriate APIs
/// and register allocation metadata for leak analysis when leak tracking is
/// enabled.
///
/// Exposes [nativeFree] so that a [NativeFinalizer] can automatically release
/// memory if the owning Dart object is garbage collected before [free] is
/// called manually.
sealed class TrackingAllocator implements Allocator {
  const TrackingAllocator._();

  /// A pointer to the native free function used by this allocator.
  ///
  /// Pass this to a [NativeFinalizer] to ensure memory is released
  /// automatically if the owning Dart object is garbage collected before [free]
  /// is called. This acts as a safety net against leaks when explicit disposal
  /// is not guaranteed.
  Pointer<NativeFinalizerFunction> get nativeFree;
}

/// A zero-initializing [TrackingAllocator].
///
/// Allocated memory is always zeroed before it is returned. Integrates with
/// the leak tracker to record allocation metadata when leak tracking is
/// enabled.
///
/// Platform behavior:
/// - **Windows:** uses `CoTaskMemAlloc` / `CoTaskMemFree`
/// - **POSIX:** uses `calloc` / `free`
///
/// Obtain an instance via [diagnosticCalloc]. Do not instantiate directly.
final class DiagnosticCallocAllocator implements TrackingAllocator {
  const DiagnosticCallocAllocator._();

  @override
  Pointer<T> allocate<T extends NativeType>(int byteCount, {int? alignment}) {
    final Pointer<T> result;
    if (Platform.isWindows) {
      result = CoTaskMemAlloc(byteCount).cast();
    } else {
      result = posixCalloc(byteCount, 1).cast();
    }

    if (result.address == 0) {
      throw ArgumentError('Failed to allocate $byteCount bytes.');
    }

    fillMemory(result, byteCount, 0);

    if (!LeakTracker.enabled) return result;

    final stack = formatStackTrace(StackTrace.current.toString());
    LeakTracker._registerAllocation(
      Allocation(
        address: result.address,
        size: byteCount,
        type: '$T',
        stack: stack,
        timestamp: .now(),
      ),
    );

    return result;
  }

  @override
  void free(Pointer pointer) {
    if (pointer.address == 0) {
      throw ArgumentError('Cannot free a null pointer.');
    }

    if (LeakTracker.enabled) {
      LeakTracker._unregisterAllocation(pointer);
    }

    if (Platform.isWindows) {
      CoTaskMemFree(pointer);
    } else {
      posixFree(pointer);
    }
  }

  @override
  Pointer<NativeFinalizerFunction> get nativeFree =>
      Platform.isWindows ? coTaskMemFreeAddress : posixFreeAddress;
}

/// A non-zero-initializing [TrackingAllocator].
///
/// Memory is not zeroed before it is returned. Integrates with the leak
/// tracker to record allocation metadata when leak tracking is enabled.
///
/// Platform behavior:
/// - **Windows:** uses `CoTaskMemAlloc` / `CoTaskMemFree`
/// - **POSIX:** uses `malloc` / `free`
///
/// Obtain an instance via [diagnosticMalloc]. Do not instantiate directly.
final class DiagnosticMallocAllocator implements TrackingAllocator {
  const DiagnosticMallocAllocator._();

  @override
  Pointer<T> allocate<T extends NativeType>(int byteCount, {int? alignment}) {
    final Pointer<T> result;
    if (Platform.isWindows) {
      result = CoTaskMemAlloc(byteCount).cast();
    } else {
      result = posixMalloc(byteCount).cast();
    }

    if (result.address == 0) {
      throw ArgumentError('Failed to allocate $byteCount bytes.');
    }

    if (!LeakTracker.enabled) return result;

    final stack = formatStackTrace(StackTrace.current.toString());
    LeakTracker._registerAllocation(
      Allocation(
        address: result.address,
        size: byteCount,
        type: '$T',
        stack: stack,
        timestamp: .now(),
      ),
    );

    return result;
  }

  @override
  void free(Pointer pointer) {
    if (pointer.address == 0) {
      throw ArgumentError('Cannot free a null pointer.');
    }

    if (LeakTracker.enabled) {
      LeakTracker._unregisterAllocation(pointer);
    }

    if (Platform.isWindows) {
      CoTaskMemFree(pointer);
    } else {
      posixFree(pointer);
    }
  }

  @override
  Pointer<NativeFinalizerFunction> get nativeFree =>
      Platform.isWindows ? coTaskMemFreeAddress : posixFreeAddress;
}

/// Extends any [Allocator] with a [nativeFree] pointer.
extension AllocatorExtensions on Allocator {
  /// A pointer to the platform's native free function.
  ///
  /// Pass this to a [NativeFinalizer] to ensure memory is released
  /// automatically if the owning Dart object is garbage collected before
  /// [free] is called.
  Pointer<NativeFinalizerFunction> get nativeFree =>
      Platform.isWindows ? coTaskMemFreeAddress : posixFreeAddress;
}
