import 'dart:collection';

import 'metadata_heap.dart';

/// Provides indexed access to the `#Strings` heap in a metadata file.
final class StringHeap extends MetadataHeap {
  /// Creates a [StringHeap] from the provided binary [data].
  StringHeap(super.data);

  final _cache = HashMap<int, String>();

  /// The number of strings in the heap.
  late final int count = () {
    var n = 0;
    var offset = 0;
    while (offset < data.length) {
      while (offset < data.length && data[offset] != 0) {
        offset++;
      }
      if (offset < data.length) {
        n++;
        offset++;
      } else {
        break;
      }
      while (offset < data.length && data[offset] == 0) {
        offset++;
      }
    }
    return n;
  }();

  /// Enumerates all strings in the heap.
  Iterable<String> get strings sync* {
    var offset = 0;

    while (offset < data.length) {
      final start = offset;

      // Find the null terminator.
      while (offset < data.length && data[offset] != 0) {
        offset++;
      }

      if (offset >= data.length) break;

      // Decode inline (avoids a second null-terminator scan via operator[]).
      yield .fromCharCodes(data, start, offset);

      offset++; // Skip null terminator.

      // Skip padded zeroes.
      while (offset < data.length && data[offset] == 0) {
        offset++;
      }
    }
  }

  /// Retrieves the string located at the specified [offset].
  String operator [](int offset) {
    assert(
      offset >= 0 && offset < data.length,
      'Offset $offset out of bounds.',
    );
    if (_cache[offset] case final cached?) return cached;

    // Find the null terminator.
    var end = offset;
    while (data[end] != 0) {
      end++;
    }

    final string = String.fromCharCodes(data, offset, end);
    _cache[offset] = string;
    return string;
  }
}
