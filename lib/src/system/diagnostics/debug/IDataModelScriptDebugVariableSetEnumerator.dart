// IDataModelScriptDebugVariableSetEnumerator.dart

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
import '../../../system/diagnostics/debug/IModelObject.dart';
import '../../../system/diagnostics/debug/IKeyStore.dart';

/// @nodoc
const IID_IDataModelScriptDebugVariableSetEnumerator =
    '{0F9FEED7-D045-4AC3-98A8-A98942CF6A35}';

/// {@category Interface}
/// {@category com}
class IDataModelScriptDebugVariableSetEnumerator extends IUnknown {
  // vtable begins at 3, is 2 entries long.
  IDataModelScriptDebugVariableSetEnumerator(Pointer<COMObject> ptr)
      : super(ptr);

  int Reset() => ptr.ref.lpVtbl.value
          .elementAt(3)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
          )>()(
        ptr.ref.lpVtbl,
      );

  int GetNext(
    Pointer<Pointer<Utf16>> variableName,
    Pointer<Pointer<COMObject>> variableValue,
    Pointer<Pointer<COMObject>> variableMetadata,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(4)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Pointer<Utf16>> variableName,
            Pointer<Pointer<COMObject>> variableValue,
            Pointer<Pointer<COMObject>> variableMetadata,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Pointer<Utf16>> variableName,
            Pointer<Pointer<COMObject>> variableValue,
            Pointer<Pointer<COMObject>> variableMetadata,
          )>()(
        ptr.ref.lpVtbl,
        variableName,
        variableValue,
        variableMetadata,
      );
}
