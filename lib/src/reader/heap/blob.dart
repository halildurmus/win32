import 'dart:typed_data';

import '../../compressed_integer.dart';
import 'metadata_heap.dart';

/// Provides indexed access to the `#Blob` heap in a metadata file.
final class BlobHeap extends MetadataHeap {
  /// Creates a [BlobHeap] from the provided binary [data].
  const BlobHeap(super.data);

  /// The number of blobs in the heap.
  int get count {
    var count = 0;
    var offset = 0;

    while (offset < data.length) {
      try {
        final CompressedInteger(:value, :bytesRead) = CompressedInteger.decode(
          data,
          offset,
        );
        final totalSize = bytesRead + value;
        final nextOffset = offset + totalSize;
        if (totalSize == 0 || nextOffset > data.length) break;
        count++;
        offset = nextOffset;

        // Skip padded zeroes.
        while (offset < data.length && data[offset] == 0) {
          offset++;
        }
      } catch (_) {
        break;
      }
    }

    return count;
  }

  /// Enumerates all blobs in the heap.
  Iterable<Uint8List> get blobs sync* {
    var offset = 0;

    while (offset < data.length) {
      try {
        final CompressedInteger(:value, :bytesRead) = CompressedInteger.decode(
          data,
          offset,
        );
        final start = offset + bytesRead;
        final end = start + value;
        if (value == 0 && bytesRead == 0) break;
        if (end > data.length) break;
        yield Uint8List.sublistView(data, start, end);
        offset = end;

        // Skip padded zeroes.
        while (offset < data.length && data[offset] == 0) {
          offset++;
        }
      } catch (_) {
        break;
      }
    }
  }

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
