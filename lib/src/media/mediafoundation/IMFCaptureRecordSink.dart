// IMFCaptureRecordSink.dart

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
import '../../media/mediafoundation/IMFByteStream.dart';
import '../../foundation/structs.g.dart';
import '../../media/mediafoundation/IMFCaptureEngineOnSampleCallback.dart';
import '../../media/mediafoundation/IMFMediaSink.dart';

/// @nodoc
const IID_IMFCaptureRecordSink = '{3323B55A-F92A-4FE2-8EDC-E9BFC0634D77}';

/// {@category Interface}
/// {@category com}
class IMFCaptureRecordSink extends IMFCaptureSink {
  // vtable begins at 8, is 6 entries long.
  IMFCaptureRecordSink(Pointer<COMObject> ptr) : super(ptr);

  int SetOutputByteStream(
    Pointer<COMObject> pByteStream,
    Pointer<GUID> guidContainerType,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(8)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<COMObject> pByteStream,
            Pointer<GUID> guidContainerType,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<COMObject> pByteStream,
            Pointer<GUID> guidContainerType,
          )>()(
        ptr.ref.lpVtbl,
        pByteStream,
        guidContainerType,
      );

  int SetOutputFileName(
    Pointer<Utf16> fileName,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(9)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Utf16> fileName,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Utf16> fileName,
          )>()(
        ptr.ref.lpVtbl,
        fileName,
      );

  int SetSampleCallback(
    int dwStreamSinkIndex,
    Pointer<COMObject> pCallback,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(10)
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

  int SetCustomSink(
    Pointer<COMObject> pMediaSink,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(11)
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

  int GetRotation(
    int dwStreamIndex,
    Pointer<Uint32> pdwRotationValue,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(12)
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
          .elementAt(13)
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
}
