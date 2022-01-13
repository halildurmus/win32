// IDirect3DVolumeTexture9.dart

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
import '../../graphics/direct3d9/IDirect3DVolume9.dart';

/// @nodoc
const IID_IDirect3DVolumeTexture9 = '{2518526C-E789-4111-A7B9-47EF328D13E6}';

/// {@category Interface}
/// {@category com}
class IDirect3DVolumeTexture9 extends IDirect3DBaseTexture9 {
  // vtable begins at 17, is 5 entries long.
  IDirect3DVolumeTexture9(Pointer<COMObject> ptr) : super(ptr);

  int GetLevelDesc(
    int Level,
    Pointer<D3DVOLUME_DESC> pDesc,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(17)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Uint32 Level,
            Pointer<D3DVOLUME_DESC> pDesc,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int Level,
            Pointer<D3DVOLUME_DESC> pDesc,
          )>()(
        ptr.ref.lpVtbl,
        Level,
        pDesc,
      );

  int GetVolumeLevel(
    int Level,
    Pointer<Pointer<COMObject>> ppVolumeLevel,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(18)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Uint32 Level,
            Pointer<Pointer<COMObject>> ppVolumeLevel,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int Level,
            Pointer<Pointer<COMObject>> ppVolumeLevel,
          )>()(
        ptr.ref.lpVtbl,
        Level,
        ppVolumeLevel,
      );

  int LockBox(
    int Level,
    Pointer<D3DLOCKED_BOX> pLockedVolume,
    Pointer<D3DBOX> pBox,
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
            Pointer<D3DLOCKED_BOX> pLockedVolume,
            Pointer<D3DBOX> pBox,
            Uint32 Flags,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int Level,
            Pointer<D3DLOCKED_BOX> pLockedVolume,
            Pointer<D3DBOX> pBox,
            int Flags,
          )>()(
        ptr.ref.lpVtbl,
        Level,
        pLockedVolume,
        pBox,
        Flags,
      );

  int UnlockBox(
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

  int AddDirtyBox(
    Pointer<D3DBOX> pDirtyBox,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(21)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<D3DBOX> pDirtyBox,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<D3DBOX> pDirtyBox,
          )>()(
        ptr.ref.lpVtbl,
        pDirtyBox,
      );
}
