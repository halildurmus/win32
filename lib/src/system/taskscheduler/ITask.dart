// ITask.dart

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

import '../../system/taskscheduler/IScheduledWorkItem.dart';
import '../../foundation/structs.g.dart';

/// @nodoc
const IID_ITask = '{148BD524-A2AB-11CE-B11F-00AA00530503}';

/// {@category Interface}
/// {@category com}
class ITask extends IScheduledWorkItem {
  // vtable begins at 32, is 12 entries long.
  ITask(Pointer<COMObject> ptr) : super(ptr);

  int SetApplicationName(
    Pointer<Utf16> pwszApplicationName,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(32)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Utf16> pwszApplicationName,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Utf16> pwszApplicationName,
          )>()(
        ptr.ref.lpVtbl,
        pwszApplicationName,
      );

  int GetApplicationName(
    Pointer<Pointer<Utf16>> ppwszApplicationName,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(33)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Pointer<Utf16>> ppwszApplicationName,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Pointer<Utf16>> ppwszApplicationName,
          )>()(
        ptr.ref.lpVtbl,
        ppwszApplicationName,
      );

  int SetParameters(
    Pointer<Utf16> pwszParameters,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(34)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Utf16> pwszParameters,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Utf16> pwszParameters,
          )>()(
        ptr.ref.lpVtbl,
        pwszParameters,
      );

  int GetParameters(
    Pointer<Pointer<Utf16>> ppwszParameters,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(35)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Pointer<Utf16>> ppwszParameters,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Pointer<Utf16>> ppwszParameters,
          )>()(
        ptr.ref.lpVtbl,
        ppwszParameters,
      );

  int SetWorkingDirectory(
    Pointer<Utf16> pwszWorkingDirectory,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(36)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Utf16> pwszWorkingDirectory,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Utf16> pwszWorkingDirectory,
          )>()(
        ptr.ref.lpVtbl,
        pwszWorkingDirectory,
      );

  int GetWorkingDirectory(
    Pointer<Pointer<Utf16>> ppwszWorkingDirectory,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(37)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Pointer<Utf16>> ppwszWorkingDirectory,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Pointer<Utf16>> ppwszWorkingDirectory,
          )>()(
        ptr.ref.lpVtbl,
        ppwszWorkingDirectory,
      );

  int SetPriority(
    int dwPriority,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(38)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Uint32 dwPriority,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int dwPriority,
          )>()(
        ptr.ref.lpVtbl,
        dwPriority,
      );

  int GetPriority(
    Pointer<Uint32> pdwPriority,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(39)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Uint32> pdwPriority,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Uint32> pdwPriority,
          )>()(
        ptr.ref.lpVtbl,
        pdwPriority,
      );

  int SetTaskFlags(
    int dwFlags,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(40)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Uint32 dwFlags,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int dwFlags,
          )>()(
        ptr.ref.lpVtbl,
        dwFlags,
      );

  int GetTaskFlags(
    Pointer<Uint32> pdwFlags,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(41)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Uint32> pdwFlags,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Uint32> pdwFlags,
          )>()(
        ptr.ref.lpVtbl,
        pdwFlags,
      );

  int SetMaxRunTime(
    int dwMaxRunTimeMS,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(42)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Uint32 dwMaxRunTimeMS,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int dwMaxRunTimeMS,
          )>()(
        ptr.ref.lpVtbl,
        dwMaxRunTimeMS,
      );

  int GetMaxRunTime(
    Pointer<Uint32> pdwMaxRunTimeMS,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(43)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Uint32> pdwMaxRunTimeMS,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Uint32> pdwMaxRunTimeMS,
          )>()(
        ptr.ref.lpVtbl,
        pdwMaxRunTimeMS,
      );
}
