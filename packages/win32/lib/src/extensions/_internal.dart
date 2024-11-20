import 'dart:ffi';

import 'package:meta/meta.dart';

/// Extension on `Array<Uint16>` to provide utility methods for working with
/// null-terminated UTF-16 strings.
@internal
extension Uint16Array on Array<Uint16> {
  /// Writes a null-terminated UTF-16 code unit array derived from the provided
  /// [string] into the array.
  ///
  /// If [string] contains embedded NUL characters, only the portion of the
  /// string up to the first NUL character will be retained when converting
  /// back to a Dart string using [toDartString], as the null terminator
  /// signifies the end of the string.
  ///
  /// It is the caller's responsibility to ensure the array has sufficient
  /// capacity to accommodate all UTF-16 code units from [string] and the null
  /// terminator.
  @internal
  void setString(String string) {
    final units = string.codeUnits;
    final length = units.length;
    // Copy the string's UTF-16 code units into the array.
    for (var i = 0; i < length; i++) {
      this[i] = units[i];
    }
    this[length] = 0; // Append the null terminator.
  }

  /// Converts the null-terminated UTF-16 string stored in the array to a Dart
  /// string.
  ///
  /// The returned string is the string up til but not including the first NUL
  /// character.
  @internal
  String toDartString() {
    final buffer = StringBuffer();
    var i = 0;

    // Read the array until the null terminator is encountered.
    while (true) {
      final char = this[i];
      if (char == 0) return buffer.toString();
      buffer.writeCharCode(char);
      i++;
    }
  }
}

/// Extension to manipulate a 64-bit integer as a bit field.
@internal
extension IntBitField on int {
  /// Creates a bitmask with a specified [length] starting at a given [offset].
  ///
  /// The mask covers [length] bits, starting from the bit at position [offset].
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

  /// Reads [length] bits at the specified [offset].
  ///
  /// Extracts the bits starting from the bit at position [offset], spanning
  /// [length] bits, and returns the value as an integer.
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

  /// Returns a new integer value where [length] bits at [offset] are set to
  /// [value].
  ///
  /// The bits at position [offset] through [offset + length - 1] are
  /// overwritten with the provided [value]. The remaining bits are left
  /// unchanged.
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
