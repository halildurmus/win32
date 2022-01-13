// IDebugApplicationThread11064.dart

// THIS FILE IS GENERATED AUTOMATICALLY AND SHOULD NOT BE EDITED DIRECTLY.

// ignore_for_file: unused_import, directives_ordering

import 'dart:ffi';

import 'package:ffi/ffi.dart';

import '../../../combase.dart';
import '../../../constants.dart';
import '../../../exceptions.dart';
import '../../../guid.dart';
import '../../../macros.dart';
import '../../../ole32.dart';
import '../../../utils.dart';

import '../../../system/com/IUnknown.dart';
import '../../../foundation/structs.g.dart';
import '../../../system/diagnostics/debug/IDebugThreadCall64.dart';

/// @nodoc
const IID_IDebugApplicationThread11064 =
    '{420AA4CC-EFD8-4DAC-983B-47127826917D}';

/// {@category Interface}
/// {@category com}
class IDebugApplicationThread11064 extends IUnknown {
  // vtable begins at 3, is 4 entries long.
  IDebugApplicationThread11064(Pointer<COMObject> ptr) : super(ptr);

  int GetActiveThreadRequestCount(
    Pointer<Uint32> puiThreadRequests,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(3)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Uint32> puiThreadRequests,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Uint32> puiThreadRequests,
          )>()(
        ptr.ref.lpVtbl,
        puiThreadRequests,
      );

  int IsSuspendedForBreakPoint(
    Pointer<Int32> pfIsSuspended,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(4)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Int32> pfIsSuspended,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Int32> pfIsSuspended,
          )>()(
        ptr.ref.lpVtbl,
        pfIsSuspended,
      );

  int IsThreadCallable(
    Pointer<Int32> pfIsCallable,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(5)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Int32> pfIsCallable,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Int32> pfIsCallable,
          )>()(
        ptr.ref.lpVtbl,
        pfIsCallable,
      );

  int AsynchronousCallIntoThread(
    Pointer<COMObject> pptc,
    int dwParam1,
    int dwParam2,
    int dwParam3,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(6)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<COMObject> pptc,
            IntPtr dwParam1,
            IntPtr dwParam2,
            IntPtr dwParam3,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<COMObject> pptc,
            int dwParam1,
            int dwParam2,
            int dwParam3,
          )>()(
        ptr.ref.lpVtbl,
        pptc,
        dwParam1,
        dwParam2,
        dwParam3,
      );
}
