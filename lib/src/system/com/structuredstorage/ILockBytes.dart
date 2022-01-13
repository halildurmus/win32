// ILockBytes.dart

// THIS FILE IS GENERATED AUTOMATICALLY AND SHOULD NOT BE EDITED DIRECTLY.

// ignore_for_file: unused_import, directives_ordering

import 'dart:ffi';

import 'package:ffi/ffi.dart';

import '../../../combase.dart';
import '../../../constants.dart';
import '../../../exceptions.dart';
import '../../../guid.dart';
import '../../../macros.dart';
import '../../../ole32.dart';
import '../../../utils.dart';

import '../../../system/com/IUnknown.dart';
import '../../../foundation/structs.g.dart';
import '../../../system/com/structs.g.dart';

/// @nodoc
const IID_ILockBytes = '{0000000A-0000-0000-C000-000000000046}';

/// {@category Interface}
/// {@category com}
class ILockBytes extends IUnknown {
  // vtable begins at 3, is 7 entries long.
  ILockBytes(Pointer<COMObject> ptr) : super(ptr);

  int ReadAt(
    int ulOffset,
    Pointer pv,
    int cb,
    Pointer<Uint32> pcbRead,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(3)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Uint64 ulOffset,
            Pointer pv,
            Uint32 cb,
            Pointer<Uint32> pcbRead,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int ulOffset,
            Pointer pv,
            int cb,
            Pointer<Uint32> pcbRead,
          )>()(
        ptr.ref.lpVtbl,
        ulOffset,
        pv,
        cb,
        pcbRead,
      );

  int WriteAt(
    int ulOffset,
    Pointer pv,
    int cb,
    Pointer<Uint32> pcbWritten,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(4)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Uint64 ulOffset,
            Pointer pv,
            Uint32 cb,
            Pointer<Uint32> pcbWritten,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int ulOffset,
            Pointer pv,
            int cb,
            Pointer<Uint32> pcbWritten,
          )>()(
        ptr.ref.lpVtbl,
        ulOffset,
        pv,
        cb,
        pcbWritten,
      );

  int Flush() => ptr.ref.lpVtbl.value
          .elementAt(5)
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

  int SetSize(
    int cb,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(6)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Uint64 cb,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int cb,
          )>()(
        ptr.ref.lpVtbl,
        cb,
      );

  int LockRegion(
    int libOffset,
    int cb,
    int dwLockType,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(7)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Uint64 libOffset,
            Uint64 cb,
            Uint32 dwLockType,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int libOffset,
            int cb,
            int dwLockType,
          )>()(
        ptr.ref.lpVtbl,
        libOffset,
        cb,
        dwLockType,
      );

  int UnlockRegion(
    int libOffset,
    int cb,
    int dwLockType,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(8)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Uint64 libOffset,
            Uint64 cb,
            Uint32 dwLockType,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int libOffset,
            int cb,
            int dwLockType,
          )>()(
        ptr.ref.lpVtbl,
        libOffset,
        cb,
        dwLockType,
      );

  int Stat(
    Pointer<STATSTG> pstatstg,
    int grfStatFlag,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(9)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<STATSTG> pstatstg,
            Uint32 grfStatFlag,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<STATSTG> pstatstg,
            int grfStatFlag,
          )>()(
        ptr.ref.lpVtbl,
        pstatstg,
        grfStatFlag,
      );
}
