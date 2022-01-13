// IUIAutomationChangesEventHandler.dart

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
import '../../ui/accessibility/structs.g.dart';
import '../../foundation/structs.g.dart';

/// @nodoc
const IID_IUIAutomationChangesEventHandler =
    '{58EDCA55-2C3E-4980-B1B9-56C17F27A2A0}';

/// {@category Interface}
/// {@category com}
class IUIAutomationChangesEventHandler extends IUnknown {
  // vtable begins at 3, is 1 entries long.
  IUIAutomationChangesEventHandler(Pointer<COMObject> ptr) : super(ptr);

  int HandleChangesEvent(
    Pointer<COMObject> sender,
    Pointer<UiaChangeInfo> uiaChanges,
    int changesCount,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(3)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<COMObject> sender,
            Pointer<UiaChangeInfo> uiaChanges,
            Int32 changesCount,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<COMObject> sender,
            Pointer<UiaChangeInfo> uiaChanges,
            int changesCount,
          )>()(
        ptr.ref.lpVtbl,
        sender,
        uiaChanges,
        changesCount,
      );
}
