// IActiveScriptErrorDebug.dart

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

import '../../../system/diagnostics/debug/IActiveScriptError.dart';
import '../../../system/diagnostics/debug/IDebugDocumentContext.dart';
import '../../../foundation/structs.g.dart';
import '../../../system/diagnostics/debug/IDebugStackFrame.dart';

/// @nodoc
const IID_IActiveScriptErrorDebug = '{51973C12-CB0C-11D0-B5C9-00A0244A0E7A}';

/// {@category Interface}
/// {@category com}
class IActiveScriptErrorDebug extends IActiveScriptError {
  // vtable begins at 6, is 2 entries long.
  IActiveScriptErrorDebug(Pointer<COMObject> ptr) : super(ptr);

  int GetDocumentContext(
    Pointer<Pointer<COMObject>> ppssc,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(6)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Pointer<COMObject>> ppssc,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Pointer<COMObject>> ppssc,
          )>()(
        ptr.ref.lpVtbl,
        ppssc,
      );

  int GetStackFrame(
    Pointer<Pointer<COMObject>> ppdsf,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(7)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Pointer<COMObject>> ppdsf,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Pointer<COMObject>> ppdsf,
          )>()(
        ptr.ref.lpVtbl,
        ppdsf,
      );
}
