// IMixerOCX.dart

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
import '../../media/directshow/IMixerOCXNotify.dart';

/// @nodoc
const IID_IMixerOCX = '{81A3BD32-DEE1-11D1-8508-00A0C91F9CA0}';

/// {@category Interface}
/// {@category com}
class IMixerOCX extends IUnknown {
  // vtable begins at 3, is 8 entries long.
  IMixerOCX(Pointer<COMObject> ptr) : super(ptr);

  int OnDisplayChange(
    int ulBitsPerPixel,
    int ulScreenWidth,
    int ulScreenHeight,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(3)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Uint32 ulBitsPerPixel,
            Uint32 ulScreenWidth,
            Uint32 ulScreenHeight,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int ulBitsPerPixel,
            int ulScreenWidth,
            int ulScreenHeight,
          )>()(
        ptr.ref.lpVtbl,
        ulBitsPerPixel,
        ulScreenWidth,
        ulScreenHeight,
      );

  int GetAspectRatio(
    Pointer<Uint32> pdwPictAspectRatioX,
    Pointer<Uint32> pdwPictAspectRatioY,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(4)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Uint32> pdwPictAspectRatioX,
            Pointer<Uint32> pdwPictAspectRatioY,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Uint32> pdwPictAspectRatioX,
            Pointer<Uint32> pdwPictAspectRatioY,
          )>()(
        ptr.ref.lpVtbl,
        pdwPictAspectRatioX,
        pdwPictAspectRatioY,
      );

  int GetVideoSize(
    Pointer<Uint32> pdwVideoWidth,
    Pointer<Uint32> pdwVideoHeight,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(5)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Uint32> pdwVideoWidth,
            Pointer<Uint32> pdwVideoHeight,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Uint32> pdwVideoWidth,
            Pointer<Uint32> pdwVideoHeight,
          )>()(
        ptr.ref.lpVtbl,
        pdwVideoWidth,
        pdwVideoHeight,
      );

  int GetStatus(
    Pointer<Pointer<Uint32>> pdwStatus,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(6)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Pointer<Uint32>> pdwStatus,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Pointer<Uint32>> pdwStatus,
          )>()(
        ptr.ref.lpVtbl,
        pdwStatus,
      );

  int OnDraw(
    int hdcDraw,
    Pointer<RECT> prcDraw,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(7)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            IntPtr hdcDraw,
            Pointer<RECT> prcDraw,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int hdcDraw,
            Pointer<RECT> prcDraw,
          )>()(
        ptr.ref.lpVtbl,
        hdcDraw,
        prcDraw,
      );

  int SetDrawRegion(
    Pointer<POINT> lpptTopLeftSC,
    Pointer<RECT> prcDrawCC,
    Pointer<RECT> lprcClip,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(8)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<POINT> lpptTopLeftSC,
            Pointer<RECT> prcDrawCC,
            Pointer<RECT> lprcClip,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<POINT> lpptTopLeftSC,
            Pointer<RECT> prcDrawCC,
            Pointer<RECT> lprcClip,
          )>()(
        ptr.ref.lpVtbl,
        lpptTopLeftSC,
        prcDrawCC,
        lprcClip,
      );

  int Advise(
    Pointer<COMObject> pmdns,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(9)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<COMObject> pmdns,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<COMObject> pmdns,
          )>()(
        ptr.ref.lpVtbl,
        pmdns,
      );

  int UnAdvise() => ptr.ref.lpVtbl.value
          .elementAt(10)
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
}
