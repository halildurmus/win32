import 'dart:ffi';

import '../constants.dart' show NULL;

/// Extension on [Pointer] providing minimal, low-level pointer utilities.
extension PointerExtension on Pointer {
  /// Returns `true` if this pointer is [NULL].
  ///
  /// A pointer is considered `NULL` when its [address] is equal to `0`.
  @pragma('vm:prefer-inline')
  bool get isNull => address == NULL;

  /// Returns `true` if this pointer is not [NULL].
  ///
  /// A pointer is considered not `NULL` when its [address] is not equal to `0`.
  @pragma('vm:prefer-inline')
  bool get isNotNull => address != NULL;
}
