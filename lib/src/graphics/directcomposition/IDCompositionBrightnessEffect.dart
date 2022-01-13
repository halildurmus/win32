// IDCompositionBrightnessEffect.dart

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

import '../../graphics/directcomposition/IDCompositionFilterEffect.dart';
import '../../graphics/direct2d/common/structs.g.dart';
import '../../foundation/structs.g.dart';
import '../../graphics/directcomposition/IDCompositionAnimation.dart';

/// @nodoc
const IID_IDCompositionBrightnessEffect =
    '{6027496E-CB3A-49AB-934F-D798DA4F7DA6}';

/// {@category Interface}
/// {@category com}
class IDCompositionBrightnessEffect extends IDCompositionFilterEffect {
  // vtable begins at 4, is 10 entries long.
  IDCompositionBrightnessEffect(Pointer<COMObject> ptr) : super(ptr);

  int SetWhitePoint(
    Pointer<D2D_VECTOR_2F> whitePoint,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(4)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<D2D_VECTOR_2F> whitePoint,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<D2D_VECTOR_2F> whitePoint,
          )>()(
        ptr.ref.lpVtbl,
        whitePoint,
      );

  int SetBlackPoint(
    Pointer<D2D_VECTOR_2F> blackPoint,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(5)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<D2D_VECTOR_2F> blackPoint,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<D2D_VECTOR_2F> blackPoint,
          )>()(
        ptr.ref.lpVtbl,
        blackPoint,
      );

  int SetWhitePointX_1(
    Pointer<COMObject> animation,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(6)
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

  int SetWhitePointX(
    double whitePointX,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(7)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Float whitePointX,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            double whitePointX,
          )>()(
        ptr.ref.lpVtbl,
        whitePointX,
      );

  int SetWhitePointY_1(
    Pointer<COMObject> animation,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(8)
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

  int SetWhitePointY(
    double whitePointY,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(9)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Float whitePointY,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            double whitePointY,
          )>()(
        ptr.ref.lpVtbl,
        whitePointY,
      );

  int SetBlackPointX_1(
    Pointer<COMObject> animation,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(10)
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

  int SetBlackPointX(
    double blackPointX,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(11)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Float blackPointX,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            double blackPointX,
          )>()(
        ptr.ref.lpVtbl,
        blackPointX,
      );

  int SetBlackPointY_1(
    Pointer<COMObject> animation,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(12)
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

  int SetBlackPointY(
    double blackPointY,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(13)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Float blackPointY,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            double blackPointY,
          )>()(
        ptr.ref.lpVtbl,
        blackPointY,
      );
}
