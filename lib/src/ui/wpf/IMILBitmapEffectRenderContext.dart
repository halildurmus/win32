// IMILBitmapEffectRenderContext.dart

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
import '../../foundation/structs.g.dart';
import '../../ui/wpf/structs.g.dart';

/// @nodoc
const IID_IMILBitmapEffectRenderContext =
    '{12A2EC7E-2D33-44B2-B334-1ABB7846E390}';

/// {@category Interface}
/// {@category com}
class IMILBitmapEffectRenderContext extends IUnknown {
  // vtable begins at 3, is 8 entries long.
  IMILBitmapEffectRenderContext(Pointer<COMObject> ptr) : super(ptr);

  int SetOutputPixelFormat(
    Pointer<GUID> format,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(3)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<GUID> format,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<GUID> format,
          )>()(
        ptr.ref.lpVtbl,
        format,
      );

  int GetOutputPixelFormat(
    Pointer<GUID> pFormat,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(4)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<GUID> pFormat,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<GUID> pFormat,
          )>()(
        ptr.ref.lpVtbl,
        pFormat,
      );

  int SetUseSoftwareRenderer(
    int fSoftware,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(5)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Int16 fSoftware,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int fSoftware,
          )>()(
        ptr.ref.lpVtbl,
        fSoftware,
      );

  int SetInitialTransform(
    Pointer<MILMatrixF> pMatrix,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(6)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<MILMatrixF> pMatrix,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<MILMatrixF> pMatrix,
          )>()(
        ptr.ref.lpVtbl,
        pMatrix,
      );

  int GetFinalTransform(
    Pointer<MILMatrixF> pMatrix,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(7)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<MILMatrixF> pMatrix,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<MILMatrixF> pMatrix,
          )>()(
        ptr.ref.lpVtbl,
        pMatrix,
      );

  int SetOutputDPI(
    double dblDpiX,
    double dblDpiY,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(8)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Double dblDpiX,
            Double dblDpiY,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            double dblDpiX,
            double dblDpiY,
          )>()(
        ptr.ref.lpVtbl,
        dblDpiX,
        dblDpiY,
      );

  int GetOutputDPI(
    Pointer<Double> pdblDpiX,
    Pointer<Double> pdblDpiY,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(9)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Double> pdblDpiX,
            Pointer<Double> pdblDpiY,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Double> pdblDpiX,
            Pointer<Double> pdblDpiY,
          )>()(
        ptr.ref.lpVtbl,
        pdblDpiX,
        pdblDpiY,
      );

  int SetRegionOfInterest(
    Pointer<MilRectD> pRect,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(10)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<MilRectD> pRect,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<MilRectD> pRect,
          )>()(
        ptr.ref.lpVtbl,
        pRect,
      );
}
