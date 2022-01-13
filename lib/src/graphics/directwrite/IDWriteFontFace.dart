// IDWriteFontFace.dart

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
import '../../graphics/directwrite/structs.g.dart';
import '../../graphics/directwrite/IDWriteFontFile.dart';
import '../../foundation/structs.g.dart';
import '../../graphics/direct2d/common/ID2D1SimplifiedGeometrySink.dart';
import '../../graphics/directwrite/IDWriteRenderingParams.dart';

/// @nodoc
const IID_IDWriteFontFace = '{5F49804D-7024-4D43-BFA9-D25984F53849}';

/// {@category Interface}
/// {@category com}
class IDWriteFontFace extends IUnknown {
  // vtable begins at 3, is 15 entries long.
  IDWriteFontFace(Pointer<COMObject> ptr) : super(ptr);

  int GetType() => ptr.ref.lpVtbl.value
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

  int GetFiles(
    Pointer<Uint32> numberOfFiles,
    Pointer<Pointer<COMObject>> fontFiles,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(4)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Uint32> numberOfFiles,
            Pointer<Pointer<COMObject>> fontFiles,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Uint32> numberOfFiles,
            Pointer<Pointer<COMObject>> fontFiles,
          )>()(
        ptr.ref.lpVtbl,
        numberOfFiles,
        fontFiles,
      );

  int GetIndex() => ptr.ref.lpVtbl.value
          .elementAt(5)
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

  int GetSimulations() => ptr.ref.lpVtbl.value
          .elementAt(6)
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

  int IsSymbolFont() => ptr.ref.lpVtbl.value
          .elementAt(7)
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

  void GetMetrics(
    Pointer<DWRITE_FONT_METRICS> fontFaceMetrics,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(8)
          .cast<
              Pointer<
                  NativeFunction<
                      Void Function(
            Pointer,
            Pointer<DWRITE_FONT_METRICS> fontFaceMetrics,
          )>>>()
          .value
          .asFunction<
              void Function(
            Pointer,
            Pointer<DWRITE_FONT_METRICS> fontFaceMetrics,
          )>()(
        ptr.ref.lpVtbl,
        fontFaceMetrics,
      );

  int GetGlyphCount() => ptr.ref.lpVtbl.value
          .elementAt(9)
          .cast<
              Pointer<
                  NativeFunction<
                      Uint16 Function(
            Pointer,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
          )>()(
        ptr.ref.lpVtbl,
      );

  int GetDesignGlyphMetrics(
    Pointer<Uint16> glyphIndices,
    int glyphCount,
    Pointer<DWRITE_GLYPH_METRICS> glyphMetrics,
    int isSideways,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(10)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Uint16> glyphIndices,
            Uint32 glyphCount,
            Pointer<DWRITE_GLYPH_METRICS> glyphMetrics,
            Int32 isSideways,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Uint16> glyphIndices,
            int glyphCount,
            Pointer<DWRITE_GLYPH_METRICS> glyphMetrics,
            int isSideways,
          )>()(
        ptr.ref.lpVtbl,
        glyphIndices,
        glyphCount,
        glyphMetrics,
        isSideways,
      );

  int GetGlyphIndices(
    Pointer<Uint32> codePoints,
    int codePointCount,
    Pointer<Uint16> glyphIndices,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(11)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Uint32> codePoints,
            Uint32 codePointCount,
            Pointer<Uint16> glyphIndices,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Uint32> codePoints,
            int codePointCount,
            Pointer<Uint16> glyphIndices,
          )>()(
        ptr.ref.lpVtbl,
        codePoints,
        codePointCount,
        glyphIndices,
      );

  int TryGetFontTable(
    int openTypeTableTag,
    Pointer<Pointer> tableData,
    Pointer<Uint32> tableSize,
    Pointer<Pointer> tableContext,
    Pointer<Int32> exists,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(12)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Uint32 openTypeTableTag,
            Pointer<Pointer> tableData,
            Pointer<Uint32> tableSize,
            Pointer<Pointer> tableContext,
            Pointer<Int32> exists,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int openTypeTableTag,
            Pointer<Pointer> tableData,
            Pointer<Uint32> tableSize,
            Pointer<Pointer> tableContext,
            Pointer<Int32> exists,
          )>()(
        ptr.ref.lpVtbl,
        openTypeTableTag,
        tableData,
        tableSize,
        tableContext,
        exists,
      );

  void ReleaseFontTable(
    Pointer tableContext,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(13)
          .cast<
              Pointer<
                  NativeFunction<
                      Void Function(
            Pointer,
            Pointer tableContext,
          )>>>()
          .value
          .asFunction<
              void Function(
            Pointer,
            Pointer tableContext,
          )>()(
        ptr.ref.lpVtbl,
        tableContext,
      );

  int GetGlyphRunOutline(
    double emSize,
    Pointer<Uint16> glyphIndices,
    Pointer<Float> glyphAdvances,
    Pointer<DWRITE_GLYPH_OFFSET> glyphOffsets,
    int glyphCount,
    int isSideways,
    int isRightToLeft,
    Pointer<COMObject> geometrySink,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(14)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Float emSize,
            Pointer<Uint16> glyphIndices,
            Pointer<Float> glyphAdvances,
            Pointer<DWRITE_GLYPH_OFFSET> glyphOffsets,
            Uint32 glyphCount,
            Int32 isSideways,
            Int32 isRightToLeft,
            Pointer<COMObject> geometrySink,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            double emSize,
            Pointer<Uint16> glyphIndices,
            Pointer<Float> glyphAdvances,
            Pointer<DWRITE_GLYPH_OFFSET> glyphOffsets,
            int glyphCount,
            int isSideways,
            int isRightToLeft,
            Pointer<COMObject> geometrySink,
          )>()(
        ptr.ref.lpVtbl,
        emSize,
        glyphIndices,
        glyphAdvances,
        glyphOffsets,
        glyphCount,
        isSideways,
        isRightToLeft,
        geometrySink,
      );

  int GetRecommendedRenderingMode(
    double emSize,
    double pixelsPerDip,
    int measuringMode,
    Pointer<COMObject> renderingParams,
    Pointer<Int32> renderingMode,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(15)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Float emSize,
            Float pixelsPerDip,
            Int32 measuringMode,
            Pointer<COMObject> renderingParams,
            Pointer<Int32> renderingMode,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            double emSize,
            double pixelsPerDip,
            int measuringMode,
            Pointer<COMObject> renderingParams,
            Pointer<Int32> renderingMode,
          )>()(
        ptr.ref.lpVtbl,
        emSize,
        pixelsPerDip,
        measuringMode,
        renderingParams,
        renderingMode,
      );

  int GetGdiCompatibleMetrics(
    double emSize,
    double pixelsPerDip,
    Pointer<DWRITE_MATRIX> transform,
    Pointer<DWRITE_FONT_METRICS> fontFaceMetrics,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(16)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Float emSize,
            Float pixelsPerDip,
            Pointer<DWRITE_MATRIX> transform,
            Pointer<DWRITE_FONT_METRICS> fontFaceMetrics,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            double emSize,
            double pixelsPerDip,
            Pointer<DWRITE_MATRIX> transform,
            Pointer<DWRITE_FONT_METRICS> fontFaceMetrics,
          )>()(
        ptr.ref.lpVtbl,
        emSize,
        pixelsPerDip,
        transform,
        fontFaceMetrics,
      );

  int GetGdiCompatibleGlyphMetrics(
    double emSize,
    double pixelsPerDip,
    Pointer<DWRITE_MATRIX> transform,
    int useGdiNatural,
    Pointer<Uint16> glyphIndices,
    int glyphCount,
    Pointer<DWRITE_GLYPH_METRICS> glyphMetrics,
    int isSideways,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(17)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Float emSize,
            Float pixelsPerDip,
            Pointer<DWRITE_MATRIX> transform,
            Int32 useGdiNatural,
            Pointer<Uint16> glyphIndices,
            Uint32 glyphCount,
            Pointer<DWRITE_GLYPH_METRICS> glyphMetrics,
            Int32 isSideways,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            double emSize,
            double pixelsPerDip,
            Pointer<DWRITE_MATRIX> transform,
            int useGdiNatural,
            Pointer<Uint16> glyphIndices,
            int glyphCount,
            Pointer<DWRITE_GLYPH_METRICS> glyphMetrics,
            int isSideways,
          )>()(
        ptr.ref.lpVtbl,
        emSize,
        pixelsPerDip,
        transform,
        useGdiNatural,
        glyphIndices,
        glyphCount,
        glyphMetrics,
        isSideways,
      );
}
