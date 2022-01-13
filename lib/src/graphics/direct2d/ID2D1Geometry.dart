// ID2D1Geometry.dart

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
import '../../foundation/structs.g.dart';
import '../../graphics/direct2d/ID2D1StrokeStyle.dart';
import '../../graphics/direct2d/ID2D1Geometry.dart';
import '../../graphics/direct2d/structs.g.dart';
import '../../graphics/direct2d/common/ID2D1SimplifiedGeometrySink.dart';
import '../../graphics/direct2d/ID2D1TessellationSink.dart';

/// @nodoc
const IID_ID2D1Geometry = '{2CD906A1-12E2-11DC-9FED-001143A055F9}';

/// {@category Interface}
/// {@category com}
class ID2D1Geometry extends ID2D1Resource {
  // vtable begins at 4, is 13 entries long.
  ID2D1Geometry(Pointer<COMObject> ptr) : super(ptr);

  int GetBounds(
    Pointer<D2D_MATRIX_3X2_F> worldTransform,
    Pointer<D2D_RECT_F> bounds,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(4)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<D2D_MATRIX_3X2_F> worldTransform,
            Pointer<D2D_RECT_F> bounds,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<D2D_MATRIX_3X2_F> worldTransform,
            Pointer<D2D_RECT_F> bounds,
          )>()(
        ptr.ref.lpVtbl,
        worldTransform,
        bounds,
      );

  int GetWidenedBounds(
    double strokeWidth,
    Pointer<COMObject> strokeStyle,
    Pointer<D2D_MATRIX_3X2_F> worldTransform,
    double flatteningTolerance,
    Pointer<D2D_RECT_F> bounds,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(5)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Float strokeWidth,
            Pointer<COMObject> strokeStyle,
            Pointer<D2D_MATRIX_3X2_F> worldTransform,
            Float flatteningTolerance,
            Pointer<D2D_RECT_F> bounds,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            double strokeWidth,
            Pointer<COMObject> strokeStyle,
            Pointer<D2D_MATRIX_3X2_F> worldTransform,
            double flatteningTolerance,
            Pointer<D2D_RECT_F> bounds,
          )>()(
        ptr.ref.lpVtbl,
        strokeWidth,
        strokeStyle,
        worldTransform,
        flatteningTolerance,
        bounds,
      );

  int StrokeContainsPoint(
    D2D_POINT_2F point,
    double strokeWidth,
    Pointer<COMObject> strokeStyle,
    Pointer<D2D_MATRIX_3X2_F> worldTransform,
    double flatteningTolerance,
    Pointer<Int32> contains,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(6)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            D2D_POINT_2F point,
            Float strokeWidth,
            Pointer<COMObject> strokeStyle,
            Pointer<D2D_MATRIX_3X2_F> worldTransform,
            Float flatteningTolerance,
            Pointer<Int32> contains,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            D2D_POINT_2F point,
            double strokeWidth,
            Pointer<COMObject> strokeStyle,
            Pointer<D2D_MATRIX_3X2_F> worldTransform,
            double flatteningTolerance,
            Pointer<Int32> contains,
          )>()(
        ptr.ref.lpVtbl,
        point,
        strokeWidth,
        strokeStyle,
        worldTransform,
        flatteningTolerance,
        contains,
      );

  int FillContainsPoint(
    D2D_POINT_2F point,
    Pointer<D2D_MATRIX_3X2_F> worldTransform,
    double flatteningTolerance,
    Pointer<Int32> contains,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(7)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            D2D_POINT_2F point,
            Pointer<D2D_MATRIX_3X2_F> worldTransform,
            Float flatteningTolerance,
            Pointer<Int32> contains,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            D2D_POINT_2F point,
            Pointer<D2D_MATRIX_3X2_F> worldTransform,
            double flatteningTolerance,
            Pointer<Int32> contains,
          )>()(
        ptr.ref.lpVtbl,
        point,
        worldTransform,
        flatteningTolerance,
        contains,
      );

  int CompareWithGeometry(
    Pointer<COMObject> inputGeometry,
    Pointer<D2D_MATRIX_3X2_F> inputGeometryTransform,
    double flatteningTolerance,
    Pointer<Uint32> relation,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(8)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<COMObject> inputGeometry,
            Pointer<D2D_MATRIX_3X2_F> inputGeometryTransform,
            Float flatteningTolerance,
            Pointer<Uint32> relation,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<COMObject> inputGeometry,
            Pointer<D2D_MATRIX_3X2_F> inputGeometryTransform,
            double flatteningTolerance,
            Pointer<Uint32> relation,
          )>()(
        ptr.ref.lpVtbl,
        inputGeometry,
        inputGeometryTransform,
        flatteningTolerance,
        relation,
      );

  int Simplify(
    int simplificationOption,
    Pointer<D2D_MATRIX_3X2_F> worldTransform,
    double flatteningTolerance,
    Pointer<COMObject> geometrySink,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(9)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Uint32 simplificationOption,
            Pointer<D2D_MATRIX_3X2_F> worldTransform,
            Float flatteningTolerance,
            Pointer<COMObject> geometrySink,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int simplificationOption,
            Pointer<D2D_MATRIX_3X2_F> worldTransform,
            double flatteningTolerance,
            Pointer<COMObject> geometrySink,
          )>()(
        ptr.ref.lpVtbl,
        simplificationOption,
        worldTransform,
        flatteningTolerance,
        geometrySink,
      );

  int Tessellate(
    Pointer<D2D_MATRIX_3X2_F> worldTransform,
    double flatteningTolerance,
    Pointer<COMObject> tessellationSink,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(10)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<D2D_MATRIX_3X2_F> worldTransform,
            Float flatteningTolerance,
            Pointer<COMObject> tessellationSink,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<D2D_MATRIX_3X2_F> worldTransform,
            double flatteningTolerance,
            Pointer<COMObject> tessellationSink,
          )>()(
        ptr.ref.lpVtbl,
        worldTransform,
        flatteningTolerance,
        tessellationSink,
      );

  int CombineWithGeometry(
    Pointer<COMObject> inputGeometry,
    int combineMode,
    Pointer<D2D_MATRIX_3X2_F> inputGeometryTransform,
    double flatteningTolerance,
    Pointer<COMObject> geometrySink,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(11)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<COMObject> inputGeometry,
            Uint32 combineMode,
            Pointer<D2D_MATRIX_3X2_F> inputGeometryTransform,
            Float flatteningTolerance,
            Pointer<COMObject> geometrySink,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<COMObject> inputGeometry,
            int combineMode,
            Pointer<D2D_MATRIX_3X2_F> inputGeometryTransform,
            double flatteningTolerance,
            Pointer<COMObject> geometrySink,
          )>()(
        ptr.ref.lpVtbl,
        inputGeometry,
        combineMode,
        inputGeometryTransform,
        flatteningTolerance,
        geometrySink,
      );

  int Outline(
    Pointer<D2D_MATRIX_3X2_F> worldTransform,
    double flatteningTolerance,
    Pointer<COMObject> geometrySink,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(12)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<D2D_MATRIX_3X2_F> worldTransform,
            Float flatteningTolerance,
            Pointer<COMObject> geometrySink,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<D2D_MATRIX_3X2_F> worldTransform,
            double flatteningTolerance,
            Pointer<COMObject> geometrySink,
          )>()(
        ptr.ref.lpVtbl,
        worldTransform,
        flatteningTolerance,
        geometrySink,
      );

  int ComputeArea(
    Pointer<D2D_MATRIX_3X2_F> worldTransform,
    double flatteningTolerance,
    Pointer<Float> area,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(13)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<D2D_MATRIX_3X2_F> worldTransform,
            Float flatteningTolerance,
            Pointer<Float> area,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<D2D_MATRIX_3X2_F> worldTransform,
            double flatteningTolerance,
            Pointer<Float> area,
          )>()(
        ptr.ref.lpVtbl,
        worldTransform,
        flatteningTolerance,
        area,
      );

  int ComputeLength(
    Pointer<D2D_MATRIX_3X2_F> worldTransform,
    double flatteningTolerance,
    Pointer<Float> length,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(14)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<D2D_MATRIX_3X2_F> worldTransform,
            Float flatteningTolerance,
            Pointer<Float> length,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<D2D_MATRIX_3X2_F> worldTransform,
            double flatteningTolerance,
            Pointer<Float> length,
          )>()(
        ptr.ref.lpVtbl,
        worldTransform,
        flatteningTolerance,
        length,
      );

  int ComputePointAtLength(
    double length,
    Pointer<D2D_MATRIX_3X2_F> worldTransform,
    double flatteningTolerance,
    Pointer<D2D_POINT_2F> point,
    Pointer<D2D_POINT_2F> unitTangentVector,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(15)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Float length,
            Pointer<D2D_MATRIX_3X2_F> worldTransform,
            Float flatteningTolerance,
            Pointer<D2D_POINT_2F> point,
            Pointer<D2D_POINT_2F> unitTangentVector,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            double length,
            Pointer<D2D_MATRIX_3X2_F> worldTransform,
            double flatteningTolerance,
            Pointer<D2D_POINT_2F> point,
            Pointer<D2D_POINT_2F> unitTangentVector,
          )>()(
        ptr.ref.lpVtbl,
        length,
        worldTransform,
        flatteningTolerance,
        point,
        unitTangentVector,
      );

  int Widen(
    double strokeWidth,
    Pointer<COMObject> strokeStyle,
    Pointer<D2D_MATRIX_3X2_F> worldTransform,
    double flatteningTolerance,
    Pointer<COMObject> geometrySink,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(16)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Float strokeWidth,
            Pointer<COMObject> strokeStyle,
            Pointer<D2D_MATRIX_3X2_F> worldTransform,
            Float flatteningTolerance,
            Pointer<COMObject> geometrySink,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            double strokeWidth,
            Pointer<COMObject> strokeStyle,
            Pointer<D2D_MATRIX_3X2_F> worldTransform,
            double flatteningTolerance,
            Pointer<COMObject> geometrySink,
          )>()(
        ptr.ref.lpVtbl,
        strokeWidth,
        strokeStyle,
        worldTransform,
        flatteningTolerance,
        geometrySink,
      );
}
