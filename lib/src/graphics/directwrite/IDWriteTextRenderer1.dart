// IDWriteTextRenderer1.dart

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

import '../../graphics/directwrite/IDWriteTextRenderer.dart';
import '../../graphics/directwrite/structs.g.dart';
import '../../specialTypes.dart';
import '../../foundation/structs.g.dart';
import '../../graphics/directwrite/IDWriteInlineObject.dart';

/// @nodoc
const IID_IDWriteTextRenderer1 = '{D3E0E934-22A0-427E-AAE4-7D9574B59DB1}';

/// {@category Interface}
/// {@category com}
class IDWriteTextRenderer1 extends IDWriteTextRenderer {
  // vtable begins at 10, is 4 entries long.
  IDWriteTextRenderer1(Pointer<COMObject> ptr) : super(ptr);

  int DrawGlyphRun_1(
    Pointer clientDrawingContext,
    double baselineOriginX,
    double baselineOriginY,
    int orientationAngle,
    int measuringMode,
    Pointer<DWRITE_GLYPH_RUN> glyphRun,
    Pointer<DWRITE_GLYPH_RUN_DESCRIPTION> glyphRunDescription,
    Pointer<COMObject> clientDrawingEffect,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(10)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer clientDrawingContext,
            Float baselineOriginX,
            Float baselineOriginY,
            Int32 orientationAngle,
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
            int orientationAngle,
            int measuringMode,
            Pointer<DWRITE_GLYPH_RUN> glyphRun,
            Pointer<DWRITE_GLYPH_RUN_DESCRIPTION> glyphRunDescription,
            Pointer<COMObject> clientDrawingEffect,
          )>()(
        ptr.ref.lpVtbl,
        clientDrawingContext,
        baselineOriginX,
        baselineOriginY,
        orientationAngle,
        measuringMode,
        glyphRun,
        glyphRunDescription,
        clientDrawingEffect,
      );

  int DrawUnderline_1(
    Pointer clientDrawingContext,
    double baselineOriginX,
    double baselineOriginY,
    int orientationAngle,
    Pointer<DWRITE_UNDERLINE> underline,
    Pointer<COMObject> clientDrawingEffect,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(11)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer clientDrawingContext,
            Float baselineOriginX,
            Float baselineOriginY,
            Int32 orientationAngle,
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
            int orientationAngle,
            Pointer<DWRITE_UNDERLINE> underline,
            Pointer<COMObject> clientDrawingEffect,
          )>()(
        ptr.ref.lpVtbl,
        clientDrawingContext,
        baselineOriginX,
        baselineOriginY,
        orientationAngle,
        underline,
        clientDrawingEffect,
      );

  int DrawStrikethrough_1(
    Pointer clientDrawingContext,
    double baselineOriginX,
    double baselineOriginY,
    int orientationAngle,
    Pointer<DWRITE_STRIKETHROUGH> strikethrough,
    Pointer<COMObject> clientDrawingEffect,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(12)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer clientDrawingContext,
            Float baselineOriginX,
            Float baselineOriginY,
            Int32 orientationAngle,
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
            int orientationAngle,
            Pointer<DWRITE_STRIKETHROUGH> strikethrough,
            Pointer<COMObject> clientDrawingEffect,
          )>()(
        ptr.ref.lpVtbl,
        clientDrawingContext,
        baselineOriginX,
        baselineOriginY,
        orientationAngle,
        strikethrough,
        clientDrawingEffect,
      );

  int DrawInlineObject_1(
    Pointer clientDrawingContext,
    double originX,
    double originY,
    int orientationAngle,
    Pointer<COMObject> inlineObject,
    int isSideways,
    int isRightToLeft,
    Pointer<COMObject> clientDrawingEffect,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(13)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer clientDrawingContext,
            Float originX,
            Float originY,
            Int32 orientationAngle,
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
            int orientationAngle,
            Pointer<COMObject> inlineObject,
            int isSideways,
            int isRightToLeft,
            Pointer<COMObject> clientDrawingEffect,
          )>()(
        ptr.ref.lpVtbl,
        clientDrawingContext,
        originX,
        originY,
        orientationAngle,
        inlineObject,
        isSideways,
        isRightToLeft,
        clientDrawingEffect,
      );
}
