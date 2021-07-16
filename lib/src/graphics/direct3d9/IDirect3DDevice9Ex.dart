// IDirect3DDevice9Ex.dart

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

import '../../graphics/direct3d9/IDirect3DDevice9.dart';
import '../../graphics/direct3d9/structs.g.dart';
import '../../foundation/structs.g.dart';
import '../../graphics/gdi/structs.g.dart';

/// @nodoc
const IID_IDirect3DDevice9Ex = '{B18B10CE-2649-405A-870F-95F777D4313A}';

typedef _SetConvolutionMonoKernel_Native = Int32 Function(Pointer obj,
    Uint32 width, Uint32 height, Pointer<Float> rows, Pointer<Float> columns);
typedef _SetConvolutionMonoKernel_Dart = int Function(Pointer obj, int width,
    int height, Pointer<Float> rows, Pointer<Float> columns);

typedef _ComposeRects_Native = Int32 Function(
    Pointer obj,
    COMObject pSrc,
    COMObject pDst,
    COMObject pSrcRectDescs,
    Uint32 NumRects,
    COMObject pDstRectDescs,
    Uint32 Operation,
    Int32 Xoffset,
    Int32 Yoffset);
typedef _ComposeRects_Dart = int Function(
    Pointer obj,
    COMObject pSrc,
    COMObject pDst,
    COMObject pSrcRectDescs,
    int NumRects,
    COMObject pDstRectDescs,
    int Operation,
    int Xoffset,
    int Yoffset);

typedef _PresentEx_Native = Int32 Function(
    Pointer obj,
    Pointer<RECT> pSourceRect,
    Pointer<RECT> pDestRect,
    IntPtr hDestWindowOverride,
    Pointer<RGNDATA> pDirtyRegion,
    Uint32 dwFlags);
typedef _PresentEx_Dart = int Function(
    Pointer obj,
    Pointer<RECT> pSourceRect,
    Pointer<RECT> pDestRect,
    int hDestWindowOverride,
    Pointer<RGNDATA> pDirtyRegion,
    int dwFlags);

typedef _GetGPUThreadPriority_Native = Int32 Function(
    Pointer obj, Pointer<Int32> pPriority);
typedef _GetGPUThreadPriority_Dart = int Function(
    Pointer obj, Pointer<Int32> pPriority);

typedef _SetGPUThreadPriority_Native = Int32 Function(
    Pointer obj, Int32 Priority);
typedef _SetGPUThreadPriority_Dart = int Function(Pointer obj, int Priority);

typedef _WaitForVBlank_Native = Int32 Function(Pointer obj, Uint32 iSwapChain);
typedef _WaitForVBlank_Dart = int Function(Pointer obj, int iSwapChain);

typedef _CheckResourceResidency_Native = Int32 Function(
    Pointer obj, Pointer<COMObject> pResourceArray, Uint32 NumResources);
typedef _CheckResourceResidency_Dart = int Function(
    Pointer obj, Pointer<COMObject> pResourceArray, int NumResources);

typedef _SetMaximumFrameLatency_Native = Int32 Function(
    Pointer obj, Uint32 MaxLatency);
typedef _SetMaximumFrameLatency_Dart = int Function(
    Pointer obj, int MaxLatency);

typedef _GetMaximumFrameLatency_Native = Int32 Function(
    Pointer obj, Pointer<Uint32> pMaxLatency);
typedef _GetMaximumFrameLatency_Dart = int Function(
    Pointer obj, Pointer<Uint32> pMaxLatency);

typedef _CheckDeviceState_Native = Int32 Function(
    Pointer obj, IntPtr hDestinationWindow);
typedef _CheckDeviceState_Dart = int Function(
    Pointer obj, int hDestinationWindow);

typedef _CreateRenderTargetEx_Native = Int32 Function(
    Pointer obj,
    Uint32 Width,
    Uint32 Height,
    Uint32 Format,
    Uint32 MultiSample,
    Uint32 MultisampleQuality,
    Int32 Lockable,
    Pointer<COMObject> ppSurface,
    Pointer<IntPtr> pSharedHandle,
    Uint32 Usage);
typedef _CreateRenderTargetEx_Dart = int Function(
    Pointer obj,
    int Width,
    int Height,
    int Format,
    int MultiSample,
    int MultisampleQuality,
    int Lockable,
    Pointer<COMObject> ppSurface,
    Pointer<IntPtr> pSharedHandle,
    int Usage);

typedef _CreateOffscreenPlainSurfaceEx_Native = Int32 Function(
    Pointer obj,
    Uint32 Width,
    Uint32 Height,
    Uint32 Format,
    Uint32 Pool,
    Pointer<COMObject> ppSurface,
    Pointer<IntPtr> pSharedHandle,
    Uint32 Usage);
typedef _CreateOffscreenPlainSurfaceEx_Dart = int Function(
    Pointer obj,
    int Width,
    int Height,
    int Format,
    int Pool,
    Pointer<COMObject> ppSurface,
    Pointer<IntPtr> pSharedHandle,
    int Usage);

typedef _CreateDepthStencilSurfaceEx_Native = Int32 Function(
    Pointer obj,
    Uint32 Width,
    Uint32 Height,
    Uint32 Format,
    Uint32 MultiSample,
    Uint32 MultisampleQuality,
    Int32 Discard,
    Pointer<COMObject> ppSurface,
    Pointer<IntPtr> pSharedHandle,
    Uint32 Usage);
typedef _CreateDepthStencilSurfaceEx_Dart = int Function(
    Pointer obj,
    int Width,
    int Height,
    int Format,
    int MultiSample,
    int MultisampleQuality,
    int Discard,
    Pointer<COMObject> ppSurface,
    Pointer<IntPtr> pSharedHandle,
    int Usage);

typedef _ResetEx_Native = Int32 Function(
    Pointer obj,
    Pointer<D3DPRESENT_PARAMETERS> pPresentationParameters,
    Pointer<D3DDISPLAYMODEEX> pFullscreenDisplayMode);
typedef _ResetEx_Dart = int Function(
    Pointer obj,
    Pointer<D3DPRESENT_PARAMETERS> pPresentationParameters,
    Pointer<D3DDISPLAYMODEEX> pFullscreenDisplayMode);

typedef _GetDisplayModeEx_Native = Int32 Function(
    Pointer obj,
    Uint32 iSwapChain,
    Pointer<D3DDISPLAYMODEEX> pMode,
    Pointer<Uint32> pRotation);
typedef _GetDisplayModeEx_Dart = int Function(Pointer obj, int iSwapChain,
    Pointer<D3DDISPLAYMODEEX> pMode, Pointer<Uint32> pRotation);

/// {@category Interface}
/// {@category com}
class IDirect3DDevice9Ex extends IDirect3DDevice9 {
  // vtable begins at 119, ends at 133

  IDirect3DDevice9Ex(Pointer<COMObject> ptr) : super(ptr);

  int SetConvolutionMonoKernel(
          int width, int height, Pointer<Float> rows, Pointer<Float> columns) =>
      ptr.ref.lpVtbl.value
              .elementAt(119)
              .cast<Pointer<NativeFunction<_SetConvolutionMonoKernel_Native>>>()
              .value
              .asFunction<_SetConvolutionMonoKernel_Dart>()(
          ptr.ref.lpVtbl, width, height, rows, columns);

  int ComposeRects(
          COMObject pSrc,
          COMObject pDst,
          COMObject pSrcRectDescs,
          int NumRects,
          COMObject pDstRectDescs,
          int Operation,
          int Xoffset,
          int Yoffset) =>
      ptr.ref.lpVtbl.value
              .elementAt(120)
              .cast<Pointer<NativeFunction<_ComposeRects_Native>>>()
              .value
              .asFunction<_ComposeRects_Dart>()(ptr.ref.lpVtbl, pSrc, pDst,
          pSrcRectDescs, NumRects, pDstRectDescs, Operation, Xoffset, Yoffset);

  int PresentEx(
          Pointer<RECT> pSourceRect,
          Pointer<RECT> pDestRect,
          int hDestWindowOverride,
          Pointer<RGNDATA> pDirtyRegion,
          int dwFlags) =>
      ptr.ref.lpVtbl.value
              .elementAt(121)
              .cast<Pointer<NativeFunction<_PresentEx_Native>>>()
              .value
              .asFunction<_PresentEx_Dart>()(ptr.ref.lpVtbl, pSourceRect,
          pDestRect, hDestWindowOverride, pDirtyRegion, dwFlags);

  int GetGPUThreadPriority(Pointer<Int32> pPriority) => ptr.ref.lpVtbl.value
      .elementAt(122)
      .cast<Pointer<NativeFunction<_GetGPUThreadPriority_Native>>>()
      .value
      .asFunction<_GetGPUThreadPriority_Dart>()(ptr.ref.lpVtbl, pPriority);

  int SetGPUThreadPriority(int Priority) => ptr.ref.lpVtbl.value
      .elementAt(123)
      .cast<Pointer<NativeFunction<_SetGPUThreadPriority_Native>>>()
      .value
      .asFunction<_SetGPUThreadPriority_Dart>()(ptr.ref.lpVtbl, Priority);

  int WaitForVBlank(int iSwapChain) => ptr.ref.lpVtbl.value
      .elementAt(124)
      .cast<Pointer<NativeFunction<_WaitForVBlank_Native>>>()
      .value
      .asFunction<_WaitForVBlank_Dart>()(ptr.ref.lpVtbl, iSwapChain);

  int CheckResourceResidency(
          Pointer<COMObject> pResourceArray, int NumResources) =>
      ptr.ref.lpVtbl.value
              .elementAt(125)
              .cast<Pointer<NativeFunction<_CheckResourceResidency_Native>>>()
              .value
              .asFunction<_CheckResourceResidency_Dart>()(
          ptr.ref.lpVtbl, pResourceArray, NumResources);

  int SetMaximumFrameLatency(int MaxLatency) => ptr.ref.lpVtbl.value
      .elementAt(126)
      .cast<Pointer<NativeFunction<_SetMaximumFrameLatency_Native>>>()
      .value
      .asFunction<_SetMaximumFrameLatency_Dart>()(ptr.ref.lpVtbl, MaxLatency);

  int GetMaximumFrameLatency(Pointer<Uint32> pMaxLatency) => ptr
      .ref.lpVtbl.value
      .elementAt(127)
      .cast<Pointer<NativeFunction<_GetMaximumFrameLatency_Native>>>()
      .value
      .asFunction<_GetMaximumFrameLatency_Dart>()(ptr.ref.lpVtbl, pMaxLatency);

  int CheckDeviceState(int hDestinationWindow) => ptr.ref.lpVtbl.value
      .elementAt(128)
      .cast<Pointer<NativeFunction<_CheckDeviceState_Native>>>()
      .value
      .asFunction<_CheckDeviceState_Dart>()(ptr.ref.lpVtbl, hDestinationWindow);

  int CreateRenderTargetEx(
          int Width,
          int Height,
          int Format,
          int MultiSample,
          int MultisampleQuality,
          int Lockable,
          Pointer<COMObject> ppSurface,
          Pointer<IntPtr> pSharedHandle,
          int Usage) =>
      ptr.ref.lpVtbl.value
              .elementAt(129)
              .cast<Pointer<NativeFunction<_CreateRenderTargetEx_Native>>>()
              .value
              .asFunction<_CreateRenderTargetEx_Dart>()(
          ptr.ref.lpVtbl,
          Width,
          Height,
          Format,
          MultiSample,
          MultisampleQuality,
          Lockable,
          ppSurface,
          pSharedHandle,
          Usage);

  int CreateOffscreenPlainSurfaceEx(
          int Width,
          int Height,
          int Format,
          int Pool,
          Pointer<COMObject> ppSurface,
          Pointer<IntPtr> pSharedHandle,
          int Usage) =>
      ptr.ref.lpVtbl.value
              .elementAt(130)
              .cast<
                  Pointer<NativeFunction<_CreateOffscreenPlainSurfaceEx_Native>>>()
              .value
              .asFunction<_CreateOffscreenPlainSurfaceEx_Dart>()(ptr.ref.lpVtbl,
          Width, Height, Format, Pool, ppSurface, pSharedHandle, Usage);

  int
      CreateDepthStencilSurfaceEx(
              int Width,
              int Height,
              int Format,
              int MultiSample,
              int MultisampleQuality,
              int Discard,
              Pointer<COMObject> ppSurface,
              Pointer<IntPtr> pSharedHandle,
              int Usage) =>
          ptr.ref.lpVtbl.value
                  .elementAt(131)
                  .cast<
                      Pointer<
                          NativeFunction<_CreateDepthStencilSurfaceEx_Native>>>()
                  .value
                  .asFunction<_CreateDepthStencilSurfaceEx_Dart>()(
              ptr.ref.lpVtbl,
              Width,
              Height,
              Format,
              MultiSample,
              MultisampleQuality,
              Discard,
              ppSurface,
              pSharedHandle,
              Usage);

  int ResetEx(Pointer<D3DPRESENT_PARAMETERS> pPresentationParameters,
          Pointer<D3DDISPLAYMODEEX> pFullscreenDisplayMode) =>
      ptr.ref.lpVtbl.value
              .elementAt(132)
              .cast<Pointer<NativeFunction<_ResetEx_Native>>>()
              .value
              .asFunction<_ResetEx_Dart>()(
          ptr.ref.lpVtbl, pPresentationParameters, pFullscreenDisplayMode);

  int GetDisplayModeEx(int iSwapChain, Pointer<D3DDISPLAYMODEEX> pMode,
          Pointer<Uint32> pRotation) =>
      ptr.ref.lpVtbl.value
              .elementAt(133)
              .cast<Pointer<NativeFunction<_GetDisplayModeEx_Native>>>()
              .value
              .asFunction<_GetDisplayModeEx_Dart>()(
          ptr.ref.lpVtbl, iSwapChain, pMode, pRotation);
}
