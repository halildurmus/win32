import 'dart:collection';
import 'dart:typed_data';

import '../../compressed_integer.dart';
import '../id.dart';
import 'heap.dart';

final class BlobHeap extends Heap<Uint8List, BlobId> {
  const BlobHeap(super.map, super.buffer);

  BlobHeap.empty() : super(HashMap(), BytesBuilder()) {
    buffer.addByte(0x00); // Add an empty blob.
  }

  @override
  BlobId insert(Uint8List value) {
    if (value.isEmpty) return const BlobId(0);
    if (map[value] case final value?) return value;
    final position = BlobId(buffer.length);
    map[value] = position;
    final blobLength = CompressedInteger.encode(value.length);
    buffer
      ..add(blobLength)
      ..add(value);
    return position;
  }
}
