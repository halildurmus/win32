// IUIAnimationInterpolator2.dart

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
import '../../ui/animation/IUIAnimationPrimitiveInterpolation.dart';
import '../../ui/animation/structs.g.dart';

/// @nodoc
const IID_IUIAnimationInterpolator2 = '{EA76AFF8-EA22-4A23-A0EF-A6A966703518}';

/// {@category Interface}
/// {@category com}
class IUIAnimationInterpolator2 extends IUnknown {
  // vtable begins at 3, is 9 entries long.
  IUIAnimationInterpolator2(Pointer<COMObject> ptr) : super(ptr);

  int GetDimension(
    Pointer<Uint32> dimension,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(3)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Uint32> dimension,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Uint32> dimension,
          )>()(
        ptr.ref.lpVtbl,
        dimension,
      );

  int SetInitialValueAndVelocity(
    Pointer<Double> initialValue,
    Pointer<Double> initialVelocity,
    int cDimension,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(4)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Double> initialValue,
            Pointer<Double> initialVelocity,
            Uint32 cDimension,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Double> initialValue,
            Pointer<Double> initialVelocity,
            int cDimension,
          )>()(
        ptr.ref.lpVtbl,
        initialValue,
        initialVelocity,
        cDimension,
      );

  int SetDuration(
    double duration,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(5)
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

  int GetFinalValue(
    Pointer<Double> value,
    int cDimension,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(7)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Double> value,
            Uint32 cDimension,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Double> value,
            int cDimension,
          )>()(
        ptr.ref.lpVtbl,
        value,
        cDimension,
      );

  int InterpolateValue(
    double offset,
    Pointer<Double> value,
    int cDimension,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(8)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Double offset,
            Pointer<Double> value,
            Uint32 cDimension,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            double offset,
            Pointer<Double> value,
            int cDimension,
          )>()(
        ptr.ref.lpVtbl,
        offset,
        value,
        cDimension,
      );

  int InterpolateVelocity(
    double offset,
    Pointer<Double> velocity,
    int cDimension,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(9)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Double offset,
            Pointer<Double> velocity,
            Uint32 cDimension,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            double offset,
            Pointer<Double> velocity,
            int cDimension,
          )>()(
        ptr.ref.lpVtbl,
        offset,
        velocity,
        cDimension,
      );

  int GetPrimitiveInterpolation(
    Pointer<COMObject> interpolation,
    int cDimension,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(10)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<COMObject> interpolation,
            Uint32 cDimension,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<COMObject> interpolation,
            int cDimension,
          )>()(
        ptr.ref.lpVtbl,
        interpolation,
        cDimension,
      );

  int GetDependencies(
    Pointer<Uint32> initialValueDependencies,
    Pointer<Uint32> initialVelocityDependencies,
    Pointer<Uint32> durationDependencies,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(11)
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
