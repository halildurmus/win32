// IDCompositionAffineTransform2DEffect.dart

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
import '../../graphics/structs.g.dart';
import '../../foundation/structs.g.dart';
import '../../graphics/direct2d/common/structs.g.dart';
import '../../graphics/directcomposition/IDCompositionAnimation.dart';

/// @nodoc
const IID_IDCompositionAffineTransform2DEffect =
    '{0B74B9E8-CDD6-492F-BBBC-5ED32157026D}';

/// {@category Interface}
/// {@category com}
class IDCompositionAffineTransform2DEffect extends IDCompositionFilterEffect {
  // vtable begins at 4, is 7 entries long.
  IDCompositionAffineTransform2DEffect(Pointer<COMObject> ptr) : super(ptr);

  int SetInterpolationMode(
    int interpolationMode,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(4)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Uint32 interpolationMode,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int interpolationMode,
          )>()(
        ptr.ref.lpVtbl,
        interpolationMode,
      );

  int SetBorderMode(
    int borderMode,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(5)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Uint32 borderMode,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int borderMode,
          )>()(
        ptr.ref.lpVtbl,
        borderMode,
      );

  int SetTransformMatrix(
    Pointer<D2D_MATRIX_3X2_F> transformMatrix,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(6)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<D2D_MATRIX_3X2_F> transformMatrix,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<D2D_MATRIX_3X2_F> transformMatrix,
          )>()(
        ptr.ref.lpVtbl,
        transformMatrix,
      );

  int SetTransformMatrixElement_1(
    int row,
    int column,
    Pointer<COMObject> animation,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(7)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Int32 row,
            Int32 column,
            Pointer<COMObject> animation,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int row,
            int column,
            Pointer<COMObject> animation,
          )>()(
        ptr.ref.lpVtbl,
        row,
        column,
        animation,
      );

  int SetTransformMatrixElement(
    int row,
    int column,
    double value,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(8)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Int32 row,
            Int32 column,
            Float value,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int row,
            int column,
            double value,
          )>()(
        ptr.ref.lpVtbl,
        row,
        column,
        value,
      );

  int SetSharpness_1(
    Pointer<COMObject> animation,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(9)
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

  int SetSharpness(
    double sharpness,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(10)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Float sharpness,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            double sharpness,
          )>()(
        ptr.ref.lpVtbl,
        sharpness,
      );
}
