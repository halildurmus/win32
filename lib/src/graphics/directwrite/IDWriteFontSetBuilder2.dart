// IDWriteFontSetBuilder2.dart

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

import '../../graphics/directwrite/IDWriteFontSetBuilder1.dart';
import '../../graphics/directwrite/IDWriteFontFile.dart';
import '../../graphics/directwrite/structs.g.dart';
import '../../foundation/structs.g.dart';

/// @nodoc
const IID_IDWriteFontSetBuilder2 = '{EE5BA612-B131-463C-8F4F-3189B9401E45}';

/// {@category Interface}
/// {@category com}
class IDWriteFontSetBuilder2 extends IDWriteFontSetBuilder1 {
  // vtable begins at 8, is 2 entries long.
  IDWriteFontSetBuilder2(Pointer<COMObject> ptr) : super(ptr);

  int AddFont(
    Pointer<COMObject> fontFile,
    int fontFaceIndex,
    int fontSimulations,
    Pointer<DWRITE_FONT_AXIS_VALUE> fontAxisValues,
    int fontAxisValueCount,
    Pointer<DWRITE_FONT_AXIS_RANGE> fontAxisRanges,
    int fontAxisRangeCount,
    Pointer<DWRITE_FONT_PROPERTY> properties,
    int propertyCount,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(8)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<COMObject> fontFile,
            Uint32 fontFaceIndex,
            Uint32 fontSimulations,
            Pointer<DWRITE_FONT_AXIS_VALUE> fontAxisValues,
            Uint32 fontAxisValueCount,
            Pointer<DWRITE_FONT_AXIS_RANGE> fontAxisRanges,
            Uint32 fontAxisRangeCount,
            Pointer<DWRITE_FONT_PROPERTY> properties,
            Uint32 propertyCount,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<COMObject> fontFile,
            int fontFaceIndex,
            int fontSimulations,
            Pointer<DWRITE_FONT_AXIS_VALUE> fontAxisValues,
            int fontAxisValueCount,
            Pointer<DWRITE_FONT_AXIS_RANGE> fontAxisRanges,
            int fontAxisRangeCount,
            Pointer<DWRITE_FONT_PROPERTY> properties,
            int propertyCount,
          )>()(
        ptr.ref.lpVtbl,
        fontFile,
        fontFaceIndex,
        fontSimulations,
        fontAxisValues,
        fontAxisValueCount,
        fontAxisRanges,
        fontAxisRangeCount,
        properties,
        propertyCount,
      );

  int AddFontFile_1(
    Pointer<Utf16> filePath,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(9)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Utf16> filePath,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Utf16> filePath,
          )>()(
        ptr.ref.lpVtbl,
        filePath,
      );
}
