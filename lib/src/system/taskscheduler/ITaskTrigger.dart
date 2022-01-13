// ITaskTrigger.dart

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
import '../../system/taskscheduler/structs.g.dart';
import '../../foundation/structs.g.dart';

/// @nodoc
const IID_ITaskTrigger = '{148BD52B-A2AB-11CE-B11F-00AA00530503}';

/// {@category Interface}
/// {@category com}
class ITaskTrigger extends IUnknown {
  // vtable begins at 3, is 3 entries long.
  ITaskTrigger(Pointer<COMObject> ptr) : super(ptr);

  int SetTrigger(
    Pointer<TASK_TRIGGER> pTrigger,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(3)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<TASK_TRIGGER> pTrigger,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<TASK_TRIGGER> pTrigger,
          )>()(
        ptr.ref.lpVtbl,
        pTrigger,
      );

  int GetTrigger(
    Pointer<TASK_TRIGGER> pTrigger,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(4)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<TASK_TRIGGER> pTrigger,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<TASK_TRIGGER> pTrigger,
          )>()(
        ptr.ref.lpVtbl,
        pTrigger,
      );

  int GetTriggerString(
    Pointer<Pointer<Utf16>> ppwszTrigger,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(5)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Pointer<Utf16>> ppwszTrigger,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Pointer<Utf16>> ppwszTrigger,
          )>()(
        ptr.ref.lpVtbl,
        ppwszTrigger,
      );
}
