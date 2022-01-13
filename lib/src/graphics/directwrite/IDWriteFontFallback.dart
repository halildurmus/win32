// IDWriteFontFallback.dart

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
import '../../graphics/directwrite/IDWriteTextAnalysisSource.dart';
import '../../graphics/directwrite/IDWriteFontCollection.dart';
import '../../foundation/structs.g.dart';
import '../../graphics/directwrite/structs.g.dart';
import '../../graphics/directwrite/IDWriteFont.dart';

/// @nodoc
const IID_IDWriteFontFallback = '{EFA008F9-F7A1-48BF-B05C-F224713CC0FF}';

/// {@category Interface}
/// {@category com}
class IDWriteFontFallback extends IUnknown {
  // vtable begins at 3, is 1 entries long.
  IDWriteFontFallback(Pointer<COMObject> ptr) : super(ptr);

  int MapCharacters(
    Pointer<COMObject> analysisSource,
    int textPosition,
    int textLength,
    Pointer<COMObject> baseFontCollection,
    Pointer<Utf16> baseFamilyName,
    int baseWeight,
    int baseStyle,
    int baseStretch,
    Pointer<Uint32> mappedLength,
    Pointer<Pointer<COMObject>> mappedFont,
    Pointer<Float> scale,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(3)
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
            Int32 baseWeight,
            Int32 baseStyle,
            Int32 baseStretch,
            Pointer<Uint32> mappedLength,
            Pointer<Pointer<COMObject>> mappedFont,
            Pointer<Float> scale,
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
            int baseWeight,
            int baseStyle,
            int baseStretch,
            Pointer<Uint32> mappedLength,
            Pointer<Pointer<COMObject>> mappedFont,
            Pointer<Float> scale,
          )>()(
        ptr.ref.lpVtbl,
        analysisSource,
        textPosition,
        textLength,
        baseFontCollection,
        baseFamilyName,
        baseWeight,
        baseStyle,
        baseStretch,
        mappedLength,
        mappedFont,
        scale,
      );
}
