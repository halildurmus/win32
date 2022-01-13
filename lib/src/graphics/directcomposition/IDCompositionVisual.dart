// IDCompositionVisual.dart

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

import '../../system/com/IUnknown.dart';
import '../../graphics/directcomposition/IDCompositionAnimation.dart';
import '../../foundation/structs.g.dart';
import '../../graphics/directcomposition/IDCompositionTransform.dart';
import '../../graphics/direct2d/common/structs.g.dart';
import '../../graphics/directcomposition/IDCompositionVisual.dart';
import '../../graphics/directcomposition/IDCompositionEffect.dart';
import '../../graphics/directcomposition/structs.g.dart';
import '../../graphics/directcomposition/IDCompositionClip.dart';
import '../../specialTypes.dart';

/// @nodoc
const IID_IDCompositionVisual = '{4D93059D-097B-4651-9A60-F0F25116E2F3}';

/// {@category Interface}
/// {@category com}
class IDCompositionVisual extends IUnknown {
  // vtable begins at 3, is 17 entries long.
  IDCompositionVisual(Pointer<COMObject> ptr) : super(ptr);

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

  int SetTransform_1(
    Pointer<COMObject> transform,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(7)
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

  int SetTransform(
    Pointer<D2D_MATRIX_3X2_F> matrix,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(8)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<D2D_MATRIX_3X2_F> matrix,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<D2D_MATRIX_3X2_F> matrix,
          )>()(
        ptr.ref.lpVtbl,
        matrix,
      );

  int SetTransformParent(
    Pointer<COMObject> visual,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(9)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<COMObject> visual,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<COMObject> visual,
          )>()(
        ptr.ref.lpVtbl,
        visual,
      );

  int SetEffect(
    Pointer<COMObject> effect,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(10)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<COMObject> effect,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<COMObject> effect,
          )>()(
        ptr.ref.lpVtbl,
        effect,
      );

  int SetBitmapInterpolationMode(
    int interpolationMode,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(11)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Int32 interpolationMode,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int interpolationMode,
          )>()(
        ptr.ref.lpVtbl,
        interpolationMode,
      );

  int SetBorderMode(
    int borderMode,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(12)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Int32 borderMode,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int borderMode,
          )>()(
        ptr.ref.lpVtbl,
        borderMode,
      );

  int SetClip_1(
    Pointer<COMObject> clip,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(13)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<COMObject> clip,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<COMObject> clip,
          )>()(
        ptr.ref.lpVtbl,
        clip,
      );

  int SetClip(
    Pointer<D2D_RECT_F> rect,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(14)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<D2D_RECT_F> rect,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<D2D_RECT_F> rect,
          )>()(
        ptr.ref.lpVtbl,
        rect,
      );

  int SetContent(
    Pointer<COMObject> content,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(15)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<COMObject> content,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<COMObject> content,
          )>()(
        ptr.ref.lpVtbl,
        content,
      );

  int AddVisual(
    Pointer<COMObject> visual,
    int insertAbove,
    Pointer<COMObject> referenceVisual,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(16)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<COMObject> visual,
            Int32 insertAbove,
            Pointer<COMObject> referenceVisual,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<COMObject> visual,
            int insertAbove,
            Pointer<COMObject> referenceVisual,
          )>()(
        ptr.ref.lpVtbl,
        visual,
        insertAbove,
        referenceVisual,
      );

  int RemoveVisual(
    Pointer<COMObject> visual,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(17)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<COMObject> visual,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<COMObject> visual,
          )>()(
        ptr.ref.lpVtbl,
        visual,
      );

  int RemoveAllVisuals() => ptr.ref.lpVtbl.value
          .elementAt(18)
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

  int SetCompositeMode(
    int compositeMode,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(19)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Int32 compositeMode,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int compositeMode,
          )>()(
        ptr.ref.lpVtbl,
        compositeMode,
      );
}
