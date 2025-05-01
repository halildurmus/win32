import 'dart:convert';
import 'dart:typed_data';

import '../compressed_integer.dart';
import '../metadata_value.dart';

/// Returns the smallest multiple of [alignment] greater than or equal to
/// [size].
int alignTo(int size, int alignment) {
  final mask = alignment - 1;
  return (size + mask) & ~mask;
}

/// Extension to pad a [Uint8List] to a multiple of 4 bytes.
extension Uint8ListExtension on Uint8List {
  /// Pads the byte list to the next 4-byte boundary using zero bytes.
  Uint8List toBytesPadded() {
    final newLength = alignTo(length, 4);
    if (newLength == length) return this;
    final padded = Uint8List(newLength)..setRange(0, length, this);
    return padded;
  }
}

/// Extension methods for writing little-endian primitive types to a
/// [BytesBuilder].
extension BytesBuilderExtension on BytesBuilder {
  /// Writess a signed 16-bit integer in little-endian format.
  void writeInt16(int value) =>
      _write((b) => b.setInt16(0, value, Endian.little), 2);

  /// Writes an unsigned 16-bit integer in little-endian format.
  void writeUint16(int value) =>
      _write((b) => b.setUint16(0, value, Endian.little), 2);

  /// Writes a signed 32-bit integer in little-endian format.
  void writeInt32(int value) =>
      _write((b) => b.setInt32(0, value, Endian.little), 4);

  /// Writes an unsigned 32-bit integer in little-endian format.
  void writeUint32(int value) =>
      _write((b) => b.setUint32(0, value, Endian.little), 4);

  /// Writes a signed 64-bit integer in little-endian format.
  void writeInt64(int value) =>
      _write((b) => b.setInt64(0, value, Endian.little), 8);

  /// Writes an unsigned 64-bit integer in little-endian format.
  void writeUint64(int value) =>
      _write((b) => b.setUint64(0, value, Endian.little), 8);

  /// Writes a 32-bit floating-point number in little-endian format.
  void writeFloat32(double value) =>
      _write((b) => b.setFloat32(0, value, Endian.little), 4);

  /// Writes a 64-bit floating-point number in little-endian format.
  void writeFloat64(double value) =>
      _write((b) => b.setFloat64(0, value, Endian.little), 8);

  /// Writes a coded index using either 16 or 32 bits, depending on
  /// [codedIndexSize].
  ///
  /// If [codedIndexSize] is 2, writes as a 16-bit unsigned integer; otherwise,
  /// writes as a 32-bit unsigned integer.
  void writeCodedIndex(int index, int codedIndexSize) {
    if (codedIndexSize == 2) {
      writeUint16(index);
    } else {
      writeUint32(index);
    }
  }

  /// Writes a heap index using 16 or 32 bits, depending on [heapSize].
  ///
  /// If [heapSize] is less than 2^16, writes as a 16-bit unsigned integer;
  /// otherwise, writes as a 32-bit unsigned integer.
  void writeHeapIndex(int index, int heapSize) {
    if (heapSize < 0x10000) {
      writeUint16(index);
    } else {
      writeUint32(index);
    }
  }

  /// Writes a table index (offset by +1) using 16 or 32 bits, depending on
  /// [tableSize].
  ///
  /// If [tableSize] is less than 2^16, writes ([index] + 1) as a 16-bit
  /// unsigned integer; otherwise, writes it as a 32-bit unsigned integer.
  void writeTableIndex(int index, int tableSize) {
    final adjustedIndex = index + 1;
    if (tableSize < 0x10000) {
      writeUint16(adjustedIndex);
    } else {
      writeUint32(adjustedIndex);
    }
  }

  /// Writes the appropriate binary representation of a [MetadataValue].
  void writeValue(MetadataValue value) => switch (value) {
    BoolValue(:final value) => addByte(value ? 1 : 0),
    CharValue(:final value) => writeUint16(value),
    Int8Value(:final value) => addByte(value),
    Uint8Value(:final value) => addByte(value),
    Int16Value(:final value) => writeInt16(value),
    Uint16Value(:final value) => writeUint16(value),
    Int32Value(:final value) => writeInt32(value),
    Uint32Value(:final value) => writeUint32(value),
    Int64Value(:final value) => writeInt64(value),
    Uint64Value(:final value) => writeInt64(value),
    Float32Value(:final value) => writeFloat32(value),
    Float64Value(:final value) => writeFloat64(value),
    AttributeEnumValue(:final value) => writeInt32(value),
    Utf8StringValue(:final value) => () {
      final bytes = utf8.encode(value);
      add(CompressedInteger.encode(bytes.length));
      add(bytes);
    }(),
    Utf16StringValue(:final value) => add(value.codeUnits),
  };

  /// Internal helper to write a value using a [ByteData] writer.
  void _write(void Function(ByteData) writer, int byteCount) {
    final buffer = ByteData(byteCount);
    writer(buffer);
    add(buffer.buffer.asUint8List());
  }
}
