import 'dart:collection';
import 'dart:typed_data';

import '../../guid.dart';
import '../index.dart';
import 'metadata_heap.dart';

/// A metadata heap that stores GUIDs (Globally Unique Identifiers) in 16-byte
/// little-endian format, as required by the ECMA-335 standard.
///
/// Each GUID is inserted only once and is assigned a 1-based index. This index
/// is later used in metadata tables to reference GUIDs compactly.
///
/// Unlike other heaps, this one does not include a placeholder entry at
/// index 0. Instead, the first inserted GUID is assigned index 1.
final class GuidHeap extends MetadataHeap<Guid, GuidIndex> {
  /// Creates a [GuidHeap] with the given [map] and [buffer].
  const GuidHeap(super.map, super.buffer);

  /// Creates an empty [GuidHeap] with no initial entries.
  ///
  /// GUIDs inserted into the heap are stored consecutively in 16-byte blocks.
  /// The index of each GUID is determined by its index in the heap, with the
  /// first GUID assigned index 1.
  GuidHeap.empty() : super(HashMap(), BytesBuilder());

  @override
  GuidIndex insert(Guid key) {
    if (map[key] case final existing?) return existing;
    final index = GuidIndex((buffer.length >> 4) + 1); // 1-based index
    map[key] = index;
    buffer.add(key.toBytes());
    return index;
  }
}
