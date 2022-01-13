// IMFASFMultiplexer.dart

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
import '../../media/mediafoundation/IMFASFContentInfo.dart';
import '../../foundation/structs.g.dart';
import '../../media/mediafoundation/IMFSample.dart';
import '../../media/mediafoundation/structs.g.dart';

/// @nodoc
const IID_IMFASFMultiplexer = '{57BDD80A-9B38-4838-B737-C58F670D7D4F}';

/// {@category Interface}
/// {@category com}
class IMFASFMultiplexer extends IUnknown {
  // vtable begins at 3, is 9 entries long.
  IMFASFMultiplexer(Pointer<COMObject> ptr) : super(ptr);

  int Initialize(
    Pointer<COMObject> pIContentInfo,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(3)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<COMObject> pIContentInfo,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<COMObject> pIContentInfo,
          )>()(
        ptr.ref.lpVtbl,
        pIContentInfo,
      );

  int SetFlags(
    int dwFlags,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(4)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Uint32 dwFlags,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int dwFlags,
          )>()(
        ptr.ref.lpVtbl,
        dwFlags,
      );

  int GetFlags(
    Pointer<Uint32> pdwFlags,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(5)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Uint32> pdwFlags,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Uint32> pdwFlags,
          )>()(
        ptr.ref.lpVtbl,
        pdwFlags,
      );

  int ProcessSample(
    int wStreamNumber,
    Pointer<COMObject> pISample,
    int hnsTimestampAdjust,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(6)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Uint16 wStreamNumber,
            Pointer<COMObject> pISample,
            Int64 hnsTimestampAdjust,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int wStreamNumber,
            Pointer<COMObject> pISample,
            int hnsTimestampAdjust,
          )>()(
        ptr.ref.lpVtbl,
        wStreamNumber,
        pISample,
        hnsTimestampAdjust,
      );

  int GetNextPacket(
    Pointer<Uint32> pdwStatusFlags,
    Pointer<Pointer<COMObject>> ppIPacket,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(7)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Uint32> pdwStatusFlags,
            Pointer<Pointer<COMObject>> ppIPacket,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Uint32> pdwStatusFlags,
            Pointer<Pointer<COMObject>> ppIPacket,
          )>()(
        ptr.ref.lpVtbl,
        pdwStatusFlags,
        ppIPacket,
      );

  int Flush() => ptr.ref.lpVtbl.value
          .elementAt(8)
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

  int End(
    Pointer<COMObject> pIContentInfo,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(9)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<COMObject> pIContentInfo,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<COMObject> pIContentInfo,
          )>()(
        ptr.ref.lpVtbl,
        pIContentInfo,
      );

  int GetStatistics(
    int wStreamNumber,
    Pointer<ASF_MUX_STATISTICS> pMuxStats,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(10)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Uint16 wStreamNumber,
            Pointer<ASF_MUX_STATISTICS> pMuxStats,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int wStreamNumber,
            Pointer<ASF_MUX_STATISTICS> pMuxStats,
          )>()(
        ptr.ref.lpVtbl,
        wStreamNumber,
        pMuxStats,
      );

  int SetSyncTolerance(
    int msSyncTolerance,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(11)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Uint32 msSyncTolerance,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int msSyncTolerance,
          )>()(
        ptr.ref.lpVtbl,
        msSyncTolerance,
      );
}
