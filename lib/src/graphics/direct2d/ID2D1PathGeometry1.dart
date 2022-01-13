// ID2D1PathGeometry1.dart

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

import '../../graphics/direct2d/ID2D1PathGeometry.dart';
import '../../graphics/direct2d/common/structs.g.dart';
import '../../graphics/direct2d/structs.g.dart';
import '../../foundation/structs.g.dart';

/// @nodoc
const IID_ID2D1PathGeometry1 = '{62BAA2D2-AB54-41B7-B872-787E0106A421}';

/// {@category Interface}
/// {@category com}
class ID2D1PathGeometry1 extends ID2D1PathGeometry {
  // vtable begins at 21, is 1 entries long.
  ID2D1PathGeometry1(Pointer<COMObject> ptr) : super(ptr);

  int ComputePointAndSegmentAtLength(
    double length,
    int startSegment,
    Pointer<D2D_MATRIX_3X2_F> worldTransform,
    double flatteningTolerance,
    Pointer<D2D1_POINT_DESCRIPTION> pointDescription,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(21)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Float length,
            Uint32 startSegment,
            Pointer<D2D_MATRIX_3X2_F> worldTransform,
            Float flatteningTolerance,
            Pointer<D2D1_POINT_DESCRIPTION> pointDescription,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            double length,
            int startSegment,
            Pointer<D2D_MATRIX_3X2_F> worldTransform,
            double flatteningTolerance,
            Pointer<D2D1_POINT_DESCRIPTION> pointDescription,
          )>()(
        ptr.ref.lpVtbl,
        length,
        startSegment,
        worldTransform,
        flatteningTolerance,
        pointDescription,
      );
}
