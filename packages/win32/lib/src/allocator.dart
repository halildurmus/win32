import 'dart:ffi';

import 'package:ffi/ffi.dart' show calloc, malloc;

import '_internal/win32.dart';
import 'macros.dart';
import 'win32/ole32.g.dart';

/// Whether the current build is in debug mode.
const _isDebugMode = !bool.fromEnvironment('dart.vm.product');

/// Allocator for logging allocations in debug mode, defaults to [calloc]
/// otherwise.
const loggingCalloc = _isDebugMode ? LoggingCallocAllocator._() : calloc;

/// Allocator for logging allocations in debug mode, defaults to [malloc]
/// otherwise.
const loggingMalloc = _isDebugMode ? LoggingMallocAllocator._() : malloc;

/// Logging allocator that uses [CoTaskMemAlloc] and logs allocations.
final class LoggingCallocAllocator implements Allocator {
  const LoggingCallocAllocator._();

  @override
  Pointer<T> allocate<T extends NativeType>(int byteCount, {int? alignment}) {
    final result = CoTaskMemAlloc(byteCount).cast<T>();
    if (result.address == 0) {
      throw ArgumentError('Failed to allocate $byteCount bytes.');
    }
    FillMemory(result, byteCount, 0);
    _logAllocation(result, byteCount);
    return result;
  }

  @override
  void free(Pointer pointer) {
    if (pointer.address == 0) {
      throw ArgumentError('Cannot free a null pointer.');
    }
    CoTaskMemFree(pointer);
    unregisterAllocation(pointer);
  }

  Pointer<NativeFinalizerFunction> get nativeFree => coTaskMemFreeAddress;
}

/// Logging allocator that uses [CoTaskMemAlloc] and logs allocations.
final class LoggingMallocAllocator implements Allocator {
  const LoggingMallocAllocator._();

  @override
  Pointer<T> allocate<T extends NativeType>(int byteCount, {int? alignment}) {
    final result = CoTaskMemAlloc(byteCount).cast<T>();
    if (result.address == 0) {
      throw ArgumentError('Failed to allocate $byteCount bytes.');
    }
    _logAllocation(result, byteCount);
    return result;
  }

  @override
  void free(Pointer pointer) {
    if (pointer.address == 0) {
      throw ArgumentError('Cannot free a null pointer.');
    }
    CoTaskMemFree(pointer);
    unregisterAllocation(pointer);
  }

  Pointer<NativeFinalizerFunction> get nativeFree => coTaskMemFreeAddress;
}

/// Logs an allocation by registering its details.
void _logAllocation<T extends NativeType>(Pointer<T> pointer, int byteCount) =>
    registerAllocation(pointer, byteCount);
