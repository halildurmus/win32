// AsyncIBackgroundCopyCallback.dart

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
import '../../networking/backgroundintelligenttransferservice/IBackgroundCopyJob.dart';
import '../../foundation/structs.g.dart';
import '../../networking/backgroundintelligenttransferservice/IBackgroundCopyError.dart';

/// @nodoc
const IID_AsyncIBackgroundCopyCallback =
    '{CA29D251-B4BB-4679-A3D9-AE8006119D54}';

/// {@category Interface}
/// {@category com}
class AsyncIBackgroundCopyCallback extends IUnknown {
  // vtable begins at 3, is 6 entries long.
  AsyncIBackgroundCopyCallback(Pointer<COMObject> ptr) : super(ptr);

  int Begin_JobTransferred(
    Pointer<COMObject> pJob,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(3)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<COMObject> pJob,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<COMObject> pJob,
          )>()(
        ptr.ref.lpVtbl,
        pJob,
      );

  int Finish_JobTransferred() => ptr.ref.lpVtbl.value
          .elementAt(4)
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

  int Begin_JobError(
    Pointer<COMObject> pJob,
    Pointer<COMObject> pError,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(5)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<COMObject> pJob,
            Pointer<COMObject> pError,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<COMObject> pJob,
            Pointer<COMObject> pError,
          )>()(
        ptr.ref.lpVtbl,
        pJob,
        pError,
      );

  int Finish_JobError() => ptr.ref.lpVtbl.value
          .elementAt(6)
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

  int Begin_JobModification(
    Pointer<COMObject> pJob,
    int dwReserved,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(7)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<COMObject> pJob,
            Uint32 dwReserved,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<COMObject> pJob,
            int dwReserved,
          )>()(
        ptr.ref.lpVtbl,
        pJob,
        dwReserved,
      );

  int Finish_JobModification() => ptr.ref.lpVtbl.value
          .elementAt(8)
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
