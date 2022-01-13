// IDebugStackFrame110.dart

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

import '../../../system/diagnostics/debug/IDebugStackFrame.dart';
import '../../../system/diagnostics/debug/structs.g.dart';
import '../../../foundation/structs.g.dart';
import '../../../system/diagnostics/debug/IScriptInvocationContext.dart';

/// @nodoc
const IID_IDebugStackFrame110 = '{4B509611-B6EA-4B24-ADCB-D0CCFD1A7E33}';

/// {@category Interface}
/// {@category com}
class IDebugStackFrame110 extends IDebugStackFrame {
  // vtable begins at 8, is 2 entries long.
  IDebugStackFrame110(Pointer<COMObject> ptr) : super(ptr);

  int GetStackFrameType(
    Pointer<Int32> pStackFrameKind,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(8)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Int32> pStackFrameKind,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Int32> pStackFrameKind,
          )>()(
        ptr.ref.lpVtbl,
        pStackFrameKind,
      );

  int GetScriptInvocationContext(
    Pointer<Pointer<COMObject>> ppInvocationContext,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(9)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Pointer<COMObject>> ppInvocationContext,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Pointer<COMObject>> ppInvocationContext,
          )>()(
        ptr.ref.lpVtbl,
        ppInvocationContext,
      );
}
