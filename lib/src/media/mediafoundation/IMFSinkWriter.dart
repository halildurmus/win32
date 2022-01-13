// IMFSinkWriter.dart

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
import '../../media/mediafoundation/IMFMediaType.dart';
import '../../foundation/structs.g.dart';
import '../../media/mediafoundation/IMFAttributes.dart';
import '../../media/mediafoundation/IMFSample.dart';
import '../../media/mediafoundation/structs.g.dart';

/// @nodoc
const IID_IMFSinkWriter = '{3137F1CD-FE5E-4805-A5D8-FB477448CB3D}';

/// {@category Interface}
/// {@category com}
class IMFSinkWriter extends IUnknown {
  // vtable begins at 3, is 11 entries long.
  IMFSinkWriter(Pointer<COMObject> ptr) : super(ptr);

  int AddStream(
    Pointer<COMObject> pTargetMediaType,
    Pointer<Uint32> pdwStreamIndex,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(3)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<COMObject> pTargetMediaType,
            Pointer<Uint32> pdwStreamIndex,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<COMObject> pTargetMediaType,
            Pointer<Uint32> pdwStreamIndex,
          )>()(
        ptr.ref.lpVtbl,
        pTargetMediaType,
        pdwStreamIndex,
      );

  int SetInputMediaType(
    int dwStreamIndex,
    Pointer<COMObject> pInputMediaType,
    Pointer<COMObject> pEncodingParameters,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(4)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Uint32 dwStreamIndex,
            Pointer<COMObject> pInputMediaType,
            Pointer<COMObject> pEncodingParameters,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int dwStreamIndex,
            Pointer<COMObject> pInputMediaType,
            Pointer<COMObject> pEncodingParameters,
          )>()(
        ptr.ref.lpVtbl,
        dwStreamIndex,
        pInputMediaType,
        pEncodingParameters,
      );

  int BeginWriting() => ptr.ref.lpVtbl.value
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

  int WriteSample(
    int dwStreamIndex,
    Pointer<COMObject> pSample,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(6)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Uint32 dwStreamIndex,
            Pointer<COMObject> pSample,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int dwStreamIndex,
            Pointer<COMObject> pSample,
          )>()(
        ptr.ref.lpVtbl,
        dwStreamIndex,
        pSample,
      );

  int SendStreamTick(
    int dwStreamIndex,
    int llTimestamp,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(7)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Uint32 dwStreamIndex,
            Int64 llTimestamp,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int dwStreamIndex,
            int llTimestamp,
          )>()(
        ptr.ref.lpVtbl,
        dwStreamIndex,
        llTimestamp,
      );

  int PlaceMarker(
    int dwStreamIndex,
    Pointer pvContext,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(8)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Uint32 dwStreamIndex,
            Pointer pvContext,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int dwStreamIndex,
            Pointer pvContext,
          )>()(
        ptr.ref.lpVtbl,
        dwStreamIndex,
        pvContext,
      );

  int NotifyEndOfSegment(
    int dwStreamIndex,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(9)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Uint32 dwStreamIndex,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int dwStreamIndex,
          )>()(
        ptr.ref.lpVtbl,
        dwStreamIndex,
      );

  int Flush(
    int dwStreamIndex,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(10)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Uint32 dwStreamIndex,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int dwStreamIndex,
          )>()(
        ptr.ref.lpVtbl,
        dwStreamIndex,
      );

  int Finalize() => ptr.ref.lpVtbl.value
          .elementAt(11)
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

  int GetServiceForStream(
    int dwStreamIndex,
    Pointer<GUID> guidService,
    Pointer<GUID> riid,
    Pointer<Pointer> ppvObject,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(12)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Uint32 dwStreamIndex,
            Pointer<GUID> guidService,
            Pointer<GUID> riid,
            Pointer<Pointer> ppvObject,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int dwStreamIndex,
            Pointer<GUID> guidService,
            Pointer<GUID> riid,
            Pointer<Pointer> ppvObject,
          )>()(
        ptr.ref.lpVtbl,
        dwStreamIndex,
        guidService,
        riid,
        ppvObject,
      );

  int GetStatistics(
    int dwStreamIndex,
    Pointer<MF_SINK_WRITER_STATISTICS> pStats,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(13)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Uint32 dwStreamIndex,
            Pointer<MF_SINK_WRITER_STATISTICS> pStats,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int dwStreamIndex,
            Pointer<MF_SINK_WRITER_STATISTICS> pStats,
          )>()(
        ptr.ref.lpVtbl,
        dwStreamIndex,
        pStats,
      );
}
