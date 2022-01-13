// IAccessibilityDockingServiceCallback.dart

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
import '../../ui/shell/structs.g.dart';
import '../../foundation/structs.g.dart';

/// @nodoc
const IID_IAccessibilityDockingServiceCallback =
    '{157733FD-A592-42E5-B594-248468C5A81B}';

/// {@category Interface}
/// {@category com}
class IAccessibilityDockingServiceCallback extends IUnknown {
  // vtable begins at 3, is 1 entries long.
  IAccessibilityDockingServiceCallback(Pointer<COMObject> ptr) : super(ptr);

  int Undocked(
    int undockReason,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(3)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Int32 undockReason,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int undockReason,
          )>()(
        ptr.ref.lpVtbl,
        undockReason,
      );
}
