// ISyncCallback.dart

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
import '../../system/windowssync/structs.g.dart';
import '../../foundation/structs.g.dart';
import '../../system/windowssync/ISyncChange.dart';
import '../../system/windowssync/IChangeConflict.dart';
import '../../system/windowssync/IRecoverableError.dart';

/// @nodoc
const IID_ISyncCallback = '{0599797F-5ED9-485C-AE36-0C5D1BF2E7A5}';

/// {@category Interface}
/// {@category com}
class ISyncCallback extends IUnknown {
  // vtable begins at 3, is 5 entries long.
  ISyncCallback(Pointer<COMObject> ptr) : super(ptr);

  int OnProgress(
    int provider,
    int syncStage,
    int dwCompletedWork,
    int dwTotalWork,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(3)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Int32 provider,
            Int32 syncStage,
            Uint32 dwCompletedWork,
            Uint32 dwTotalWork,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int provider,
            int syncStage,
            int dwCompletedWork,
            int dwTotalWork,
          )>()(
        ptr.ref.lpVtbl,
        provider,
        syncStage,
        dwCompletedWork,
        dwTotalWork,
      );

  int OnChange(
    Pointer<COMObject> pSyncChange,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(4)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<COMObject> pSyncChange,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<COMObject> pSyncChange,
          )>()(
        ptr.ref.lpVtbl,
        pSyncChange,
      );

  int OnConflict(
    Pointer<COMObject> pConflict,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(5)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<COMObject> pConflict,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<COMObject> pConflict,
          )>()(
        ptr.ref.lpVtbl,
        pConflict,
      );

  int OnFullEnumerationNeeded(
    Pointer<Int32> pFullEnumerationAction,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(6)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Int32> pFullEnumerationAction,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Int32> pFullEnumerationAction,
          )>()(
        ptr.ref.lpVtbl,
        pFullEnumerationAction,
      );

  int OnRecoverableError(
    Pointer<COMObject> pRecoverableError,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(7)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<COMObject> pRecoverableError,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<COMObject> pRecoverableError,
          )>()(
        ptr.ref.lpVtbl,
        pRecoverableError,
      );
}
