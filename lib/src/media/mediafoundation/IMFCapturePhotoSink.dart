// IMFCapturePhotoSink.dart

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
import '../../media/mediafoundation/IMFCaptureEngineOnSampleCallback.dart';
import '../../media/mediafoundation/IMFByteStream.dart';

/// @nodoc
const IID_IMFCapturePhotoSink = '{D2D43CC8-48BB-4AA7-95DB-10C06977E777}';

/// {@category Interface}
/// {@category com}
class IMFCapturePhotoSink extends IMFCaptureSink {
  // vtable begins at 8, is 3 entries long.
  IMFCapturePhotoSink(Pointer<COMObject> ptr) : super(ptr);

  int SetOutputFileName(
    Pointer<Utf16> fileName,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(8)
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
    Pointer<COMObject> pCallback,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(9)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<COMObject> pCallback,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<COMObject> pCallback,
          )>()(
        ptr.ref.lpVtbl,
        pCallback,
      );

  int SetOutputByteStream(
    Pointer<COMObject> pByteStream,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(10)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<COMObject> pByteStream,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<COMObject> pByteStream,
          )>()(
        ptr.ref.lpVtbl,
        pByteStream,
      );
}
