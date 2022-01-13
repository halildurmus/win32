// IUIAnimationTransitionLibrary.dart

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
import '../../ui/animation/IUIAnimationTransition.dart';
import '../../foundation/structs.g.dart';
import '../../ui/animation/structs.g.dart';

/// @nodoc
const IID_IUIAnimationTransitionLibrary =
    '{CA5A14B1-D24F-48B8-8FE4-C78169BA954E}';

/// {@category Interface}
/// {@category com}
class IUIAnimationTransitionLibrary extends IUnknown {
  // vtable begins at 3, is 12 entries long.
  IUIAnimationTransitionLibrary(Pointer<COMObject> ptr) : super(ptr);

  int CreateInstantaneousTransition(
    double finalValue,
    Pointer<Pointer<COMObject>> transition,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(3)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Double finalValue,
            Pointer<Pointer<COMObject>> transition,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            double finalValue,
            Pointer<Pointer<COMObject>> transition,
          )>()(
        ptr.ref.lpVtbl,
        finalValue,
        transition,
      );

  int CreateConstantTransition(
    double duration,
    Pointer<Pointer<COMObject>> transition,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(4)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Double duration,
            Pointer<Pointer<COMObject>> transition,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            double duration,
            Pointer<Pointer<COMObject>> transition,
          )>()(
        ptr.ref.lpVtbl,
        duration,
        transition,
      );

  int CreateDiscreteTransition(
    double delay,
    double finalValue,
    double hold,
    Pointer<Pointer<COMObject>> transition,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(5)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Double delay,
            Double finalValue,
            Double hold,
            Pointer<Pointer<COMObject>> transition,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            double delay,
            double finalValue,
            double hold,
            Pointer<Pointer<COMObject>> transition,
          )>()(
        ptr.ref.lpVtbl,
        delay,
        finalValue,
        hold,
        transition,
      );

  int CreateLinearTransition(
    double duration,
    double finalValue,
    Pointer<Pointer<COMObject>> transition,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(6)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Double duration,
            Double finalValue,
            Pointer<Pointer<COMObject>> transition,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            double duration,
            double finalValue,
            Pointer<Pointer<COMObject>> transition,
          )>()(
        ptr.ref.lpVtbl,
        duration,
        finalValue,
        transition,
      );

  int CreateLinearTransitionFromSpeed(
    double speed,
    double finalValue,
    Pointer<Pointer<COMObject>> transition,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(7)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Double speed,
            Double finalValue,
            Pointer<Pointer<COMObject>> transition,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            double speed,
            double finalValue,
            Pointer<Pointer<COMObject>> transition,
          )>()(
        ptr.ref.lpVtbl,
        speed,
        finalValue,
        transition,
      );

  int CreateSinusoidalTransitionFromVelocity(
    double duration,
    double period,
    Pointer<Pointer<COMObject>> transition,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(8)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Double duration,
            Double period,
            Pointer<Pointer<COMObject>> transition,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            double duration,
            double period,
            Pointer<Pointer<COMObject>> transition,
          )>()(
        ptr.ref.lpVtbl,
        duration,
        period,
        transition,
      );

  int CreateSinusoidalTransitionFromRange(
    double duration,
    double minimumValue,
    double maximumValue,
    double period,
    int slope,
    Pointer<Pointer<COMObject>> transition,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(9)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Double duration,
            Double minimumValue,
            Double maximumValue,
            Double period,
            Int32 slope,
            Pointer<Pointer<COMObject>> transition,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            double duration,
            double minimumValue,
            double maximumValue,
            double period,
            int slope,
            Pointer<Pointer<COMObject>> transition,
          )>()(
        ptr.ref.lpVtbl,
        duration,
        minimumValue,
        maximumValue,
        period,
        slope,
        transition,
      );

  int CreateAccelerateDecelerateTransition(
    double duration,
    double finalValue,
    double accelerationRatio,
    double decelerationRatio,
    Pointer<Pointer<COMObject>> transition,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(10)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Double duration,
            Double finalValue,
            Double accelerationRatio,
            Double decelerationRatio,
            Pointer<Pointer<COMObject>> transition,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            double duration,
            double finalValue,
            double accelerationRatio,
            double decelerationRatio,
            Pointer<Pointer<COMObject>> transition,
          )>()(
        ptr.ref.lpVtbl,
        duration,
        finalValue,
        accelerationRatio,
        decelerationRatio,
        transition,
      );

  int CreateReversalTransition(
    double duration,
    Pointer<Pointer<COMObject>> transition,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(11)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Double duration,
            Pointer<Pointer<COMObject>> transition,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            double duration,
            Pointer<Pointer<COMObject>> transition,
          )>()(
        ptr.ref.lpVtbl,
        duration,
        transition,
      );

  int CreateCubicTransition(
    double duration,
    double finalValue,
    double finalVelocity,
    Pointer<Pointer<COMObject>> transition,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(12)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Double duration,
            Double finalValue,
            Double finalVelocity,
            Pointer<Pointer<COMObject>> transition,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            double duration,
            double finalValue,
            double finalVelocity,
            Pointer<Pointer<COMObject>> transition,
          )>()(
        ptr.ref.lpVtbl,
        duration,
        finalValue,
        finalVelocity,
        transition,
      );

  int CreateSmoothStopTransition(
    double maximumDuration,
    double finalValue,
    Pointer<Pointer<COMObject>> transition,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(13)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Double maximumDuration,
            Double finalValue,
            Pointer<Pointer<COMObject>> transition,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            double maximumDuration,
            double finalValue,
            Pointer<Pointer<COMObject>> transition,
          )>()(
        ptr.ref.lpVtbl,
        maximumDuration,
        finalValue,
        transition,
      );

  int CreateParabolicTransitionFromAcceleration(
    double finalValue,
    double finalVelocity,
    double acceleration,
    Pointer<Pointer<COMObject>> transition,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(14)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Double finalValue,
            Double finalVelocity,
            Double acceleration,
            Pointer<Pointer<COMObject>> transition,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            double finalValue,
            double finalVelocity,
            double acceleration,
            Pointer<Pointer<COMObject>> transition,
          )>()(
        ptr.ref.lpVtbl,
        finalValue,
        finalVelocity,
        acceleration,
        transition,
      );
}

/// @nodoc
const CLSID_UIAnimationTransitionLibrary =
    '{1D6322AD-AA85-4EF5-A828-86D71067D145}';

/// {@category com}
class UIAnimationTransitionLibrary extends IUIAnimationTransitionLibrary {
  UIAnimationTransitionLibrary(Pointer<COMObject> ptr) : super(ptr);

  factory UIAnimationTransitionLibrary.createInstance() {
    final ptr = calloc<COMObject>();
    final clsid = calloc<GUID>()
      ..ref.setGUID(CLSID_UIAnimationTransitionLibrary);
    final iid = calloc<GUID>()..ref.setGUID(IID_IUIAnimationTransitionLibrary);

    try {
      final hr = CoCreateInstance(clsid, nullptr, CLSCTX_ALL, iid, ptr.cast());

      if (FAILED(hr)) throw WindowsException(hr);

      return UIAnimationTransitionLibrary(ptr);
    } finally {
      free(clsid);
      free(iid);
    }
  }
}
