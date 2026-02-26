import 'dart:math' show Random;
import 'dart:typed_data';

import 'common.dart';

/// Represents a globally unique identifier (GUID), a 128-bit value used to
/// uniquely identify entities such as COM interfaces, class objects, and
/// entry-point vectors (EPVs).
///
/// A GUID is typically represented as a 36-character string in the format:
/// `xxxxxxxx-xxxx-xxxx-xxxx-xxxxxxxxxxxx`, where each `x` is a hexadecimal
/// digit.
///
/// Structure:
/// - 8 hex digits (32 bits)
/// - 4 hex digits (16 bits)
/// - 4 hex digits (16 bits)
/// - 4 hex digits (16 bits)
/// - 12 hex digits (48 bits)
///
/// Example: `6b29fc40-ca47-1067-b31d-00dd010662da`
final class Guid {
  /// Creates a [Guid] from its raw binary components.
  ///
  /// This constructor is useful when GUID parts are already available in their
  /// numeric form.
  ///
  /// Example:
  /// ```dart
  /// final guid = Guid(
  ///   0x6b29fc40,
  ///   0xca47,
  ///   0x1067,
  ///   Uint8List.fromList([0xb3, 0x1d, 0x00, 0xdd, 0x01, 0x06, 0x62, 0xda]),
  /// );
  /// ```
  const Guid(this.data1, this.data2, this.data3, this.data4)
    : assert(
        data1 >= 0 && data1 <= 0xFFFFFFFF,
        'data1 must be a 32-bit unsigned integer',
      ),
      assert(
        data2 >= 0 && data2 <= 0xFFFF,
        'data2 must be a 16-bit unsigned integer',
      ),
      assert(
        data3 >= 0 && data3 <= 0xFFFF,
        'data3 must be a 16-bit unsigned integer',
      ),
      assert(data4.length == 8, 'data4 must be an 8-byte list');

  /// Generates a new GUID using a cryptographically secure random number
  /// generator.
  ///
  /// The generated GUID conforms to [RFC 4122] version 4, which specifies that
  /// the GUID is randomly generated with the following constraints:
  ///
  /// - The 13th hexadecimal digit (bits 48–51) is set to `4`, indicating
  ///   version 4 (random).
  /// - The 17th hexadecimal digit (bits 64–65) is set to one of `8`, `9`, `A`,
  ///   or `B`, indicating the variant (DCE 1.1).
  ///
  /// Example:
  /// ```dart
  /// final guid = Guid.generate();
  /// print(guid); // e.g., 'f47ac10b-58cc-4372-a567-0e02b2c3d479'
  /// ```
  ///
  /// [RFC 4122]: https://datatracker.ietf.org/doc/html/rfc4122
  factory Guid.generate() {
    final random = Random.secure();
    final bytes = Uint8List(16);
    for (var i = 0; i < 16; i++) {
      bytes[i] = random.nextInt(256);
    }

    // Set the version to 4 --- random UUID
    bytes[6] = (bytes[6] & 0x0F) | 0x40;

    // Set the variant to DCE 1.1, ISO/IEC 11578:1996
    bytes[8] = (bytes[8] & 0x3F) | 0x80;

    final byteData = ByteData.sublistView(bytes);
    final data1 = byteData.getUint32(0, Endian.little);
    final data2 = byteData.getUint16(4, Endian.little);
    final data3 = byteData.getUint16(6, Endian.little);
    final data4 = Uint8List.sublistView(bytes, 8, 16);
    return Guid(data1, data2, data3, data4.asUnmodifiableView());
  }

  /// Creates a [Guid] instance from a 16-byte little-endian binary encoding.
  ///
  /// It expects the binary layout to be in the following format:
  ///
  /// - Bytes 0–3: [data1] as a 32-bit little-endian integer.
  /// - Bytes 4–5: [data2] as a 16-bit little-endian integer.
  /// - Bytes 6–7: [data3] as a 16-bit little-endian integer.
  /// - Bytes 8–15: [data4] copied directly.
  ///
  /// Example:
  /// ```dart
  /// final bytes = Uint8List.fromList([
  ///   0x40, 0xFC, 0x29, 0x6B,
  ///   0x47, 0xCA,
  ///   0x67, 0x10,
  ///   0xB3, 0x1D, 0x00, 0xDD, 0x01, 0x06, 0x62, 0xDA
  /// ]);
  /// final guid = Guid.fromBytes(bytes);
  /// print(guid.toString()); // 6b29fc40-ca47-1067-b31d-00dd010662da
  /// ```
  factory Guid.fromBytes(Uint8List bytes) {
    if (bytes.length != 16) {
      throw ArgumentError.value(
        bytes,
        'bytes',
        'A GUID must be exactly 16 bytes long',
      );
    }

    final byteData = ByteData.sublistView(bytes);
    final data1 = byteData.getUint32(0, Endian.little);
    final data2 = byteData.getUint16(4, Endian.little);
    final data3 = byteData.getUint16(6, Endian.little);
    final data4 = Uint8List.sublistView(bytes, 8, 16);
    return Guid(data1, data2, data3, data4.asUnmodifiableView());
  }

  /// Parses a [Guid] from a string in the canonical format:
  /// `xxxxxxxx-xxxx-xxxx-xxxx-xxxxxxxxxxxx`.
  ///
  /// Throws a [FormatException] if the GUID is not in the correct format.
  factory Guid.fromString(String guid) {
    // Assert in debug mode, as regex check may be expensive.
    assert(_guidRegex.hasMatch(guid), 'Invalid GUID format');

    if (guid.length != 36) {
      throw FormatException('Invalid GUID format', guid);
    }

    final codeUnits = guid.codeUnits;

    /// Converts a single hexadecimal character code unit to its numeric value.
    int hexToDigit(int char) {
      if (char >= 0x30 && char <= 0x39) return char - 0x30; // '0'-'9'
      if (char >= 0x41 && char <= 0x46) return char - 0x41 + 10; // 'A'-'F'
      if (char >= 0x61 && char <= 0x66) return char - 0x61 + 10; // 'a'-'f'
      throw FormatException('Invalid hex digit', String.fromCharCode(char));
    }

    /// Parses [length] hex digits starting at [start] into an integer.
    int parseHex(int start, int length) {
      var result = 0;
      for (var i = 0; i < length; i++) {
        final digit = hexToDigit(codeUnits[start + i]);
        result = (result << 4) | digit;
      }
      return result;
    }

    // Parse first three sections of the GUID
    final data1 = parseHex(0, 8); // 8 hex digits → 32-bit int
    final data2 = parseHex(9, 4); // 4 hex digits → 16-bit int
    final data3 = parseHex(14, 4); // 4 hex digits → 16-bit int

    // Parse final 8 bytes of the GUID (two from section 4, six from section 5)
    final data4 = Uint8List(8);
    for (var i = 0; i < 2; i++) {
      final byte =
          (hexToDigit(codeUnits[19 + i * 2]) << 4) |
          hexToDigit(codeUnits[19 + i * 2 + 1]);
      data4[i] = byte;
    }
    for (var i = 0; i < 6; i++) {
      final byte =
          (hexToDigit(codeUnits[24 + i * 2]) << 4) |
          hexToDigit(codeUnits[24 + i * 2 + 1]);
      data4[i + 2] = byte;
    }

    return Guid(data1, data2, data3, data4.asUnmodifiableView());
  }

  /// Creates a zero-initialized GUID (`00000000-0000-0000-0000-000000000000`).
  Guid.zero()
    : data1 = 0,
      data2 = 0,
      data3 = 0,
      data4 = Uint8List(8).asUnmodifiableView();

  /// The first 8 hexadecimal digits of the GUID.
  final int data1;

  /// The first group of 4 hexadecimal digits.
  final int data2;

  /// The second group of 4 hexadecimal digits.
  final int data3;

  /// The last 8 bytes of the GUID.
  ///
  /// The first 2 bytes correspond to the third group of 4 hexadecimal digits,
  /// while the remaining 6 bytes form the final 12 hexadecimal digits.
  final Uint8List data4;

  /// Whether the GUID is a zero-initialized GUID.
  bool get isZero =>
      data1 == 0 && data2 == 0 && data3 == 0 && data4.every((b) => b == 0);

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is Guid &&
          data1 == other.data1 &&
          data2 == other.data2 &&
          data3 == other.data3 &&
          listEqual(data4, other.data4);

  @override
  int get hashCode => Object.hash(data1, data2, data3, Object.hashAll(data4));

  /// Converts the GUID into its canonical string representation:
  /// `xxxxxxxx-xxxx-xxxx-xxxx-xxxxxxxxxxxx`.
  @override
  String toString() {
    final buffer = StringBuffer()
      ..write(data1.toRadixString(16).padLeft(8, '0'))
      ..write('-')
      ..write(data2.toRadixString(16).padLeft(4, '0'))
      ..write('-')
      ..write(data3.toRadixString(16).padLeft(4, '0'))
      ..write('-')
      ..write(
        data4
            .sublist(0, 2)
            .map((e) => e.toRadixString(16).padLeft(2, '0'))
            .join(),
      )
      ..write('-')
      ..write(
        data4.sublist(2).map((e) => e.toRadixString(16).padLeft(2, '0')).join(),
      );
    return buffer.toString();
  }

  /// Regular expression used for validating GUID strings.
  static final _guidRegex = RegExp(
    r'^[0-9A-Fa-f]{8}(?:-[0-9A-Fa-f]{4}){3}-[0-9A-Fa-f]{12}$',
  );
}

/// Extension on [Guid] to support conversion to binary format.
extension GuidExtension on Guid {
  /// Converts the [Guid] into its standard 16-byte little-endian binary
  /// representation.
  Uint8List toBytes() {
    final bytes = Uint8List(16);
    final byteData = ByteData.view(bytes.buffer)
      ..setUint32(0, data1, Endian.little)
      ..setUint16(4, data2, Endian.little)
      ..setUint16(6, data3, Endian.little);
    for (var i = 0; i < 8; i++) {
      byteData.setUint8(8 + i, data4[i]);
    }
    return bytes;
  }
}
