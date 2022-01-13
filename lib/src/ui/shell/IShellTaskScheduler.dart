// IShellTaskScheduler.dart

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
import '../../ui/shell/IRunnableTask.dart';
import '../../foundation/structs.g.dart';

/// @nodoc
const IID_IShellTaskScheduler = '{6CCB7BE0-6807-11D0-B810-00C04FD706EC}';

/// {@category Interface}
/// {@category com}
class IShellTaskScheduler extends IUnknown {
  // vtable begins at 3, is 4 entries long.
  IShellTaskScheduler(Pointer<COMObject> ptr) : super(ptr);

  int AddTask(
    Pointer<COMObject> prt,
    Pointer<GUID> rtoid,
    int lParam,
    int dwPriority,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(3)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<COMObject> prt,
            Pointer<GUID> rtoid,
            IntPtr lParam,
            Uint32 dwPriority,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<COMObject> prt,
            Pointer<GUID> rtoid,
            int lParam,
            int dwPriority,
          )>()(
        ptr.ref.lpVtbl,
        prt,
        rtoid,
        lParam,
        dwPriority,
      );

  int RemoveTasks(
    Pointer<GUID> rtoid,
    int lParam,
    int bWaitIfRunning,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(4)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<GUID> rtoid,
            IntPtr lParam,
            Int32 bWaitIfRunning,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<GUID> rtoid,
            int lParam,
            int bWaitIfRunning,
          )>()(
        ptr.ref.lpVtbl,
        rtoid,
        lParam,
        bWaitIfRunning,
      );

  int CountTasks(
    Pointer<GUID> rtoid,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(5)
          .cast<
              Pointer<
                  NativeFunction<
                      Uint32 Function(
            Pointer,
            Pointer<GUID> rtoid,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<GUID> rtoid,
          )>()(
        ptr.ref.lpVtbl,
        rtoid,
      );

  int Status(
    int dwReleaseStatus,
    int dwThreadTimeout,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(6)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Uint32 dwReleaseStatus,
            Uint32 dwThreadTimeout,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int dwReleaseStatus,
            int dwThreadTimeout,
          )>()(
        ptr.ref.lpVtbl,
        dwReleaseStatus,
        dwThreadTimeout,
      );
}
