// Maps FFI prototypes onto the corresponding Win32 API function calls

// THIS FILE IS GENERATED AUTOMATICALLY AND SHOULD NOT BE EDITED DIRECTLY.

// ignore_for_file: camel_case_extensions, camel_case_types
// ignore_for_file: directives_ordering, unnecessary_getters_setters
// ignore_for_file: unused_field, unused_import

import 'dart:ffi';

import 'package:ffi/ffi.dart';

import 'enums.g.dart';

import '../../../combase.dart';
import '../../../guid.dart';
import '../../../system/com/IMalloc.dart'; // -----------------------------------------------------------------------

// dxcompiler.dll
// -----------------------------------------------------------------------
final _dxcompiler = DynamicLibrary.open('dxcompiler.dll');

int DxcCreateInstance(
  Pointer<GUID> rclsid,
  Pointer<GUID> riid,
  Pointer<Pointer> ppv,
) =>
    _DxcCreateInstance(
      rclsid,
      riid,
      ppv,
    );

late final _DxcCreateInstance = _dxcompiler.lookupFunction<
    Int32 Function(
  Pointer<GUID> rclsid,
  Pointer<GUID> riid,
  Pointer<Pointer> ppv,
),
    int Function(
  Pointer<GUID> rclsid,
  Pointer<GUID> riid,
  Pointer<Pointer> ppv,
)>('DxcCreateInstance');

int DxcCreateInstance2(
  Pointer<COMObject> pMalloc,
  Pointer<GUID> rclsid,
  Pointer<GUID> riid,
  Pointer<Pointer> ppv,
) =>
    _DxcCreateInstance2(
      pMalloc,
      rclsid,
      riid,
      ppv,
    );

late final _DxcCreateInstance2 = _dxcompiler.lookupFunction<
    Int32 Function(
  Pointer<COMObject> pMalloc,
  Pointer<GUID> rclsid,
  Pointer<GUID> riid,
  Pointer<Pointer> ppv,
),
    int Function(
  Pointer<COMObject> pMalloc,
  Pointer<GUID> rclsid,
  Pointer<GUID> riid,
  Pointer<Pointer> ppv,
)>('DxcCreateInstance2');
