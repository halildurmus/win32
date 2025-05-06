import 'dart:typed_data';

import '../helpers.dart';

/// Represents a contiguous region of memory used to store structured binary
/// data, such as strings, blobs, or GUIDs in a metadata file.
abstract base class MetadataHeap<K, V extends HeapIndex> {
  /// Creates a new metadata heap from the given [map] and [buffer].
  const MetadataHeap(this.map, this.buffer);

  /// A map from inserted values to their assigned indexes within the heap.
  ///
  /// Used to ensure that duplicate values are not inserted multiple times.
  final Map<K, V> map;

  /// A buffer that holds the serialized binary contents of the heap.
  final BytesBuilder buffer;

  /// Inserts [key] into the heap if not already present, returning its index.
  V insert(K key);

  /// Returns a padded byte representation of the heap.
  Uint8List toBytes() => buffer.takeBytes().toBytesPadded();
}

/// Represents an index into a heap.
sealed class HeapIndex {
  const HeapIndex(this.index);

  /// The index into the heap.
  final int index;

  @override
  // ignore: no_runtimetype_tostring
  String toString() => '$runtimeType($index)';
}

/// Represents an index into the `#Blob` heap.
final class BlobIndex extends HeapIndex {
  const BlobIndex(super.index);
}

/// Represents an index into the `#GUID` heap.
final class GuidIndex extends HeapIndex {
  const GuidIndex(super.index);
}

/// Represents an index into the `#Strings` heap.
final class StringIndex extends HeapIndex {
  const StringIndex(super.index);
}

/// Represents an index into the `#US` heap.
final class UserStringIndex extends HeapIndex {
  const UserStringIndex(super.index);
}
