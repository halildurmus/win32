// ID2D1Ink.dart

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
import '../../graphics/direct2d/structs.g.dart';
import '../../foundation/structs.g.dart';
import '../../graphics/direct2d/ID2D1InkStyle.dart';
import '../../graphics/direct2d/common/structs.g.dart';
import '../../graphics/direct2d/common/ID2D1SimplifiedGeometrySink.dart';

/// @nodoc
const IID_ID2D1Ink = '{B499923B-7029-478F-A8B3-432C7C5F5312}';

/// {@category Interface}
/// {@category com}
class ID2D1Ink extends ID2D1Resource {
  // vtable begins at 4, is 10 entries long.
  ID2D1Ink(Pointer<COMObject> ptr) : super(ptr);

  void SetStartPoint(
    Pointer<D2D1_INK_POINT> startPoint,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(4)
          .cast<
              Pointer<
                  NativeFunction<
                      Void Function(
            Pointer,
            Pointer<D2D1_INK_POINT> startPoint,
          )>>>()
          .value
          .asFunction<
              void Function(
            Pointer,
            Pointer<D2D1_INK_POINT> startPoint,
          )>()(
        ptr.ref.lpVtbl,
        startPoint,
      );

  D2D1_INK_POINT GetStartPoint() => ptr.ref.lpVtbl.value
          .elementAt(5)
          .cast<
              Pointer<
                  NativeFunction<
                      D2D1_INK_POINT Function(
            Pointer,
          )>>>()
          .value
          .asFunction<
              D2D1_INK_POINT Function(
            Pointer,
          )>()(
        ptr.ref.lpVtbl,
      );

  int AddSegments(
    Pointer<D2D1_INK_BEZIER_SEGMENT> segments,
    int segmentsCount,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(6)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<D2D1_INK_BEZIER_SEGMENT> segments,
            Uint32 segmentsCount,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<D2D1_INK_BEZIER_SEGMENT> segments,
            int segmentsCount,
          )>()(
        ptr.ref.lpVtbl,
        segments,
        segmentsCount,
      );

  int RemoveSegmentsAtEnd(
    int segmentsCount,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(7)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Uint32 segmentsCount,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int segmentsCount,
          )>()(
        ptr.ref.lpVtbl,
        segmentsCount,
      );

  int SetSegments(
    int startSegment,
    Pointer<D2D1_INK_BEZIER_SEGMENT> segments,
    int segmentsCount,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(8)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Uint32 startSegment,
            Pointer<D2D1_INK_BEZIER_SEGMENT> segments,
            Uint32 segmentsCount,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int startSegment,
            Pointer<D2D1_INK_BEZIER_SEGMENT> segments,
            int segmentsCount,
          )>()(
        ptr.ref.lpVtbl,
        startSegment,
        segments,
        segmentsCount,
      );

  int SetSegmentAtEnd(
    Pointer<D2D1_INK_BEZIER_SEGMENT> segment,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(9)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<D2D1_INK_BEZIER_SEGMENT> segment,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<D2D1_INK_BEZIER_SEGMENT> segment,
          )>()(
        ptr.ref.lpVtbl,
        segment,
      );

  int GetSegmentCount() => ptr.ref.lpVtbl.value
          .elementAt(10)
          .cast<
              Pointer<
                  NativeFunction<
                      Uint32 Function(
            Pointer,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
          )>()(
        ptr.ref.lpVtbl,
      );

  int GetSegments(
    int startSegment,
    Pointer<D2D1_INK_BEZIER_SEGMENT> segments,
    int segmentsCount,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(11)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Uint32 startSegment,
            Pointer<D2D1_INK_BEZIER_SEGMENT> segments,
            Uint32 segmentsCount,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int startSegment,
            Pointer<D2D1_INK_BEZIER_SEGMENT> segments,
            int segmentsCount,
          )>()(
        ptr.ref.lpVtbl,
        startSegment,
        segments,
        segmentsCount,
      );

  int StreamAsGeometry(
    Pointer<COMObject> inkStyle,
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
            Pointer<COMObject> inkStyle,
            Pointer<D2D_MATRIX_3X2_F> worldTransform,
            Float flatteningTolerance,
            Pointer<COMObject> geometrySink,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<COMObject> inkStyle,
            Pointer<D2D_MATRIX_3X2_F> worldTransform,
            double flatteningTolerance,
            Pointer<COMObject> geometrySink,
          )>()(
        ptr.ref.lpVtbl,
        inkStyle,
        worldTransform,
        flatteningTolerance,
        geometrySink,
      );

  int GetBounds(
    Pointer<COMObject> inkStyle,
    Pointer<D2D_MATRIX_3X2_F> worldTransform,
    Pointer<D2D_RECT_F> bounds,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(13)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<COMObject> inkStyle,
            Pointer<D2D_MATRIX_3X2_F> worldTransform,
            Pointer<D2D_RECT_F> bounds,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<COMObject> inkStyle,
            Pointer<D2D_MATRIX_3X2_F> worldTransform,
            Pointer<D2D_RECT_F> bounds,
          )>()(
        ptr.ref.lpVtbl,
        inkStyle,
        worldTransform,
        bounds,
      );
}
