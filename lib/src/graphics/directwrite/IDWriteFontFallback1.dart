// IDWriteFontFallback1.dart

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

import '../../graphics/directwrite/IDWriteFontFallback.dart';
import '../../graphics/directwrite/IDWriteTextAnalysisSource.dart';
import '../../graphics/directwrite/IDWriteFontCollection.dart';
import '../../foundation/structs.g.dart';
import '../../graphics/directwrite/structs.g.dart';
import '../../graphics/directwrite/IDWriteFontFace5.dart';

/// @nodoc
const IID_IDWriteFontFallback1 = '{2397599D-DD0D-4681-BD6A-F4F31EAADE77}';

/// {@category Interface}
/// {@category com}
class IDWriteFontFallback1 extends IDWriteFontFallback {
  // vtable begins at 4, is 1 entries long.
  IDWriteFontFallback1(Pointer<COMObject> ptr) : super(ptr);

  int MapCharacters_1(
    Pointer<COMObject> analysisSource,
    int textPosition,
    int textLength,
    Pointer<COMObject> baseFontCollection,
    Pointer<Utf16> baseFamilyName,
    Pointer<DWRITE_FONT_AXIS_VALUE> fontAxisValues,
    int fontAxisValueCount,
    Pointer<Uint32> mappedLength,
    Pointer<Float> scale,
    Pointer<Pointer<COMObject>> mappedFontFace,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(4)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<COMObject> analysisSource,
            Uint32 textPosition,
            Uint32 textLength,
            Pointer<COMObject> baseFontCollection,
            Pointer<Utf16> baseFamilyName,
            Pointer<DWRITE_FONT_AXIS_VALUE> fontAxisValues,
            Uint32 fontAxisValueCount,
            Pointer<Uint32> mappedLength,
            Pointer<Float> scale,
            Pointer<Pointer<COMObject>> mappedFontFace,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<COMObject> analysisSource,
            int textPosition,
            int textLength,
            Pointer<COMObject> baseFontCollection,
            Pointer<Utf16> baseFamilyName,
            Pointer<DWRITE_FONT_AXIS_VALUE> fontAxisValues,
            int fontAxisValueCount,
            Pointer<Uint32> mappedLength,
            Pointer<Float> scale,
            Pointer<Pointer<COMObject>> mappedFontFace,
          )>()(
        ptr.ref.lpVtbl,
        analysisSource,
        textPosition,
        textLength,
        baseFontCollection,
        baseFamilyName,
        fontAxisValues,
        fontAxisValueCount,
        mappedLength,
        scale,
        mappedFontFace,
      );
}
