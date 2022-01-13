// IDWriteTypography.dart

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
import '../../graphics/directwrite/structs.g.dart';
import '../../foundation/structs.g.dart';

/// @nodoc
const IID_IDWriteTypography = '{55F1112B-1DC2-4B3C-9541-F46894ED85B6}';

/// {@category Interface}
/// {@category com}
class IDWriteTypography extends IUnknown {
  // vtable begins at 3, is 3 entries long.
  IDWriteTypography(Pointer<COMObject> ptr) : super(ptr);

  int AddFontFeature(
    DWRITE_FONT_FEATURE fontFeature,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(3)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            DWRITE_FONT_FEATURE fontFeature,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            DWRITE_FONT_FEATURE fontFeature,
          )>()(
        ptr.ref.lpVtbl,
        fontFeature,
      );

  int GetFontFeatureCount() => ptr.ref.lpVtbl.value
          .elementAt(4)
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

  int GetFontFeature(
    int fontFeatureIndex,
    Pointer<DWRITE_FONT_FEATURE> fontFeature,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(5)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Uint32 fontFeatureIndex,
            Pointer<DWRITE_FONT_FEATURE> fontFeature,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int fontFeatureIndex,
            Pointer<DWRITE_FONT_FEATURE> fontFeature,
          )>()(
        ptr.ref.lpVtbl,
        fontFeatureIndex,
        fontFeature,
      );
}
