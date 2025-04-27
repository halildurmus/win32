import 'dart:typed_data';

import '../../compressed_integer.dart';
import 'metadata_heap.dart';

/// Provides indexed access to the `#Blob` heap in a metadata file.
final class BlobHeap extends MetadataHeap {
  /// Creates a [BlobHeap] from the provided binary [data].
  const BlobHeap(super.data);

  /// Retrieves the blob located at the specified [offset].
  Uint8List operator [](int offset) {
    assert(
      offset >= 0 && offset < data.length,
      'Offset $offset out of bounds.',
    );
    final CompressedInteger(:value, :bytesRead) = CompressedInteger.decode(
      data,
      offset,
    );
    return Uint8List.sublistView(
      data,
      offset + bytesRead,
      offset + value + bytesRead,
    );
  }
}
