// IMFMediaSourceExtension.dart

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
import '../../media/mediafoundation/IMFSourceBufferList.dart';
import '../../media/mediafoundation/structs.g.dart';
import '../../foundation/structs.g.dart';
import '../../media/mediafoundation/IMFSourceBufferNotify.dart';
import '../../media/mediafoundation/IMFSourceBuffer.dart';

/// @nodoc
const IID_IMFMediaSourceExtension = '{E467B94E-A713-4562-A802-816A42E9008A}';

/// {@category Interface}
/// {@category com}
class IMFMediaSourceExtension extends IUnknown {
  // vtable begins at 3, is 10 entries long.
  IMFMediaSourceExtension(Pointer<COMObject> ptr) : super(ptr);

  Pointer<COMObject> GetSourceBuffers() => ptr.ref.lpVtbl.value
          .elementAt(3)
          .cast<
              Pointer<
                  NativeFunction<
                      Pointer<COMObject> Function(
            Pointer,
          )>>>()
          .value
          .asFunction<
              Pointer<COMObject> Function(
            Pointer,
          )>()(
        ptr.ref.lpVtbl,
      );

  Pointer<COMObject> GetActiveSourceBuffers() => ptr.ref.lpVtbl.value
          .elementAt(4)
          .cast<
              Pointer<
                  NativeFunction<
                      Pointer<COMObject> Function(
            Pointer,
          )>>>()
          .value
          .asFunction<
              Pointer<COMObject> Function(
            Pointer,
          )>()(
        ptr.ref.lpVtbl,
      );

  int GetReadyState() => ptr.ref.lpVtbl.value
          .elementAt(5)
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

  double GetDuration() => ptr.ref.lpVtbl.value
          .elementAt(6)
          .cast<
              Pointer<
                  NativeFunction<
                      Double Function(
            Pointer,
          )>>>()
          .value
          .asFunction<
              double Function(
            Pointer,
          )>()(
        ptr.ref.lpVtbl,
      );

  int SetDuration(
    double duration,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(7)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Double duration,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            double duration,
          )>()(
        ptr.ref.lpVtbl,
        duration,
      );

  int AddSourceBuffer(
    Pointer<Utf16> type,
    Pointer<COMObject> pNotify,
    Pointer<Pointer<COMObject>> ppSourceBuffer,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(8)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Utf16> type,
            Pointer<COMObject> pNotify,
            Pointer<Pointer<COMObject>> ppSourceBuffer,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Utf16> type,
            Pointer<COMObject> pNotify,
            Pointer<Pointer<COMObject>> ppSourceBuffer,
          )>()(
        ptr.ref.lpVtbl,
        type,
        pNotify,
        ppSourceBuffer,
      );

  int RemoveSourceBuffer(
    Pointer<COMObject> pSourceBuffer,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(9)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<COMObject> pSourceBuffer,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<COMObject> pSourceBuffer,
          )>()(
        ptr.ref.lpVtbl,
        pSourceBuffer,
      );

  int SetEndOfStream(
    int error,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(10)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Int32 error,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int error,
          )>()(
        ptr.ref.lpVtbl,
        error,
      );

  int IsTypeSupported(
    Pointer<Utf16> type,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(11)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Utf16> type,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Utf16> type,
          )>()(
        ptr.ref.lpVtbl,
        type,
      );

  Pointer<COMObject> GetSourceBuffer(
    int dwStreamIndex,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(12)
          .cast<
              Pointer<
                  NativeFunction<
                      Pointer<COMObject> Function(
            Pointer,
            Uint32 dwStreamIndex,
          )>>>()
          .value
          .asFunction<
              Pointer<COMObject> Function(
            Pointer,
            int dwStreamIndex,
          )>()(
        ptr.ref.lpVtbl,
        dwStreamIndex,
      );
}
