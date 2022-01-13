// IDirect3DTexture9.dart

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
const IID_IDirect3DTexture9 = '{85C31227-3DE5-4F00-9B3A-F11AC38C18B5}';

/// {@category Interface}
/// {@category com}
class IDirect3DTexture9 extends IDirect3DBaseTexture9 {
  // vtable begins at 17, is 5 entries long.
  IDirect3DTexture9(Pointer<COMObject> ptr) : super(ptr);

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

  int GetSurfaceLevel(
    int Level,
    Pointer<Pointer<COMObject>> ppSurfaceLevel,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(18)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Uint32 Level,
            Pointer<Pointer<COMObject>> ppSurfaceLevel,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int Level,
            Pointer<Pointer<COMObject>> ppSurfaceLevel,
          )>()(
        ptr.ref.lpVtbl,
        Level,
        ppSurfaceLevel,
      );

  int LockRect(
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
            Uint32 Level,
            Pointer<D3DLOCKED_RECT> pLockedRect,
            Pointer<RECT> pRect,
            Uint32 Flags,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int Level,
            Pointer<D3DLOCKED_RECT> pLockedRect,
            Pointer<RECT> pRect,
            int Flags,
          )>()(
        ptr.ref.lpVtbl,
        Level,
        pLockedRect,
        pRect,
        Flags,
      );

  int UnlockRect(
    int Level,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(20)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Uint32 Level,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int Level,
          )>()(
        ptr.ref.lpVtbl,
        Level,
      );

  int AddDirtyRect(
    Pointer<RECT> pDirtyRect,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(21)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<RECT> pDirtyRect,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<RECT> pDirtyRect,
          )>()(
        ptr.ref.lpVtbl,
        pDirtyRect,
      );
}
