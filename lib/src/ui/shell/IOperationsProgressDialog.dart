// IOperationsProgressDialog.dart

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
import '../../ui/shell/structs.g.dart';
import '../../ui/shell/IShellItem.dart';
import '../../ui/shell/propertiessystem/structs.g.dart';

/// @nodoc
const IID_IOperationsProgressDialog = '{0C9FB851-E5C9-43EB-A370-F0677B13874C}';

/// {@category Interface}
/// {@category com}
class IOperationsProgressDialog extends IUnknown {
  // vtable begins at 3, is 11 entries long.
  IOperationsProgressDialog(Pointer<COMObject> ptr) : super(ptr);

  int StartProgressDialog(
    int hwndOwner,
    int flags,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(3)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            IntPtr hwndOwner,
            Uint32 flags,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int hwndOwner,
            int flags,
          )>()(
        ptr.ref.lpVtbl,
        hwndOwner,
        flags,
      );

  int StopProgressDialog() => ptr.ref.lpVtbl.value
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

  int SetOperation(
    int action,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(5)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Int32 action,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int action,
          )>()(
        ptr.ref.lpVtbl,
        action,
      );

  int SetMode(
    int mode,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(6)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Uint32 mode,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int mode,
          )>()(
        ptr.ref.lpVtbl,
        mode,
      );

  int UpdateProgress(
    int ullPointsCurrent,
    int ullPointsTotal,
    int ullSizeCurrent,
    int ullSizeTotal,
    int ullItemsCurrent,
    int ullItemsTotal,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(7)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Uint64 ullPointsCurrent,
            Uint64 ullPointsTotal,
            Uint64 ullSizeCurrent,
            Uint64 ullSizeTotal,
            Uint64 ullItemsCurrent,
            Uint64 ullItemsTotal,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int ullPointsCurrent,
            int ullPointsTotal,
            int ullSizeCurrent,
            int ullSizeTotal,
            int ullItemsCurrent,
            int ullItemsTotal,
          )>()(
        ptr.ref.lpVtbl,
        ullPointsCurrent,
        ullPointsTotal,
        ullSizeCurrent,
        ullSizeTotal,
        ullItemsCurrent,
        ullItemsTotal,
      );

  int UpdateLocations(
    Pointer<COMObject> psiSource,
    Pointer<COMObject> psiTarget,
    Pointer<COMObject> psiItem,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(8)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<COMObject> psiSource,
            Pointer<COMObject> psiTarget,
            Pointer<COMObject> psiItem,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<COMObject> psiSource,
            Pointer<COMObject> psiTarget,
            Pointer<COMObject> psiItem,
          )>()(
        ptr.ref.lpVtbl,
        psiSource,
        psiTarget,
        psiItem,
      );

  int ResetTimer() => ptr.ref.lpVtbl.value
          .elementAt(9)
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

  int PauseTimer() => ptr.ref.lpVtbl.value
          .elementAt(10)
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

  int ResumeTimer() => ptr.ref.lpVtbl.value
          .elementAt(11)
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

  int GetMilliseconds(
    Pointer<Uint64> pullElapsed,
    Pointer<Uint64> pullRemaining,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(12)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Uint64> pullElapsed,
            Pointer<Uint64> pullRemaining,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Uint64> pullElapsed,
            Pointer<Uint64> pullRemaining,
          )>()(
        ptr.ref.lpVtbl,
        pullElapsed,
        pullRemaining,
      );

  int GetOperationStatus(
    Pointer<Int32> popstatus,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(13)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Int32> popstatus,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Int32> popstatus,
          )>()(
        ptr.ref.lpVtbl,
        popstatus,
      );
}
