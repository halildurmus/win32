// IUIAnimationTimerEventHandler.dart

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
import '../../foundation/structs.g.dart';

/// @nodoc
const IID_IUIAnimationTimerEventHandler =
    '{274A7DEA-D771-4095-ABBD-8DF7ABD23CE3}';

/// {@category Interface}
/// {@category com}
class IUIAnimationTimerEventHandler extends IUnknown {
  // vtable begins at 3, is 3 entries long.
  IUIAnimationTimerEventHandler(Pointer<COMObject> ptr) : super(ptr);

  int OnPreUpdate() => ptr.ref.lpVtbl.value
          .elementAt(3)
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

  int OnPostUpdate() => ptr.ref.lpVtbl.value
          .elementAt(4)
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

  int OnRenderingTooSlow(
    int framesPerSecond,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(5)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Uint32 framesPerSecond,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int framesPerSecond,
          )>()(
        ptr.ref.lpVtbl,
        framesPerSecond,
      );
}
