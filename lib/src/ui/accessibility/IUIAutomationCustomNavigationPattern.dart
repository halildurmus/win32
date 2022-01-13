// IUIAutomationCustomNavigationPattern.dart

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
import '../../ui/accessibility/structs.g.dart';
import '../../ui/accessibility/IUIAutomationElement.dart';
import '../../foundation/structs.g.dart';

/// @nodoc
const IID_IUIAutomationCustomNavigationPattern =
    '{01EA217A-1766-47ED-A6CC-ACF492854B1F}';

/// {@category Interface}
/// {@category com}
class IUIAutomationCustomNavigationPattern extends IUnknown {
  // vtable begins at 3, is 1 entries long.
  IUIAutomationCustomNavigationPattern(Pointer<COMObject> ptr) : super(ptr);

  int Navigate(
    int direction,
    Pointer<Pointer<COMObject>> pRetVal,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(3)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Int32 direction,
            Pointer<Pointer<COMObject>> pRetVal,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int direction,
            Pointer<Pointer<COMObject>> pRetVal,
          )>()(
        ptr.ref.lpVtbl,
        direction,
        pRetVal,
      );
}
