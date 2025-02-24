import 'dart:ffi';

import 'package:ffi/ffi.dart';

@pragma('vm:prefer-inline')
void free(Pointer pointer) => calloc.free(pointer);
