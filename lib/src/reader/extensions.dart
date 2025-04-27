import 'dart:typed_data';

extension Uint8ListExtension on Uint8List {
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

  @pragma('vm:prefer-inline')
  int readUint8(int offset) => this[offset];

  @pragma('vm:prefer-inline')
  int readUint16(int offset) =>
      buffer.asByteData().getUint16(offset, Endian.little);

  @pragma('vm:prefer-inline')
  int readUint32(int offset) =>
      buffer.asByteData().getUint32(offset, Endian.little);

  @pragma('vm:prefer-inline')
  int readUint64(int offset) =>
      buffer.asByteData().getUint64(offset, Endian.little);
}
