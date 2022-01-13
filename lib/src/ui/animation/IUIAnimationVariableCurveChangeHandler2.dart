// IUIAnimationVariableCurveChangeHandler2.dart

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
import '../../ui/animation/IUIAnimationVariable2.dart';
import '../../foundation/structs.g.dart';

/// @nodoc
const IID_IUIAnimationVariableCurveChangeHandler2 =
    '{72895E91-0145-4C21-9192-5AAB40EDDF80}';

/// {@category Interface}
/// {@category com}
class IUIAnimationVariableCurveChangeHandler2 extends IUnknown {
  // vtable begins at 3, is 1 entries long.
  IUIAnimationVariableCurveChangeHandler2(Pointer<COMObject> ptr) : super(ptr);

  int OnCurveChanged(
    Pointer<COMObject> variable,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(3)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<COMObject> variable,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<COMObject> variable,
          )>()(
        ptr.ref.lpVtbl,
        variable,
      );
}
