// IDWriteFactory.dart

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
import '../../graphics/directwrite/IDWriteFontCollection.dart';
import '../../foundation/structs.g.dart';
import '../../graphics/directwrite/IDWriteFontCollectionLoader.dart';
import '../../graphics/directwrite/IDWriteFontFile.dart';
import '../../graphics/directwrite/IDWriteFontFileLoader.dart';
import '../../graphics/directwrite/structs.g.dart';
import '../../graphics/directwrite/IDWriteFontFace.dart';
import '../../graphics/directwrite/IDWriteRenderingParams.dart';
import '../../graphics/gdi/structs.g.dart';
import '../../graphics/directwrite/IDWriteTextFormat.dart';
import '../../graphics/directwrite/IDWriteTypography.dart';
import '../../graphics/directwrite/IDWriteGdiInterop.dart';
import '../../graphics/directwrite/IDWriteTextLayout.dart';
import '../../graphics/directwrite/IDWriteInlineObject.dart';
import '../../graphics/directwrite/IDWriteTextAnalyzer.dart';
import '../../graphics/directwrite/IDWriteNumberSubstitution.dart';
import '../../graphics/directwrite/IDWriteGlyphRunAnalysis.dart';

/// @nodoc
const IID_IDWriteFactory = '{B859EE5A-D838-4B5B-A2E8-1ADC7D93DB48}';

/// {@category Interface}
/// {@category com}
class IDWriteFactory extends IUnknown {
  // vtable begins at 3, is 21 entries long.
  IDWriteFactory(Pointer<COMObject> ptr) : super(ptr);

  int GetSystemFontCollection(
    Pointer<Pointer<COMObject>> fontCollection,
    int checkForUpdates,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(3)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Pointer<COMObject>> fontCollection,
            Int32 checkForUpdates,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Pointer<COMObject>> fontCollection,
            int checkForUpdates,
          )>()(
        ptr.ref.lpVtbl,
        fontCollection,
        checkForUpdates,
      );

  int CreateCustomFontCollection(
    Pointer<COMObject> collectionLoader,
    Pointer collectionKey,
    int collectionKeySize,
    Pointer<Pointer<COMObject>> fontCollection,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(4)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<COMObject> collectionLoader,
            Pointer collectionKey,
            Uint32 collectionKeySize,
            Pointer<Pointer<COMObject>> fontCollection,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<COMObject> collectionLoader,
            Pointer collectionKey,
            int collectionKeySize,
            Pointer<Pointer<COMObject>> fontCollection,
          )>()(
        ptr.ref.lpVtbl,
        collectionLoader,
        collectionKey,
        collectionKeySize,
        fontCollection,
      );

  int RegisterFontCollectionLoader(
    Pointer<COMObject> fontCollectionLoader,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(5)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<COMObject> fontCollectionLoader,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<COMObject> fontCollectionLoader,
          )>()(
        ptr.ref.lpVtbl,
        fontCollectionLoader,
      );

  int UnregisterFontCollectionLoader(
    Pointer<COMObject> fontCollectionLoader,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(6)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<COMObject> fontCollectionLoader,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<COMObject> fontCollectionLoader,
          )>()(
        ptr.ref.lpVtbl,
        fontCollectionLoader,
      );

  int CreateFontFileReference(
    Pointer<Utf16> filePath,
    Pointer<FILETIME> lastWriteTime,
    Pointer<Pointer<COMObject>> fontFile,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(7)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Utf16> filePath,
            Pointer<FILETIME> lastWriteTime,
            Pointer<Pointer<COMObject>> fontFile,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Utf16> filePath,
            Pointer<FILETIME> lastWriteTime,
            Pointer<Pointer<COMObject>> fontFile,
          )>()(
        ptr.ref.lpVtbl,
        filePath,
        lastWriteTime,
        fontFile,
      );

  int CreateCustomFontFileReference(
    Pointer fontFileReferenceKey,
    int fontFileReferenceKeySize,
    Pointer<COMObject> fontFileLoader,
    Pointer<Pointer<COMObject>> fontFile,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(8)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer fontFileReferenceKey,
            Uint32 fontFileReferenceKeySize,
            Pointer<COMObject> fontFileLoader,
            Pointer<Pointer<COMObject>> fontFile,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer fontFileReferenceKey,
            int fontFileReferenceKeySize,
            Pointer<COMObject> fontFileLoader,
            Pointer<Pointer<COMObject>> fontFile,
          )>()(
        ptr.ref.lpVtbl,
        fontFileReferenceKey,
        fontFileReferenceKeySize,
        fontFileLoader,
        fontFile,
      );

  int CreateFontFace(
    int fontFaceType,
    int numberOfFiles,
    Pointer<Pointer<COMObject>> fontFiles,
    int faceIndex,
    int fontFaceSimulationFlags,
    Pointer<Pointer<COMObject>> fontFace,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(9)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Int32 fontFaceType,
            Uint32 numberOfFiles,
            Pointer<Pointer<COMObject>> fontFiles,
            Uint32 faceIndex,
            Uint32 fontFaceSimulationFlags,
            Pointer<Pointer<COMObject>> fontFace,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int fontFaceType,
            int numberOfFiles,
            Pointer<Pointer<COMObject>> fontFiles,
            int faceIndex,
            int fontFaceSimulationFlags,
            Pointer<Pointer<COMObject>> fontFace,
          )>()(
        ptr.ref.lpVtbl,
        fontFaceType,
        numberOfFiles,
        fontFiles,
        faceIndex,
        fontFaceSimulationFlags,
        fontFace,
      );

  int CreateRenderingParams(
    Pointer<Pointer<COMObject>> renderingParams,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(10)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Pointer<COMObject>> renderingParams,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Pointer<COMObject>> renderingParams,
          )>()(
        ptr.ref.lpVtbl,
        renderingParams,
      );

  int CreateMonitorRenderingParams(
    int monitor,
    Pointer<Pointer<COMObject>> renderingParams,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(11)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            IntPtr monitor,
            Pointer<Pointer<COMObject>> renderingParams,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int monitor,
            Pointer<Pointer<COMObject>> renderingParams,
          )>()(
        ptr.ref.lpVtbl,
        monitor,
        renderingParams,
      );

  int CreateCustomRenderingParams(
    double gamma,
    double enhancedContrast,
    double clearTypeLevel,
    int pixelGeometry,
    int renderingMode,
    Pointer<Pointer<COMObject>> renderingParams,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(12)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Float gamma,
            Float enhancedContrast,
            Float clearTypeLevel,
            Int32 pixelGeometry,
            Int32 renderingMode,
            Pointer<Pointer<COMObject>> renderingParams,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            double gamma,
            double enhancedContrast,
            double clearTypeLevel,
            int pixelGeometry,
            int renderingMode,
            Pointer<Pointer<COMObject>> renderingParams,
          )>()(
        ptr.ref.lpVtbl,
        gamma,
        enhancedContrast,
        clearTypeLevel,
        pixelGeometry,
        renderingMode,
        renderingParams,
      );

  int RegisterFontFileLoader(
    Pointer<COMObject> fontFileLoader,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(13)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<COMObject> fontFileLoader,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<COMObject> fontFileLoader,
          )>()(
        ptr.ref.lpVtbl,
        fontFileLoader,
      );

  int UnregisterFontFileLoader(
    Pointer<COMObject> fontFileLoader,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(14)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<COMObject> fontFileLoader,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<COMObject> fontFileLoader,
          )>()(
        ptr.ref.lpVtbl,
        fontFileLoader,
      );

  int CreateTextFormat(
    Pointer<Utf16> fontFamilyName,
    Pointer<COMObject> fontCollection,
    int fontWeight,
    int fontStyle,
    int fontStretch,
    double fontSize,
    Pointer<Utf16> localeName,
    Pointer<Pointer<COMObject>> textFormat,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(15)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Utf16> fontFamilyName,
            Pointer<COMObject> fontCollection,
            Int32 fontWeight,
            Int32 fontStyle,
            Int32 fontStretch,
            Float fontSize,
            Pointer<Utf16> localeName,
            Pointer<Pointer<COMObject>> textFormat,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Utf16> fontFamilyName,
            Pointer<COMObject> fontCollection,
            int fontWeight,
            int fontStyle,
            int fontStretch,
            double fontSize,
            Pointer<Utf16> localeName,
            Pointer<Pointer<COMObject>> textFormat,
          )>()(
        ptr.ref.lpVtbl,
        fontFamilyName,
        fontCollection,
        fontWeight,
        fontStyle,
        fontStretch,
        fontSize,
        localeName,
        textFormat,
      );

  int CreateTypography(
    Pointer<Pointer<COMObject>> typography,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(16)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Pointer<COMObject>> typography,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Pointer<COMObject>> typography,
          )>()(
        ptr.ref.lpVtbl,
        typography,
      );

  int GetGdiInterop(
    Pointer<Pointer<COMObject>> gdiInterop,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(17)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Pointer<COMObject>> gdiInterop,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Pointer<COMObject>> gdiInterop,
          )>()(
        ptr.ref.lpVtbl,
        gdiInterop,
      );

  int CreateTextLayout(
    Pointer<Utf16> string,
    int stringLength,
    Pointer<COMObject> textFormat,
    double maxWidth,
    double maxHeight,
    Pointer<Pointer<COMObject>> textLayout,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(18)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Utf16> string,
            Uint32 stringLength,
            Pointer<COMObject> textFormat,
            Float maxWidth,
            Float maxHeight,
            Pointer<Pointer<COMObject>> textLayout,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Utf16> string,
            int stringLength,
            Pointer<COMObject> textFormat,
            double maxWidth,
            double maxHeight,
            Pointer<Pointer<COMObject>> textLayout,
          )>()(
        ptr.ref.lpVtbl,
        string,
        stringLength,
        textFormat,
        maxWidth,
        maxHeight,
        textLayout,
      );

  int CreateGdiCompatibleTextLayout(
    Pointer<Utf16> string,
    int stringLength,
    Pointer<COMObject> textFormat,
    double layoutWidth,
    double layoutHeight,
    double pixelsPerDip,
    Pointer<DWRITE_MATRIX> transform,
    int useGdiNatural,
    Pointer<Pointer<COMObject>> textLayout,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(19)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Utf16> string,
            Uint32 stringLength,
            Pointer<COMObject> textFormat,
            Float layoutWidth,
            Float layoutHeight,
            Float pixelsPerDip,
            Pointer<DWRITE_MATRIX> transform,
            Int32 useGdiNatural,
            Pointer<Pointer<COMObject>> textLayout,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Utf16> string,
            int stringLength,
            Pointer<COMObject> textFormat,
            double layoutWidth,
            double layoutHeight,
            double pixelsPerDip,
            Pointer<DWRITE_MATRIX> transform,
            int useGdiNatural,
            Pointer<Pointer<COMObject>> textLayout,
          )>()(
        ptr.ref.lpVtbl,
        string,
        stringLength,
        textFormat,
        layoutWidth,
        layoutHeight,
        pixelsPerDip,
        transform,
        useGdiNatural,
        textLayout,
      );

  int CreateEllipsisTrimmingSign(
    Pointer<COMObject> textFormat,
    Pointer<Pointer<COMObject>> trimmingSign,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(20)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<COMObject> textFormat,
            Pointer<Pointer<COMObject>> trimmingSign,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<COMObject> textFormat,
            Pointer<Pointer<COMObject>> trimmingSign,
          )>()(
        ptr.ref.lpVtbl,
        textFormat,
        trimmingSign,
      );

  int CreateTextAnalyzer(
    Pointer<Pointer<COMObject>> textAnalyzer,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(21)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Pointer<COMObject>> textAnalyzer,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Pointer<COMObject>> textAnalyzer,
          )>()(
        ptr.ref.lpVtbl,
        textAnalyzer,
      );

  int CreateNumberSubstitution(
    int substitutionMethod,
    Pointer<Utf16> localeName,
    int ignoreUserOverride,
    Pointer<Pointer<COMObject>> numberSubstitution,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(22)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Int32 substitutionMethod,
            Pointer<Utf16> localeName,
            Int32 ignoreUserOverride,
            Pointer<Pointer<COMObject>> numberSubstitution,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int substitutionMethod,
            Pointer<Utf16> localeName,
            int ignoreUserOverride,
            Pointer<Pointer<COMObject>> numberSubstitution,
          )>()(
        ptr.ref.lpVtbl,
        substitutionMethod,
        localeName,
        ignoreUserOverride,
        numberSubstitution,
      );

  int CreateGlyphRunAnalysis(
    Pointer<DWRITE_GLYPH_RUN> glyphRun,
    double pixelsPerDip,
    Pointer<DWRITE_MATRIX> transform,
    int renderingMode,
    int measuringMode,
    double baselineOriginX,
    double baselineOriginY,
    Pointer<Pointer<COMObject>> glyphRunAnalysis,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(23)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<DWRITE_GLYPH_RUN> glyphRun,
            Float pixelsPerDip,
            Pointer<DWRITE_MATRIX> transform,
            Int32 renderingMode,
            Int32 measuringMode,
            Float baselineOriginX,
            Float baselineOriginY,
            Pointer<Pointer<COMObject>> glyphRunAnalysis,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<DWRITE_GLYPH_RUN> glyphRun,
            double pixelsPerDip,
            Pointer<DWRITE_MATRIX> transform,
            int renderingMode,
            int measuringMode,
            double baselineOriginX,
            double baselineOriginY,
            Pointer<Pointer<COMObject>> glyphRunAnalysis,
          )>()(
        ptr.ref.lpVtbl,
        glyphRun,
        pixelsPerDip,
        transform,
        renderingMode,
        measuringMode,
        baselineOriginX,
        baselineOriginY,
        glyphRunAnalysis,
      );
}
