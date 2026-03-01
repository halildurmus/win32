import 'dart:collection';
import 'dart:typed_data';

import '../../common.dart';
import '../../compressed_integer.dart';
import 'metadata_heap.dart';

/// A metadata heap that stores binary blobs with compressed length prefixes.
///
/// Each entry in the heap is a [Uint8List] of arbitrary binary data. When a
/// new blob is inserted, it is prefixed with a compressed integer that encodes
/// its length, as required by the ECMA-335 metadata format.
///
/// The first byte of the heap is always `0x00`, representing an empty blob
/// at index 0, which serves as the default or null-equivalent entry.
final class BlobHeap extends MetadataHeap<Uint8List, BlobIndex> {
  /// Creates a [BlobHeap] with the given [map] and [buffer].
  const BlobHeap(super.map, super.buffer);

  /// Creates an empty [BlobHeap] with a single `0x00` entry at offset 0.
  BlobHeap.empty()
    : super(
        HashMap(equals: listEqual, hashCode: Object.hashAll),
        .new(copy: false),
      ) {
    buffer.addByte(0x00); // Add an empty blob.
  }

  @override
  BlobIndex insert(Uint8List key) {
    if (key.isEmpty) return const .new(0);
    if (map[key] case final existing?) return existing;
    final index = BlobIndex(buffer.length);
    final header = CompressedInteger.encode(key.length);
    map[key] = index;
    buffer
      ..add(header)
      ..add(key);
    return index;
  }
}
