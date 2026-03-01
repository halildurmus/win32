import 'dart:convert';
import 'dart:ffi';

import 'package:ffi/ffi.dart';
import 'package:ffi_leak_tracker/ffi_leak_tracker.dart';

import 'types.dart';
import 'utils.dart';

/// A strongly-typed wrapper around a Win32 `PCSTR`.
///
/// `PCSTR` is commonly used by legacy Win32 APIs to represent immutable,
/// null-terminated string of 8-bit Windows (ANSI) characters.
extension type const PCSTR(Pointer<Utf8> _) implements Pointer<Utf8> {
  /// The length of this string in bytes, not including the terminating NUL
  /// character.
  @pragma('vm:prefer-inline')
  int get byteLength => length;

  /// Whether this string is empty.
  @pragma('vm:prefer-inline')
  bool get isEmpty => length == 0;

  /// The number of bytes in this string, excluding the terminating NUL
  /// character.
  ///
  /// This performs a linear scan until the first NUL byte.
  int get length {
    final ptr = cast<BYTE>();
    var length = 0;
    while (ptr[length] != 0) {
      length++;
    }
    return length;
  }

  /// Creates a deep copy of this string into newly allocated native memory.
  ///
  /// The returned pointer is owned by the caller.
  /// - If allocated with the default allocator, it must be released with
  ///   [free].
  /// - If an [Arena] or custom allocator is provided, the memory is released
  ///   according to that allocator’s rules.
  PCSTR copy({Allocator allocator = adaptiveCalloc}) {
    final pcstr = allocator<BYTE>(length + 1);
    pcstr
        .asTypedList(length + 1)
        .setAll(0, cast<BYTE>().asTypedList(length + 1));
    return .new(pcstr.cast());
  }

  /// Converts this [PCSTR] to a Dart [String].
  ///
  /// If [length] is provided, exactly that many bytes are decoded, allowing
  /// embedded NUL bytes to be preserved.
  ///
  /// If [length] is omitted, decoding stops at the first terminating NUL.
  String toDartString({int? length}) {
    if (length != null) RangeError.checkNotNegative(length, 'length');
    return utf8.decode(cast<BYTE>().asTypedList(length ?? this.length));
  }
}
