// IDWriteFontFace3.dart

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

import '../../graphics/directwrite/IDWriteFontFace2.dart';
import '../../graphics/directwrite/IDWriteFontFaceReference.dart';
import '../../foundation/structs.g.dart';
import '../../graphics/directwrite/structs.g.dart';
import '../../graphics/directwrite/IDWriteLocalizedStrings.dart';
import '../../graphics/directwrite/IDWriteRenderingParams.dart';

/// @nodoc
const IID_IDWriteFontFace3 = '{D37D7598-09BE-4222-A236-2081341CC1F2}';

/// {@category Interface}
/// {@category com}
class IDWriteFontFace3 extends IDWriteFontFace2 {
  // vtable begins at 35, is 14 entries long.
  IDWriteFontFace3(Pointer<COMObject> ptr) : super(ptr);

  int GetFontFaceReference(
    Pointer<Pointer<COMObject>> fontFaceReference,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(35)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Pointer<COMObject>> fontFaceReference,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Pointer<COMObject>> fontFaceReference,
          )>()(
        ptr.ref.lpVtbl,
        fontFaceReference,
      );

  void GetPanose(
    Pointer<DWRITE_PANOSE> panose,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(36)
          .cast<
              Pointer<
                  NativeFunction<
                      Void Function(
            Pointer,
            Pointer<DWRITE_PANOSE> panose,
          )>>>()
          .value
          .asFunction<
              void Function(
            Pointer,
            Pointer<DWRITE_PANOSE> panose,
          )>()(
        ptr.ref.lpVtbl,
        panose,
      );

  int GetWeight() => ptr.ref.lpVtbl.value
          .elementAt(37)
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

  int GetStretch() => ptr.ref.lpVtbl.value
          .elementAt(38)
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

  int GetStyle() => ptr.ref.lpVtbl.value
          .elementAt(39)
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

  int GetFamilyNames(
    Pointer<Pointer<COMObject>> names,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(40)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Pointer<COMObject>> names,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Pointer<COMObject>> names,
          )>()(
        ptr.ref.lpVtbl,
        names,
      );

  int GetFaceNames(
    Pointer<Pointer<COMObject>> names,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(41)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Pointer<COMObject>> names,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Pointer<COMObject>> names,
          )>()(
        ptr.ref.lpVtbl,
        names,
      );

  int GetInformationalStrings(
    int informationalStringID,
    Pointer<Pointer<COMObject>> informationalStrings,
    Pointer<Int32> exists,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(42)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Int32 informationalStringID,
            Pointer<Pointer<COMObject>> informationalStrings,
            Pointer<Int32> exists,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int informationalStringID,
            Pointer<Pointer<COMObject>> informationalStrings,
            Pointer<Int32> exists,
          )>()(
        ptr.ref.lpVtbl,
        informationalStringID,
        informationalStrings,
        exists,
      );

  int HasCharacter(
    int unicodeValue,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(43)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Uint32 unicodeValue,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int unicodeValue,
          )>()(
        ptr.ref.lpVtbl,
        unicodeValue,
      );

  int GetRecommendedRenderingMode_3(
    double fontEmSize,
    double dpiX,
    double dpiY,
    Pointer<DWRITE_MATRIX> transform,
    int isSideways,
    int outlineThreshold,
    int measuringMode,
    Pointer<COMObject> renderingParams,
    Pointer<Int32> renderingMode,
    Pointer<Int32> gridFitMode,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(44)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Float fontEmSize,
            Float dpiX,
            Float dpiY,
            Pointer<DWRITE_MATRIX> transform,
            Int32 isSideways,
            Int32 outlineThreshold,
            Int32 measuringMode,
            Pointer<COMObject> renderingParams,
            Pointer<Int32> renderingMode,
            Pointer<Int32> gridFitMode,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            double fontEmSize,
            double dpiX,
            double dpiY,
            Pointer<DWRITE_MATRIX> transform,
            int isSideways,
            int outlineThreshold,
            int measuringMode,
            Pointer<COMObject> renderingParams,
            Pointer<Int32> renderingMode,
            Pointer<Int32> gridFitMode,
          )>()(
        ptr.ref.lpVtbl,
        fontEmSize,
        dpiX,
        dpiY,
        transform,
        isSideways,
        outlineThreshold,
        measuringMode,
        renderingParams,
        renderingMode,
        gridFitMode,
      );

  int IsCharacterLocal(
    int unicodeValue,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(45)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Uint32 unicodeValue,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int unicodeValue,
          )>()(
        ptr.ref.lpVtbl,
        unicodeValue,
      );

  int IsGlyphLocal(
    int glyphId,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(46)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Uint16 glyphId,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int glyphId,
          )>()(
        ptr.ref.lpVtbl,
        glyphId,
      );

  int AreCharactersLocal(
    Pointer<Utf16> characters,
    int characterCount,
    int enqueueIfNotLocal,
    Pointer<Int32> isLocal,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(47)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Utf16> characters,
            Uint32 characterCount,
            Int32 enqueueIfNotLocal,
            Pointer<Int32> isLocal,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Utf16> characters,
            int characterCount,
            int enqueueIfNotLocal,
            Pointer<Int32> isLocal,
          )>()(
        ptr.ref.lpVtbl,
        characters,
        characterCount,
        enqueueIfNotLocal,
        isLocal,
      );

  int AreGlyphsLocal(
    Pointer<Uint16> glyphIndices,
    int glyphCount,
    int enqueueIfNotLocal,
    Pointer<Int32> isLocal,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(48)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Uint16> glyphIndices,
            Uint32 glyphCount,
            Int32 enqueueIfNotLocal,
            Pointer<Int32> isLocal,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Uint16> glyphIndices,
            int glyphCount,
            int enqueueIfNotLocal,
            Pointer<Int32> isLocal,
          )>()(
        ptr.ref.lpVtbl,
        glyphIndices,
        glyphCount,
        enqueueIfNotLocal,
        isLocal,
      );
}
