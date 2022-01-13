// IDirectDrawMediaStream.dart

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

import '../../media/directshow/IMediaStream.dart';
import '../../graphics/directdraw/structs.g.dart';
import '../../graphics/directdraw/IDirectDrawPalette.dart';
import '../../foundation/structs.g.dart';
import '../../graphics/directdraw/IDirectDraw.dart';
import '../../graphics/directdraw/IDirectDrawSurface.dart';
import '../../media/directshow/IDirectDrawStreamSample.dart';

/// @nodoc
const IID_IDirectDrawMediaStream = '{F4104FCE-9A70-11D0-8FDE-00C04FD9189D}';

/// {@category Interface}
/// {@category com}
class IDirectDrawMediaStream extends IMediaStream {
  // vtable begins at 9, is 6 entries long.
  IDirectDrawMediaStream(Pointer<COMObject> ptr) : super(ptr);

  int GetFormat(
    Pointer<DDSURFACEDESC> pDDSDCurrent,
    Pointer<Pointer<COMObject>> ppDirectDrawPalette,
    Pointer<DDSURFACEDESC> pDDSDDesired,
    Pointer<Uint32> pdwFlags,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(9)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<DDSURFACEDESC> pDDSDCurrent,
            Pointer<Pointer<COMObject>> ppDirectDrawPalette,
            Pointer<DDSURFACEDESC> pDDSDDesired,
            Pointer<Uint32> pdwFlags,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<DDSURFACEDESC> pDDSDCurrent,
            Pointer<Pointer<COMObject>> ppDirectDrawPalette,
            Pointer<DDSURFACEDESC> pDDSDDesired,
            Pointer<Uint32> pdwFlags,
          )>()(
        ptr.ref.lpVtbl,
        pDDSDCurrent,
        ppDirectDrawPalette,
        pDDSDDesired,
        pdwFlags,
      );

  int SetFormat(
    Pointer<DDSURFACEDESC> pDDSurfaceDesc,
    Pointer<COMObject> pDirectDrawPalette,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(10)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<DDSURFACEDESC> pDDSurfaceDesc,
            Pointer<COMObject> pDirectDrawPalette,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<DDSURFACEDESC> pDDSurfaceDesc,
            Pointer<COMObject> pDirectDrawPalette,
          )>()(
        ptr.ref.lpVtbl,
        pDDSurfaceDesc,
        pDirectDrawPalette,
      );

  int GetDirectDraw(
    Pointer<Pointer<COMObject>> ppDirectDraw,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(11)
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

  int SetDirectDraw(
    Pointer<COMObject> pDirectDraw,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(12)
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

  int CreateSample(
    Pointer<COMObject> pSurface,
    Pointer<RECT> pRect,
    int dwFlags,
    Pointer<Pointer<COMObject>> ppSample,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(13)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<COMObject> pSurface,
            Pointer<RECT> pRect,
            Uint32 dwFlags,
            Pointer<Pointer<COMObject>> ppSample,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<COMObject> pSurface,
            Pointer<RECT> pRect,
            int dwFlags,
            Pointer<Pointer<COMObject>> ppSample,
          )>()(
        ptr.ref.lpVtbl,
        pSurface,
        pRect,
        dwFlags,
        ppSample,
      );

  int GetTimePerFrame(
    Pointer<Int64> pFrameTime,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(14)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Int64> pFrameTime,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Int64> pFrameTime,
          )>()(
        ptr.ref.lpVtbl,
        pFrameTime,
      );
}
