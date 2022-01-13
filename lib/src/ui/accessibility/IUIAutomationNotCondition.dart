// IUIAutomationNotCondition.dart

// THIS FILE IS GENERATED AUTOMATICALLY AND SHOULD NOT BE EDITED DIRECTLY.

// ignore_for_file: unused_import, directives_ordering

import 'dart:ffi';

import 'package:ffi/ffi.dart';

import '../../combase.dart';
import '../../constants.dart';
import '../../exceptions.dart';
import '../../guid.dart';
import '../../macros.dart';
import '../../ole32.dart';
import '../../utils.dart';

import '../../ui/accessibility/IUIAutomationCondition.dart';
import '../../foundation/structs.g.dart';

/// @nodoc
const IID_IUIAutomationNotCondition = '{F528B657-847B-498C-8896-D52B565407A1}';

/// {@category Interface}
/// {@category com}
class IUIAutomationNotCondition extends IUIAutomationCondition {
  // vtable begins at 3, is 1 entries long.
  IUIAutomationNotCondition(Pointer<COMObject> ptr) : super(ptr);

  int GetChild(
    Pointer<Pointer<COMObject>> condition,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(3)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Pointer<COMObject>> condition,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Pointer<COMObject>> condition,
          )>()(
        ptr.ref.lpVtbl,
        condition,
      );
}
