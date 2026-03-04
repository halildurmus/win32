import 'dart:collection';
import 'dart:typed_data';

import '../../guid.dart';
import 'metadata_heap.dart';

/// Provides indexed access to the `#GUID` heap in a metadata file.
final class GuidHeap extends MetadataHeap {
  /// Creates a [GuidHeap] from the provided binary [data].
  GuidHeap(super.data);

  final _cache = HashMap<int, Guid>();

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
    if (_cache[offset] case final cached?) return cached;
    final byteData = ByteData.sublistView(data, offset, offset + 8);
    final data1 = byteData.getUint32(0, .little);
    final data2 = byteData.getUint16(4, .little);
    final data3 = byteData.getUint16(6, .little);
    final data4 = Uint8List.sublistView(data, offset + 8, offset + 16);
    final guid = Guid(data1, data2, data3, data4.asUnmodifiableView());
    _cache[offset] = guid;
    return guid;
  }
}
