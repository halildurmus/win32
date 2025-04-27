import 'dart:typed_data';

import '../../compressed_integer.dart';
import 'metadata_heap.dart';

/// Provides indexed access to the `#US` heap in a metadata file.
final class UserStringHeap extends MetadataHeap {
  /// Creates a [UserStringHeap] from the provided binary [data].
  const UserStringHeap(super.data);

  /// Retrieves the user-defined string located at the specified [offset].
  String operator [](int offset) {
    assert(
      offset >= 0 && offset < data.length,
      'Offset $offset out of bounds.',
    );
    final CompressedInteger(:value, :bytesRead) = CompressedInteger.decode(
      data,
      offset,
    );
    assert(
      value.isOdd || value == 0,
      'Expected payload size to be an odd number or zero, but got: $value',
    );
    if (value == 0) return '';
    final stringBytes = ByteData.sublistView(
      data,
      offset + bytesRead,
      offset + value + bytesRead - 1, // Exclude the final byte.
    );
    final charCodes = List.generate(
      stringBytes.lengthInBytes ~/ 2,
      (i) => stringBytes.getUint16(i * 2, Endian.little),
    );
    return String.fromCharCodes(charCodes);
  }
}
