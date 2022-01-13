// IUIAnimationVariableIntegerChangeHandler2.dart

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
import '../../ui/animation/IUIAnimationVariable2.dart';
import '../../foundation/structs.g.dart';

/// @nodoc
const IID_IUIAnimationVariableIntegerChangeHandler2 =
    '{829B6CF1-4F3A-4412-AE09-B243EB4C6B58}';

/// {@category Interface}
/// {@category com}
class IUIAnimationVariableIntegerChangeHandler2 extends IUnknown {
  // vtable begins at 3, is 1 entries long.
  IUIAnimationVariableIntegerChangeHandler2(Pointer<COMObject> ptr)
      : super(ptr);

  int OnIntegerValueChanged(
    Pointer<COMObject> storyboard,
    Pointer<COMObject> variable,
    Pointer<Int32> newValue,
    Pointer<Int32> previousValue,
    int cDimension,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(3)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<COMObject> storyboard,
            Pointer<COMObject> variable,
            Pointer<Int32> newValue,
            Pointer<Int32> previousValue,
            Uint32 cDimension,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<COMObject> storyboard,
            Pointer<COMObject> variable,
            Pointer<Int32> newValue,
            Pointer<Int32> previousValue,
            int cDimension,
          )>()(
        ptr.ref.lpVtbl,
        storyboard,
        variable,
        newValue,
        previousValue,
        cDimension,
      );
}
