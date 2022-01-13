// IDataModelScriptDebugClient.dart

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
import '../../../system/diagnostics/debug/IDataModelScript.dart';
import '../../../system/diagnostics/debug/IModelObject.dart';
import '../../../foundation/structs.g.dart';

/// @nodoc
const IID_IDataModelScriptDebugClient =
    '{53159B6D-D4C4-471B-A863-5B110CA800CA}';

/// {@category Interface}
/// {@category com}
class IDataModelScriptDebugClient extends IUnknown {
  // vtable begins at 3, is 1 entries long.
  IDataModelScriptDebugClient(Pointer<COMObject> ptr) : super(ptr);

  int NotifyDebugEvent(
    Pointer<ScriptDebugEventInformation> pEventInfo,
    Pointer<COMObject> pScript,
    Pointer<COMObject> pEventDataObject,
    Pointer<Int32> resumeEventKind,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(3)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<ScriptDebugEventInformation> pEventInfo,
            Pointer<COMObject> pScript,
            Pointer<COMObject> pEventDataObject,
            Pointer<Int32> resumeEventKind,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<ScriptDebugEventInformation> pEventInfo,
            Pointer<COMObject> pScript,
            Pointer<COMObject> pEventDataObject,
            Pointer<Int32> resumeEventKind,
          )>()(
        ptr.ref.lpVtbl,
        pEventInfo,
        pScript,
        pEventDataObject,
        resumeEventKind,
      );
}
