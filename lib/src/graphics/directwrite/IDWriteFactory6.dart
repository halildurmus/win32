// IDWriteFactory6.dart

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

import '../../graphics/directwrite/IDWriteFactory5.dart';
import '../../graphics/directwrite/IDWriteFontFile.dart';
import '../../graphics/directwrite/structs.g.dart';
import '../../graphics/directwrite/IDWriteFontFaceReference1.dart';
import '../../foundation/structs.g.dart';
import '../../graphics/directwrite/IDWriteFontResource.dart';
import '../../graphics/directwrite/IDWriteFontSet1.dart';
import '../../graphics/directwrite/IDWriteFontCollection2.dart';
import '../../graphics/directwrite/IDWriteFontSet.dart';
import '../../graphics/directwrite/IDWriteFontSetBuilder2.dart';
import '../../graphics/directwrite/IDWriteFontCollection.dart';
import '../../graphics/directwrite/IDWriteTextFormat3.dart';

/// @nodoc
const IID_IDWriteFactory6 = '{F3744D80-21F7-42EB-B35D-995BC72FC223}';

/// {@category Interface}
/// {@category com}
class IDWriteFactory6 extends IDWriteFactory5 {
  // vtable begins at 48, is 7 entries long.
  IDWriteFactory6(Pointer<COMObject> ptr) : super(ptr);

  int CreateFontFaceReference_2(
    Pointer<COMObject> fontFile,
    int faceIndex,
    int fontSimulations,
    Pointer<DWRITE_FONT_AXIS_VALUE> fontAxisValues,
    int fontAxisValueCount,
    Pointer<Pointer<COMObject>> fontFaceReference,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(48)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<COMObject> fontFile,
            Uint32 faceIndex,
            Uint32 fontSimulations,
            Pointer<DWRITE_FONT_AXIS_VALUE> fontAxisValues,
            Uint32 fontAxisValueCount,
            Pointer<Pointer<COMObject>> fontFaceReference,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<COMObject> fontFile,
            int faceIndex,
            int fontSimulations,
            Pointer<DWRITE_FONT_AXIS_VALUE> fontAxisValues,
            int fontAxisValueCount,
            Pointer<Pointer<COMObject>> fontFaceReference,
          )>()(
        ptr.ref.lpVtbl,
        fontFile,
        faceIndex,
        fontSimulations,
        fontAxisValues,
        fontAxisValueCount,
        fontFaceReference,
      );

  int CreateFontResource(
    Pointer<COMObject> fontFile,
    int faceIndex,
    Pointer<Pointer<COMObject>> fontResource,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(49)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<COMObject> fontFile,
            Uint32 faceIndex,
            Pointer<Pointer<COMObject>> fontResource,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<COMObject> fontFile,
            int faceIndex,
            Pointer<Pointer<COMObject>> fontResource,
          )>()(
        ptr.ref.lpVtbl,
        fontFile,
        faceIndex,
        fontResource,
      );

  int GetSystemFontSet_1(
    int includeDownloadableFonts,
    Pointer<Pointer<COMObject>> fontSet,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(50)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Int32 includeDownloadableFonts,
            Pointer<Pointer<COMObject>> fontSet,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int includeDownloadableFonts,
            Pointer<Pointer<COMObject>> fontSet,
          )>()(
        ptr.ref.lpVtbl,
        includeDownloadableFonts,
        fontSet,
      );

  int GetSystemFontCollection_2(
    int includeDownloadableFonts,
    int fontFamilyModel,
    Pointer<Pointer<COMObject>> fontCollection,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(51)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Int32 includeDownloadableFonts,
            Int32 fontFamilyModel,
            Pointer<Pointer<COMObject>> fontCollection,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int includeDownloadableFonts,
            int fontFamilyModel,
            Pointer<Pointer<COMObject>> fontCollection,
          )>()(
        ptr.ref.lpVtbl,
        includeDownloadableFonts,
        fontFamilyModel,
        fontCollection,
      );

  int CreateFontCollectionFromFontSet_1(
    Pointer<COMObject> fontSet,
    int fontFamilyModel,
    Pointer<Pointer<COMObject>> fontCollection,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(52)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<COMObject> fontSet,
            Int32 fontFamilyModel,
            Pointer<Pointer<COMObject>> fontCollection,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<COMObject> fontSet,
            int fontFamilyModel,
            Pointer<Pointer<COMObject>> fontCollection,
          )>()(
        ptr.ref.lpVtbl,
        fontSet,
        fontFamilyModel,
        fontCollection,
      );

  int CreateFontSetBuilder_2(
    Pointer<Pointer<COMObject>> fontSetBuilder,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(53)
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

  int CreateTextFormat_1(
    Pointer<Utf16> fontFamilyName,
    Pointer<COMObject> fontCollection,
    Pointer<DWRITE_FONT_AXIS_VALUE> fontAxisValues,
    int fontAxisValueCount,
    double fontSize,
    Pointer<Utf16> localeName,
    Pointer<Pointer<COMObject>> textFormat,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(54)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Utf16> fontFamilyName,
            Pointer<COMObject> fontCollection,
            Pointer<DWRITE_FONT_AXIS_VALUE> fontAxisValues,
            Uint32 fontAxisValueCount,
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
            Pointer<DWRITE_FONT_AXIS_VALUE> fontAxisValues,
            int fontAxisValueCount,
            double fontSize,
            Pointer<Utf16> localeName,
            Pointer<Pointer<COMObject>> textFormat,
          )>()(
        ptr.ref.lpVtbl,
        fontFamilyName,
        fontCollection,
        fontAxisValues,
        fontAxisValueCount,
        fontSize,
        localeName,
        textFormat,
      );
}
