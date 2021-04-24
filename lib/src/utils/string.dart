// Helper for allocating memory for Unicode strings.
//
import 'dart:ffi';

import 'package:ffi/ffi.dart';

Pointer<Utf16> stralloc(int wChars) => calloc<Uint16>(wChars).cast();

extension CamelCaseConversion on String {
  String toCamelCase() =>
      length >= 2 ? substring(0, 1).toLowerCase() + substring(1) : this;
}
