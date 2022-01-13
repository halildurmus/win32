// ITsSbTaskPluginNotifySink.dart

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

import '../../system/remotedesktop/ITsSbBaseNotifySink.dart';
import '../../foundation/structs.g.dart';
import '../../system/com/structs.g.dart';
import '../../system/remotedesktop/structs.g.dart';

/// @nodoc
const IID_ITsSbTaskPluginNotifySink = '{6AAF899E-C2EC-45EE-AA37-45E60895261A}';

/// {@category Interface}
/// {@category com}
class ITsSbTaskPluginNotifySink extends ITsSbBaseNotifySink {
  // vtable begins at 5, is 4 entries long.
  ITsSbTaskPluginNotifySink(Pointer<COMObject> ptr) : super(ptr);

  int OnSetTaskTime(
    Pointer<Utf16> szTargetName,
    FILETIME TaskStartTime,
    FILETIME TaskEndTime,
    FILETIME TaskDeadline,
    Pointer<Utf16> szTaskLabel,
    Pointer<Utf16> szTaskIdentifier,
    Pointer<Utf16> szTaskPlugin,
    int dwTaskStatus,
    Pointer<SAFEARRAY> saContext,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(5)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Utf16> szTargetName,
            FILETIME TaskStartTime,
            FILETIME TaskEndTime,
            FILETIME TaskDeadline,
            Pointer<Utf16> szTaskLabel,
            Pointer<Utf16> szTaskIdentifier,
            Pointer<Utf16> szTaskPlugin,
            Uint32 dwTaskStatus,
            Pointer<SAFEARRAY> saContext,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Utf16> szTargetName,
            FILETIME TaskStartTime,
            FILETIME TaskEndTime,
            FILETIME TaskDeadline,
            Pointer<Utf16> szTaskLabel,
            Pointer<Utf16> szTaskIdentifier,
            Pointer<Utf16> szTaskPlugin,
            int dwTaskStatus,
            Pointer<SAFEARRAY> saContext,
          )>()(
        ptr.ref.lpVtbl,
        szTargetName,
        TaskStartTime,
        TaskEndTime,
        TaskDeadline,
        szTaskLabel,
        szTaskIdentifier,
        szTaskPlugin,
        dwTaskStatus,
        saContext,
      );

  int OnDeleteTaskTime(
    Pointer<Utf16> szTargetName,
    Pointer<Utf16> szTaskIdentifier,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(6)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Utf16> szTargetName,
            Pointer<Utf16> szTaskIdentifier,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Utf16> szTargetName,
            Pointer<Utf16> szTaskIdentifier,
          )>()(
        ptr.ref.lpVtbl,
        szTargetName,
        szTaskIdentifier,
      );

  int OnUpdateTaskStatus(
    Pointer<Utf16> szTargetName,
    Pointer<Utf16> TaskIdentifier,
    int TaskStatus,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(7)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Utf16> szTargetName,
            Pointer<Utf16> TaskIdentifier,
            Int32 TaskStatus,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Utf16> szTargetName,
            Pointer<Utf16> TaskIdentifier,
            int TaskStatus,
          )>()(
        ptr.ref.lpVtbl,
        szTargetName,
        TaskIdentifier,
        TaskStatus,
      );

  int OnReportTasks(
    Pointer<Utf16> szHostName,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(8)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Utf16> szHostName,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Utf16> szHostName,
          )>()(
        ptr.ref.lpVtbl,
        szHostName,
      );
}
