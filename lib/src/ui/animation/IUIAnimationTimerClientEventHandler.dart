// IUIAnimationTimerClientEventHandler.dart

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
import '../../ui/animation/structs.g.dart';
import '../../foundation/structs.g.dart';

/// @nodoc
const IID_IUIAnimationTimerClientEventHandler =
    '{BEDB4DB6-94FA-4BFB-A47F-EF2D9E408C25}';

/// {@category Interface}
/// {@category com}
class IUIAnimationTimerClientEventHandler extends IUnknown {
  // vtable begins at 3, is 1 entries long.
  IUIAnimationTimerClientEventHandler(Pointer<COMObject> ptr) : super(ptr);

  int OnTimerClientStatusChanged(
    int newStatus,
    int previousStatus,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(3)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Int32 newStatus,
            Int32 previousStatus,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int newStatus,
            int previousStatus,
          )>()(
        ptr.ref.lpVtbl,
        newStatus,
        previousStatus,
      );
}
