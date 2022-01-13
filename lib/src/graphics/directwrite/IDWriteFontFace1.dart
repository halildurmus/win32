// IDWriteFontFace1.dart

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

import '../../graphics/directwrite/IDWriteFontFace.dart';
import '../../graphics/directwrite/structs.g.dart';
import '../../foundation/structs.g.dart';

/// @nodoc
const IID_IDWriteFontFace1 = '{A71EFDB4-9FDB-4838-AD90-CFC3BE8C3DAF}';

/// {@category Interface}
/// {@category com}
class IDWriteFontFace1 extends IDWriteFontFace {
  // vtable begins at 18, is 12 entries long.
  IDWriteFontFace1(Pointer<COMObject> ptr) : super(ptr);

  void GetMetrics_1(
    Pointer<DWRITE_FONT_METRICS1> fontMetrics,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(18)
          .cast<
              Pointer<
                  NativeFunction<
                      Void Function(
            Pointer,
            Pointer<DWRITE_FONT_METRICS1> fontMetrics,
          )>>>()
          .value
          .asFunction<
              void Function(
            Pointer,
            Pointer<DWRITE_FONT_METRICS1> fontMetrics,
          )>()(
        ptr.ref.lpVtbl,
        fontMetrics,
      );

  int GetGdiCompatibleMetrics_1(
    double emSize,
    double pixelsPerDip,
    Pointer<DWRITE_MATRIX> transform,
    Pointer<DWRITE_FONT_METRICS1> fontMetrics,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(19)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Float emSize,
            Float pixelsPerDip,
            Pointer<DWRITE_MATRIX> transform,
            Pointer<DWRITE_FONT_METRICS1> fontMetrics,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            double emSize,
            double pixelsPerDip,
            Pointer<DWRITE_MATRIX> transform,
            Pointer<DWRITE_FONT_METRICS1> fontMetrics,
          )>()(
        ptr.ref.lpVtbl,
        emSize,
        pixelsPerDip,
        transform,
        fontMetrics,
      );

  void GetCaretMetrics(
    Pointer<DWRITE_CARET_METRICS> caretMetrics,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(20)
          .cast<
              Pointer<
                  NativeFunction<
                      Void Function(
            Pointer,
            Pointer<DWRITE_CARET_METRICS> caretMetrics,
          )>>>()
          .value
          .asFunction<
              void Function(
            Pointer,
            Pointer<DWRITE_CARET_METRICS> caretMetrics,
          )>()(
        ptr.ref.lpVtbl,
        caretMetrics,
      );

  int GetUnicodeRanges(
    int maxRangeCount,
    Pointer<DWRITE_UNICODE_RANGE> unicodeRanges,
    Pointer<Uint32> actualRangeCount,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(21)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Uint32 maxRangeCount,
            Pointer<DWRITE_UNICODE_RANGE> unicodeRanges,
            Pointer<Uint32> actualRangeCount,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int maxRangeCount,
            Pointer<DWRITE_UNICODE_RANGE> unicodeRanges,
            Pointer<Uint32> actualRangeCount,
          )>()(
        ptr.ref.lpVtbl,
        maxRangeCount,
        unicodeRanges,
        actualRangeCount,
      );

  int IsMonospacedFont() => ptr.ref.lpVtbl.value
          .elementAt(22)
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

  int GetDesignGlyphAdvances(
    int glyphCount,
    Pointer<Uint16> glyphIndices,
    Pointer<Int32> glyphAdvances,
    int isSideways,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(23)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Uint32 glyphCount,
            Pointer<Uint16> glyphIndices,
            Pointer<Int32> glyphAdvances,
            Int32 isSideways,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int glyphCount,
            Pointer<Uint16> glyphIndices,
            Pointer<Int32> glyphAdvances,
            int isSideways,
          )>()(
        ptr.ref.lpVtbl,
        glyphCount,
        glyphIndices,
        glyphAdvances,
        isSideways,
      );

  int GetGdiCompatibleGlyphAdvances(
    double emSize,
    double pixelsPerDip,
    Pointer<DWRITE_MATRIX> transform,
    int useGdiNatural,
    int isSideways,
    int glyphCount,
    Pointer<Uint16> glyphIndices,
    Pointer<Int32> glyphAdvances,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(24)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Float emSize,
            Float pixelsPerDip,
            Pointer<DWRITE_MATRIX> transform,
            Int32 useGdiNatural,
            Int32 isSideways,
            Uint32 glyphCount,
            Pointer<Uint16> glyphIndices,
            Pointer<Int32> glyphAdvances,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            double emSize,
            double pixelsPerDip,
            Pointer<DWRITE_MATRIX> transform,
            int useGdiNatural,
            int isSideways,
            int glyphCount,
            Pointer<Uint16> glyphIndices,
            Pointer<Int32> glyphAdvances,
          )>()(
        ptr.ref.lpVtbl,
        emSize,
        pixelsPerDip,
        transform,
        useGdiNatural,
        isSideways,
        glyphCount,
        glyphIndices,
        glyphAdvances,
      );

  int GetKerningPairAdjustments(
    int glyphCount,
    Pointer<Uint16> glyphIndices,
    Pointer<Int32> glyphAdvanceAdjustments,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(25)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Uint32 glyphCount,
            Pointer<Uint16> glyphIndices,
            Pointer<Int32> glyphAdvanceAdjustments,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int glyphCount,
            Pointer<Uint16> glyphIndices,
            Pointer<Int32> glyphAdvanceAdjustments,
          )>()(
        ptr.ref.lpVtbl,
        glyphCount,
        glyphIndices,
        glyphAdvanceAdjustments,
      );

  int HasKerningPairs() => ptr.ref.lpVtbl.value
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

  int GetRecommendedRenderingMode_1(
    double fontEmSize,
    double dpiX,
    double dpiY,
    Pointer<DWRITE_MATRIX> transform,
    int isSideways,
    int outlineThreshold,
    int measuringMode,
    Pointer<Int32> renderingMode,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(27)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Float fontEmSize,
            Float dpiX,
            Float dpiY,
            Pointer<DWRITE_MATRIX> transform,
            Int32 isSideways,
            Int32 outlineThreshold,
            Int32 measuringMode,
            Pointer<Int32> renderingMode,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            double fontEmSize,
            double dpiX,
            double dpiY,
            Pointer<DWRITE_MATRIX> transform,
            int isSideways,
            int outlineThreshold,
            int measuringMode,
            Pointer<Int32> renderingMode,
          )>()(
        ptr.ref.lpVtbl,
        fontEmSize,
        dpiX,
        dpiY,
        transform,
        isSideways,
        outlineThreshold,
        measuringMode,
        renderingMode,
      );

  int GetVerticalGlyphVariants(
    int glyphCount,
    Pointer<Uint16> nominalGlyphIndices,
    Pointer<Uint16> verticalGlyphIndices,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(28)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Uint32 glyphCount,
            Pointer<Uint16> nominalGlyphIndices,
            Pointer<Uint16> verticalGlyphIndices,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int glyphCount,
            Pointer<Uint16> nominalGlyphIndices,
            Pointer<Uint16> verticalGlyphIndices,
          )>()(
        ptr.ref.lpVtbl,
        glyphCount,
        nominalGlyphIndices,
        verticalGlyphIndices,
      );

  int HasVerticalGlyphVariants() => ptr.ref.lpVtbl.value
          .elementAt(29)
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
