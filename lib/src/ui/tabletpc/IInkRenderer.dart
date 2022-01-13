// IInkRenderer.dart

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

import '../../system/com/IDispatch.dart';
import '../../ui/tabletpc/IInkTransform.dart';
import '../../foundation/structs.g.dart';
import '../../ui/tabletpc/IInkStrokes.dart';
import '../../ui/tabletpc/IInkStrokeDisp.dart';
import '../../ui/tabletpc/IInkDrawingAttributes.dart';
import '../../specialTypes.dart';
import '../../ui/tabletpc/IInkRectangle.dart';

/// @nodoc
const IID_IInkRenderer = '{E6257A9C-B511-4F4C-A8B0-A7DBC9506B83}';

/// {@category Interface}
/// {@category com}
class IInkRenderer extends IDispatch {
  // vtable begins at 7, is 15 entries long.
  IInkRenderer(Pointer<COMObject> ptr) : super(ptr);

  int GetViewTransform(
    Pointer<COMObject> ViewTransform,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(7)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<COMObject> ViewTransform,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<COMObject> ViewTransform,
          )>()(
        ptr.ref.lpVtbl,
        ViewTransform,
      );

  int SetViewTransform(
    Pointer<COMObject> ViewTransform,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(8)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<COMObject> ViewTransform,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<COMObject> ViewTransform,
          )>()(
        ptr.ref.lpVtbl,
        ViewTransform,
      );

  int GetObjectTransform(
    Pointer<COMObject> ObjectTransform,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(9)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<COMObject> ObjectTransform,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<COMObject> ObjectTransform,
          )>()(
        ptr.ref.lpVtbl,
        ObjectTransform,
      );

  int SetObjectTransform(
    Pointer<COMObject> ObjectTransform,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(10)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<COMObject> ObjectTransform,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<COMObject> ObjectTransform,
          )>()(
        ptr.ref.lpVtbl,
        ObjectTransform,
      );

  int Draw(
    int hDC,
    Pointer<COMObject> Strokes,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(11)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            IntPtr hDC,
            Pointer<COMObject> Strokes,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int hDC,
            Pointer<COMObject> Strokes,
          )>()(
        ptr.ref.lpVtbl,
        hDC,
        Strokes,
      );

  int DrawStroke(
    int hDC,
    Pointer<COMObject> Stroke,
    Pointer<COMObject> DrawingAttributes,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(12)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            IntPtr hDC,
            Pointer<COMObject> Stroke,
            Pointer<COMObject> DrawingAttributes,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int hDC,
            Pointer<COMObject> Stroke,
            Pointer<COMObject> DrawingAttributes,
          )>()(
        ptr.ref.lpVtbl,
        hDC,
        Stroke,
        DrawingAttributes,
      );

  int PixelToInkSpace(
    int hDC,
    Pointer<Int32> x,
    Pointer<Int32> y,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(13)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            IntPtr hDC,
            Pointer<Int32> x,
            Pointer<Int32> y,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int hDC,
            Pointer<Int32> x,
            Pointer<Int32> y,
          )>()(
        ptr.ref.lpVtbl,
        hDC,
        x,
        y,
      );

  int InkSpaceToPixel(
    int hdcDisplay,
    Pointer<Int32> x,
    Pointer<Int32> y,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(14)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            IntPtr hdcDisplay,
            Pointer<Int32> x,
            Pointer<Int32> y,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int hdcDisplay,
            Pointer<Int32> x,
            Pointer<Int32> y,
          )>()(
        ptr.ref.lpVtbl,
        hdcDisplay,
        x,
        y,
      );

  int PixelToInkSpaceFromPoints(
    int hDC,
    Pointer<VARIANT> Points,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(15)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            IntPtr hDC,
            Pointer<VARIANT> Points,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int hDC,
            Pointer<VARIANT> Points,
          )>()(
        ptr.ref.lpVtbl,
        hDC,
        Points,
      );

  int InkSpaceToPixelFromPoints(
    int hDC,
    Pointer<VARIANT> Points,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(16)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            IntPtr hDC,
            Pointer<VARIANT> Points,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int hDC,
            Pointer<VARIANT> Points,
          )>()(
        ptr.ref.lpVtbl,
        hDC,
        Points,
      );

  int Measure(
    Pointer<COMObject> Strokes,
    Pointer<Pointer<COMObject>> Rectangle,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(17)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<COMObject> Strokes,
            Pointer<Pointer<COMObject>> Rectangle,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<COMObject> Strokes,
            Pointer<Pointer<COMObject>> Rectangle,
          )>()(
        ptr.ref.lpVtbl,
        Strokes,
        Rectangle,
      );

  int MeasureStroke(
    Pointer<COMObject> Stroke,
    Pointer<COMObject> DrawingAttributes,
    Pointer<Pointer<COMObject>> Rectangle,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(18)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<COMObject> Stroke,
            Pointer<COMObject> DrawingAttributes,
            Pointer<Pointer<COMObject>> Rectangle,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<COMObject> Stroke,
            Pointer<COMObject> DrawingAttributes,
            Pointer<Pointer<COMObject>> Rectangle,
          )>()(
        ptr.ref.lpVtbl,
        Stroke,
        DrawingAttributes,
        Rectangle,
      );

  int Move(
    double HorizontalComponent,
    double VerticalComponent,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(19)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Float HorizontalComponent,
            Float VerticalComponent,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            double HorizontalComponent,
            double VerticalComponent,
          )>()(
        ptr.ref.lpVtbl,
        HorizontalComponent,
        VerticalComponent,
      );

  int Rotate(
    double Degrees,
    double x,
    double y,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(20)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Float Degrees,
            Float x,
            Float y,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            double Degrees,
            double x,
            double y,
          )>()(
        ptr.ref.lpVtbl,
        Degrees,
        x,
        y,
      );

  int ScaleTransform(
    double HorizontalMultiplier,
    double VerticalMultiplier,
    int ApplyOnPenWidth,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(21)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Float HorizontalMultiplier,
            Float VerticalMultiplier,
            Int16 ApplyOnPenWidth,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            double HorizontalMultiplier,
            double VerticalMultiplier,
            int ApplyOnPenWidth,
          )>()(
        ptr.ref.lpVtbl,
        HorizontalMultiplier,
        VerticalMultiplier,
        ApplyOnPenWidth,
      );
}

/// @nodoc
const CLSID_InkRenderer = '{9C1CC6E4-D7EB-4EEB-9091-15A7C8791ED9}';

/// {@category com}
class InkRenderer extends IInkRenderer {
  InkRenderer(Pointer<COMObject> ptr) : super(ptr);

  factory InkRenderer.createInstance() {
    final ptr = calloc<COMObject>();
    final clsid = calloc<GUID>()..ref.setGUID(CLSID_InkRenderer);
    final iid = calloc<GUID>()..ref.setGUID(IID_IInkRenderer);

    try {
      final hr = CoCreateInstance(clsid, nullptr, CLSCTX_ALL, iid, ptr.cast());

      if (FAILED(hr)) throw WindowsException(hr);

      return InkRenderer(ptr);
    } finally {
      free(clsid);
      free(iid);
    }
  }
}
