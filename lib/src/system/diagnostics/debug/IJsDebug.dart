// IJsDebug.dart

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
import '../../../system/diagnostics/debug/IJsDebugDataTarget.dart';
import '../../../system/diagnostics/debug/IJsDebugProcess.dart';
import '../../../foundation/structs.g.dart';

/// @nodoc
const IID_IJsDebug = '{BE0E89DA-2AC5-4C04-AC5E-59956AAE3613}';

/// {@category Interface}
/// {@category com}
class IJsDebug extends IUnknown {
  // vtable begins at 3, is 1 entries long.
  IJsDebug(Pointer<COMObject> ptr) : super(ptr);

  int OpenVirtualProcess(
    int processId,
    int runtimeJsBaseAddress,
    Pointer<COMObject> pDataTarget,
    Pointer<Pointer<COMObject>> ppProcess,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(3)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Uint32 processId,
            Uint64 runtimeJsBaseAddress,
            Pointer<COMObject> pDataTarget,
            Pointer<Pointer<COMObject>> ppProcess,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int processId,
            int runtimeJsBaseAddress,
            Pointer<COMObject> pDataTarget,
            Pointer<Pointer<COMObject>> ppProcess,
          )>()(
        ptr.ref.lpVtbl,
        processId,
        runtimeJsBaseAddress,
        pDataTarget,
        ppProcess,
      );
}
