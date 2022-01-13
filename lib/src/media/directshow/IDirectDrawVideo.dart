// IDirectDrawVideo.dart

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
import '../../graphics/directdraw/structs.g.dart';
import '../../graphics/directdraw/IDirectDraw.dart';

/// @nodoc
const IID_IDirectDrawVideo = 'null';

/// {@category Interface}
/// {@category com}
class IDirectDrawVideo extends IUnknown {
  // vtable begins at 3, is 16 entries long.
  IDirectDrawVideo(Pointer<COMObject> ptr) : super(ptr);

  int GetSwitches(
    Pointer<Uint32> pSwitches,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(3)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Uint32> pSwitches,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Uint32> pSwitches,
          )>()(
        ptr.ref.lpVtbl,
        pSwitches,
      );

  int SetSwitches(
    int Switches,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(4)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Uint32 Switches,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int Switches,
          )>()(
        ptr.ref.lpVtbl,
        Switches,
      );

  int GetCaps(
    Pointer<DDCAPS_DX7> pCaps,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(5)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<DDCAPS_DX7> pCaps,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<DDCAPS_DX7> pCaps,
          )>()(
        ptr.ref.lpVtbl,
        pCaps,
      );

  int GetEmulatedCaps(
    Pointer<DDCAPS_DX7> pCaps,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(6)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<DDCAPS_DX7> pCaps,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<DDCAPS_DX7> pCaps,
          )>()(
        ptr.ref.lpVtbl,
        pCaps,
      );

  int GetSurfaceDesc(
    Pointer<DDSURFACEDESC> pSurfaceDesc,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(7)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<DDSURFACEDESC> pSurfaceDesc,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<DDSURFACEDESC> pSurfaceDesc,
          )>()(
        ptr.ref.lpVtbl,
        pSurfaceDesc,
      );

  int GetFourCCCodes(
    Pointer<Uint32> pCount,
    Pointer<Uint32> pCodes,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(8)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Uint32> pCount,
            Pointer<Uint32> pCodes,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Uint32> pCount,
            Pointer<Uint32> pCodes,
          )>()(
        ptr.ref.lpVtbl,
        pCount,
        pCodes,
      );

  int SetDirectDraw(
    Pointer<COMObject> pDirectDraw,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(9)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<COMObject> pDirectDraw,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<COMObject> pDirectDraw,
          )>()(
        ptr.ref.lpVtbl,
        pDirectDraw,
      );

  int GetDirectDraw(
    Pointer<Pointer<COMObject>> ppDirectDraw,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(10)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Pointer<COMObject>> ppDirectDraw,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Pointer<COMObject>> ppDirectDraw,
          )>()(
        ptr.ref.lpVtbl,
        ppDirectDraw,
      );

  int GetSurfaceType(
    Pointer<Uint32> pSurfaceType,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(11)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Uint32> pSurfaceType,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Uint32> pSurfaceType,
          )>()(
        ptr.ref.lpVtbl,
        pSurfaceType,
      );

  int SetDefault() => ptr.ref.lpVtbl.value
          .elementAt(12)
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

  int UseScanLine(
    int UseScanLine,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(13)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Int32 UseScanLine,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int UseScanLine,
          )>()(
        ptr.ref.lpVtbl,
        UseScanLine,
      );

  int CanUseScanLine(
    Pointer<Int32> UseScanLine,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(14)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Int32> UseScanLine,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Int32> UseScanLine,
          )>()(
        ptr.ref.lpVtbl,
        UseScanLine,
      );

  int UseOverlayStretch(
    int UseOverlayStretch,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(15)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Int32 UseOverlayStretch,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int UseOverlayStretch,
          )>()(
        ptr.ref.lpVtbl,
        UseOverlayStretch,
      );

  int CanUseOverlayStretch(
    Pointer<Int32> UseOverlayStretch,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(16)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Int32> UseOverlayStretch,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Int32> UseOverlayStretch,
          )>()(
        ptr.ref.lpVtbl,
        UseOverlayStretch,
      );

  int UseWhenFullScreen(
    int UseWhenFullScreen,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(17)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Int32 UseWhenFullScreen,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int UseWhenFullScreen,
          )>()(
        ptr.ref.lpVtbl,
        UseWhenFullScreen,
      );

  int WillUseFullScreen(
    Pointer<Int32> UseWhenFullScreen,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(18)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Int32> UseWhenFullScreen,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Int32> UseWhenFullScreen,
          )>()(
        ptr.ref.lpVtbl,
        UseWhenFullScreen,
      );
}
