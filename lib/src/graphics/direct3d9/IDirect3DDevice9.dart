// IDirect3DDevice9.dart

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

import '../../system/com/IUnknown.dart';
import '../../foundation/structs.g.dart';
import '../../graphics/direct3d9/IDirect3D9.dart';
import '../../graphics/direct3d9/structs.g.dart';
import '../../graphics/direct3d9/IDirect3DSurface9.dart';
import '../../graphics/direct3d9/IDirect3DSwapChain9.dart';
import '../../graphics/gdi/structs.g.dart';
import '../../graphics/direct3d9/IDirect3DTexture9.dart';
import '../../graphics/direct3d9/IDirect3DVolumeTexture9.dart';
import '../../graphics/direct3d9/IDirect3DCubeTexture9.dart';
import '../../graphics/direct3d9/IDirect3DVertexBuffer9.dart';
import '../../graphics/direct3d9/IDirect3DIndexBuffer9.dart';
import '../../graphics/direct3d9/IDirect3DBaseTexture9.dart';
import '../../graphics/direct3d/structs.g.dart';
import '../../graphics/direct3d9/IDirect3DStateBlock9.dart';
import '../../graphics/direct3d9/IDirect3DVertexDeclaration9.dart';
import '../../graphics/direct3d9/IDirect3DVertexShader9.dart';
import '../../graphics/direct3d9/IDirect3DPixelShader9.dart';
import '../../graphics/direct3d9/IDirect3DQuery9.dart';

/// @nodoc
const IID_IDirect3DDevice9 = '{D0223B96-BF7A-43FD-92BD-A43B0D82B9EB}';

/// {@category Interface}
/// {@category com}
class IDirect3DDevice9 extends IUnknown {
  // vtable begins at 3, is 116 entries long.
  IDirect3DDevice9(Pointer<COMObject> ptr) : super(ptr);

  int TestCooperativeLevel() => ptr.ref.lpVtbl.value
          .elementAt(3)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
          )>()(
        ptr.ref.lpVtbl,
      );

  int GetAvailableTextureMem() => ptr.ref.lpVtbl.value
          .elementAt(4)
          .cast<
              Pointer<
                  NativeFunction<
                      Uint32 Function(
            Pointer,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
          )>()(
        ptr.ref.lpVtbl,
      );

  int EvictManagedResources() => ptr.ref.lpVtbl.value
          .elementAt(5)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
          )>()(
        ptr.ref.lpVtbl,
      );

  int GetDirect3D(
    Pointer<Pointer<COMObject>> ppD3D9,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(6)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Pointer<COMObject>> ppD3D9,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Pointer<COMObject>> ppD3D9,
          )>()(
        ptr.ref.lpVtbl,
        ppD3D9,
      );

  int GetDeviceCaps(
    Pointer<D3DCAPS9> pCaps,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(7)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<D3DCAPS9> pCaps,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<D3DCAPS9> pCaps,
          )>()(
        ptr.ref.lpVtbl,
        pCaps,
      );

  int GetDisplayMode(
    int iSwapChain,
    Pointer<D3DDISPLAYMODE> pMode,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(8)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Uint32 iSwapChain,
            Pointer<D3DDISPLAYMODE> pMode,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int iSwapChain,
            Pointer<D3DDISPLAYMODE> pMode,
          )>()(
        ptr.ref.lpVtbl,
        iSwapChain,
        pMode,
      );

  int GetCreationParameters(
    Pointer<D3DDEVICE_CREATION_PARAMETERS> pParameters,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(9)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<D3DDEVICE_CREATION_PARAMETERS> pParameters,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<D3DDEVICE_CREATION_PARAMETERS> pParameters,
          )>()(
        ptr.ref.lpVtbl,
        pParameters,
      );

  int SetCursorProperties(
    int XHotSpot,
    int YHotSpot,
    Pointer<COMObject> pCursorBitmap,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(10)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Uint32 XHotSpot,
            Uint32 YHotSpot,
            Pointer<COMObject> pCursorBitmap,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int XHotSpot,
            int YHotSpot,
            Pointer<COMObject> pCursorBitmap,
          )>()(
        ptr.ref.lpVtbl,
        XHotSpot,
        YHotSpot,
        pCursorBitmap,
      );

  void SetCursorPosition(
    int X,
    int Y,
    int Flags,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(11)
          .cast<
              Pointer<
                  NativeFunction<
                      Void Function(
            Pointer,
            Int32 X,
            Int32 Y,
            Uint32 Flags,
          )>>>()
          .value
          .asFunction<
              void Function(
            Pointer,
            int X,
            int Y,
            int Flags,
          )>()(
        ptr.ref.lpVtbl,
        X,
        Y,
        Flags,
      );

  int ShowCursor(
    int bShow,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(12)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Int32 bShow,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int bShow,
          )>()(
        ptr.ref.lpVtbl,
        bShow,
      );

  int CreateAdditionalSwapChain(
    Pointer<D3DPRESENT_PARAMETERS> pPresentationParameters,
    Pointer<Pointer<COMObject>> pSwapChain,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(13)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<D3DPRESENT_PARAMETERS> pPresentationParameters,
            Pointer<Pointer<COMObject>> pSwapChain,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<D3DPRESENT_PARAMETERS> pPresentationParameters,
            Pointer<Pointer<COMObject>> pSwapChain,
          )>()(
        ptr.ref.lpVtbl,
        pPresentationParameters,
        pSwapChain,
      );

  int GetSwapChain(
    int iSwapChain,
    Pointer<Pointer<COMObject>> pSwapChain,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(14)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Uint32 iSwapChain,
            Pointer<Pointer<COMObject>> pSwapChain,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int iSwapChain,
            Pointer<Pointer<COMObject>> pSwapChain,
          )>()(
        ptr.ref.lpVtbl,
        iSwapChain,
        pSwapChain,
      );

  int GetNumberOfSwapChains() => ptr.ref.lpVtbl.value
          .elementAt(15)
          .cast<
              Pointer<
                  NativeFunction<
                      Uint32 Function(
            Pointer,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
          )>()(
        ptr.ref.lpVtbl,
      );

  int Reset(
    Pointer<D3DPRESENT_PARAMETERS> pPresentationParameters,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(16)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<D3DPRESENT_PARAMETERS> pPresentationParameters,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<D3DPRESENT_PARAMETERS> pPresentationParameters,
          )>()(
        ptr.ref.lpVtbl,
        pPresentationParameters,
      );

  int Present(
    Pointer<RECT> pSourceRect,
    Pointer<RECT> pDestRect,
    int hDestWindowOverride,
    Pointer<RGNDATA> pDirtyRegion,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(17)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<RECT> pSourceRect,
            Pointer<RECT> pDestRect,
            IntPtr hDestWindowOverride,
            Pointer<RGNDATA> pDirtyRegion,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<RECT> pSourceRect,
            Pointer<RECT> pDestRect,
            int hDestWindowOverride,
            Pointer<RGNDATA> pDirtyRegion,
          )>()(
        ptr.ref.lpVtbl,
        pSourceRect,
        pDestRect,
        hDestWindowOverride,
        pDirtyRegion,
      );

  int GetBackBuffer(
    int iSwapChain,
    int iBackBuffer,
    int Type,
    Pointer<Pointer<COMObject>> ppBackBuffer,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(18)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Uint32 iSwapChain,
            Uint32 iBackBuffer,
            Uint32 Type,
            Pointer<Pointer<COMObject>> ppBackBuffer,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int iSwapChain,
            int iBackBuffer,
            int Type,
            Pointer<Pointer<COMObject>> ppBackBuffer,
          )>()(
        ptr.ref.lpVtbl,
        iSwapChain,
        iBackBuffer,
        Type,
        ppBackBuffer,
      );

  int GetRasterStatus(
    int iSwapChain,
    Pointer<D3DRASTER_STATUS> pRasterStatus,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(19)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Uint32 iSwapChain,
            Pointer<D3DRASTER_STATUS> pRasterStatus,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int iSwapChain,
            Pointer<D3DRASTER_STATUS> pRasterStatus,
          )>()(
        ptr.ref.lpVtbl,
        iSwapChain,
        pRasterStatus,
      );

  int SetDialogBoxMode(
    int bEnableDialogs,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(20)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Int32 bEnableDialogs,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int bEnableDialogs,
          )>()(
        ptr.ref.lpVtbl,
        bEnableDialogs,
      );

  void SetGammaRamp(
    int iSwapChain,
    int Flags,
    Pointer<D3DGAMMARAMP> pRamp,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(21)
          .cast<
              Pointer<
                  NativeFunction<
                      Void Function(
            Pointer,
            Uint32 iSwapChain,
            Uint32 Flags,
            Pointer<D3DGAMMARAMP> pRamp,
          )>>>()
          .value
          .asFunction<
              void Function(
            Pointer,
            int iSwapChain,
            int Flags,
            Pointer<D3DGAMMARAMP> pRamp,
          )>()(
        ptr.ref.lpVtbl,
        iSwapChain,
        Flags,
        pRamp,
      );

  void GetGammaRamp(
    int iSwapChain,
    Pointer<D3DGAMMARAMP> pRamp,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(22)
          .cast<
              Pointer<
                  NativeFunction<
                      Void Function(
            Pointer,
            Uint32 iSwapChain,
            Pointer<D3DGAMMARAMP> pRamp,
          )>>>()
          .value
          .asFunction<
              void Function(
            Pointer,
            int iSwapChain,
            Pointer<D3DGAMMARAMP> pRamp,
          )>()(
        ptr.ref.lpVtbl,
        iSwapChain,
        pRamp,
      );

  int CreateTexture(
    int Width,
    int Height,
    int Levels,
    int Usage,
    int Format,
    int Pool,
    Pointer<Pointer<COMObject>> ppTexture,
    Pointer<IntPtr> pSharedHandle,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(23)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Uint32 Width,
            Uint32 Height,
            Uint32 Levels,
            Uint32 Usage,
            Uint32 Format,
            Uint32 Pool,
            Pointer<Pointer<COMObject>> ppTexture,
            Pointer<IntPtr> pSharedHandle,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int Width,
            int Height,
            int Levels,
            int Usage,
            int Format,
            int Pool,
            Pointer<Pointer<COMObject>> ppTexture,
            Pointer<IntPtr> pSharedHandle,
          )>()(
        ptr.ref.lpVtbl,
        Width,
        Height,
        Levels,
        Usage,
        Format,
        Pool,
        ppTexture,
        pSharedHandle,
      );

  int CreateVolumeTexture(
    int Width,
    int Height,
    int Depth,
    int Levels,
    int Usage,
    int Format,
    int Pool,
    Pointer<Pointer<COMObject>> ppVolumeTexture,
    Pointer<IntPtr> pSharedHandle,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(24)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Uint32 Width,
            Uint32 Height,
            Uint32 Depth,
            Uint32 Levels,
            Uint32 Usage,
            Uint32 Format,
            Uint32 Pool,
            Pointer<Pointer<COMObject>> ppVolumeTexture,
            Pointer<IntPtr> pSharedHandle,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int Width,
            int Height,
            int Depth,
            int Levels,
            int Usage,
            int Format,
            int Pool,
            Pointer<Pointer<COMObject>> ppVolumeTexture,
            Pointer<IntPtr> pSharedHandle,
          )>()(
        ptr.ref.lpVtbl,
        Width,
        Height,
        Depth,
        Levels,
        Usage,
        Format,
        Pool,
        ppVolumeTexture,
        pSharedHandle,
      );

  int CreateCubeTexture(
    int EdgeLength,
    int Levels,
    int Usage,
    int Format,
    int Pool,
    Pointer<Pointer<COMObject>> ppCubeTexture,
    Pointer<IntPtr> pSharedHandle,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(25)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Uint32 EdgeLength,
            Uint32 Levels,
            Uint32 Usage,
            Uint32 Format,
            Uint32 Pool,
            Pointer<Pointer<COMObject>> ppCubeTexture,
            Pointer<IntPtr> pSharedHandle,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int EdgeLength,
            int Levels,
            int Usage,
            int Format,
            int Pool,
            Pointer<Pointer<COMObject>> ppCubeTexture,
            Pointer<IntPtr> pSharedHandle,
          )>()(
        ptr.ref.lpVtbl,
        EdgeLength,
        Levels,
        Usage,
        Format,
        Pool,
        ppCubeTexture,
        pSharedHandle,
      );

  int CreateVertexBuffer(
    int Length,
    int Usage,
    int FVF,
    int Pool,
    Pointer<Pointer<COMObject>> ppVertexBuffer,
    Pointer<IntPtr> pSharedHandle,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(26)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Uint32 Length,
            Uint32 Usage,
            Uint32 FVF,
            Uint32 Pool,
            Pointer<Pointer<COMObject>> ppVertexBuffer,
            Pointer<IntPtr> pSharedHandle,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int Length,
            int Usage,
            int FVF,
            int Pool,
            Pointer<Pointer<COMObject>> ppVertexBuffer,
            Pointer<IntPtr> pSharedHandle,
          )>()(
        ptr.ref.lpVtbl,
        Length,
        Usage,
        FVF,
        Pool,
        ppVertexBuffer,
        pSharedHandle,
      );

  int CreateIndexBuffer(
    int Length,
    int Usage,
    int Format,
    int Pool,
    Pointer<Pointer<COMObject>> ppIndexBuffer,
    Pointer<IntPtr> pSharedHandle,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(27)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Uint32 Length,
            Uint32 Usage,
            Uint32 Format,
            Uint32 Pool,
            Pointer<Pointer<COMObject>> ppIndexBuffer,
            Pointer<IntPtr> pSharedHandle,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int Length,
            int Usage,
            int Format,
            int Pool,
            Pointer<Pointer<COMObject>> ppIndexBuffer,
            Pointer<IntPtr> pSharedHandle,
          )>()(
        ptr.ref.lpVtbl,
        Length,
        Usage,
        Format,
        Pool,
        ppIndexBuffer,
        pSharedHandle,
      );

  int CreateRenderTarget(
    int Width,
    int Height,
    int Format,
    int MultiSample,
    int MultisampleQuality,
    int Lockable,
    Pointer<Pointer<COMObject>> ppSurface,
    Pointer<IntPtr> pSharedHandle,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(28)
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
      );

  int CreateDepthStencilSurface(
    int Width,
    int Height,
    int Format,
    int MultiSample,
    int MultisampleQuality,
    int Discard,
    Pointer<Pointer<COMObject>> ppSurface,
    Pointer<IntPtr> pSharedHandle,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(29)
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
      );

  int UpdateSurface(
    Pointer<COMObject> pSourceSurface,
    Pointer<RECT> pSourceRect,
    Pointer<COMObject> pDestinationSurface,
    Pointer<POINT> pDestPoint,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(30)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<COMObject> pSourceSurface,
            Pointer<RECT> pSourceRect,
            Pointer<COMObject> pDestinationSurface,
            Pointer<POINT> pDestPoint,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<COMObject> pSourceSurface,
            Pointer<RECT> pSourceRect,
            Pointer<COMObject> pDestinationSurface,
            Pointer<POINT> pDestPoint,
          )>()(
        ptr.ref.lpVtbl,
        pSourceSurface,
        pSourceRect,
        pDestinationSurface,
        pDestPoint,
      );

  int UpdateTexture(
    Pointer<COMObject> pSourceTexture,
    Pointer<COMObject> pDestinationTexture,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(31)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<COMObject> pSourceTexture,
            Pointer<COMObject> pDestinationTexture,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<COMObject> pSourceTexture,
            Pointer<COMObject> pDestinationTexture,
          )>()(
        ptr.ref.lpVtbl,
        pSourceTexture,
        pDestinationTexture,
      );

  int GetRenderTargetData(
    Pointer<COMObject> pRenderTarget,
    Pointer<COMObject> pDestSurface,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(32)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<COMObject> pRenderTarget,
            Pointer<COMObject> pDestSurface,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<COMObject> pRenderTarget,
            Pointer<COMObject> pDestSurface,
          )>()(
        ptr.ref.lpVtbl,
        pRenderTarget,
        pDestSurface,
      );

  int GetFrontBufferData(
    int iSwapChain,
    Pointer<COMObject> pDestSurface,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(33)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Uint32 iSwapChain,
            Pointer<COMObject> pDestSurface,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int iSwapChain,
            Pointer<COMObject> pDestSurface,
          )>()(
        ptr.ref.lpVtbl,
        iSwapChain,
        pDestSurface,
      );

  int StretchRect(
    Pointer<COMObject> pSourceSurface,
    Pointer<RECT> pSourceRect,
    Pointer<COMObject> pDestSurface,
    Pointer<RECT> pDestRect,
    int Filter,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(34)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<COMObject> pSourceSurface,
            Pointer<RECT> pSourceRect,
            Pointer<COMObject> pDestSurface,
            Pointer<RECT> pDestRect,
            Int32 Filter,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<COMObject> pSourceSurface,
            Pointer<RECT> pSourceRect,
            Pointer<COMObject> pDestSurface,
            Pointer<RECT> pDestRect,
            int Filter,
          )>()(
        ptr.ref.lpVtbl,
        pSourceSurface,
        pSourceRect,
        pDestSurface,
        pDestRect,
        Filter,
      );

  int ColorFill(
    Pointer<COMObject> pSurface,
    Pointer<RECT> pRect,
    int color,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(35)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<COMObject> pSurface,
            Pointer<RECT> pRect,
            Uint32 color,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<COMObject> pSurface,
            Pointer<RECT> pRect,
            int color,
          )>()(
        ptr.ref.lpVtbl,
        pSurface,
        pRect,
        color,
      );

  int CreateOffscreenPlainSurface(
    int Width,
    int Height,
    int Format,
    int Pool,
    Pointer<Pointer<COMObject>> ppSurface,
    Pointer<IntPtr> pSharedHandle,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(36)
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
          )>()(
        ptr.ref.lpVtbl,
        Width,
        Height,
        Format,
        Pool,
        ppSurface,
        pSharedHandle,
      );

  int SetRenderTarget(
    int RenderTargetIndex,
    Pointer<COMObject> pRenderTarget,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(37)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Uint32 RenderTargetIndex,
            Pointer<COMObject> pRenderTarget,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int RenderTargetIndex,
            Pointer<COMObject> pRenderTarget,
          )>()(
        ptr.ref.lpVtbl,
        RenderTargetIndex,
        pRenderTarget,
      );

  int GetRenderTarget(
    int RenderTargetIndex,
    Pointer<Pointer<COMObject>> ppRenderTarget,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(38)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Uint32 RenderTargetIndex,
            Pointer<Pointer<COMObject>> ppRenderTarget,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int RenderTargetIndex,
            Pointer<Pointer<COMObject>> ppRenderTarget,
          )>()(
        ptr.ref.lpVtbl,
        RenderTargetIndex,
        ppRenderTarget,
      );

  int SetDepthStencilSurface(
    Pointer<COMObject> pNewZStencil,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(39)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<COMObject> pNewZStencil,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<COMObject> pNewZStencil,
          )>()(
        ptr.ref.lpVtbl,
        pNewZStencil,
      );

  int GetDepthStencilSurface(
    Pointer<Pointer<COMObject>> ppZStencilSurface,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(40)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Pointer<COMObject>> ppZStencilSurface,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Pointer<COMObject>> ppZStencilSurface,
          )>()(
        ptr.ref.lpVtbl,
        ppZStencilSurface,
      );

  int BeginScene() => ptr.ref.lpVtbl.value
          .elementAt(41)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
          )>()(
        ptr.ref.lpVtbl,
      );

  int EndScene() => ptr.ref.lpVtbl.value
          .elementAt(42)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
          )>()(
        ptr.ref.lpVtbl,
      );

  int Clear(
    int Count,
    Pointer<D3DRECT> pRects,
    int Flags,
    int Color,
    double Z,
    int Stencil,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(43)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Uint32 Count,
            Pointer<D3DRECT> pRects,
            Uint32 Flags,
            Uint32 Color,
            Float Z,
            Uint32 Stencil,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int Count,
            Pointer<D3DRECT> pRects,
            int Flags,
            int Color,
            double Z,
            int Stencil,
          )>()(
        ptr.ref.lpVtbl,
        Count,
        pRects,
        Flags,
        Color,
        Z,
        Stencil,
      );

  int SetTransform(
    int State,
    Pointer<D3DMATRIX> pMatrix,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(44)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Int32 State,
            Pointer<D3DMATRIX> pMatrix,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int State,
            Pointer<D3DMATRIX> pMatrix,
          )>()(
        ptr.ref.lpVtbl,
        State,
        pMatrix,
      );

  int GetTransform(
    int State,
    Pointer<D3DMATRIX> pMatrix,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(45)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Int32 State,
            Pointer<D3DMATRIX> pMatrix,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int State,
            Pointer<D3DMATRIX> pMatrix,
          )>()(
        ptr.ref.lpVtbl,
        State,
        pMatrix,
      );

  int MultiplyTransform(
    int param0,
    Pointer<D3DMATRIX> param1,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(46)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Int32 param0,
            Pointer<D3DMATRIX> param1,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int param0,
            Pointer<D3DMATRIX> param1,
          )>()(
        ptr.ref.lpVtbl,
        param0,
        param1,
      );

  int SetViewport(
    Pointer<D3DVIEWPORT9> pViewport,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(47)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<D3DVIEWPORT9> pViewport,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<D3DVIEWPORT9> pViewport,
          )>()(
        ptr.ref.lpVtbl,
        pViewport,
      );

  int GetViewport(
    Pointer<D3DVIEWPORT9> pViewport,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(48)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<D3DVIEWPORT9> pViewport,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<D3DVIEWPORT9> pViewport,
          )>()(
        ptr.ref.lpVtbl,
        pViewport,
      );

  int SetMaterial(
    Pointer<D3DMATERIAL9> pMaterial,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(49)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<D3DMATERIAL9> pMaterial,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<D3DMATERIAL9> pMaterial,
          )>()(
        ptr.ref.lpVtbl,
        pMaterial,
      );

  int GetMaterial(
    Pointer<D3DMATERIAL9> pMaterial,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(50)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<D3DMATERIAL9> pMaterial,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<D3DMATERIAL9> pMaterial,
          )>()(
        ptr.ref.lpVtbl,
        pMaterial,
      );

  int SetLight(
    int Index,
    Pointer<D3DLIGHT9> param1,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(51)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Uint32 Index,
            Pointer<D3DLIGHT9> param1,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int Index,
            Pointer<D3DLIGHT9> param1,
          )>()(
        ptr.ref.lpVtbl,
        Index,
        param1,
      );

  int GetLight(
    int Index,
    Pointer<D3DLIGHT9> param1,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(52)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Uint32 Index,
            Pointer<D3DLIGHT9> param1,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int Index,
            Pointer<D3DLIGHT9> param1,
          )>()(
        ptr.ref.lpVtbl,
        Index,
        param1,
      );

  int LightEnable(
    int Index,
    int Enable,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(53)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Uint32 Index,
            Int32 Enable,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int Index,
            int Enable,
          )>()(
        ptr.ref.lpVtbl,
        Index,
        Enable,
      );

  int GetLightEnable(
    int Index,
    Pointer<Int32> pEnable,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(54)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Uint32 Index,
            Pointer<Int32> pEnable,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int Index,
            Pointer<Int32> pEnable,
          )>()(
        ptr.ref.lpVtbl,
        Index,
        pEnable,
      );

  int SetClipPlane(
    int Index,
    Pointer<Float> pPlane,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(55)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Uint32 Index,
            Pointer<Float> pPlane,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int Index,
            Pointer<Float> pPlane,
          )>()(
        ptr.ref.lpVtbl,
        Index,
        pPlane,
      );

  int GetClipPlane(
    int Index,
    Pointer<Float> pPlane,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(56)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Uint32 Index,
            Pointer<Float> pPlane,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int Index,
            Pointer<Float> pPlane,
          )>()(
        ptr.ref.lpVtbl,
        Index,
        pPlane,
      );

  int SetRenderState(
    int State,
    int Value,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(57)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Int32 State,
            Uint32 Value,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int State,
            int Value,
          )>()(
        ptr.ref.lpVtbl,
        State,
        Value,
      );

  int GetRenderState(
    int State,
    Pointer<Uint32> pValue,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(58)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Int32 State,
            Pointer<Uint32> pValue,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int State,
            Pointer<Uint32> pValue,
          )>()(
        ptr.ref.lpVtbl,
        State,
        pValue,
      );

  int CreateStateBlock(
    int Type,
    Pointer<Pointer<COMObject>> ppSB,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(59)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Int32 Type,
            Pointer<Pointer<COMObject>> ppSB,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int Type,
            Pointer<Pointer<COMObject>> ppSB,
          )>()(
        ptr.ref.lpVtbl,
        Type,
        ppSB,
      );

  int BeginStateBlock() => ptr.ref.lpVtbl.value
          .elementAt(60)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
          )>()(
        ptr.ref.lpVtbl,
      );

  int EndStateBlock(
    Pointer<Pointer<COMObject>> ppSB,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(61)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Pointer<COMObject>> ppSB,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Pointer<COMObject>> ppSB,
          )>()(
        ptr.ref.lpVtbl,
        ppSB,
      );

  int SetClipStatus(
    Pointer<D3DCLIPSTATUS9> pClipStatus,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(62)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<D3DCLIPSTATUS9> pClipStatus,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<D3DCLIPSTATUS9> pClipStatus,
          )>()(
        ptr.ref.lpVtbl,
        pClipStatus,
      );

  int GetClipStatus(
    Pointer<D3DCLIPSTATUS9> pClipStatus,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(63)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<D3DCLIPSTATUS9> pClipStatus,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<D3DCLIPSTATUS9> pClipStatus,
          )>()(
        ptr.ref.lpVtbl,
        pClipStatus,
      );

  int GetTexture(
    int Stage,
    Pointer<Pointer<COMObject>> ppTexture,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(64)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Uint32 Stage,
            Pointer<Pointer<COMObject>> ppTexture,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int Stage,
            Pointer<Pointer<COMObject>> ppTexture,
          )>()(
        ptr.ref.lpVtbl,
        Stage,
        ppTexture,
      );

  int SetTexture(
    int Stage,
    Pointer<COMObject> pTexture,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(65)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Uint32 Stage,
            Pointer<COMObject> pTexture,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int Stage,
            Pointer<COMObject> pTexture,
          )>()(
        ptr.ref.lpVtbl,
        Stage,
        pTexture,
      );

  int GetTextureStageState(
    int Stage,
    int Type,
    Pointer<Uint32> pValue,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(66)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Uint32 Stage,
            Int32 Type,
            Pointer<Uint32> pValue,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int Stage,
            int Type,
            Pointer<Uint32> pValue,
          )>()(
        ptr.ref.lpVtbl,
        Stage,
        Type,
        pValue,
      );

  int SetTextureStageState(
    int Stage,
    int Type,
    int Value,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(67)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Uint32 Stage,
            Int32 Type,
            Uint32 Value,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int Stage,
            int Type,
            int Value,
          )>()(
        ptr.ref.lpVtbl,
        Stage,
        Type,
        Value,
      );

  int GetSamplerState(
    int Sampler,
    int Type,
    Pointer<Uint32> pValue,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(68)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Uint32 Sampler,
            Int32 Type,
            Pointer<Uint32> pValue,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int Sampler,
            int Type,
            Pointer<Uint32> pValue,
          )>()(
        ptr.ref.lpVtbl,
        Sampler,
        Type,
        pValue,
      );

  int SetSamplerState(
    int Sampler,
    int Type,
    int Value,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(69)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Uint32 Sampler,
            Int32 Type,
            Uint32 Value,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int Sampler,
            int Type,
            int Value,
          )>()(
        ptr.ref.lpVtbl,
        Sampler,
        Type,
        Value,
      );

  int ValidateDevice(
    Pointer<Uint32> pNumPasses,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(70)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Uint32> pNumPasses,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Uint32> pNumPasses,
          )>()(
        ptr.ref.lpVtbl,
        pNumPasses,
      );

  int SetPaletteEntries(
    int PaletteNumber,
    Pointer<PALETTEENTRY> pEntries,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(71)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Uint32 PaletteNumber,
            Pointer<PALETTEENTRY> pEntries,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int PaletteNumber,
            Pointer<PALETTEENTRY> pEntries,
          )>()(
        ptr.ref.lpVtbl,
        PaletteNumber,
        pEntries,
      );

  int GetPaletteEntries(
    int PaletteNumber,
    Pointer<PALETTEENTRY> pEntries,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(72)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Uint32 PaletteNumber,
            Pointer<PALETTEENTRY> pEntries,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int PaletteNumber,
            Pointer<PALETTEENTRY> pEntries,
          )>()(
        ptr.ref.lpVtbl,
        PaletteNumber,
        pEntries,
      );

  int SetCurrentTexturePalette(
    int PaletteNumber,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(73)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Uint32 PaletteNumber,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int PaletteNumber,
          )>()(
        ptr.ref.lpVtbl,
        PaletteNumber,
      );

  int GetCurrentTexturePalette(
    Pointer<Uint32> PaletteNumber,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(74)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Uint32> PaletteNumber,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Uint32> PaletteNumber,
          )>()(
        ptr.ref.lpVtbl,
        PaletteNumber,
      );

  int SetScissorRect(
    Pointer<RECT> pRect,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(75)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<RECT> pRect,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<RECT> pRect,
          )>()(
        ptr.ref.lpVtbl,
        pRect,
      );

  int GetScissorRect(
    Pointer<RECT> pRect,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(76)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<RECT> pRect,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<RECT> pRect,
          )>()(
        ptr.ref.lpVtbl,
        pRect,
      );

  int SetSoftwareVertexProcessing(
    int bSoftware,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(77)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Int32 bSoftware,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int bSoftware,
          )>()(
        ptr.ref.lpVtbl,
        bSoftware,
      );

  int GetSoftwareVertexProcessing() => ptr.ref.lpVtbl.value
          .elementAt(78)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
          )>()(
        ptr.ref.lpVtbl,
      );

  int SetNPatchMode(
    double nSegments,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(79)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Float nSegments,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            double nSegments,
          )>()(
        ptr.ref.lpVtbl,
        nSegments,
      );

  double GetNPatchMode() => ptr.ref.lpVtbl.value
          .elementAt(80)
          .cast<
              Pointer<
                  NativeFunction<
                      Float Function(
            Pointer,
          )>>>()
          .value
          .asFunction<
              double Function(
            Pointer,
          )>()(
        ptr.ref.lpVtbl,
      );

  int DrawPrimitive(
    int PrimitiveType,
    int StartVertex,
    int PrimitiveCount,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(81)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Int32 PrimitiveType,
            Uint32 StartVertex,
            Uint32 PrimitiveCount,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int PrimitiveType,
            int StartVertex,
            int PrimitiveCount,
          )>()(
        ptr.ref.lpVtbl,
        PrimitiveType,
        StartVertex,
        PrimitiveCount,
      );

  int DrawIndexedPrimitive(
    int param0,
    int BaseVertexIndex,
    int MinVertexIndex,
    int NumVertices,
    int startIndex,
    int primCount,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(82)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Int32 param0,
            Int32 BaseVertexIndex,
            Uint32 MinVertexIndex,
            Uint32 NumVertices,
            Uint32 startIndex,
            Uint32 primCount,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int param0,
            int BaseVertexIndex,
            int MinVertexIndex,
            int NumVertices,
            int startIndex,
            int primCount,
          )>()(
        ptr.ref.lpVtbl,
        param0,
        BaseVertexIndex,
        MinVertexIndex,
        NumVertices,
        startIndex,
        primCount,
      );

  int DrawPrimitiveUP(
    int PrimitiveType,
    int PrimitiveCount,
    Pointer pVertexStreamZeroData,
    int VertexStreamZeroStride,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(83)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Int32 PrimitiveType,
            Uint32 PrimitiveCount,
            Pointer pVertexStreamZeroData,
            Uint32 VertexStreamZeroStride,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int PrimitiveType,
            int PrimitiveCount,
            Pointer pVertexStreamZeroData,
            int VertexStreamZeroStride,
          )>()(
        ptr.ref.lpVtbl,
        PrimitiveType,
        PrimitiveCount,
        pVertexStreamZeroData,
        VertexStreamZeroStride,
      );

  int DrawIndexedPrimitiveUP(
    int PrimitiveType,
    int MinVertexIndex,
    int NumVertices,
    int PrimitiveCount,
    Pointer pIndexData,
    int IndexDataFormat,
    Pointer pVertexStreamZeroData,
    int VertexStreamZeroStride,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(84)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Int32 PrimitiveType,
            Uint32 MinVertexIndex,
            Uint32 NumVertices,
            Uint32 PrimitiveCount,
            Pointer pIndexData,
            Uint32 IndexDataFormat,
            Pointer pVertexStreamZeroData,
            Uint32 VertexStreamZeroStride,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int PrimitiveType,
            int MinVertexIndex,
            int NumVertices,
            int PrimitiveCount,
            Pointer pIndexData,
            int IndexDataFormat,
            Pointer pVertexStreamZeroData,
            int VertexStreamZeroStride,
          )>()(
        ptr.ref.lpVtbl,
        PrimitiveType,
        MinVertexIndex,
        NumVertices,
        PrimitiveCount,
        pIndexData,
        IndexDataFormat,
        pVertexStreamZeroData,
        VertexStreamZeroStride,
      );

  int ProcessVertices(
    int SrcStartIndex,
    int DestIndex,
    int VertexCount,
    Pointer<COMObject> pDestBuffer,
    Pointer<COMObject> pVertexDecl,
    int Flags,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(85)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Uint32 SrcStartIndex,
            Uint32 DestIndex,
            Uint32 VertexCount,
            Pointer<COMObject> pDestBuffer,
            Pointer<COMObject> pVertexDecl,
            Uint32 Flags,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int SrcStartIndex,
            int DestIndex,
            int VertexCount,
            Pointer<COMObject> pDestBuffer,
            Pointer<COMObject> pVertexDecl,
            int Flags,
          )>()(
        ptr.ref.lpVtbl,
        SrcStartIndex,
        DestIndex,
        VertexCount,
        pDestBuffer,
        pVertexDecl,
        Flags,
      );

  int CreateVertexDeclaration(
    Pointer<D3DVERTEXELEMENT9> pVertexElements,
    Pointer<Pointer<COMObject>> ppDecl,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(86)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<D3DVERTEXELEMENT9> pVertexElements,
            Pointer<Pointer<COMObject>> ppDecl,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<D3DVERTEXELEMENT9> pVertexElements,
            Pointer<Pointer<COMObject>> ppDecl,
          )>()(
        ptr.ref.lpVtbl,
        pVertexElements,
        ppDecl,
      );

  int SetVertexDeclaration(
    Pointer<COMObject> pDecl,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(87)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<COMObject> pDecl,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<COMObject> pDecl,
          )>()(
        ptr.ref.lpVtbl,
        pDecl,
      );

  int GetVertexDeclaration(
    Pointer<Pointer<COMObject>> ppDecl,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(88)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Pointer<COMObject>> ppDecl,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Pointer<COMObject>> ppDecl,
          )>()(
        ptr.ref.lpVtbl,
        ppDecl,
      );

  int SetFVF(
    int FVF,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(89)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Uint32 FVF,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int FVF,
          )>()(
        ptr.ref.lpVtbl,
        FVF,
      );

  int GetFVF(
    Pointer<Uint32> pFVF,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(90)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Uint32> pFVF,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Uint32> pFVF,
          )>()(
        ptr.ref.lpVtbl,
        pFVF,
      );

  int CreateVertexShader(
    Pointer<Uint32> pFunction,
    Pointer<Pointer<COMObject>> ppShader,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(91)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Uint32> pFunction,
            Pointer<Pointer<COMObject>> ppShader,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Uint32> pFunction,
            Pointer<Pointer<COMObject>> ppShader,
          )>()(
        ptr.ref.lpVtbl,
        pFunction,
        ppShader,
      );

  int SetVertexShader(
    Pointer<COMObject> pShader,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(92)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<COMObject> pShader,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<COMObject> pShader,
          )>()(
        ptr.ref.lpVtbl,
        pShader,
      );

  int GetVertexShader(
    Pointer<Pointer<COMObject>> ppShader,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(93)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Pointer<COMObject>> ppShader,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Pointer<COMObject>> ppShader,
          )>()(
        ptr.ref.lpVtbl,
        ppShader,
      );

  int SetVertexShaderConstantF(
    int StartRegister,
    Pointer<Float> pConstantData,
    int Vector4fCount,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(94)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Uint32 StartRegister,
            Pointer<Float> pConstantData,
            Uint32 Vector4fCount,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int StartRegister,
            Pointer<Float> pConstantData,
            int Vector4fCount,
          )>()(
        ptr.ref.lpVtbl,
        StartRegister,
        pConstantData,
        Vector4fCount,
      );

  int GetVertexShaderConstantF(
    int StartRegister,
    Pointer<Float> pConstantData,
    int Vector4fCount,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(95)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Uint32 StartRegister,
            Pointer<Float> pConstantData,
            Uint32 Vector4fCount,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int StartRegister,
            Pointer<Float> pConstantData,
            int Vector4fCount,
          )>()(
        ptr.ref.lpVtbl,
        StartRegister,
        pConstantData,
        Vector4fCount,
      );

  int SetVertexShaderConstantI(
    int StartRegister,
    Pointer<Int32> pConstantData,
    int Vector4iCount,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(96)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Uint32 StartRegister,
            Pointer<Int32> pConstantData,
            Uint32 Vector4iCount,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int StartRegister,
            Pointer<Int32> pConstantData,
            int Vector4iCount,
          )>()(
        ptr.ref.lpVtbl,
        StartRegister,
        pConstantData,
        Vector4iCount,
      );

  int GetVertexShaderConstantI(
    int StartRegister,
    Pointer<Int32> pConstantData,
    int Vector4iCount,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(97)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Uint32 StartRegister,
            Pointer<Int32> pConstantData,
            Uint32 Vector4iCount,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int StartRegister,
            Pointer<Int32> pConstantData,
            int Vector4iCount,
          )>()(
        ptr.ref.lpVtbl,
        StartRegister,
        pConstantData,
        Vector4iCount,
      );

  int SetVertexShaderConstantB(
    int StartRegister,
    Pointer<Int32> pConstantData,
    int BoolCount,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(98)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Uint32 StartRegister,
            Pointer<Int32> pConstantData,
            Uint32 BoolCount,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int StartRegister,
            Pointer<Int32> pConstantData,
            int BoolCount,
          )>()(
        ptr.ref.lpVtbl,
        StartRegister,
        pConstantData,
        BoolCount,
      );

  int GetVertexShaderConstantB(
    int StartRegister,
    Pointer<Int32> pConstantData,
    int BoolCount,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(99)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Uint32 StartRegister,
            Pointer<Int32> pConstantData,
            Uint32 BoolCount,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int StartRegister,
            Pointer<Int32> pConstantData,
            int BoolCount,
          )>()(
        ptr.ref.lpVtbl,
        StartRegister,
        pConstantData,
        BoolCount,
      );

  int SetStreamSource(
    int StreamNumber,
    Pointer<COMObject> pStreamData,
    int OffsetInBytes,
    int Stride,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(100)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Uint32 StreamNumber,
            Pointer<COMObject> pStreamData,
            Uint32 OffsetInBytes,
            Uint32 Stride,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int StreamNumber,
            Pointer<COMObject> pStreamData,
            int OffsetInBytes,
            int Stride,
          )>()(
        ptr.ref.lpVtbl,
        StreamNumber,
        pStreamData,
        OffsetInBytes,
        Stride,
      );

  int GetStreamSource(
    int StreamNumber,
    Pointer<Pointer<COMObject>> ppStreamData,
    Pointer<Uint32> pOffsetInBytes,
    Pointer<Uint32> pStride,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(101)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Uint32 StreamNumber,
            Pointer<Pointer<COMObject>> ppStreamData,
            Pointer<Uint32> pOffsetInBytes,
            Pointer<Uint32> pStride,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int StreamNumber,
            Pointer<Pointer<COMObject>> ppStreamData,
            Pointer<Uint32> pOffsetInBytes,
            Pointer<Uint32> pStride,
          )>()(
        ptr.ref.lpVtbl,
        StreamNumber,
        ppStreamData,
        pOffsetInBytes,
        pStride,
      );

  int SetStreamSourceFreq(
    int StreamNumber,
    int Setting,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(102)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Uint32 StreamNumber,
            Uint32 Setting,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int StreamNumber,
            int Setting,
          )>()(
        ptr.ref.lpVtbl,
        StreamNumber,
        Setting,
      );

  int GetStreamSourceFreq(
    int StreamNumber,
    Pointer<Uint32> pSetting,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(103)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Uint32 StreamNumber,
            Pointer<Uint32> pSetting,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int StreamNumber,
            Pointer<Uint32> pSetting,
          )>()(
        ptr.ref.lpVtbl,
        StreamNumber,
        pSetting,
      );

  int SetIndices(
    Pointer<COMObject> pIndexData,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(104)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<COMObject> pIndexData,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<COMObject> pIndexData,
          )>()(
        ptr.ref.lpVtbl,
        pIndexData,
      );

  int GetIndices(
    Pointer<Pointer<COMObject>> ppIndexData,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(105)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Pointer<COMObject>> ppIndexData,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Pointer<COMObject>> ppIndexData,
          )>()(
        ptr.ref.lpVtbl,
        ppIndexData,
      );

  int CreatePixelShader(
    Pointer<Uint32> pFunction,
    Pointer<Pointer<COMObject>> ppShader,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(106)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Uint32> pFunction,
            Pointer<Pointer<COMObject>> ppShader,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Uint32> pFunction,
            Pointer<Pointer<COMObject>> ppShader,
          )>()(
        ptr.ref.lpVtbl,
        pFunction,
        ppShader,
      );

  int SetPixelShader(
    Pointer<COMObject> pShader,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(107)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<COMObject> pShader,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<COMObject> pShader,
          )>()(
        ptr.ref.lpVtbl,
        pShader,
      );

  int GetPixelShader(
    Pointer<Pointer<COMObject>> ppShader,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(108)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Pointer<COMObject>> ppShader,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Pointer<COMObject>> ppShader,
          )>()(
        ptr.ref.lpVtbl,
        ppShader,
      );

  int SetPixelShaderConstantF(
    int StartRegister,
    Pointer<Float> pConstantData,
    int Vector4fCount,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(109)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Uint32 StartRegister,
            Pointer<Float> pConstantData,
            Uint32 Vector4fCount,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int StartRegister,
            Pointer<Float> pConstantData,
            int Vector4fCount,
          )>()(
        ptr.ref.lpVtbl,
        StartRegister,
        pConstantData,
        Vector4fCount,
      );

  int GetPixelShaderConstantF(
    int StartRegister,
    Pointer<Float> pConstantData,
    int Vector4fCount,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(110)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Uint32 StartRegister,
            Pointer<Float> pConstantData,
            Uint32 Vector4fCount,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int StartRegister,
            Pointer<Float> pConstantData,
            int Vector4fCount,
          )>()(
        ptr.ref.lpVtbl,
        StartRegister,
        pConstantData,
        Vector4fCount,
      );

  int SetPixelShaderConstantI(
    int StartRegister,
    Pointer<Int32> pConstantData,
    int Vector4iCount,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(111)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Uint32 StartRegister,
            Pointer<Int32> pConstantData,
            Uint32 Vector4iCount,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int StartRegister,
            Pointer<Int32> pConstantData,
            int Vector4iCount,
          )>()(
        ptr.ref.lpVtbl,
        StartRegister,
        pConstantData,
        Vector4iCount,
      );

  int GetPixelShaderConstantI(
    int StartRegister,
    Pointer<Int32> pConstantData,
    int Vector4iCount,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(112)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Uint32 StartRegister,
            Pointer<Int32> pConstantData,
            Uint32 Vector4iCount,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int StartRegister,
            Pointer<Int32> pConstantData,
            int Vector4iCount,
          )>()(
        ptr.ref.lpVtbl,
        StartRegister,
        pConstantData,
        Vector4iCount,
      );

  int SetPixelShaderConstantB(
    int StartRegister,
    Pointer<Int32> pConstantData,
    int BoolCount,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(113)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Uint32 StartRegister,
            Pointer<Int32> pConstantData,
            Uint32 BoolCount,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int StartRegister,
            Pointer<Int32> pConstantData,
            int BoolCount,
          )>()(
        ptr.ref.lpVtbl,
        StartRegister,
        pConstantData,
        BoolCount,
      );

  int GetPixelShaderConstantB(
    int StartRegister,
    Pointer<Int32> pConstantData,
    int BoolCount,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(114)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Uint32 StartRegister,
            Pointer<Int32> pConstantData,
            Uint32 BoolCount,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int StartRegister,
            Pointer<Int32> pConstantData,
            int BoolCount,
          )>()(
        ptr.ref.lpVtbl,
        StartRegister,
        pConstantData,
        BoolCount,
      );

  int DrawRectPatch(
    int $Handle,
    Pointer<Float> pNumSegs,
    Pointer<D3DRECTPATCH_INFO> pRectPatchInfo,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(115)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Uint32 $Handle,
            Pointer<Float> pNumSegs,
            Pointer<D3DRECTPATCH_INFO> pRectPatchInfo,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int $Handle,
            Pointer<Float> pNumSegs,
            Pointer<D3DRECTPATCH_INFO> pRectPatchInfo,
          )>()(
        ptr.ref.lpVtbl,
        $Handle,
        pNumSegs,
        pRectPatchInfo,
      );

  int DrawTriPatch(
    int $Handle,
    Pointer<Float> pNumSegs,
    Pointer<D3DTRIPATCH_INFO> pTriPatchInfo,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(116)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Uint32 $Handle,
            Pointer<Float> pNumSegs,
            Pointer<D3DTRIPATCH_INFO> pTriPatchInfo,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int $Handle,
            Pointer<Float> pNumSegs,
            Pointer<D3DTRIPATCH_INFO> pTriPatchInfo,
          )>()(
        ptr.ref.lpVtbl,
        $Handle,
        pNumSegs,
        pTriPatchInfo,
      );

  int DeletePatch(
    int $Handle,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(117)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Uint32 $Handle,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int $Handle,
          )>()(
        ptr.ref.lpVtbl,
        $Handle,
      );

  int CreateQuery(
    int Type,
    Pointer<Pointer<COMObject>> ppQuery,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(118)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Int32 Type,
            Pointer<Pointer<COMObject>> ppQuery,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int Type,
            Pointer<Pointer<COMObject>> ppQuery,
          )>()(
        ptr.ref.lpVtbl,
        Type,
        ppQuery,
      );
}
