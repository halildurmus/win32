// IUIAutomationTextRange2.dart

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

import '../../ui/accessibility/IUIAutomationTextRange.dart';
import '../../foundation/structs.g.dart';

/// @nodoc
const IID_IUIAutomationTextRange2 = '{BB9B40E0-5E04-46BD-9BE0-4B601B9AFAD4}';

/// {@category Interface}
/// {@category com}
class IUIAutomationTextRange2 extends IUIAutomationTextRange {
  // vtable begins at 21, is 1 entries long.
  IUIAutomationTextRange2(Pointer<COMObject> ptr) : super(ptr);

  int ShowContextMenu() => ptr.ref.lpVtbl.value
          .elementAt(21)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
          )>()(
        ptr.ref.lpVtbl,
      );
}
