import 'dart:ffi';
import 'dart:typed_data';

import 'package:ffi/ffi.dart';
import 'package:ffi_leak_tracker/ffi_leak_tracker.dart';

import '../utils.dart';

/// Extension on [Uint8List] for copying byte buffers into native memory.
///
/// This is a **deep copy** operation. The returned pointer owns an independent
/// block of native memory whose lifetime is not tied to the Dart object.
extension Uint8ListToUint8Pointer on Uint8List {
  /// Copies this [Uint8List] into a newly allocated `Pointer<Uint8>`.
  ///
  /// A block of native memory of size `length` bytes is allocated and populated
  /// with the contents of this list.
  ///
  /// The list **must not be empty**. An empty list cannot be represented as a
  /// valid native buffer.
  ///
  /// The returned pointer is owned by the caller.
  /// - If allocated with the default allocator, it must be released with
  ///   [free].
  /// - If an [Arena] or custom allocator is provided, the memory is released
  ///   according to that allocator’s rules.
  ///
  /// Example:
  /// ```dart
  /// using((arena) {
  ///   final bytes = Uint8List.fromList([1, 2, 3, 4]);
  ///   final ptr = bytes.toNative(allocator: arena);
  ///   // ptr is valid only within this scope
  /// });
  /// ```
  Pointer<Uint8> toNative({Allocator allocator = adaptiveMalloc}) {
    if (isEmpty) {
      throw ArgumentError.value(
        this,
        'Uint8List',
        'Cannot convert an empty list to native memory',
      );
    }

    final ptr = allocator<Uint8>(length);
    ptr.asTypedList(length).setAll(0, this);
    return ptr;
  }
}
