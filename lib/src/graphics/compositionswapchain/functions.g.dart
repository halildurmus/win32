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
import '../../system/com/IUnknown.dart'; // -----------------------------------------------------------------------

// dcomp.dll
// -----------------------------------------------------------------------
final _dcomp = DynamicLibrary.open('dcomp.dll');

int CreatePresentationFactory(
  Pointer<COMObject> d3dDevice,
  Pointer<GUID> riid,
  Pointer<Pointer> presentationFactory,
) =>
    _CreatePresentationFactory(
      d3dDevice,
      riid,
      presentationFactory,
    );

late final _CreatePresentationFactory = _dcomp.lookupFunction<
    Int32 Function(
  Pointer<COMObject> d3dDevice,
  Pointer<GUID> riid,
  Pointer<Pointer> presentationFactory,
),
    int Function(
  Pointer<COMObject> d3dDevice,
  Pointer<GUID> riid,
  Pointer<Pointer> presentationFactory,
)>('CreatePresentationFactory');
