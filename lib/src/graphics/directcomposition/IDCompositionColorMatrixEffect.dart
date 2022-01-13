// IDCompositionColorMatrixEffect.dart

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
const IID_IDCompositionColorMatrixEffect =
    '{C1170A22-3CE2-4966-90D4-55408BFC84C4}';

/// {@category Interface}
/// {@category com}
class IDCompositionColorMatrixEffect extends IDCompositionFilterEffect {
  // vtable begins at 4, is 5 entries long.
  IDCompositionColorMatrixEffect(Pointer<COMObject> ptr) : super(ptr);

  int SetMatrix(
    Pointer<D2D_MATRIX_5X4_F> matrix,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(4)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<D2D_MATRIX_5X4_F> matrix,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<D2D_MATRIX_5X4_F> matrix,
          )>()(
        ptr.ref.lpVtbl,
        matrix,
      );

  int SetMatrixElement_1(
    int row,
    int column,
    Pointer<COMObject> animation,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(5)
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

  int SetMatrixElement(
    int row,
    int column,
    double value,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(6)
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

  int SetAlphaMode(
    int mode,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(7)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Uint32 mode,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int mode,
          )>()(
        ptr.ref.lpVtbl,
        mode,
      );

  int SetClampOutput(
    int clamp,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(8)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Int32 clamp,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int clamp,
          )>()(
        ptr.ref.lpVtbl,
        clamp,
      );
}
