import 'dart:ffi';
import 'dart:typed_data';

import 'package:ffi/ffi.dart';

import '../allocator.dart';
import '../utils.dart';

/// Extension on [Uint8List] to convert `Uint8List`s to native memory pointers.
extension Uint8ListToUint8Pointer on Uint8List {
  /// Converts this [Uint8List] to a `Pointer<Uint8>` in native memory.
  ///
  /// This method allocates a block of native memory and copies the contents
  /// of the list into it. The list must not be empty.
  ///
  /// The caller is responsible for freeing the allocated memory when it is no
  /// longer needed. This can be done by calling the [free] function.
  /// Optionally, a custom [allocator] (e.g., [Arena]) can be used for scoped
  /// memory management.
  ///
  /// Example:
  /// ```dart
  /// final list = Uint8List.fromList(const [1, 2, 3]);
  /// final pointer = list.toNative();
  /// // Use the pointer in native operations...
  /// free(pointer); // Don't forget to free the allocated memory.
  /// ```
  Pointer<Uint8> toNative({Allocator allocator = loggingMalloc}) {
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
