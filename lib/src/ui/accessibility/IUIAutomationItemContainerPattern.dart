// IUIAutomationItemContainerPattern.dart

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

import '../../system/com/IUnknown.dart';
import '../../ui/accessibility/IUIAutomationElement.dart';
import '../../specialTypes.dart';
import '../../foundation/structs.g.dart';

/// @nodoc
const IID_IUIAutomationItemContainerPattern =
    '{C690FDB2-27A8-423C-812D-429773C9084E}';

/// {@category Interface}
/// {@category com}
class IUIAutomationItemContainerPattern extends IUnknown {
  // vtable begins at 3, is 1 entries long.
  IUIAutomationItemContainerPattern(Pointer<COMObject> ptr) : super(ptr);

  int FindItemByProperty(
    Pointer<COMObject> pStartAfter,
    int propertyId,
    VARIANT value,
    Pointer<Pointer<COMObject>> pFound,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(3)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<COMObject> pStartAfter,
            Int32 propertyId,
            VARIANT value,
            Pointer<Pointer<COMObject>> pFound,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<COMObject> pStartAfter,
            int propertyId,
            VARIANT value,
            Pointer<Pointer<COMObject>> pFound,
          )>()(
        ptr.ref.lpVtbl,
        pStartAfter,
        propertyId,
        value,
        pFound,
      );
}
