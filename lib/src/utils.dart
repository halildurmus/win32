import 'dart:ffi';

class PointerData {
  final Pointer<Uint8> data;
  final int lengthBytes;

  const PointerData(this.data, this.lengthBytes);
}
