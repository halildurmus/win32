// IMFSourceBuffer.dart

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
import '../../media/mediafoundation/IMFMediaTimeRange.dart';
import '../../media/mediafoundation/IMFByteStream.dart';

/// @nodoc
const IID_IMFSourceBuffer = '{E2CD3A4B-AF25-4D3D-9110-DA0E6F8EE877}';

/// {@category Interface}
/// {@category com}
class IMFSourceBuffer extends IUnknown {
  // vtable begins at 3, is 12 entries long.
  IMFSourceBuffer(Pointer<COMObject> ptr) : super(ptr);

  int GetUpdating() => ptr.ref.lpVtbl.value
          .elementAt(3)
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

  int GetBuffered(
    Pointer<Pointer<COMObject>> ppBuffered,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(4)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Pointer<COMObject>> ppBuffered,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Pointer<COMObject>> ppBuffered,
          )>()(
        ptr.ref.lpVtbl,
        ppBuffered,
      );

  double GetTimeStampOffset() => ptr.ref.lpVtbl.value
          .elementAt(5)
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

  int SetTimeStampOffset(
    double offset,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(6)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Double offset,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            double offset,
          )>()(
        ptr.ref.lpVtbl,
        offset,
      );

  double GetAppendWindowStart() => ptr.ref.lpVtbl.value
          .elementAt(7)
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

  int SetAppendWindowStart(
    double time,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(8)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Double time,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            double time,
          )>()(
        ptr.ref.lpVtbl,
        time,
      );

  double GetAppendWindowEnd() => ptr.ref.lpVtbl.value
          .elementAt(9)
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

  int SetAppendWindowEnd(
    double time,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(10)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Double time,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            double time,
          )>()(
        ptr.ref.lpVtbl,
        time,
      );

  int Append(
    Pointer<Uint8> pData,
    int len,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(11)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Uint8> pData,
            Uint32 len,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Uint8> pData,
            int len,
          )>()(
        ptr.ref.lpVtbl,
        pData,
        len,
      );

  int AppendByteStream(
    Pointer<COMObject> pStream,
    Pointer<Uint64> pMaxLen,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(12)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<COMObject> pStream,
            Pointer<Uint64> pMaxLen,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<COMObject> pStream,
            Pointer<Uint64> pMaxLen,
          )>()(
        ptr.ref.lpVtbl,
        pStream,
        pMaxLen,
      );

  int Abort() => ptr.ref.lpVtbl.value
          .elementAt(13)
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

  int Remove(
    double start,
    double end,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(14)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Double start,
            Double end,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            double start,
            double end,
          )>()(
        ptr.ref.lpVtbl,
        start,
        end,
      );
}
