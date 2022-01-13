// IXpsOMGlyphs.dart

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

import '../../storage/xps/IXpsOMVisual.dart';
import '../../foundation/structs.g.dart';
import '../../storage/xps/structs.g.dart';
import '../../storage/xps/IXpsOMFontResource.dart';
import '../../storage/xps/IXpsOMBrush.dart';
import '../../storage/xps/IXpsOMGlyphsEditor.dart';
import '../../storage/xps/IXpsOMGlyphs.dart';

/// @nodoc
const IID_IXpsOMGlyphs = '{819B3199-0A5A-4B64-BEC7-A9E17E780DE2}';

/// {@category Interface}
/// {@category com}
class IXpsOMGlyphs extends IXpsOMVisual {
  // vtable begins at 30, is 27 entries long.
  IXpsOMGlyphs(Pointer<COMObject> ptr) : super(ptr);

  int GetUnicodeString(
    Pointer<Pointer<Utf16>> unicodeString,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(30)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Pointer<Utf16>> unicodeString,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Pointer<Utf16>> unicodeString,
          )>()(
        ptr.ref.lpVtbl,
        unicodeString,
      );

  int GetGlyphIndexCount(
    Pointer<Uint32> indexCount,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(31)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Uint32> indexCount,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Uint32> indexCount,
          )>()(
        ptr.ref.lpVtbl,
        indexCount,
      );

  int GetGlyphIndices(
    Pointer<Uint32> indexCount,
    Pointer<XPS_GLYPH_INDEX> glyphIndices,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(32)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Uint32> indexCount,
            Pointer<XPS_GLYPH_INDEX> glyphIndices,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Uint32> indexCount,
            Pointer<XPS_GLYPH_INDEX> glyphIndices,
          )>()(
        ptr.ref.lpVtbl,
        indexCount,
        glyphIndices,
      );

  int GetGlyphMappingCount(
    Pointer<Uint32> glyphMappingCount,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(33)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Uint32> glyphMappingCount,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Uint32> glyphMappingCount,
          )>()(
        ptr.ref.lpVtbl,
        glyphMappingCount,
      );

  int GetGlyphMappings(
    Pointer<Uint32> glyphMappingCount,
    Pointer<XPS_GLYPH_MAPPING> glyphMappings,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(34)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Uint32> glyphMappingCount,
            Pointer<XPS_GLYPH_MAPPING> glyphMappings,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Uint32> glyphMappingCount,
            Pointer<XPS_GLYPH_MAPPING> glyphMappings,
          )>()(
        ptr.ref.lpVtbl,
        glyphMappingCount,
        glyphMappings,
      );

  int GetProhibitedCaretStopCount(
    Pointer<Uint32> prohibitedCaretStopCount,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(35)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Uint32> prohibitedCaretStopCount,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Uint32> prohibitedCaretStopCount,
          )>()(
        ptr.ref.lpVtbl,
        prohibitedCaretStopCount,
      );

  int GetProhibitedCaretStops(
    Pointer<Uint32> prohibitedCaretStopCount,
    Pointer<Uint32> prohibitedCaretStops,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(36)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Uint32> prohibitedCaretStopCount,
            Pointer<Uint32> prohibitedCaretStops,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Uint32> prohibitedCaretStopCount,
            Pointer<Uint32> prohibitedCaretStops,
          )>()(
        ptr.ref.lpVtbl,
        prohibitedCaretStopCount,
        prohibitedCaretStops,
      );

  int GetBidiLevel(
    Pointer<Uint32> bidiLevel,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(37)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Uint32> bidiLevel,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Uint32> bidiLevel,
          )>()(
        ptr.ref.lpVtbl,
        bidiLevel,
      );

  int GetIsSideways(
    Pointer<Int32> isSideways,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(38)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Int32> isSideways,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Int32> isSideways,
          )>()(
        ptr.ref.lpVtbl,
        isSideways,
      );

  int GetDeviceFontName(
    Pointer<Pointer<Utf16>> deviceFontName,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(39)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Pointer<Utf16>> deviceFontName,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Pointer<Utf16>> deviceFontName,
          )>()(
        ptr.ref.lpVtbl,
        deviceFontName,
      );

  int GetStyleSimulations(
    Pointer<Int32> styleSimulations,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(40)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Int32> styleSimulations,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Int32> styleSimulations,
          )>()(
        ptr.ref.lpVtbl,
        styleSimulations,
      );

  int SetStyleSimulations(
    int styleSimulations,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(41)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Int32 styleSimulations,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int styleSimulations,
          )>()(
        ptr.ref.lpVtbl,
        styleSimulations,
      );

  int GetOrigin(
    Pointer<XPS_POINT> origin,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(42)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<XPS_POINT> origin,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<XPS_POINT> origin,
          )>()(
        ptr.ref.lpVtbl,
        origin,
      );

  int SetOrigin(
    Pointer<XPS_POINT> origin,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(43)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<XPS_POINT> origin,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<XPS_POINT> origin,
          )>()(
        ptr.ref.lpVtbl,
        origin,
      );

  int GetFontRenderingEmSize(
    Pointer<Float> fontRenderingEmSize,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(44)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Float> fontRenderingEmSize,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Float> fontRenderingEmSize,
          )>()(
        ptr.ref.lpVtbl,
        fontRenderingEmSize,
      );

  int SetFontRenderingEmSize(
    double fontRenderingEmSize,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(45)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Float fontRenderingEmSize,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            double fontRenderingEmSize,
          )>()(
        ptr.ref.lpVtbl,
        fontRenderingEmSize,
      );

  int GetFontResource(
    Pointer<Pointer<COMObject>> fontResource,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(46)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Pointer<COMObject>> fontResource,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Pointer<COMObject>> fontResource,
          )>()(
        ptr.ref.lpVtbl,
        fontResource,
      );

  int SetFontResource(
    Pointer<COMObject> fontResource,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(47)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<COMObject> fontResource,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<COMObject> fontResource,
          )>()(
        ptr.ref.lpVtbl,
        fontResource,
      );

  int GetFontFaceIndex(
    Pointer<Int16> fontFaceIndex,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(48)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Int16> fontFaceIndex,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Int16> fontFaceIndex,
          )>()(
        ptr.ref.lpVtbl,
        fontFaceIndex,
      );

  int SetFontFaceIndex(
    int fontFaceIndex,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(49)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Int16 fontFaceIndex,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int fontFaceIndex,
          )>()(
        ptr.ref.lpVtbl,
        fontFaceIndex,
      );

  int GetFillBrush(
    Pointer<Pointer<COMObject>> fillBrush,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(50)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Pointer<COMObject>> fillBrush,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Pointer<COMObject>> fillBrush,
          )>()(
        ptr.ref.lpVtbl,
        fillBrush,
      );

  int GetFillBrushLocal(
    Pointer<Pointer<COMObject>> fillBrush,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(51)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Pointer<COMObject>> fillBrush,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Pointer<COMObject>> fillBrush,
          )>()(
        ptr.ref.lpVtbl,
        fillBrush,
      );

  int SetFillBrushLocal(
    Pointer<COMObject> fillBrush,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(52)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<COMObject> fillBrush,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<COMObject> fillBrush,
          )>()(
        ptr.ref.lpVtbl,
        fillBrush,
      );

  int GetFillBrushLookup(
    Pointer<Pointer<Utf16>> key,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(53)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Pointer<Utf16>> key,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Pointer<Utf16>> key,
          )>()(
        ptr.ref.lpVtbl,
        key,
      );

  int SetFillBrushLookup(
    Pointer<Utf16> key,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(54)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Utf16> key,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Utf16> key,
          )>()(
        ptr.ref.lpVtbl,
        key,
      );

  int GetGlyphsEditor(
    Pointer<Pointer<COMObject>> editor,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(55)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Pointer<COMObject>> editor,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Pointer<COMObject>> editor,
          )>()(
        ptr.ref.lpVtbl,
        editor,
      );

  int Clone(
    Pointer<Pointer<COMObject>> glyphs,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(56)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Pointer<COMObject>> glyphs,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Pointer<COMObject>> glyphs,
          )>()(
        ptr.ref.lpVtbl,
        glyphs,
      );
}
