// IComparableConcept.dart

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
const IID_IComparableConcept = '{A7830646-9F0C-4A31-BA19-503F33E6C8A3}';

/// {@category Interface}
/// {@category com}
class IComparableConcept extends IUnknown {
  // vtable begins at 3, is 1 entries long.
  IComparableConcept(Pointer<COMObject> ptr) : super(ptr);

  int CompareObjects(
    Pointer<COMObject> contextObject,
    Pointer<COMObject> otherObject,
    Pointer<Int32> comparisonResult,
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
            Pointer<Int32> comparisonResult,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<COMObject> contextObject,
            Pointer<COMObject> otherObject,
            Pointer<Int32> comparisonResult,
          )>()(
        ptr.ref.lpVtbl,
        contextObject,
        otherObject,
        comparisonResult,
      );
}
