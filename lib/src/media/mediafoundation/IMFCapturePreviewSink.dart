// IMFCapturePreviewSink.dart

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

import '../../media/mediafoundation/IMFCaptureSink.dart';
import '../../foundation/structs.g.dart';
import '../../specialTypes.dart';
import '../../media/mediafoundation/structs.g.dart';
import '../../media/mediafoundation/IMFCaptureEngineOnSampleCallback.dart';
import '../../media/mediafoundation/IMFMediaSink.dart';

/// @nodoc
const IID_IMFCapturePreviewSink = '{77346CFD-5B49-4D73-ACE0-5B52A859F2E0}';

/// {@category Interface}
/// {@category com}
class IMFCapturePreviewSink extends IMFCaptureSink {
  // vtable begins at 8, is 9 entries long.
  IMFCapturePreviewSink(Pointer<COMObject> ptr) : super(ptr);

  int SetRenderHandle(
    int handle,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(8)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            IntPtr handle,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int handle,
          )>()(
        ptr.ref.lpVtbl,
        handle,
      );

  int SetRenderSurface(
    Pointer<COMObject> pSurface,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(9)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<COMObject> pSurface,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<COMObject> pSurface,
          )>()(
        ptr.ref.lpVtbl,
        pSurface,
      );

  int UpdateVideo(
    Pointer<MFVideoNormalizedRect> pSrc,
    Pointer<RECT> pDst,
    Pointer<Uint32> pBorderClr,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(10)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<MFVideoNormalizedRect> pSrc,
            Pointer<RECT> pDst,
            Pointer<Uint32> pBorderClr,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<MFVideoNormalizedRect> pSrc,
            Pointer<RECT> pDst,
            Pointer<Uint32> pBorderClr,
          )>()(
        ptr.ref.lpVtbl,
        pSrc,
        pDst,
        pBorderClr,
      );

  int SetSampleCallback(
    int dwStreamSinkIndex,
    Pointer<COMObject> pCallback,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(11)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Uint32 dwStreamSinkIndex,
            Pointer<COMObject> pCallback,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int dwStreamSinkIndex,
            Pointer<COMObject> pCallback,
          )>()(
        ptr.ref.lpVtbl,
        dwStreamSinkIndex,
        pCallback,
      );

  int GetMirrorState(
    Pointer<Int32> pfMirrorState,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(12)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Int32> pfMirrorState,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Int32> pfMirrorState,
          )>()(
        ptr.ref.lpVtbl,
        pfMirrorState,
      );

  int SetMirrorState(
    int fMirrorState,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(13)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Int32 fMirrorState,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int fMirrorState,
          )>()(
        ptr.ref.lpVtbl,
        fMirrorState,
      );

  int GetRotation(
    int dwStreamIndex,
    Pointer<Uint32> pdwRotationValue,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(14)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Uint32 dwStreamIndex,
            Pointer<Uint32> pdwRotationValue,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int dwStreamIndex,
            Pointer<Uint32> pdwRotationValue,
          )>()(
        ptr.ref.lpVtbl,
        dwStreamIndex,
        pdwRotationValue,
      );

  int SetRotation(
    int dwStreamIndex,
    int dwRotationValue,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(15)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Uint32 dwStreamIndex,
            Uint32 dwRotationValue,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int dwStreamIndex,
            int dwRotationValue,
          )>()(
        ptr.ref.lpVtbl,
        dwStreamIndex,
        dwRotationValue,
      );

  int SetCustomSink(
    Pointer<COMObject> pMediaSink,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(16)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<COMObject> pMediaSink,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<COMObject> pMediaSink,
          )>()(
        ptr.ref.lpVtbl,
        pMediaSink,
      );
}
