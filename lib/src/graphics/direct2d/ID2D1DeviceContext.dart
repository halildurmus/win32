// ID2D1DeviceContext.dart

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

import '../../graphics/direct2d/ID2D1RenderTarget.dart';
import '../../graphics/direct2d/common/structs.g.dart';
import '../../graphics/direct2d/structs.g.dart';
import '../../graphics/direct2d/ID2D1Bitmap1.dart';
import '../../foundation/structs.g.dart';
import '../../graphics/imaging/IWICBitmapSource.dart';
import '../../graphics/direct2d/ID2D1ColorContext.dart';
import '../../graphics/imaging/IWICColorContext.dart';
import '../../graphics/dxgi/IDXGISurface.dart';
import '../../graphics/direct2d/ID2D1Effect.dart';
import '../../graphics/direct2d/ID2D1GradientStopCollection1.dart';
import '../../graphics/direct2d/ID2D1Image.dart';
import '../../graphics/direct2d/ID2D1ImageBrush.dart';
import '../../graphics/direct2d/ID2D1Bitmap.dart';
import '../../graphics/direct2d/ID2D1BitmapBrush1.dart';
import '../../graphics/direct2d/ID2D1CommandList.dart';
import '../../graphics/dxgi/common/structs.g.dart';
import '../../graphics/directwrite/structs.g.dart';
import '../../graphics/direct2d/ID2D1Device.dart';
import '../../graphics/direct2d/ID2D1Brush.dart';
import '../../graphics/direct2d/ID2D1GdiMetafile.dart';
import '../../graphics/direct2d/ID2D1Layer.dart';

/// @nodoc
const IID_ID2D1DeviceContext = '{E8F7FE7A-191C-466D-AD95-975678BDA998}';

/// {@category Interface}
/// {@category com}
class ID2D1DeviceContext extends ID2D1RenderTarget {
  // vtable begins at 57, is 35 entries long.
  ID2D1DeviceContext(Pointer<COMObject> ptr) : super(ptr);

  int CreateBitmap_1(
    D2D_SIZE_U size,
    Pointer sourceData,
    int pitch,
    Pointer<D2D1_BITMAP_PROPERTIES1> bitmapProperties,
    Pointer<Pointer<COMObject>> bitmap,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(57)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            D2D_SIZE_U size,
            Pointer sourceData,
            Uint32 pitch,
            Pointer<D2D1_BITMAP_PROPERTIES1> bitmapProperties,
            Pointer<Pointer<COMObject>> bitmap,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            D2D_SIZE_U size,
            Pointer sourceData,
            int pitch,
            Pointer<D2D1_BITMAP_PROPERTIES1> bitmapProperties,
            Pointer<Pointer<COMObject>> bitmap,
          )>()(
        ptr.ref.lpVtbl,
        size,
        sourceData,
        pitch,
        bitmapProperties,
        bitmap,
      );

  int CreateBitmapFromWicBitmap_1(
    Pointer<COMObject> wicBitmapSource,
    Pointer<D2D1_BITMAP_PROPERTIES1> bitmapProperties,
    Pointer<Pointer<COMObject>> bitmap,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(58)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<COMObject> wicBitmapSource,
            Pointer<D2D1_BITMAP_PROPERTIES1> bitmapProperties,
            Pointer<Pointer<COMObject>> bitmap,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<COMObject> wicBitmapSource,
            Pointer<D2D1_BITMAP_PROPERTIES1> bitmapProperties,
            Pointer<Pointer<COMObject>> bitmap,
          )>()(
        ptr.ref.lpVtbl,
        wicBitmapSource,
        bitmapProperties,
        bitmap,
      );

  int CreateColorContext(
    int space,
    Pointer<Uint8> profile,
    int profileSize,
    Pointer<Pointer<COMObject>> colorContext,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(59)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Uint32 space,
            Pointer<Uint8> profile,
            Uint32 profileSize,
            Pointer<Pointer<COMObject>> colorContext,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int space,
            Pointer<Uint8> profile,
            int profileSize,
            Pointer<Pointer<COMObject>> colorContext,
          )>()(
        ptr.ref.lpVtbl,
        space,
        profile,
        profileSize,
        colorContext,
      );

  int CreateColorContextFromFilename(
    Pointer<Utf16> filename,
    Pointer<Pointer<COMObject>> colorContext,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(60)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Utf16> filename,
            Pointer<Pointer<COMObject>> colorContext,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Utf16> filename,
            Pointer<Pointer<COMObject>> colorContext,
          )>()(
        ptr.ref.lpVtbl,
        filename,
        colorContext,
      );

  int CreateColorContextFromWicColorContext(
    Pointer<COMObject> wicColorContext,
    Pointer<Pointer<COMObject>> colorContext,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(61)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<COMObject> wicColorContext,
            Pointer<Pointer<COMObject>> colorContext,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<COMObject> wicColorContext,
            Pointer<Pointer<COMObject>> colorContext,
          )>()(
        ptr.ref.lpVtbl,
        wicColorContext,
        colorContext,
      );

  int CreateBitmapFromDxgiSurface(
    Pointer<COMObject> surface,
    Pointer<D2D1_BITMAP_PROPERTIES1> bitmapProperties,
    Pointer<Pointer<COMObject>> bitmap,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(62)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<COMObject> surface,
            Pointer<D2D1_BITMAP_PROPERTIES1> bitmapProperties,
            Pointer<Pointer<COMObject>> bitmap,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<COMObject> surface,
            Pointer<D2D1_BITMAP_PROPERTIES1> bitmapProperties,
            Pointer<Pointer<COMObject>> bitmap,
          )>()(
        ptr.ref.lpVtbl,
        surface,
        bitmapProperties,
        bitmap,
      );

  int CreateEffect(
    Pointer<GUID> effectId,
    Pointer<Pointer<COMObject>> effect,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(63)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<GUID> effectId,
            Pointer<Pointer<COMObject>> effect,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<GUID> effectId,
            Pointer<Pointer<COMObject>> effect,
          )>()(
        ptr.ref.lpVtbl,
        effectId,
        effect,
      );

  int CreateGradientStopCollection_1(
    Pointer<D2D1_GRADIENT_STOP> straightAlphaGradientStops,
    int straightAlphaGradientStopsCount,
    int preInterpolationSpace,
    int postInterpolationSpace,
    int bufferPrecision,
    int extendMode,
    int colorInterpolationMode,
    Pointer<Pointer<COMObject>> gradientStopCollection1,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(64)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<D2D1_GRADIENT_STOP> straightAlphaGradientStops,
            Uint32 straightAlphaGradientStopsCount,
            Uint32 preInterpolationSpace,
            Uint32 postInterpolationSpace,
            Uint32 bufferPrecision,
            Uint32 extendMode,
            Uint32 colorInterpolationMode,
            Pointer<Pointer<COMObject>> gradientStopCollection1,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<D2D1_GRADIENT_STOP> straightAlphaGradientStops,
            int straightAlphaGradientStopsCount,
            int preInterpolationSpace,
            int postInterpolationSpace,
            int bufferPrecision,
            int extendMode,
            int colorInterpolationMode,
            Pointer<Pointer<COMObject>> gradientStopCollection1,
          )>()(
        ptr.ref.lpVtbl,
        straightAlphaGradientStops,
        straightAlphaGradientStopsCount,
        preInterpolationSpace,
        postInterpolationSpace,
        bufferPrecision,
        extendMode,
        colorInterpolationMode,
        gradientStopCollection1,
      );

  int CreateImageBrush(
    Pointer<COMObject> image,
    Pointer<D2D1_IMAGE_BRUSH_PROPERTIES> imageBrushProperties,
    Pointer<D2D1_BRUSH_PROPERTIES> brushProperties,
    Pointer<Pointer<COMObject>> imageBrush,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(65)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<COMObject> image,
            Pointer<D2D1_IMAGE_BRUSH_PROPERTIES> imageBrushProperties,
            Pointer<D2D1_BRUSH_PROPERTIES> brushProperties,
            Pointer<Pointer<COMObject>> imageBrush,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<COMObject> image,
            Pointer<D2D1_IMAGE_BRUSH_PROPERTIES> imageBrushProperties,
            Pointer<D2D1_BRUSH_PROPERTIES> brushProperties,
            Pointer<Pointer<COMObject>> imageBrush,
          )>()(
        ptr.ref.lpVtbl,
        image,
        imageBrushProperties,
        brushProperties,
        imageBrush,
      );

  int CreateBitmapBrush_1(
    Pointer<COMObject> bitmap,
    Pointer<D2D1_BITMAP_BRUSH_PROPERTIES1> bitmapBrushProperties,
    Pointer<D2D1_BRUSH_PROPERTIES> brushProperties,
    Pointer<Pointer<COMObject>> bitmapBrush,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(66)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<COMObject> bitmap,
            Pointer<D2D1_BITMAP_BRUSH_PROPERTIES1> bitmapBrushProperties,
            Pointer<D2D1_BRUSH_PROPERTIES> brushProperties,
            Pointer<Pointer<COMObject>> bitmapBrush,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<COMObject> bitmap,
            Pointer<D2D1_BITMAP_BRUSH_PROPERTIES1> bitmapBrushProperties,
            Pointer<D2D1_BRUSH_PROPERTIES> brushProperties,
            Pointer<Pointer<COMObject>> bitmapBrush,
          )>()(
        ptr.ref.lpVtbl,
        bitmap,
        bitmapBrushProperties,
        brushProperties,
        bitmapBrush,
      );

  int CreateCommandList(
    Pointer<Pointer<COMObject>> commandList,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(67)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Pointer<COMObject>> commandList,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Pointer<COMObject>> commandList,
          )>()(
        ptr.ref.lpVtbl,
        commandList,
      );

  int IsDxgiFormatSupported(
    int format,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(68)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Uint32 format,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int format,
          )>()(
        ptr.ref.lpVtbl,
        format,
      );

  int IsBufferPrecisionSupported(
    int bufferPrecision,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(69)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Uint32 bufferPrecision,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int bufferPrecision,
          )>()(
        ptr.ref.lpVtbl,
        bufferPrecision,
      );

  int GetImageLocalBounds(
    Pointer<COMObject> image,
    Pointer<D2D_RECT_F> localBounds,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(70)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<COMObject> image,
            Pointer<D2D_RECT_F> localBounds,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<COMObject> image,
            Pointer<D2D_RECT_F> localBounds,
          )>()(
        ptr.ref.lpVtbl,
        image,
        localBounds,
      );

  int GetImageWorldBounds(
    Pointer<COMObject> image,
    Pointer<D2D_RECT_F> worldBounds,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(71)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<COMObject> image,
            Pointer<D2D_RECT_F> worldBounds,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<COMObject> image,
            Pointer<D2D_RECT_F> worldBounds,
          )>()(
        ptr.ref.lpVtbl,
        image,
        worldBounds,
      );

  int GetGlyphRunWorldBounds(
    D2D_POINT_2F baselineOrigin,
    Pointer<DWRITE_GLYPH_RUN> glyphRun,
    int measuringMode,
    Pointer<D2D_RECT_F> bounds,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(72)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            D2D_POINT_2F baselineOrigin,
            Pointer<DWRITE_GLYPH_RUN> glyphRun,
            Int32 measuringMode,
            Pointer<D2D_RECT_F> bounds,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            D2D_POINT_2F baselineOrigin,
            Pointer<DWRITE_GLYPH_RUN> glyphRun,
            int measuringMode,
            Pointer<D2D_RECT_F> bounds,
          )>()(
        ptr.ref.lpVtbl,
        baselineOrigin,
        glyphRun,
        measuringMode,
        bounds,
      );

  void GetDevice(
    Pointer<Pointer<COMObject>> device,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(73)
          .cast<
              Pointer<
                  NativeFunction<
                      Void Function(
            Pointer,
            Pointer<Pointer<COMObject>> device,
          )>>>()
          .value
          .asFunction<
              void Function(
            Pointer,
            Pointer<Pointer<COMObject>> device,
          )>()(
        ptr.ref.lpVtbl,
        device,
      );

  void SetTarget(
    Pointer<COMObject> image,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(74)
          .cast<
              Pointer<
                  NativeFunction<
                      Void Function(
            Pointer,
            Pointer<COMObject> image,
          )>>>()
          .value
          .asFunction<
              void Function(
            Pointer,
            Pointer<COMObject> image,
          )>()(
        ptr.ref.lpVtbl,
        image,
      );

  void GetTarget(
    Pointer<Pointer<COMObject>> image,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(75)
          .cast<
              Pointer<
                  NativeFunction<
                      Void Function(
            Pointer,
            Pointer<Pointer<COMObject>> image,
          )>>>()
          .value
          .asFunction<
              void Function(
            Pointer,
            Pointer<Pointer<COMObject>> image,
          )>()(
        ptr.ref.lpVtbl,
        image,
      );

  void SetRenderingControls(
    Pointer<D2D1_RENDERING_CONTROLS> renderingControls,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(76)
          .cast<
              Pointer<
                  NativeFunction<
                      Void Function(
            Pointer,
            Pointer<D2D1_RENDERING_CONTROLS> renderingControls,
          )>>>()
          .value
          .asFunction<
              void Function(
            Pointer,
            Pointer<D2D1_RENDERING_CONTROLS> renderingControls,
          )>()(
        ptr.ref.lpVtbl,
        renderingControls,
      );

  void GetRenderingControls(
    Pointer<D2D1_RENDERING_CONTROLS> renderingControls,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(77)
          .cast<
              Pointer<
                  NativeFunction<
                      Void Function(
            Pointer,
            Pointer<D2D1_RENDERING_CONTROLS> renderingControls,
          )>>>()
          .value
          .asFunction<
              void Function(
            Pointer,
            Pointer<D2D1_RENDERING_CONTROLS> renderingControls,
          )>()(
        ptr.ref.lpVtbl,
        renderingControls,
      );

  void SetPrimitiveBlend(
    int primitiveBlend,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(78)
          .cast<
              Pointer<
                  NativeFunction<
                      Void Function(
            Pointer,
            Uint32 primitiveBlend,
          )>>>()
          .value
          .asFunction<
              void Function(
            Pointer,
            int primitiveBlend,
          )>()(
        ptr.ref.lpVtbl,
        primitiveBlend,
      );

  int GetPrimitiveBlend() => ptr.ref.lpVtbl.value
          .elementAt(79)
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

  void SetUnitMode(
    int unitMode,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(80)
          .cast<
              Pointer<
                  NativeFunction<
                      Void Function(
            Pointer,
            Uint32 unitMode,
          )>>>()
          .value
          .asFunction<
              void Function(
            Pointer,
            int unitMode,
          )>()(
        ptr.ref.lpVtbl,
        unitMode,
      );

  int GetUnitMode() => ptr.ref.lpVtbl.value
          .elementAt(81)
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

  void DrawGlyphRun_1(
    D2D_POINT_2F baselineOrigin,
    Pointer<DWRITE_GLYPH_RUN> glyphRun,
    Pointer<DWRITE_GLYPH_RUN_DESCRIPTION> glyphRunDescription,
    Pointer<COMObject> foregroundBrush,
    int measuringMode,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(82)
          .cast<
              Pointer<
                  NativeFunction<
                      Void Function(
            Pointer,
            D2D_POINT_2F baselineOrigin,
            Pointer<DWRITE_GLYPH_RUN> glyphRun,
            Pointer<DWRITE_GLYPH_RUN_DESCRIPTION> glyphRunDescription,
            Pointer<COMObject> foregroundBrush,
            Int32 measuringMode,
          )>>>()
          .value
          .asFunction<
              void Function(
            Pointer,
            D2D_POINT_2F baselineOrigin,
            Pointer<DWRITE_GLYPH_RUN> glyphRun,
            Pointer<DWRITE_GLYPH_RUN_DESCRIPTION> glyphRunDescription,
            Pointer<COMObject> foregroundBrush,
            int measuringMode,
          )>()(
        ptr.ref.lpVtbl,
        baselineOrigin,
        glyphRun,
        glyphRunDescription,
        foregroundBrush,
        measuringMode,
      );

  void DrawImage(
    Pointer<COMObject> image,
    Pointer<D2D_POINT_2F> targetOffset,
    Pointer<D2D_RECT_F> imageRectangle,
    int interpolationMode,
    int compositeMode,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(83)
          .cast<
              Pointer<
                  NativeFunction<
                      Void Function(
            Pointer,
            Pointer<COMObject> image,
            Pointer<D2D_POINT_2F> targetOffset,
            Pointer<D2D_RECT_F> imageRectangle,
            Uint32 interpolationMode,
            Uint32 compositeMode,
          )>>>()
          .value
          .asFunction<
              void Function(
            Pointer,
            Pointer<COMObject> image,
            Pointer<D2D_POINT_2F> targetOffset,
            Pointer<D2D_RECT_F> imageRectangle,
            int interpolationMode,
            int compositeMode,
          )>()(
        ptr.ref.lpVtbl,
        image,
        targetOffset,
        imageRectangle,
        interpolationMode,
        compositeMode,
      );

  void DrawGdiMetafile(
    Pointer<COMObject> gdiMetafile,
    Pointer<D2D_POINT_2F> targetOffset,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(84)
          .cast<
              Pointer<
                  NativeFunction<
                      Void Function(
            Pointer,
            Pointer<COMObject> gdiMetafile,
            Pointer<D2D_POINT_2F> targetOffset,
          )>>>()
          .value
          .asFunction<
              void Function(
            Pointer,
            Pointer<COMObject> gdiMetafile,
            Pointer<D2D_POINT_2F> targetOffset,
          )>()(
        ptr.ref.lpVtbl,
        gdiMetafile,
        targetOffset,
      );

  void DrawBitmap_1(
    Pointer<COMObject> bitmap,
    Pointer<D2D_RECT_F> destinationRectangle,
    double opacity,
    int interpolationMode,
    Pointer<D2D_RECT_F> sourceRectangle,
    Pointer<D2D_MATRIX_4X4_F> perspectiveTransform,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(85)
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
            Pointer<D2D_MATRIX_4X4_F> perspectiveTransform,
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
            Pointer<D2D_MATRIX_4X4_F> perspectiveTransform,
          )>()(
        ptr.ref.lpVtbl,
        bitmap,
        destinationRectangle,
        opacity,
        interpolationMode,
        sourceRectangle,
        perspectiveTransform,
      );

  void PushLayer_1(
    Pointer<D2D1_LAYER_PARAMETERS1> layerParameters,
    Pointer<COMObject> layer,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(86)
          .cast<
              Pointer<
                  NativeFunction<
                      Void Function(
            Pointer,
            Pointer<D2D1_LAYER_PARAMETERS1> layerParameters,
            Pointer<COMObject> layer,
          )>>>()
          .value
          .asFunction<
              void Function(
            Pointer,
            Pointer<D2D1_LAYER_PARAMETERS1> layerParameters,
            Pointer<COMObject> layer,
          )>()(
        ptr.ref.lpVtbl,
        layerParameters,
        layer,
      );

  int InvalidateEffectInputRectangle(
    Pointer<COMObject> effect,
    int input,
    Pointer<D2D_RECT_F> inputRectangle,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(87)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<COMObject> effect,
            Uint32 input,
            Pointer<D2D_RECT_F> inputRectangle,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<COMObject> effect,
            int input,
            Pointer<D2D_RECT_F> inputRectangle,
          )>()(
        ptr.ref.lpVtbl,
        effect,
        input,
        inputRectangle,
      );

  int GetEffectInvalidRectangleCount(
    Pointer<COMObject> effect,
    Pointer<Uint32> rectangleCount,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(88)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<COMObject> effect,
            Pointer<Uint32> rectangleCount,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<COMObject> effect,
            Pointer<Uint32> rectangleCount,
          )>()(
        ptr.ref.lpVtbl,
        effect,
        rectangleCount,
      );

  int GetEffectInvalidRectangles(
    Pointer<COMObject> effect,
    Pointer<D2D_RECT_F> rectangles,
    int rectanglesCount,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(89)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<COMObject> effect,
            Pointer<D2D_RECT_F> rectangles,
            Uint32 rectanglesCount,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<COMObject> effect,
            Pointer<D2D_RECT_F> rectangles,
            int rectanglesCount,
          )>()(
        ptr.ref.lpVtbl,
        effect,
        rectangles,
        rectanglesCount,
      );

  int GetEffectRequiredInputRectangles(
    Pointer<COMObject> renderEffect,
    Pointer<D2D_RECT_F> renderImageRectangle,
    Pointer<D2D1_EFFECT_INPUT_DESCRIPTION> inputDescriptions,
    Pointer<D2D_RECT_F> requiredInputRects,
    int inputCount,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(90)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<COMObject> renderEffect,
            Pointer<D2D_RECT_F> renderImageRectangle,
            Pointer<D2D1_EFFECT_INPUT_DESCRIPTION> inputDescriptions,
            Pointer<D2D_RECT_F> requiredInputRects,
            Uint32 inputCount,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<COMObject> renderEffect,
            Pointer<D2D_RECT_F> renderImageRectangle,
            Pointer<D2D1_EFFECT_INPUT_DESCRIPTION> inputDescriptions,
            Pointer<D2D_RECT_F> requiredInputRects,
            int inputCount,
          )>()(
        ptr.ref.lpVtbl,
        renderEffect,
        renderImageRectangle,
        inputDescriptions,
        requiredInputRects,
        inputCount,
      );

  void FillOpacityMask_1(
    Pointer<COMObject> opacityMask,
    Pointer<COMObject> brush,
    Pointer<D2D_RECT_F> destinationRectangle,
    Pointer<D2D_RECT_F> sourceRectangle,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(91)
          .cast<
              Pointer<
                  NativeFunction<
                      Void Function(
            Pointer,
            Pointer<COMObject> opacityMask,
            Pointer<COMObject> brush,
            Pointer<D2D_RECT_F> destinationRectangle,
            Pointer<D2D_RECT_F> sourceRectangle,
          )>>>()
          .value
          .asFunction<
              void Function(
            Pointer,
            Pointer<COMObject> opacityMask,
            Pointer<COMObject> brush,
            Pointer<D2D_RECT_F> destinationRectangle,
            Pointer<D2D_RECT_F> sourceRectangle,
          )>()(
        ptr.ref.lpVtbl,
        opacityMask,
        brush,
        destinationRectangle,
        sourceRectangle,
      );
}
