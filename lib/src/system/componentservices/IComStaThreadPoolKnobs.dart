// IComStaThreadPoolKnobs.dart

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
const IID_IComStaThreadPoolKnobs = '{324B64FA-33B6-11D2-98B7-00C04F8EE1C4}';

/// {@category Interface}
/// {@category com}
class IComStaThreadPoolKnobs extends IUnknown {
  // vtable begins at 3, is 11 entries long.
  IComStaThreadPoolKnobs(Pointer<COMObject> ptr) : super(ptr);

  int SetMinThreadCount(
    int minThreads,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(3)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Uint32 minThreads,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int minThreads,
          )>()(
        ptr.ref.lpVtbl,
        minThreads,
      );

  int GetMinThreadCount(
    Pointer<Uint32> minThreads,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(4)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Uint32> minThreads,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Uint32> minThreads,
          )>()(
        ptr.ref.lpVtbl,
        minThreads,
      );

  int SetMaxThreadCount(
    int maxThreads,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(5)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Uint32 maxThreads,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int maxThreads,
          )>()(
        ptr.ref.lpVtbl,
        maxThreads,
      );

  int GetMaxThreadCount(
    Pointer<Uint32> maxThreads,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(6)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Uint32> maxThreads,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Uint32> maxThreads,
          )>()(
        ptr.ref.lpVtbl,
        maxThreads,
      );

  int SetActivityPerThread(
    int activitiesPerThread,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(7)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Uint32 activitiesPerThread,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int activitiesPerThread,
          )>()(
        ptr.ref.lpVtbl,
        activitiesPerThread,
      );

  int GetActivityPerThread(
    Pointer<Uint32> activitiesPerThread,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(8)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Uint32> activitiesPerThread,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Uint32> activitiesPerThread,
          )>()(
        ptr.ref.lpVtbl,
        activitiesPerThread,
      );

  int SetActivityRatio(
    double activityRatio,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(9)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Double activityRatio,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            double activityRatio,
          )>()(
        ptr.ref.lpVtbl,
        activityRatio,
      );

  int GetActivityRatio(
    Pointer<Double> activityRatio,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(10)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Double> activityRatio,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Double> activityRatio,
          )>()(
        ptr.ref.lpVtbl,
        activityRatio,
      );

  int GetThreadCount(
    Pointer<Uint32> pdwThreads,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(11)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Uint32> pdwThreads,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Uint32> pdwThreads,
          )>()(
        ptr.ref.lpVtbl,
        pdwThreads,
      );

  int GetQueueDepth(
    Pointer<Uint32> pdwQDepth,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(12)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Uint32> pdwQDepth,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Uint32> pdwQDepth,
          )>()(
        ptr.ref.lpVtbl,
        pdwQDepth,
      );

  int SetQueueDepth(
    int dwQDepth,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(13)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Int32 dwQDepth,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int dwQDepth,
          )>()(
        ptr.ref.lpVtbl,
        dwQDepth,
      );
}
