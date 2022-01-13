// IDCompositionRotateTransform3D.dart

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

import '../../graphics/directcomposition/IDCompositionTransform3D.dart';
import '../../graphics/directcomposition/IDCompositionAnimation.dart';
import '../../foundation/structs.g.dart';

/// @nodoc
const IID_IDCompositionRotateTransform3D =
    '{D8F5B23F-D429-4A91-B55A-D2F45FD75B18}';

/// {@category Interface}
/// {@category com}
class IDCompositionRotateTransform3D extends IDCompositionTransform3D {
  // vtable begins at 3, is 14 entries long.
  IDCompositionRotateTransform3D(Pointer<COMObject> ptr) : super(ptr);

  int SetAngle_1(
    Pointer<COMObject> animation,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(3)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<COMObject> animation,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<COMObject> animation,
          )>()(
        ptr.ref.lpVtbl,
        animation,
      );

  int SetAngle(
    double angle,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(4)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Float angle,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            double angle,
          )>()(
        ptr.ref.lpVtbl,
        angle,
      );

  int SetAxisX_1(
    Pointer<COMObject> animation,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(5)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<COMObject> animation,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<COMObject> animation,
          )>()(
        ptr.ref.lpVtbl,
        animation,
      );

  int SetAxisX(
    double axisX,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(6)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Float axisX,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            double axisX,
          )>()(
        ptr.ref.lpVtbl,
        axisX,
      );

  int SetAxisY_1(
    Pointer<COMObject> animation,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(7)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<COMObject> animation,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<COMObject> animation,
          )>()(
        ptr.ref.lpVtbl,
        animation,
      );

  int SetAxisY(
    double axisY,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(8)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Float axisY,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            double axisY,
          )>()(
        ptr.ref.lpVtbl,
        axisY,
      );

  int SetAxisZ_1(
    Pointer<COMObject> animation,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(9)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<COMObject> animation,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<COMObject> animation,
          )>()(
        ptr.ref.lpVtbl,
        animation,
      );

  int SetAxisZ(
    double axisZ,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(10)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Float axisZ,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            double axisZ,
          )>()(
        ptr.ref.lpVtbl,
        axisZ,
      );

  int SetCenterX_1(
    Pointer<COMObject> animation,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(11)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<COMObject> animation,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<COMObject> animation,
          )>()(
        ptr.ref.lpVtbl,
        animation,
      );

  int SetCenterX(
    double centerX,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(12)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Float centerX,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            double centerX,
          )>()(
        ptr.ref.lpVtbl,
        centerX,
      );

  int SetCenterY_1(
    Pointer<COMObject> animation,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(13)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<COMObject> animation,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<COMObject> animation,
          )>()(
        ptr.ref.lpVtbl,
        animation,
      );

  int SetCenterY(
    double centerY,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(14)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Float centerY,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            double centerY,
          )>()(
        ptr.ref.lpVtbl,
        centerY,
      );

  int SetCenterZ_1(
    Pointer<COMObject> animation,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(15)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<COMObject> animation,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<COMObject> animation,
          )>()(
        ptr.ref.lpVtbl,
        animation,
      );

  int SetCenterZ(
    double centerZ,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(16)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Float centerZ,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            double centerZ,
          )>()(
        ptr.ref.lpVtbl,
        centerZ,
      );
}
