import 'dart:typed_data';

import 'exception.dart';

/// Represents a compressed unsigned integer as defined in ECMA-335 `§II.23.2`.
///
/// This format encodes 29-bit unsigned integers into 1, 2, or 4 bytes:
///
/// - 1 byte for values < 0x80
/// - 2 bytes for values < 0x4000
/// - 4 bytes for values ≤ 0x1FFFFFFF
///
/// This encoding is used in metadata signatures, blob heap lengths, etc.
final class CompressedInteger {
  /// Creates a [CompressedInteger] with a decoded [value] and the number of
  /// [bytesRead] consumed during decoding.
  const CompressedInteger._(this.value, this.bytesRead);

  /// Decodes a [CompressedInteger] from [data] at the specified [offset].
  ///
  /// Throws a [WinmdException] if the encoding is invalid or truncated.
  factory CompressedInteger.decode(Uint8List data, [int offset = 0]) {
    if (offset >= data.length) {
      throw WinmdException('Offset out of bounds: $offset');
    }

    final first = data[offset];
    int value;
    int bytesRead;

    if (first & 0x80 == 0x00) {
      value = first;
      bytesRead = 1;
    } else if (first & 0xC0 == 0x80) {
      if (data.length < offset + 2) {
        throw const WinmdException('Truncated 2-byte compressed integer');
      }
      value = (first & 0x3F) << 8 | data[offset + 1];
      bytesRead = 2;
    } else if (first & 0xE0 == 0xC0) {
      if (data.length < offset + 4) {
        throw const WinmdException('Truncated 4-byte compressed integer');
      }
      value =
          (first & 0x1F) << 24 |
          (data[offset + 1] << 16) |
          (data[offset + 2] << 8) |
          (data[offset + 3]);
      bytesRead = 4;
    } else {
      throw WinmdException(
        'Invalid compressed integer encoding: 0x${first.toRadixString(16)}',
      );
    }

    return CompressedInteger._(value, bytesRead);
  }

  /// The decoded 29-bit integer value.
  final int value;

  /// The number of bytes consumed during decoding.
  final int bytesRead;

  /// Encodes an integer [value] using ECMA-335 compressed format.
  ///
  /// Returns a [Uint8List] containing the encoded byte(s).
  static Uint8List encode(int value) {
    if (value < 0) {
      throw ArgumentError.value(value, 'value', 'Must be non-negative');
    }

    if (value > 0x1FFFFFFF) {
      throw ArgumentError.value(
        value,
        'value',
        'Exceeds 29-bit limit (0x1FFFFFFF)',
      );
    }

    if (value < 0x80) return Uint8List(1)..[0] = value;

    if (value < 0x4000) {
      return Uint8List(2)
        ..[0] = 0x80 | (value >> 8)
        ..[1] = value;
    }

    return Uint8List(4)
      ..[0] = 0xC0 | (value >> 24)
      ..[1] = value >> 16
      ..[2] = value >> 8
      ..[3] = value;
  }
}
