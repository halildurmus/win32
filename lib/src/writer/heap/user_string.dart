import 'dart:typed_data';

import '../../compressed_integer.dart';
import 'metadata_heap.dart';

/// A metadata heap for user-defined strings, stored as UTF-16LE encoded blobs
/// with a compressed length prefix and an optional trailing byte.
///
/// Each string is inserted only once and assigned a one-based index (offset).
/// The format is:
/// - A compressed length prefix (including the trailing byte),
/// - UTF-16LE encoded string content,
/// - A trailing byte, set to 1 if the string contains non-ASCII characters,
///   or 0 otherwise.
final class UserStringHeap extends MetadataHeap<String, UserStringIndex> {
  /// Creates a [UserStringHeap] with the given [map] and [buffer].
  const UserStringHeap(super.map, super.buffer);

  /// Creates an empty [UserStringHeap] with a pre-inserted empty string at
  /// offset 0.
  ///
  /// This ensures that references to the empty string in metadata always
  /// resolve to a valid offset, as required by the metadata format.
  UserStringHeap.empty() : super({}, BytesBuilder()) {
    buffer.addByte(0x00); // Add an empty blob.
  }

  @override
  UserStringIndex insert(String key) {
    if (key.isEmpty) return const UserStringIndex(0);
    if (map[key] case final existing?) return existing;
    final index = UserStringIndex(buffer.length);
    final utf16Bytes = _utf16Encode(key);
    final trailingByte = _needsSpecialHandling(key) ? 1 : 0;
    final blobContent = Uint8List(utf16Bytes.length + 1)
      ..setAll(0, utf16Bytes)
      ..[utf16Bytes.length] = trailingByte;
    final header = CompressedInteger.encode(blobContent.length);
    map[key] = index;
    buffer
      ..add(header)
      ..add(blobContent);
    return index;
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
