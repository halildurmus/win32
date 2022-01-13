// IUIAnimationLoopIterationChangeHandler2.dart

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
import '../../ui/animation/IUIAnimationStoryboard2.dart';
import '../../foundation/structs.g.dart';

/// @nodoc
const IID_IUIAnimationLoopIterationChangeHandler2 =
    '{2D3B15A4-4762-47AB-A030-B23221DF3AE0}';

/// {@category Interface}
/// {@category com}
class IUIAnimationLoopIterationChangeHandler2 extends IUnknown {
  // vtable begins at 3, is 1 entries long.
  IUIAnimationLoopIterationChangeHandler2(Pointer<COMObject> ptr) : super(ptr);

  int OnLoopIterationChanged(
    Pointer<COMObject> storyboard,
    int id,
    int newIterationCount,
    int oldIterationCount,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(3)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<COMObject> storyboard,
            IntPtr id,
            Uint32 newIterationCount,
            Uint32 oldIterationCount,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<COMObject> storyboard,
            int id,
            int newIterationCount,
            int oldIterationCount,
          )>()(
        ptr.ref.lpVtbl,
        storyboard,
        id,
        newIterationCount,
        oldIterationCount,
      );
}
