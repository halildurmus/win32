// IDataModelScriptTemplateEnumerator.dart

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
import '../../../system/diagnostics/debug/IDataModelScriptTemplate.dart';

/// @nodoc
const IID_IDataModelScriptTemplateEnumerator =
    '{69CE6AE2-2268-4E6F-B062-20CE62BFE677}';

/// {@category Interface}
/// {@category com}
class IDataModelScriptTemplateEnumerator extends IUnknown {
  // vtable begins at 3, is 2 entries long.
  IDataModelScriptTemplateEnumerator(Pointer<COMObject> ptr) : super(ptr);

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
    Pointer<Pointer<COMObject>> templateContent,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(4)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Pointer<COMObject>> templateContent,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Pointer<COMObject>> templateContent,
          )>()(
        ptr.ref.lpVtbl,
        templateContent,
      );
}
