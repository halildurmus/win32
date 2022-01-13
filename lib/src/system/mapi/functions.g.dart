// Maps FFI prototypes onto the corresponding Win32 API function calls

// THIS FILE IS GENERATED AUTOMATICALLY AND SHOULD NOT BE EDITED DIRECTLY.

// ignore_for_file: camel_case_extensions, camel_case_types
// ignore_for_file: directives_ordering, unnecessary_getters_setters
// ignore_for_file: unused_field, unused_import

import 'dart:ffi';

import 'package:ffi/ffi.dart';

import 'enums.g.dart';

import '../../combase.dart';
import '../../guid.dart'; // -----------------------------------------------------------------------

// mapi32.dll
// -----------------------------------------------------------------------
final _mapi32 = DynamicLibrary.open('mapi32.dll');

int MAPIFreeBuffer(
  Pointer pv,
) =>
    _MAPIFreeBuffer(
      pv,
    );

late final _MAPIFreeBuffer = _mapi32.lookupFunction<
    Uint32 Function(
  Pointer pv,
),
    int Function(
  Pointer pv,
)>('MAPIFreeBuffer');
