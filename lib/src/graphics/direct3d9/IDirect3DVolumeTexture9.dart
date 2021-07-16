// IDirect3DVolumeTexture9.dart

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

import '../../graphics/direct3d9/IDirect3DBaseTexture9.dart';
import '../../graphics/direct3d9/structs.g.dart';

/// @nodoc
const IID_IDirect3DVolumeTexture9 = '{2518526C-E789-4111-A7B9-47EF328D13E6}';

typedef _GetLevelDesc_Native = Int32 Function(
    Pointer obj, Uint32 Level, Pointer<D3DVOLUME_DESC> pDesc);
typedef _GetLevelDesc_Dart = int Function(
    Pointer obj, int Level, Pointer<D3DVOLUME_DESC> pDesc);

typedef _GetVolumeLevel_Native = Int32 Function(
    Pointer obj, Uint32 Level, Pointer<COMObject> ppVolumeLevel);
typedef _GetVolumeLevel_Dart = int Function(
    Pointer obj, int Level, Pointer<COMObject> ppVolumeLevel);

typedef _LockBox_Native = Int32 Function(Pointer obj, Uint32 Level,
    Pointer<D3DLOCKED_BOX> pLockedVolume, Pointer<D3DBOX> pBox, Uint32 Flags);
typedef _LockBox_Dart = int Function(Pointer obj, int Level,
    Pointer<D3DLOCKED_BOX> pLockedVolume, Pointer<D3DBOX> pBox, int Flags);

typedef _UnlockBox_Native = Int32 Function(Pointer obj, Uint32 Level);
typedef _UnlockBox_Dart = int Function(Pointer obj, int Level);

typedef _AddDirtyBox_Native = Int32 Function(
    Pointer obj, Pointer<D3DBOX> pDirtyBox);
typedef _AddDirtyBox_Dart = int Function(
    Pointer obj, Pointer<D3DBOX> pDirtyBox);

/// {@category Interface}
/// {@category com}
class IDirect3DVolumeTexture9 extends IDirect3DBaseTexture9 {
  // vtable begins at 17, ends at 21

  IDirect3DVolumeTexture9(Pointer<COMObject> ptr) : super(ptr);

  int GetLevelDesc(int Level, Pointer<D3DVOLUME_DESC> pDesc) =>
      ptr.ref.lpVtbl.value
          .elementAt(17)
          .cast<Pointer<NativeFunction<_GetLevelDesc_Native>>>()
          .value
          .asFunction<_GetLevelDesc_Dart>()(ptr.ref.lpVtbl, Level, pDesc);

  int GetVolumeLevel(int Level, Pointer<COMObject> ppVolumeLevel) => ptr
      .ref.lpVtbl.value
      .elementAt(18)
      .cast<Pointer<NativeFunction<_GetVolumeLevel_Native>>>()
      .value
      .asFunction<_GetVolumeLevel_Dart>()(ptr.ref.lpVtbl, Level, ppVolumeLevel);

  int LockBox(int Level, Pointer<D3DLOCKED_BOX> pLockedVolume,
          Pointer<D3DBOX> pBox, int Flags) =>
      ptr.ref.lpVtbl.value
              .elementAt(19)
              .cast<Pointer<NativeFunction<_LockBox_Native>>>()
              .value
              .asFunction<_LockBox_Dart>()(
          ptr.ref.lpVtbl, Level, pLockedVolume, pBox, Flags);

  int UnlockBox(int Level) => ptr.ref.lpVtbl.value
      .elementAt(20)
      .cast<Pointer<NativeFunction<_UnlockBox_Native>>>()
      .value
      .asFunction<_UnlockBox_Dart>()(ptr.ref.lpVtbl, Level);

  int AddDirtyBox(Pointer<D3DBOX> pDirtyBox) => ptr.ref.lpVtbl.value
      .elementAt(21)
      .cast<Pointer<NativeFunction<_AddDirtyBox_Native>>>()
      .value
      .asFunction<_AddDirtyBox_Dart>()(ptr.ref.lpVtbl, pDirtyBox);
}
