// ID2D1GeometrySink.dart

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

import '../../graphics/direct2d/common/ID2D1SimplifiedGeometrySink.dart';
import '../../graphics/direct2d/common/structs.g.dart';
import '../../graphics/direct2d/structs.g.dart';

/// @nodoc
const IID_ID2D1GeometrySink = '{2CD9069F-12E2-11DC-9FED-001143A055F9}';

/// {@category Interface}
/// {@category com}
class ID2D1GeometrySink extends ID2D1SimplifiedGeometrySink {
  // vtable begins at 10, is 5 entries long.
  ID2D1GeometrySink(Pointer<COMObject> ptr) : super(ptr);

  void AddLine(
    D2D_POINT_2F point,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(10)
          .cast<
              Pointer<
                  NativeFunction<
                      Void Function(
            Pointer,
            D2D_POINT_2F point,
          )>>>()
          .value
          .asFunction<
              void Function(
            Pointer,
            D2D_POINT_2F point,
          )>()(
        ptr.ref.lpVtbl,
        point,
      );

  void AddBezier(
    Pointer<D2D1_BEZIER_SEGMENT> bezier,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(11)
          .cast<
              Pointer<
                  NativeFunction<
                      Void Function(
            Pointer,
            Pointer<D2D1_BEZIER_SEGMENT> bezier,
          )>>>()
          .value
          .asFunction<
              void Function(
            Pointer,
            Pointer<D2D1_BEZIER_SEGMENT> bezier,
          )>()(
        ptr.ref.lpVtbl,
        bezier,
      );

  void AddQuadraticBezier(
    Pointer<D2D1_QUADRATIC_BEZIER_SEGMENT> bezier,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(12)
          .cast<
              Pointer<
                  NativeFunction<
                      Void Function(
            Pointer,
            Pointer<D2D1_QUADRATIC_BEZIER_SEGMENT> bezier,
          )>>>()
          .value
          .asFunction<
              void Function(
            Pointer,
            Pointer<D2D1_QUADRATIC_BEZIER_SEGMENT> bezier,
          )>()(
        ptr.ref.lpVtbl,
        bezier,
      );

  void AddQuadraticBeziers(
    Pointer<D2D1_QUADRATIC_BEZIER_SEGMENT> beziers,
    int beziersCount,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(13)
          .cast<
              Pointer<
                  NativeFunction<
                      Void Function(
            Pointer,
            Pointer<D2D1_QUADRATIC_BEZIER_SEGMENT> beziers,
            Uint32 beziersCount,
          )>>>()
          .value
          .asFunction<
              void Function(
            Pointer,
            Pointer<D2D1_QUADRATIC_BEZIER_SEGMENT> beziers,
            int beziersCount,
          )>()(
        ptr.ref.lpVtbl,
        beziers,
        beziersCount,
      );

  void AddArc(
    Pointer<D2D1_ARC_SEGMENT> arc,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(14)
          .cast<
              Pointer<
                  NativeFunction<
                      Void Function(
            Pointer,
            Pointer<D2D1_ARC_SEGMENT> arc,
          )>>>()
          .value
          .asFunction<
              void Function(
            Pointer,
            Pointer<D2D1_ARC_SEGMENT> arc,
          )>()(
        ptr.ref.lpVtbl,
        arc,
      );
}
