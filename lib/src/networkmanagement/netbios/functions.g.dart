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
import '../../networkmanagement/netbios/structs.g.dart'; // -----------------------------------------------------------------------

// netapi32.dll
// -----------------------------------------------------------------------
final _netapi32 = DynamicLibrary.open('netapi32.dll');

int Netbios(
  Pointer<NCB> pncb,
) =>
    _Netbios(
      pncb,
    );

late final _Netbios = _netapi32.lookupFunction<
    Uint8 Function(
  Pointer<NCB> pncb,
),
    int Function(
  Pointer<NCB> pncb,
)>('Netbios');
