// IUIAutomationTextEditTextChangedEventHandler.dart

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
import '../../system/com/structs.g.dart';
import '../../foundation/structs.g.dart';

/// @nodoc
const IID_IUIAutomationTextEditTextChangedEventHandler =
    '{92FAA680-E704-4156-931A-E32D5BB38F3F}';

/// {@category Interface}
/// {@category com}
class IUIAutomationTextEditTextChangedEventHandler extends IUnknown {
  // vtable begins at 3, is 1 entries long.
  IUIAutomationTextEditTextChangedEventHandler(Pointer<COMObject> ptr)
      : super(ptr);

  int HandleTextEditTextChangedEvent(
    Pointer<COMObject> sender,
    int textEditChangeType,
    Pointer<SAFEARRAY> eventStrings,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(3)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<COMObject> sender,
            Int32 textEditChangeType,
            Pointer<SAFEARRAY> eventStrings,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<COMObject> sender,
            int textEditChangeType,
            Pointer<SAFEARRAY> eventStrings,
          )>()(
        ptr.ref.lpVtbl,
        sender,
        textEditChangeType,
        eventStrings,
      );
}
