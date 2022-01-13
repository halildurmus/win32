// ID2D1TransformedGeometry.dart

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

import '../../graphics/direct2d/ID2D1Geometry.dart';
import '../../graphics/direct2d/common/structs.g.dart';

/// @nodoc
const IID_ID2D1TransformedGeometry = '{2CD906BB-12E2-11DC-9FED-001143A055F9}';

/// {@category Interface}
/// {@category com}
class ID2D1TransformedGeometry extends ID2D1Geometry {
  // vtable begins at 17, is 2 entries long.
  ID2D1TransformedGeometry(Pointer<COMObject> ptr) : super(ptr);

  void GetSourceGeometry(
    Pointer<Pointer<COMObject>> sourceGeometry,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(17)
          .cast<
              Pointer<
                  NativeFunction<
                      Void Function(
            Pointer,
            Pointer<Pointer<COMObject>> sourceGeometry,
          )>>>()
          .value
          .asFunction<
              void Function(
            Pointer,
            Pointer<Pointer<COMObject>> sourceGeometry,
          )>()(
        ptr.ref.lpVtbl,
        sourceGeometry,
      );

  void GetTransform(
    Pointer<D2D_MATRIX_3X2_F> transform,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(18)
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
