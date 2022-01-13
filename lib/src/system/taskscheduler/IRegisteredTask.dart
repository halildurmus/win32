// IRegisteredTask.dart

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

import '../../system/com/IDispatch.dart';
import '../../foundation/structs.g.dart';
import '../../system/taskscheduler/structs.g.dart';
import '../../specialTypes.dart';
import '../../system/taskscheduler/IRunningTask.dart';
import '../../system/taskscheduler/IRunningTaskCollection.dart';
import '../../system/taskscheduler/ITaskDefinition.dart';

/// @nodoc
const IID_IRegisteredTask = '{9C86F320-DEE3-4DD1-B972-A303F26B061E}';

/// {@category Interface}
/// {@category com}
class IRegisteredTask extends IDispatch {
  // vtable begins at 7, is 18 entries long.
  IRegisteredTask(Pointer<COMObject> ptr) : super(ptr);

  Pointer<Utf16> get Name {
    final retValuePtr = calloc<Pointer<Utf16>>();

    try {
      final hr = ptr.ref.lpVtbl.value
          .elementAt(7)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Pointer<Utf16>> pName,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Pointer<Utf16>> pName,
          )>()(ptr.ref.lpVtbl, retValuePtr);

      if (FAILED(hr)) throw WindowsException(hr);

      final retValue = retValuePtr.value;
      return retValue;
    } finally {
      free(retValuePtr);
    }
  }

  Pointer<Utf16> get Path {
    final retValuePtr = calloc<Pointer<Utf16>>();

    try {
      final hr = ptr.ref.lpVtbl.value
          .elementAt(8)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Pointer<Utf16>> pPath,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Pointer<Utf16>> pPath,
          )>()(ptr.ref.lpVtbl, retValuePtr);

      if (FAILED(hr)) throw WindowsException(hr);

      final retValue = retValuePtr.value;
      return retValue;
    } finally {
      free(retValuePtr);
    }
  }

  int get State {
    final retValuePtr = calloc<Int32>();

    try {
      final hr = ptr.ref.lpVtbl.value
          .elementAt(9)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Int32> pState,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Int32> pState,
          )>()(ptr.ref.lpVtbl, retValuePtr);

      if (FAILED(hr)) throw WindowsException(hr);

      final retValue = retValuePtr.value;
      return retValue;
    } finally {
      free(retValuePtr);
    }
  }

  int get Enabled {
    final retValuePtr = calloc<Int16>();

    try {
      final hr = ptr.ref.lpVtbl.value
          .elementAt(10)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Int16> pEnabled,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Int16> pEnabled,
          )>()(ptr.ref.lpVtbl, retValuePtr);

      if (FAILED(hr)) throw WindowsException(hr);

      final retValue = retValuePtr.value;
      return retValue;
    } finally {
      free(retValuePtr);
    }
  }

  set Enabled(int value) {
    final hr = ptr.ref.lpVtbl.value
        .elementAt(11)
        .cast<
            Pointer<
                NativeFunction<
                    Int32 Function(
          Pointer,
          Int16 enabled,
        )>>>()
        .value
        .asFunction<
            int Function(
          Pointer,
          int enabled,
        )>()(ptr.ref.lpVtbl, value);

    if (FAILED(hr)) throw WindowsException(hr);
  }

  int Run(
    VARIANT params,
    Pointer<Pointer<COMObject>> ppRunningTask,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(12)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            VARIANT params,
            Pointer<Pointer<COMObject>> ppRunningTask,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            VARIANT params,
            Pointer<Pointer<COMObject>> ppRunningTask,
          )>()(
        ptr.ref.lpVtbl,
        params,
        ppRunningTask,
      );

  int RunEx(
    VARIANT params,
    int flags,
    int sessionID,
    Pointer<Utf16> user,
    Pointer<Pointer<COMObject>> ppRunningTask,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(13)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            VARIANT params,
            Int32 flags,
            Int32 sessionID,
            Pointer<Utf16> user,
            Pointer<Pointer<COMObject>> ppRunningTask,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            VARIANT params,
            int flags,
            int sessionID,
            Pointer<Utf16> user,
            Pointer<Pointer<COMObject>> ppRunningTask,
          )>()(
        ptr.ref.lpVtbl,
        params,
        flags,
        sessionID,
        user,
        ppRunningTask,
      );

  int GetInstances(
    int flags,
    Pointer<Pointer<COMObject>> ppRunningTasks,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(14)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Int32 flags,
            Pointer<Pointer<COMObject>> ppRunningTasks,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int flags,
            Pointer<Pointer<COMObject>> ppRunningTasks,
          )>()(
        ptr.ref.lpVtbl,
        flags,
        ppRunningTasks,
      );

  double get LastRunTime {
    final retValuePtr = calloc<Double>();

    try {
      final hr = ptr.ref.lpVtbl.value
          .elementAt(15)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Double> pLastRunTime,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Double> pLastRunTime,
          )>()(ptr.ref.lpVtbl, retValuePtr);

      if (FAILED(hr)) throw WindowsException(hr);

      final retValue = retValuePtr.value;
      return retValue;
    } finally {
      free(retValuePtr);
    }
  }

  int get LastTaskResult {
    final retValuePtr = calloc<Int32>();

    try {
      final hr = ptr.ref.lpVtbl.value
          .elementAt(16)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Int32> pLastTaskResult,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Int32> pLastTaskResult,
          )>()(ptr.ref.lpVtbl, retValuePtr);

      if (FAILED(hr)) throw WindowsException(hr);

      final retValue = retValuePtr.value;
      return retValue;
    } finally {
      free(retValuePtr);
    }
  }

  int get NumberOfMissedRuns {
    final retValuePtr = calloc<Int32>();

    try {
      final hr = ptr.ref.lpVtbl.value
          .elementAt(17)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Int32> pNumberOfMissedRuns,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Int32> pNumberOfMissedRuns,
          )>()(ptr.ref.lpVtbl, retValuePtr);

      if (FAILED(hr)) throw WindowsException(hr);

      final retValue = retValuePtr.value;
      return retValue;
    } finally {
      free(retValuePtr);
    }
  }

  double get NextRunTime {
    final retValuePtr = calloc<Double>();

    try {
      final hr = ptr.ref.lpVtbl.value
          .elementAt(18)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Double> pNextRunTime,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Double> pNextRunTime,
          )>()(ptr.ref.lpVtbl, retValuePtr);

      if (FAILED(hr)) throw WindowsException(hr);

      final retValue = retValuePtr.value;
      return retValue;
    } finally {
      free(retValuePtr);
    }
  }

  Pointer<COMObject> get Definition {
    final retValuePtr = calloc<Pointer<COMObject>>();

    try {
      final hr = ptr.ref.lpVtbl.value
          .elementAt(19)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Pointer<COMObject>> ppDefinition,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Pointer<COMObject>> ppDefinition,
          )>()(ptr.ref.lpVtbl, retValuePtr);

      if (FAILED(hr)) throw WindowsException(hr);

      final retValue = retValuePtr.value;
      return retValue;
    } finally {
      free(retValuePtr);
    }
  }

  Pointer<Utf16> get Xml {
    final retValuePtr = calloc<Pointer<Utf16>>();

    try {
      final hr = ptr.ref.lpVtbl.value
          .elementAt(20)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Pointer<Utf16>> pXml,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Pointer<Utf16>> pXml,
          )>()(ptr.ref.lpVtbl, retValuePtr);

      if (FAILED(hr)) throw WindowsException(hr);

      final retValue = retValuePtr.value;
      return retValue;
    } finally {
      free(retValuePtr);
    }
  }

  int GetSecurityDescriptor(
    int securityInformation,
    Pointer<Pointer<Utf16>> pSddl,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(21)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Int32 securityInformation,
            Pointer<Pointer<Utf16>> pSddl,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int securityInformation,
            Pointer<Pointer<Utf16>> pSddl,
          )>()(
        ptr.ref.lpVtbl,
        securityInformation,
        pSddl,
      );

  int SetSecurityDescriptor(
    Pointer<Utf16> sddl,
    int flags,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(22)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Utf16> sddl,
            Int32 flags,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Utf16> sddl,
            int flags,
          )>()(
        ptr.ref.lpVtbl,
        sddl,
        flags,
      );

  int Stop(
    int flags,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(23)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Int32 flags,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int flags,
          )>()(
        ptr.ref.lpVtbl,
        flags,
      );

  int GetRunTimes(
    Pointer<SYSTEMTIME> pstStart,
    Pointer<SYSTEMTIME> pstEnd,
    Pointer<Uint32> pCount,
    Pointer<Pointer<SYSTEMTIME>> pRunTimes,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(24)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<SYSTEMTIME> pstStart,
            Pointer<SYSTEMTIME> pstEnd,
            Pointer<Uint32> pCount,
            Pointer<Pointer<SYSTEMTIME>> pRunTimes,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<SYSTEMTIME> pstStart,
            Pointer<SYSTEMTIME> pstEnd,
            Pointer<Uint32> pCount,
            Pointer<Pointer<SYSTEMTIME>> pRunTimes,
          )>()(
        ptr.ref.lpVtbl,
        pstStart,
        pstEnd,
        pCount,
        pRunTimes,
      );
}
