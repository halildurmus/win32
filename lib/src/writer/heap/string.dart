import 'dart:collection';
import 'dart:convert';
import 'dart:typed_data';

import '../index.dart';
import 'metadata_heap.dart';

/// A metadata heap that stores strings as UTF-8 encoded, null-terminated byte
/// sequences, following the ECMA-335 specification.
///
/// Each string is inserted only once and is assigned a zero-based index,
/// which represents its byte offset in the underlying heap buffer. Strings are
/// terminated with a single `0x00` byte.
///
/// The empty string is always stored at index 0 and is inserted during heap
/// initialization.
final class StringHeap extends MetadataHeap<String, StringIndex> {
  /// Creates a [StringHeap] with the given [map] and [buffer].
  const StringHeap(super.map, super.buffer);

  /// Creates an empty [StringHeap] with a pre-inserted empty string at
  /// offset 0.
  ///
  /// This ensures that references to the empty string in metadata always
  /// resolve to a valid offset, as required by the metadata format.
  StringHeap.empty() : super(HashMap(), BytesBuilder()) {
    buffer.addByte(0x00); // Add an empty string.
  }

  @override
  StringIndex insert(String key) {
    if (key.isEmpty) return const StringIndex(0);
    if (map[key] case final existing?) return existing;
    final index = StringIndex(buffer.length);
    map[key] = index;
    buffer
      ..add(utf8.encode(key))
      ..addByte(0x00);
    return index;
  }
}
