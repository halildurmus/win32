// IDDrawExclModeVideo.dart

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
import '../../graphics/directdraw/IDirectDraw.dart';
import '../../foundation/structs.g.dart';
import '../../graphics/directdraw/IDirectDrawSurface.dart';
import '../../media/directshow/IDDrawExclModeVideoCallback.dart';

/// @nodoc
const IID_IDDrawExclModeVideo = '{153ACC21-D83B-11D1-82BF-00A0C9696C8F}';

/// {@category Interface}
/// {@category com}
class IDDrawExclModeVideo extends IUnknown {
  // vtable begins at 3, is 7 entries long.
  IDDrawExclModeVideo(Pointer<COMObject> ptr) : super(ptr);

  int SetDDrawObject(
    Pointer<COMObject> pDDrawObject,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(3)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<COMObject> pDDrawObject,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<COMObject> pDDrawObject,
          )>()(
        ptr.ref.lpVtbl,
        pDDrawObject,
      );

  int GetDDrawObject(
    Pointer<Pointer<COMObject>> ppDDrawObject,
    Pointer<Int32> pbUsingExternal,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(4)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Pointer<COMObject>> ppDDrawObject,
            Pointer<Int32> pbUsingExternal,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Pointer<COMObject>> ppDDrawObject,
            Pointer<Int32> pbUsingExternal,
          )>()(
        ptr.ref.lpVtbl,
        ppDDrawObject,
        pbUsingExternal,
      );

  int SetDDrawSurface(
    Pointer<COMObject> pDDrawSurface,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(5)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<COMObject> pDDrawSurface,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<COMObject> pDDrawSurface,
          )>()(
        ptr.ref.lpVtbl,
        pDDrawSurface,
      );

  int GetDDrawSurface(
    Pointer<Pointer<COMObject>> ppDDrawSurface,
    Pointer<Int32> pbUsingExternal,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(6)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Pointer<COMObject>> ppDDrawSurface,
            Pointer<Int32> pbUsingExternal,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Pointer<COMObject>> ppDDrawSurface,
            Pointer<Int32> pbUsingExternal,
          )>()(
        ptr.ref.lpVtbl,
        ppDDrawSurface,
        pbUsingExternal,
      );

  int SetDrawParameters(
    Pointer<RECT> prcSource,
    Pointer<RECT> prcTarget,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(7)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<RECT> prcSource,
            Pointer<RECT> prcTarget,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<RECT> prcSource,
            Pointer<RECT> prcTarget,
          )>()(
        ptr.ref.lpVtbl,
        prcSource,
        prcTarget,
      );

  int GetNativeVideoProps(
    Pointer<Uint32> pdwVideoWidth,
    Pointer<Uint32> pdwVideoHeight,
    Pointer<Uint32> pdwPictAspectRatioX,
    Pointer<Uint32> pdwPictAspectRatioY,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(8)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Uint32> pdwVideoWidth,
            Pointer<Uint32> pdwVideoHeight,
            Pointer<Uint32> pdwPictAspectRatioX,
            Pointer<Uint32> pdwPictAspectRatioY,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Uint32> pdwVideoWidth,
            Pointer<Uint32> pdwVideoHeight,
            Pointer<Uint32> pdwPictAspectRatioX,
            Pointer<Uint32> pdwPictAspectRatioY,
          )>()(
        ptr.ref.lpVtbl,
        pdwVideoWidth,
        pdwVideoHeight,
        pdwPictAspectRatioX,
        pdwPictAspectRatioY,
      );

  int SetCallbackInterface(
    Pointer<COMObject> pCallback,
    int dwFlags,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(9)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<COMObject> pCallback,
            Uint32 dwFlags,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<COMObject> pCallback,
            int dwFlags,
          )>()(
        ptr.ref.lpVtbl,
        pCallback,
        dwFlags,
      );
}
