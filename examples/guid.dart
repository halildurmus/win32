// Creates a globally unique identifier (GUID)

import 'dart:ffi';

import 'package:ffi/ffi.dart';
import 'package:win32/win32.dart';

void main() {
  final guid = calloc<GUID>();

  final hr = CoCreateGuid(guid);
  if (SUCCEEDED(hr)) {
    print(guid.ref);
  }

  free(guid);
}
