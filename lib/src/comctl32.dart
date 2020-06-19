// comctl32.dart

// Maps FFI prototypes onto the corresponding Win32 API function calls

import 'dart:ffi';

import 'typedefs.dart';

final _comctl32 = DynamicLibrary.open('comctl32.dll');

/// {@category comctl32}
final TaskDialog =
    _comctl32.lookupFunction<taskDialogNative, taskDialogDart>('TaskDialog');
