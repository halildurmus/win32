import 'dart:typed_data';

import '../../guid.dart';
import 'metadata_heap.dart';

/// Provides indexed access to the `#GUID` heap in a metadata file.
final class GuidHeap extends MetadataHeap {
  /// Creates a [GuidHeap] from the provided binary [data].
  const GuidHeap(super.data);

  /// The number of GUIDs stored in this heap.
  int get count => data.length ~/ 16;

  /// Enumerates all GUIDs in the heap.
  Iterable<Guid> get guids sync* {
    if (data.length < 16) return;

    for (var i = 0; i < data.length; i += 16) {
      yield this[i];
    }
  }

  /// Retrieves the GUID located at the specified [offset].
  Guid operator [](int offset) {
    assert(
      offset >= 0 && offset < data.length,
      'Offset $offset out of bounds.',
    );
    final byteData = ByteData.sublistView(data, offset, offset + 8);
    final data1 = byteData.getUint32(0, Endian.little);
    final data2 = byteData.getUint16(4, Endian.little);
    final data3 = byteData.getUint16(6, Endian.little);
    final data4 = Uint8List.sublistView(data, offset + 8, offset + 16);
    return Guid(data1, data2, data3, data4.asUnmodifiableView());
  }
}
