// IUIAnimationVariableIntegerChangeHandler.dart

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
const IID_IUIAnimationVariableIntegerChangeHandler =
    '{BB3E1550-356E-44B0-99DA-85AC6017865E}';

/// {@category Interface}
/// {@category com}
class IUIAnimationVariableIntegerChangeHandler extends IUnknown {
  // vtable begins at 3, is 1 entries long.
  IUIAnimationVariableIntegerChangeHandler(Pointer<COMObject> ptr) : super(ptr);

  int OnIntegerValueChanged(
    Pointer<COMObject> storyboard,
    Pointer<COMObject> variable,
    int newValue,
    int previousValue,
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
            Int32 newValue,
            Int32 previousValue,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<COMObject> storyboard,
            Pointer<COMObject> variable,
            int newValue,
            int previousValue,
          )>()(
        ptr.ref.lpVtbl,
        storyboard,
        variable,
        newValue,
        previousValue,
      );
}
