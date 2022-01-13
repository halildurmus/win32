// IDirect3DCubeTexture9.dart

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

import '../../graphics/direct3d9/IDirect3DBaseTexture9.dart';
import '../../graphics/direct3d9/structs.g.dart';
import '../../foundation/structs.g.dart';
import '../../graphics/direct3d9/IDirect3DSurface9.dart';

/// @nodoc
const IID_IDirect3DCubeTexture9 = '{FFF32F81-D953-473A-9223-93D652ABA93F}';

/// {@category Interface}
/// {@category com}
class IDirect3DCubeTexture9 extends IDirect3DBaseTexture9 {
  // vtable begins at 17, is 5 entries long.
  IDirect3DCubeTexture9(Pointer<COMObject> ptr) : super(ptr);

  int GetLevelDesc(
    int Level,
    Pointer<D3DSURFACE_DESC> pDesc,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(17)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Uint32 Level,
            Pointer<D3DSURFACE_DESC> pDesc,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int Level,
            Pointer<D3DSURFACE_DESC> pDesc,
          )>()(
        ptr.ref.lpVtbl,
        Level,
        pDesc,
      );

  int GetCubeMapSurface(
    int FaceType,
    int Level,
    Pointer<Pointer<COMObject>> ppCubeMapSurface,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(18)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Int32 FaceType,
            Uint32 Level,
            Pointer<Pointer<COMObject>> ppCubeMapSurface,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int FaceType,
            int Level,
            Pointer<Pointer<COMObject>> ppCubeMapSurface,
          )>()(
        ptr.ref.lpVtbl,
        FaceType,
        Level,
        ppCubeMapSurface,
      );

  int LockRect(
    int FaceType,
    int Level,
    Pointer<D3DLOCKED_RECT> pLockedRect,
    Pointer<RECT> pRect,
    int Flags,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(19)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Int32 FaceType,
            Uint32 Level,
            Pointer<D3DLOCKED_RECT> pLockedRect,
            Pointer<RECT> pRect,
            Uint32 Flags,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int FaceType,
            int Level,
            Pointer<D3DLOCKED_RECT> pLockedRect,
            Pointer<RECT> pRect,
            int Flags,
          )>()(
        ptr.ref.lpVtbl,
        FaceType,
        Level,
        pLockedRect,
        pRect,
        Flags,
      );

  int UnlockRect(
    int FaceType,
    int Level,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(20)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Int32 FaceType,
            Uint32 Level,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int FaceType,
            int Level,
          )>()(
        ptr.ref.lpVtbl,
        FaceType,
        Level,
      );

  int AddDirtyRect(
    int FaceType,
    Pointer<RECT> pDirtyRect,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(21)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Int32 FaceType,
            Pointer<RECT> pDirtyRect,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int FaceType,
            Pointer<RECT> pDirtyRect,
          )>()(
        ptr.ref.lpVtbl,
        FaceType,
        pDirtyRect,
      );
}
