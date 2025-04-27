import 'dart:convert';
import 'dart:typed_data';

import '../compressed_integer.dart';
import '../metadata_value.dart';

int round(int size, int round) {
  final r = round - 1;
  return (size + r) & ~r;
}

extension ToBytes on Uint8List {
  Uint8List toBytesPadded() {
    final newLength = round(length, 4);
    if (newLength == length) return this;
    final padded = Uint8List(newLength)..setRange(0, length, this);
    return padded;
  }
}

extension BytesBuilderExtensions on BytesBuilder {
  void writeInt16(int value) {
    final byteData = ByteData(2)..setInt16(0, value, Endian.little);
    add(byteData.buffer.asUint8List());
  }

  void writeUint16(int value) {
    final byteData = ByteData(2)..setUint16(0, value, Endian.little);
    add(byteData.buffer.asUint8List());
  }

  void writeInt32(int value) {
    final byteData = ByteData(4)..setInt32(0, value, Endian.little);
    add(byteData.buffer.asUint8List());
  }

  void writeUint32(int value) {
    final byteData = ByteData(4)..setUint32(0, value, Endian.little);
    add(byteData.buffer.asUint8List());
  }

  void writeInt64(int value) {
    final byteData = ByteData(8)..setInt64(0, value, Endian.little);
    add(byteData.buffer.asUint8List());
  }

  void writeUint64(int value) {
    final byteData = ByteData(8)..setUint64(0, value, Endian.little);
    add(byteData.buffer.asUint8List());
  }

  void writeFloat32(double value) {
    final byteData = ByteData(4)..setFloat32(0, value, Endian.little);
    add(byteData.buffer.asUint8List());
  }

  void writeFloat64(double value) {
    final byteData = ByteData(8)..setFloat64(0, value, Endian.little);
    add(byteData.buffer.asUint8List());
  }

  void writeCode(int value, int size) {
    if (size == 2) {
      writeUint16(value);
    } else {
      writeUint32(value);
    }
  }

  void writeIndex(int index, int len) {
    if (len < (1 << 16)) {
      writeUint16(index + 1);
    } else {
      writeUint32(index + 1);
    }
  }

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
}
