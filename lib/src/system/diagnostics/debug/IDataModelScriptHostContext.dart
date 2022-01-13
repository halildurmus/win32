// IDataModelScriptHostContext.dart

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
import '../../../system/diagnostics/debug/structs.g.dart';
import '../../../foundation/structs.g.dart';
import '../../../system/diagnostics/debug/IModelObject.dart';

/// @nodoc
const IID_IDataModelScriptHostContext =
    '{014D366A-1F23-4981-9219-B2DB8B402054}';

/// {@category Interface}
/// {@category com}
class IDataModelScriptHostContext extends IUnknown {
  // vtable begins at 3, is 2 entries long.
  IDataModelScriptHostContext(Pointer<COMObject> ptr) : super(ptr);

  int NotifyScriptChange(
    Pointer<COMObject> script,
    int changeKind,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(3)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<COMObject> script,
            Int32 changeKind,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<COMObject> script,
            int changeKind,
          )>()(
        ptr.ref.lpVtbl,
        script,
        changeKind,
      );

  int GetNamespaceObject(
    Pointer<Pointer<COMObject>> namespaceObject,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(4)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Pointer<COMObject>> namespaceObject,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Pointer<COMObject>> namespaceObject,
          )>()(
        ptr.ref.lpVtbl,
        namespaceObject,
      );
}
