// IUIAutomationFocusChangedEventHandler.dart

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
const IID_IUIAutomationFocusChangedEventHandler =
    '{C270F6B5-5C69-4290-9745-7A7F97169468}';

/// {@category Interface}
/// {@category com}
class IUIAutomationFocusChangedEventHandler extends IUnknown {
  // vtable begins at 3, is 1 entries long.
  IUIAutomationFocusChangedEventHandler(Pointer<COMObject> ptr) : super(ptr);

  int HandleFocusChangedEvent(
    Pointer<COMObject> sender,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(3)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<COMObject> sender,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<COMObject> sender,
          )>()(
        ptr.ref.lpVtbl,
        sender,
      );
}
