// IFillLockBytes.dart

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

/// @nodoc
const IID_IFillLockBytes = '{99CAF010-415E-11CF-8814-00AA00B569F5}';

/// {@category Interface}
/// {@category com}
class IFillLockBytes extends IUnknown {
  // vtable begins at 3, is 4 entries long.
  IFillLockBytes(Pointer<COMObject> ptr) : super(ptr);

  int FillAppend(
    Pointer pv,
    int cb,
    Pointer<Uint32> pcbWritten,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(3)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer pv,
            Uint32 cb,
            Pointer<Uint32> pcbWritten,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer pv,
            int cb,
            Pointer<Uint32> pcbWritten,
          )>()(
        ptr.ref.lpVtbl,
        pv,
        cb,
        pcbWritten,
      );

  int FillAt(
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

  int SetFillSize(
    int ulSize,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(5)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Uint64 ulSize,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int ulSize,
          )>()(
        ptr.ref.lpVtbl,
        ulSize,
      );

  int Terminate(
    int bCanceled,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(6)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Int32 bCanceled,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int bCanceled,
          )>()(
        ptr.ref.lpVtbl,
        bCanceled,
      );
}
