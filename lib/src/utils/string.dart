// Helper for allocating memory for Unicode strings.
//
import 'dart:ffi';

import 'package:ffi/ffi.dart';

Pointer<Utf16> stralloc(int wChars) => calloc<Uint16>(wChars).cast();
