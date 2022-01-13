// IUIAutomationPropertyChangedEventHandler.dart

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
const IID_IUIAutomationPropertyChangedEventHandler =
    '{40CD37D4-C756-4B0C-8C6F-BDDFEEB13B50}';

/// {@category Interface}
/// {@category com}
class IUIAutomationPropertyChangedEventHandler extends IUnknown {
  // vtable begins at 3, is 1 entries long.
  IUIAutomationPropertyChangedEventHandler(Pointer<COMObject> ptr) : super(ptr);

  int HandlePropertyChangedEvent(
    Pointer<COMObject> sender,
    int propertyId,
    VARIANT newValue,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(3)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<COMObject> sender,
            Int32 propertyId,
            VARIANT newValue,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<COMObject> sender,
            int propertyId,
            VARIANT newValue,
          )>()(
        ptr.ref.lpVtbl,
        sender,
        propertyId,
        newValue,
      );
}
