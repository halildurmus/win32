// IDirect3DVolume9.dart

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
const IID_IDirect3DVolume9 = '{24F416E6-1F67-4AA7-B88E-D33F6F3128A1}';

typedef _GetDevice_Native = Int32 Function(
    Pointer obj, Pointer<COMObject> ppDevice);
typedef _GetDevice_Dart = int Function(
    Pointer obj, Pointer<COMObject> ppDevice);

typedef _SetPrivateData_Native = Int32 Function(Pointer obj,
    Pointer<GUID> refguid, Pointer pData, Uint32 SizeOfData, Uint32 Flags);
typedef _SetPrivateData_Dart = int Function(Pointer obj, Pointer<GUID> refguid,
    Pointer pData, int SizeOfData, int Flags);

typedef _GetPrivateData_Native = Int32 Function(Pointer obj,
    Pointer<GUID> refguid, Pointer pData, Pointer<Uint32> pSizeOfData);
typedef _GetPrivateData_Dart = int Function(Pointer obj, Pointer<GUID> refguid,
    Pointer pData, Pointer<Uint32> pSizeOfData);

typedef _FreePrivateData_Native = Int32 Function(
    Pointer obj, Pointer<GUID> refguid);
typedef _FreePrivateData_Dart = int Function(
    Pointer obj, Pointer<GUID> refguid);

typedef _GetContainer_Native = Int32 Function(
    Pointer obj, Pointer<GUID> riid, Pointer<Pointer> ppContainer);
typedef _GetContainer_Dart = int Function(
    Pointer obj, Pointer<GUID> riid, Pointer<Pointer> ppContainer);

typedef _GetDesc_Native = Int32 Function(
    Pointer obj, Pointer<D3DVOLUME_DESC> pDesc);
typedef _GetDesc_Dart = int Function(
    Pointer obj, Pointer<D3DVOLUME_DESC> pDesc);

typedef _LockBox_Native = Int32 Function(Pointer obj,
    Pointer<D3DLOCKED_BOX> pLockedVolume, Pointer<D3DBOX> pBox, Uint32 Flags);
typedef _LockBox_Dart = int Function(Pointer obj,
    Pointer<D3DLOCKED_BOX> pLockedVolume, Pointer<D3DBOX> pBox, int Flags);

typedef _UnlockBox_Native = Int32 Function(Pointer obj);
typedef _UnlockBox_Dart = int Function(Pointer obj);

/// {@category Interface}
/// {@category com}
class IDirect3DVolume9 extends IUnknown {
  // vtable begins at 3, ends at 10

  IDirect3DVolume9(Pointer<COMObject> ptr) : super(ptr);

  int GetDevice(Pointer<COMObject> ppDevice) => ptr.ref.lpVtbl.value
      .elementAt(3)
      .cast<Pointer<NativeFunction<_GetDevice_Native>>>()
      .value
      .asFunction<_GetDevice_Dart>()(ptr.ref.lpVtbl, ppDevice);

  int SetPrivateData(
          Pointer<GUID> refguid, Pointer pData, int SizeOfData, int Flags) =>
      ptr.ref.lpVtbl.value
              .elementAt(4)
              .cast<Pointer<NativeFunction<_SetPrivateData_Native>>>()
              .value
              .asFunction<_SetPrivateData_Dart>()(
          ptr.ref.lpVtbl, refguid, pData, SizeOfData, Flags);

  int GetPrivateData(
          Pointer<GUID> refguid, Pointer pData, Pointer<Uint32> pSizeOfData) =>
      ptr.ref.lpVtbl.value
              .elementAt(5)
              .cast<Pointer<NativeFunction<_GetPrivateData_Native>>>()
              .value
              .asFunction<_GetPrivateData_Dart>()(
          ptr.ref.lpVtbl, refguid, pData, pSizeOfData);

  int FreePrivateData(Pointer<GUID> refguid) => ptr.ref.lpVtbl.value
      .elementAt(6)
      .cast<Pointer<NativeFunction<_FreePrivateData_Native>>>()
      .value
      .asFunction<_FreePrivateData_Dart>()(ptr.ref.lpVtbl, refguid);

  int GetContainer(Pointer<GUID> riid, Pointer<Pointer> ppContainer) =>
      ptr.ref.lpVtbl.value
          .elementAt(7)
          .cast<Pointer<NativeFunction<_GetContainer_Native>>>()
          .value
          .asFunction<_GetContainer_Dart>()(ptr.ref.lpVtbl, riid, ppContainer);

  int GetDesc(Pointer<D3DVOLUME_DESC> pDesc) => ptr.ref.lpVtbl.value
      .elementAt(8)
      .cast<Pointer<NativeFunction<_GetDesc_Native>>>()
      .value
      .asFunction<_GetDesc_Dart>()(ptr.ref.lpVtbl, pDesc);

  int LockBox(Pointer<D3DLOCKED_BOX> pLockedVolume, Pointer<D3DBOX> pBox,
          int Flags) =>
      ptr.ref.lpVtbl.value
              .elementAt(9)
              .cast<Pointer<NativeFunction<_LockBox_Native>>>()
              .value
              .asFunction<_LockBox_Dart>()(
          ptr.ref.lpVtbl, pLockedVolume, pBox, Flags);

  int UnlockBox() => ptr.ref.lpVtbl.value
      .elementAt(10)
      .cast<Pointer<NativeFunction<_UnlockBox_Native>>>()
      .value
      .asFunction<_UnlockBox_Dart>()(ptr.ref.lpVtbl);
}
