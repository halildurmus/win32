// IWMWriterAdvanced.dart

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
import '../../media/windowsmediaformat/IWMWriterSink.dart';
import '../../media/windowsmediaformat/INSSBuffer.dart';
import '../../media/windowsmediaformat/structs.g.dart';

/// @nodoc
const IID_IWMWriterAdvanced = '{96406BE3-2B2B-11D3-B36B-00C04F6108FF}';

/// {@category Interface}
/// {@category com}
class IWMWriterAdvanced extends IUnknown {
  // vtable begins at 3, is 11 entries long.
  IWMWriterAdvanced(Pointer<COMObject> ptr) : super(ptr);

  int GetSinkCount(
    Pointer<Uint32> pcSinks,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(3)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Uint32> pcSinks,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Uint32> pcSinks,
          )>()(
        ptr.ref.lpVtbl,
        pcSinks,
      );

  int GetSink(
    int dwSinkNum,
    Pointer<Pointer<COMObject>> ppSink,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(4)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Uint32 dwSinkNum,
            Pointer<Pointer<COMObject>> ppSink,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int dwSinkNum,
            Pointer<Pointer<COMObject>> ppSink,
          )>()(
        ptr.ref.lpVtbl,
        dwSinkNum,
        ppSink,
      );

  int AddSink(
    Pointer<COMObject> pSink,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(5)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<COMObject> pSink,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<COMObject> pSink,
          )>()(
        ptr.ref.lpVtbl,
        pSink,
      );

  int RemoveSink(
    Pointer<COMObject> pSink,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(6)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<COMObject> pSink,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<COMObject> pSink,
          )>()(
        ptr.ref.lpVtbl,
        pSink,
      );

  int WriteStreamSample(
    int wStreamNum,
    int cnsSampleTime,
    int msSampleSendTime,
    int cnsSampleDuration,
    int dwFlags,
    Pointer<COMObject> pSample,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(7)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Uint16 wStreamNum,
            Uint64 cnsSampleTime,
            Uint32 msSampleSendTime,
            Uint64 cnsSampleDuration,
            Uint32 dwFlags,
            Pointer<COMObject> pSample,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int wStreamNum,
            int cnsSampleTime,
            int msSampleSendTime,
            int cnsSampleDuration,
            int dwFlags,
            Pointer<COMObject> pSample,
          )>()(
        ptr.ref.lpVtbl,
        wStreamNum,
        cnsSampleTime,
        msSampleSendTime,
        cnsSampleDuration,
        dwFlags,
        pSample,
      );

  int SetLiveSource(
    int fIsLiveSource,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(8)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Int32 fIsLiveSource,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int fIsLiveSource,
          )>()(
        ptr.ref.lpVtbl,
        fIsLiveSource,
      );

  int IsRealTime(
    Pointer<Int32> pfRealTime,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(9)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Int32> pfRealTime,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Int32> pfRealTime,
          )>()(
        ptr.ref.lpVtbl,
        pfRealTime,
      );

  int GetWriterTime(
    Pointer<Uint64> pcnsCurrentTime,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(10)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Uint64> pcnsCurrentTime,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Uint64> pcnsCurrentTime,
          )>()(
        ptr.ref.lpVtbl,
        pcnsCurrentTime,
      );

  int GetStatistics(
    int wStreamNum,
    Pointer<WM_WRITER_STATISTICS> pStats,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(11)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Uint16 wStreamNum,
            Pointer<WM_WRITER_STATISTICS> pStats,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int wStreamNum,
            Pointer<WM_WRITER_STATISTICS> pStats,
          )>()(
        ptr.ref.lpVtbl,
        wStreamNum,
        pStats,
      );

  int SetSyncTolerance(
    int msWindow,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(12)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Uint32 msWindow,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int msWindow,
          )>()(
        ptr.ref.lpVtbl,
        msWindow,
      );

  int GetSyncTolerance(
    Pointer<Uint32> pmsWindow,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(13)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Uint32> pmsWindow,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Uint32> pmsWindow,
          )>()(
        ptr.ref.lpVtbl,
        pmsWindow,
      );
}
