// ITaskHandlerStatus.dart

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

/// @nodoc
const IID_ITaskHandlerStatus = '{EAEC7A8F-27A0-4DDC-8675-14726A01A38A}';

/// {@category Interface}
/// {@category com}
class ITaskHandlerStatus extends IUnknown {
  // vtable begins at 3, is 2 entries long.
  ITaskHandlerStatus(Pointer<COMObject> ptr) : super(ptr);

  int UpdateStatus(
    int percentComplete,
    Pointer<Utf16> statusMessage,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(3)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Int16 percentComplete,
            Pointer<Utf16> statusMessage,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int percentComplete,
            Pointer<Utf16> statusMessage,
          )>()(
        ptr.ref.lpVtbl,
        percentComplete,
        statusMessage,
      );

  int TaskCompleted(
    int taskErrCode,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(4)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Int32 taskErrCode,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int taskErrCode,
          )>()(
        ptr.ref.lpVtbl,
        taskErrCode,
      );
}
