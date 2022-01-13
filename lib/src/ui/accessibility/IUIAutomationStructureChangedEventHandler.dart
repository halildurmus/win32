// IUIAutomationStructureChangedEventHandler.dart

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
const IID_IUIAutomationStructureChangedEventHandler =
    '{E81D1B4E-11C5-42F8-9754-E7036C79F054}';

/// {@category Interface}
/// {@category com}
class IUIAutomationStructureChangedEventHandler extends IUnknown {
  // vtable begins at 3, is 1 entries long.
  IUIAutomationStructureChangedEventHandler(Pointer<COMObject> ptr)
      : super(ptr);

  int HandleStructureChangedEvent(
    Pointer<COMObject> sender,
    int changeType,
    Pointer<SAFEARRAY> runtimeId,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(3)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<COMObject> sender,
            Int32 changeType,
            Pointer<SAFEARRAY> runtimeId,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<COMObject> sender,
            int changeType,
            Pointer<SAFEARRAY> runtimeId,
          )>()(
        ptr.ref.lpVtbl,
        sender,
        changeType,
        runtimeId,
      );
}
