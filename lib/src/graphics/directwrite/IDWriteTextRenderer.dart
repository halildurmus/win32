// IDWriteTextRenderer.dart

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

import '../../graphics/directwrite/IDWritePixelSnapping.dart';
import '../../graphics/directwrite/structs.g.dart';
import '../../specialTypes.dart';
import '../../foundation/structs.g.dart';
import '../../graphics/directwrite/IDWriteInlineObject.dart';

/// @nodoc
const IID_IDWriteTextRenderer = '{EF8A8135-5CC6-45FE-8825-C5A0724EB819}';

/// {@category Interface}
/// {@category com}
class IDWriteTextRenderer extends IDWritePixelSnapping {
  // vtable begins at 6, is 4 entries long.
  IDWriteTextRenderer(Pointer<COMObject> ptr) : super(ptr);

  int DrawGlyphRun(
    Pointer clientDrawingContext,
    double baselineOriginX,
    double baselineOriginY,
    int measuringMode,
    Pointer<DWRITE_GLYPH_RUN> glyphRun,
    Pointer<DWRITE_GLYPH_RUN_DESCRIPTION> glyphRunDescription,
    Pointer<COMObject> clientDrawingEffect,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(6)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer clientDrawingContext,
            Float baselineOriginX,
            Float baselineOriginY,
            Int32 measuringMode,
            Pointer<DWRITE_GLYPH_RUN> glyphRun,
            Pointer<DWRITE_GLYPH_RUN_DESCRIPTION> glyphRunDescription,
            Pointer<COMObject> clientDrawingEffect,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer clientDrawingContext,
            double baselineOriginX,
            double baselineOriginY,
            int measuringMode,
            Pointer<DWRITE_GLYPH_RUN> glyphRun,
            Pointer<DWRITE_GLYPH_RUN_DESCRIPTION> glyphRunDescription,
            Pointer<COMObject> clientDrawingEffect,
          )>()(
        ptr.ref.lpVtbl,
        clientDrawingContext,
        baselineOriginX,
        baselineOriginY,
        measuringMode,
        glyphRun,
        glyphRunDescription,
        clientDrawingEffect,
      );

  int DrawUnderline(
    Pointer clientDrawingContext,
    double baselineOriginX,
    double baselineOriginY,
    Pointer<DWRITE_UNDERLINE> underline,
    Pointer<COMObject> clientDrawingEffect,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(7)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer clientDrawingContext,
            Float baselineOriginX,
            Float baselineOriginY,
            Pointer<DWRITE_UNDERLINE> underline,
            Pointer<COMObject> clientDrawingEffect,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer clientDrawingContext,
            double baselineOriginX,
            double baselineOriginY,
            Pointer<DWRITE_UNDERLINE> underline,
            Pointer<COMObject> clientDrawingEffect,
          )>()(
        ptr.ref.lpVtbl,
        clientDrawingContext,
        baselineOriginX,
        baselineOriginY,
        underline,
        clientDrawingEffect,
      );

  int DrawStrikethrough(
    Pointer clientDrawingContext,
    double baselineOriginX,
    double baselineOriginY,
    Pointer<DWRITE_STRIKETHROUGH> strikethrough,
    Pointer<COMObject> clientDrawingEffect,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(8)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer clientDrawingContext,
            Float baselineOriginX,
            Float baselineOriginY,
            Pointer<DWRITE_STRIKETHROUGH> strikethrough,
            Pointer<COMObject> clientDrawingEffect,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer clientDrawingContext,
            double baselineOriginX,
            double baselineOriginY,
            Pointer<DWRITE_STRIKETHROUGH> strikethrough,
            Pointer<COMObject> clientDrawingEffect,
          )>()(
        ptr.ref.lpVtbl,
        clientDrawingContext,
        baselineOriginX,
        baselineOriginY,
        strikethrough,
        clientDrawingEffect,
      );

  int DrawInlineObject(
    Pointer clientDrawingContext,
    double originX,
    double originY,
    Pointer<COMObject> inlineObject,
    int isSideways,
    int isRightToLeft,
    Pointer<COMObject> clientDrawingEffect,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(9)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer clientDrawingContext,
            Float originX,
            Float originY,
            Pointer<COMObject> inlineObject,
            Int32 isSideways,
            Int32 isRightToLeft,
            Pointer<COMObject> clientDrawingEffect,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer clientDrawingContext,
            double originX,
            double originY,
            Pointer<COMObject> inlineObject,
            int isSideways,
            int isRightToLeft,
            Pointer<COMObject> clientDrawingEffect,
          )>()(
        ptr.ref.lpVtbl,
        clientDrawingContext,
        originX,
        originY,
        inlineObject,
        isSideways,
        isRightToLeft,
        clientDrawingEffect,
      );
}
