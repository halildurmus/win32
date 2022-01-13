// IPackageDebugSettings.dart

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
import '../../ui/shell/IPackageExecutionStateChangeNotification.dart';

/// @nodoc
const IID_IPackageDebugSettings = '{F27C3930-8029-4AD1-94E3-3DBA417810C1}';

/// {@category Interface}
/// {@category com}
class IPackageDebugSettings extends IUnknown {
  // vtable begins at 3, is 15 entries long.
  IPackageDebugSettings(Pointer<COMObject> ptr) : super(ptr);

  int EnableDebugging(
    Pointer<Utf16> packageFullName,
    Pointer<Utf16> debuggerCommandLine,
    Pointer<Utf16> environment,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(3)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Utf16> packageFullName,
            Pointer<Utf16> debuggerCommandLine,
            Pointer<Utf16> environment,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Utf16> packageFullName,
            Pointer<Utf16> debuggerCommandLine,
            Pointer<Utf16> environment,
          )>()(
        ptr.ref.lpVtbl,
        packageFullName,
        debuggerCommandLine,
        environment,
      );

  int DisableDebugging(
    Pointer<Utf16> packageFullName,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(4)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Utf16> packageFullName,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Utf16> packageFullName,
          )>()(
        ptr.ref.lpVtbl,
        packageFullName,
      );

  int Suspend(
    Pointer<Utf16> packageFullName,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(5)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Utf16> packageFullName,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Utf16> packageFullName,
          )>()(
        ptr.ref.lpVtbl,
        packageFullName,
      );

  int Resume(
    Pointer<Utf16> packageFullName,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(6)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Utf16> packageFullName,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Utf16> packageFullName,
          )>()(
        ptr.ref.lpVtbl,
        packageFullName,
      );

  int TerminateAllProcesses(
    Pointer<Utf16> packageFullName,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(7)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Utf16> packageFullName,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Utf16> packageFullName,
          )>()(
        ptr.ref.lpVtbl,
        packageFullName,
      );

  int SetTargetSessionId(
    int sessionId,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(8)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Uint32 sessionId,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int sessionId,
          )>()(
        ptr.ref.lpVtbl,
        sessionId,
      );

  int EnumerateBackgroundTasks(
    Pointer<Utf16> packageFullName,
    Pointer<Uint32> taskCount,
    Pointer<Pointer<GUID>> taskIds,
    Pointer<Pointer<Pointer<Utf16>>> taskNames,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(9)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Utf16> packageFullName,
            Pointer<Uint32> taskCount,
            Pointer<Pointer<GUID>> taskIds,
            Pointer<Pointer<Pointer<Utf16>>> taskNames,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Utf16> packageFullName,
            Pointer<Uint32> taskCount,
            Pointer<Pointer<GUID>> taskIds,
            Pointer<Pointer<Pointer<Utf16>>> taskNames,
          )>()(
        ptr.ref.lpVtbl,
        packageFullName,
        taskCount,
        taskIds,
        taskNames,
      );

  int ActivateBackgroundTask(
    Pointer<GUID> taskId,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(10)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<GUID> taskId,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<GUID> taskId,
          )>()(
        ptr.ref.lpVtbl,
        taskId,
      );

  int StartServicing(
    Pointer<Utf16> packageFullName,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(11)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Utf16> packageFullName,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Utf16> packageFullName,
          )>()(
        ptr.ref.lpVtbl,
        packageFullName,
      );

  int StopServicing(
    Pointer<Utf16> packageFullName,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(12)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Utf16> packageFullName,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Utf16> packageFullName,
          )>()(
        ptr.ref.lpVtbl,
        packageFullName,
      );

  int StartSessionRedirection(
    Pointer<Utf16> packageFullName,
    int sessionId,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(13)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Utf16> packageFullName,
            Uint32 sessionId,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Utf16> packageFullName,
            int sessionId,
          )>()(
        ptr.ref.lpVtbl,
        packageFullName,
        sessionId,
      );

  int StopSessionRedirection(
    Pointer<Utf16> packageFullName,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(14)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Utf16> packageFullName,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Utf16> packageFullName,
          )>()(
        ptr.ref.lpVtbl,
        packageFullName,
      );

  int GetPackageExecutionState(
    Pointer<Utf16> packageFullName,
    Pointer<Int32> packageExecutionState,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(15)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Utf16> packageFullName,
            Pointer<Int32> packageExecutionState,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Utf16> packageFullName,
            Pointer<Int32> packageExecutionState,
          )>()(
        ptr.ref.lpVtbl,
        packageFullName,
        packageExecutionState,
      );

  int RegisterForPackageStateChanges(
    Pointer<Utf16> packageFullName,
    Pointer<COMObject> pPackageExecutionStateChangeNotification,
    Pointer<Uint32> pdwCookie,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(16)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Utf16> packageFullName,
            Pointer<COMObject> pPackageExecutionStateChangeNotification,
            Pointer<Uint32> pdwCookie,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Utf16> packageFullName,
            Pointer<COMObject> pPackageExecutionStateChangeNotification,
            Pointer<Uint32> pdwCookie,
          )>()(
        ptr.ref.lpVtbl,
        packageFullName,
        pPackageExecutionStateChangeNotification,
        pdwCookie,
      );

  int UnregisterForPackageStateChanges(
    int dwCookie,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(17)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Uint32 dwCookie,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int dwCookie,
          )>()(
        ptr.ref.lpVtbl,
        dwCookie,
      );
}

/// @nodoc
const CLSID_PackageDebugSettings = '{B1AEC16F-2383-4852-B0E9-8F0B1DC66B4D}';

/// {@category com}
class PackageDebugSettings extends IPackageDebugSettings {
  PackageDebugSettings(Pointer<COMObject> ptr) : super(ptr);

  factory PackageDebugSettings.createInstance() {
    final ptr = calloc<COMObject>();
    final clsid = calloc<GUID>()..ref.setGUID(CLSID_PackageDebugSettings);
    final iid = calloc<GUID>()..ref.setGUID(IID_IPackageDebugSettings);

    try {
      final hr = CoCreateInstance(clsid, nullptr, CLSCTX_ALL, iid, ptr.cast());

      if (FAILED(hr)) throw WindowsException(hr);

      return PackageDebugSettings(ptr);
    } finally {
      free(clsid);
      free(iid);
    }
  }
}
