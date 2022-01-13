// IIterableConcept.dart

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
import '../../../system/diagnostics/debug/IModelIterator.dart';

/// @nodoc
const IID_IIterableConcept = '{F5D49D0C-0B02-4301-9C9B-B3A6037628F3}';

/// {@category Interface}
/// {@category com}
class IIterableConcept extends IUnknown {
  // vtable begins at 3, is 2 entries long.
  IIterableConcept(Pointer<COMObject> ptr) : super(ptr);

  int GetDefaultIndexDimensionality(
    Pointer<COMObject> contextObject,
    Pointer<Uint64> dimensionality,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(3)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<COMObject> contextObject,
            Pointer<Uint64> dimensionality,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<COMObject> contextObject,
            Pointer<Uint64> dimensionality,
          )>()(
        ptr.ref.lpVtbl,
        contextObject,
        dimensionality,
      );

  int GetIterator(
    Pointer<COMObject> contextObject,
    Pointer<Pointer<COMObject>> iterator,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(4)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<COMObject> contextObject,
            Pointer<Pointer<COMObject>> iterator,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<COMObject> contextObject,
            Pointer<Pointer<COMObject>> iterator,
          )>()(
        ptr.ref.lpVtbl,
        contextObject,
        iterator,
      );
}
