// ID2D1SimplifiedGeometrySink.dart

// THIS FILE IS GENERATED AUTOMATICALLY AND SHOULD NOT BE EDITED DIRECTLY.

// ignore_for_file: unused_import, directives_ordering

import 'dart:ffi';

import 'package:ffi/ffi.dart';

import '../../../combase.dart';
import '../../../constants.dart';
import '../../../exceptions.dart';
import '../../../guid.dart';
import '../../../macros.dart';
import '../../../ole32.dart';
import '../../../utils.dart';

import '../../../system/com/IUnknown.dart';
import '../../../graphics/direct2d/common/structs.g.dart';
import '../../../foundation/structs.g.dart';

/// @nodoc
const IID_ID2D1SimplifiedGeometrySink =
    '{2CD9069E-12E2-11DC-9FED-001143A055F9}';

/// {@category Interface}
/// {@category com}
class ID2D1SimplifiedGeometrySink extends IUnknown {
  // vtable begins at 3, is 7 entries long.
  ID2D1SimplifiedGeometrySink(Pointer<COMObject> ptr) : super(ptr);

  void SetFillMode(
    int fillMode,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(3)
          .cast<
              Pointer<
                  NativeFunction<
                      Void Function(
            Pointer,
            Uint32 fillMode,
          )>>>()
          .value
          .asFunction<
              void Function(
            Pointer,
            int fillMode,
          )>()(
        ptr.ref.lpVtbl,
        fillMode,
      );

  void SetSegmentFlags(
    int vertexFlags,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(4)
          .cast<
              Pointer<
                  NativeFunction<
                      Void Function(
            Pointer,
            Uint32 vertexFlags,
          )>>>()
          .value
          .asFunction<
              void Function(
            Pointer,
            int vertexFlags,
          )>()(
        ptr.ref.lpVtbl,
        vertexFlags,
      );

  void BeginFigure(
    D2D_POINT_2F startPoint,
    int figureBegin,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(5)
          .cast<
              Pointer<
                  NativeFunction<
                      Void Function(
            Pointer,
            D2D_POINT_2F startPoint,
            Uint32 figureBegin,
          )>>>()
          .value
          .asFunction<
              void Function(
            Pointer,
            D2D_POINT_2F startPoint,
            int figureBegin,
          )>()(
        ptr.ref.lpVtbl,
        startPoint,
        figureBegin,
      );

  void AddLines(
    Pointer<D2D_POINT_2F> points,
    int pointsCount,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(6)
          .cast<
              Pointer<
                  NativeFunction<
                      Void Function(
            Pointer,
            Pointer<D2D_POINT_2F> points,
            Uint32 pointsCount,
          )>>>()
          .value
          .asFunction<
              void Function(
            Pointer,
            Pointer<D2D_POINT_2F> points,
            int pointsCount,
          )>()(
        ptr.ref.lpVtbl,
        points,
        pointsCount,
      );

  void AddBeziers(
    Pointer<D2D1_BEZIER_SEGMENT> beziers,
    int beziersCount,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(7)
          .cast<
              Pointer<
                  NativeFunction<
                      Void Function(
            Pointer,
            Pointer<D2D1_BEZIER_SEGMENT> beziers,
            Uint32 beziersCount,
          )>>>()
          .value
          .asFunction<
              void Function(
            Pointer,
            Pointer<D2D1_BEZIER_SEGMENT> beziers,
            int beziersCount,
          )>()(
        ptr.ref.lpVtbl,
        beziers,
        beziersCount,
      );

  void EndFigure(
    int figureEnd,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(8)
          .cast<
              Pointer<
                  NativeFunction<
                      Void Function(
            Pointer,
            Uint32 figureEnd,
          )>>>()
          .value
          .asFunction<
              void Function(
            Pointer,
            int figureEnd,
          )>()(
        ptr.ref.lpVtbl,
        figureEnd,
      );

  int Close() => ptr.ref.lpVtbl.value
          .elementAt(9)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
          )>()(
        ptr.ref.lpVtbl,
      );
}
