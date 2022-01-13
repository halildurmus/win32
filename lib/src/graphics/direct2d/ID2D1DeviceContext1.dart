// ID2D1DeviceContext1.dart

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

import '../../graphics/direct2d/ID2D1DeviceContext.dart';
import '../../graphics/direct2d/ID2D1Geometry.dart';
import '../../graphics/direct2d/ID2D1GeometryRealization.dart';
import '../../foundation/structs.g.dart';
import '../../graphics/direct2d/ID2D1StrokeStyle.dart';
import '../../graphics/direct2d/ID2D1Brush.dart';

/// @nodoc
const IID_ID2D1DeviceContext1 = '{D37F57E4-6908-459F-A199-E72F24F79987}';

/// {@category Interface}
/// {@category com}
class ID2D1DeviceContext1 extends ID2D1DeviceContext {
  // vtable begins at 92, is 3 entries long.
  ID2D1DeviceContext1(Pointer<COMObject> ptr) : super(ptr);

  int CreateFilledGeometryRealization(
    Pointer<COMObject> geometry,
    double flatteningTolerance,
    Pointer<Pointer<COMObject>> geometryRealization,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(92)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<COMObject> geometry,
            Float flatteningTolerance,
            Pointer<Pointer<COMObject>> geometryRealization,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<COMObject> geometry,
            double flatteningTolerance,
            Pointer<Pointer<COMObject>> geometryRealization,
          )>()(
        ptr.ref.lpVtbl,
        geometry,
        flatteningTolerance,
        geometryRealization,
      );

  int CreateStrokedGeometryRealization(
    Pointer<COMObject> geometry,
    double flatteningTolerance,
    double strokeWidth,
    Pointer<COMObject> strokeStyle,
    Pointer<Pointer<COMObject>> geometryRealization,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(93)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<COMObject> geometry,
            Float flatteningTolerance,
            Float strokeWidth,
            Pointer<COMObject> strokeStyle,
            Pointer<Pointer<COMObject>> geometryRealization,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<COMObject> geometry,
            double flatteningTolerance,
            double strokeWidth,
            Pointer<COMObject> strokeStyle,
            Pointer<Pointer<COMObject>> geometryRealization,
          )>()(
        ptr.ref.lpVtbl,
        geometry,
        flatteningTolerance,
        strokeWidth,
        strokeStyle,
        geometryRealization,
      );

  void DrawGeometryRealization(
    Pointer<COMObject> geometryRealization,
    Pointer<COMObject> brush,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(94)
          .cast<
              Pointer<
                  NativeFunction<
                      Void Function(
            Pointer,
            Pointer<COMObject> geometryRealization,
            Pointer<COMObject> brush,
          )>>>()
          .value
          .asFunction<
              void Function(
            Pointer,
            Pointer<COMObject> geometryRealization,
            Pointer<COMObject> brush,
          )>()(
        ptr.ref.lpVtbl,
        geometryRealization,
        brush,
      );
}
