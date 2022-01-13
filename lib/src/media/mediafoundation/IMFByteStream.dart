// IMFByteStream.dart

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
import '../../media/mediafoundation/structs.g.dart';

/// @nodoc
const IID_IMFByteStream = '{AD4C1B00-4BF7-422F-9175-756693D9130D}';

/// {@category Interface}
/// {@category com}
class IMFByteStream extends IUnknown {
  // vtable begins at 3, is 15 entries long.
  IMFByteStream(Pointer<COMObject> ptr) : super(ptr);

  int GetCapabilities(
    Pointer<Uint32> pdwCapabilities,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(3)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Uint32> pdwCapabilities,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Uint32> pdwCapabilities,
          )>()(
        ptr.ref.lpVtbl,
        pdwCapabilities,
      );

  int GetLength(
    Pointer<Uint64> pqwLength,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(4)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Uint64> pqwLength,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Uint64> pqwLength,
          )>()(
        ptr.ref.lpVtbl,
        pqwLength,
      );

  int SetLength(
    int qwLength,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(5)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Uint64 qwLength,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int qwLength,
          )>()(
        ptr.ref.lpVtbl,
        qwLength,
      );

  int GetCurrentPosition(
    Pointer<Uint64> pqwPosition,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(6)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Uint64> pqwPosition,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Uint64> pqwPosition,
          )>()(
        ptr.ref.lpVtbl,
        pqwPosition,
      );

  int SetCurrentPosition(
    int qwPosition,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(7)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Uint64 qwPosition,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int qwPosition,
          )>()(
        ptr.ref.lpVtbl,
        qwPosition,
      );

  int IsEndOfStream(
    Pointer<Int32> pfEndOfStream,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(8)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Int32> pfEndOfStream,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Int32> pfEndOfStream,
          )>()(
        ptr.ref.lpVtbl,
        pfEndOfStream,
      );

  int Read(
    Pointer<Uint8> pb,
    int cb,
    Pointer<Uint32> pcbRead,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(9)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Uint8> pb,
            Uint32 cb,
            Pointer<Uint32> pcbRead,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Uint8> pb,
            int cb,
            Pointer<Uint32> pcbRead,
          )>()(
        ptr.ref.lpVtbl,
        pb,
        cb,
        pcbRead,
      );

  int BeginRead(
    Pointer<Uint8> pb,
    int cb,
    Pointer<COMObject> pCallback,
    Pointer<COMObject> punkState,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(10)
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

  int EndRead(
    Pointer<COMObject> pResult,
    Pointer<Uint32> pcbRead,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(11)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<COMObject> pResult,
            Pointer<Uint32> pcbRead,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<COMObject> pResult,
            Pointer<Uint32> pcbRead,
          )>()(
        ptr.ref.lpVtbl,
        pResult,
        pcbRead,
      );

  int Write(
    Pointer<Uint8> pb,
    int cb,
    Pointer<Uint32> pcbWritten,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(12)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Uint8> pb,
            Uint32 cb,
            Pointer<Uint32> pcbWritten,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Uint8> pb,
            int cb,
            Pointer<Uint32> pcbWritten,
          )>()(
        ptr.ref.lpVtbl,
        pb,
        cb,
        pcbWritten,
      );

  int BeginWrite(
    Pointer<Uint8> pb,
    int cb,
    Pointer<COMObject> pCallback,
    Pointer<COMObject> punkState,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(13)
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

  int EndWrite(
    Pointer<COMObject> pResult,
    Pointer<Uint32> pcbWritten,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(14)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<COMObject> pResult,
            Pointer<Uint32> pcbWritten,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<COMObject> pResult,
            Pointer<Uint32> pcbWritten,
          )>()(
        ptr.ref.lpVtbl,
        pResult,
        pcbWritten,
      );

  int Seek(
    int SeekOrigin,
    int llSeekOffset,
    int dwSeekFlags,
    Pointer<Uint64> pqwCurrentPosition,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(15)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Int32 SeekOrigin,
            Int64 llSeekOffset,
            Uint32 dwSeekFlags,
            Pointer<Uint64> pqwCurrentPosition,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int SeekOrigin,
            int llSeekOffset,
            int dwSeekFlags,
            Pointer<Uint64> pqwCurrentPosition,
          )>()(
        ptr.ref.lpVtbl,
        SeekOrigin,
        llSeekOffset,
        dwSeekFlags,
        pqwCurrentPosition,
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

  int Close() => ptr.ref.lpVtbl.value
          .elementAt(17)
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
