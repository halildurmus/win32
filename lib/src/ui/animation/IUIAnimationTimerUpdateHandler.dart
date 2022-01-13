// IUIAnimationTimerUpdateHandler.dart

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
import '../../ui/animation/IUIAnimationTimerClientEventHandler.dart';

/// @nodoc
const IID_IUIAnimationTimerUpdateHandler =
    '{195509B7-5D5E-4E3E-B278-EE3759B367AD}';

/// {@category Interface}
/// {@category com}
class IUIAnimationTimerUpdateHandler extends IUnknown {
  // vtable begins at 3, is 3 entries long.
  IUIAnimationTimerUpdateHandler(Pointer<COMObject> ptr) : super(ptr);

  int OnUpdate(
    double timeNow,
    Pointer<Int32> result,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(3)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Double timeNow,
            Pointer<Int32> result,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            double timeNow,
            Pointer<Int32> result,
          )>()(
        ptr.ref.lpVtbl,
        timeNow,
        result,
      );

  int SetTimerClientEventHandler(
    Pointer<COMObject> handler,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(4)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<COMObject> handler,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<COMObject> handler,
          )>()(
        ptr.ref.lpVtbl,
        handler,
      );

  int ClearTimerClientEventHandler() => ptr.ref.lpVtbl.value
          .elementAt(5)
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
