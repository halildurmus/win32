import 'dart:collection';
import 'dart:typed_data';

import '../../compressed_integer.dart';
import '../id.dart';
import 'heap.dart';

final class UserStringHeap extends Heap<String, UserStringId> {
  const UserStringHeap(super.map, super.buffer);

  UserStringHeap.empty() : super(HashMap(), BytesBuilder()) {
    buffer.addByte(0x00); // Add an empty blob.
  }

  @override
  UserStringId insert(String value) {
    if (value.isEmpty) return const UserStringId(0);
    if (map[value] case final value?) return value;
    final utf16Bytes = _utf16Encode(value);
    final trailingByte = _needsSpecialHandling(value) ? 1 : 0;
    final blobContent = Uint8List(utf16Bytes.length + 1)
      ..setAll(0, utf16Bytes)
      ..[utf16Bytes.length] = trailingByte;
    final blobLength = CompressedInteger.encode(blobContent.length);
    final position = UserStringId(buffer.length);
    map[value] = position;
    buffer
      ..add(blobLength)
      ..add(blobContent);
    return position;
  }

  /// Whether the string contains Unicode characters that require handling
  /// beyond that normally provided for 8-bit encoding sets.
  static bool _needsSpecialHandling(String value) {
    for (final codeUnit in value.codeUnits) {
      if (codeUnit > 0x7F) return true;
    }
    return false;
  }

  /// Encodes a [String] to UTF-16LE as a [Uint8List].
  Uint8List _utf16Encode(String value) {
    final codeUnits = value.codeUnits;
    final result = Uint8List(codeUnits.length * 2);
    final byteData = ByteData.sublistView(result);
    for (var i = 0; i < codeUnits.length; i++) {
      byteData.setUint16(i * 2, codeUnits[i], Endian.little);
    }
    return result;
  }
}
