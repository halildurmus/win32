// IUIAnimationInterpolator.dart

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
import '../../ui/animation/structs.g.dart';

/// @nodoc
const IID_IUIAnimationInterpolator = '{7815CBBA-DDF7-478C-A46C-7B6C738B7978}';

/// {@category Interface}
/// {@category com}
class IUIAnimationInterpolator extends IUnknown {
  // vtable begins at 3, is 7 entries long.
  IUIAnimationInterpolator(Pointer<COMObject> ptr) : super(ptr);

  int SetInitialValueAndVelocity(
    double initialValue,
    double initialVelocity,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(3)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Double initialValue,
            Double initialVelocity,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            double initialValue,
            double initialVelocity,
          )>()(
        ptr.ref.lpVtbl,
        initialValue,
        initialVelocity,
      );

  int SetDuration(
    double duration,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(4)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Double duration,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            double duration,
          )>()(
        ptr.ref.lpVtbl,
        duration,
      );

  int GetDuration(
    Pointer<Double> duration,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(5)
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

  int GetFinalValue(
    Pointer<Double> value,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(6)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Double> value,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Double> value,
          )>()(
        ptr.ref.lpVtbl,
        value,
      );

  int InterpolateValue(
    double offset,
    Pointer<Double> value,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(7)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Double offset,
            Pointer<Double> value,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            double offset,
            Pointer<Double> value,
          )>()(
        ptr.ref.lpVtbl,
        offset,
        value,
      );

  int InterpolateVelocity(
    double offset,
    Pointer<Double> velocity,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(8)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Double offset,
            Pointer<Double> velocity,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            double offset,
            Pointer<Double> velocity,
          )>()(
        ptr.ref.lpVtbl,
        offset,
        velocity,
      );

  int GetDependencies(
    Pointer<Uint32> initialValueDependencies,
    Pointer<Uint32> initialVelocityDependencies,
    Pointer<Uint32> durationDependencies,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(9)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Uint32> initialValueDependencies,
            Pointer<Uint32> initialVelocityDependencies,
            Pointer<Uint32> durationDependencies,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Uint32> initialValueDependencies,
            Pointer<Uint32> initialVelocityDependencies,
            Pointer<Uint32> durationDependencies,
          )>()(
        ptr.ref.lpVtbl,
        initialValueDependencies,
        initialVelocityDependencies,
        durationDependencies,
      );
}
