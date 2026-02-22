/// Extension on [int] for producing hexadecimal string representations.
///
/// This helper is intended primarily for **debugging, diagnostics, and
/// interop-related output**, where values are commonly expressed in hexadecimal
/// form using Windows-style conventions.
extension IntToHexConversion on int {
  /// Converts this integer to an uppercase hexadecimal string prefixed with
  /// `0x`.
  ///
  /// Positive values:
  /// - Encoded using a **minimal-width** hexadecimal representation.
  /// - No zero-padding is applied, regardless of [width].
  ///
  /// Negative values:
  /// - Encoded using **two’s complement** representation.
  /// - The value is first widened to a suitable unsigned bit width
  ///   (8, 16, 32, 64, or 128 bits).
  /// - The resulting hexadecimal string is **sign-extended** with `F` to match
  ///   the requested [width].
  ///
  /// Width semantics:
  /// - [width] specifies the **target bit width for sign extension only**.
  /// - It must be a positive multiple of `8`.
  /// - It does *not* truncate positive values or force fixed-width output.
  ///
  /// The default [width] is `32` bits, matching common Win32 conventions.
  ///
  /// Examples:
  /// - `0.toHexString()` → `'0x0'`
  /// - `255.toHexString()` → `'0xFF'`
  /// - `-1.toHexString()` → `'0xFFFFFFFF'`
  /// - `-128.toHexString(8)` → `'0x80'`
  /// - `-255.toHexString(16)` → `'0xFF01'`
  /// - `-255.toHexString(32)` → `'0xFFFFFF01'`
  /// - `-2147483648.toHexString(32)` → `'0x80000000'`
  /// - `-9223372036854775808.toHexString(64)` → `'0x8000000000000000'`
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

    // Convert negative values to an unsigned two’s complement representation
    // using a sufficiently wide intermediate bit width.
    if (n.isNegative) {
      final bitWidth = const [
        8,
        16,
        32,
        64,
        128,
      ].firstWhere((w) => n >= BigInt.from(-1) << (w - 1), orElse: () => 128);
      n = n.toUnsigned(bitWidth);
    }

    // Manual hexadecimal conversion avoids locale or formatting dependencies.
    var hex = '';
    final base = BigInt.from(16);

    while (n > BigInt.zero) {
      hex = _hexLookupTable[(n % base).toInt()] + hex;
      n = n ~/ base;
    }

    // Apply sign extension padding for negative values.
    if (isNegative) {
      hex = hex.padLeft(width ~/ 4, 'F');
    }

    return '0x$hex';
  }
}

const _hexLookupTable = '0123456789ABCDEF';
