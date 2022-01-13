// IDCompositionArithmeticCompositeEffect.dart

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

import '../../graphics/directcomposition/IDCompositionFilterEffect.dart';
import '../../graphics/direct2d/common/structs.g.dart';
import '../../foundation/structs.g.dart';
import '../../graphics/directcomposition/IDCompositionAnimation.dart';

/// @nodoc
const IID_IDCompositionArithmeticCompositeEffect =
    '{3B67DFA8-E3DD-4E61-B640-46C2F3D739DC}';

/// {@category Interface}
/// {@category com}
class IDCompositionArithmeticCompositeEffect extends IDCompositionFilterEffect {
  // vtable begins at 4, is 10 entries long.
  IDCompositionArithmeticCompositeEffect(Pointer<COMObject> ptr) : super(ptr);

  int SetCoefficients(
    Pointer<D2D_VECTOR_4F> coefficients,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(4)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<D2D_VECTOR_4F> coefficients,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<D2D_VECTOR_4F> coefficients,
          )>()(
        ptr.ref.lpVtbl,
        coefficients,
      );

  int SetClampOutput(
    int clampoutput,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(5)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Int32 clampoutput,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int clampoutput,
          )>()(
        ptr.ref.lpVtbl,
        clampoutput,
      );

  int SetCoefficient1_1(
    Pointer<COMObject> animation,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(6)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<COMObject> animation,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<COMObject> animation,
          )>()(
        ptr.ref.lpVtbl,
        animation,
      );

  int SetCoefficient1(
    double Coeffcient1,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(7)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Float Coeffcient1,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            double Coeffcient1,
          )>()(
        ptr.ref.lpVtbl,
        Coeffcient1,
      );

  int SetCoefficient2_1(
    Pointer<COMObject> animation,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(8)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<COMObject> animation,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<COMObject> animation,
          )>()(
        ptr.ref.lpVtbl,
        animation,
      );

  int SetCoefficient2(
    double Coefficient2,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(9)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Float Coefficient2,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            double Coefficient2,
          )>()(
        ptr.ref.lpVtbl,
        Coefficient2,
      );

  int SetCoefficient3_1(
    Pointer<COMObject> animation,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(10)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<COMObject> animation,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<COMObject> animation,
          )>()(
        ptr.ref.lpVtbl,
        animation,
      );

  int SetCoefficient3(
    double Coefficient3,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(11)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Float Coefficient3,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            double Coefficient3,
          )>()(
        ptr.ref.lpVtbl,
        Coefficient3,
      );

  int SetCoefficient4_1(
    Pointer<COMObject> animation,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(12)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<COMObject> animation,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<COMObject> animation,
          )>()(
        ptr.ref.lpVtbl,
        animation,
      );

  int SetCoefficient4(
    double Coefficient4,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(13)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Float Coefficient4,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            double Coefficient4,
          )>()(
        ptr.ref.lpVtbl,
        Coefficient4,
      );
}
