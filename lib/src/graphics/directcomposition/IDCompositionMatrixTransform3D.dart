// IDCompositionMatrixTransform3D.dart

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

import '../../graphics/directcomposition/IDCompositionTransform3D.dart';
import '../../graphics/direct3d/structs.g.dart';
import '../../foundation/structs.g.dart';
import '../../graphics/directcomposition/IDCompositionAnimation.dart';

/// @nodoc
const IID_IDCompositionMatrixTransform3D =
    '{4B3363F0-643B-41B7-B6E0-CCF22D34467C}';

/// {@category Interface}
/// {@category com}
class IDCompositionMatrixTransform3D extends IDCompositionTransform3D {
  // vtable begins at 3, is 3 entries long.
  IDCompositionMatrixTransform3D(Pointer<COMObject> ptr) : super(ptr);

  int SetMatrix(
    Pointer<D3DMATRIX> matrix,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(3)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<D3DMATRIX> matrix,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<D3DMATRIX> matrix,
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
