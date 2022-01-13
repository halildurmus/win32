// ID2D1DeviceContext4.dart

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

import '../../graphics/direct2d/ID2D1DeviceContext3.dart';
import '../../graphics/direct2d/ID2D1SvgGlyphStyle.dart';
import '../../foundation/structs.g.dart';
import '../../graphics/directwrite/IDWriteTextFormat.dart';
import '../../graphics/direct2d/common/structs.g.dart';
import '../../graphics/direct2d/ID2D1Brush.dart';
import '../../graphics/direct2d/structs.g.dart';
import '../../graphics/directwrite/structs.g.dart';
import '../../graphics/directwrite/IDWriteTextLayout.dart';
import '../../graphics/directwrite/IDWriteFontFace.dart';
import '../../graphics/direct2d/ID2D1Image.dart';
import '../../graphics/direct2d/ID2D1CommandList.dart';

/// @nodoc
const IID_ID2D1DeviceContext4 = '{8C427831-3D90-4476-B647-C4FAE349E4DB}';

/// {@category Interface}
/// {@category com}
class ID2D1DeviceContext4 extends ID2D1DeviceContext3 {
  // vtable begins at 108, is 7 entries long.
  ID2D1DeviceContext4(Pointer<COMObject> ptr) : super(ptr);

  int CreateSvgGlyphStyle(
    Pointer<Pointer<COMObject>> svgGlyphStyle,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(108)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Pointer<COMObject>> svgGlyphStyle,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Pointer<COMObject>> svgGlyphStyle,
          )>()(
        ptr.ref.lpVtbl,
        svgGlyphStyle,
      );

  void DrawText_1(
    Pointer<Utf16> string,
    int stringLength,
    Pointer<COMObject> textFormat,
    Pointer<D2D_RECT_F> layoutRect,
    Pointer<COMObject> defaultFillBrush,
    Pointer<COMObject> svgGlyphStyle,
    int colorPaletteIndex,
    int options,
    int measuringMode,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(109)
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
            Pointer<COMObject> svgGlyphStyle,
            Uint32 colorPaletteIndex,
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
            Pointer<COMObject> svgGlyphStyle,
            int colorPaletteIndex,
            int options,
            int measuringMode,
          )>()(
        ptr.ref.lpVtbl,
        string,
        stringLength,
        textFormat,
        layoutRect,
        defaultFillBrush,
        svgGlyphStyle,
        colorPaletteIndex,
        options,
        measuringMode,
      );

  void DrawTextLayout_1(
    D2D_POINT_2F origin,
    Pointer<COMObject> textLayout,
    Pointer<COMObject> defaultFillBrush,
    Pointer<COMObject> svgGlyphStyle,
    int colorPaletteIndex,
    int options,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(110)
          .cast<
              Pointer<
                  NativeFunction<
                      Void Function(
            Pointer,
            D2D_POINT_2F origin,
            Pointer<COMObject> textLayout,
            Pointer<COMObject> defaultFillBrush,
            Pointer<COMObject> svgGlyphStyle,
            Uint32 colorPaletteIndex,
            Uint32 options,
          )>>>()
          .value
          .asFunction<
              void Function(
            Pointer,
            D2D_POINT_2F origin,
            Pointer<COMObject> textLayout,
            Pointer<COMObject> defaultFillBrush,
            Pointer<COMObject> svgGlyphStyle,
            int colorPaletteIndex,
            int options,
          )>()(
        ptr.ref.lpVtbl,
        origin,
        textLayout,
        defaultFillBrush,
        svgGlyphStyle,
        colorPaletteIndex,
        options,
      );

  void DrawColorBitmapGlyphRun(
    int glyphImageFormat,
    D2D_POINT_2F baselineOrigin,
    Pointer<DWRITE_GLYPH_RUN> glyphRun,
    int measuringMode,
    int bitmapSnapOption,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(111)
          .cast<
              Pointer<
                  NativeFunction<
                      Void Function(
            Pointer,
            Uint32 glyphImageFormat,
            D2D_POINT_2F baselineOrigin,
            Pointer<DWRITE_GLYPH_RUN> glyphRun,
            Int32 measuringMode,
            Uint32 bitmapSnapOption,
          )>>>()
          .value
          .asFunction<
              void Function(
            Pointer,
            int glyphImageFormat,
            D2D_POINT_2F baselineOrigin,
            Pointer<DWRITE_GLYPH_RUN> glyphRun,
            int measuringMode,
            int bitmapSnapOption,
          )>()(
        ptr.ref.lpVtbl,
        glyphImageFormat,
        baselineOrigin,
        glyphRun,
        measuringMode,
        bitmapSnapOption,
      );

  void DrawSvgGlyphRun(
    D2D_POINT_2F baselineOrigin,
    Pointer<DWRITE_GLYPH_RUN> glyphRun,
    Pointer<COMObject> defaultFillBrush,
    Pointer<COMObject> svgGlyphStyle,
    int colorPaletteIndex,
    int measuringMode,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(112)
          .cast<
              Pointer<
                  NativeFunction<
                      Void Function(
            Pointer,
            D2D_POINT_2F baselineOrigin,
            Pointer<DWRITE_GLYPH_RUN> glyphRun,
            Pointer<COMObject> defaultFillBrush,
            Pointer<COMObject> svgGlyphStyle,
            Uint32 colorPaletteIndex,
            Int32 measuringMode,
          )>>>()
          .value
          .asFunction<
              void Function(
            Pointer,
            D2D_POINT_2F baselineOrigin,
            Pointer<DWRITE_GLYPH_RUN> glyphRun,
            Pointer<COMObject> defaultFillBrush,
            Pointer<COMObject> svgGlyphStyle,
            int colorPaletteIndex,
            int measuringMode,
          )>()(
        ptr.ref.lpVtbl,
        baselineOrigin,
        glyphRun,
        defaultFillBrush,
        svgGlyphStyle,
        colorPaletteIndex,
        measuringMode,
      );

  int GetColorBitmapGlyphImage(
    int glyphImageFormat,
    D2D_POINT_2F glyphOrigin,
    Pointer<COMObject> fontFace,
    double fontEmSize,
    int glyphIndex,
    int isSideways,
    Pointer<D2D_MATRIX_3X2_F> worldTransform,
    double dpiX,
    double dpiY,
    Pointer<D2D_MATRIX_3X2_F> glyphTransform,
    Pointer<Pointer<COMObject>> glyphImage,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(113)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Uint32 glyphImageFormat,
            D2D_POINT_2F glyphOrigin,
            Pointer<COMObject> fontFace,
            Float fontEmSize,
            Uint16 glyphIndex,
            Int32 isSideways,
            Pointer<D2D_MATRIX_3X2_F> worldTransform,
            Float dpiX,
            Float dpiY,
            Pointer<D2D_MATRIX_3X2_F> glyphTransform,
            Pointer<Pointer<COMObject>> glyphImage,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int glyphImageFormat,
            D2D_POINT_2F glyphOrigin,
            Pointer<COMObject> fontFace,
            double fontEmSize,
            int glyphIndex,
            int isSideways,
            Pointer<D2D_MATRIX_3X2_F> worldTransform,
            double dpiX,
            double dpiY,
            Pointer<D2D_MATRIX_3X2_F> glyphTransform,
            Pointer<Pointer<COMObject>> glyphImage,
          )>()(
        ptr.ref.lpVtbl,
        glyphImageFormat,
        glyphOrigin,
        fontFace,
        fontEmSize,
        glyphIndex,
        isSideways,
        worldTransform,
        dpiX,
        dpiY,
        glyphTransform,
        glyphImage,
      );

  int GetSvgGlyphImage(
    D2D_POINT_2F glyphOrigin,
    Pointer<COMObject> fontFace,
    double fontEmSize,
    int glyphIndex,
    int isSideways,
    Pointer<D2D_MATRIX_3X2_F> worldTransform,
    Pointer<COMObject> defaultFillBrush,
    Pointer<COMObject> svgGlyphStyle,
    int colorPaletteIndex,
    Pointer<D2D_MATRIX_3X2_F> glyphTransform,
    Pointer<Pointer<COMObject>> glyphImage,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(114)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            D2D_POINT_2F glyphOrigin,
            Pointer<COMObject> fontFace,
            Float fontEmSize,
            Uint16 glyphIndex,
            Int32 isSideways,
            Pointer<D2D_MATRIX_3X2_F> worldTransform,
            Pointer<COMObject> defaultFillBrush,
            Pointer<COMObject> svgGlyphStyle,
            Uint32 colorPaletteIndex,
            Pointer<D2D_MATRIX_3X2_F> glyphTransform,
            Pointer<Pointer<COMObject>> glyphImage,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            D2D_POINT_2F glyphOrigin,
            Pointer<COMObject> fontFace,
            double fontEmSize,
            int glyphIndex,
            int isSideways,
            Pointer<D2D_MATRIX_3X2_F> worldTransform,
            Pointer<COMObject> defaultFillBrush,
            Pointer<COMObject> svgGlyphStyle,
            int colorPaletteIndex,
            Pointer<D2D_MATRIX_3X2_F> glyphTransform,
            Pointer<Pointer<COMObject>> glyphImage,
          )>()(
        ptr.ref.lpVtbl,
        glyphOrigin,
        fontFace,
        fontEmSize,
        glyphIndex,
        isSideways,
        worldTransform,
        defaultFillBrush,
        svgGlyphStyle,
        colorPaletteIndex,
        glyphTransform,
        glyphImage,
      );
}
