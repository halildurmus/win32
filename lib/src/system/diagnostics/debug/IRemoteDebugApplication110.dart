// IRemoteDebugApplication110.dart

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
import '../../../system/diagnostics/debug/structs.g.dart';
import '../../../foundation/structs.g.dart';
import '../../../system/diagnostics/debug/IRemoteDebugApplicationThread.dart';

/// @nodoc
const IID_IRemoteDebugApplication110 = '{D5FE005B-2836-485E-B1F9-89D91AA24FD4}';

/// {@category Interface}
/// {@category com}
class IRemoteDebugApplication110 extends IUnknown {
  // vtable begins at 3, is 3 entries long.
  IRemoteDebugApplication110(Pointer<COMObject> ptr) : super(ptr);

  int SetDebuggerOptions(
    int mask,
    int value,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(3)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Int32 mask,
            Int32 value,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int mask,
            int value,
          )>()(
        ptr.ref.lpVtbl,
        mask,
        value,
      );

  int GetCurrentDebuggerOptions(
    Pointer<Int32> pCurrentOptions,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(4)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Int32> pCurrentOptions,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Int32> pCurrentOptions,
          )>()(
        ptr.ref.lpVtbl,
        pCurrentOptions,
      );

  int GetMainThread(
    Pointer<Pointer<COMObject>> ppThread,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(5)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Pointer<COMObject>> ppThread,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Pointer<COMObject>> ppThread,
          )>()(
        ptr.ref.lpVtbl,
        ppThread,
      );
}
