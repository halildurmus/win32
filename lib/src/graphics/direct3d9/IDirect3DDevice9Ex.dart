// IDirect3DDevice9Ex.dart

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

import '../../graphics/direct3d9/IDirect3DDevice9.dart';
import '../../foundation/structs.g.dart';
import '../../graphics/direct3d9/IDirect3DSurface9.dart';
import '../../graphics/direct3d9/IDirect3DVertexBuffer9.dart';
import '../../graphics/direct3d9/structs.g.dart';
import '../../graphics/gdi/structs.g.dart';
import '../../graphics/direct3d9/IDirect3DResource9.dart';

/// @nodoc
const IID_IDirect3DDevice9Ex = '{B18B10CE-2649-405A-870F-95F777D4313A}';

/// {@category Interface}
/// {@category com}
class IDirect3DDevice9Ex extends IDirect3DDevice9 {
  // vtable begins at 119, is 15 entries long.
  IDirect3DDevice9Ex(Pointer<COMObject> ptr) : super(ptr);

  int SetConvolutionMonoKernel(
    int width,
    int height,
    Pointer<Float> rows,
    Pointer<Float> columns,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(119)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Uint32 width,
            Uint32 height,
            Pointer<Float> rows,
            Pointer<Float> columns,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int width,
            int height,
            Pointer<Float> rows,
            Pointer<Float> columns,
          )>()(
        ptr.ref.lpVtbl,
        width,
        height,
        rows,
        columns,
      );

  int ComposeRects(
    Pointer<COMObject> pSrc,
    Pointer<COMObject> pDst,
    Pointer<COMObject> pSrcRectDescs,
    int NumRects,
    Pointer<COMObject> pDstRectDescs,
    int Operation,
    int Xoffset,
    int Yoffset,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(120)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<COMObject> pSrc,
            Pointer<COMObject> pDst,
            Pointer<COMObject> pSrcRectDescs,
            Uint32 NumRects,
            Pointer<COMObject> pDstRectDescs,
            Int32 Operation,
            Int32 Xoffset,
            Int32 Yoffset,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<COMObject> pSrc,
            Pointer<COMObject> pDst,
            Pointer<COMObject> pSrcRectDescs,
            int NumRects,
            Pointer<COMObject> pDstRectDescs,
            int Operation,
            int Xoffset,
            int Yoffset,
          )>()(
        ptr.ref.lpVtbl,
        pSrc,
        pDst,
        pSrcRectDescs,
        NumRects,
        pDstRectDescs,
        Operation,
        Xoffset,
        Yoffset,
      );

  int PresentEx(
    Pointer<RECT> pSourceRect,
    Pointer<RECT> pDestRect,
    int hDestWindowOverride,
    Pointer<RGNDATA> pDirtyRegion,
    int dwFlags,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(121)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<RECT> pSourceRect,
            Pointer<RECT> pDestRect,
            IntPtr hDestWindowOverride,
            Pointer<RGNDATA> pDirtyRegion,
            Uint32 dwFlags,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<RECT> pSourceRect,
            Pointer<RECT> pDestRect,
            int hDestWindowOverride,
            Pointer<RGNDATA> pDirtyRegion,
            int dwFlags,
          )>()(
        ptr.ref.lpVtbl,
        pSourceRect,
        pDestRect,
        hDestWindowOverride,
        pDirtyRegion,
        dwFlags,
      );

  int GetGPUThreadPriority(
    Pointer<Int32> pPriority,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(122)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Int32> pPriority,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Int32> pPriority,
          )>()(
        ptr.ref.lpVtbl,
        pPriority,
      );

  int SetGPUThreadPriority(
    int Priority,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(123)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Int32 Priority,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int Priority,
          )>()(
        ptr.ref.lpVtbl,
        Priority,
      );

  int WaitForVBlank(
    int iSwapChain,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(124)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Uint32 iSwapChain,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int iSwapChain,
          )>()(
        ptr.ref.lpVtbl,
        iSwapChain,
      );

  int CheckResourceResidency(
    Pointer<Pointer<COMObject>> pResourceArray,
    int NumResources,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(125)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Pointer<COMObject>> pResourceArray,
            Uint32 NumResources,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Pointer<COMObject>> pResourceArray,
            int NumResources,
          )>()(
        ptr.ref.lpVtbl,
        pResourceArray,
        NumResources,
      );

  int SetMaximumFrameLatency(
    int MaxLatency,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(126)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Uint32 MaxLatency,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int MaxLatency,
          )>()(
        ptr.ref.lpVtbl,
        MaxLatency,
      );

  int GetMaximumFrameLatency(
    Pointer<Uint32> pMaxLatency,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(127)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Uint32> pMaxLatency,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Uint32> pMaxLatency,
          )>()(
        ptr.ref.lpVtbl,
        pMaxLatency,
      );

  int CheckDeviceState(
    int hDestinationWindow,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(128)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            IntPtr hDestinationWindow,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int hDestinationWindow,
          )>()(
        ptr.ref.lpVtbl,
        hDestinationWindow,
      );

  int CreateRenderTargetEx(
    int Width,
    int Height,
    int Format,
    int MultiSample,
    int MultisampleQuality,
    int Lockable,
    Pointer<Pointer<COMObject>> ppSurface,
    Pointer<IntPtr> pSharedHandle,
    int Usage,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(129)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Uint32 Width,
            Uint32 Height,
            Uint32 Format,
            Int32 MultiSample,
            Uint32 MultisampleQuality,
            Int32 Lockable,
            Pointer<Pointer<COMObject>> ppSurface,
            Pointer<IntPtr> pSharedHandle,
            Uint32 Usage,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int Width,
            int Height,
            int Format,
            int MultiSample,
            int MultisampleQuality,
            int Lockable,
            Pointer<Pointer<COMObject>> ppSurface,
            Pointer<IntPtr> pSharedHandle,
            int Usage,
          )>()(
        ptr.ref.lpVtbl,
        Width,
        Height,
        Format,
        MultiSample,
        MultisampleQuality,
        Lockable,
        ppSurface,
        pSharedHandle,
        Usage,
      );

  int CreateOffscreenPlainSurfaceEx(
    int Width,
    int Height,
    int Format,
    int Pool,
    Pointer<Pointer<COMObject>> ppSurface,
    Pointer<IntPtr> pSharedHandle,
    int Usage,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(130)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Uint32 Width,
            Uint32 Height,
            Uint32 Format,
            Uint32 Pool,
            Pointer<Pointer<COMObject>> ppSurface,
            Pointer<IntPtr> pSharedHandle,
            Uint32 Usage,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int Width,
            int Height,
            int Format,
            int Pool,
            Pointer<Pointer<COMObject>> ppSurface,
            Pointer<IntPtr> pSharedHandle,
            int Usage,
          )>()(
        ptr.ref.lpVtbl,
        Width,
        Height,
        Format,
        Pool,
        ppSurface,
        pSharedHandle,
        Usage,
      );

  int CreateDepthStencilSurfaceEx(
    int Width,
    int Height,
    int Format,
    int MultiSample,
    int MultisampleQuality,
    int Discard,
    Pointer<Pointer<COMObject>> ppSurface,
    Pointer<IntPtr> pSharedHandle,
    int Usage,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(131)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Uint32 Width,
            Uint32 Height,
            Uint32 Format,
            Int32 MultiSample,
            Uint32 MultisampleQuality,
            Int32 Discard,
            Pointer<Pointer<COMObject>> ppSurface,
            Pointer<IntPtr> pSharedHandle,
            Uint32 Usage,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int Width,
            int Height,
            int Format,
            int MultiSample,
            int MultisampleQuality,
            int Discard,
            Pointer<Pointer<COMObject>> ppSurface,
            Pointer<IntPtr> pSharedHandle,
            int Usage,
          )>()(
        ptr.ref.lpVtbl,
        Width,
        Height,
        Format,
        MultiSample,
        MultisampleQuality,
        Discard,
        ppSurface,
        pSharedHandle,
        Usage,
      );

  int ResetEx(
    Pointer<D3DPRESENT_PARAMETERS> pPresentationParameters,
    Pointer<D3DDISPLAYMODEEX> pFullscreenDisplayMode,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(132)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<D3DPRESENT_PARAMETERS> pPresentationParameters,
            Pointer<D3DDISPLAYMODEEX> pFullscreenDisplayMode,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<D3DPRESENT_PARAMETERS> pPresentationParameters,
            Pointer<D3DDISPLAYMODEEX> pFullscreenDisplayMode,
          )>()(
        ptr.ref.lpVtbl,
        pPresentationParameters,
        pFullscreenDisplayMode,
      );

  int GetDisplayModeEx(
    int iSwapChain,
    Pointer<D3DDISPLAYMODEEX> pMode,
    Pointer<Int32> pRotation,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(133)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Uint32 iSwapChain,
            Pointer<D3DDISPLAYMODEEX> pMode,
            Pointer<Int32> pRotation,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int iSwapChain,
            Pointer<D3DDISPLAYMODEEX> pMode,
            Pointer<Int32> pRotation,
          )>()(
        ptr.ref.lpVtbl,
        iSwapChain,
        pMode,
        pRotation,
      );
}
