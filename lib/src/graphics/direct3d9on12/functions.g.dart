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
import '../../graphics/direct3d9on12/structs.g.dart';
import '../../graphics/direct3d9/IDirect3D9Ex.dart'; // -----------------------------------------------------------------------

// d3d9.dll
// -----------------------------------------------------------------------
final _d3d9 = DynamicLibrary.open('d3d9.dll');

Pointer<COMObject> Direct3DCreate9On12(
  int SDKVersion,
  Pointer<D3D9ON12_ARGS> pOverrideList,
  int NumOverrideEntries,
) =>
    _Direct3DCreate9On12(
      SDKVersion,
      pOverrideList,
      NumOverrideEntries,
    );

late final _Direct3DCreate9On12 = _d3d9.lookupFunction<
    Pointer<COMObject> Function(
  Uint32 SDKVersion,
  Pointer<D3D9ON12_ARGS> pOverrideList,
  Uint32 NumOverrideEntries,
),
    Pointer<COMObject> Function(
  int SDKVersion,
  Pointer<D3D9ON12_ARGS> pOverrideList,
  int NumOverrideEntries,
)>('Direct3DCreate9On12');

int Direct3DCreate9On12Ex(
  int SDKVersion,
  Pointer<D3D9ON12_ARGS> pOverrideList,
  int NumOverrideEntries,
  Pointer<Pointer<COMObject>> ppOutputInterface,
) =>
    _Direct3DCreate9On12Ex(
      SDKVersion,
      pOverrideList,
      NumOverrideEntries,
      ppOutputInterface,
    );

late final _Direct3DCreate9On12Ex = _d3d9.lookupFunction<
    Int32 Function(
  Uint32 SDKVersion,
  Pointer<D3D9ON12_ARGS> pOverrideList,
  Uint32 NumOverrideEntries,
  Pointer<Pointer<COMObject>> ppOutputInterface,
),
    int Function(
  int SDKVersion,
  Pointer<D3D9ON12_ARGS> pOverrideList,
  int NumOverrideEntries,
  Pointer<Pointer<COMObject>> ppOutputInterface,
)>('Direct3DCreate9On12Ex');
