// Maps FFI prototypes onto the corresponding Win32 API function calls

// THIS FILE IS GENERATED AUTOMATICALLY AND SHOULD NOT BE EDITED DIRECTLY.

// ignore_for_file: camel_case_extensions, camel_case_types
// ignore_for_file: directives_ordering, unnecessary_getters_setters
// ignore_for_file: unused_field, unused_import

import 'dart:ffi';

import 'package:ffi/ffi.dart';

import 'enums.g.dart';

import '../../combase.dart';
import '../../guid.dart';
import '../../foundation/structs.g.dart'; // -----------------------------------------------------------------------

// quartz.dll
// -----------------------------------------------------------------------
final _quartz = DynamicLibrary.open('quartz.dll');

int AMGetErrorText(
  int hr,
  Pointer<Utf16> pbuffer,
  int MaxLen,
) =>
    _AMGetErrorText(
      hr,
      pbuffer,
      MaxLen,
    );

late final _AMGetErrorText = _quartz.lookupFunction<
    Uint32 Function(
  Int32 hr,
  Pointer<Utf16> pbuffer,
  Uint32 MaxLen,
),
    int Function(
  int hr,
  Pointer<Utf16> pbuffer,
  int MaxLen,
)>('AMGetErrorTextW');
