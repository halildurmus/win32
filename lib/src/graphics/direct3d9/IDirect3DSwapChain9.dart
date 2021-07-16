// IDirect3DSwapChain9.dart

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
import '../../foundation/structs.g.dart';
import '../../graphics/gdi/structs.g.dart';
import '../../graphics/direct3d9/structs.g.dart';

/// @nodoc
const IID_IDirect3DSwapChain9 = '{794950F2-ADFC-458A-905E-10A10B0B503B}';

typedef _Present_Native = Int32 Function(
    Pointer obj,
    Pointer<RECT> pSourceRect,
    Pointer<RECT> pDestRect,
    IntPtr hDestWindowOverride,
    Pointer<RGNDATA> pDirtyRegion,
    Uint32 dwFlags);
typedef _Present_Dart = int Function(
    Pointer obj,
    Pointer<RECT> pSourceRect,
    Pointer<RECT> pDestRect,
    int hDestWindowOverride,
    Pointer<RGNDATA> pDirtyRegion,
    int dwFlags);

typedef _GetFrontBufferData_Native = Int32 Function(
    Pointer obj, COMObject pDestSurface);
typedef _GetFrontBufferData_Dart = int Function(
    Pointer obj, COMObject pDestSurface);

typedef _GetBackBuffer_Native = Int32 Function(Pointer obj, Uint32 iBackBuffer,
    Uint32 Type, Pointer<COMObject> ppBackBuffer);
typedef _GetBackBuffer_Dart = int Function(
    Pointer obj, int iBackBuffer, int Type, Pointer<COMObject> ppBackBuffer);

typedef _GetRasterStatus_Native = Int32 Function(
    Pointer obj, Pointer<D3DRASTER_STATUS> pRasterStatus);
typedef _GetRasterStatus_Dart = int Function(
    Pointer obj, Pointer<D3DRASTER_STATUS> pRasterStatus);

typedef _GetDisplayMode_Native = Int32 Function(
    Pointer obj, Pointer<D3DDISPLAYMODE> pMode);
typedef _GetDisplayMode_Dart = int Function(
    Pointer obj, Pointer<D3DDISPLAYMODE> pMode);

typedef _GetDevice_Native = Int32 Function(
    Pointer obj, Pointer<COMObject> ppDevice);
typedef _GetDevice_Dart = int Function(
    Pointer obj, Pointer<COMObject> ppDevice);

typedef _GetPresentParameters_Native = Int32 Function(
    Pointer obj, Pointer<D3DPRESENT_PARAMETERS> pPresentationParameters);
typedef _GetPresentParameters_Dart = int Function(
    Pointer obj, Pointer<D3DPRESENT_PARAMETERS> pPresentationParameters);

/// {@category Interface}
/// {@category com}
class IDirect3DSwapChain9 extends IUnknown {
  // vtable begins at 3, ends at 9

  IDirect3DSwapChain9(Pointer<COMObject> ptr) : super(ptr);

  int Present(
          Pointer<RECT> pSourceRect,
          Pointer<RECT> pDestRect,
          int hDestWindowOverride,
          Pointer<RGNDATA> pDirtyRegion,
          int dwFlags) =>
      ptr.ref.lpVtbl.value
              .elementAt(3)
              .cast<Pointer<NativeFunction<_Present_Native>>>()
              .value
              .asFunction<_Present_Dart>()(ptr.ref.lpVtbl, pSourceRect,
          pDestRect, hDestWindowOverride, pDirtyRegion, dwFlags);

  int GetFrontBufferData(COMObject pDestSurface) => ptr.ref.lpVtbl.value
      .elementAt(4)
      .cast<Pointer<NativeFunction<_GetFrontBufferData_Native>>>()
      .value
      .asFunction<_GetFrontBufferData_Dart>()(ptr.ref.lpVtbl, pDestSurface);

  int GetBackBuffer(
          int iBackBuffer, int Type, Pointer<COMObject> ppBackBuffer) =>
      ptr.ref.lpVtbl.value
              .elementAt(5)
              .cast<Pointer<NativeFunction<_GetBackBuffer_Native>>>()
              .value
              .asFunction<_GetBackBuffer_Dart>()(
          ptr.ref.lpVtbl, iBackBuffer, Type, ppBackBuffer);

  int GetRasterStatus(Pointer<D3DRASTER_STATUS> pRasterStatus) =>
      ptr.ref.lpVtbl.value
          .elementAt(6)
          .cast<Pointer<NativeFunction<_GetRasterStatus_Native>>>()
          .value
          .asFunction<_GetRasterStatus_Dart>()(ptr.ref.lpVtbl, pRasterStatus);

  int GetDisplayMode(Pointer<D3DDISPLAYMODE> pMode) => ptr.ref.lpVtbl.value
      .elementAt(7)
      .cast<Pointer<NativeFunction<_GetDisplayMode_Native>>>()
      .value
      .asFunction<_GetDisplayMode_Dart>()(ptr.ref.lpVtbl, pMode);

  int GetDevice(Pointer<COMObject> ppDevice) => ptr.ref.lpVtbl.value
      .elementAt(8)
      .cast<Pointer<NativeFunction<_GetDevice_Native>>>()
      .value
      .asFunction<_GetDevice_Dart>()(ptr.ref.lpVtbl, ppDevice);

  int GetPresentParameters(
          Pointer<D3DPRESENT_PARAMETERS> pPresentationParameters) =>
      ptr.ref.lpVtbl.value
              .elementAt(9)
              .cast<Pointer<NativeFunction<_GetPresentParameters_Native>>>()
              .value
              .asFunction<_GetPresentParameters_Dart>()(
          ptr.ref.lpVtbl, pPresentationParameters);
}
