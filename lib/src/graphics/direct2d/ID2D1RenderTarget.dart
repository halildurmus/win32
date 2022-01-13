// ID2D1RenderTarget.dart

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

import '../../graphics/direct2d/ID2D1Resource.dart';
import '../../graphics/direct2d/common/structs.g.dart';
import '../../graphics/direct2d/structs.g.dart';
import '../../graphics/direct2d/ID2D1Bitmap.dart';
import '../../foundation/structs.g.dart';
import '../../graphics/imaging/IWICBitmapSource.dart';
import '../../graphics/direct2d/ID2D1BitmapBrush.dart';
import '../../graphics/direct2d/ID2D1SolidColorBrush.dart';
import '../../graphics/direct2d/ID2D1GradientStopCollection.dart';
import '../../graphics/direct2d/ID2D1LinearGradientBrush.dart';
import '../../graphics/direct2d/ID2D1RadialGradientBrush.dart';
import '../../graphics/direct2d/ID2D1BitmapRenderTarget.dart';
import '../../graphics/direct2d/ID2D1Layer.dart';
import '../../graphics/direct2d/ID2D1Mesh.dart';
import '../../graphics/direct2d/ID2D1Brush.dart';
import '../../graphics/direct2d/ID2D1StrokeStyle.dart';
import '../../graphics/direct2d/ID2D1Geometry.dart';
import '../../graphics/directwrite/IDWriteTextFormat.dart';
import '../../graphics/directwrite/structs.g.dart';
import '../../graphics/directwrite/IDWriteTextLayout.dart';
import '../../graphics/directwrite/IDWriteRenderingParams.dart';
import '../../graphics/direct2d/ID2D1DrawingStateBlock.dart';

/// @nodoc
const IID_ID2D1RenderTarget = '{2CD90694-12E2-11DC-9FED-001143A055F9}';

/// {@category Interface}
/// {@category com}
class ID2D1RenderTarget extends ID2D1Resource {
  // vtable begins at 4, is 53 entries long.
  ID2D1RenderTarget(Pointer<COMObject> ptr) : super(ptr);

  int CreateBitmap(
    D2D_SIZE_U size,
    Pointer srcData,
    int pitch,
    Pointer<D2D1_BITMAP_PROPERTIES> bitmapProperties,
    Pointer<Pointer<COMObject>> bitmap,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(4)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            D2D_SIZE_U size,
            Pointer srcData,
            Uint32 pitch,
            Pointer<D2D1_BITMAP_PROPERTIES> bitmapProperties,
            Pointer<Pointer<COMObject>> bitmap,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            D2D_SIZE_U size,
            Pointer srcData,
            int pitch,
            Pointer<D2D1_BITMAP_PROPERTIES> bitmapProperties,
            Pointer<Pointer<COMObject>> bitmap,
          )>()(
        ptr.ref.lpVtbl,
        size,
        srcData,
        pitch,
        bitmapProperties,
        bitmap,
      );

  int CreateBitmapFromWicBitmap(
    Pointer<COMObject> wicBitmapSource,
    Pointer<D2D1_BITMAP_PROPERTIES> bitmapProperties,
    Pointer<Pointer<COMObject>> bitmap,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(5)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<COMObject> wicBitmapSource,
            Pointer<D2D1_BITMAP_PROPERTIES> bitmapProperties,
            Pointer<Pointer<COMObject>> bitmap,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<COMObject> wicBitmapSource,
            Pointer<D2D1_BITMAP_PROPERTIES> bitmapProperties,
            Pointer<Pointer<COMObject>> bitmap,
          )>()(
        ptr.ref.lpVtbl,
        wicBitmapSource,
        bitmapProperties,
        bitmap,
      );

  int CreateSharedBitmap(
    Pointer<GUID> riid,
    Pointer data,
    Pointer<D2D1_BITMAP_PROPERTIES> bitmapProperties,
    Pointer<Pointer<COMObject>> bitmap,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(6)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<GUID> riid,
            Pointer data,
            Pointer<D2D1_BITMAP_PROPERTIES> bitmapProperties,
            Pointer<Pointer<COMObject>> bitmap,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<GUID> riid,
            Pointer data,
            Pointer<D2D1_BITMAP_PROPERTIES> bitmapProperties,
            Pointer<Pointer<COMObject>> bitmap,
          )>()(
        ptr.ref.lpVtbl,
        riid,
        data,
        bitmapProperties,
        bitmap,
      );

  int CreateBitmapBrush(
    Pointer<COMObject> bitmap,
    Pointer<D2D1_BITMAP_BRUSH_PROPERTIES> bitmapBrushProperties,
    Pointer<D2D1_BRUSH_PROPERTIES> brushProperties,
    Pointer<Pointer<COMObject>> bitmapBrush,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(7)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<COMObject> bitmap,
            Pointer<D2D1_BITMAP_BRUSH_PROPERTIES> bitmapBrushProperties,
            Pointer<D2D1_BRUSH_PROPERTIES> brushProperties,
            Pointer<Pointer<COMObject>> bitmapBrush,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<COMObject> bitmap,
            Pointer<D2D1_BITMAP_BRUSH_PROPERTIES> bitmapBrushProperties,
            Pointer<D2D1_BRUSH_PROPERTIES> brushProperties,
            Pointer<Pointer<COMObject>> bitmapBrush,
          )>()(
        ptr.ref.lpVtbl,
        bitmap,
        bitmapBrushProperties,
        brushProperties,
        bitmapBrush,
      );

  int CreateSolidColorBrush(
    Pointer<D2D1_COLOR_F> color,
    Pointer<D2D1_BRUSH_PROPERTIES> brushProperties,
    Pointer<Pointer<COMObject>> solidColorBrush,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(8)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<D2D1_COLOR_F> color,
            Pointer<D2D1_BRUSH_PROPERTIES> brushProperties,
            Pointer<Pointer<COMObject>> solidColorBrush,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<D2D1_COLOR_F> color,
            Pointer<D2D1_BRUSH_PROPERTIES> brushProperties,
            Pointer<Pointer<COMObject>> solidColorBrush,
          )>()(
        ptr.ref.lpVtbl,
        color,
        brushProperties,
        solidColorBrush,
      );

  int CreateGradientStopCollection(
    Pointer<D2D1_GRADIENT_STOP> gradientStops,
    int gradientStopsCount,
    int colorInterpolationGamma,
    int extendMode,
    Pointer<Pointer<COMObject>> gradientStopCollection,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(9)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<D2D1_GRADIENT_STOP> gradientStops,
            Uint32 gradientStopsCount,
            Uint32 colorInterpolationGamma,
            Uint32 extendMode,
            Pointer<Pointer<COMObject>> gradientStopCollection,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<D2D1_GRADIENT_STOP> gradientStops,
            int gradientStopsCount,
            int colorInterpolationGamma,
            int extendMode,
            Pointer<Pointer<COMObject>> gradientStopCollection,
          )>()(
        ptr.ref.lpVtbl,
        gradientStops,
        gradientStopsCount,
        colorInterpolationGamma,
        extendMode,
        gradientStopCollection,
      );

  int CreateLinearGradientBrush(
    Pointer<D2D1_LINEAR_GRADIENT_BRUSH_PROPERTIES>
        linearGradientBrushProperties,
    Pointer<D2D1_BRUSH_PROPERTIES> brushProperties,
    Pointer<COMObject> gradientStopCollection,
    Pointer<Pointer<COMObject>> linearGradientBrush,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(10)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<D2D1_LINEAR_GRADIENT_BRUSH_PROPERTIES>
                linearGradientBrushProperties,
            Pointer<D2D1_BRUSH_PROPERTIES> brushProperties,
            Pointer<COMObject> gradientStopCollection,
            Pointer<Pointer<COMObject>> linearGradientBrush,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<D2D1_LINEAR_GRADIENT_BRUSH_PROPERTIES>
                linearGradientBrushProperties,
            Pointer<D2D1_BRUSH_PROPERTIES> brushProperties,
            Pointer<COMObject> gradientStopCollection,
            Pointer<Pointer<COMObject>> linearGradientBrush,
          )>()(
        ptr.ref.lpVtbl,
        linearGradientBrushProperties,
        brushProperties,
        gradientStopCollection,
        linearGradientBrush,
      );

  int CreateRadialGradientBrush(
    Pointer<D2D1_RADIAL_GRADIENT_BRUSH_PROPERTIES>
        radialGradientBrushProperties,
    Pointer<D2D1_BRUSH_PROPERTIES> brushProperties,
    Pointer<COMObject> gradientStopCollection,
    Pointer<Pointer<COMObject>> radialGradientBrush,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(11)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<D2D1_RADIAL_GRADIENT_BRUSH_PROPERTIES>
                radialGradientBrushProperties,
            Pointer<D2D1_BRUSH_PROPERTIES> brushProperties,
            Pointer<COMObject> gradientStopCollection,
            Pointer<Pointer<COMObject>> radialGradientBrush,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<D2D1_RADIAL_GRADIENT_BRUSH_PROPERTIES>
                radialGradientBrushProperties,
            Pointer<D2D1_BRUSH_PROPERTIES> brushProperties,
            Pointer<COMObject> gradientStopCollection,
            Pointer<Pointer<COMObject>> radialGradientBrush,
          )>()(
        ptr.ref.lpVtbl,
        radialGradientBrushProperties,
        brushProperties,
        gradientStopCollection,
        radialGradientBrush,
      );

  int CreateCompatibleRenderTarget(
    Pointer<D2D_SIZE_F> desiredSize,
    Pointer<D2D_SIZE_U> desiredPixelSize,
    Pointer<D2D1_PIXEL_FORMAT> desiredFormat,
    int options,
    Pointer<Pointer<COMObject>> bitmapRenderTarget,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(12)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<D2D_SIZE_F> desiredSize,
            Pointer<D2D_SIZE_U> desiredPixelSize,
            Pointer<D2D1_PIXEL_FORMAT> desiredFormat,
            Uint32 options,
            Pointer<Pointer<COMObject>> bitmapRenderTarget,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<D2D_SIZE_F> desiredSize,
            Pointer<D2D_SIZE_U> desiredPixelSize,
            Pointer<D2D1_PIXEL_FORMAT> desiredFormat,
            int options,
            Pointer<Pointer<COMObject>> bitmapRenderTarget,
          )>()(
        ptr.ref.lpVtbl,
        desiredSize,
        desiredPixelSize,
        desiredFormat,
        options,
        bitmapRenderTarget,
      );

  int CreateLayer(
    Pointer<D2D_SIZE_F> size,
    Pointer<Pointer<COMObject>> layer,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(13)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<D2D_SIZE_F> size,
            Pointer<Pointer<COMObject>> layer,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<D2D_SIZE_F> size,
            Pointer<Pointer<COMObject>> layer,
          )>()(
        ptr.ref.lpVtbl,
        size,
        layer,
      );

  int CreateMesh(
    Pointer<Pointer<COMObject>> mesh,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(14)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Pointer<COMObject>> mesh,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Pointer<COMObject>> mesh,
          )>()(
        ptr.ref.lpVtbl,
        mesh,
      );

  void DrawLine(
    D2D_POINT_2F point0,
    D2D_POINT_2F point1,
    Pointer<COMObject> brush,
    double strokeWidth,
    Pointer<COMObject> strokeStyle,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(15)
          .cast<
              Pointer<
                  NativeFunction<
                      Void Function(
            Pointer,
            D2D_POINT_2F point0,
            D2D_POINT_2F point1,
            Pointer<COMObject> brush,
            Float strokeWidth,
            Pointer<COMObject> strokeStyle,
          )>>>()
          .value
          .asFunction<
              void Function(
            Pointer,
            D2D_POINT_2F point0,
            D2D_POINT_2F point1,
            Pointer<COMObject> brush,
            double strokeWidth,
            Pointer<COMObject> strokeStyle,
          )>()(
        ptr.ref.lpVtbl,
        point0,
        point1,
        brush,
        strokeWidth,
        strokeStyle,
      );

  void DrawRectangle(
    Pointer<D2D_RECT_F> rect,
    Pointer<COMObject> brush,
    double strokeWidth,
    Pointer<COMObject> strokeStyle,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(16)
          .cast<
              Pointer<
                  NativeFunction<
                      Void Function(
            Pointer,
            Pointer<D2D_RECT_F> rect,
            Pointer<COMObject> brush,
            Float strokeWidth,
            Pointer<COMObject> strokeStyle,
          )>>>()
          .value
          .asFunction<
              void Function(
            Pointer,
            Pointer<D2D_RECT_F> rect,
            Pointer<COMObject> brush,
            double strokeWidth,
            Pointer<COMObject> strokeStyle,
          )>()(
        ptr.ref.lpVtbl,
        rect,
        brush,
        strokeWidth,
        strokeStyle,
      );

  void FillRectangle(
    Pointer<D2D_RECT_F> rect,
    Pointer<COMObject> brush,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(17)
          .cast<
              Pointer<
                  NativeFunction<
                      Void Function(
            Pointer,
            Pointer<D2D_RECT_F> rect,
            Pointer<COMObject> brush,
          )>>>()
          .value
          .asFunction<
              void Function(
            Pointer,
            Pointer<D2D_RECT_F> rect,
            Pointer<COMObject> brush,
          )>()(
        ptr.ref.lpVtbl,
        rect,
        brush,
      );

  void DrawRoundedRectangle(
    Pointer<D2D1_ROUNDED_RECT> roundedRect,
    Pointer<COMObject> brush,
    double strokeWidth,
    Pointer<COMObject> strokeStyle,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(18)
          .cast<
              Pointer<
                  NativeFunction<
                      Void Function(
            Pointer,
            Pointer<D2D1_ROUNDED_RECT> roundedRect,
            Pointer<COMObject> brush,
            Float strokeWidth,
            Pointer<COMObject> strokeStyle,
          )>>>()
          .value
          .asFunction<
              void Function(
            Pointer,
            Pointer<D2D1_ROUNDED_RECT> roundedRect,
            Pointer<COMObject> brush,
            double strokeWidth,
            Pointer<COMObject> strokeStyle,
          )>()(
        ptr.ref.lpVtbl,
        roundedRect,
        brush,
        strokeWidth,
        strokeStyle,
      );

  void FillRoundedRectangle(
    Pointer<D2D1_ROUNDED_RECT> roundedRect,
    Pointer<COMObject> brush,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(19)
          .cast<
              Pointer<
                  NativeFunction<
                      Void Function(
            Pointer,
            Pointer<D2D1_ROUNDED_RECT> roundedRect,
            Pointer<COMObject> brush,
          )>>>()
          .value
          .asFunction<
              void Function(
            Pointer,
            Pointer<D2D1_ROUNDED_RECT> roundedRect,
            Pointer<COMObject> brush,
          )>()(
        ptr.ref.lpVtbl,
        roundedRect,
        brush,
      );

  void DrawEllipse(
    Pointer<D2D1_ELLIPSE> ellipse,
    Pointer<COMObject> brush,
    double strokeWidth,
    Pointer<COMObject> strokeStyle,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(20)
          .cast<
              Pointer<
                  NativeFunction<
                      Void Function(
            Pointer,
            Pointer<D2D1_ELLIPSE> ellipse,
            Pointer<COMObject> brush,
            Float strokeWidth,
            Pointer<COMObject> strokeStyle,
          )>>>()
          .value
          .asFunction<
              void Function(
            Pointer,
            Pointer<D2D1_ELLIPSE> ellipse,
            Pointer<COMObject> brush,
            double strokeWidth,
            Pointer<COMObject> strokeStyle,
          )>()(
        ptr.ref.lpVtbl,
        ellipse,
        brush,
        strokeWidth,
        strokeStyle,
      );

  void FillEllipse(
    Pointer<D2D1_ELLIPSE> ellipse,
    Pointer<COMObject> brush,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(21)
          .cast<
              Pointer<
                  NativeFunction<
                      Void Function(
            Pointer,
            Pointer<D2D1_ELLIPSE> ellipse,
            Pointer<COMObject> brush,
          )>>>()
          .value
          .asFunction<
              void Function(
            Pointer,
            Pointer<D2D1_ELLIPSE> ellipse,
            Pointer<COMObject> brush,
          )>()(
        ptr.ref.lpVtbl,
        ellipse,
        brush,
      );

  void DrawGeometry(
    Pointer<COMObject> geometry,
    Pointer<COMObject> brush,
    double strokeWidth,
    Pointer<COMObject> strokeStyle,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(22)
          .cast<
              Pointer<
                  NativeFunction<
                      Void Function(
            Pointer,
            Pointer<COMObject> geometry,
            Pointer<COMObject> brush,
            Float strokeWidth,
            Pointer<COMObject> strokeStyle,
          )>>>()
          .value
          .asFunction<
              void Function(
            Pointer,
            Pointer<COMObject> geometry,
            Pointer<COMObject> brush,
            double strokeWidth,
            Pointer<COMObject> strokeStyle,
          )>()(
        ptr.ref.lpVtbl,
        geometry,
        brush,
        strokeWidth,
        strokeStyle,
      );

  void FillGeometry(
    Pointer<COMObject> geometry,
    Pointer<COMObject> brush,
    Pointer<COMObject> opacityBrush,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(23)
          .cast<
              Pointer<
                  NativeFunction<
                      Void Function(
            Pointer,
            Pointer<COMObject> geometry,
            Pointer<COMObject> brush,
            Pointer<COMObject> opacityBrush,
          )>>>()
          .value
          .asFunction<
              void Function(
            Pointer,
            Pointer<COMObject> geometry,
            Pointer<COMObject> brush,
            Pointer<COMObject> opacityBrush,
          )>()(
        ptr.ref.lpVtbl,
        geometry,
        brush,
        opacityBrush,
      );

  void FillMesh(
    Pointer<COMObject> mesh,
    Pointer<COMObject> brush,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(24)
          .cast<
              Pointer<
                  NativeFunction<
                      Void Function(
            Pointer,
            Pointer<COMObject> mesh,
            Pointer<COMObject> brush,
          )>>>()
          .value
          .asFunction<
              void Function(
            Pointer,
            Pointer<COMObject> mesh,
            Pointer<COMObject> brush,
          )>()(
        ptr.ref.lpVtbl,
        mesh,
        brush,
      );

  void FillOpacityMask(
    Pointer<COMObject> opacityMask,
    Pointer<COMObject> brush,
    int content,
    Pointer<D2D_RECT_F> destinationRectangle,
    Pointer<D2D_RECT_F> sourceRectangle,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(25)
          .cast<
              Pointer<
                  NativeFunction<
                      Void Function(
            Pointer,
            Pointer<COMObject> opacityMask,
            Pointer<COMObject> brush,
            Uint32 content,
            Pointer<D2D_RECT_F> destinationRectangle,
            Pointer<D2D_RECT_F> sourceRectangle,
          )>>>()
          .value
          .asFunction<
              void Function(
            Pointer,
            Pointer<COMObject> opacityMask,
            Pointer<COMObject> brush,
            int content,
            Pointer<D2D_RECT_F> destinationRectangle,
            Pointer<D2D_RECT_F> sourceRectangle,
          )>()(
        ptr.ref.lpVtbl,
        opacityMask,
        brush,
        content,
        destinationRectangle,
        sourceRectangle,
      );

  void DrawBitmap(
    Pointer<COMObject> bitmap,
    Pointer<D2D_RECT_F> destinationRectangle,
    double opacity,
    int interpolationMode,
    Pointer<D2D_RECT_F> sourceRectangle,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(26)
          .cast<
              Pointer<
                  NativeFunction<
                      Void Function(
            Pointer,
            Pointer<COMObject> bitmap,
            Pointer<D2D_RECT_F> destinationRectangle,
            Float opacity,
            Uint32 interpolationMode,
            Pointer<D2D_RECT_F> sourceRectangle,
          )>>>()
          .value
          .asFunction<
              void Function(
            Pointer,
            Pointer<COMObject> bitmap,
            Pointer<D2D_RECT_F> destinationRectangle,
            double opacity,
            int interpolationMode,
            Pointer<D2D_RECT_F> sourceRectangle,
          )>()(
        ptr.ref.lpVtbl,
        bitmap,
        destinationRectangle,
        opacity,
        interpolationMode,
        sourceRectangle,
      );

  void DrawText(
    Pointer<Utf16> string,
    int stringLength,
    Pointer<COMObject> textFormat,
    Pointer<D2D_RECT_F> layoutRect,
    Pointer<COMObject> defaultFillBrush,
    int options,
    int measuringMode,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(27)
          .cast<
              Pointer<
                  NativeFunction<
                      Void Function(
            Pointer,
            Pointer<Utf16> string,
            Uint32 stringLength,
            Pointer<COMObject> textFormat,
            Pointer<D2D_RECT_F> layoutRect,
            Pointer<COMObject> defaultFillBrush,
            Uint32 options,
            Int32 measuringMode,
          )>>>()
          .value
          .asFunction<
              void Function(
            Pointer,
            Pointer<Utf16> string,
            int stringLength,
            Pointer<COMObject> textFormat,
            Pointer<D2D_RECT_F> layoutRect,
            Pointer<COMObject> defaultFillBrush,
            int options,
            int measuringMode,
          )>()(
        ptr.ref.lpVtbl,
        string,
        stringLength,
        textFormat,
        layoutRect,
        defaultFillBrush,
        options,
        measuringMode,
      );

  void DrawTextLayout(
    D2D_POINT_2F origin,
    Pointer<COMObject> textLayout,
    Pointer<COMObject> defaultFillBrush,
    int options,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(28)
          .cast<
              Pointer<
                  NativeFunction<
                      Void Function(
            Pointer,
            D2D_POINT_2F origin,
            Pointer<COMObject> textLayout,
            Pointer<COMObject> defaultFillBrush,
            Uint32 options,
          )>>>()
          .value
          .asFunction<
              void Function(
            Pointer,
            D2D_POINT_2F origin,
            Pointer<COMObject> textLayout,
            Pointer<COMObject> defaultFillBrush,
            int options,
          )>()(
        ptr.ref.lpVtbl,
        origin,
        textLayout,
        defaultFillBrush,
        options,
      );

  void DrawGlyphRun(
    D2D_POINT_2F baselineOrigin,
    Pointer<DWRITE_GLYPH_RUN> glyphRun,
    Pointer<COMObject> foregroundBrush,
    int measuringMode,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(29)
          .cast<
              Pointer<
                  NativeFunction<
                      Void Function(
            Pointer,
            D2D_POINT_2F baselineOrigin,
            Pointer<DWRITE_GLYPH_RUN> glyphRun,
            Pointer<COMObject> foregroundBrush,
            Int32 measuringMode,
          )>>>()
          .value
          .asFunction<
              void Function(
            Pointer,
            D2D_POINT_2F baselineOrigin,
            Pointer<DWRITE_GLYPH_RUN> glyphRun,
            Pointer<COMObject> foregroundBrush,
            int measuringMode,
          )>()(
        ptr.ref.lpVtbl,
        baselineOrigin,
        glyphRun,
        foregroundBrush,
        measuringMode,
      );

  void SetTransform(
    Pointer<D2D_MATRIX_3X2_F> transform,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(30)
          .cast<
              Pointer<
                  NativeFunction<
                      Void Function(
            Pointer,
            Pointer<D2D_MATRIX_3X2_F> transform,
          )>>>()
          .value
          .asFunction<
              void Function(
            Pointer,
            Pointer<D2D_MATRIX_3X2_F> transform,
          )>()(
        ptr.ref.lpVtbl,
        transform,
      );

  void GetTransform(
    Pointer<D2D_MATRIX_3X2_F> transform,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(31)
          .cast<
              Pointer<
                  NativeFunction<
                      Void Function(
            Pointer,
            Pointer<D2D_MATRIX_3X2_F> transform,
          )>>>()
          .value
          .asFunction<
              void Function(
            Pointer,
            Pointer<D2D_MATRIX_3X2_F> transform,
          )>()(
        ptr.ref.lpVtbl,
        transform,
      );

  void SetAntialiasMode(
    int antialiasMode,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(32)
          .cast<
              Pointer<
                  NativeFunction<
                      Void Function(
            Pointer,
            Uint32 antialiasMode,
          )>>>()
          .value
          .asFunction<
              void Function(
            Pointer,
            int antialiasMode,
          )>()(
        ptr.ref.lpVtbl,
        antialiasMode,
      );

  int GetAntialiasMode() => ptr.ref.lpVtbl.value
          .elementAt(33)
          .cast<
              Pointer<
                  NativeFunction<
                      Uint32 Function(
            Pointer,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
          )>()(
        ptr.ref.lpVtbl,
      );

  void SetTextAntialiasMode(
    int textAntialiasMode,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(34)
          .cast<
              Pointer<
                  NativeFunction<
                      Void Function(
            Pointer,
            Uint32 textAntialiasMode,
          )>>>()
          .value
          .asFunction<
              void Function(
            Pointer,
            int textAntialiasMode,
          )>()(
        ptr.ref.lpVtbl,
        textAntialiasMode,
      );

  int GetTextAntialiasMode() => ptr.ref.lpVtbl.value
          .elementAt(35)
          .cast<
              Pointer<
                  NativeFunction<
                      Uint32 Function(
            Pointer,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
          )>()(
        ptr.ref.lpVtbl,
      );

  void SetTextRenderingParams(
    Pointer<COMObject> textRenderingParams,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(36)
          .cast<
              Pointer<
                  NativeFunction<
                      Void Function(
            Pointer,
            Pointer<COMObject> textRenderingParams,
          )>>>()
          .value
          .asFunction<
              void Function(
            Pointer,
            Pointer<COMObject> textRenderingParams,
          )>()(
        ptr.ref.lpVtbl,
        textRenderingParams,
      );

  void GetTextRenderingParams(
    Pointer<Pointer<COMObject>> textRenderingParams,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(37)
          .cast<
              Pointer<
                  NativeFunction<
                      Void Function(
            Pointer,
            Pointer<Pointer<COMObject>> textRenderingParams,
          )>>>()
          .value
          .asFunction<
              void Function(
            Pointer,
            Pointer<Pointer<COMObject>> textRenderingParams,
          )>()(
        ptr.ref.lpVtbl,
        textRenderingParams,
      );

  void SetTags(
    int tag1,
    int tag2,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(38)
          .cast<
              Pointer<
                  NativeFunction<
                      Void Function(
            Pointer,
            Uint64 tag1,
            Uint64 tag2,
          )>>>()
          .value
          .asFunction<
              void Function(
            Pointer,
            int tag1,
            int tag2,
          )>()(
        ptr.ref.lpVtbl,
        tag1,
        tag2,
      );

  void GetTags(
    Pointer<Uint64> tag1,
    Pointer<Uint64> tag2,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(39)
          .cast<
              Pointer<
                  NativeFunction<
                      Void Function(
            Pointer,
            Pointer<Uint64> tag1,
            Pointer<Uint64> tag2,
          )>>>()
          .value
          .asFunction<
              void Function(
            Pointer,
            Pointer<Uint64> tag1,
            Pointer<Uint64> tag2,
          )>()(
        ptr.ref.lpVtbl,
        tag1,
        tag2,
      );

  void PushLayer(
    Pointer<D2D1_LAYER_PARAMETERS> layerParameters,
    Pointer<COMObject> layer,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(40)
          .cast<
              Pointer<
                  NativeFunction<
                      Void Function(
            Pointer,
            Pointer<D2D1_LAYER_PARAMETERS> layerParameters,
            Pointer<COMObject> layer,
          )>>>()
          .value
          .asFunction<
              void Function(
            Pointer,
            Pointer<D2D1_LAYER_PARAMETERS> layerParameters,
            Pointer<COMObject> layer,
          )>()(
        ptr.ref.lpVtbl,
        layerParameters,
        layer,
      );

  void PopLayer() => ptr.ref.lpVtbl.value
          .elementAt(41)
          .cast<
              Pointer<
                  NativeFunction<
                      Void Function(
            Pointer,
          )>>>()
          .value
          .asFunction<
              void Function(
            Pointer,
          )>()(
        ptr.ref.lpVtbl,
      );

  int Flush(
    Pointer<Uint64> tag1,
    Pointer<Uint64> tag2,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(42)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Uint64> tag1,
            Pointer<Uint64> tag2,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Uint64> tag1,
            Pointer<Uint64> tag2,
          )>()(
        ptr.ref.lpVtbl,
        tag1,
        tag2,
      );

  void SaveDrawingState(
    Pointer<COMObject> drawingStateBlock,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(43)
          .cast<
              Pointer<
                  NativeFunction<
                      Void Function(
            Pointer,
            Pointer<COMObject> drawingStateBlock,
          )>>>()
          .value
          .asFunction<
              void Function(
            Pointer,
            Pointer<COMObject> drawingStateBlock,
          )>()(
        ptr.ref.lpVtbl,
        drawingStateBlock,
      );

  void RestoreDrawingState(
    Pointer<COMObject> drawingStateBlock,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(44)
          .cast<
              Pointer<
                  NativeFunction<
                      Void Function(
            Pointer,
            Pointer<COMObject> drawingStateBlock,
          )>>>()
          .value
          .asFunction<
              void Function(
            Pointer,
            Pointer<COMObject> drawingStateBlock,
          )>()(
        ptr.ref.lpVtbl,
        drawingStateBlock,
      );

  void PushAxisAlignedClip(
    Pointer<D2D_RECT_F> clipRect,
    int antialiasMode,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(45)
          .cast<
              Pointer<
                  NativeFunction<
                      Void Function(
            Pointer,
            Pointer<D2D_RECT_F> clipRect,
            Uint32 antialiasMode,
          )>>>()
          .value
          .asFunction<
              void Function(
            Pointer,
            Pointer<D2D_RECT_F> clipRect,
            int antialiasMode,
          )>()(
        ptr.ref.lpVtbl,
        clipRect,
        antialiasMode,
      );

  void PopAxisAlignedClip() => ptr.ref.lpVtbl.value
          .elementAt(46)
          .cast<
              Pointer<
                  NativeFunction<
                      Void Function(
            Pointer,
          )>>>()
          .value
          .asFunction<
              void Function(
            Pointer,
          )>()(
        ptr.ref.lpVtbl,
      );

  void Clear(
    Pointer<D2D1_COLOR_F> clearColor,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(47)
          .cast<
              Pointer<
                  NativeFunction<
                      Void Function(
            Pointer,
            Pointer<D2D1_COLOR_F> clearColor,
          )>>>()
          .value
          .asFunction<
              void Function(
            Pointer,
            Pointer<D2D1_COLOR_F> clearColor,
          )>()(
        ptr.ref.lpVtbl,
        clearColor,
      );

  void BeginDraw() => ptr.ref.lpVtbl.value
          .elementAt(48)
          .cast<
              Pointer<
                  NativeFunction<
                      Void Function(
            Pointer,
          )>>>()
          .value
          .asFunction<
              void Function(
            Pointer,
          )>()(
        ptr.ref.lpVtbl,
      );

  int EndDraw(
    Pointer<Uint64> tag1,
    Pointer<Uint64> tag2,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(49)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Uint64> tag1,
            Pointer<Uint64> tag2,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Uint64> tag1,
            Pointer<Uint64> tag2,
          )>()(
        ptr.ref.lpVtbl,
        tag1,
        tag2,
      );

  D2D1_PIXEL_FORMAT GetPixelFormat() => ptr.ref.lpVtbl.value
          .elementAt(50)
          .cast<
              Pointer<
                  NativeFunction<
                      D2D1_PIXEL_FORMAT Function(
            Pointer,
          )>>>()
          .value
          .asFunction<
              D2D1_PIXEL_FORMAT Function(
            Pointer,
          )>()(
        ptr.ref.lpVtbl,
      );

  void SetDpi(
    double dpiX,
    double dpiY,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(51)
          .cast<
              Pointer<
                  NativeFunction<
                      Void Function(
            Pointer,
            Float dpiX,
            Float dpiY,
          )>>>()
          .value
          .asFunction<
              void Function(
            Pointer,
            double dpiX,
            double dpiY,
          )>()(
        ptr.ref.lpVtbl,
        dpiX,
        dpiY,
      );

  void GetDpi(
    Pointer<Float> dpiX,
    Pointer<Float> dpiY,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(52)
          .cast<
              Pointer<
                  NativeFunction<
                      Void Function(
            Pointer,
            Pointer<Float> dpiX,
            Pointer<Float> dpiY,
          )>>>()
          .value
          .asFunction<
              void Function(
            Pointer,
            Pointer<Float> dpiX,
            Pointer<Float> dpiY,
          )>()(
        ptr.ref.lpVtbl,
        dpiX,
        dpiY,
      );

  D2D_SIZE_F GetSize() => ptr.ref.lpVtbl.value
          .elementAt(53)
          .cast<
              Pointer<
                  NativeFunction<
                      D2D_SIZE_F Function(
            Pointer,
          )>>>()
          .value
          .asFunction<
              D2D_SIZE_F Function(
            Pointer,
          )>()(
        ptr.ref.lpVtbl,
      );

  D2D_SIZE_U GetPixelSize() => ptr.ref.lpVtbl.value
          .elementAt(54)
          .cast<
              Pointer<
                  NativeFunction<
                      D2D_SIZE_U Function(
            Pointer,
          )>>>()
          .value
          .asFunction<
              D2D_SIZE_U Function(
            Pointer,
          )>()(
        ptr.ref.lpVtbl,
      );

  int GetMaximumBitmapSize() => ptr.ref.lpVtbl.value
          .elementAt(55)
          .cast<
              Pointer<
                  NativeFunction<
                      Uint32 Function(
            Pointer,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
          )>()(
        ptr.ref.lpVtbl,
      );

  int IsSupported(
    Pointer<D2D1_RENDER_TARGET_PROPERTIES> renderTargetProperties,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(56)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<D2D1_RENDER_TARGET_PROPERTIES> renderTargetProperties,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<D2D1_RENDER_TARGET_PROPERTIES> renderTargetProperties,
          )>()(
        ptr.ref.lpVtbl,
        renderTargetProperties,
      );
}
