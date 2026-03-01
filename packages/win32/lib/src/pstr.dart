import 'dart:convert';
import 'dart:ffi';

import 'package:ffi/ffi.dart';
import 'package:ffi_leak_tracker/ffi_leak_tracker.dart';

import 'types.dart';
import 'utils.dart';

/// A strongly-typed wrapper around a Win32 `PSTR`.
///
/// `PSTR` is commonly used by legacy Win32 APIs to represent mutable,
/// null-terminated string of 8-bit Windows (ANSI) characters.
extension type const PSTR(Pointer<Utf8> _) implements Pointer<Utf8> {
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
  PSTR copy({Allocator allocator = adaptiveCalloc}) {
    final pstr = allocator<BYTE>(length + 1);
    pstr
        .asTypedList(length + 1)
        .setAll(0, cast<BYTE>().asTypedList(length + 1));
    return .new(pstr.cast());
  }

  /// Writes [string] into this buffer as ANSI-encoded bytes.
  ///
  /// The caller **must** guarantee that the underlying memory is large enough
  /// to hold `string.length + 1` bytes. Writing past the allocated region
  /// results in undefined behavior.
  ///
  /// Returns the total number of bytes written, including the terminating NUL.
  ///
  /// Example:
  /// ```dart
  /// final buffer = adaptiveMalloc<BYTE>(10).cast<Utf8>();
  /// final pstr = PSTR(buffer);
  /// final bytesWritten = pstr.setString("Hello");
  /// print(bytesWritten); // Outputs: 6 (5 characters + 1 NUL)
  /// ```
  int setString(String string) {
    final length = string.length;
    final pstr = cast<BYTE>();
    for (var i = 0; i < length; i++) {
      pstr[i] = string.codeUnitAt(i) & 0xFF;
    }
    pstr[length] = 0;

    final bytesWritten = length + 1;
    return bytesWritten;
  }

  /// Converts this [PSTR] to a Dart [String].
  ///
  /// If [length] is provided, exactly that many bytes are decoded, allowing
  /// embedded NUL bytes to be preserved.
  ///
  /// If [length] is omitted, decoding stops at the first terminating NUL.
  ///
  /// Note: This assumes UTF-8 encoding. APIs that use a different ANSI code
  /// page may produce incorrect results.
  String toDartString({int? length}) {
    if (length != null) RangeError.checkNotNegative(length, 'length');
    return utf8.decode(cast<BYTE>().asTypedList(length ?? this.length));
  }
}
