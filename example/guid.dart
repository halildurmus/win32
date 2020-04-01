// guid.dart

// Tests various GUID-related APIs

import 'dart:ffi';
import 'package:win32/win32.dart';

void main() {
  final guid = GUID.allocate();

  final hr = CoCreateGuid(guid.addressOf);
  if (SUCCEEDED(hr)) {
    print(guid);
  }
}
