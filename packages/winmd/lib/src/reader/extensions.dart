import 'dart:typed_data';

/// Extension methods on [Uint8List] to simplify common metadata reading
/// operations.
extension Uint8ListExtension on Uint8List {
  /// Reads a null-terminated UTF-8 string starting at the given [offset].
  ///
  /// Characters are read sequentially until a null terminator is encountered.
  ///
  /// The resulting string is returned.
  String readString(int offset) {
    final buffer = StringBuffer();
    var i = 0;

    // Read the array until the null terminator is encountered.
    while (true) {
      final char = this[offset + i];
      if (char == 0) return buffer.toString();
      buffer.writeCharCode(char);
      i++;
    }
  }

  /// Reads an unsigned 8-bit integer at the given [offset].
  @pragma('vm:prefer-inline')
  int readUint8(int offset) => this[offset];

  /// Reads an unsigned 16-bit integer at the given [offset], assuming
  /// little-endian encoding.
  @pragma('vm:prefer-inline')
  int readUint16(int offset) => buffer.asByteData().getUint16(offset, .little);

  /// Reads an unsigned 32-bit integer at the given [offset], assuming
  /// little-endian encoding.
  @pragma('vm:prefer-inline')
  int readUint32(int offset) => buffer.asByteData().getUint32(offset, .little);

  /// Reads an unsigned 64-bit integer at the given [offset], assuming
  /// little-endian encoding.
  @pragma('vm:prefer-inline')
  int readUint64(int offset) => buffer.asByteData().getUint64(offset, .little);
}
