// IDebugHostEvaluator2.dart

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

import '../../../system/diagnostics/debug/IDebugHostEvaluator.dart';
import '../../../system/diagnostics/debug/IModelObject.dart';
import '../../../system/diagnostics/debug/IKeyStore.dart';
import '../../../foundation/structs.g.dart';

/// @nodoc
const IID_IDebugHostEvaluator2 = '{A117A435-1FB4-4092-A2AB-A929576C1E87}';

/// {@category Interface}
/// {@category com}
class IDebugHostEvaluator2 extends IDebugHostEvaluator {
  // vtable begins at 5, is 1 entries long.
  IDebugHostEvaluator2(Pointer<COMObject> ptr) : super(ptr);

  int AssignTo(
    Pointer<COMObject> assignmentReference,
    Pointer<COMObject> assignmentValue,
    Pointer<Pointer<COMObject>> assignmentResult,
    Pointer<Pointer<COMObject>> assignmentMetadata,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(5)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<COMObject> assignmentReference,
            Pointer<COMObject> assignmentValue,
            Pointer<Pointer<COMObject>> assignmentResult,
            Pointer<Pointer<COMObject>> assignmentMetadata,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<COMObject> assignmentReference,
            Pointer<COMObject> assignmentValue,
            Pointer<Pointer<COMObject>> assignmentResult,
            Pointer<Pointer<COMObject>> assignmentMetadata,
          )>()(
        ptr.ref.lpVtbl,
        assignmentReference,
        assignmentValue,
        assignmentResult,
        assignmentMetadata,
      );
}
