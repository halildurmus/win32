// IEquatableConcept.dart

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
const IID_IEquatableConcept = '{C52D5D3D-609D-4D5D-8A82-46B0ACDEC4F4}';

/// {@category Interface}
/// {@category com}
class IEquatableConcept extends IUnknown {
  // vtable begins at 3, is 1 entries long.
  IEquatableConcept(Pointer<COMObject> ptr) : super(ptr);

  int AreObjectsEqual(
    Pointer<COMObject> contextObject,
    Pointer<COMObject> otherObject,
    Pointer<Bool> isEqual,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(3)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<COMObject> contextObject,
            Pointer<COMObject> otherObject,
            Pointer<Bool> isEqual,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<COMObject> contextObject,
            Pointer<COMObject> otherObject,
            Pointer<Bool> isEqual,
          )>()(
        ptr.ref.lpVtbl,
        contextObject,
        otherObject,
        isEqual,
      );
}
