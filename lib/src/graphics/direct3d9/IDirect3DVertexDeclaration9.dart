// IDirect3DVertexDeclaration9.dart

// THIS FILE IS GENERATED AUTOMATICALLY AND SHOULD NOT BE EDITED DIRECTLY.

// ignore_for_file: unused_import, directives_ordering

import 'dart:ffi';

import 'package:ffi/ffi.dart';

import '../../combase.dart';
import '../../constants.dart';
import '../../exceptions.dart';
import '../../macros.dart';
import '../../ole32.dart';
import '../../structs.dart';
import '../../utils.dart';

import '../../system/com/IUnknown.dart';
import '../../graphics/direct3d9/structs.g.dart';

/// @nodoc
const IID_IDirect3DVertexDeclaration9 =
    '{DD13C59C-36FA-4098-A8FB-C7ED39DC8546}';

typedef _GetDevice_Native = Int32 Function(
    Pointer obj, Pointer<COMObject> ppDevice);
typedef _GetDevice_Dart = int Function(
    Pointer obj, Pointer<COMObject> ppDevice);

typedef _GetDeclaration_Native = Int32 Function(Pointer obj,
    Pointer<D3DVERTEXELEMENT9> pElement, Pointer<Uint32> pNumElements);
typedef _GetDeclaration_Dart = int Function(Pointer obj,
    Pointer<D3DVERTEXELEMENT9> pElement, Pointer<Uint32> pNumElements);

/// {@category Interface}
/// {@category com}
class IDirect3DVertexDeclaration9 extends IUnknown {
  // vtable begins at 3, ends at 4

  IDirect3DVertexDeclaration9(Pointer<COMObject> ptr) : super(ptr);

  int GetDevice(Pointer<COMObject> ppDevice) => ptr.ref.lpVtbl.value
      .elementAt(3)
      .cast<Pointer<NativeFunction<_GetDevice_Native>>>()
      .value
      .asFunction<_GetDevice_Dart>()(ptr.ref.lpVtbl, ppDevice);

  int GetDeclaration(
          Pointer<D3DVERTEXELEMENT9> pElement, Pointer<Uint32> pNumElements) =>
      ptr.ref.lpVtbl.value
              .elementAt(4)
              .cast<Pointer<NativeFunction<_GetDeclaration_Native>>>()
              .value
              .asFunction<_GetDeclaration_Dart>()(
          ptr.ref.lpVtbl, pElement, pNumElements);
}
