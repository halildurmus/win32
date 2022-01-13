// ID2D1CommandSink.dart

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
import '../../graphics/direct2d/structs.g.dart';
import '../../graphics/directwrite/IDWriteRenderingParams.dart';
import '../../graphics/direct2d/common/structs.g.dart';
import '../../graphics/directwrite/structs.g.dart';
import '../../graphics/direct2d/ID2D1Brush.dart';
import '../../graphics/direct2d/ID2D1StrokeStyle.dart';
import '../../graphics/direct2d/ID2D1Geometry.dart';
import '../../graphics/direct2d/ID2D1Bitmap.dart';
import '../../graphics/direct2d/ID2D1Image.dart';
import '../../graphics/direct2d/ID2D1GdiMetafile.dart';
import '../../graphics/direct2d/ID2D1Mesh.dart';
import '../../graphics/direct2d/ID2D1Layer.dart';

/// @nodoc
const IID_ID2D1CommandSink = '{54D7898A-A061-40A7-BEC7-E465BCBA2C4F}';

/// {@category Interface}
/// {@category com}
class ID2D1CommandSink extends IUnknown {
  // vtable begins at 3, is 25 entries long.
  ID2D1CommandSink(Pointer<COMObject> ptr) : super(ptr);

  int BeginDraw() => ptr.ref.lpVtbl.value
          .elementAt(3)
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

  int EndDraw() => ptr.ref.lpVtbl.value
          .elementAt(4)
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

  int SetAntialiasMode(
    int antialiasMode,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(5)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Uint32 antialiasMode,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int antialiasMode,
          )>()(
        ptr.ref.lpVtbl,
        antialiasMode,
      );

  int SetTags(
    int tag1,
    int tag2,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(6)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Uint64 tag1,
            Uint64 tag2,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int tag1,
            int tag2,
          )>()(
        ptr.ref.lpVtbl,
        tag1,
        tag2,
      );

  int SetTextAntialiasMode(
    int textAntialiasMode,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(7)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Uint32 textAntialiasMode,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int textAntialiasMode,
          )>()(
        ptr.ref.lpVtbl,
        textAntialiasMode,
      );

  int SetTextRenderingParams(
    Pointer<COMObject> textRenderingParams,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(8)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<COMObject> textRenderingParams,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<COMObject> textRenderingParams,
          )>()(
        ptr.ref.lpVtbl,
        textRenderingParams,
      );

  int SetTransform(
    Pointer<D2D_MATRIX_3X2_F> transform,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(9)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<D2D_MATRIX_3X2_F> transform,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<D2D_MATRIX_3X2_F> transform,
          )>()(
        ptr.ref.lpVtbl,
        transform,
      );

  int SetPrimitiveBlend(
    int primitiveBlend,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(10)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Uint32 primitiveBlend,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int primitiveBlend,
          )>()(
        ptr.ref.lpVtbl,
        primitiveBlend,
      );

  int SetUnitMode(
    int unitMode,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(11)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Uint32 unitMode,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int unitMode,
          )>()(
        ptr.ref.lpVtbl,
        unitMode,
      );

  int Clear(
    Pointer<D2D1_COLOR_F> color,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(12)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<D2D1_COLOR_F> color,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<D2D1_COLOR_F> color,
          )>()(
        ptr.ref.lpVtbl,
        color,
      );

  int DrawGlyphRun(
    D2D_POINT_2F baselineOrigin,
    Pointer<DWRITE_GLYPH_RUN> glyphRun,
    Pointer<DWRITE_GLYPH_RUN_DESCRIPTION> glyphRunDescription,
    Pointer<COMObject> foregroundBrush,
    int measuringMode,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(13)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            D2D_POINT_2F baselineOrigin,
            Pointer<DWRITE_GLYPH_RUN> glyphRun,
            Pointer<DWRITE_GLYPH_RUN_DESCRIPTION> glyphRunDescription,
            Pointer<COMObject> foregroundBrush,
            Int32 measuringMode,
          )>>>()
          .value
          .asFunction<
              int Function(
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

  int DrawLine(
    D2D_POINT_2F point0,
    D2D_POINT_2F point1,
    Pointer<COMObject> brush,
    double strokeWidth,
    Pointer<COMObject> strokeStyle,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(14)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            D2D_POINT_2F point0,
            D2D_POINT_2F point1,
            Pointer<COMObject> brush,
            Float strokeWidth,
            Pointer<COMObject> strokeStyle,
          )>>>()
          .value
          .asFunction<
              int Function(
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

  int DrawGeometry(
    Pointer<COMObject> geometry,
    Pointer<COMObject> brush,
    double strokeWidth,
    Pointer<COMObject> strokeStyle,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(15)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<COMObject> geometry,
            Pointer<COMObject> brush,
            Float strokeWidth,
            Pointer<COMObject> strokeStyle,
          )>>>()
          .value
          .asFunction<
              int Function(
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

  int DrawRectangle(
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
                      Int32 Function(
            Pointer,
            Pointer<D2D_RECT_F> rect,
            Pointer<COMObject> brush,
            Float strokeWidth,
            Pointer<COMObject> strokeStyle,
          )>>>()
          .value
          .asFunction<
              int Function(
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

  int DrawBitmap(
    Pointer<COMObject> bitmap,
    Pointer<D2D_RECT_F> destinationRectangle,
    double opacity,
    int interpolationMode,
    Pointer<D2D_RECT_F> sourceRectangle,
    Pointer<D2D_MATRIX_4X4_F> perspectiveTransform,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(17)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
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
              int Function(
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

  int DrawImage(
    Pointer<COMObject> image,
    Pointer<D2D_POINT_2F> targetOffset,
    Pointer<D2D_RECT_F> imageRectangle,
    int interpolationMode,
    int compositeMode,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(18)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<COMObject> image,
            Pointer<D2D_POINT_2F> targetOffset,
            Pointer<D2D_RECT_F> imageRectangle,
            Uint32 interpolationMode,
            Uint32 compositeMode,
          )>>>()
          .value
          .asFunction<
              int Function(
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

  int DrawGdiMetafile(
    Pointer<COMObject> gdiMetafile,
    Pointer<D2D_POINT_2F> targetOffset,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(19)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<COMObject> gdiMetafile,
            Pointer<D2D_POINT_2F> targetOffset,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<COMObject> gdiMetafile,
            Pointer<D2D_POINT_2F> targetOffset,
          )>()(
        ptr.ref.lpVtbl,
        gdiMetafile,
        targetOffset,
      );

  int FillMesh(
    Pointer<COMObject> mesh,
    Pointer<COMObject> brush,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(20)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<COMObject> mesh,
            Pointer<COMObject> brush,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<COMObject> mesh,
            Pointer<COMObject> brush,
          )>()(
        ptr.ref.lpVtbl,
        mesh,
        brush,
      );

  int FillOpacityMask(
    Pointer<COMObject> opacityMask,
    Pointer<COMObject> brush,
    Pointer<D2D_RECT_F> destinationRectangle,
    Pointer<D2D_RECT_F> sourceRectangle,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(21)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<COMObject> opacityMask,
            Pointer<COMObject> brush,
            Pointer<D2D_RECT_F> destinationRectangle,
            Pointer<D2D_RECT_F> sourceRectangle,
          )>>>()
          .value
          .asFunction<
              int Function(
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

  int FillGeometry(
    Pointer<COMObject> geometry,
    Pointer<COMObject> brush,
    Pointer<COMObject> opacityBrush,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(22)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<COMObject> geometry,
            Pointer<COMObject> brush,
            Pointer<COMObject> opacityBrush,
          )>>>()
          .value
          .asFunction<
              int Function(
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

  int FillRectangle(
    Pointer<D2D_RECT_F> rect,
    Pointer<COMObject> brush,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(23)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<D2D_RECT_F> rect,
            Pointer<COMObject> brush,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<D2D_RECT_F> rect,
            Pointer<COMObject> brush,
          )>()(
        ptr.ref.lpVtbl,
        rect,
        brush,
      );

  int PushAxisAlignedClip(
    Pointer<D2D_RECT_F> clipRect,
    int antialiasMode,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(24)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<D2D_RECT_F> clipRect,
            Uint32 antialiasMode,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<D2D_RECT_F> clipRect,
            int antialiasMode,
          )>()(
        ptr.ref.lpVtbl,
        clipRect,
        antialiasMode,
      );

  int PushLayer(
    Pointer<D2D1_LAYER_PARAMETERS1> layerParameters1,
    Pointer<COMObject> layer,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(25)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<D2D1_LAYER_PARAMETERS1> layerParameters1,
            Pointer<COMObject> layer,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<D2D1_LAYER_PARAMETERS1> layerParameters1,
            Pointer<COMObject> layer,
          )>()(
        ptr.ref.lpVtbl,
        layerParameters1,
        layer,
      );

  int PopAxisAlignedClip() => ptr.ref.lpVtbl.value
          .elementAt(26)
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

  int PopLayer() => ptr.ref.lpVtbl.value
          .elementAt(27)
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
}
