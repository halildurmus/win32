// IMFTransform.dart

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
import '../../media/mediafoundation/structs.g.dart';
import '../../media/mediafoundation/IMFAttributes.dart';
import '../../media/mediafoundation/IMFMediaType.dart';
import '../../media/mediafoundation/IMFMediaEvent.dart';
import '../../media/mediafoundation/IMFSample.dart';

/// @nodoc
const IID_IMFTransform = '{BF94C121-5B05-4E6F-8000-BA598961414D}';

/// {@category Interface}
/// {@category com}
class IMFTransform extends IUnknown {
  // vtable begins at 3, is 23 entries long.
  IMFTransform(Pointer<COMObject> ptr) : super(ptr);

  int GetStreamLimits(
    Pointer<Uint32> pdwInputMinimum,
    Pointer<Uint32> pdwInputMaximum,
    Pointer<Uint32> pdwOutputMinimum,
    Pointer<Uint32> pdwOutputMaximum,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(3)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Uint32> pdwInputMinimum,
            Pointer<Uint32> pdwInputMaximum,
            Pointer<Uint32> pdwOutputMinimum,
            Pointer<Uint32> pdwOutputMaximum,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Uint32> pdwInputMinimum,
            Pointer<Uint32> pdwInputMaximum,
            Pointer<Uint32> pdwOutputMinimum,
            Pointer<Uint32> pdwOutputMaximum,
          )>()(
        ptr.ref.lpVtbl,
        pdwInputMinimum,
        pdwInputMaximum,
        pdwOutputMinimum,
        pdwOutputMaximum,
      );

  int GetStreamCount(
    Pointer<Uint32> pcInputStreams,
    Pointer<Uint32> pcOutputStreams,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(4)
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
    Pointer<Uint32> pdwInputIDs,
    int dwOutputIDArraySize,
    Pointer<Uint32> pdwOutputIDs,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(5)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Uint32 dwInputIDArraySize,
            Pointer<Uint32> pdwInputIDs,
            Uint32 dwOutputIDArraySize,
            Pointer<Uint32> pdwOutputIDs,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int dwInputIDArraySize,
            Pointer<Uint32> pdwInputIDs,
            int dwOutputIDArraySize,
            Pointer<Uint32> pdwOutputIDs,
          )>()(
        ptr.ref.lpVtbl,
        dwInputIDArraySize,
        pdwInputIDs,
        dwOutputIDArraySize,
        pdwOutputIDs,
      );

  int GetInputStreamInfo(
    int dwInputStreamID,
    Pointer<MFT_INPUT_STREAM_INFO> pStreamInfo,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(6)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Uint32 dwInputStreamID,
            Pointer<MFT_INPUT_STREAM_INFO> pStreamInfo,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int dwInputStreamID,
            Pointer<MFT_INPUT_STREAM_INFO> pStreamInfo,
          )>()(
        ptr.ref.lpVtbl,
        dwInputStreamID,
        pStreamInfo,
      );

  int GetOutputStreamInfo(
    int dwOutputStreamID,
    Pointer<MFT_OUTPUT_STREAM_INFO> pStreamInfo,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(7)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Uint32 dwOutputStreamID,
            Pointer<MFT_OUTPUT_STREAM_INFO> pStreamInfo,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int dwOutputStreamID,
            Pointer<MFT_OUTPUT_STREAM_INFO> pStreamInfo,
          )>()(
        ptr.ref.lpVtbl,
        dwOutputStreamID,
        pStreamInfo,
      );

  int GetAttributes(
    Pointer<Pointer<COMObject>> pAttributes,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(8)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Pointer<COMObject>> pAttributes,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Pointer<COMObject>> pAttributes,
          )>()(
        ptr.ref.lpVtbl,
        pAttributes,
      );

  int GetInputStreamAttributes(
    int dwInputStreamID,
    Pointer<Pointer<COMObject>> pAttributes,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(9)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Uint32 dwInputStreamID,
            Pointer<Pointer<COMObject>> pAttributes,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int dwInputStreamID,
            Pointer<Pointer<COMObject>> pAttributes,
          )>()(
        ptr.ref.lpVtbl,
        dwInputStreamID,
        pAttributes,
      );

  int GetOutputStreamAttributes(
    int dwOutputStreamID,
    Pointer<Pointer<COMObject>> pAttributes,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(10)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Uint32 dwOutputStreamID,
            Pointer<Pointer<COMObject>> pAttributes,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int dwOutputStreamID,
            Pointer<Pointer<COMObject>> pAttributes,
          )>()(
        ptr.ref.lpVtbl,
        dwOutputStreamID,
        pAttributes,
      );

  int DeleteInputStream(
    int dwStreamID,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(11)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Uint32 dwStreamID,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int dwStreamID,
          )>()(
        ptr.ref.lpVtbl,
        dwStreamID,
      );

  int AddInputStreams(
    int cStreams,
    Pointer<Uint32> adwStreamIDs,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(12)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Uint32 cStreams,
            Pointer<Uint32> adwStreamIDs,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int cStreams,
            Pointer<Uint32> adwStreamIDs,
          )>()(
        ptr.ref.lpVtbl,
        cStreams,
        adwStreamIDs,
      );

  int GetInputAvailableType(
    int dwInputStreamID,
    int dwTypeIndex,
    Pointer<Pointer<COMObject>> ppType,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(13)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Uint32 dwInputStreamID,
            Uint32 dwTypeIndex,
            Pointer<Pointer<COMObject>> ppType,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int dwInputStreamID,
            int dwTypeIndex,
            Pointer<Pointer<COMObject>> ppType,
          )>()(
        ptr.ref.lpVtbl,
        dwInputStreamID,
        dwTypeIndex,
        ppType,
      );

  int GetOutputAvailableType(
    int dwOutputStreamID,
    int dwTypeIndex,
    Pointer<Pointer<COMObject>> ppType,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(14)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Uint32 dwOutputStreamID,
            Uint32 dwTypeIndex,
            Pointer<Pointer<COMObject>> ppType,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int dwOutputStreamID,
            int dwTypeIndex,
            Pointer<Pointer<COMObject>> ppType,
          )>()(
        ptr.ref.lpVtbl,
        dwOutputStreamID,
        dwTypeIndex,
        ppType,
      );

  int SetInputType(
    int dwInputStreamID,
    Pointer<COMObject> pType,
    int dwFlags,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(15)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Uint32 dwInputStreamID,
            Pointer<COMObject> pType,
            Uint32 dwFlags,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int dwInputStreamID,
            Pointer<COMObject> pType,
            int dwFlags,
          )>()(
        ptr.ref.lpVtbl,
        dwInputStreamID,
        pType,
        dwFlags,
      );

  int SetOutputType(
    int dwOutputStreamID,
    Pointer<COMObject> pType,
    int dwFlags,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(16)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Uint32 dwOutputStreamID,
            Pointer<COMObject> pType,
            Uint32 dwFlags,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int dwOutputStreamID,
            Pointer<COMObject> pType,
            int dwFlags,
          )>()(
        ptr.ref.lpVtbl,
        dwOutputStreamID,
        pType,
        dwFlags,
      );

  int GetInputCurrentType(
    int dwInputStreamID,
    Pointer<Pointer<COMObject>> ppType,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(17)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Uint32 dwInputStreamID,
            Pointer<Pointer<COMObject>> ppType,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int dwInputStreamID,
            Pointer<Pointer<COMObject>> ppType,
          )>()(
        ptr.ref.lpVtbl,
        dwInputStreamID,
        ppType,
      );

  int GetOutputCurrentType(
    int dwOutputStreamID,
    Pointer<Pointer<COMObject>> ppType,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(18)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Uint32 dwOutputStreamID,
            Pointer<Pointer<COMObject>> ppType,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int dwOutputStreamID,
            Pointer<Pointer<COMObject>> ppType,
          )>()(
        ptr.ref.lpVtbl,
        dwOutputStreamID,
        ppType,
      );

  int GetInputStatus(
    int dwInputStreamID,
    Pointer<Uint32> pdwFlags,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(19)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Uint32 dwInputStreamID,
            Pointer<Uint32> pdwFlags,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int dwInputStreamID,
            Pointer<Uint32> pdwFlags,
          )>()(
        ptr.ref.lpVtbl,
        dwInputStreamID,
        pdwFlags,
      );

  int GetOutputStatus(
    Pointer<Uint32> pdwFlags,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(20)
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

  int SetOutputBounds(
    int hnsLowerBound,
    int hnsUpperBound,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(21)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Int64 hnsLowerBound,
            Int64 hnsUpperBound,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int hnsLowerBound,
            int hnsUpperBound,
          )>()(
        ptr.ref.lpVtbl,
        hnsLowerBound,
        hnsUpperBound,
      );

  int ProcessEvent(
    int dwInputStreamID,
    Pointer<COMObject> pEvent,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(22)
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

  int ProcessMessage(
    int eMessage,
    int ulParam,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(23)
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

  int ProcessInput(
    int dwInputStreamID,
    Pointer<COMObject> pSample,
    int dwFlags,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(24)
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

  int ProcessOutput(
    int dwFlags,
    int cOutputBufferCount,
    Pointer<MFT_OUTPUT_DATA_BUFFER> pOutputSamples,
    Pointer<Uint32> pdwStatus,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(25)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Uint32 dwFlags,
            Uint32 cOutputBufferCount,
            Pointer<MFT_OUTPUT_DATA_BUFFER> pOutputSamples,
            Pointer<Uint32> pdwStatus,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int dwFlags,
            int cOutputBufferCount,
            Pointer<MFT_OUTPUT_DATA_BUFFER> pOutputSamples,
            Pointer<Uint32> pdwStatus,
          )>()(
        ptr.ref.lpVtbl,
        dwFlags,
        cOutputBufferCount,
        pOutputSamples,
        pdwStatus,
      );
}
