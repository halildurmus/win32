// IDWriteFactory4.dart

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

import '../../graphics/directwrite/IDWriteFactory3.dart';
import '../../graphics/direct2d/common/structs.g.dart';
import '../../graphics/directwrite/structs.g.dart';
import '../../graphics/directwrite/IDWriteColorGlyphRunEnumerator1.dart';
import '../../foundation/structs.g.dart';

/// @nodoc
const IID_IDWriteFactory4 = '{4B0B5BD3-0797-4549-8AC5-FE915CC53856}';

/// {@category Interface}
/// {@category com}
class IDWriteFactory4 extends IDWriteFactory3 {
  // vtable begins at 40, is 3 entries long.
  IDWriteFactory4(Pointer<COMObject> ptr) : super(ptr);

  int TranslateColorGlyphRun_1(
    D2D_POINT_2F baselineOrigin,
    Pointer<DWRITE_GLYPH_RUN> glyphRun,
    Pointer<DWRITE_GLYPH_RUN_DESCRIPTION> glyphRunDescription,
    int desiredGlyphImageFormats,
    int measuringMode,
    Pointer<DWRITE_MATRIX> worldAndDpiTransform,
    int colorPaletteIndex,
    Pointer<Pointer<COMObject>> colorLayers,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(40)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            D2D_POINT_2F baselineOrigin,
            Pointer<DWRITE_GLYPH_RUN> glyphRun,
            Pointer<DWRITE_GLYPH_RUN_DESCRIPTION> glyphRunDescription,
            Uint32 desiredGlyphImageFormats,
            Int32 measuringMode,
            Pointer<DWRITE_MATRIX> worldAndDpiTransform,
            Uint32 colorPaletteIndex,
            Pointer<Pointer<COMObject>> colorLayers,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            D2D_POINT_2F baselineOrigin,
            Pointer<DWRITE_GLYPH_RUN> glyphRun,
            Pointer<DWRITE_GLYPH_RUN_DESCRIPTION> glyphRunDescription,
            int desiredGlyphImageFormats,
            int measuringMode,
            Pointer<DWRITE_MATRIX> worldAndDpiTransform,
            int colorPaletteIndex,
            Pointer<Pointer<COMObject>> colorLayers,
          )>()(
        ptr.ref.lpVtbl,
        baselineOrigin,
        glyphRun,
        glyphRunDescription,
        desiredGlyphImageFormats,
        measuringMode,
        worldAndDpiTransform,
        colorPaletteIndex,
        colorLayers,
      );

  int ComputeGlyphOrigins_1(
    Pointer<DWRITE_GLYPH_RUN> glyphRun,
    D2D_POINT_2F baselineOrigin,
    Pointer<D2D_POINT_2F> glyphOrigins,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(41)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<DWRITE_GLYPH_RUN> glyphRun,
            D2D_POINT_2F baselineOrigin,
            Pointer<D2D_POINT_2F> glyphOrigins,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<DWRITE_GLYPH_RUN> glyphRun,
            D2D_POINT_2F baselineOrigin,
            Pointer<D2D_POINT_2F> glyphOrigins,
          )>()(
        ptr.ref.lpVtbl,
        glyphRun,
        baselineOrigin,
        glyphOrigins,
      );

  int ComputeGlyphOrigins(
    Pointer<DWRITE_GLYPH_RUN> glyphRun,
    int measuringMode,
    D2D_POINT_2F baselineOrigin,
    Pointer<DWRITE_MATRIX> worldAndDpiTransform,
    Pointer<D2D_POINT_2F> glyphOrigins,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(42)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<DWRITE_GLYPH_RUN> glyphRun,
            Int32 measuringMode,
            D2D_POINT_2F baselineOrigin,
            Pointer<DWRITE_MATRIX> worldAndDpiTransform,
            Pointer<D2D_POINT_2F> glyphOrigins,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<DWRITE_GLYPH_RUN> glyphRun,
            int measuringMode,
            D2D_POINT_2F baselineOrigin,
            Pointer<DWRITE_MATRIX> worldAndDpiTransform,
            Pointer<D2D_POINT_2F> glyphOrigins,
          )>()(
        ptr.ref.lpVtbl,
        glyphRun,
        measuringMode,
        baselineOrigin,
        worldAndDpiTransform,
        glyphOrigins,
      );
}
