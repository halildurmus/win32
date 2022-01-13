// IMFSampleGrabberSinkCallback.dart

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

import '../../media/mediafoundation/IMFClockStateSink.dart';
import '../../media/mediafoundation/IMFPresentationClock.dart';
import '../../foundation/structs.g.dart';

/// @nodoc
const IID_IMFSampleGrabberSinkCallback =
    '{8C7B80BF-EE42-4B59-B1DF-55668E1BDCA8}';

/// {@category Interface}
/// {@category com}
class IMFSampleGrabberSinkCallback extends IMFClockStateSink {
  // vtable begins at 8, is 3 entries long.
  IMFSampleGrabberSinkCallback(Pointer<COMObject> ptr) : super(ptr);

  int OnSetPresentationClock(
    Pointer<COMObject> pPresentationClock,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(8)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<COMObject> pPresentationClock,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<COMObject> pPresentationClock,
          )>()(
        ptr.ref.lpVtbl,
        pPresentationClock,
      );

  int OnProcessSample(
    Pointer<GUID> guidMajorMediaType,
    int dwSampleFlags,
    int llSampleTime,
    int llSampleDuration,
    Pointer<Uint8> pSampleBuffer,
    int dwSampleSize,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(9)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<GUID> guidMajorMediaType,
            Uint32 dwSampleFlags,
            Int64 llSampleTime,
            Int64 llSampleDuration,
            Pointer<Uint8> pSampleBuffer,
            Uint32 dwSampleSize,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<GUID> guidMajorMediaType,
            int dwSampleFlags,
            int llSampleTime,
            int llSampleDuration,
            Pointer<Uint8> pSampleBuffer,
            int dwSampleSize,
          )>()(
        ptr.ref.lpVtbl,
        guidMajorMediaType,
        dwSampleFlags,
        llSampleTime,
        llSampleDuration,
        pSampleBuffer,
        dwSampleSize,
      );

  int OnShutdown() => ptr.ref.lpVtbl.value
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
