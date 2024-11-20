import 'dart:ffi';

/// Extension on [Pointer] to provide utility methods for working with pointers.
extension PointerExtension on Pointer {
  /// Checks whether the pointer is `NULL` (i.e., its [address] equals to `0`).
  @pragma('vm:prefer-inline')
  bool get isNull => address == 0;
}
