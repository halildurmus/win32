// IUIAnimationVariableChangeHandler.dart

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
import '../../ui/animation/IUIAnimationStoryboard.dart';
import '../../ui/animation/IUIAnimationVariable.dart';
import '../../foundation/structs.g.dart';

/// @nodoc
const IID_IUIAnimationVariableChangeHandler =
    '{6358B7BA-87D2-42D5-BF71-82E919DD5862}';

/// {@category Interface}
/// {@category com}
class IUIAnimationVariableChangeHandler extends IUnknown {
  // vtable begins at 3, is 1 entries long.
  IUIAnimationVariableChangeHandler(Pointer<COMObject> ptr) : super(ptr);

  int OnValueChanged(
    Pointer<COMObject> storyboard,
    Pointer<COMObject> variable,
    double newValue,
    double previousValue,
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
            Double newValue,
            Double previousValue,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<COMObject> storyboard,
            Pointer<COMObject> variable,
            double newValue,
            double previousValue,
          )>()(
        ptr.ref.lpVtbl,
        storyboard,
        variable,
        newValue,
        previousValue,
      );
}
