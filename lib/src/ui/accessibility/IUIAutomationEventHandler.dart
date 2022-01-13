// IUIAutomationEventHandler.dart

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
import '../../foundation/structs.g.dart';

/// @nodoc
const IID_IUIAutomationEventHandler = '{146C3C17-F12E-4E22-8C27-F894B9B79C69}';

/// {@category Interface}
/// {@category com}
class IUIAutomationEventHandler extends IUnknown {
  // vtable begins at 3, is 1 entries long.
  IUIAutomationEventHandler(Pointer<COMObject> ptr) : super(ptr);

  int HandleAutomationEvent(
    Pointer<COMObject> sender,
    int eventId,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(3)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<COMObject> sender,
            Int32 eventId,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<COMObject> sender,
            int eventId,
          )>()(
        ptr.ref.lpVtbl,
        sender,
        eventId,
      );
}
