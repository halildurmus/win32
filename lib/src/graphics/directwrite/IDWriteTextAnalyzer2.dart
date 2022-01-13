// IDWriteTextAnalyzer2.dart

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

import '../../graphics/directwrite/IDWriteTextAnalyzer1.dart';
import '../../graphics/directwrite/structs.g.dart';
import '../../foundation/structs.g.dart';
import '../../graphics/directwrite/IDWriteFontFace.dart';

/// @nodoc
const IID_IDWriteTextAnalyzer2 = '{553A9FF3-5693-4DF7-B52B-74806F7F2EB9}';

/// {@category Interface}
/// {@category com}
class IDWriteTextAnalyzer2 extends IDWriteTextAnalyzer1 {
  // vtable begins at 19, is 3 entries long.
  IDWriteTextAnalyzer2(Pointer<COMObject> ptr) : super(ptr);

  int GetGlyphOrientationTransform_1(
    int glyphOrientationAngle,
    int isSideways,
    double originX,
    double originY,
    Pointer<DWRITE_MATRIX> transform,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(19)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Int32 glyphOrientationAngle,
            Int32 isSideways,
            Float originX,
            Float originY,
            Pointer<DWRITE_MATRIX> transform,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int glyphOrientationAngle,
            int isSideways,
            double originX,
            double originY,
            Pointer<DWRITE_MATRIX> transform,
          )>()(
        ptr.ref.lpVtbl,
        glyphOrientationAngle,
        isSideways,
        originX,
        originY,
        transform,
      );

  int GetTypographicFeatures(
    Pointer<COMObject> fontFace,
    DWRITE_SCRIPT_ANALYSIS scriptAnalysis,
    Pointer<Utf16> localeName,
    int maxTagCount,
    Pointer<Uint32> actualTagCount,
    Pointer<Uint32> tags,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(20)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<COMObject> fontFace,
            DWRITE_SCRIPT_ANALYSIS scriptAnalysis,
            Pointer<Utf16> localeName,
            Uint32 maxTagCount,
            Pointer<Uint32> actualTagCount,
            Pointer<Uint32> tags,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<COMObject> fontFace,
            DWRITE_SCRIPT_ANALYSIS scriptAnalysis,
            Pointer<Utf16> localeName,
            int maxTagCount,
            Pointer<Uint32> actualTagCount,
            Pointer<Uint32> tags,
          )>()(
        ptr.ref.lpVtbl,
        fontFace,
        scriptAnalysis,
        localeName,
        maxTagCount,
        actualTagCount,
        tags,
      );

  int CheckTypographicFeature(
    Pointer<COMObject> fontFace,
    DWRITE_SCRIPT_ANALYSIS scriptAnalysis,
    Pointer<Utf16> localeName,
    int featureTag,
    int glyphCount,
    Pointer<Uint16> glyphIndices,
    Pointer<Uint8> featureApplies,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(21)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<COMObject> fontFace,
            DWRITE_SCRIPT_ANALYSIS scriptAnalysis,
            Pointer<Utf16> localeName,
            Uint32 featureTag,
            Uint32 glyphCount,
            Pointer<Uint16> glyphIndices,
            Pointer<Uint8> featureApplies,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<COMObject> fontFace,
            DWRITE_SCRIPT_ANALYSIS scriptAnalysis,
            Pointer<Utf16> localeName,
            int featureTag,
            int glyphCount,
            Pointer<Uint16> glyphIndices,
            Pointer<Uint8> featureApplies,
          )>()(
        ptr.ref.lpVtbl,
        fontFace,
        scriptAnalysis,
        localeName,
        featureTag,
        glyphCount,
        glyphIndices,
        featureApplies,
      );
}
