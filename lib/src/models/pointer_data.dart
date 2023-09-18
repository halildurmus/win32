import 'dart:ffi';

/// A class representing pointer data and its length in bytes.
class PointerData {
  /// Creates an instance of [PointerData] with the given pointer [data] and
  /// its [lengthInBytes].
  const PointerData(this.data, this.lengthInBytes);

  /// The pointer to the data.
  final Pointer<Uint8> data;

  /// The length of the data in bytes.
  final int lengthInBytes;
}
