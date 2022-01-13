// IUIAnimationTransitionLibrary2.dart

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
import '../../ui/animation/IUIAnimationTransition2.dart';
import '../../foundation/structs.g.dart';
import '../../ui/animation/structs.g.dart';

/// @nodoc
const IID_IUIAnimationTransitionLibrary2 =
    '{03CFAE53-9580-4EE3-B363-2ECE51B4AF6A}';

/// {@category Interface}
/// {@category com}
class IUIAnimationTransitionLibrary2 extends IUnknown {
  // vtable begins at 3, is 19 entries long.
  IUIAnimationTransitionLibrary2(Pointer<COMObject> ptr) : super(ptr);

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

  int CreateInstantaneousVectorTransition(
    Pointer<Double> finalValue,
    int cDimension,
    Pointer<Pointer<COMObject>> transition,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(4)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Double> finalValue,
            Uint32 cDimension,
            Pointer<Pointer<COMObject>> transition,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Double> finalValue,
            int cDimension,
            Pointer<Pointer<COMObject>> transition,
          )>()(
        ptr.ref.lpVtbl,
        finalValue,
        cDimension,
        transition,
      );

  int CreateConstantTransition(
    double duration,
    Pointer<Pointer<COMObject>> transition,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(5)
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
          .elementAt(6)
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

  int CreateDiscreteVectorTransition(
    double delay,
    Pointer<Double> finalValue,
    int cDimension,
    double hold,
    Pointer<Pointer<COMObject>> transition,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(7)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Double delay,
            Pointer<Double> finalValue,
            Uint32 cDimension,
            Double hold,
            Pointer<Pointer<COMObject>> transition,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            double delay,
            Pointer<Double> finalValue,
            int cDimension,
            double hold,
            Pointer<Pointer<COMObject>> transition,
          )>()(
        ptr.ref.lpVtbl,
        delay,
        finalValue,
        cDimension,
        hold,
        transition,
      );

  int CreateLinearTransition(
    double duration,
    double finalValue,
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

  int CreateLinearVectorTransition(
    double duration,
    Pointer<Double> finalValue,
    int cDimension,
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
            Pointer<Double> finalValue,
            Uint32 cDimension,
            Pointer<Pointer<COMObject>> transition,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            double duration,
            Pointer<Double> finalValue,
            int cDimension,
            Pointer<Pointer<COMObject>> transition,
          )>()(
        ptr.ref.lpVtbl,
        duration,
        finalValue,
        cDimension,
        transition,
      );

  int CreateLinearTransitionFromSpeed(
    double speed,
    double finalValue,
    Pointer<Pointer<COMObject>> transition,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(10)
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

  int CreateLinearVectorTransitionFromSpeed(
    double speed,
    Pointer<Double> finalValue,
    int cDimension,
    Pointer<Pointer<COMObject>> transition,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(11)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Double speed,
            Pointer<Double> finalValue,
            Uint32 cDimension,
            Pointer<Pointer<COMObject>> transition,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            double speed,
            Pointer<Double> finalValue,
            int cDimension,
            Pointer<Pointer<COMObject>> transition,
          )>()(
        ptr.ref.lpVtbl,
        speed,
        finalValue,
        cDimension,
        transition,
      );

  int CreateSinusoidalTransitionFromVelocity(
    double duration,
    double period,
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
          .elementAt(13)
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
          .elementAt(14)
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
          .elementAt(15)
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
          .elementAt(16)
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

  int CreateCubicVectorTransition(
    double duration,
    Pointer<Double> finalValue,
    Pointer<Double> finalVelocity,
    int cDimension,
    Pointer<Pointer<COMObject>> transition,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(17)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Double duration,
            Pointer<Double> finalValue,
            Pointer<Double> finalVelocity,
            Uint32 cDimension,
            Pointer<Pointer<COMObject>> transition,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            double duration,
            Pointer<Double> finalValue,
            Pointer<Double> finalVelocity,
            int cDimension,
            Pointer<Pointer<COMObject>> transition,
          )>()(
        ptr.ref.lpVtbl,
        duration,
        finalValue,
        finalVelocity,
        cDimension,
        transition,
      );

  int CreateSmoothStopTransition(
    double maximumDuration,
    double finalValue,
    Pointer<Pointer<COMObject>> transition,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(18)
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
          .elementAt(19)
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

  int CreateCubicBezierLinearTransition(
    double duration,
    double finalValue,
    double x1,
    double y1,
    double x2,
    double y2,
    Pointer<Pointer<COMObject>> ppTransition,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(20)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Double duration,
            Double finalValue,
            Double x1,
            Double y1,
            Double x2,
            Double y2,
            Pointer<Pointer<COMObject>> ppTransition,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            double duration,
            double finalValue,
            double x1,
            double y1,
            double x2,
            double y2,
            Pointer<Pointer<COMObject>> ppTransition,
          )>()(
        ptr.ref.lpVtbl,
        duration,
        finalValue,
        x1,
        y1,
        x2,
        y2,
        ppTransition,
      );

  int CreateCubicBezierLinearVectorTransition(
    double duration,
    Pointer<Double> finalValue,
    int cDimension,
    double x1,
    double y1,
    double x2,
    double y2,
    Pointer<Pointer<COMObject>> ppTransition,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(21)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Double duration,
            Pointer<Double> finalValue,
            Uint32 cDimension,
            Double x1,
            Double y1,
            Double x2,
            Double y2,
            Pointer<Pointer<COMObject>> ppTransition,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            double duration,
            Pointer<Double> finalValue,
            int cDimension,
            double x1,
            double y1,
            double x2,
            double y2,
            Pointer<Pointer<COMObject>> ppTransition,
          )>()(
        ptr.ref.lpVtbl,
        duration,
        finalValue,
        cDimension,
        x1,
        y1,
        x2,
        y2,
        ppTransition,
      );
}

/// @nodoc
const CLSID_UIAnimationTransitionLibrary2 =
    '{812F944A-C5C8-4CD9-B0A6-B3DA802F228D}';

/// {@category com}
class UIAnimationTransitionLibrary2 extends IUIAnimationTransitionLibrary2 {
  UIAnimationTransitionLibrary2(Pointer<COMObject> ptr) : super(ptr);

  factory UIAnimationTransitionLibrary2.createInstance() {
    final ptr = calloc<COMObject>();
    final clsid = calloc<GUID>()
      ..ref.setGUID(CLSID_UIAnimationTransitionLibrary2);
    final iid = calloc<GUID>()..ref.setGUID(IID_IUIAnimationTransitionLibrary2);

    try {
      final hr = CoCreateInstance(clsid, nullptr, CLSCTX_ALL, iid, ptr.cast());

      if (FAILED(hr)) throw WindowsException(hr);

      return UIAnimationTransitionLibrary2(ptr);
    } finally {
      free(clsid);
      free(iid);
    }
  }
}
