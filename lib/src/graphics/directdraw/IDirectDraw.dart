// IDirectDraw.dart

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
import '../../graphics/gdi/structs.g.dart';
import '../../graphics/directdraw/callbacks.g.dart';
import '../../foundation/structs.g.dart';

/// @nodoc
const IID_IDirectDraw = '{6C14DB80-A733-11CE-A521-0020AF0BE560}';

typedef _Compact_Native = Int32 Function(Pointer obj);
typedef _Compact_Dart = int Function(Pointer obj);

typedef _CreateClipper_Native = Int32 Function(
    Pointer obj, Uint32 param0, Pointer<COMObject> param1, COMObject param2);
typedef _CreateClipper_Dart = int Function(
    Pointer obj, int param0, Pointer<COMObject> param1, COMObject param2);

typedef _CreatePalette_Native = Int32 Function(Pointer obj, Uint32 param0,
    Pointer<PALETTEENTRY> param1, Pointer<COMObject> param2, COMObject param3);
typedef _CreatePalette_Dart = int Function(Pointer obj, int param0,
    Pointer<PALETTEENTRY> param1, Pointer<COMObject> param2, COMObject param3);

typedef _CreateSurface_Native = Int32 Function(Pointer obj,
    Pointer<DDSURFACEDESC> param0, Pointer<COMObject> param1, COMObject param2);
typedef _CreateSurface_Dart = int Function(Pointer obj,
    Pointer<DDSURFACEDESC> param0, Pointer<COMObject> param1, COMObject param2);

typedef _DuplicateSurface_Native = Int32 Function(
    Pointer obj, COMObject param0, Pointer<COMObject> param1);
typedef _DuplicateSurface_Dart = int Function(
    Pointer obj, COMObject param0, Pointer<COMObject> param1);

typedef _EnumDisplayModes_Native = Int32 Function(
    Pointer obj,
    Uint32 param0,
    Pointer<DDSURFACEDESC> param1,
    Pointer param2,
    Pointer<NativeFunction<LPDDENUMMODESCALLBACK>> param3);
typedef _EnumDisplayModes_Dart = int Function(
    Pointer obj,
    int param0,
    Pointer<DDSURFACEDESC> param1,
    Pointer param2,
    Pointer<NativeFunction<LPDDENUMMODESCALLBACK>> param3);

typedef _EnumSurfaces_Native = Int32 Function(
    Pointer obj,
    Uint32 param0,
    Pointer<DDSURFACEDESC> param1,
    Pointer param2,
    Pointer<NativeFunction<LPDDENUMSURFACESCALLBACK>> param3);
typedef _EnumSurfaces_Dart = int Function(
    Pointer obj,
    int param0,
    Pointer<DDSURFACEDESC> param1,
    Pointer param2,
    Pointer<NativeFunction<LPDDENUMSURFACESCALLBACK>> param3);

typedef _FlipToGDISurface_Native = Int32 Function(Pointer obj);
typedef _FlipToGDISurface_Dart = int Function(Pointer obj);

typedef _GetCaps_Native = Int32 Function(
    Pointer obj, Pointer<DDCAPS_DX7> param0, Pointer<DDCAPS_DX7> param1);
typedef _GetCaps_Dart = int Function(
    Pointer obj, Pointer<DDCAPS_DX7> param0, Pointer<DDCAPS_DX7> param1);

typedef _GetDisplayMode_Native = Int32 Function(
    Pointer obj, Pointer<DDSURFACEDESC> param0);
typedef _GetDisplayMode_Dart = int Function(
    Pointer obj, Pointer<DDSURFACEDESC> param0);

typedef _GetFourCCCodes_Native = Int32 Function(
    Pointer obj, Pointer<Uint32> param0, Pointer<Uint32> param1);
typedef _GetFourCCCodes_Dart = int Function(
    Pointer obj, Pointer<Uint32> param0, Pointer<Uint32> param1);

typedef _GetGDISurface_Native = Int32 Function(
    Pointer obj, Pointer<COMObject> param0);
typedef _GetGDISurface_Dart = int Function(
    Pointer obj, Pointer<COMObject> param0);

typedef _GetMonitorFrequency_Native = Int32 Function(
    Pointer obj, Pointer<Uint32> param0);
typedef _GetMonitorFrequency_Dart = int Function(
    Pointer obj, Pointer<Uint32> param0);

typedef _GetScanLine_Native = Int32 Function(
    Pointer obj, Pointer<Uint32> param0);
typedef _GetScanLine_Dart = int Function(Pointer obj, Pointer<Uint32> param0);

typedef _GetVerticalBlankStatus_Native = Int32 Function(
    Pointer obj, Pointer<Int32> param0);
typedef _GetVerticalBlankStatus_Dart = int Function(
    Pointer obj, Pointer<Int32> param0);

typedef _Initialize_Native = Int32 Function(Pointer obj, Pointer<GUID> param0);
typedef _Initialize_Dart = int Function(Pointer obj, Pointer<GUID> param0);

typedef _RestoreDisplayMode_Native = Int32 Function(Pointer obj);
typedef _RestoreDisplayMode_Dart = int Function(Pointer obj);

typedef _SetCooperativeLevel_Native = Int32 Function(
    Pointer obj, IntPtr param0, Uint32 param1);
typedef _SetCooperativeLevel_Dart = int Function(
    Pointer obj, int param0, int param1);

typedef _SetDisplayMode_Native = Int32 Function(
    Pointer obj, Uint32 param0, Uint32 param1, Uint32 param2);
typedef _SetDisplayMode_Dart = int Function(
    Pointer obj, int param0, int param1, int param2);

typedef _WaitForVerticalBlank_Native = Int32 Function(
    Pointer obj, Uint32 param0, IntPtr param1);
typedef _WaitForVerticalBlank_Dart = int Function(
    Pointer obj, int param0, int param1);

/// {@category Interface}
/// {@category com}
class IDirectDraw extends IUnknown {
  // vtable begins at 3, ends at 22

  IDirectDraw(Pointer<COMObject> ptr) : super(ptr);

  int Compact() => ptr.ref.lpVtbl.value
      .elementAt(3)
      .cast<Pointer<NativeFunction<_Compact_Native>>>()
      .value
      .asFunction<_Compact_Dart>()(ptr.ref.lpVtbl);

  int CreateClipper(int param0, Pointer<COMObject> param1, COMObject param2) =>
      ptr.ref.lpVtbl.value
              .elementAt(4)
              .cast<Pointer<NativeFunction<_CreateClipper_Native>>>()
              .value
              .asFunction<_CreateClipper_Dart>()(
          ptr.ref.lpVtbl, param0, param1, param2);

  int CreatePalette(int param0, Pointer<PALETTEENTRY> param1,
          Pointer<COMObject> param2, COMObject param3) =>
      ptr.ref.lpVtbl.value
              .elementAt(5)
              .cast<Pointer<NativeFunction<_CreatePalette_Native>>>()
              .value
              .asFunction<_CreatePalette_Dart>()(
          ptr.ref.lpVtbl, param0, param1, param2, param3);

  int CreateSurface(Pointer<DDSURFACEDESC> param0, Pointer<COMObject> param1,
          COMObject param2) =>
      ptr.ref.lpVtbl.value
              .elementAt(6)
              .cast<Pointer<NativeFunction<_CreateSurface_Native>>>()
              .value
              .asFunction<_CreateSurface_Dart>()(
          ptr.ref.lpVtbl, param0, param1, param2);

  int DuplicateSurface(COMObject param0, Pointer<COMObject> param1) =>
      ptr.ref.lpVtbl.value
          .elementAt(7)
          .cast<Pointer<NativeFunction<_DuplicateSurface_Native>>>()
          .value
          .asFunction<_DuplicateSurface_Dart>()(ptr.ref.lpVtbl, param0, param1);

  int EnumDisplayModes(
          int param0,
          Pointer<DDSURFACEDESC> param1,
          Pointer param2,
          Pointer<NativeFunction<LPDDENUMMODESCALLBACK>> param3) =>
      ptr.ref.lpVtbl.value
              .elementAt(8)
              .cast<Pointer<NativeFunction<_EnumDisplayModes_Native>>>()
              .value
              .asFunction<_EnumDisplayModes_Dart>()(
          ptr.ref.lpVtbl, param0, param1, param2, param3);

  int EnumSurfaces(int param0, Pointer<DDSURFACEDESC> param1, Pointer param2,
          Pointer<NativeFunction<LPDDENUMSURFACESCALLBACK>> param3) =>
      ptr.ref.lpVtbl.value
              .elementAt(9)
              .cast<Pointer<NativeFunction<_EnumSurfaces_Native>>>()
              .value
              .asFunction<_EnumSurfaces_Dart>()(
          ptr.ref.lpVtbl, param0, param1, param2, param3);

  int FlipToGDISurface() => ptr.ref.lpVtbl.value
      .elementAt(10)
      .cast<Pointer<NativeFunction<_FlipToGDISurface_Native>>>()
      .value
      .asFunction<_FlipToGDISurface_Dart>()(ptr.ref.lpVtbl);

  int GetCaps(Pointer<DDCAPS_DX7> param0, Pointer<DDCAPS_DX7> param1) =>
      ptr.ref.lpVtbl.value
          .elementAt(11)
          .cast<Pointer<NativeFunction<_GetCaps_Native>>>()
          .value
          .asFunction<_GetCaps_Dart>()(ptr.ref.lpVtbl, param0, param1);

  int GetDisplayMode(Pointer<DDSURFACEDESC> param0) => ptr.ref.lpVtbl.value
      .elementAt(12)
      .cast<Pointer<NativeFunction<_GetDisplayMode_Native>>>()
      .value
      .asFunction<_GetDisplayMode_Dart>()(ptr.ref.lpVtbl, param0);

  int GetFourCCCodes(Pointer<Uint32> param0, Pointer<Uint32> param1) =>
      ptr.ref.lpVtbl.value
          .elementAt(13)
          .cast<Pointer<NativeFunction<_GetFourCCCodes_Native>>>()
          .value
          .asFunction<_GetFourCCCodes_Dart>()(ptr.ref.lpVtbl, param0, param1);

  int GetGDISurface(Pointer<COMObject> param0) => ptr.ref.lpVtbl.value
      .elementAt(14)
      .cast<Pointer<NativeFunction<_GetGDISurface_Native>>>()
      .value
      .asFunction<_GetGDISurface_Dart>()(ptr.ref.lpVtbl, param0);

  int GetMonitorFrequency(Pointer<Uint32> param0) => ptr.ref.lpVtbl.value
      .elementAt(15)
      .cast<Pointer<NativeFunction<_GetMonitorFrequency_Native>>>()
      .value
      .asFunction<_GetMonitorFrequency_Dart>()(ptr.ref.lpVtbl, param0);

  int GetScanLine(Pointer<Uint32> param0) => ptr.ref.lpVtbl.value
      .elementAt(16)
      .cast<Pointer<NativeFunction<_GetScanLine_Native>>>()
      .value
      .asFunction<_GetScanLine_Dart>()(ptr.ref.lpVtbl, param0);

  int GetVerticalBlankStatus(Pointer<Int32> param0) => ptr.ref.lpVtbl.value
      .elementAt(17)
      .cast<Pointer<NativeFunction<_GetVerticalBlankStatus_Native>>>()
      .value
      .asFunction<_GetVerticalBlankStatus_Dart>()(ptr.ref.lpVtbl, param0);

  int Initialize(Pointer<GUID> param0) => ptr.ref.lpVtbl.value
      .elementAt(18)
      .cast<Pointer<NativeFunction<_Initialize_Native>>>()
      .value
      .asFunction<_Initialize_Dart>()(ptr.ref.lpVtbl, param0);

  int RestoreDisplayMode() => ptr.ref.lpVtbl.value
      .elementAt(19)
      .cast<Pointer<NativeFunction<_RestoreDisplayMode_Native>>>()
      .value
      .asFunction<_RestoreDisplayMode_Dart>()(ptr.ref.lpVtbl);

  int SetCooperativeLevel(int param0, int param1) => ptr.ref.lpVtbl.value
      .elementAt(20)
      .cast<Pointer<NativeFunction<_SetCooperativeLevel_Native>>>()
      .value
      .asFunction<_SetCooperativeLevel_Dart>()(ptr.ref.lpVtbl, param0, param1);

  int SetDisplayMode(int param0, int param1, int param2) => ptr.ref.lpVtbl.value
          .elementAt(21)
          .cast<Pointer<NativeFunction<_SetDisplayMode_Native>>>()
          .value
          .asFunction<_SetDisplayMode_Dart>()(
      ptr.ref.lpVtbl, param0, param1, param2);

  int WaitForVerticalBlank(int param0, int param1) => ptr.ref.lpVtbl.value
      .elementAt(22)
      .cast<Pointer<NativeFunction<_WaitForVerticalBlank_Native>>>()
      .value
      .asFunction<_WaitForVerticalBlank_Dart>()(ptr.ref.lpVtbl, param0, param1);
}
