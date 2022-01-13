// IMFASFSplitter.dart

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
import '../../media/mediafoundation/IMFMediaBuffer.dart';
import '../../media/mediafoundation/structs.g.dart';
import '../../media/mediafoundation/IMFSample.dart';

/// @nodoc
const IID_IMFASFSplitter = '{12558295-E399-11D5-BC2A-00B0D0F3F4AB}';

/// {@category Interface}
/// {@category com}
class IMFASFSplitter extends IUnknown {
  // vtable begins at 3, is 9 entries long.
  IMFASFSplitter(Pointer<COMObject> ptr) : super(ptr);

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

  int SelectStreams(
    Pointer<Uint16> pwStreamNumbers,
    int wNumStreams,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(6)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Uint16> pwStreamNumbers,
            Uint16 wNumStreams,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Uint16> pwStreamNumbers,
            int wNumStreams,
          )>()(
        ptr.ref.lpVtbl,
        pwStreamNumbers,
        wNumStreams,
      );

  int GetSelectedStreams(
    Pointer<Uint16> pwStreamNumbers,
    Pointer<Uint16> pwNumStreams,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(7)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Uint16> pwStreamNumbers,
            Pointer<Uint16> pwNumStreams,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Uint16> pwStreamNumbers,
            Pointer<Uint16> pwNumStreams,
          )>()(
        ptr.ref.lpVtbl,
        pwStreamNumbers,
        pwNumStreams,
      );

  int ParseData(
    Pointer<COMObject> pIBuffer,
    int cbBufferOffset,
    int cbLength,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(8)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<COMObject> pIBuffer,
            Uint32 cbBufferOffset,
            Uint32 cbLength,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<COMObject> pIBuffer,
            int cbBufferOffset,
            int cbLength,
          )>()(
        ptr.ref.lpVtbl,
        pIBuffer,
        cbBufferOffset,
        cbLength,
      );

  int GetNextSample(
    Pointer<Int32> pdwStatusFlags,
    Pointer<Uint16> pwStreamNumber,
    Pointer<Pointer<COMObject>> ppISample,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(9)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Int32> pdwStatusFlags,
            Pointer<Uint16> pwStreamNumber,
            Pointer<Pointer<COMObject>> ppISample,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Int32> pdwStatusFlags,
            Pointer<Uint16> pwStreamNumber,
            Pointer<Pointer<COMObject>> ppISample,
          )>()(
        ptr.ref.lpVtbl,
        pdwStatusFlags,
        pwStreamNumber,
        ppISample,
      );

  int Flush() => ptr.ref.lpVtbl.value
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

  int GetLastSendTime(
    Pointer<Uint32> pdwLastSendTime,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(11)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Uint32> pdwLastSendTime,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Uint32> pdwLastSendTime,
          )>()(
        ptr.ref.lpVtbl,
        pdwLastSendTime,
      );
}
