// IDirectDrawSurface3.dart

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
import '../../graphics/directdraw/IDirectDrawSurface3.dart';
import '../../foundation/structs.g.dart';
import '../../graphics/directdraw/structs.g.dart';
import '../../graphics/directdraw/callbacks.g.dart';
import '../../graphics/directdraw/IDirectDrawClipper.dart';
import '../../graphics/gdi/structs.g.dart';
import '../../graphics/directdraw/IDirectDrawPalette.dart';
import '../../graphics/directdraw/IDirectDraw.dart';

/// @nodoc
const IID_IDirectDrawSurface3 = '{DA044E00-69B2-11D0-A1D5-00AA00B8DFBB}';

/// {@category Interface}
/// {@category com}
class IDirectDrawSurface3 extends IUnknown {
  // vtable begins at 3, is 37 entries long.
  IDirectDrawSurface3(Pointer<COMObject> ptr) : super(ptr);

  int AddAttachedSurface(
    Pointer<COMObject> param0,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(3)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<COMObject> param0,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<COMObject> param0,
          )>()(
        ptr.ref.lpVtbl,
        param0,
      );

  int AddOverlayDirtyRect(
    Pointer<RECT> param0,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(4)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<RECT> param0,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<RECT> param0,
          )>()(
        ptr.ref.lpVtbl,
        param0,
      );

  int Blt(
    Pointer<RECT> param0,
    Pointer<COMObject> param1,
    Pointer<RECT> param2,
    int param3,
    Pointer<DDBLTFX> param4,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(5)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<RECT> param0,
            Pointer<COMObject> param1,
            Pointer<RECT> param2,
            Uint32 param3,
            Pointer<DDBLTFX> param4,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<RECT> param0,
            Pointer<COMObject> param1,
            Pointer<RECT> param2,
            int param3,
            Pointer<DDBLTFX> param4,
          )>()(
        ptr.ref.lpVtbl,
        param0,
        param1,
        param2,
        param3,
        param4,
      );

  int BltBatch(
    Pointer<DDBLTBATCH> param0,
    int param1,
    int param2,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(6)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<DDBLTBATCH> param0,
            Uint32 param1,
            Uint32 param2,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<DDBLTBATCH> param0,
            int param1,
            int param2,
          )>()(
        ptr.ref.lpVtbl,
        param0,
        param1,
        param2,
      );

  int BltFast(
    int param0,
    int param1,
    Pointer<COMObject> param2,
    Pointer<RECT> param3,
    int param4,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(7)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Uint32 param0,
            Uint32 param1,
            Pointer<COMObject> param2,
            Pointer<RECT> param3,
            Uint32 param4,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int param0,
            int param1,
            Pointer<COMObject> param2,
            Pointer<RECT> param3,
            int param4,
          )>()(
        ptr.ref.lpVtbl,
        param0,
        param1,
        param2,
        param3,
        param4,
      );

  int DeleteAttachedSurface(
    int param0,
    Pointer<COMObject> param1,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(8)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Uint32 param0,
            Pointer<COMObject> param1,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int param0,
            Pointer<COMObject> param1,
          )>()(
        ptr.ref.lpVtbl,
        param0,
        param1,
      );

  int EnumAttachedSurfaces(
    Pointer param0,
    Pointer<NativeFunction<LPDDENUMSURFACESCALLBACK>> param1,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(9)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer param0,
            Pointer<NativeFunction<LPDDENUMSURFACESCALLBACK>> param1,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer param0,
            Pointer<NativeFunction<LPDDENUMSURFACESCALLBACK>> param1,
          )>()(
        ptr.ref.lpVtbl,
        param0,
        param1,
      );

  int EnumOverlayZOrders(
    int param0,
    Pointer param1,
    Pointer<NativeFunction<LPDDENUMSURFACESCALLBACK>> param2,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(10)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Uint32 param0,
            Pointer param1,
            Pointer<NativeFunction<LPDDENUMSURFACESCALLBACK>> param2,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int param0,
            Pointer param1,
            Pointer<NativeFunction<LPDDENUMSURFACESCALLBACK>> param2,
          )>()(
        ptr.ref.lpVtbl,
        param0,
        param1,
        param2,
      );

  int Flip(
    Pointer<COMObject> param0,
    int param1,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(11)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<COMObject> param0,
            Uint32 param1,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<COMObject> param0,
            int param1,
          )>()(
        ptr.ref.lpVtbl,
        param0,
        param1,
      );

  int GetAttachedSurface(
    Pointer<DDSCAPS> param0,
    Pointer<Pointer<COMObject>> param1,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(12)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<DDSCAPS> param0,
            Pointer<Pointer<COMObject>> param1,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<DDSCAPS> param0,
            Pointer<Pointer<COMObject>> param1,
          )>()(
        ptr.ref.lpVtbl,
        param0,
        param1,
      );

  int GetBltStatus(
    int param0,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(13)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Uint32 param0,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int param0,
          )>()(
        ptr.ref.lpVtbl,
        param0,
      );

  int GetCaps(
    Pointer<DDSCAPS> param0,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(14)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<DDSCAPS> param0,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<DDSCAPS> param0,
          )>()(
        ptr.ref.lpVtbl,
        param0,
      );

  int GetClipper(
    Pointer<Pointer<COMObject>> param0,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(15)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Pointer<COMObject>> param0,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Pointer<COMObject>> param0,
          )>()(
        ptr.ref.lpVtbl,
        param0,
      );

  int GetColorKey(
    int param0,
    Pointer<DDCOLORKEY> param1,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(16)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Uint32 param0,
            Pointer<DDCOLORKEY> param1,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int param0,
            Pointer<DDCOLORKEY> param1,
          )>()(
        ptr.ref.lpVtbl,
        param0,
        param1,
      );

  int GetDC(
    Pointer<IntPtr> param0,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(17)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<IntPtr> param0,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<IntPtr> param0,
          )>()(
        ptr.ref.lpVtbl,
        param0,
      );

  int GetFlipStatus(
    int param0,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(18)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Uint32 param0,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int param0,
          )>()(
        ptr.ref.lpVtbl,
        param0,
      );

  int GetOverlayPosition(
    Pointer<Int32> param0,
    Pointer<Int32> param1,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(19)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Int32> param0,
            Pointer<Int32> param1,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Int32> param0,
            Pointer<Int32> param1,
          )>()(
        ptr.ref.lpVtbl,
        param0,
        param1,
      );

  int GetPalette(
    Pointer<Pointer<COMObject>> param0,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(20)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Pointer<COMObject>> param0,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Pointer<COMObject>> param0,
          )>()(
        ptr.ref.lpVtbl,
        param0,
      );

  int GetPixelFormat(
    Pointer<DDPIXELFORMAT> param0,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(21)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<DDPIXELFORMAT> param0,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<DDPIXELFORMAT> param0,
          )>()(
        ptr.ref.lpVtbl,
        param0,
      );

  int GetSurfaceDesc(
    Pointer<DDSURFACEDESC> param0,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(22)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<DDSURFACEDESC> param0,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<DDSURFACEDESC> param0,
          )>()(
        ptr.ref.lpVtbl,
        param0,
      );

  int Initialize(
    Pointer<COMObject> param0,
    Pointer<DDSURFACEDESC> param1,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(23)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<COMObject> param0,
            Pointer<DDSURFACEDESC> param1,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<COMObject> param0,
            Pointer<DDSURFACEDESC> param1,
          )>()(
        ptr.ref.lpVtbl,
        param0,
        param1,
      );

  int IsLost() => ptr.ref.lpVtbl.value
          .elementAt(24)
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

  int Lock(
    Pointer<RECT> param0,
    Pointer<DDSURFACEDESC> param1,
    int param2,
    int param3,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(25)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<RECT> param0,
            Pointer<DDSURFACEDESC> param1,
            Uint32 param2,
            IntPtr param3,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<RECT> param0,
            Pointer<DDSURFACEDESC> param1,
            int param2,
            int param3,
          )>()(
        ptr.ref.lpVtbl,
        param0,
        param1,
        param2,
        param3,
      );

  int ReleaseDC(
    int param0,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(26)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            IntPtr param0,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int param0,
          )>()(
        ptr.ref.lpVtbl,
        param0,
      );

  int Restore() => ptr.ref.lpVtbl.value
          .elementAt(27)
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

  int SetClipper(
    Pointer<COMObject> param0,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(28)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<COMObject> param0,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<COMObject> param0,
          )>()(
        ptr.ref.lpVtbl,
        param0,
      );

  int SetColorKey(
    int param0,
    Pointer<DDCOLORKEY> param1,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(29)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Uint32 param0,
            Pointer<DDCOLORKEY> param1,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int param0,
            Pointer<DDCOLORKEY> param1,
          )>()(
        ptr.ref.lpVtbl,
        param0,
        param1,
      );

  int SetOverlayPosition(
    int param0,
    int param1,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(30)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Int32 param0,
            Int32 param1,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int param0,
            int param1,
          )>()(
        ptr.ref.lpVtbl,
        param0,
        param1,
      );

  int SetPalette(
    Pointer<COMObject> param0,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(31)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<COMObject> param0,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<COMObject> param0,
          )>()(
        ptr.ref.lpVtbl,
        param0,
      );

  int Unlock(
    Pointer param0,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(32)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer param0,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer param0,
          )>()(
        ptr.ref.lpVtbl,
        param0,
      );

  int UpdateOverlay(
    Pointer<RECT> param0,
    Pointer<COMObject> param1,
    Pointer<RECT> param2,
    int param3,
    Pointer<DDOVERLAYFX> param4,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(33)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<RECT> param0,
            Pointer<COMObject> param1,
            Pointer<RECT> param2,
            Uint32 param3,
            Pointer<DDOVERLAYFX> param4,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<RECT> param0,
            Pointer<COMObject> param1,
            Pointer<RECT> param2,
            int param3,
            Pointer<DDOVERLAYFX> param4,
          )>()(
        ptr.ref.lpVtbl,
        param0,
        param1,
        param2,
        param3,
        param4,
      );

  int UpdateOverlayDisplay(
    int param0,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(34)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Uint32 param0,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int param0,
          )>()(
        ptr.ref.lpVtbl,
        param0,
      );

  int UpdateOverlayZOrder(
    int param0,
    Pointer<COMObject> param1,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(35)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Uint32 param0,
            Pointer<COMObject> param1,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int param0,
            Pointer<COMObject> param1,
          )>()(
        ptr.ref.lpVtbl,
        param0,
        param1,
      );

  int GetDDInterface(
    Pointer<Pointer> param0,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(36)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Pointer> param0,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Pointer> param0,
          )>()(
        ptr.ref.lpVtbl,
        param0,
      );

  int PageLock(
    int param0,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(37)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Uint32 param0,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int param0,
          )>()(
        ptr.ref.lpVtbl,
        param0,
      );

  int PageUnlock(
    int param0,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(38)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Uint32 param0,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int param0,
          )>()(
        ptr.ref.lpVtbl,
        param0,
      );

  int SetSurfaceDesc(
    Pointer<DDSURFACEDESC> param0,
    int param1,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(39)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<DDSURFACEDESC> param0,
            Uint32 param1,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<DDSURFACEDESC> param0,
            int param1,
          )>()(
        ptr.ref.lpVtbl,
        param0,
        param1,
      );
}
