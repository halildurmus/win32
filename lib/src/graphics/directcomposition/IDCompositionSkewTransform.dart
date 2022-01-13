// IDCompositionSkewTransform.dart

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

import '../../graphics/directcomposition/IDCompositionTransform.dart';
import '../../graphics/directcomposition/IDCompositionAnimation.dart';
import '../../foundation/structs.g.dart';

/// @nodoc
const IID_IDCompositionSkewTransform = '{E57AA735-DCDB-4C72-9C61-0591F58889EE}';

/// {@category Interface}
/// {@category com}
class IDCompositionSkewTransform extends IDCompositionTransform {
  // vtable begins at 3, is 8 entries long.
  IDCompositionSkewTransform(Pointer<COMObject> ptr) : super(ptr);

  int SetAngleX_1(
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

  int SetAngleX(
    double angleX,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(4)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Float angleX,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            double angleX,
          )>()(
        ptr.ref.lpVtbl,
        angleX,
      );

  int SetAngleY_1(
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

  int SetAngleY(
    double angleY,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(6)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Float angleY,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            double angleY,
          )>()(
        ptr.ref.lpVtbl,
        angleY,
      );

  int SetCenterX_1(
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

  int SetCenterX(
    double centerX,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(8)
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

  int SetCenterY(
    double centerY,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(10)
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
}
