// IDWriteFontFace4.dart

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

import '../../graphics/directwrite/IDWriteFontFace3.dart';
import '../../graphics/directwrite/structs.g.dart';
import '../../foundation/structs.g.dart';

/// @nodoc
const IID_IDWriteFontFace4 = '{27F2A904-4EB8-441D-9678-0563F53E3E2F}';

/// {@category Interface}
/// {@category com}
class IDWriteFontFace4 extends IDWriteFontFace3 {
  // vtable begins at 49, is 4 entries long.
  IDWriteFontFace4(Pointer<COMObject> ptr) : super(ptr);

  int GetGlyphImageFormats_1(
    int glyphId,
    int pixelsPerEmFirst,
    int pixelsPerEmLast,
    Pointer<Uint32> glyphImageFormats,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(49)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Uint16 glyphId,
            Uint32 pixelsPerEmFirst,
            Uint32 pixelsPerEmLast,
            Pointer<Uint32> glyphImageFormats,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int glyphId,
            int pixelsPerEmFirst,
            int pixelsPerEmLast,
            Pointer<Uint32> glyphImageFormats,
          )>()(
        ptr.ref.lpVtbl,
        glyphId,
        pixelsPerEmFirst,
        pixelsPerEmLast,
        glyphImageFormats,
      );

  int GetGlyphImageFormats() => ptr.ref.lpVtbl.value
          .elementAt(50)
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

  int GetGlyphImageData(
    int glyphId,
    int pixelsPerEm,
    int glyphImageFormat,
    Pointer<DWRITE_GLYPH_IMAGE_DATA> glyphData,
    Pointer<Pointer> glyphDataContext,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(51)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Uint16 glyphId,
            Uint32 pixelsPerEm,
            Uint32 glyphImageFormat,
            Pointer<DWRITE_GLYPH_IMAGE_DATA> glyphData,
            Pointer<Pointer> glyphDataContext,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int glyphId,
            int pixelsPerEm,
            int glyphImageFormat,
            Pointer<DWRITE_GLYPH_IMAGE_DATA> glyphData,
            Pointer<Pointer> glyphDataContext,
          )>()(
        ptr.ref.lpVtbl,
        glyphId,
        pixelsPerEm,
        glyphImageFormat,
        glyphData,
        glyphDataContext,
      );

  void ReleaseGlyphImageData(
    Pointer glyphDataContext,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(52)
          .cast<
              Pointer<
                  NativeFunction<
                      Void Function(
            Pointer,
            Pointer glyphDataContext,
          )>>>()
          .value
          .asFunction<
              void Function(
            Pointer,
            Pointer glyphDataContext,
          )>()(
        ptr.ref.lpVtbl,
        glyphDataContext,
      );
}
