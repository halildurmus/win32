/// Extension on [int] to convert integers to hexadecimal strings.
extension IntToHexConversion on int {
  /// Converts the integer to its hexadecimal representation, prefixed with
  /// `0x`.
  ///
  /// Positive integers are represented minimally without padding, regardless of
  /// the specified [width]. Negative integers use two's complement
  /// representation, optionally padded to match the specified bit-width.
  ///
  /// [width] must be a positive multiple of `8`, and defaults to `32` bits.
  ///
  /// Examples:
  /// - `0.toHexString()` returns `'0x0'`.
  /// - `255.toHexString()` returns `'0xFF'`.
  /// - `-1.toHexString()` returns `'0xFFFFFFFF'`.
  /// - `-128.toHexString(8)` returns `'0x80'`.
  /// - `-255.toHexString(16)` returns `'0xFF01'`.
  /// - `-255.toHexString(32)` returns `'0xFFFFFF01'`.
  /// - `-2147483648.toHexString(32)` returns `'0x80000000'`.
  /// - `-9223372036854775808.toHexString(64)` returns `'0x8000000000000000'`.
  String toHexString([int width = 32]) {
    if (width <= 0 || width % 8 != 0) {
      throw ArgumentError.value(
        width,
        'width',
        'Must be positive and divisible by 8',
      );
    }

    if (this == 0) return '0x0';

    var n = BigInt.from(this);

    // Handle negative numbers by converting them to unsigned with the
    // appropriate bit width.
    if (n.isNegative) {
      final bitWidth = const [8, 16, 32, 64, 128].firstWhere(
        (w) => n >= BigInt.from(-1) << (w - 1),
        orElse: () => 128, // Default to 128 bits if out of bounds.
      );
      n = n.toUnsigned(bitWidth);
    }

    // Convert to hexadecimal string.
    var hex = '';

    final bigInt16 = BigInt.from(16);
    while (n > BigInt.zero) {
      hex = _hexLookupTable[(n % bigInt16).toInt()] + hex;
      n = n ~/ bigInt16;
    }

    // Apply padding for signed representation.
    if (isNegative) {
      hex = hex.padLeft(width ~/ 4, 'F');
    }

    return '0x$hex';
  }
}

const _hexLookupTable = '0123456789ABCDEF';
