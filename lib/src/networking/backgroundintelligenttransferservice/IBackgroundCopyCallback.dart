// IBackgroundCopyCallback.dart

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
const IID_IBackgroundCopyCallback = '{97EA99C7-0186-4AD4-8DF9-C5B4E0ED6B22}';

/// {@category Interface}
/// {@category com}
class IBackgroundCopyCallback extends IUnknown {
  // vtable begins at 3, is 3 entries long.
  IBackgroundCopyCallback(Pointer<COMObject> ptr) : super(ptr);

  int JobTransferred(
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

  int JobError(
    Pointer<COMObject> pJob,
    Pointer<COMObject> pError,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(4)
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

  int JobModification(
    Pointer<COMObject> pJob,
    int dwReserved,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(5)
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
}
