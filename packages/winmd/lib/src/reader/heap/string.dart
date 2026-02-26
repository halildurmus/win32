import 'metadata_heap.dart';

/// Provides indexed access to the `#Strings` heap in a metadata file.
final class StringHeap extends MetadataHeap {
  /// Creates a [StringHeap] from the provided binary [data].
  const StringHeap(super.data);

  /// The number of strings in the heap.
  int get count {
    var count = 0;
    var offset = 0;

    while (offset < data.length) {
      while (offset < data.length && data[offset] != 0) {
        offset++;
      }

      // Found a null terminator → valid string
      if (offset < data.length) {
        count++;
        offset++; // Skip null terminator
      } else {
        // If no null terminator, likely corrupted or incomplete
        break;
      }

      // Skip padded zeroes
      while (offset < data.length && data[offset] == 0) {
        offset++;
      }
    }

    return count;
  }

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

      // Extract the string from the start to the null terminator.
      yield this[start];

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
    final buffer = StringBuffer();
    var i = 0;

    // Read the array until the null terminator is encountered.
    while (true) {
      final char = data[offset + i];
      if (char == 0) return buffer.toString();
      buffer.writeCharCode(char);
      i++;
    }
  }
}
