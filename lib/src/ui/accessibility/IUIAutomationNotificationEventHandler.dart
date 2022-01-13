// IUIAutomationNotificationEventHandler.dart

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
const IID_IUIAutomationNotificationEventHandler =
    '{C7CB2637-E6C2-4D0C-85DE-4948C02175C7}';

/// {@category Interface}
/// {@category com}
class IUIAutomationNotificationEventHandler extends IUnknown {
  // vtable begins at 3, is 1 entries long.
  IUIAutomationNotificationEventHandler(Pointer<COMObject> ptr) : super(ptr);

  int HandleNotificationEvent(
    Pointer<COMObject> sender,
    int notificationKind,
    int notificationProcessing,
    Pointer<Utf16> displayString,
    Pointer<Utf16> activityId,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(3)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<COMObject> sender,
            Int32 notificationKind,
            Int32 notificationProcessing,
            Pointer<Utf16> displayString,
            Pointer<Utf16> activityId,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<COMObject> sender,
            int notificationKind,
            int notificationProcessing,
            Pointer<Utf16> displayString,
            Pointer<Utf16> activityId,
          )>()(
        ptr.ref.lpVtbl,
        sender,
        notificationKind,
        notificationProcessing,
        displayString,
        activityId,
      );
}
