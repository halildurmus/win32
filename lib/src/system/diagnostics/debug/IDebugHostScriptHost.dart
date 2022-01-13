// IDebugHostScriptHost.dart

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
import '../../../system/diagnostics/debug/IDataModelScript.dart';
import '../../../system/diagnostics/debug/IDataModelScriptHostContext.dart';
import '../../../foundation/structs.g.dart';

/// @nodoc
const IID_IDebugHostScriptHost = '{B70334A4-B92C-4570-93A1-D3EB686649A0}';

/// {@category Interface}
/// {@category com}
class IDebugHostScriptHost extends IUnknown {
  // vtable begins at 3, is 1 entries long.
  IDebugHostScriptHost(Pointer<COMObject> ptr) : super(ptr);

  int CreateContext(
    Pointer<COMObject> script,
    Pointer<Pointer<COMObject>> scriptContext,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(3)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<COMObject> script,
            Pointer<Pointer<COMObject>> scriptContext,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<COMObject> script,
            Pointer<Pointer<COMObject>> scriptContext,
          )>()(
        ptr.ref.lpVtbl,
        script,
        scriptContext,
      );
}
