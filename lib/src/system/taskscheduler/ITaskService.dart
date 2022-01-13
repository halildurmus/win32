// ITaskService.dart

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
import '../../system/taskscheduler/ITaskFolder.dart';
import '../../system/taskscheduler/IRunningTaskCollection.dart';
import '../../system/taskscheduler/ITaskDefinition.dart';
import '../../specialTypes.dart';

/// @nodoc
const IID_ITaskService = '{2FABA4C7-4DA9-4013-9697-20CC3FD40F85}';

/// {@category Interface}
/// {@category com}
class ITaskService extends IDispatch {
  // vtable begins at 7, is 9 entries long.
  ITaskService(Pointer<COMObject> ptr) : super(ptr);

  int GetFolder(
    Pointer<Utf16> path,
    Pointer<Pointer<COMObject>> ppFolder,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(7)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Utf16> path,
            Pointer<Pointer<COMObject>> ppFolder,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Utf16> path,
            Pointer<Pointer<COMObject>> ppFolder,
          )>()(
        ptr.ref.lpVtbl,
        path,
        ppFolder,
      );

  int GetRunningTasks(
    int flags,
    Pointer<Pointer<COMObject>> ppRunningTasks,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(8)
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

  int NewTask(
    int flags,
    Pointer<Pointer<COMObject>> ppDefinition,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(9)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Uint32 flags,
            Pointer<Pointer<COMObject>> ppDefinition,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int flags,
            Pointer<Pointer<COMObject>> ppDefinition,
          )>()(
        ptr.ref.lpVtbl,
        flags,
        ppDefinition,
      );

  int Connect(
    VARIANT serverName,
    VARIANT user,
    VARIANT domain,
    VARIANT password,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(10)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            VARIANT serverName,
            VARIANT user,
            VARIANT domain,
            VARIANT password,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            VARIANT serverName,
            VARIANT user,
            VARIANT domain,
            VARIANT password,
          )>()(
        ptr.ref.lpVtbl,
        serverName,
        user,
        domain,
        password,
      );

  int get Connected {
    final retValuePtr = calloc<Int16>();

    try {
      final hr = ptr.ref.lpVtbl.value
          .elementAt(11)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Int16> pConnected,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Int16> pConnected,
          )>()(ptr.ref.lpVtbl, retValuePtr);

      if (FAILED(hr)) throw WindowsException(hr);

      final retValue = retValuePtr.value;
      return retValue;
    } finally {
      free(retValuePtr);
    }
  }

  Pointer<Utf16> get TargetServer {
    final retValuePtr = calloc<Pointer<Utf16>>();

    try {
      final hr = ptr.ref.lpVtbl.value
          .elementAt(12)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Pointer<Utf16>> pServer,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Pointer<Utf16>> pServer,
          )>()(ptr.ref.lpVtbl, retValuePtr);

      if (FAILED(hr)) throw WindowsException(hr);

      final retValue = retValuePtr.value;
      return retValue;
    } finally {
      free(retValuePtr);
    }
  }

  Pointer<Utf16> get ConnectedUser {
    final retValuePtr = calloc<Pointer<Utf16>>();

    try {
      final hr = ptr.ref.lpVtbl.value
          .elementAt(13)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Pointer<Utf16>> pUser,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Pointer<Utf16>> pUser,
          )>()(ptr.ref.lpVtbl, retValuePtr);

      if (FAILED(hr)) throw WindowsException(hr);

      final retValue = retValuePtr.value;
      return retValue;
    } finally {
      free(retValuePtr);
    }
  }

  Pointer<Utf16> get ConnectedDomain {
    final retValuePtr = calloc<Pointer<Utf16>>();

    try {
      final hr = ptr.ref.lpVtbl.value
          .elementAt(14)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Pointer<Utf16>> pDomain,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Pointer<Utf16>> pDomain,
          )>()(ptr.ref.lpVtbl, retValuePtr);

      if (FAILED(hr)) throw WindowsException(hr);

      final retValue = retValuePtr.value;
      return retValue;
    } finally {
      free(retValuePtr);
    }
  }

  int get HighestVersion {
    final retValuePtr = calloc<Uint32>();

    try {
      final hr = ptr.ref.lpVtbl.value
          .elementAt(15)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Uint32> pVersion,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Uint32> pVersion,
          )>()(ptr.ref.lpVtbl, retValuePtr);

      if (FAILED(hr)) throw WindowsException(hr);

      final retValue = retValuePtr.value;
      return retValue;
    } finally {
      free(retValuePtr);
    }
  }
}
