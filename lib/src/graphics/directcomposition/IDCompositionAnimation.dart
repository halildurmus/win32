// IDCompositionAnimation.dart

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
const IID_IDCompositionAnimation = '{CBFD91D9-51B2-45E4-B3DE-D19CCFB863C5}';

/// {@category Interface}
/// {@category com}
class IDCompositionAnimation extends IUnknown {
  // vtable begins at 3, is 6 entries long.
  IDCompositionAnimation(Pointer<COMObject> ptr) : super(ptr);

  int Reset() => ptr.ref.lpVtbl.value
          .elementAt(3)
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

  int SetAbsoluteBeginTime(
    int beginTime,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(4)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Int64 beginTime,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int beginTime,
          )>()(
        ptr.ref.lpVtbl,
        beginTime,
      );

  int AddCubic(
    double beginOffset,
    double constantCoefficient,
    double linearCoefficient,
    double quadraticCoefficient,
    double cubicCoefficient,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(5)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Double beginOffset,
            Float constantCoefficient,
            Float linearCoefficient,
            Float quadraticCoefficient,
            Float cubicCoefficient,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            double beginOffset,
            double constantCoefficient,
            double linearCoefficient,
            double quadraticCoefficient,
            double cubicCoefficient,
          )>()(
        ptr.ref.lpVtbl,
        beginOffset,
        constantCoefficient,
        linearCoefficient,
        quadraticCoefficient,
        cubicCoefficient,
      );

  int AddSinusoidal(
    double beginOffset,
    double bias,
    double amplitude,
    double frequency,
    double phase,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(6)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Double beginOffset,
            Float bias,
            Float amplitude,
            Float frequency,
            Float phase,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            double beginOffset,
            double bias,
            double amplitude,
            double frequency,
            double phase,
          )>()(
        ptr.ref.lpVtbl,
        beginOffset,
        bias,
        amplitude,
        frequency,
        phase,
      );

  int AddRepeat(
    double beginOffset,
    double durationToRepeat,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(7)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Double beginOffset,
            Double durationToRepeat,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            double beginOffset,
            double durationToRepeat,
          )>()(
        ptr.ref.lpVtbl,
        beginOffset,
        durationToRepeat,
      );

  int End(
    double endOffset,
    double endValue,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(8)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Double endOffset,
            Float endValue,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            double endOffset,
            double endValue,
          )>()(
        ptr.ref.lpVtbl,
        endOffset,
        endValue,
      );
}
