// IStreamAsync.dart

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

import '../../system/com/IStream.dart';
import '../../specialTypes.dart';
import '../../foundation/structs.g.dart';

/// @nodoc
const IID_IStreamAsync = '{FE0B6665-E0CA-49B9-A178-2B5CB48D92A5}';

/// {@category Interface}
/// {@category com}
class IStreamAsync extends IStream {
  // vtable begins at 14, is 4 entries long.
  IStreamAsync(Pointer<COMObject> ptr) : super(ptr);

  int ReadAsync(
    Pointer pv,
    int cb,
    Pointer<Uint32> pcbRead,
    Pointer<OVERLAPPED> lpOverlapped,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(14)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer pv,
            Uint32 cb,
            Pointer<Uint32> pcbRead,
            Pointer<OVERLAPPED> lpOverlapped,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer pv,
            int cb,
            Pointer<Uint32> pcbRead,
            Pointer<OVERLAPPED> lpOverlapped,
          )>()(
        ptr.ref.lpVtbl,
        pv,
        cb,
        pcbRead,
        lpOverlapped,
      );

  int WriteAsync(
    Pointer lpBuffer,
    int cb,
    Pointer<Uint32> pcbWritten,
    Pointer<OVERLAPPED> lpOverlapped,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(15)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer lpBuffer,
            Uint32 cb,
            Pointer<Uint32> pcbWritten,
            Pointer<OVERLAPPED> lpOverlapped,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer lpBuffer,
            int cb,
            Pointer<Uint32> pcbWritten,
            Pointer<OVERLAPPED> lpOverlapped,
          )>()(
        ptr.ref.lpVtbl,
        lpBuffer,
        cb,
        pcbWritten,
        lpOverlapped,
      );

  int OverlappedResult(
    Pointer<OVERLAPPED> lpOverlapped,
    Pointer<Uint32> lpNumberOfBytesTransferred,
    int bWait,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(16)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<OVERLAPPED> lpOverlapped,
            Pointer<Uint32> lpNumberOfBytesTransferred,
            Int32 bWait,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<OVERLAPPED> lpOverlapped,
            Pointer<Uint32> lpNumberOfBytesTransferred,
            int bWait,
          )>()(
        ptr.ref.lpVtbl,
        lpOverlapped,
        lpNumberOfBytesTransferred,
        bWait,
      );

  int CancelIo() => ptr.ref.lpVtbl.value
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
