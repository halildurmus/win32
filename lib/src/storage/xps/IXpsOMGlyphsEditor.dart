// IXpsOMGlyphsEditor.dart

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
import '../../foundation/structs.g.dart';
import '../../storage/xps/structs.g.dart';

/// @nodoc
const IID_IXpsOMGlyphsEditor = '{A5AB8616-5B16-4B9F-9629-89B323ED7909}';

/// {@category Interface}
/// {@category com}
class IXpsOMGlyphsEditor extends IUnknown {
  // vtable begins at 3, is 18 entries long.
  IXpsOMGlyphsEditor(Pointer<COMObject> ptr) : super(ptr);

  int ApplyEdits() => ptr.ref.lpVtbl.value
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

  int GetUnicodeString(
    Pointer<Pointer<Utf16>> unicodeString,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(4)
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

  int SetUnicodeString(
    Pointer<Utf16> unicodeString,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(5)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Utf16> unicodeString,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Utf16> unicodeString,
          )>()(
        ptr.ref.lpVtbl,
        unicodeString,
      );

  int GetGlyphIndexCount(
    Pointer<Uint32> indexCount,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(6)
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
          .elementAt(7)
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

  int SetGlyphIndices(
    int indexCount,
    Pointer<XPS_GLYPH_INDEX> glyphIndices,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(8)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Uint32 indexCount,
            Pointer<XPS_GLYPH_INDEX> glyphIndices,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int indexCount,
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
          .elementAt(9)
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
          .elementAt(10)
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

  int SetGlyphMappings(
    int glyphMappingCount,
    Pointer<XPS_GLYPH_MAPPING> glyphMappings,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(11)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Uint32 glyphMappingCount,
            Pointer<XPS_GLYPH_MAPPING> glyphMappings,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int glyphMappingCount,
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
          .elementAt(12)
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
    Pointer<Uint32> count,
    Pointer<Uint32> prohibitedCaretStops,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(13)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Uint32> count,
            Pointer<Uint32> prohibitedCaretStops,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Uint32> count,
            Pointer<Uint32> prohibitedCaretStops,
          )>()(
        ptr.ref.lpVtbl,
        count,
        prohibitedCaretStops,
      );

  int SetProhibitedCaretStops(
    int count,
    Pointer<Uint32> prohibitedCaretStops,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(14)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Uint32 count,
            Pointer<Uint32> prohibitedCaretStops,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int count,
            Pointer<Uint32> prohibitedCaretStops,
          )>()(
        ptr.ref.lpVtbl,
        count,
        prohibitedCaretStops,
      );

  int GetBidiLevel(
    Pointer<Uint32> bidiLevel,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(15)
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

  int SetBidiLevel(
    int bidiLevel,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(16)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Uint32 bidiLevel,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int bidiLevel,
          )>()(
        ptr.ref.lpVtbl,
        bidiLevel,
      );

  int GetIsSideways(
    Pointer<Int32> isSideways,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(17)
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

  int SetIsSideways(
    int isSideways,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(18)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Int32 isSideways,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int isSideways,
          )>()(
        ptr.ref.lpVtbl,
        isSideways,
      );

  int GetDeviceFontName(
    Pointer<Pointer<Utf16>> deviceFontName,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(19)
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

  int SetDeviceFontName(
    Pointer<Utf16> deviceFontName,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(20)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Utf16> deviceFontName,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Utf16> deviceFontName,
          )>()(
        ptr.ref.lpVtbl,
        deviceFontName,
      );
}
