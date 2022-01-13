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

// dxcore.dll
// -----------------------------------------------------------------------
final _dxcore = DynamicLibrary.open('dxcore.dll');

int DXCoreCreateAdapterFactory(
  Pointer<GUID> riid,
  Pointer<Pointer> ppvFactory,
) =>
    _DXCoreCreateAdapterFactory(
      riid,
      ppvFactory,
    );

late final _DXCoreCreateAdapterFactory = _dxcore.lookupFunction<
    Int32 Function(
  Pointer<GUID> riid,
  Pointer<Pointer> ppvFactory,
),
    int Function(
  Pointer<GUID> riid,
  Pointer<Pointer> ppvFactory,
)>('DXCoreCreateAdapterFactory');
