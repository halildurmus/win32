// IOpcRelationshipSelector.dart

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

/// @nodoc
const IID_IOpcRelationshipSelector = '{F8F26C7F-B28F-4899-84C8-5D5639EDE75F}';

/// {@category Interface}
/// {@category com}
class IOpcRelationshipSelector extends IUnknown {
  // vtable begins at 3, is 2 entries long.
  IOpcRelationshipSelector(Pointer<COMObject> ptr) : super(ptr);

  int GetSelectorType(
    Pointer<Int32> selector,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(3)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Int32> selector,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Int32> selector,
          )>()(
        ptr.ref.lpVtbl,
        selector,
      );

  int GetSelectionCriterion(
    Pointer<Pointer<Utf16>> selectionCriterion,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(4)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Pointer<Utf16>> selectionCriterion,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Pointer<Utf16>> selectionCriterion,
          )>()(
        ptr.ref.lpVtbl,
        selectionCriterion,
      );
}
