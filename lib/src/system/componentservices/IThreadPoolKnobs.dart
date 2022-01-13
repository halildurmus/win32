// IThreadPoolKnobs.dart

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
const IID_IThreadPoolKnobs = '{51372AF7-CAE7-11CF-BE81-00AA00A2FA25}';

/// {@category Interface}
/// {@category com}
class IThreadPoolKnobs extends IUnknown {
  // vtable begins at 3, is 10 entries long.
  IThreadPoolKnobs(Pointer<COMObject> ptr) : super(ptr);

  int GetMaxThreads(
    Pointer<Int32> plcMaxThreads,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(3)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Int32> plcMaxThreads,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Int32> plcMaxThreads,
          )>()(
        ptr.ref.lpVtbl,
        plcMaxThreads,
      );

  int GetCurrentThreads(
    Pointer<Int32> plcCurrentThreads,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(4)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Int32> plcCurrentThreads,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Int32> plcCurrentThreads,
          )>()(
        ptr.ref.lpVtbl,
        plcCurrentThreads,
      );

  int SetMaxThreads(
    int lcMaxThreads,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(5)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Int32 lcMaxThreads,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int lcMaxThreads,
          )>()(
        ptr.ref.lpVtbl,
        lcMaxThreads,
      );

  int GetDeleteDelay(
    Pointer<Int32> pmsecDeleteDelay,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(6)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Int32> pmsecDeleteDelay,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Int32> pmsecDeleteDelay,
          )>()(
        ptr.ref.lpVtbl,
        pmsecDeleteDelay,
      );

  int SetDeleteDelay(
    int msecDeleteDelay,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(7)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Int32 msecDeleteDelay,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int msecDeleteDelay,
          )>()(
        ptr.ref.lpVtbl,
        msecDeleteDelay,
      );

  int GetMaxQueuedRequests(
    Pointer<Int32> plcMaxQueuedRequests,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(8)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Int32> plcMaxQueuedRequests,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Int32> plcMaxQueuedRequests,
          )>()(
        ptr.ref.lpVtbl,
        plcMaxQueuedRequests,
      );

  int GetCurrentQueuedRequests(
    Pointer<Int32> plcCurrentQueuedRequests,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(9)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Int32> plcCurrentQueuedRequests,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Int32> plcCurrentQueuedRequests,
          )>()(
        ptr.ref.lpVtbl,
        plcCurrentQueuedRequests,
      );

  int SetMaxQueuedRequests(
    int lcMaxQueuedRequests,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(10)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Int32 lcMaxQueuedRequests,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int lcMaxQueuedRequests,
          )>()(
        ptr.ref.lpVtbl,
        lcMaxQueuedRequests,
      );

  int SetMinThreads(
    int lcMinThreads,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(11)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Int32 lcMinThreads,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int lcMinThreads,
          )>()(
        ptr.ref.lpVtbl,
        lcMinThreads,
      );

  int SetQueueDepth(
    int lcQueueDepth,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(12)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Int32 lcQueueDepth,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int lcQueueDepth,
          )>()(
        ptr.ref.lpVtbl,
        lcQueueDepth,
      );
}
