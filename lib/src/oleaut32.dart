// oleaut32.dart

// Maps FFI prototypes onto the corresponding Win32 API function calls

import 'dart:ffi';

import 'typedefs.dart';

final _oleaut32 = DynamicLibrary.open('oleaut32.dll');

/// {@category oleaut32}
final VariantClear = _oleaut32
    .lookupFunction<variantClearNative, variantClearDart>('VariantClear');
