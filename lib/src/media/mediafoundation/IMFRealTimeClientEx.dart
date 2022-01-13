// IMFRealTimeClientEx.dart

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
const IID_IMFRealTimeClientEx = '{03910848-AB16-4611-B100-17B88AE2F248}';

/// {@category Interface}
/// {@category com}
class IMFRealTimeClientEx extends IUnknown {
  // vtable begins at 3, is 3 entries long.
  IMFRealTimeClientEx(Pointer<COMObject> ptr) : super(ptr);

  int RegisterThreadsEx(
    Pointer<Uint32> pdwTaskIndex,
    Pointer<Utf16> wszClassName,
    int lBasePriority,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(3)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Uint32> pdwTaskIndex,
            Pointer<Utf16> wszClassName,
            Int32 lBasePriority,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Uint32> pdwTaskIndex,
            Pointer<Utf16> wszClassName,
            int lBasePriority,
          )>()(
        ptr.ref.lpVtbl,
        pdwTaskIndex,
        wszClassName,
        lBasePriority,
      );

  int UnregisterThreads() => ptr.ref.lpVtbl.value
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

  int SetWorkQueueEx(
    int dwMultithreadedWorkQueueId,
    int lWorkItemBasePriority,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(5)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Uint32 dwMultithreadedWorkQueueId,
            Int32 lWorkItemBasePriority,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int dwMultithreadedWorkQueueId,
            int lWorkItemBasePriority,
          )>()(
        ptr.ref.lpVtbl,
        dwMultithreadedWorkQueueId,
        lWorkItemBasePriority,
      );
}
