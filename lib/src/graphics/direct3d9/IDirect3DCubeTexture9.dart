// IDirect3DCubeTexture9.dart

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
import '../../foundation/structs.g.dart';

/// @nodoc
const IID_IDirect3DCubeTexture9 = '{FFF32F81-D953-473A-9223-93D652ABA93F}';

typedef _GetLevelDesc_Native = Int32 Function(
    Pointer obj, Uint32 Level, Pointer<D3DSURFACE_DESC> pDesc);
typedef _GetLevelDesc_Dart = int Function(
    Pointer obj, int Level, Pointer<D3DSURFACE_DESC> pDesc);

typedef _GetCubeMapSurface_Native = Int32 Function(Pointer obj, Uint32 FaceType,
    Uint32 Level, Pointer<COMObject> ppCubeMapSurface);
typedef _GetCubeMapSurface_Dart = int Function(
    Pointer obj, int FaceType, int Level, Pointer<COMObject> ppCubeMapSurface);

typedef _LockRect_Native = Int32 Function(
    Pointer obj,
    Uint32 FaceType,
    Uint32 Level,
    Pointer<D3DLOCKED_RECT> pLockedRect,
    Pointer<RECT> pRect,
    Uint32 Flags);
typedef _LockRect_Dart = int Function(Pointer obj, int FaceType, int Level,
    Pointer<D3DLOCKED_RECT> pLockedRect, Pointer<RECT> pRect, int Flags);

typedef _UnlockRect_Native = Int32 Function(
    Pointer obj, Uint32 FaceType, Uint32 Level);
typedef _UnlockRect_Dart = int Function(Pointer obj, int FaceType, int Level);

typedef _AddDirtyRect_Native = Int32 Function(
    Pointer obj, Uint32 FaceType, Pointer<RECT> pDirtyRect);
typedef _AddDirtyRect_Dart = int Function(
    Pointer obj, int FaceType, Pointer<RECT> pDirtyRect);

/// {@category Interface}
/// {@category com}
class IDirect3DCubeTexture9 extends IDirect3DBaseTexture9 {
  // vtable begins at 17, ends at 21

  IDirect3DCubeTexture9(Pointer<COMObject> ptr) : super(ptr);

  int GetLevelDesc(int Level, Pointer<D3DSURFACE_DESC> pDesc) =>
      ptr.ref.lpVtbl.value
          .elementAt(17)
          .cast<Pointer<NativeFunction<_GetLevelDesc_Native>>>()
          .value
          .asFunction<_GetLevelDesc_Dart>()(ptr.ref.lpVtbl, Level, pDesc);

  int GetCubeMapSurface(
          int FaceType, int Level, Pointer<COMObject> ppCubeMapSurface) =>
      ptr.ref.lpVtbl.value
              .elementAt(18)
              .cast<Pointer<NativeFunction<_GetCubeMapSurface_Native>>>()
              .value
              .asFunction<_GetCubeMapSurface_Dart>()(
          ptr.ref.lpVtbl, FaceType, Level, ppCubeMapSurface);

  int LockRect(int FaceType, int Level, Pointer<D3DLOCKED_RECT> pLockedRect,
          Pointer<RECT> pRect, int Flags) =>
      ptr.ref.lpVtbl.value
              .elementAt(19)
              .cast<Pointer<NativeFunction<_LockRect_Native>>>()
              .value
              .asFunction<_LockRect_Dart>()(
          ptr.ref.lpVtbl, FaceType, Level, pLockedRect, pRect, Flags);

  int UnlockRect(int FaceType, int Level) => ptr.ref.lpVtbl.value
      .elementAt(20)
      .cast<Pointer<NativeFunction<_UnlockRect_Native>>>()
      .value
      .asFunction<_UnlockRect_Dart>()(ptr.ref.lpVtbl, FaceType, Level);

  int AddDirtyRect(int FaceType, Pointer<RECT> pDirtyRect) => ptr
      .ref.lpVtbl.value
      .elementAt(21)
      .cast<Pointer<NativeFunction<_AddDirtyRect_Native>>>()
      .value
      .asFunction<_AddDirtyRect_Dart>()(ptr.ref.lpVtbl, FaceType, pDirtyRect);
}
