// IMpeg2Stream.dart

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
import '../../media/directshow/structs.g.dart';
import '../../media/directshow/IMpeg2Data.dart';
import '../../foundation/structs.g.dart';

/// @nodoc
const IID_IMpeg2Stream = '{400CC286-32A0-4CE4-9041-39571125A635}';

/// {@category Interface}
/// {@category com}
class IMpeg2Stream extends IUnknown {
  // vtable begins at 3, is 2 entries long.
  IMpeg2Stream(Pointer<COMObject> ptr) : super(ptr);

  int Initialize(
    int requestType,
    Pointer<COMObject> pMpeg2Data,
    Pointer<MPEG_CONTEXT> pContext,
    int pid,
    int tid,
    Pointer<MPEG2_FILTER> pFilter,
    int hDataReadyEvent,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(3)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Int32 requestType,
            Pointer<COMObject> pMpeg2Data,
            Pointer<MPEG_CONTEXT> pContext,
            Uint16 pid,
            Uint8 tid,
            Pointer<MPEG2_FILTER> pFilter,
            IntPtr hDataReadyEvent,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int requestType,
            Pointer<COMObject> pMpeg2Data,
            Pointer<MPEG_CONTEXT> pContext,
            int pid,
            int tid,
            Pointer<MPEG2_FILTER> pFilter,
            int hDataReadyEvent,
          )>()(
        ptr.ref.lpVtbl,
        requestType,
        pMpeg2Data,
        pContext,
        pid,
        tid,
        pFilter,
        hDataReadyEvent,
      );

  int SupplyDataBuffer(
    Pointer<MPEG_STREAM_BUFFER> pStreamBuffer,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(4)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<MPEG_STREAM_BUFFER> pStreamBuffer,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<MPEG_STREAM_BUFFER> pStreamBuffer,
          )>()(
        ptr.ref.lpVtbl,
        pStreamBuffer,
      );
}

/// @nodoc
const CLSID_Mpeg2Stream = '{F91D96C7-8509-4D0B-AB26-A0DD10904BB7}';

/// {@category com}
class Mpeg2Stream extends IMpeg2Stream {
  Mpeg2Stream(Pointer<COMObject> ptr) : super(ptr);

  factory Mpeg2Stream.createInstance() {
    final ptr = calloc<COMObject>();
    final clsid = calloc<GUID>()..ref.setGUID(CLSID_Mpeg2Stream);
    final iid = calloc<GUID>()..ref.setGUID(IID_IMpeg2Stream);

    try {
      final hr = CoCreateInstance(clsid, nullptr, CLSCTX_ALL, iid, ptr.cast());

      if (FAILED(hr)) throw WindowsException(hr);

      return Mpeg2Stream(ptr);
    } finally {
      free(clsid);
      free(iid);
    }
  }
}
