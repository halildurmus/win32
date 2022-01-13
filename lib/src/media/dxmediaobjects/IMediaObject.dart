// IMediaObject.dart

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
import '../../media/dxmediaobjects/structs.g.dart';
import '../../media/dxmediaobjects/IMediaBuffer.dart';

/// @nodoc
const IID_IMediaObject = '{D8AD0F58-5494-4102-97C5-EC798E59BCF4}';

/// {@category Interface}
/// {@category com}
class IMediaObject extends IUnknown {
  // vtable begins at 3, is 21 entries long.
  IMediaObject(Pointer<COMObject> ptr) : super(ptr);

  int GetStreamCount(
    Pointer<Uint32> pcInputStreams,
    Pointer<Uint32> pcOutputStreams,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(3)
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

  int GetInputStreamInfo(
    int dwInputStreamIndex,
    Pointer<Uint32> pdwFlags,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(4)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Uint32 dwInputStreamIndex,
            Pointer<Uint32> pdwFlags,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int dwInputStreamIndex,
            Pointer<Uint32> pdwFlags,
          )>()(
        ptr.ref.lpVtbl,
        dwInputStreamIndex,
        pdwFlags,
      );

  int GetOutputStreamInfo(
    int dwOutputStreamIndex,
    Pointer<Uint32> pdwFlags,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(5)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Uint32 dwOutputStreamIndex,
            Pointer<Uint32> pdwFlags,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int dwOutputStreamIndex,
            Pointer<Uint32> pdwFlags,
          )>()(
        ptr.ref.lpVtbl,
        dwOutputStreamIndex,
        pdwFlags,
      );

  int GetInputType(
    int dwInputStreamIndex,
    int dwTypeIndex,
    Pointer<DMO_MEDIA_TYPE> pmt,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(6)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Uint32 dwInputStreamIndex,
            Uint32 dwTypeIndex,
            Pointer<DMO_MEDIA_TYPE> pmt,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int dwInputStreamIndex,
            int dwTypeIndex,
            Pointer<DMO_MEDIA_TYPE> pmt,
          )>()(
        ptr.ref.lpVtbl,
        dwInputStreamIndex,
        dwTypeIndex,
        pmt,
      );

  int GetOutputType(
    int dwOutputStreamIndex,
    int dwTypeIndex,
    Pointer<DMO_MEDIA_TYPE> pmt,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(7)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Uint32 dwOutputStreamIndex,
            Uint32 dwTypeIndex,
            Pointer<DMO_MEDIA_TYPE> pmt,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int dwOutputStreamIndex,
            int dwTypeIndex,
            Pointer<DMO_MEDIA_TYPE> pmt,
          )>()(
        ptr.ref.lpVtbl,
        dwOutputStreamIndex,
        dwTypeIndex,
        pmt,
      );

  int SetInputType(
    int dwInputStreamIndex,
    Pointer<DMO_MEDIA_TYPE> pmt,
    int dwFlags,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(8)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Uint32 dwInputStreamIndex,
            Pointer<DMO_MEDIA_TYPE> pmt,
            Uint32 dwFlags,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int dwInputStreamIndex,
            Pointer<DMO_MEDIA_TYPE> pmt,
            int dwFlags,
          )>()(
        ptr.ref.lpVtbl,
        dwInputStreamIndex,
        pmt,
        dwFlags,
      );

  int SetOutputType(
    int dwOutputStreamIndex,
    Pointer<DMO_MEDIA_TYPE> pmt,
    int dwFlags,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(9)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Uint32 dwOutputStreamIndex,
            Pointer<DMO_MEDIA_TYPE> pmt,
            Uint32 dwFlags,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int dwOutputStreamIndex,
            Pointer<DMO_MEDIA_TYPE> pmt,
            int dwFlags,
          )>()(
        ptr.ref.lpVtbl,
        dwOutputStreamIndex,
        pmt,
        dwFlags,
      );

  int GetInputCurrentType(
    int dwInputStreamIndex,
    Pointer<DMO_MEDIA_TYPE> pmt,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(10)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Uint32 dwInputStreamIndex,
            Pointer<DMO_MEDIA_TYPE> pmt,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int dwInputStreamIndex,
            Pointer<DMO_MEDIA_TYPE> pmt,
          )>()(
        ptr.ref.lpVtbl,
        dwInputStreamIndex,
        pmt,
      );

  int GetOutputCurrentType(
    int dwOutputStreamIndex,
    Pointer<DMO_MEDIA_TYPE> pmt,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(11)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Uint32 dwOutputStreamIndex,
            Pointer<DMO_MEDIA_TYPE> pmt,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int dwOutputStreamIndex,
            Pointer<DMO_MEDIA_TYPE> pmt,
          )>()(
        ptr.ref.lpVtbl,
        dwOutputStreamIndex,
        pmt,
      );

  int GetInputSizeInfo(
    int dwInputStreamIndex,
    Pointer<Uint32> pcbSize,
    Pointer<Uint32> pcbMaxLookahead,
    Pointer<Uint32> pcbAlignment,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(12)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Uint32 dwInputStreamIndex,
            Pointer<Uint32> pcbSize,
            Pointer<Uint32> pcbMaxLookahead,
            Pointer<Uint32> pcbAlignment,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int dwInputStreamIndex,
            Pointer<Uint32> pcbSize,
            Pointer<Uint32> pcbMaxLookahead,
            Pointer<Uint32> pcbAlignment,
          )>()(
        ptr.ref.lpVtbl,
        dwInputStreamIndex,
        pcbSize,
        pcbMaxLookahead,
        pcbAlignment,
      );

  int GetOutputSizeInfo(
    int dwOutputStreamIndex,
    Pointer<Uint32> pcbSize,
    Pointer<Uint32> pcbAlignment,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(13)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Uint32 dwOutputStreamIndex,
            Pointer<Uint32> pcbSize,
            Pointer<Uint32> pcbAlignment,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int dwOutputStreamIndex,
            Pointer<Uint32> pcbSize,
            Pointer<Uint32> pcbAlignment,
          )>()(
        ptr.ref.lpVtbl,
        dwOutputStreamIndex,
        pcbSize,
        pcbAlignment,
      );

  int GetInputMaxLatency(
    int dwInputStreamIndex,
    Pointer<Int64> prtMaxLatency,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(14)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Uint32 dwInputStreamIndex,
            Pointer<Int64> prtMaxLatency,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int dwInputStreamIndex,
            Pointer<Int64> prtMaxLatency,
          )>()(
        ptr.ref.lpVtbl,
        dwInputStreamIndex,
        prtMaxLatency,
      );

  int SetInputMaxLatency(
    int dwInputStreamIndex,
    int rtMaxLatency,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(15)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Uint32 dwInputStreamIndex,
            Int64 rtMaxLatency,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int dwInputStreamIndex,
            int rtMaxLatency,
          )>()(
        ptr.ref.lpVtbl,
        dwInputStreamIndex,
        rtMaxLatency,
      );

  int Flush() => ptr.ref.lpVtbl.value
          .elementAt(16)
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

  int Discontinuity(
    int dwInputStreamIndex,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(17)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Uint32 dwInputStreamIndex,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int dwInputStreamIndex,
          )>()(
        ptr.ref.lpVtbl,
        dwInputStreamIndex,
      );

  int AllocateStreamingResources() => ptr.ref.lpVtbl.value
          .elementAt(18)
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

  int FreeStreamingResources() => ptr.ref.lpVtbl.value
          .elementAt(19)
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

  int GetInputStatus(
    int dwInputStreamIndex,
    Pointer<Uint32> dwFlags,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(20)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Uint32 dwInputStreamIndex,
            Pointer<Uint32> dwFlags,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int dwInputStreamIndex,
            Pointer<Uint32> dwFlags,
          )>()(
        ptr.ref.lpVtbl,
        dwInputStreamIndex,
        dwFlags,
      );

  int ProcessInput(
    int dwInputStreamIndex,
    Pointer<COMObject> pBuffer,
    int dwFlags,
    int rtTimestamp,
    int rtTimelength,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(21)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Uint32 dwInputStreamIndex,
            Pointer<COMObject> pBuffer,
            Uint32 dwFlags,
            Int64 rtTimestamp,
            Int64 rtTimelength,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int dwInputStreamIndex,
            Pointer<COMObject> pBuffer,
            int dwFlags,
            int rtTimestamp,
            int rtTimelength,
          )>()(
        ptr.ref.lpVtbl,
        dwInputStreamIndex,
        pBuffer,
        dwFlags,
        rtTimestamp,
        rtTimelength,
      );

  int ProcessOutput(
    int dwFlags,
    int cOutputBufferCount,
    Pointer<DMO_OUTPUT_DATA_BUFFER> pOutputBuffers,
    Pointer<Uint32> pdwStatus,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(22)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Uint32 dwFlags,
            Uint32 cOutputBufferCount,
            Pointer<DMO_OUTPUT_DATA_BUFFER> pOutputBuffers,
            Pointer<Uint32> pdwStatus,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int dwFlags,
            int cOutputBufferCount,
            Pointer<DMO_OUTPUT_DATA_BUFFER> pOutputBuffers,
            Pointer<Uint32> pdwStatus,
          )>()(
        ptr.ref.lpVtbl,
        dwFlags,
        cOutputBufferCount,
        pOutputBuffers,
        pdwStatus,
      );

  int Lock(
    int bLock,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(23)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Int32 bLock,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int bLock,
          )>()(
        ptr.ref.lpVtbl,
        bLock,
      );
}
