// IDataModelScriptDebugStack.dart

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
import '../../../system/diagnostics/debug/IDataModelScriptDebugStackFrame.dart';
import '../../../foundation/structs.g.dart';

/// @nodoc
const IID_IDataModelScriptDebugStack = '{051364DD-E449-443E-9762-FE578F4A5473}';

/// {@category Interface}
/// {@category com}
class IDataModelScriptDebugStack extends IUnknown {
  // vtable begins at 3, is 2 entries long.
  IDataModelScriptDebugStack(Pointer<COMObject> ptr) : super(ptr);

  int GetFrameCount() => ptr.ref.lpVtbl.value
          .elementAt(3)
          .cast<
              Pointer<
                  NativeFunction<
                      Uint64 Function(
            Pointer,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
          )>()(
        ptr.ref.lpVtbl,
      );

  int GetStackFrame(
    int frameNumber,
    Pointer<Pointer<COMObject>> stackFrame,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(4)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Uint64 frameNumber,
            Pointer<Pointer<COMObject>> stackFrame,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int frameNumber,
            Pointer<Pointer<COMObject>> stackFrame,
          )>()(
        ptr.ref.lpVtbl,
        frameNumber,
        stackFrame,
      );
}
