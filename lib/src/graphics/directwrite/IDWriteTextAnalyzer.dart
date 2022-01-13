// IDWriteTextAnalyzer.dart

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
import '../../graphics/directwrite/IDWriteTextAnalysisSource.dart';
import '../../graphics/directwrite/IDWriteTextAnalysisSink.dart';
import '../../foundation/structs.g.dart';
import '../../graphics/directwrite/IDWriteFontFace.dart';
import '../../graphics/directwrite/structs.g.dart';
import '../../graphics/directwrite/IDWriteNumberSubstitution.dart';

/// @nodoc
const IID_IDWriteTextAnalyzer = '{B7E6163E-7F46-43B4-84B3-E4E6249C365D}';

/// {@category Interface}
/// {@category com}
class IDWriteTextAnalyzer extends IUnknown {
  // vtable begins at 3, is 7 entries long.
  IDWriteTextAnalyzer(Pointer<COMObject> ptr) : super(ptr);

  int AnalyzeScript(
    Pointer<COMObject> analysisSource,
    int textPosition,
    int textLength,
    Pointer<COMObject> analysisSink,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(3)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<COMObject> analysisSource,
            Uint32 textPosition,
            Uint32 textLength,
            Pointer<COMObject> analysisSink,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<COMObject> analysisSource,
            int textPosition,
            int textLength,
            Pointer<COMObject> analysisSink,
          )>()(
        ptr.ref.lpVtbl,
        analysisSource,
        textPosition,
        textLength,
        analysisSink,
      );

  int AnalyzeBidi(
    Pointer<COMObject> analysisSource,
    int textPosition,
    int textLength,
    Pointer<COMObject> analysisSink,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(4)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<COMObject> analysisSource,
            Uint32 textPosition,
            Uint32 textLength,
            Pointer<COMObject> analysisSink,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<COMObject> analysisSource,
            int textPosition,
            int textLength,
            Pointer<COMObject> analysisSink,
          )>()(
        ptr.ref.lpVtbl,
        analysisSource,
        textPosition,
        textLength,
        analysisSink,
      );

  int AnalyzeNumberSubstitution(
    Pointer<COMObject> analysisSource,
    int textPosition,
    int textLength,
    Pointer<COMObject> analysisSink,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(5)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<COMObject> analysisSource,
            Uint32 textPosition,
            Uint32 textLength,
            Pointer<COMObject> analysisSink,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<COMObject> analysisSource,
            int textPosition,
            int textLength,
            Pointer<COMObject> analysisSink,
          )>()(
        ptr.ref.lpVtbl,
        analysisSource,
        textPosition,
        textLength,
        analysisSink,
      );

  int AnalyzeLineBreakpoints(
    Pointer<COMObject> analysisSource,
    int textPosition,
    int textLength,
    Pointer<COMObject> analysisSink,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(6)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<COMObject> analysisSource,
            Uint32 textPosition,
            Uint32 textLength,
            Pointer<COMObject> analysisSink,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<COMObject> analysisSource,
            int textPosition,
            int textLength,
            Pointer<COMObject> analysisSink,
          )>()(
        ptr.ref.lpVtbl,
        analysisSource,
        textPosition,
        textLength,
        analysisSink,
      );

  int GetGlyphs(
    Pointer<Utf16> textString,
    int textLength,
    Pointer<COMObject> fontFace,
    int isSideways,
    int isRightToLeft,
    Pointer<DWRITE_SCRIPT_ANALYSIS> scriptAnalysis,
    Pointer<Utf16> localeName,
    Pointer<COMObject> numberSubstitution,
    Pointer<Pointer<DWRITE_TYPOGRAPHIC_FEATURES>> features,
    Pointer<Uint32> featureRangeLengths,
    int featureRanges,
    int maxGlyphCount,
    Pointer<Uint16> clusterMap,
    Pointer<DWRITE_SHAPING_TEXT_PROPERTIES> textProps,
    Pointer<Uint16> glyphIndices,
    Pointer<DWRITE_SHAPING_GLYPH_PROPERTIES> glyphProps,
    Pointer<Uint32> actualGlyphCount,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(7)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Utf16> textString,
            Uint32 textLength,
            Pointer<COMObject> fontFace,
            Int32 isSideways,
            Int32 isRightToLeft,
            Pointer<DWRITE_SCRIPT_ANALYSIS> scriptAnalysis,
            Pointer<Utf16> localeName,
            Pointer<COMObject> numberSubstitution,
            Pointer<Pointer<DWRITE_TYPOGRAPHIC_FEATURES>> features,
            Pointer<Uint32> featureRangeLengths,
            Uint32 featureRanges,
            Uint32 maxGlyphCount,
            Pointer<Uint16> clusterMap,
            Pointer<DWRITE_SHAPING_TEXT_PROPERTIES> textProps,
            Pointer<Uint16> glyphIndices,
            Pointer<DWRITE_SHAPING_GLYPH_PROPERTIES> glyphProps,
            Pointer<Uint32> actualGlyphCount,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Utf16> textString,
            int textLength,
            Pointer<COMObject> fontFace,
            int isSideways,
            int isRightToLeft,
            Pointer<DWRITE_SCRIPT_ANALYSIS> scriptAnalysis,
            Pointer<Utf16> localeName,
            Pointer<COMObject> numberSubstitution,
            Pointer<Pointer<DWRITE_TYPOGRAPHIC_FEATURES>> features,
            Pointer<Uint32> featureRangeLengths,
            int featureRanges,
            int maxGlyphCount,
            Pointer<Uint16> clusterMap,
            Pointer<DWRITE_SHAPING_TEXT_PROPERTIES> textProps,
            Pointer<Uint16> glyphIndices,
            Pointer<DWRITE_SHAPING_GLYPH_PROPERTIES> glyphProps,
            Pointer<Uint32> actualGlyphCount,
          )>()(
        ptr.ref.lpVtbl,
        textString,
        textLength,
        fontFace,
        isSideways,
        isRightToLeft,
        scriptAnalysis,
        localeName,
        numberSubstitution,
        features,
        featureRangeLengths,
        featureRanges,
        maxGlyphCount,
        clusterMap,
        textProps,
        glyphIndices,
        glyphProps,
        actualGlyphCount,
      );

  int GetGlyphPlacements(
    Pointer<Utf16> textString,
    Pointer<Uint16> clusterMap,
    Pointer<DWRITE_SHAPING_TEXT_PROPERTIES> textProps,
    int textLength,
    Pointer<Uint16> glyphIndices,
    Pointer<DWRITE_SHAPING_GLYPH_PROPERTIES> glyphProps,
    int glyphCount,
    Pointer<COMObject> fontFace,
    double fontEmSize,
    int isSideways,
    int isRightToLeft,
    Pointer<DWRITE_SCRIPT_ANALYSIS> scriptAnalysis,
    Pointer<Utf16> localeName,
    Pointer<Pointer<DWRITE_TYPOGRAPHIC_FEATURES>> features,
    Pointer<Uint32> featureRangeLengths,
    int featureRanges,
    Pointer<Float> glyphAdvances,
    Pointer<DWRITE_GLYPH_OFFSET> glyphOffsets,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(8)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Utf16> textString,
            Pointer<Uint16> clusterMap,
            Pointer<DWRITE_SHAPING_TEXT_PROPERTIES> textProps,
            Uint32 textLength,
            Pointer<Uint16> glyphIndices,
            Pointer<DWRITE_SHAPING_GLYPH_PROPERTIES> glyphProps,
            Uint32 glyphCount,
            Pointer<COMObject> fontFace,
            Float fontEmSize,
            Int32 isSideways,
            Int32 isRightToLeft,
            Pointer<DWRITE_SCRIPT_ANALYSIS> scriptAnalysis,
            Pointer<Utf16> localeName,
            Pointer<Pointer<DWRITE_TYPOGRAPHIC_FEATURES>> features,
            Pointer<Uint32> featureRangeLengths,
            Uint32 featureRanges,
            Pointer<Float> glyphAdvances,
            Pointer<DWRITE_GLYPH_OFFSET> glyphOffsets,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Utf16> textString,
            Pointer<Uint16> clusterMap,
            Pointer<DWRITE_SHAPING_TEXT_PROPERTIES> textProps,
            int textLength,
            Pointer<Uint16> glyphIndices,
            Pointer<DWRITE_SHAPING_GLYPH_PROPERTIES> glyphProps,
            int glyphCount,
            Pointer<COMObject> fontFace,
            double fontEmSize,
            int isSideways,
            int isRightToLeft,
            Pointer<DWRITE_SCRIPT_ANALYSIS> scriptAnalysis,
            Pointer<Utf16> localeName,
            Pointer<Pointer<DWRITE_TYPOGRAPHIC_FEATURES>> features,
            Pointer<Uint32> featureRangeLengths,
            int featureRanges,
            Pointer<Float> glyphAdvances,
            Pointer<DWRITE_GLYPH_OFFSET> glyphOffsets,
          )>()(
        ptr.ref.lpVtbl,
        textString,
        clusterMap,
        textProps,
        textLength,
        glyphIndices,
        glyphProps,
        glyphCount,
        fontFace,
        fontEmSize,
        isSideways,
        isRightToLeft,
        scriptAnalysis,
        localeName,
        features,
        featureRangeLengths,
        featureRanges,
        glyphAdvances,
        glyphOffsets,
      );

  int GetGdiCompatibleGlyphPlacements(
    Pointer<Utf16> textString,
    Pointer<Uint16> clusterMap,
    Pointer<DWRITE_SHAPING_TEXT_PROPERTIES> textProps,
    int textLength,
    Pointer<Uint16> glyphIndices,
    Pointer<DWRITE_SHAPING_GLYPH_PROPERTIES> glyphProps,
    int glyphCount,
    Pointer<COMObject> fontFace,
    double fontEmSize,
    double pixelsPerDip,
    Pointer<DWRITE_MATRIX> transform,
    int useGdiNatural,
    int isSideways,
    int isRightToLeft,
    Pointer<DWRITE_SCRIPT_ANALYSIS> scriptAnalysis,
    Pointer<Utf16> localeName,
    Pointer<Pointer<DWRITE_TYPOGRAPHIC_FEATURES>> features,
    Pointer<Uint32> featureRangeLengths,
    int featureRanges,
    Pointer<Float> glyphAdvances,
    Pointer<DWRITE_GLYPH_OFFSET> glyphOffsets,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(9)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Utf16> textString,
            Pointer<Uint16> clusterMap,
            Pointer<DWRITE_SHAPING_TEXT_PROPERTIES> textProps,
            Uint32 textLength,
            Pointer<Uint16> glyphIndices,
            Pointer<DWRITE_SHAPING_GLYPH_PROPERTIES> glyphProps,
            Uint32 glyphCount,
            Pointer<COMObject> fontFace,
            Float fontEmSize,
            Float pixelsPerDip,
            Pointer<DWRITE_MATRIX> transform,
            Int32 useGdiNatural,
            Int32 isSideways,
            Int32 isRightToLeft,
            Pointer<DWRITE_SCRIPT_ANALYSIS> scriptAnalysis,
            Pointer<Utf16> localeName,
            Pointer<Pointer<DWRITE_TYPOGRAPHIC_FEATURES>> features,
            Pointer<Uint32> featureRangeLengths,
            Uint32 featureRanges,
            Pointer<Float> glyphAdvances,
            Pointer<DWRITE_GLYPH_OFFSET> glyphOffsets,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Utf16> textString,
            Pointer<Uint16> clusterMap,
            Pointer<DWRITE_SHAPING_TEXT_PROPERTIES> textProps,
            int textLength,
            Pointer<Uint16> glyphIndices,
            Pointer<DWRITE_SHAPING_GLYPH_PROPERTIES> glyphProps,
            int glyphCount,
            Pointer<COMObject> fontFace,
            double fontEmSize,
            double pixelsPerDip,
            Pointer<DWRITE_MATRIX> transform,
            int useGdiNatural,
            int isSideways,
            int isRightToLeft,
            Pointer<DWRITE_SCRIPT_ANALYSIS> scriptAnalysis,
            Pointer<Utf16> localeName,
            Pointer<Pointer<DWRITE_TYPOGRAPHIC_FEATURES>> features,
            Pointer<Uint32> featureRangeLengths,
            int featureRanges,
            Pointer<Float> glyphAdvances,
            Pointer<DWRITE_GLYPH_OFFSET> glyphOffsets,
          )>()(
        ptr.ref.lpVtbl,
        textString,
        clusterMap,
        textProps,
        textLength,
        glyphIndices,
        glyphProps,
        glyphCount,
        fontFace,
        fontEmSize,
        pixelsPerDip,
        transform,
        useGdiNatural,
        isSideways,
        isRightToLeft,
        scriptAnalysis,
        localeName,
        features,
        featureRangeLengths,
        featureRanges,
        glyphAdvances,
        glyphOffsets,
      );
}
