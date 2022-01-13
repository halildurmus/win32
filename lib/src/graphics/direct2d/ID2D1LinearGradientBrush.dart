// ID2D1LinearGradientBrush.dart

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
const IID_ID2D1LinearGradientBrush = '{2CD906AB-12E2-11DC-9FED-001143A055F9}';

/// {@category Interface}
/// {@category com}
class ID2D1LinearGradientBrush extends ID2D1Brush {
  // vtable begins at 8, is 5 entries long.
  ID2D1LinearGradientBrush(Pointer<COMObject> ptr) : super(ptr);

  void SetStartPoint(
    D2D_POINT_2F startPoint,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(8)
          .cast<
              Pointer<
                  NativeFunction<
                      Void Function(
            Pointer,
            D2D_POINT_2F startPoint,
          )>>>()
          .value
          .asFunction<
              void Function(
            Pointer,
            D2D_POINT_2F startPoint,
          )>()(
        ptr.ref.lpVtbl,
        startPoint,
      );

  void SetEndPoint(
    D2D_POINT_2F endPoint,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(9)
          .cast<
              Pointer<
                  NativeFunction<
                      Void Function(
            Pointer,
            D2D_POINT_2F endPoint,
          )>>>()
          .value
          .asFunction<
              void Function(
            Pointer,
            D2D_POINT_2F endPoint,
          )>()(
        ptr.ref.lpVtbl,
        endPoint,
      );

  D2D_POINT_2F GetStartPoint() => ptr.ref.lpVtbl.value
          .elementAt(10)
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

  D2D_POINT_2F GetEndPoint() => ptr.ref.lpVtbl.value
          .elementAt(11)
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

  void GetGradientStopCollection(
    Pointer<Pointer<COMObject>> gradientStopCollection,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(12)
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
