// IMILBitmapEffectPrimitive.dart

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
import '../../ui/wpf/IMILBitmapEffectRenderContext.dart';
import '../../graphics/imaging/IWICBitmapSource.dart';
import '../../foundation/structs.g.dart';
import '../../ui/wpf/structs.g.dart';
import '../../graphics/dwm/structs.g.dart';

/// @nodoc
const IID_IMILBitmapEffectPrimitive = '{67E31025-3091-4DFC-98D6-DD494551461D}';

/// {@category Interface}
/// {@category com}
class IMILBitmapEffectPrimitive extends IUnknown {
  // vtable begins at 3, is 6 entries long.
  IMILBitmapEffectPrimitive(Pointer<COMObject> ptr) : super(ptr);

  int GetOutput(
    int uiIndex,
    Pointer<COMObject> pContext,
    Pointer<Int16> pfModifyInPlace,
    Pointer<Pointer<COMObject>> ppBitmapSource,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(3)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Uint32 uiIndex,
            Pointer<COMObject> pContext,
            Pointer<Int16> pfModifyInPlace,
            Pointer<Pointer<COMObject>> ppBitmapSource,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int uiIndex,
            Pointer<COMObject> pContext,
            Pointer<Int16> pfModifyInPlace,
            Pointer<Pointer<COMObject>> ppBitmapSource,
          )>()(
        ptr.ref.lpVtbl,
        uiIndex,
        pContext,
        pfModifyInPlace,
        ppBitmapSource,
      );

  int TransformPoint(
    int uiIndex,
    Pointer<MilPoint2D> p,
    int fForwardTransform,
    Pointer<COMObject> pContext,
    Pointer<Int16> pfPointTransformed,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(4)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Uint32 uiIndex,
            Pointer<MilPoint2D> p,
            Int16 fForwardTransform,
            Pointer<COMObject> pContext,
            Pointer<Int16> pfPointTransformed,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int uiIndex,
            Pointer<MilPoint2D> p,
            int fForwardTransform,
            Pointer<COMObject> pContext,
            Pointer<Int16> pfPointTransformed,
          )>()(
        ptr.ref.lpVtbl,
        uiIndex,
        p,
        fForwardTransform,
        pContext,
        pfPointTransformed,
      );

  int TransformRect(
    int uiIndex,
    Pointer<MilRectD> p,
    int fForwardTransform,
    Pointer<COMObject> pContext,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(5)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Uint32 uiIndex,
            Pointer<MilRectD> p,
            Int16 fForwardTransform,
            Pointer<COMObject> pContext,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int uiIndex,
            Pointer<MilRectD> p,
            int fForwardTransform,
            Pointer<COMObject> pContext,
          )>()(
        ptr.ref.lpVtbl,
        uiIndex,
        p,
        fForwardTransform,
        pContext,
      );

  int HasAffineTransform(
    int uiIndex,
    Pointer<Int16> pfAffine,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(6)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Uint32 uiIndex,
            Pointer<Int16> pfAffine,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int uiIndex,
            Pointer<Int16> pfAffine,
          )>()(
        ptr.ref.lpVtbl,
        uiIndex,
        pfAffine,
      );

  int HasInverseTransform(
    int uiIndex,
    Pointer<Int16> pfHasInverse,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(7)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Uint32 uiIndex,
            Pointer<Int16> pfHasInverse,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int uiIndex,
            Pointer<Int16> pfHasInverse,
          )>()(
        ptr.ref.lpVtbl,
        uiIndex,
        pfHasInverse,
      );

  int GetAffineMatrix(
    int uiIndex,
    Pointer<MilMatrix3x2D> pMatrix,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(8)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Uint32 uiIndex,
            Pointer<MilMatrix3x2D> pMatrix,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int uiIndex,
            Pointer<MilMatrix3x2D> pMatrix,
          )>()(
        ptr.ref.lpVtbl,
        uiIndex,
        pMatrix,
      );
}
