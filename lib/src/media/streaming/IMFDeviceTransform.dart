// IMFDeviceTransform.dart

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
import '../../media/mediafoundation/IMFAttributes.dart';
import '../../foundation/structs.g.dart';
import '../../media/mediafoundation/IMFMediaType.dart';
import '../../media/mediafoundation/IMFMediaEvent.dart';
import '../../media/mediafoundation/IMFSample.dart';
import '../../media/mediafoundation/structs.g.dart';

/// @nodoc
const IID_IMFDeviceTransform = '{D818FBD8-FC46-42F2-87AC-1EA2D1F9BF32}';

/// {@category Interface}
/// {@category com}
class IMFDeviceTransform extends IUnknown {
  // vtable begins at 3, is 20 entries long.
  IMFDeviceTransform(Pointer<COMObject> ptr) : super(ptr);

  int InitializeTransform(
    Pointer<COMObject> pAttributes,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(3)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<COMObject> pAttributes,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<COMObject> pAttributes,
          )>()(
        ptr.ref.lpVtbl,
        pAttributes,
      );

  int GetInputAvailableType(
    int dwInputStreamID,
    int dwTypeIndex,
    Pointer<Pointer<COMObject>> pMediaType,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(4)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Uint32 dwInputStreamID,
            Uint32 dwTypeIndex,
            Pointer<Pointer<COMObject>> pMediaType,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int dwInputStreamID,
            int dwTypeIndex,
            Pointer<Pointer<COMObject>> pMediaType,
          )>()(
        ptr.ref.lpVtbl,
        dwInputStreamID,
        dwTypeIndex,
        pMediaType,
      );

  int GetInputCurrentType(
    int dwInputStreamID,
    Pointer<Pointer<COMObject>> pMediaType,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(5)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Uint32 dwInputStreamID,
            Pointer<Pointer<COMObject>> pMediaType,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int dwInputStreamID,
            Pointer<Pointer<COMObject>> pMediaType,
          )>()(
        ptr.ref.lpVtbl,
        dwInputStreamID,
        pMediaType,
      );

  int GetInputStreamAttributes(
    int dwInputStreamID,
    Pointer<Pointer<COMObject>> ppAttributes,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(6)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Uint32 dwInputStreamID,
            Pointer<Pointer<COMObject>> ppAttributes,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int dwInputStreamID,
            Pointer<Pointer<COMObject>> ppAttributes,
          )>()(
        ptr.ref.lpVtbl,
        dwInputStreamID,
        ppAttributes,
      );

  int GetOutputAvailableType(
    int dwOutputStreamID,
    int dwTypeIndex,
    Pointer<Pointer<COMObject>> pMediaType,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(7)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Uint32 dwOutputStreamID,
            Uint32 dwTypeIndex,
            Pointer<Pointer<COMObject>> pMediaType,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int dwOutputStreamID,
            int dwTypeIndex,
            Pointer<Pointer<COMObject>> pMediaType,
          )>()(
        ptr.ref.lpVtbl,
        dwOutputStreamID,
        dwTypeIndex,
        pMediaType,
      );

  int GetOutputCurrentType(
    int dwOutputStreamID,
    Pointer<Pointer<COMObject>> pMediaType,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(8)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Uint32 dwOutputStreamID,
            Pointer<Pointer<COMObject>> pMediaType,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int dwOutputStreamID,
            Pointer<Pointer<COMObject>> pMediaType,
          )>()(
        ptr.ref.lpVtbl,
        dwOutputStreamID,
        pMediaType,
      );

  int GetOutputStreamAttributes(
    int dwOutputStreamID,
    Pointer<Pointer<COMObject>> ppAttributes,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(9)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Uint32 dwOutputStreamID,
            Pointer<Pointer<COMObject>> ppAttributes,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int dwOutputStreamID,
            Pointer<Pointer<COMObject>> ppAttributes,
          )>()(
        ptr.ref.lpVtbl,
        dwOutputStreamID,
        ppAttributes,
      );

  int GetStreamCount(
    Pointer<Uint32> pcInputStreams,
    Pointer<Uint32> pcOutputStreams,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(10)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Uint32> pcInputStreams,
            Pointer<Uint32> pcOutputStreams,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Uint32> pcInputStreams,
            Pointer<Uint32> pcOutputStreams,
          )>()(
        ptr.ref.lpVtbl,
        pcInputStreams,
        pcOutputStreams,
      );

  int GetStreamIDs(
    int dwInputIDArraySize,
    Pointer<Uint32> pdwInputStreamIds,
    int dwOutputIDArraySize,
    Pointer<Uint32> pdwOutputStreamIds,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(11)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Uint32 dwInputIDArraySize,
            Pointer<Uint32> pdwInputStreamIds,
            Uint32 dwOutputIDArraySize,
            Pointer<Uint32> pdwOutputStreamIds,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int dwInputIDArraySize,
            Pointer<Uint32> pdwInputStreamIds,
            int dwOutputIDArraySize,
            Pointer<Uint32> pdwOutputStreamIds,
          )>()(
        ptr.ref.lpVtbl,
        dwInputIDArraySize,
        pdwInputStreamIds,
        dwOutputIDArraySize,
        pdwOutputStreamIds,
      );

  int ProcessEvent(
    int dwInputStreamID,
    Pointer<COMObject> pEvent,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(12)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Uint32 dwInputStreamID,
            Pointer<COMObject> pEvent,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int dwInputStreamID,
            Pointer<COMObject> pEvent,
          )>()(
        ptr.ref.lpVtbl,
        dwInputStreamID,
        pEvent,
      );

  int ProcessInput(
    int dwInputStreamID,
    Pointer<COMObject> pSample,
    int dwFlags,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(13)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Uint32 dwInputStreamID,
            Pointer<COMObject> pSample,
            Uint32 dwFlags,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int dwInputStreamID,
            Pointer<COMObject> pSample,
            int dwFlags,
          )>()(
        ptr.ref.lpVtbl,
        dwInputStreamID,
        pSample,
        dwFlags,
      );

  int ProcessMessage(
    int eMessage,
    int ulParam,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(14)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Int32 eMessage,
            IntPtr ulParam,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int eMessage,
            int ulParam,
          )>()(
        ptr.ref.lpVtbl,
        eMessage,
        ulParam,
      );

  int ProcessOutput(
    int dwFlags,
    int cOutputBufferCount,
    Pointer<MFT_OUTPUT_DATA_BUFFER> pOutputSample,
    Pointer<Uint32> pdwStatus,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(15)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Uint32 dwFlags,
            Uint32 cOutputBufferCount,
            Pointer<MFT_OUTPUT_DATA_BUFFER> pOutputSample,
            Pointer<Uint32> pdwStatus,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int dwFlags,
            int cOutputBufferCount,
            Pointer<MFT_OUTPUT_DATA_BUFFER> pOutputSample,
            Pointer<Uint32> pdwStatus,
          )>()(
        ptr.ref.lpVtbl,
        dwFlags,
        cOutputBufferCount,
        pOutputSample,
        pdwStatus,
      );

  int SetInputStreamState(
    int dwStreamID,
    Pointer<COMObject> pMediaType,
    int value,
    int dwFlags,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(16)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Uint32 dwStreamID,
            Pointer<COMObject> pMediaType,
            Int32 value,
            Uint32 dwFlags,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int dwStreamID,
            Pointer<COMObject> pMediaType,
            int value,
            int dwFlags,
          )>()(
        ptr.ref.lpVtbl,
        dwStreamID,
        pMediaType,
        value,
        dwFlags,
      );

  int GetInputStreamState(
    int dwStreamID,
    Pointer<Int32> value,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(17)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Uint32 dwStreamID,
            Pointer<Int32> value,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int dwStreamID,
            Pointer<Int32> value,
          )>()(
        ptr.ref.lpVtbl,
        dwStreamID,
        value,
      );

  int SetOutputStreamState(
    int dwStreamID,
    Pointer<COMObject> pMediaType,
    int value,
    int dwFlags,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(18)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Uint32 dwStreamID,
            Pointer<COMObject> pMediaType,
            Int32 value,
            Uint32 dwFlags,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int dwStreamID,
            Pointer<COMObject> pMediaType,
            int value,
            int dwFlags,
          )>()(
        ptr.ref.lpVtbl,
        dwStreamID,
        pMediaType,
        value,
        dwFlags,
      );

  int GetOutputStreamState(
    int dwStreamID,
    Pointer<Int32> value,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(19)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Uint32 dwStreamID,
            Pointer<Int32> value,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int dwStreamID,
            Pointer<Int32> value,
          )>()(
        ptr.ref.lpVtbl,
        dwStreamID,
        value,
      );

  int GetInputStreamPreferredState(
    int dwStreamID,
    Pointer<Int32> value,
    Pointer<Pointer<COMObject>> ppMediaType,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(20)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Uint32 dwStreamID,
            Pointer<Int32> value,
            Pointer<Pointer<COMObject>> ppMediaType,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int dwStreamID,
            Pointer<Int32> value,
            Pointer<Pointer<COMObject>> ppMediaType,
          )>()(
        ptr.ref.lpVtbl,
        dwStreamID,
        value,
        ppMediaType,
      );

  int FlushInputStream(
    int dwStreamIndex,
    int dwFlags,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(21)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Uint32 dwStreamIndex,
            Uint32 dwFlags,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int dwStreamIndex,
            int dwFlags,
          )>()(
        ptr.ref.lpVtbl,
        dwStreamIndex,
        dwFlags,
      );

  int FlushOutputStream(
    int dwStreamIndex,
    int dwFlags,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(22)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Uint32 dwStreamIndex,
            Uint32 dwFlags,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int dwStreamIndex,
            int dwFlags,
          )>()(
        ptr.ref.lpVtbl,
        dwStreamIndex,
        dwFlags,
      );
}
