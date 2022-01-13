// IDWriteFactory3.dart

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

import '../../graphics/directwrite/IDWriteFactory2.dart';
import '../../graphics/directwrite/structs.g.dart';
import '../../graphics/directwrite/IDWriteGlyphRunAnalysis.dart';
import '../../foundation/structs.g.dart';
import '../../graphics/directwrite/IDWriteRenderingParams3.dart';
import '../../graphics/directwrite/IDWriteFontFile.dart';
import '../../graphics/directwrite/IDWriteFontFaceReference.dart';
import '../../graphics/directwrite/IDWriteFontSet.dart';
import '../../graphics/directwrite/IDWriteFontSetBuilder.dart';
import '../../graphics/directwrite/IDWriteFontCollection1.dart';
import '../../graphics/directwrite/IDWriteFontDownloadQueue.dart';

/// @nodoc
const IID_IDWriteFactory3 = '{9A1B41C3-D3BB-466A-87FC-FE67556A3B65}';

/// {@category Interface}
/// {@category com}
class IDWriteFactory3 extends IDWriteFactory2 {
  // vtable begins at 31, is 9 entries long.
  IDWriteFactory3(Pointer<COMObject> ptr) : super(ptr);

  int CreateGlyphRunAnalysis_2(
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
          .elementAt(31)
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

  int CreateCustomRenderingParams_3(
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
          .elementAt(32)
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

  int CreateFontFaceReference_1(
    Pointer<COMObject> fontFile,
    int faceIndex,
    int fontSimulations,
    Pointer<Pointer<COMObject>> fontFaceReference,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(33)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<COMObject> fontFile,
            Uint32 faceIndex,
            Uint32 fontSimulations,
            Pointer<Pointer<COMObject>> fontFaceReference,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<COMObject> fontFile,
            int faceIndex,
            int fontSimulations,
            Pointer<Pointer<COMObject>> fontFaceReference,
          )>()(
        ptr.ref.lpVtbl,
        fontFile,
        faceIndex,
        fontSimulations,
        fontFaceReference,
      );

  int CreateFontFaceReference(
    Pointer<Utf16> filePath,
    Pointer<FILETIME> lastWriteTime,
    int faceIndex,
    int fontSimulations,
    Pointer<Pointer<COMObject>> fontFaceReference,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(34)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Utf16> filePath,
            Pointer<FILETIME> lastWriteTime,
            Uint32 faceIndex,
            Uint32 fontSimulations,
            Pointer<Pointer<COMObject>> fontFaceReference,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Utf16> filePath,
            Pointer<FILETIME> lastWriteTime,
            int faceIndex,
            int fontSimulations,
            Pointer<Pointer<COMObject>> fontFaceReference,
          )>()(
        ptr.ref.lpVtbl,
        filePath,
        lastWriteTime,
        faceIndex,
        fontSimulations,
        fontFaceReference,
      );

  int GetSystemFontSet(
    Pointer<Pointer<COMObject>> fontSet,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(35)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Pointer<COMObject>> fontSet,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Pointer<COMObject>> fontSet,
          )>()(
        ptr.ref.lpVtbl,
        fontSet,
      );

  int CreateFontSetBuilder(
    Pointer<Pointer<COMObject>> fontSetBuilder,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(36)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Pointer<COMObject>> fontSetBuilder,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Pointer<COMObject>> fontSetBuilder,
          )>()(
        ptr.ref.lpVtbl,
        fontSetBuilder,
      );

  int CreateFontCollectionFromFontSet(
    Pointer<COMObject> fontSet,
    Pointer<Pointer<COMObject>> fontCollection,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(37)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<COMObject> fontSet,
            Pointer<Pointer<COMObject>> fontCollection,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<COMObject> fontSet,
            Pointer<Pointer<COMObject>> fontCollection,
          )>()(
        ptr.ref.lpVtbl,
        fontSet,
        fontCollection,
      );

  int GetSystemFontCollection_1(
    int includeDownloadableFonts,
    Pointer<Pointer<COMObject>> fontCollection,
    int checkForUpdates,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(38)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Int32 includeDownloadableFonts,
            Pointer<Pointer<COMObject>> fontCollection,
            Int32 checkForUpdates,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int includeDownloadableFonts,
            Pointer<Pointer<COMObject>> fontCollection,
            int checkForUpdates,
          )>()(
        ptr.ref.lpVtbl,
        includeDownloadableFonts,
        fontCollection,
        checkForUpdates,
      );

  int GetFontDownloadQueue(
    Pointer<Pointer<COMObject>> fontDownloadQueue,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(39)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Pointer<COMObject>> fontDownloadQueue,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Pointer<COMObject>> fontDownloadQueue,
          )>()(
        ptr.ref.lpVtbl,
        fontDownloadQueue,
      );
}
