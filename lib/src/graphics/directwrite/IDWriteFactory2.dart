// IDWriteFactory2.dart

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

import '../../graphics/directwrite/IDWriteFactory1.dart';
import '../../graphics/directwrite/IDWriteFontFallback.dart';
import '../../foundation/structs.g.dart';
import '../../graphics/directwrite/IDWriteFontFallbackBuilder.dart';
import '../../graphics/directwrite/structs.g.dart';
import '../../graphics/directwrite/IDWriteColorGlyphRunEnumerator.dart';
import '../../graphics/directwrite/IDWriteRenderingParams2.dart';
import '../../graphics/directwrite/IDWriteGlyphRunAnalysis.dart';

/// @nodoc
const IID_IDWriteFactory2 = '{0439FC60-CA44-4994-8DEE-3A9AF7B732EC}';

/// {@category Interface}
/// {@category com}
class IDWriteFactory2 extends IDWriteFactory1 {
  // vtable begins at 26, is 5 entries long.
  IDWriteFactory2(Pointer<COMObject> ptr) : super(ptr);

  int GetSystemFontFallback(
    Pointer<Pointer<COMObject>> fontFallback,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(26)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Pointer<COMObject>> fontFallback,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Pointer<COMObject>> fontFallback,
          )>()(
        ptr.ref.lpVtbl,
        fontFallback,
      );

  int CreateFontFallbackBuilder(
    Pointer<Pointer<COMObject>> fontFallbackBuilder,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(27)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Pointer<COMObject>> fontFallbackBuilder,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Pointer<COMObject>> fontFallbackBuilder,
          )>()(
        ptr.ref.lpVtbl,
        fontFallbackBuilder,
      );

  int TranslateColorGlyphRun(
    double baselineOriginX,
    double baselineOriginY,
    Pointer<DWRITE_GLYPH_RUN> glyphRun,
    Pointer<DWRITE_GLYPH_RUN_DESCRIPTION> glyphRunDescription,
    int measuringMode,
    Pointer<DWRITE_MATRIX> worldToDeviceTransform,
    int colorPaletteIndex,
    Pointer<Pointer<COMObject>> colorLayers,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(28)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Float baselineOriginX,
            Float baselineOriginY,
            Pointer<DWRITE_GLYPH_RUN> glyphRun,
            Pointer<DWRITE_GLYPH_RUN_DESCRIPTION> glyphRunDescription,
            Int32 measuringMode,
            Pointer<DWRITE_MATRIX> worldToDeviceTransform,
            Uint32 colorPaletteIndex,
            Pointer<Pointer<COMObject>> colorLayers,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            double baselineOriginX,
            double baselineOriginY,
            Pointer<DWRITE_GLYPH_RUN> glyphRun,
            Pointer<DWRITE_GLYPH_RUN_DESCRIPTION> glyphRunDescription,
            int measuringMode,
            Pointer<DWRITE_MATRIX> worldToDeviceTransform,
            int colorPaletteIndex,
            Pointer<Pointer<COMObject>> colorLayers,
          )>()(
        ptr.ref.lpVtbl,
        baselineOriginX,
        baselineOriginY,
        glyphRun,
        glyphRunDescription,
        measuringMode,
        worldToDeviceTransform,
        colorPaletteIndex,
        colorLayers,
      );

  int CreateCustomRenderingParams_2(
    double gamma,
    double enhancedContrast,
    double grayscaleEnhancedContrast,
    double clearTypeLevel,
    int pixelGeometry,
    int renderingMode,
    int gridFitMode,
    Pointer<Pointer<COMObject>> renderingParams,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(29)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Float gamma,
            Float enhancedContrast,
            Float grayscaleEnhancedContrast,
            Float clearTypeLevel,
            Int32 pixelGeometry,
            Int32 renderingMode,
            Int32 gridFitMode,
            Pointer<Pointer<COMObject>> renderingParams,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            double gamma,
            double enhancedContrast,
            double grayscaleEnhancedContrast,
            double clearTypeLevel,
            int pixelGeometry,
            int renderingMode,
            int gridFitMode,
            Pointer<Pointer<COMObject>> renderingParams,
          )>()(
        ptr.ref.lpVtbl,
        gamma,
        enhancedContrast,
        grayscaleEnhancedContrast,
        clearTypeLevel,
        pixelGeometry,
        renderingMode,
        gridFitMode,
        renderingParams,
      );

  int CreateGlyphRunAnalysis_1(
    Pointer<DWRITE_GLYPH_RUN> glyphRun,
    Pointer<DWRITE_MATRIX> transform,
    int renderingMode,
    int measuringMode,
    int gridFitMode,
    int antialiasMode,
    double baselineOriginX,
    double baselineOriginY,
    Pointer<Pointer<COMObject>> glyphRunAnalysis,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(30)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<DWRITE_GLYPH_RUN> glyphRun,
            Pointer<DWRITE_MATRIX> transform,
            Int32 renderingMode,
            Int32 measuringMode,
            Int32 gridFitMode,
            Int32 antialiasMode,
            Float baselineOriginX,
            Float baselineOriginY,
            Pointer<Pointer<COMObject>> glyphRunAnalysis,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<DWRITE_GLYPH_RUN> glyphRun,
            Pointer<DWRITE_MATRIX> transform,
            int renderingMode,
            int measuringMode,
            int gridFitMode,
            int antialiasMode,
            double baselineOriginX,
            double baselineOriginY,
            Pointer<Pointer<COMObject>> glyphRunAnalysis,
          )>()(
        ptr.ref.lpVtbl,
        glyphRun,
        transform,
        renderingMode,
        measuringMode,
        gridFitMode,
        antialiasMode,
        baselineOriginX,
        baselineOriginY,
        glyphRunAnalysis,
      );
}
