import 'dart:collection';
import 'dart:typed_data';

import '../../compressed_integer.dart';
import 'metadata_heap.dart';

/// Provides indexed access to the `#Blob` heap in a metadata file.
final class BlobHeap extends MetadataHeap {
  /// Creates a [BlobHeap] from the provided binary [data].
  BlobHeap(super.data);

  final _cache = HashMap<int, Uint8List>();

  /// The number of blobs in the heap.
  late final int count = () {
    var n = 0;
    var offset = 0;
    while (offset < data.length) {
      try {
        final CompressedInteger(:value, :bytesRead) = .decode(data, offset);
        final totalSize = bytesRead + value;
        final nextOffset = offset + totalSize;
        if (totalSize == 0 || nextOffset > data.length) break;
        n++;
        offset = nextOffset;
        while (offset < data.length && data[offset] == 0) {
          offset++;
        }
      } catch (_) {
        break;
      }
    }
    return n;
  }();

  /// Enumerates all blobs in the heap.
  Iterable<Uint8List> get blobs sync* {
    var offset = 0;

    while (offset < data.length) {
      try {
        final CompressedInteger(:value, :bytesRead) = .decode(data, offset);
        final start = offset + bytesRead;
        final end = start + value;
        if (value == 0 && bytesRead == 0) break;
        if (end > data.length) break;
        yield .sublistView(data, start, end);
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
    if (_cache[offset] case final cached?) return cached;
    final CompressedInteger(:value, :bytesRead) = .decode(data, offset);
    final blob = Uint8List.sublistView(
      data,
      offset + bytesRead,
      offset + value + bytesRead,
    );
    _cache[offset] = blob;
    return blob;
  }
}
