import 'dart:collection';
import 'dart:typed_data';

import '../../compressed_integer.dart';
import 'metadata_heap.dart';

/// Provides indexed access to the `#US` heap in a metadata file.
final class UserStringHeap extends MetadataHeap {
  /// Creates a [UserStringHeap] from the provided binary [data].
  UserStringHeap(super.data);

  final _cache = HashMap<int, String>();

  /// The number of user-defined strings in the heap.
  late final int count = () {
    var n = 0;
    var offset = 0;
    while (offset < data.length) {
      try {
        final CompressedInteger(:value, :bytesRead) = .decode(data, offset);
        final totalBytes = value + bytesRead;
        if (totalBytes == 0) break;
        n++;
        offset += totalBytes;
        while (offset < data.length && data[offset] == 0) {
          offset++;
        }
      } catch (_) {
        break;
      }
    }
    return n;
  }();

  /// Enumerates all user-defined strings in the heap.
  Iterable<String> get userStrings sync* {
    var offset = 0;
    while (offset < data.length) {
      try {
        yield this[offset];
        final CompressedInteger(:value, :bytesRead) = .decode(data, offset);
        final totalBytes = value + bytesRead;
        if (totalBytes == 0) break;
        offset += totalBytes;
        while (offset < data.length && data[offset] == 0) {
          offset++;
        }
      } catch (_) {
        break;
      }
    }
  }

  /// Retrieves the user-defined string located at the specified [offset].
  String operator [](int offset) {
    assert(
      offset >= 0 && offset < data.length,
      'Offset $offset out of bounds.',
    );
    if (_cache[offset] case final cached?) return cached;
    final CompressedInteger(:value, :bytesRead) = .decode(data, offset);
    assert(
      value.isOdd || value == 0,
      'Expected payload size to be an odd number or zero, but got: $value',
    );
    if (value == 0) return _cache[offset] = '';
    final stringBytes = ByteData.sublistView(
      data,
      offset + bytesRead,
      offset + value + bytesRead - 1, // Exclude the final byte.
    );
    final charCodes = List.generate(
      stringBytes.lengthInBytes ~/ 2,
      (i) => stringBytes.getUint16(i * 2, .little),
    );
    return _cache[offset] = .fromCharCodes(charCodes);
  }
}
