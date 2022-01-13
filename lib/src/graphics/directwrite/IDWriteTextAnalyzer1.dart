// IDWriteTextAnalyzer1.dart

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

import '../../graphics/directwrite/IDWriteTextAnalyzer.dart';
import '../../graphics/directwrite/structs.g.dart';
import '../../foundation/structs.g.dart';
import '../../graphics/directwrite/IDWriteFontFace.dart';
import '../../graphics/directwrite/IDWriteTextAnalysisSource1.dart';
import '../../graphics/directwrite/IDWriteTextAnalysisSink1.dart';

/// @nodoc
const IID_IDWriteTextAnalyzer1 = '{80DAD800-E21F-4E83-96CE-BFCCE500DB7C}';

/// {@category Interface}
/// {@category com}
class IDWriteTextAnalyzer1 extends IDWriteTextAnalyzer {
  // vtable begins at 10, is 9 entries long.
  IDWriteTextAnalyzer1(Pointer<COMObject> ptr) : super(ptr);

  int ApplyCharacterSpacing(
    double leadingSpacing,
    double trailingSpacing,
    double minimumAdvanceWidth,
    int textLength,
    int glyphCount,
    Pointer<Uint16> clusterMap,
    Pointer<Float> glyphAdvances,
    Pointer<DWRITE_GLYPH_OFFSET> glyphOffsets,
    Pointer<DWRITE_SHAPING_GLYPH_PROPERTIES> glyphProperties,
    Pointer<Float> modifiedGlyphAdvances,
    Pointer<DWRITE_GLYPH_OFFSET> modifiedGlyphOffsets,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(10)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Float leadingSpacing,
            Float trailingSpacing,
            Float minimumAdvanceWidth,
            Uint32 textLength,
            Uint32 glyphCount,
            Pointer<Uint16> clusterMap,
            Pointer<Float> glyphAdvances,
            Pointer<DWRITE_GLYPH_OFFSET> glyphOffsets,
            Pointer<DWRITE_SHAPING_GLYPH_PROPERTIES> glyphProperties,
            Pointer<Float> modifiedGlyphAdvances,
            Pointer<DWRITE_GLYPH_OFFSET> modifiedGlyphOffsets,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            double leadingSpacing,
            double trailingSpacing,
            double minimumAdvanceWidth,
            int textLength,
            int glyphCount,
            Pointer<Uint16> clusterMap,
            Pointer<Float> glyphAdvances,
            Pointer<DWRITE_GLYPH_OFFSET> glyphOffsets,
            Pointer<DWRITE_SHAPING_GLYPH_PROPERTIES> glyphProperties,
            Pointer<Float> modifiedGlyphAdvances,
            Pointer<DWRITE_GLYPH_OFFSET> modifiedGlyphOffsets,
          )>()(
        ptr.ref.lpVtbl,
        leadingSpacing,
        trailingSpacing,
        minimumAdvanceWidth,
        textLength,
        glyphCount,
        clusterMap,
        glyphAdvances,
        glyphOffsets,
        glyphProperties,
        modifiedGlyphAdvances,
        modifiedGlyphOffsets,
      );

  int GetBaseline(
    Pointer<COMObject> fontFace,
    int baseline,
    int isVertical,
    int isSimulationAllowed,
    DWRITE_SCRIPT_ANALYSIS scriptAnalysis,
    Pointer<Utf16> localeName,
    Pointer<Int32> baselineCoordinate,
    Pointer<Int32> exists,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(11)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<COMObject> fontFace,
            Int32 baseline,
            Int32 isVertical,
            Int32 isSimulationAllowed,
            DWRITE_SCRIPT_ANALYSIS scriptAnalysis,
            Pointer<Utf16> localeName,
            Pointer<Int32> baselineCoordinate,
            Pointer<Int32> exists,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<COMObject> fontFace,
            int baseline,
            int isVertical,
            int isSimulationAllowed,
            DWRITE_SCRIPT_ANALYSIS scriptAnalysis,
            Pointer<Utf16> localeName,
            Pointer<Int32> baselineCoordinate,
            Pointer<Int32> exists,
          )>()(
        ptr.ref.lpVtbl,
        fontFace,
        baseline,
        isVertical,
        isSimulationAllowed,
        scriptAnalysis,
        localeName,
        baselineCoordinate,
        exists,
      );

  int AnalyzeVerticalGlyphOrientation(
    Pointer<COMObject> analysisSource,
    int textPosition,
    int textLength,
    Pointer<COMObject> analysisSink,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(12)
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

  int GetGlyphOrientationTransform(
    int glyphOrientationAngle,
    int isSideways,
    Pointer<DWRITE_MATRIX> transform,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(13)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Int32 glyphOrientationAngle,
            Int32 isSideways,
            Pointer<DWRITE_MATRIX> transform,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int glyphOrientationAngle,
            int isSideways,
            Pointer<DWRITE_MATRIX> transform,
          )>()(
        ptr.ref.lpVtbl,
        glyphOrientationAngle,
        isSideways,
        transform,
      );

  int GetScriptProperties(
    DWRITE_SCRIPT_ANALYSIS scriptAnalysis,
    Pointer<DWRITE_SCRIPT_PROPERTIES> scriptProperties,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(14)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            DWRITE_SCRIPT_ANALYSIS scriptAnalysis,
            Pointer<DWRITE_SCRIPT_PROPERTIES> scriptProperties,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            DWRITE_SCRIPT_ANALYSIS scriptAnalysis,
            Pointer<DWRITE_SCRIPT_PROPERTIES> scriptProperties,
          )>()(
        ptr.ref.lpVtbl,
        scriptAnalysis,
        scriptProperties,
      );

  int GetTextComplexity(
    Pointer<Utf16> textString,
    int textLength,
    Pointer<COMObject> fontFace,
    Pointer<Int32> isTextSimple,
    Pointer<Uint32> textLengthRead,
    Pointer<Uint16> glyphIndices,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(15)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Utf16> textString,
            Uint32 textLength,
            Pointer<COMObject> fontFace,
            Pointer<Int32> isTextSimple,
            Pointer<Uint32> textLengthRead,
            Pointer<Uint16> glyphIndices,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Utf16> textString,
            int textLength,
            Pointer<COMObject> fontFace,
            Pointer<Int32> isTextSimple,
            Pointer<Uint32> textLengthRead,
            Pointer<Uint16> glyphIndices,
          )>()(
        ptr.ref.lpVtbl,
        textString,
        textLength,
        fontFace,
        isTextSimple,
        textLengthRead,
        glyphIndices,
      );

  int GetJustificationOpportunities(
    Pointer<COMObject> fontFace,
    double fontEmSize,
    DWRITE_SCRIPT_ANALYSIS scriptAnalysis,
    int textLength,
    int glyphCount,
    Pointer<Utf16> textString,
    Pointer<Uint16> clusterMap,
    Pointer<DWRITE_SHAPING_GLYPH_PROPERTIES> glyphProperties,
    Pointer<DWRITE_JUSTIFICATION_OPPORTUNITY> justificationOpportunities,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(16)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<COMObject> fontFace,
            Float fontEmSize,
            DWRITE_SCRIPT_ANALYSIS scriptAnalysis,
            Uint32 textLength,
            Uint32 glyphCount,
            Pointer<Utf16> textString,
            Pointer<Uint16> clusterMap,
            Pointer<DWRITE_SHAPING_GLYPH_PROPERTIES> glyphProperties,
            Pointer<DWRITE_JUSTIFICATION_OPPORTUNITY>
                justificationOpportunities,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<COMObject> fontFace,
            double fontEmSize,
            DWRITE_SCRIPT_ANALYSIS scriptAnalysis,
            int textLength,
            int glyphCount,
            Pointer<Utf16> textString,
            Pointer<Uint16> clusterMap,
            Pointer<DWRITE_SHAPING_GLYPH_PROPERTIES> glyphProperties,
            Pointer<DWRITE_JUSTIFICATION_OPPORTUNITY>
                justificationOpportunities,
          )>()(
        ptr.ref.lpVtbl,
        fontFace,
        fontEmSize,
        scriptAnalysis,
        textLength,
        glyphCount,
        textString,
        clusterMap,
        glyphProperties,
        justificationOpportunities,
      );

  int JustifyGlyphAdvances(
    double lineWidth,
    int glyphCount,
    Pointer<DWRITE_JUSTIFICATION_OPPORTUNITY> justificationOpportunities,
    Pointer<Float> glyphAdvances,
    Pointer<DWRITE_GLYPH_OFFSET> glyphOffsets,
    Pointer<Float> justifiedGlyphAdvances,
    Pointer<DWRITE_GLYPH_OFFSET> justifiedGlyphOffsets,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(17)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Float lineWidth,
            Uint32 glyphCount,
            Pointer<DWRITE_JUSTIFICATION_OPPORTUNITY>
                justificationOpportunities,
            Pointer<Float> glyphAdvances,
            Pointer<DWRITE_GLYPH_OFFSET> glyphOffsets,
            Pointer<Float> justifiedGlyphAdvances,
            Pointer<DWRITE_GLYPH_OFFSET> justifiedGlyphOffsets,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            double lineWidth,
            int glyphCount,
            Pointer<DWRITE_JUSTIFICATION_OPPORTUNITY>
                justificationOpportunities,
            Pointer<Float> glyphAdvances,
            Pointer<DWRITE_GLYPH_OFFSET> glyphOffsets,
            Pointer<Float> justifiedGlyphAdvances,
            Pointer<DWRITE_GLYPH_OFFSET> justifiedGlyphOffsets,
          )>()(
        ptr.ref.lpVtbl,
        lineWidth,
        glyphCount,
        justificationOpportunities,
        glyphAdvances,
        glyphOffsets,
        justifiedGlyphAdvances,
        justifiedGlyphOffsets,
      );

  int GetJustifiedGlyphs(
    Pointer<COMObject> fontFace,
    double fontEmSize,
    DWRITE_SCRIPT_ANALYSIS scriptAnalysis,
    int textLength,
    int glyphCount,
    int maxGlyphCount,
    Pointer<Uint16> clusterMap,
    Pointer<Uint16> glyphIndices,
    Pointer<Float> glyphAdvances,
    Pointer<Float> justifiedGlyphAdvances,
    Pointer<DWRITE_GLYPH_OFFSET> justifiedGlyphOffsets,
    Pointer<DWRITE_SHAPING_GLYPH_PROPERTIES> glyphProperties,
    Pointer<Uint32> actualGlyphCount,
    Pointer<Uint16> modifiedClusterMap,
    Pointer<Uint16> modifiedGlyphIndices,
    Pointer<Float> modifiedGlyphAdvances,
    Pointer<DWRITE_GLYPH_OFFSET> modifiedGlyphOffsets,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(18)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<COMObject> fontFace,
            Float fontEmSize,
            DWRITE_SCRIPT_ANALYSIS scriptAnalysis,
            Uint32 textLength,
            Uint32 glyphCount,
            Uint32 maxGlyphCount,
            Pointer<Uint16> clusterMap,
            Pointer<Uint16> glyphIndices,
            Pointer<Float> glyphAdvances,
            Pointer<Float> justifiedGlyphAdvances,
            Pointer<DWRITE_GLYPH_OFFSET> justifiedGlyphOffsets,
            Pointer<DWRITE_SHAPING_GLYPH_PROPERTIES> glyphProperties,
            Pointer<Uint32> actualGlyphCount,
            Pointer<Uint16> modifiedClusterMap,
            Pointer<Uint16> modifiedGlyphIndices,
            Pointer<Float> modifiedGlyphAdvances,
            Pointer<DWRITE_GLYPH_OFFSET> modifiedGlyphOffsets,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<COMObject> fontFace,
            double fontEmSize,
            DWRITE_SCRIPT_ANALYSIS scriptAnalysis,
            int textLength,
            int glyphCount,
            int maxGlyphCount,
            Pointer<Uint16> clusterMap,
            Pointer<Uint16> glyphIndices,
            Pointer<Float> glyphAdvances,
            Pointer<Float> justifiedGlyphAdvances,
            Pointer<DWRITE_GLYPH_OFFSET> justifiedGlyphOffsets,
            Pointer<DWRITE_SHAPING_GLYPH_PROPERTIES> glyphProperties,
            Pointer<Uint32> actualGlyphCount,
            Pointer<Uint16> modifiedClusterMap,
            Pointer<Uint16> modifiedGlyphIndices,
            Pointer<Float> modifiedGlyphAdvances,
            Pointer<DWRITE_GLYPH_OFFSET> modifiedGlyphOffsets,
          )>()(
        ptr.ref.lpVtbl,
        fontFace,
        fontEmSize,
        scriptAnalysis,
        textLength,
        glyphCount,
        maxGlyphCount,
        clusterMap,
        glyphIndices,
        glyphAdvances,
        justifiedGlyphAdvances,
        justifiedGlyphOffsets,
        glyphProperties,
        actualGlyphCount,
        modifiedClusterMap,
        modifiedGlyphIndices,
        modifiedGlyphAdvances,
        modifiedGlyphOffsets,
      );
}
