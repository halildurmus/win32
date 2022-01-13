// IDCompositionVisual3.dart

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

import '../../graphics/directcomposition/IDCompositionVisualDebug.dart';
import '../../graphics/directcomposition/structs.g.dart';
import '../../foundation/structs.g.dart';
import '../../graphics/directcomposition/IDCompositionAnimation.dart';
import '../../graphics/directcomposition/IDCompositionTransform3D.dart';
import '../../graphics/direct2d/common/structs.g.dart';

/// @nodoc
const IID_IDCompositionVisual3 = '{2775F462-B6C1-4015-B0BE-B3E7D6A4976D}';

/// {@category Interface}
/// {@category com}
class IDCompositionVisual3 extends IDCompositionVisualDebug {
  // vtable begins at 26, is 8 entries long.
  IDCompositionVisual3(Pointer<COMObject> ptr) : super(ptr);

  int SetDepthMode(
    int mode,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(26)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Int32 mode,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int mode,
          )>()(
        ptr.ref.lpVtbl,
        mode,
      );

  int SetOffsetZ_1(
    Pointer<COMObject> animation,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(27)
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
          .elementAt(28)
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

  int SetOpacity_1(
    Pointer<COMObject> animation,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(29)
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

  int SetOpacity(
    double opacity,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(30)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Float opacity,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            double opacity,
          )>()(
        ptr.ref.lpVtbl,
        opacity,
      );

  int SetTransform_3(
    Pointer<COMObject> transform,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(31)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<COMObject> transform,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<COMObject> transform,
          )>()(
        ptr.ref.lpVtbl,
        transform,
      );

  int SetTransform_2(
    Pointer<D2D_MATRIX_4X4_F> matrix,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(32)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<D2D_MATRIX_4X4_F> matrix,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<D2D_MATRIX_4X4_F> matrix,
          )>()(
        ptr.ref.lpVtbl,
        matrix,
      );

  int SetVisible(
    int visible,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(33)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Int32 visible,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int visible,
          )>()(
        ptr.ref.lpVtbl,
        visible,
      );
}
