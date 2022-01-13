// IMFHttpDownloadRequest.dart

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
import '../../media/mediafoundation/IMFAsyncCallback.dart';
import '../../specialTypes.dart';
import '../../media/mediafoundation/IMFAsyncResult.dart';

/// @nodoc
const IID_IMFHttpDownloadRequest = '{F779FDDF-26E7-4270-8A8B-B983D1859DE0}';

/// {@category Interface}
/// {@category com}
class IMFHttpDownloadRequest extends IUnknown {
  // vtable begins at 3, is 16 entries long.
  IMFHttpDownloadRequest(Pointer<COMObject> ptr) : super(ptr);

  int AddHeader(
    Pointer<Utf16> szHeader,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(3)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Utf16> szHeader,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Utf16> szHeader,
          )>()(
        ptr.ref.lpVtbl,
        szHeader,
      );

  int BeginSendRequest(
    Pointer<Uint8> pbPayload,
    int cbPayload,
    Pointer<COMObject> pCallback,
    Pointer<COMObject> punkState,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(4)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Uint8> pbPayload,
            Uint32 cbPayload,
            Pointer<COMObject> pCallback,
            Pointer<COMObject> punkState,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Uint8> pbPayload,
            int cbPayload,
            Pointer<COMObject> pCallback,
            Pointer<COMObject> punkState,
          )>()(
        ptr.ref.lpVtbl,
        pbPayload,
        cbPayload,
        pCallback,
        punkState,
      );

  int EndSendRequest(
    Pointer<COMObject> pResult,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(5)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<COMObject> pResult,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<COMObject> pResult,
          )>()(
        ptr.ref.lpVtbl,
        pResult,
      );

  int BeginReceiveResponse(
    Pointer<COMObject> pCallback,
    Pointer<COMObject> punkState,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(6)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<COMObject> pCallback,
            Pointer<COMObject> punkState,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<COMObject> pCallback,
            Pointer<COMObject> punkState,
          )>()(
        ptr.ref.lpVtbl,
        pCallback,
        punkState,
      );

  int EndReceiveResponse(
    Pointer<COMObject> pResult,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(7)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<COMObject> pResult,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<COMObject> pResult,
          )>()(
        ptr.ref.lpVtbl,
        pResult,
      );

  int BeginReadPayload(
    Pointer<Uint8> pb,
    int cb,
    Pointer<COMObject> pCallback,
    Pointer<COMObject> punkState,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(8)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Uint8> pb,
            Uint32 cb,
            Pointer<COMObject> pCallback,
            Pointer<COMObject> punkState,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Uint8> pb,
            int cb,
            Pointer<COMObject> pCallback,
            Pointer<COMObject> punkState,
          )>()(
        ptr.ref.lpVtbl,
        pb,
        cb,
        pCallback,
        punkState,
      );

  int EndReadPayload(
    Pointer<COMObject> pResult,
    Pointer<Uint64> pqwOffset,
    Pointer<Uint32> pcbRead,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(9)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<COMObject> pResult,
            Pointer<Uint64> pqwOffset,
            Pointer<Uint32> pcbRead,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<COMObject> pResult,
            Pointer<Uint64> pqwOffset,
            Pointer<Uint32> pcbRead,
          )>()(
        ptr.ref.lpVtbl,
        pResult,
        pqwOffset,
        pcbRead,
      );

  int QueryHeader(
    Pointer<Utf16> szHeaderName,
    int dwIndex,
    Pointer<Pointer<Utf16>> ppszHeaderValue,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(10)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Utf16> szHeaderName,
            Uint32 dwIndex,
            Pointer<Pointer<Utf16>> ppszHeaderValue,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Utf16> szHeaderName,
            int dwIndex,
            Pointer<Pointer<Utf16>> ppszHeaderValue,
          )>()(
        ptr.ref.lpVtbl,
        szHeaderName,
        dwIndex,
        ppszHeaderValue,
      );

  int GetURL(
    Pointer<Pointer<Utf16>> ppszURL,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(11)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Pointer<Utf16>> ppszURL,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Pointer<Utf16>> ppszURL,
          )>()(
        ptr.ref.lpVtbl,
        ppszURL,
      );

  int HasNullSourceOrigin(
    Pointer<Int32> pfNullSourceOrigin,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(12)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Int32> pfNullSourceOrigin,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Int32> pfNullSourceOrigin,
          )>()(
        ptr.ref.lpVtbl,
        pfNullSourceOrigin,
      );

  int GetTimeSeekResult(
    Pointer<Uint64> pqwStartTime,
    Pointer<Uint64> pqwStopTime,
    Pointer<Uint64> pqwDuration,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(13)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Uint64> pqwStartTime,
            Pointer<Uint64> pqwStopTime,
            Pointer<Uint64> pqwDuration,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Uint64> pqwStartTime,
            Pointer<Uint64> pqwStopTime,
            Pointer<Uint64> pqwDuration,
          )>()(
        ptr.ref.lpVtbl,
        pqwStartTime,
        pqwStopTime,
        pqwDuration,
      );

  int GetHttpStatus(
    Pointer<Uint32> pdwHttpStatus,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(14)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Uint32> pdwHttpStatus,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Uint32> pdwHttpStatus,
          )>()(
        ptr.ref.lpVtbl,
        pdwHttpStatus,
      );

  int GetAtEndOfPayload(
    Pointer<Int32> pfAtEndOfPayload,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(15)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Int32> pfAtEndOfPayload,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Int32> pfAtEndOfPayload,
          )>()(
        ptr.ref.lpVtbl,
        pfAtEndOfPayload,
      );

  int GetTotalLength(
    Pointer<Uint64> pqwTotalLength,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(16)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Uint64> pqwTotalLength,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Uint64> pqwTotalLength,
          )>()(
        ptr.ref.lpVtbl,
        pqwTotalLength,
      );

  int GetRangeEndOffset(
    Pointer<Uint64> pqwRangeEnd,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(17)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Uint64> pqwRangeEnd,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Uint64> pqwRangeEnd,
          )>()(
        ptr.ref.lpVtbl,
        pqwRangeEnd,
      );

  int Close() => ptr.ref.lpVtbl.value
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
}
