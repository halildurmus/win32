import 'dart:collection';
import 'dart:typed_data';

import '../helpers.dart';

/// Represents a contiguous region of memory used to store structured binary
/// data, such as strings, blobs, or GUIDs in a metadata file.
abstract base class MetadataHeap<K, V> {
  /// Creates a new metadata heap from the given [map] and [buffer].
  const MetadataHeap(this.map, this.buffer);

  /// A map from inserted values to their assigned indexes within the heap.
  ///
  /// Used to ensure that duplicate values are not inserted multiple times.
  final HashMap<K, V> map;

  /// A buffer that holds the serialized binary contents of the heap.
  final BytesBuilder buffer;

  /// Inserts [key] into the heap if not already present, returning its index.
  V insert(K key);

  /// Returns a padded byte representation of the heap.
  Uint8List toBytes() => buffer.takeBytes().toBytesPadded();
}
