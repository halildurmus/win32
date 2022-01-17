import 'dart:ffi';

class PointerData {
  final Pointer<Uint8> data;
  final int lengthInBytes;

  const PointerData(this.data, this.lengthInBytes);
}
