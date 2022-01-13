// ITaskFolder.dart

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
import '../../system/taskscheduler/ITaskFolderCollection.dart';
import '../../specialTypes.dart';
import '../../system/taskscheduler/IRegisteredTask.dart';
import '../../system/taskscheduler/IRegisteredTaskCollection.dart';
import '../../system/taskscheduler/structs.g.dart';
import '../../system/taskscheduler/ITaskDefinition.dart';

/// @nodoc
const IID_ITaskFolder = '{8CFAC062-A080-4C15-9A88-AA7C2AF80DFC}';

/// {@category Interface}
/// {@category com}
class ITaskFolder extends IDispatch {
  // vtable begins at 7, is 13 entries long.
  ITaskFolder(Pointer<COMObject> ptr) : super(ptr);

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

  int GetFolder(
    Pointer<Utf16> path,
    Pointer<Pointer<COMObject>> ppFolder,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(9)
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

  int GetFolders(
    int flags,
    Pointer<Pointer<COMObject>> ppFolders,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(10)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Int32 flags,
            Pointer<Pointer<COMObject>> ppFolders,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int flags,
            Pointer<Pointer<COMObject>> ppFolders,
          )>()(
        ptr.ref.lpVtbl,
        flags,
        ppFolders,
      );

  int CreateFolder(
    Pointer<Utf16> subFolderName,
    VARIANT sddl,
    Pointer<Pointer<COMObject>> ppFolder,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(11)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Utf16> subFolderName,
            VARIANT sddl,
            Pointer<Pointer<COMObject>> ppFolder,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Utf16> subFolderName,
            VARIANT sddl,
            Pointer<Pointer<COMObject>> ppFolder,
          )>()(
        ptr.ref.lpVtbl,
        subFolderName,
        sddl,
        ppFolder,
      );

  int DeleteFolder(
    Pointer<Utf16> subFolderName,
    int flags,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(12)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Utf16> subFolderName,
            Int32 flags,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Utf16> subFolderName,
            int flags,
          )>()(
        ptr.ref.lpVtbl,
        subFolderName,
        flags,
      );

  int GetTask(
    Pointer<Utf16> path,
    Pointer<Pointer<COMObject>> ppTask,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(13)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Utf16> path,
            Pointer<Pointer<COMObject>> ppTask,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Utf16> path,
            Pointer<Pointer<COMObject>> ppTask,
          )>()(
        ptr.ref.lpVtbl,
        path,
        ppTask,
      );

  int GetTasks(
    int flags,
    Pointer<Pointer<COMObject>> ppTasks,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(14)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Int32 flags,
            Pointer<Pointer<COMObject>> ppTasks,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int flags,
            Pointer<Pointer<COMObject>> ppTasks,
          )>()(
        ptr.ref.lpVtbl,
        flags,
        ppTasks,
      );

  int DeleteTask(
    Pointer<Utf16> name,
    int flags,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(15)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Utf16> name,
            Int32 flags,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Utf16> name,
            int flags,
          )>()(
        ptr.ref.lpVtbl,
        name,
        flags,
      );

  int RegisterTask(
    Pointer<Utf16> path,
    Pointer<Utf16> xmlText,
    int flags,
    VARIANT userId,
    VARIANT password,
    int logonType,
    VARIANT sddl,
    Pointer<Pointer<COMObject>> ppTask,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(16)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Utf16> path,
            Pointer<Utf16> xmlText,
            Int32 flags,
            VARIANT userId,
            VARIANT password,
            Int32 logonType,
            VARIANT sddl,
            Pointer<Pointer<COMObject>> ppTask,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Utf16> path,
            Pointer<Utf16> xmlText,
            int flags,
            VARIANT userId,
            VARIANT password,
            int logonType,
            VARIANT sddl,
            Pointer<Pointer<COMObject>> ppTask,
          )>()(
        ptr.ref.lpVtbl,
        path,
        xmlText,
        flags,
        userId,
        password,
        logonType,
        sddl,
        ppTask,
      );

  int RegisterTaskDefinition(
    Pointer<Utf16> path,
    Pointer<COMObject> pDefinition,
    int flags,
    VARIANT userId,
    VARIANT password,
    int logonType,
    VARIANT sddl,
    Pointer<Pointer<COMObject>> ppTask,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(17)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Utf16> path,
            Pointer<COMObject> pDefinition,
            Int32 flags,
            VARIANT userId,
            VARIANT password,
            Int32 logonType,
            VARIANT sddl,
            Pointer<Pointer<COMObject>> ppTask,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Utf16> path,
            Pointer<COMObject> pDefinition,
            int flags,
            VARIANT userId,
            VARIANT password,
            int logonType,
            VARIANT sddl,
            Pointer<Pointer<COMObject>> ppTask,
          )>()(
        ptr.ref.lpVtbl,
        path,
        pDefinition,
        flags,
        userId,
        password,
        logonType,
        sddl,
        ppTask,
      );

  int GetSecurityDescriptor(
    int securityInformation,
    Pointer<Pointer<Utf16>> pSddl,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(18)
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
          .elementAt(19)
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
}
