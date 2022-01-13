// IPreferredRuntimeTypeConcept.dart

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
import '../../../system/diagnostics/debug/IModelObject.dart';
import '../../../foundation/structs.g.dart';

/// @nodoc
const IID_IPreferredRuntimeTypeConcept =
    '{9D6C1D7B-A76F-4618-8068-5F76BD9A4E8A}';

/// {@category Interface}
/// {@category com}
class IPreferredRuntimeTypeConcept extends IUnknown {
  // vtable begins at 3, is 1 entries long.
  IPreferredRuntimeTypeConcept(Pointer<COMObject> ptr) : super(ptr);

  int CastToPreferredRuntimeType(
    Pointer<COMObject> contextObject,
    Pointer<Pointer<COMObject>> object,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(3)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<COMObject> contextObject,
            Pointer<Pointer<COMObject>> object,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<COMObject> contextObject,
            Pointer<Pointer<COMObject>> object,
          )>()(
        ptr.ref.lpVtbl,
        contextObject,
        object,
      );
}
