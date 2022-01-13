// IUIAnimationPrimitiveInterpolation.dart

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
const IID_IUIAnimationPrimitiveInterpolation =
    '{BAB20D63-4361-45DA-A24F-AB8508846B5B}';

/// {@category Interface}
/// {@category com}
class IUIAnimationPrimitiveInterpolation extends IUnknown {
  // vtable begins at 3, is 2 entries long.
  IUIAnimationPrimitiveInterpolation(Pointer<COMObject> ptr) : super(ptr);

  int AddCubic(
    int dimension,
    double beginOffset,
    double constantCoefficient,
    double linearCoefficient,
    double quadraticCoefficient,
    double cubicCoefficient,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(3)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Uint32 dimension,
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
            int dimension,
            double beginOffset,
            double constantCoefficient,
            double linearCoefficient,
            double quadraticCoefficient,
            double cubicCoefficient,
          )>()(
        ptr.ref.lpVtbl,
        dimension,
        beginOffset,
        constantCoefficient,
        linearCoefficient,
        quadraticCoefficient,
        cubicCoefficient,
      );

  int AddSinusoidal(
    int dimension,
    double beginOffset,
    double bias,
    double amplitude,
    double frequency,
    double phase,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(4)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Uint32 dimension,
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
            int dimension,
            double beginOffset,
            double bias,
            double amplitude,
            double frequency,
            double phase,
          )>()(
        ptr.ref.lpVtbl,
        dimension,
        beginOffset,
        bias,
        amplitude,
        frequency,
        phase,
      );
}
