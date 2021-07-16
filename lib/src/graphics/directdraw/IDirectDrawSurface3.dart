// IDirectDrawSurface3.dart

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
import '../../graphics/directdraw/structs.g.dart';
import '../../foundation/structs.g.dart';
import '../../graphics/directdraw/callbacks.g.dart';
import '../../graphics/gdi/structs.g.dart';

/// @nodoc
const IID_IDirectDrawSurface3 = '{DA044E00-69B2-11D0-A1D5-00AA00B8DFBB}';

typedef _AddAttachedSurface_Native = Int32 Function(
    Pointer obj, COMObject param0);
typedef _AddAttachedSurface_Dart = int Function(Pointer obj, COMObject param0);

typedef _AddOverlayDirtyRect_Native = Int32 Function(
    Pointer obj, Pointer<RECT> param0);
typedef _AddOverlayDirtyRect_Dart = int Function(
    Pointer obj, Pointer<RECT> param0);

typedef _Blt_Native = Int32 Function(
    Pointer obj,
    Pointer<RECT> param0,
    COMObject param1,
    Pointer<RECT> param2,
    Uint32 param3,
    Pointer<DDBLTFX> param4);
typedef _Blt_Dart = int Function(
    Pointer obj,
    Pointer<RECT> param0,
    COMObject param1,
    Pointer<RECT> param2,
    int param3,
    Pointer<DDBLTFX> param4);

typedef _BltBatch_Native = Int32 Function(
    Pointer obj, Pointer<DDBLTBATCH> param0, Uint32 param1, Uint32 param2);
typedef _BltBatch_Dart = int Function(
    Pointer obj, Pointer<DDBLTBATCH> param0, int param1, int param2);

typedef _BltFast_Native = Int32 Function(Pointer obj, Uint32 param0,
    Uint32 param1, COMObject param2, Pointer<RECT> param3, Uint32 param4);
typedef _BltFast_Dart = int Function(Pointer obj, int param0, int param1,
    COMObject param2, Pointer<RECT> param3, int param4);

typedef _DeleteAttachedSurface_Native = Int32 Function(
    Pointer obj, Uint32 param0, COMObject param1);
typedef _DeleteAttachedSurface_Dart = int Function(
    Pointer obj, int param0, COMObject param1);

typedef _EnumAttachedSurfaces_Native = Int32 Function(Pointer obj,
    Pointer param0, Pointer<NativeFunction<LPDDENUMSURFACESCALLBACK>> param1);
typedef _EnumAttachedSurfaces_Dart = int Function(Pointer obj, Pointer param0,
    Pointer<NativeFunction<LPDDENUMSURFACESCALLBACK>> param1);

typedef _EnumOverlayZOrders_Native = Int32 Function(Pointer obj, Uint32 param0,
    Pointer param1, Pointer<NativeFunction<LPDDENUMSURFACESCALLBACK>> param2);
typedef _EnumOverlayZOrders_Dart = int Function(Pointer obj, int param0,
    Pointer param1, Pointer<NativeFunction<LPDDENUMSURFACESCALLBACK>> param2);

typedef _Flip_Native = Int32 Function(
    Pointer obj, COMObject param0, Uint32 param1);
typedef _Flip_Dart = int Function(Pointer obj, COMObject param0, int param1);

typedef _GetAttachedSurface_Native = Int32 Function(
    Pointer obj, Pointer<DDSCAPS> param0, Pointer<COMObject> param1);
typedef _GetAttachedSurface_Dart = int Function(
    Pointer obj, Pointer<DDSCAPS> param0, Pointer<COMObject> param1);

typedef _GetBltStatus_Native = Int32 Function(Pointer obj, Uint32 param0);
typedef _GetBltStatus_Dart = int Function(Pointer obj, int param0);

typedef _GetCaps_Native = Int32 Function(Pointer obj, Pointer<DDSCAPS> param0);
typedef _GetCaps_Dart = int Function(Pointer obj, Pointer<DDSCAPS> param0);

typedef _GetClipper_Native = Int32 Function(
    Pointer obj, Pointer<COMObject> param0);
typedef _GetClipper_Dart = int Function(Pointer obj, Pointer<COMObject> param0);

typedef _GetColorKey_Native = Int32 Function(
    Pointer obj, Uint32 param0, Pointer<DDCOLORKEY> param1);
typedef _GetColorKey_Dart = int Function(
    Pointer obj, int param0, Pointer<DDCOLORKEY> param1);

typedef _GetDC_Native = Int32 Function(Pointer obj, Pointer<IntPtr> param0);
typedef _GetDC_Dart = int Function(Pointer obj, Pointer<IntPtr> param0);

typedef _GetFlipStatus_Native = Int32 Function(Pointer obj, Uint32 param0);
typedef _GetFlipStatus_Dart = int Function(Pointer obj, int param0);

typedef _GetOverlayPosition_Native = Int32 Function(
    Pointer obj, Pointer<Int32> param0, Pointer<Int32> param1);
typedef _GetOverlayPosition_Dart = int Function(
    Pointer obj, Pointer<Int32> param0, Pointer<Int32> param1);

typedef _GetPalette_Native = Int32 Function(
    Pointer obj, Pointer<COMObject> param0);
typedef _GetPalette_Dart = int Function(Pointer obj, Pointer<COMObject> param0);

typedef _GetPixelFormat_Native = Int32 Function(
    Pointer obj, Pointer<DDPIXELFORMAT> param0);
typedef _GetPixelFormat_Dart = int Function(
    Pointer obj, Pointer<DDPIXELFORMAT> param0);

typedef _GetSurfaceDesc_Native = Int32 Function(
    Pointer obj, Pointer<DDSURFACEDESC> param0);
typedef _GetSurfaceDesc_Dart = int Function(
    Pointer obj, Pointer<DDSURFACEDESC> param0);

typedef _Initialize_Native = Int32 Function(
    Pointer obj, COMObject param0, Pointer<DDSURFACEDESC> param1);
typedef _Initialize_Dart = int Function(
    Pointer obj, COMObject param0, Pointer<DDSURFACEDESC> param1);

typedef _IsLost_Native = Int32 Function(Pointer obj);
typedef _IsLost_Dart = int Function(Pointer obj);

typedef _Lock_Native = Int32 Function(Pointer obj, Pointer<RECT> param0,
    Pointer<DDSURFACEDESC> param1, Uint32 param2, IntPtr param3);
typedef _Lock_Dart = int Function(Pointer obj, Pointer<RECT> param0,
    Pointer<DDSURFACEDESC> param1, int param2, int param3);

typedef _ReleaseDC_Native = Int32 Function(Pointer obj, IntPtr param0);
typedef _ReleaseDC_Dart = int Function(Pointer obj, int param0);

typedef _Restore_Native = Int32 Function(Pointer obj);
typedef _Restore_Dart = int Function(Pointer obj);

typedef _SetClipper_Native = Int32 Function(Pointer obj, COMObject param0);
typedef _SetClipper_Dart = int Function(Pointer obj, COMObject param0);

typedef _SetColorKey_Native = Int32 Function(
    Pointer obj, Uint32 param0, Pointer<DDCOLORKEY> param1);
typedef _SetColorKey_Dart = int Function(
    Pointer obj, int param0, Pointer<DDCOLORKEY> param1);

typedef _SetOverlayPosition_Native = Int32 Function(
    Pointer obj, Int32 param0, Int32 param1);
typedef _SetOverlayPosition_Dart = int Function(
    Pointer obj, int param0, int param1);

typedef _SetPalette_Native = Int32 Function(Pointer obj, COMObject param0);
typedef _SetPalette_Dart = int Function(Pointer obj, COMObject param0);

typedef _Unlock_Native = Int32 Function(Pointer obj, Pointer param0);
typedef _Unlock_Dart = int Function(Pointer obj, Pointer param0);

typedef _UpdateOverlay_Native = Int32 Function(
    Pointer obj,
    Pointer<RECT> param0,
    COMObject param1,
    Pointer<RECT> param2,
    Uint32 param3,
    Pointer<DDOVERLAYFX> param4);
typedef _UpdateOverlay_Dart = int Function(
    Pointer obj,
    Pointer<RECT> param0,
    COMObject param1,
    Pointer<RECT> param2,
    int param3,
    Pointer<DDOVERLAYFX> param4);

typedef _UpdateOverlayDisplay_Native = Int32 Function(
    Pointer obj, Uint32 param0);
typedef _UpdateOverlayDisplay_Dart = int Function(Pointer obj, int param0);

typedef _UpdateOverlayZOrder_Native = Int32 Function(
    Pointer obj, Uint32 param0, COMObject param1);
typedef _UpdateOverlayZOrder_Dart = int Function(
    Pointer obj, int param0, COMObject param1);

typedef _GetDDInterface_Native = Int32 Function(
    Pointer obj, Pointer<Pointer> param0);
typedef _GetDDInterface_Dart = int Function(
    Pointer obj, Pointer<Pointer> param0);

typedef _PageLock_Native = Int32 Function(Pointer obj, Uint32 param0);
typedef _PageLock_Dart = int Function(Pointer obj, int param0);

typedef _PageUnlock_Native = Int32 Function(Pointer obj, Uint32 param0);
typedef _PageUnlock_Dart = int Function(Pointer obj, int param0);

typedef _SetSurfaceDesc_Native = Int32 Function(
    Pointer obj, Pointer<DDSURFACEDESC> param0, Uint32 param1);
typedef _SetSurfaceDesc_Dart = int Function(
    Pointer obj, Pointer<DDSURFACEDESC> param0, int param1);

/// {@category Interface}
/// {@category com}
class IDirectDrawSurface3 extends IUnknown {
  // vtable begins at 3, ends at 39

  IDirectDrawSurface3(Pointer<COMObject> ptr) : super(ptr);

  int AddAttachedSurface(COMObject param0) => ptr.ref.lpVtbl.value
      .elementAt(3)
      .cast<Pointer<NativeFunction<_AddAttachedSurface_Native>>>()
      .value
      .asFunction<_AddAttachedSurface_Dart>()(ptr.ref.lpVtbl, param0);

  int AddOverlayDirtyRect(Pointer<RECT> param0) => ptr.ref.lpVtbl.value
      .elementAt(4)
      .cast<Pointer<NativeFunction<_AddOverlayDirtyRect_Native>>>()
      .value
      .asFunction<_AddOverlayDirtyRect_Dart>()(ptr.ref.lpVtbl, param0);

  int Blt(Pointer<RECT> param0, COMObject param1, Pointer<RECT> param2,
          int param3, Pointer<DDBLTFX> param4) =>
      ptr.ref.lpVtbl.value
              .elementAt(5)
              .cast<Pointer<NativeFunction<_Blt_Native>>>()
              .value
              .asFunction<_Blt_Dart>()(
          ptr.ref.lpVtbl, param0, param1, param2, param3, param4);

  int BltBatch(Pointer<DDBLTBATCH> param0, int param1, int param2) =>
      ptr.ref.lpVtbl.value
          .elementAt(6)
          .cast<Pointer<NativeFunction<_BltBatch_Native>>>()
          .value
          .asFunction<_BltBatch_Dart>()(ptr.ref.lpVtbl, param0, param1, param2);

  int BltFast(int param0, int param1, COMObject param2, Pointer<RECT> param3,
          int param4) =>
      ptr.ref.lpVtbl.value
              .elementAt(7)
              .cast<Pointer<NativeFunction<_BltFast_Native>>>()
              .value
              .asFunction<_BltFast_Dart>()(
          ptr.ref.lpVtbl, param0, param1, param2, param3, param4);

  int DeleteAttachedSurface(int param0, COMObject param1) =>
      ptr.ref.lpVtbl.value
              .elementAt(8)
              .cast<Pointer<NativeFunction<_DeleteAttachedSurface_Native>>>()
              .value
              .asFunction<_DeleteAttachedSurface_Dart>()(
          ptr.ref.lpVtbl, param0, param1);

  int EnumAttachedSurfaces(Pointer param0,
          Pointer<NativeFunction<LPDDENUMSURFACESCALLBACK>> param1) =>
      ptr.ref.lpVtbl.value
              .elementAt(9)
              .cast<Pointer<NativeFunction<_EnumAttachedSurfaces_Native>>>()
              .value
              .asFunction<_EnumAttachedSurfaces_Dart>()(
          ptr.ref.lpVtbl, param0, param1);

  int EnumOverlayZOrders(int param0, Pointer param1,
          Pointer<NativeFunction<LPDDENUMSURFACESCALLBACK>> param2) =>
      ptr.ref.lpVtbl.value
              .elementAt(10)
              .cast<Pointer<NativeFunction<_EnumOverlayZOrders_Native>>>()
              .value
              .asFunction<_EnumOverlayZOrders_Dart>()(
          ptr.ref.lpVtbl, param0, param1, param2);

  int Flip(COMObject param0, int param1) => ptr.ref.lpVtbl.value
      .elementAt(11)
      .cast<Pointer<NativeFunction<_Flip_Native>>>()
      .value
      .asFunction<_Flip_Dart>()(ptr.ref.lpVtbl, param0, param1);

  int GetAttachedSurface(Pointer<DDSCAPS> param0, Pointer<COMObject> param1) =>
      ptr.ref.lpVtbl.value
              .elementAt(12)
              .cast<Pointer<NativeFunction<_GetAttachedSurface_Native>>>()
              .value
              .asFunction<_GetAttachedSurface_Dart>()(
          ptr.ref.lpVtbl, param0, param1);

  int GetBltStatus(int param0) => ptr.ref.lpVtbl.value
      .elementAt(13)
      .cast<Pointer<NativeFunction<_GetBltStatus_Native>>>()
      .value
      .asFunction<_GetBltStatus_Dart>()(ptr.ref.lpVtbl, param0);

  int GetCaps(Pointer<DDSCAPS> param0) => ptr.ref.lpVtbl.value
      .elementAt(14)
      .cast<Pointer<NativeFunction<_GetCaps_Native>>>()
      .value
      .asFunction<_GetCaps_Dart>()(ptr.ref.lpVtbl, param0);

  int GetClipper(Pointer<COMObject> param0) => ptr.ref.lpVtbl.value
      .elementAt(15)
      .cast<Pointer<NativeFunction<_GetClipper_Native>>>()
      .value
      .asFunction<_GetClipper_Dart>()(ptr.ref.lpVtbl, param0);

  int GetColorKey(int param0, Pointer<DDCOLORKEY> param1) =>
      ptr.ref.lpVtbl.value
          .elementAt(16)
          .cast<Pointer<NativeFunction<_GetColorKey_Native>>>()
          .value
          .asFunction<_GetColorKey_Dart>()(ptr.ref.lpVtbl, param0, param1);

  int GetDC(Pointer<IntPtr> param0) => ptr.ref.lpVtbl.value
      .elementAt(17)
      .cast<Pointer<NativeFunction<_GetDC_Native>>>()
      .value
      .asFunction<_GetDC_Dart>()(ptr.ref.lpVtbl, param0);

  int GetFlipStatus(int param0) => ptr.ref.lpVtbl.value
      .elementAt(18)
      .cast<Pointer<NativeFunction<_GetFlipStatus_Native>>>()
      .value
      .asFunction<_GetFlipStatus_Dart>()(ptr.ref.lpVtbl, param0);

  int GetOverlayPosition(Pointer<Int32> param0, Pointer<Int32> param1) => ptr
      .ref.lpVtbl.value
      .elementAt(19)
      .cast<Pointer<NativeFunction<_GetOverlayPosition_Native>>>()
      .value
      .asFunction<_GetOverlayPosition_Dart>()(ptr.ref.lpVtbl, param0, param1);

  int GetPalette(Pointer<COMObject> param0) => ptr.ref.lpVtbl.value
      .elementAt(20)
      .cast<Pointer<NativeFunction<_GetPalette_Native>>>()
      .value
      .asFunction<_GetPalette_Dart>()(ptr.ref.lpVtbl, param0);

  int GetPixelFormat(Pointer<DDPIXELFORMAT> param0) => ptr.ref.lpVtbl.value
      .elementAt(21)
      .cast<Pointer<NativeFunction<_GetPixelFormat_Native>>>()
      .value
      .asFunction<_GetPixelFormat_Dart>()(ptr.ref.lpVtbl, param0);

  int GetSurfaceDesc(Pointer<DDSURFACEDESC> param0) => ptr.ref.lpVtbl.value
      .elementAt(22)
      .cast<Pointer<NativeFunction<_GetSurfaceDesc_Native>>>()
      .value
      .asFunction<_GetSurfaceDesc_Dart>()(ptr.ref.lpVtbl, param0);

  int Initialize(COMObject param0, Pointer<DDSURFACEDESC> param1) =>
      ptr.ref.lpVtbl.value
          .elementAt(23)
          .cast<Pointer<NativeFunction<_Initialize_Native>>>()
          .value
          .asFunction<_Initialize_Dart>()(ptr.ref.lpVtbl, param0, param1);

  int IsLost() => ptr.ref.lpVtbl.value
      .elementAt(24)
      .cast<Pointer<NativeFunction<_IsLost_Native>>>()
      .value
      .asFunction<_IsLost_Dart>()(ptr.ref.lpVtbl);

  int Lock(Pointer<RECT> param0, Pointer<DDSURFACEDESC> param1, int param2,
          int param3) =>
      ptr.ref.lpVtbl.value
              .elementAt(25)
              .cast<Pointer<NativeFunction<_Lock_Native>>>()
              .value
              .asFunction<_Lock_Dart>()(
          ptr.ref.lpVtbl, param0, param1, param2, param3);

  int ReleaseDC(int param0) => ptr.ref.lpVtbl.value
      .elementAt(26)
      .cast<Pointer<NativeFunction<_ReleaseDC_Native>>>()
      .value
      .asFunction<_ReleaseDC_Dart>()(ptr.ref.lpVtbl, param0);

  int Restore() => ptr.ref.lpVtbl.value
      .elementAt(27)
      .cast<Pointer<NativeFunction<_Restore_Native>>>()
      .value
      .asFunction<_Restore_Dart>()(ptr.ref.lpVtbl);

  int SetClipper(COMObject param0) => ptr.ref.lpVtbl.value
      .elementAt(28)
      .cast<Pointer<NativeFunction<_SetClipper_Native>>>()
      .value
      .asFunction<_SetClipper_Dart>()(ptr.ref.lpVtbl, param0);

  int SetColorKey(int param0, Pointer<DDCOLORKEY> param1) =>
      ptr.ref.lpVtbl.value
          .elementAt(29)
          .cast<Pointer<NativeFunction<_SetColorKey_Native>>>()
          .value
          .asFunction<_SetColorKey_Dart>()(ptr.ref.lpVtbl, param0, param1);

  int SetOverlayPosition(int param0, int param1) => ptr.ref.lpVtbl.value
      .elementAt(30)
      .cast<Pointer<NativeFunction<_SetOverlayPosition_Native>>>()
      .value
      .asFunction<_SetOverlayPosition_Dart>()(ptr.ref.lpVtbl, param0, param1);

  int SetPalette(COMObject param0) => ptr.ref.lpVtbl.value
      .elementAt(31)
      .cast<Pointer<NativeFunction<_SetPalette_Native>>>()
      .value
      .asFunction<_SetPalette_Dart>()(ptr.ref.lpVtbl, param0);

  int Unlock(Pointer param0) => ptr.ref.lpVtbl.value
      .elementAt(32)
      .cast<Pointer<NativeFunction<_Unlock_Native>>>()
      .value
      .asFunction<_Unlock_Dart>()(ptr.ref.lpVtbl, param0);

  int UpdateOverlay(Pointer<RECT> param0, COMObject param1,
          Pointer<RECT> param2, int param3, Pointer<DDOVERLAYFX> param4) =>
      ptr.ref.lpVtbl.value
              .elementAt(33)
              .cast<Pointer<NativeFunction<_UpdateOverlay_Native>>>()
              .value
              .asFunction<_UpdateOverlay_Dart>()(
          ptr.ref.lpVtbl, param0, param1, param2, param3, param4);

  int UpdateOverlayDisplay(int param0) => ptr.ref.lpVtbl.value
      .elementAt(34)
      .cast<Pointer<NativeFunction<_UpdateOverlayDisplay_Native>>>()
      .value
      .asFunction<_UpdateOverlayDisplay_Dart>()(ptr.ref.lpVtbl, param0);

  int UpdateOverlayZOrder(int param0, COMObject param1) => ptr.ref.lpVtbl.value
      .elementAt(35)
      .cast<Pointer<NativeFunction<_UpdateOverlayZOrder_Native>>>()
      .value
      .asFunction<_UpdateOverlayZOrder_Dart>()(ptr.ref.lpVtbl, param0, param1);

  int GetDDInterface(Pointer<Pointer> param0) => ptr.ref.lpVtbl.value
      .elementAt(36)
      .cast<Pointer<NativeFunction<_GetDDInterface_Native>>>()
      .value
      .asFunction<_GetDDInterface_Dart>()(ptr.ref.lpVtbl, param0);

  int PageLock(int param0) => ptr.ref.lpVtbl.value
      .elementAt(37)
      .cast<Pointer<NativeFunction<_PageLock_Native>>>()
      .value
      .asFunction<_PageLock_Dart>()(ptr.ref.lpVtbl, param0);

  int PageUnlock(int param0) => ptr.ref.lpVtbl.value
      .elementAt(38)
      .cast<Pointer<NativeFunction<_PageUnlock_Native>>>()
      .value
      .asFunction<_PageUnlock_Dart>()(ptr.ref.lpVtbl, param0);

  int SetSurfaceDesc(Pointer<DDSURFACEDESC> param0, int param1) =>
      ptr.ref.lpVtbl.value
          .elementAt(39)
          .cast<Pointer<NativeFunction<_SetSurfaceDesc_Native>>>()
          .value
          .asFunction<_SetSurfaceDesc_Dart>()(ptr.ref.lpVtbl, param0, param1);
}
