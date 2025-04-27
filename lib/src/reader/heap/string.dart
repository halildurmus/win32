import 'metadata_heap.dart';

/// Provides indexed access to the `#Strings` heap in a metadata file.
final class StringHeap extends MetadataHeap {
  /// Creates a [StringHeap] from the provided binary [data].
  const StringHeap(super.data);

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
