// IComStaThreadPoolKnobs2.dart

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

import '../../system/componentservices/IComStaThreadPoolKnobs.dart';
import '../../foundation/structs.g.dart';

/// @nodoc
const IID_IComStaThreadPoolKnobs2 = '{73707523-FF9A-4974-BF84-2108DC213740}';

/// {@category Interface}
/// {@category com}
class IComStaThreadPoolKnobs2 extends IComStaThreadPoolKnobs {
  // vtable begins at 14, is 10 entries long.
  IComStaThreadPoolKnobs2(Pointer<COMObject> ptr) : super(ptr);

  int GetMaxCPULoad(
    Pointer<Uint32> pdwLoad,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(14)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Uint32> pdwLoad,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Uint32> pdwLoad,
          )>()(
        ptr.ref.lpVtbl,
        pdwLoad,
      );

  int SetMaxCPULoad(
    int pdwLoad,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(15)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Int32 pdwLoad,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int pdwLoad,
          )>()(
        ptr.ref.lpVtbl,
        pdwLoad,
      );

  int GetCPUMetricEnabled(
    Pointer<Int32> pbMetricEnabled,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(16)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Int32> pbMetricEnabled,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Int32> pbMetricEnabled,
          )>()(
        ptr.ref.lpVtbl,
        pbMetricEnabled,
      );

  int SetCPUMetricEnabled(
    int bMetricEnabled,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(17)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Int32 bMetricEnabled,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int bMetricEnabled,
          )>()(
        ptr.ref.lpVtbl,
        bMetricEnabled,
      );

  int GetCreateThreadsAggressively(
    Pointer<Int32> pbMetricEnabled,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(18)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Int32> pbMetricEnabled,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Int32> pbMetricEnabled,
          )>()(
        ptr.ref.lpVtbl,
        pbMetricEnabled,
      );

  int SetCreateThreadsAggressively(
    int bMetricEnabled,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(19)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Int32 bMetricEnabled,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int bMetricEnabled,
          )>()(
        ptr.ref.lpVtbl,
        bMetricEnabled,
      );

  int GetMaxCSR(
    Pointer<Uint32> pdwCSR,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(20)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Uint32> pdwCSR,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Uint32> pdwCSR,
          )>()(
        ptr.ref.lpVtbl,
        pdwCSR,
      );

  int SetMaxCSR(
    int dwCSR,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(21)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Int32 dwCSR,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int dwCSR,
          )>()(
        ptr.ref.lpVtbl,
        dwCSR,
      );

  int GetWaitTimeForThreadCleanup(
    Pointer<Uint32> pdwThreadCleanupWaitTime,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(22)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Uint32> pdwThreadCleanupWaitTime,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Uint32> pdwThreadCleanupWaitTime,
          )>()(
        ptr.ref.lpVtbl,
        pdwThreadCleanupWaitTime,
      );

  int SetWaitTimeForThreadCleanup(
    int dwThreadCleanupWaitTime,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(23)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Int32 dwThreadCleanupWaitTime,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int dwThreadCleanupWaitTime,
          )>()(
        ptr.ref.lpVtbl,
        dwThreadCleanupWaitTime,
      );
}
