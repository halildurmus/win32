// ID2D1Brush.dart

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

import '../../graphics/direct2d/ID2D1Resource.dart';
import '../../graphics/direct2d/common/structs.g.dart';

/// @nodoc
const IID_ID2D1Brush = '{2CD906A8-12E2-11DC-9FED-001143A055F9}';

/// {@category Interface}
/// {@category com}
class ID2D1Brush extends ID2D1Resource {
  // vtable begins at 4, is 4 entries long.
  ID2D1Brush(Pointer<COMObject> ptr) : super(ptr);

  void SetOpacity(
    double opacity,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(4)
          .cast<
              Pointer<
                  NativeFunction<
                      Void Function(
            Pointer,
            Float opacity,
          )>>>()
          .value
          .asFunction<
              void Function(
            Pointer,
            double opacity,
          )>()(
        ptr.ref.lpVtbl,
        opacity,
      );

  void SetTransform(
    Pointer<D2D_MATRIX_3X2_F> transform,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(5)
          .cast<
              Pointer<
                  NativeFunction<
                      Void Function(
            Pointer,
            Pointer<D2D_MATRIX_3X2_F> transform,
          )>>>()
          .value
          .asFunction<
              void Function(
            Pointer,
            Pointer<D2D_MATRIX_3X2_F> transform,
          )>()(
        ptr.ref.lpVtbl,
        transform,
      );

  double GetOpacity() => ptr.ref.lpVtbl.value
          .elementAt(6)
          .cast<
              Pointer<
                  NativeFunction<
                      Float Function(
            Pointer,
          )>>>()
          .value
          .asFunction<
              double Function(
            Pointer,
          )>()(
        ptr.ref.lpVtbl,
      );

  void GetTransform(
    Pointer<D2D_MATRIX_3X2_F> transform,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(7)
          .cast<
              Pointer<
                  NativeFunction<
                      Void Function(
            Pointer,
            Pointer<D2D_MATRIX_3X2_F> transform,
          )>>>()
          .value
          .asFunction<
              void Function(
            Pointer,
            Pointer<D2D_MATRIX_3X2_F> transform,
          )>()(
        ptr.ref.lpVtbl,
        transform,
      );
}
