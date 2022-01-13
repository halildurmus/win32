// ID3D10Texture2D.dart

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

import '../../graphics/direct3d10/ID3D10Resource.dart';
import '../../graphics/direct3d10/structs.g.dart';
import '../../foundation/structs.g.dart';

/// @nodoc
const IID_ID3D10Texture2D = '{9B7E4C04-342C-4106-A19F-4F2704F689F0}';

/// {@category Interface}
/// {@category com}
class ID3D10Texture2D extends ID3D10Resource {
  // vtable begins at 10, is 3 entries long.
  ID3D10Texture2D(Pointer<COMObject> ptr) : super(ptr);

  int $Map(
    int Subresource,
    int MapType,
    int MapFlags,
    Pointer<D3D10_MAPPED_TEXTURE2D> pMappedTex2D,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(10)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Uint32 Subresource,
            Int32 MapType,
            Uint32 MapFlags,
            Pointer<D3D10_MAPPED_TEXTURE2D> pMappedTex2D,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int Subresource,
            int MapType,
            int MapFlags,
            Pointer<D3D10_MAPPED_TEXTURE2D> pMappedTex2D,
          )>()(
        ptr.ref.lpVtbl,
        Subresource,
        MapType,
        MapFlags,
        pMappedTex2D,
      );

  void Unmap(
    int Subresource,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(11)
          .cast<
              Pointer<
                  NativeFunction<
                      Void Function(
            Pointer,
            Uint32 Subresource,
          )>>>()
          .value
          .asFunction<
              void Function(
            Pointer,
            int Subresource,
          )>()(
        ptr.ref.lpVtbl,
        Subresource,
      );

  void GetDesc(
    Pointer<D3D10_TEXTURE2D_DESC> pDesc,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(12)
          .cast<
              Pointer<
                  NativeFunction<
                      Void Function(
            Pointer,
            Pointer<D3D10_TEXTURE2D_DESC> pDesc,
          )>>>()
          .value
          .asFunction<
              void Function(
            Pointer,
            Pointer<D3D10_TEXTURE2D_DESC> pDesc,
          )>()(
        ptr.ref.lpVtbl,
        pDesc,
      );
}
