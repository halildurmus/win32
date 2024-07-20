// Extension methods to make it easier to work with Uint8List in ffi.

import 'dart:ffi';
import 'dart:typed_data';

import 'package:ffi/ffi.dart';

extension Uint8ListBlobConversion on Uint8List {
  /// Allocates a pointer filled with the Uint8List data.
  Pointer<Uint8> allocatePointer() {
    final blob = calloc<Uint8>(length);
    blob.asTypedList(length).setAll(0, this);
    return blob;
  }
}
