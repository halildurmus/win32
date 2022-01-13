// IMFSample.dart

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

import '../../media/mediafoundation/IMFAttributes.dart';
import '../../foundation/structs.g.dart';
import '../../media/mediafoundation/IMFMediaBuffer.dart';

/// @nodoc
const IID_IMFSample = '{C40A00F2-B93A-4D80-AE8C-5A1C634F58E4}';

/// {@category Interface}
/// {@category com}
class IMFSample extends IMFAttributes {
  // vtable begins at 33, is 14 entries long.
  IMFSample(Pointer<COMObject> ptr) : super(ptr);

  int GetSampleFlags(
    Pointer<Uint32> pdwSampleFlags,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(33)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Uint32> pdwSampleFlags,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Uint32> pdwSampleFlags,
          )>()(
        ptr.ref.lpVtbl,
        pdwSampleFlags,
      );

  int SetSampleFlags(
    int dwSampleFlags,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(34)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Uint32 dwSampleFlags,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int dwSampleFlags,
          )>()(
        ptr.ref.lpVtbl,
        dwSampleFlags,
      );

  int GetSampleTime(
    Pointer<Int64> phnsSampleTime,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(35)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Int64> phnsSampleTime,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Int64> phnsSampleTime,
          )>()(
        ptr.ref.lpVtbl,
        phnsSampleTime,
      );

  int SetSampleTime(
    int hnsSampleTime,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(36)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Int64 hnsSampleTime,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int hnsSampleTime,
          )>()(
        ptr.ref.lpVtbl,
        hnsSampleTime,
      );

  int GetSampleDuration(
    Pointer<Int64> phnsSampleDuration,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(37)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Int64> phnsSampleDuration,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Int64> phnsSampleDuration,
          )>()(
        ptr.ref.lpVtbl,
        phnsSampleDuration,
      );

  int SetSampleDuration(
    int hnsSampleDuration,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(38)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Int64 hnsSampleDuration,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int hnsSampleDuration,
          )>()(
        ptr.ref.lpVtbl,
        hnsSampleDuration,
      );

  int GetBufferCount(
    Pointer<Uint32> pdwBufferCount,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(39)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Uint32> pdwBufferCount,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Uint32> pdwBufferCount,
          )>()(
        ptr.ref.lpVtbl,
        pdwBufferCount,
      );

  int GetBufferByIndex(
    int dwIndex,
    Pointer<Pointer<COMObject>> ppBuffer,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(40)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Uint32 dwIndex,
            Pointer<Pointer<COMObject>> ppBuffer,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int dwIndex,
            Pointer<Pointer<COMObject>> ppBuffer,
          )>()(
        ptr.ref.lpVtbl,
        dwIndex,
        ppBuffer,
      );

  int ConvertToContiguousBuffer(
    Pointer<Pointer<COMObject>> ppBuffer,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(41)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Pointer<COMObject>> ppBuffer,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Pointer<COMObject>> ppBuffer,
          )>()(
        ptr.ref.lpVtbl,
        ppBuffer,
      );

  int AddBuffer(
    Pointer<COMObject> pBuffer,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(42)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<COMObject> pBuffer,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<COMObject> pBuffer,
          )>()(
        ptr.ref.lpVtbl,
        pBuffer,
      );

  int RemoveBufferByIndex(
    int dwIndex,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(43)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Uint32 dwIndex,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int dwIndex,
          )>()(
        ptr.ref.lpVtbl,
        dwIndex,
      );

  int RemoveAllBuffers() => ptr.ref.lpVtbl.value
          .elementAt(44)
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

  int GetTotalLength(
    Pointer<Uint32> pcbTotalLength,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(45)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Uint32> pcbTotalLength,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Uint32> pcbTotalLength,
          )>()(
        ptr.ref.lpVtbl,
        pcbTotalLength,
      );

  int CopyToBuffer(
    Pointer<COMObject> pBuffer,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(46)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<COMObject> pBuffer,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<COMObject> pBuffer,
          )>()(
        ptr.ref.lpVtbl,
        pBuffer,
      );
}
