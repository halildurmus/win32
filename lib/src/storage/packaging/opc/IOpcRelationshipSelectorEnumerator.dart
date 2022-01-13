// IOpcRelationshipSelectorEnumerator.dart

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
import '../../../storage/packaging/opc/IOpcRelationshipSelector.dart';
import '../../../storage/packaging/opc/IOpcRelationshipSelectorEnumerator.dart';

/// @nodoc
const IID_IOpcRelationshipSelectorEnumerator =
    '{5E50A181-A91B-48AC-88D2-BCA3D8F8C0B1}';

/// {@category Interface}
/// {@category com}
class IOpcRelationshipSelectorEnumerator extends IUnknown {
  // vtable begins at 3, is 4 entries long.
  IOpcRelationshipSelectorEnumerator(Pointer<COMObject> ptr) : super(ptr);

  int MoveNext(
    Pointer<Int32> hasNext,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(3)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Int32> hasNext,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Int32> hasNext,
          )>()(
        ptr.ref.lpVtbl,
        hasNext,
      );

  int MovePrevious(
    Pointer<Int32> hasPrevious,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(4)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Int32> hasPrevious,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Int32> hasPrevious,
          )>()(
        ptr.ref.lpVtbl,
        hasPrevious,
      );

  int GetCurrent(
    Pointer<Pointer<COMObject>> relationshipSelector,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(5)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Pointer<COMObject>> relationshipSelector,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Pointer<COMObject>> relationshipSelector,
          )>()(
        ptr.ref.lpVtbl,
        relationshipSelector,
      );

  int Clone(
    Pointer<Pointer<COMObject>> copy,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(6)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Pointer<COMObject>> copy,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Pointer<COMObject>> copy,
          )>()(
        ptr.ref.lpVtbl,
        copy,
      );
}
