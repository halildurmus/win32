// IDebugApplicationThread64.dart

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

import '../../../system/diagnostics/debug/IDebugApplicationThread.dart';
import '../../../system/diagnostics/debug/IDebugThreadCall64.dart';
import '../../../foundation/structs.g.dart';

/// @nodoc
const IID_IDebugApplicationThread64 = '{9DAC5886-DBAD-456D-9DEE-5DEC39AB3DDA}';

/// {@category Interface}
/// {@category com}
class IDebugApplicationThread64 extends IDebugApplicationThread {
  // vtable begins at 17, is 1 entries long.
  IDebugApplicationThread64(Pointer<COMObject> ptr) : super(ptr);

  int SynchronousCallIntoThread64(
    Pointer<COMObject> pstcb,
    int dwParam1,
    int dwParam2,
    int dwParam3,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(17)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<COMObject> pstcb,
            Uint64 dwParam1,
            Uint64 dwParam2,
            Uint64 dwParam3,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<COMObject> pstcb,
            int dwParam1,
            int dwParam2,
            int dwParam3,
          )>()(
        ptr.ref.lpVtbl,
        pstcb,
        dwParam1,
        dwParam2,
        dwParam3,
      );
}
