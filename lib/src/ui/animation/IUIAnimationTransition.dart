// IUIAnimationTransition.dart

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
const IID_IUIAnimationTransition = '{DC6CE252-F731-41CF-B610-614B6CA049AD}';

/// {@category Interface}
/// {@category com}
class IUIAnimationTransition extends IUnknown {
  // vtable begins at 3, is 4 entries long.
  IUIAnimationTransition(Pointer<COMObject> ptr) : super(ptr);

  int SetInitialValue(
    double value,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(3)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Double value,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            double value,
          )>()(
        ptr.ref.lpVtbl,
        value,
      );

  int SetInitialVelocity(
    double velocity,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(4)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Double velocity,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            double velocity,
          )>()(
        ptr.ref.lpVtbl,
        velocity,
      );

  int IsDurationKnown() => ptr.ref.lpVtbl.value
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

  int GetDuration(
    Pointer<Double> duration,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(6)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Double> duration,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Double> duration,
          )>()(
        ptr.ref.lpVtbl,
        duration,
      );
}
