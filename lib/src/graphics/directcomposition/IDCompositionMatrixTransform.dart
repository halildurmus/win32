// IDCompositionMatrixTransform.dart

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

import '../../graphics/directcomposition/IDCompositionTransform.dart';
import '../../graphics/direct2d/common/structs.g.dart';
import '../../foundation/structs.g.dart';
import '../../graphics/directcomposition/IDCompositionAnimation.dart';

/// @nodoc
const IID_IDCompositionMatrixTransform =
    '{16CDFF07-C503-419C-83F2-0965C7AF1FA6}';

/// {@category Interface}
/// {@category com}
class IDCompositionMatrixTransform extends IDCompositionTransform {
  // vtable begins at 3, is 3 entries long.
  IDCompositionMatrixTransform(Pointer<COMObject> ptr) : super(ptr);

  int SetMatrix(
    Pointer<D2D_MATRIX_3X2_F> matrix,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(3)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<D2D_MATRIX_3X2_F> matrix,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<D2D_MATRIX_3X2_F> matrix,
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
          .elementAt(4)
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
          .elementAt(5)
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
}
