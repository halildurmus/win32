// IDebugApplication11032.dart

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

import '../../../system/diagnostics/debug/IRemoteDebugApplication110.dart';
import '../../../system/diagnostics/debug/IDebugThreadCall32.dart';
import '../../../foundation/structs.g.dart';

/// @nodoc
const IID_IDebugApplication11032 = '{BDB3B5DE-89F2-4E11-84A5-97445F941C7D}';

/// {@category Interface}
/// {@category com}
class IDebugApplication11032 extends IRemoteDebugApplication110 {
  // vtable begins at 6, is 3 entries long.
  IDebugApplication11032(Pointer<COMObject> ptr) : super(ptr);

  int SynchronousCallInMainThread(
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

  int AsynchronousCallInMainThread(
    Pointer<COMObject> pptc,
    int dwParam1,
    int dwParam2,
    int dwParam3,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(7)
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

  int CallableWaitForHandles(
    int handleCount,
    Pointer<IntPtr> pHandles,
    Pointer<Uint32> pIndex,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(8)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Uint32 handleCount,
            Pointer<IntPtr> pHandles,
            Pointer<Uint32> pIndex,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int handleCount,
            Pointer<IntPtr> pHandles,
            Pointer<Uint32> pIndex,
          )>()(
        ptr.ref.lpVtbl,
        handleCount,
        pHandles,
        pIndex,
      );
}
