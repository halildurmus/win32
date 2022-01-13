// IOpcRelationshipSelectorSet.dart

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
import '../../../storage/packaging/opc/structs.g.dart';
import '../../../foundation/structs.g.dart';
import '../../../storage/packaging/opc/IOpcRelationshipSelector.dart';
import '../../../storage/packaging/opc/IOpcRelationshipSelectorEnumerator.dart';

/// @nodoc
const IID_IOpcRelationshipSelectorSet =
    '{6E34C269-A4D3-47C0-B5C4-87FF2B3B6136}';

/// {@category Interface}
/// {@category com}
class IOpcRelationshipSelectorSet extends IUnknown {
  // vtable begins at 3, is 3 entries long.
  IOpcRelationshipSelectorSet(Pointer<COMObject> ptr) : super(ptr);

  int Create(
    int selector,
    Pointer<Utf16> selectionCriterion,
    Pointer<Pointer<COMObject>> relationshipSelector,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(3)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Int32 selector,
            Pointer<Utf16> selectionCriterion,
            Pointer<Pointer<COMObject>> relationshipSelector,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int selector,
            Pointer<Utf16> selectionCriterion,
            Pointer<Pointer<COMObject>> relationshipSelector,
          )>()(
        ptr.ref.lpVtbl,
        selector,
        selectionCriterion,
        relationshipSelector,
      );

  int Delete(
    Pointer<COMObject> relationshipSelector,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(4)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<COMObject> relationshipSelector,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<COMObject> relationshipSelector,
          )>()(
        ptr.ref.lpVtbl,
        relationshipSelector,
      );

  int GetEnumerator(
    Pointer<Pointer<COMObject>> relationshipSelectorEnumerator,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(5)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Pointer<COMObject>> relationshipSelectorEnumerator,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Pointer<COMObject>> relationshipSelectorEnumerator,
          )>()(
        ptr.ref.lpVtbl,
        relationshipSelectorEnumerator,
      );
}
