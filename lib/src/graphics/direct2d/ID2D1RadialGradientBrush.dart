// ID2D1RadialGradientBrush.dart

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

import '../../graphics/direct2d/ID2D1Brush.dart';
import '../../graphics/direct2d/common/structs.g.dart';
import '../../graphics/direct2d/ID2D1GradientStopCollection.dart';

/// @nodoc
const IID_ID2D1RadialGradientBrush = '{2CD906AC-12E2-11DC-9FED-001143A055F9}';

/// {@category Interface}
/// {@category com}
class ID2D1RadialGradientBrush extends ID2D1Brush {
  // vtable begins at 8, is 9 entries long.
  ID2D1RadialGradientBrush(Pointer<COMObject> ptr) : super(ptr);

  void SetCenter(
    D2D_POINT_2F center,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(8)
          .cast<
              Pointer<
                  NativeFunction<
                      Void Function(
            Pointer,
            D2D_POINT_2F center,
          )>>>()
          .value
          .asFunction<
              void Function(
            Pointer,
            D2D_POINT_2F center,
          )>()(
        ptr.ref.lpVtbl,
        center,
      );

  void SetGradientOriginOffset(
    D2D_POINT_2F gradientOriginOffset,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(9)
          .cast<
              Pointer<
                  NativeFunction<
                      Void Function(
            Pointer,
            D2D_POINT_2F gradientOriginOffset,
          )>>>()
          .value
          .asFunction<
              void Function(
            Pointer,
            D2D_POINT_2F gradientOriginOffset,
          )>()(
        ptr.ref.lpVtbl,
        gradientOriginOffset,
      );

  void SetRadiusX(
    double radiusX,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(10)
          .cast<
              Pointer<
                  NativeFunction<
                      Void Function(
            Pointer,
            Float radiusX,
          )>>>()
          .value
          .asFunction<
              void Function(
            Pointer,
            double radiusX,
          )>()(
        ptr.ref.lpVtbl,
        radiusX,
      );

  void SetRadiusY(
    double radiusY,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(11)
          .cast<
              Pointer<
                  NativeFunction<
                      Void Function(
            Pointer,
            Float radiusY,
          )>>>()
          .value
          .asFunction<
              void Function(
            Pointer,
            double radiusY,
          )>()(
        ptr.ref.lpVtbl,
        radiusY,
      );

  D2D_POINT_2F GetCenter() => ptr.ref.lpVtbl.value
          .elementAt(12)
          .cast<
              Pointer<
                  NativeFunction<
                      D2D_POINT_2F Function(
            Pointer,
          )>>>()
          .value
          .asFunction<
              D2D_POINT_2F Function(
            Pointer,
          )>()(
        ptr.ref.lpVtbl,
      );

  D2D_POINT_2F GetGradientOriginOffset() => ptr.ref.lpVtbl.value
          .elementAt(13)
          .cast<
              Pointer<
                  NativeFunction<
                      D2D_POINT_2F Function(
            Pointer,
          )>>>()
          .value
          .asFunction<
              D2D_POINT_2F Function(
            Pointer,
          )>()(
        ptr.ref.lpVtbl,
      );

  double GetRadiusX() => ptr.ref.lpVtbl.value
          .elementAt(14)
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

  double GetRadiusY() => ptr.ref.lpVtbl.value
          .elementAt(15)
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

  void GetGradientStopCollection(
    Pointer<Pointer<COMObject>> gradientStopCollection,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(16)
          .cast<
              Pointer<
                  NativeFunction<
                      Void Function(
            Pointer,
            Pointer<Pointer<COMObject>> gradientStopCollection,
          )>>>()
          .value
          .asFunction<
              void Function(
            Pointer,
            Pointer<Pointer<COMObject>> gradientStopCollection,
          )>()(
        ptr.ref.lpVtbl,
        gradientStopCollection,
      );
}
