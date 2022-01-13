// IDirect3DSwapChain9.dart

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
import '../../graphics/gdi/structs.g.dart';
import '../../graphics/direct3d9/IDirect3DSurface9.dart';
import '../../graphics/direct3d9/structs.g.dart';
import '../../graphics/direct3d9/IDirect3DDevice9.dart';

/// @nodoc
const IID_IDirect3DSwapChain9 = '{794950F2-ADFC-458A-905E-10A10B0B503B}';

/// {@category Interface}
/// {@category com}
class IDirect3DSwapChain9 extends IUnknown {
  // vtable begins at 3, is 7 entries long.
  IDirect3DSwapChain9(Pointer<COMObject> ptr) : super(ptr);

  int Present(
    Pointer<RECT> pSourceRect,
    Pointer<RECT> pDestRect,
    int hDestWindowOverride,
    Pointer<RGNDATA> pDirtyRegion,
    int dwFlags,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(3)
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

  int GetFrontBufferData(
    Pointer<COMObject> pDestSurface,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(4)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<COMObject> pDestSurface,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<COMObject> pDestSurface,
          )>()(
        ptr.ref.lpVtbl,
        pDestSurface,
      );

  int GetBackBuffer(
    int iBackBuffer,
    int Type,
    Pointer<Pointer<COMObject>> ppBackBuffer,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(5)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Uint32 iBackBuffer,
            Uint32 Type,
            Pointer<Pointer<COMObject>> ppBackBuffer,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int iBackBuffer,
            int Type,
            Pointer<Pointer<COMObject>> ppBackBuffer,
          )>()(
        ptr.ref.lpVtbl,
        iBackBuffer,
        Type,
        ppBackBuffer,
      );

  int GetRasterStatus(
    Pointer<D3DRASTER_STATUS> pRasterStatus,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(6)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<D3DRASTER_STATUS> pRasterStatus,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<D3DRASTER_STATUS> pRasterStatus,
          )>()(
        ptr.ref.lpVtbl,
        pRasterStatus,
      );

  int GetDisplayMode(
    Pointer<D3DDISPLAYMODE> pMode,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(7)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<D3DDISPLAYMODE> pMode,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<D3DDISPLAYMODE> pMode,
          )>()(
        ptr.ref.lpVtbl,
        pMode,
      );

  int GetDevice(
    Pointer<Pointer<COMObject>> ppDevice,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(8)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Pointer<COMObject>> ppDevice,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Pointer<COMObject>> ppDevice,
          )>()(
        ptr.ref.lpVtbl,
        ppDevice,
      );

  int GetPresentParameters(
    Pointer<D3DPRESENT_PARAMETERS> pPresentationParameters,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(9)
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
}
