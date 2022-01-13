// IDirect3DVertexDeclaration9.dart

// THIS FILE IS GENERATED AUTOMATICALLY AND SHOULD NOT BE EDITED DIRECTLY.

// ignore_for_file: unused_import, directives_ordering

import 'dart:ffi';

import 'package:ffi/ffi.dart';

import '../../combase.dart';
import '../../constants.dart';
import '../../exceptions.dart';
import '../../guid.dart';
import '../../macros.dart';
import '../../ole32.dart';
import '../../utils.dart';

import '../../system/com/IUnknown.dart';
import '../../graphics/direct3d9/IDirect3DDevice9.dart';
import '../../foundation/structs.g.dart';
import '../../graphics/direct3d9/structs.g.dart';

/// @nodoc
const IID_IDirect3DVertexDeclaration9 =
    '{DD13C59C-36FA-4098-A8FB-C7ED39DC8546}';

/// {@category Interface}
/// {@category com}
class IDirect3DVertexDeclaration9 extends IUnknown {
  // vtable begins at 3, is 2 entries long.
  IDirect3DVertexDeclaration9(Pointer<COMObject> ptr) : super(ptr);

  int GetDevice(
    Pointer<Pointer<COMObject>> ppDevice,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(3)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Pointer<COMObject>> ppDevice,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Pointer<COMObject>> ppDevice,
          )>()(
        ptr.ref.lpVtbl,
        ppDevice,
      );

  int GetDeclaration(
    Pointer<D3DVERTEXELEMENT9> pElement,
    Pointer<Uint32> pNumElements,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(4)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<D3DVERTEXELEMENT9> pElement,
            Pointer<Uint32> pNumElements,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<D3DVERTEXELEMENT9> pElement,
            Pointer<Uint32> pNumElements,
          )>()(
        ptr.ref.lpVtbl,
        pElement,
        pNumElements,
      );
}
