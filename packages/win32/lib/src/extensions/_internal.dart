import 'dart:ffi';

import 'package:meta/meta.dart';

/// Extension on `Array<Uint16>` providing utilities for working with
/// null-terminated UTF-16 strings.
///
/// This is intended for internal use when interacting with Win32 APIs that
/// write UTF-16 strings into caller-provided buffers.
@internal
extension Uint16Array on Array<Uint16> {
  /// Writes [string] into this array as a null-terminated UTF-16 string.
  ///
  /// The UTF-16 code units of [string] are written sequentially, followed by
  /// a terminating NUL (`0`) code unit.
  ///
  /// The caller **must** ensure that the array has sufficient capacity to hold
  /// all UTF-16 code units of [string] plus the terminating NUL character.
  ///
  /// Any existing contents beyond the written string are left unchanged.
  @internal
  void setString(String string) {
    final units = string.codeUnits;
    final length = units.length;
    for (var i = 0; i < length; i++) {
      this[i] = units[i];
    }
    this[length] = 0;
  }

  /// Reads a null-terminated UTF-16 string from this array and converts it to
  /// a Dart string.
  ///
  /// Conversion stops at the first NUL (`0`) code unit. Any data beyond the
  /// first NUL character is ignored.
  ///
  /// The behavior is undefined if the array does not contain a NUL terminator.
  @internal
  String toDartString() {
    final buffer = StringBuffer();
    var i = 0;

    while (true) {
      final char = this[i];
      if (char == 0) break;
      buffer.writeCharCode(char);
      i++;
    }

    return buffer.toString();
  }
}

/// Extension on [int] providing bit-field manipulation utilities.
///
/// This extension is intended for working with packed Win32 and COM flags
/// and structures that encode multiple values within a single 64-bit integer.
@internal
extension IntBitField on int {
  /// Creates a bitmask of [length] bits starting at bit position [offset].
  ///
  /// The resulting mask has [length] consecutive bits set to `1`, shifted
  /// left by [offset].
  ///
  /// Preconditions:
  /// - [offset] must be non-negative
  /// - [length] must be greater than zero
  /// - `offset + length` must not exceed 64
  ///
  /// Example:
  /// ```dart
  /// final mask = IntBitField._bitMask(2, 3); // 11100
  /// ```
  @pragma('vm:prefer-inline')
  static int _bitMask(int offset, int length) {
    assert(offset >= 0, 'Offset must be non-negative.');
    assert(length > 0, 'Length must be greater than zero.');
    assert(offset + length <= 64, 'Offset + length must not exceed 64.');
    return ((1 << length) - 1) << offset;
  }

  /// Extracts [length] bits starting at bit position [offset].
  ///
  /// The extracted value is right-shifted to bit position zero and returned
  /// as an integer.
  ///
  /// Preconditions:
  /// - [offset] must be non-negative
  /// - [length] must be greater than zero
  /// - `offset + length` must not exceed 64
  ///
  /// Example:
  /// ```dart
  /// const value = 0xB4; // Binary: 10110100
  /// final result = value.getBits(2, 3); // Binary: 101 -> Decimal: 5
  /// ```
  @internal
  @pragma('vm:prefer-inline')
  int getBits(int offset, int length) {
    assert(offset >= 0, 'Offset must be non-negative.');
    assert(length > 0, 'Length must be greater than zero.');
    assert(offset + length <= 64, 'Offset + length must not exceed 64.');
    final mask = _bitMask(offset, length);
    return (this & mask) >> offset;
  }

  /// Returns a new integer with [length] bits at [offset] replaced by [value].
  ///
  /// The specified bit range is cleared and overwritten with [value]. All other
  /// bits are preserved.
  ///
  /// Preconditions:
  /// - [value] must fit within [length] bits
  /// - [offset] and [length] must satisfy the same constraints as [getBits]
  ///
  /// Example:
  /// ```dart
  /// const value = 0xB4; // Binary: 10110100
  /// final result = value.setBits(2, 3, 3); // Binary: 10101100 -> Decimal: 172
  /// ```
  @internal
  @pragma('vm:prefer-inline')
  int setBits(int offset, int length, int value) {
    assert(offset >= 0, 'Offset must be non-negative.');
    assert(length > 0, 'Length must be greater than zero.');
    assert(offset + length <= 64, 'Offset + length must not exceed 64.');
    assert(
      value >= 0 && value < (1 << length),
      'Value must fit within the specified bit length.',
    );
    final mask = _bitMask(offset, length);
    return (this & ~mask) | ((value << offset) & mask);
  }
}
