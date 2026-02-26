import 'dart:typed_data';

/// Represents a contiguous region of memory used to store structured binary
/// data, such as strings, blobs, or GUIDs in a metadata file.
abstract class MetadataHeap {
  /// Creates a new metadata heap from the given binary [data].
  const MetadataHeap(this.data);

  /// The raw contents of the heap.
  final Uint8List data;
}
