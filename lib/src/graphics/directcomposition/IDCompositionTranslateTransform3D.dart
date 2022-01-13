// IDCompositionTranslateTransform3D.dart

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
const IID_IDCompositionTranslateTransform3D =
    '{91636D4B-9BA1-4532-AAF7-E3344994D788}';

/// {@category Interface}
/// {@category com}
class IDCompositionTranslateTransform3D extends IDCompositionTransform3D {
  // vtable begins at 3, is 6 entries long.
  IDCompositionTranslateTransform3D(Pointer<COMObject> ptr) : super(ptr);

  int SetOffsetX_1(
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

  int SetOffsetX(
    double offsetX,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(4)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Float offsetX,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            double offsetX,
          )>()(
        ptr.ref.lpVtbl,
        offsetX,
      );

  int SetOffsetY_1(
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

  int SetOffsetY(
    double offsetY,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(6)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Float offsetY,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            double offsetY,
          )>()(
        ptr.ref.lpVtbl,
        offsetY,
      );

  int SetOffsetZ_1(
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

  int SetOffsetZ(
    double offsetZ,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(8)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Float offsetZ,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            double offsetZ,
          )>()(
        ptr.ref.lpVtbl,
        offsetZ,
      );
}
