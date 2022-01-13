// IMFSourceReaderCallback.dart

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
import '../../media/mediafoundation/IMFSample.dart';
import '../../media/mediafoundation/IMFMediaEvent.dart';

/// @nodoc
const IID_IMFSourceReaderCallback = '{DEEC8D99-FA1D-4D82-84C2-2C8969944867}';

/// {@category Interface}
/// {@category com}
class IMFSourceReaderCallback extends IUnknown {
  // vtable begins at 3, is 3 entries long.
  IMFSourceReaderCallback(Pointer<COMObject> ptr) : super(ptr);

  int OnReadSample(
    int hrStatus,
    int dwStreamIndex,
    int dwStreamFlags,
    int llTimestamp,
    Pointer<COMObject> pSample,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(3)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Int32 hrStatus,
            Uint32 dwStreamIndex,
            Uint32 dwStreamFlags,
            Int64 llTimestamp,
            Pointer<COMObject> pSample,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int hrStatus,
            int dwStreamIndex,
            int dwStreamFlags,
            int llTimestamp,
            Pointer<COMObject> pSample,
          )>()(
        ptr.ref.lpVtbl,
        hrStatus,
        dwStreamIndex,
        dwStreamFlags,
        llTimestamp,
        pSample,
      );

  int OnFlush(
    int dwStreamIndex,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(4)
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

  int OnEvent(
    int dwStreamIndex,
    Pointer<COMObject> pEvent,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(5)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Uint32 dwStreamIndex,
            Pointer<COMObject> pEvent,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int dwStreamIndex,
            Pointer<COMObject> pEvent,
          )>()(
        ptr.ref.lpVtbl,
        dwStreamIndex,
        pEvent,
      );
}
