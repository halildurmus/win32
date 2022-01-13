// IDWriteColorGlyphRunEnumerator1.dart

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

import '../../graphics/directwrite/IDWriteColorGlyphRunEnumerator.dart';
import '../../graphics/directwrite/structs.g.dart';
import '../../foundation/structs.g.dart';

/// @nodoc
const IID_IDWriteColorGlyphRunEnumerator1 =
    '{7C5F86DA-C7A1-4F05-B8E1-55A179FE5A35}';

/// {@category Interface}
/// {@category com}
class IDWriteColorGlyphRunEnumerator1 extends IDWriteColorGlyphRunEnumerator {
  // vtable begins at 5, is 1 entries long.
  IDWriteColorGlyphRunEnumerator1(Pointer<COMObject> ptr) : super(ptr);

  int GetCurrentRun_1(
    Pointer<Pointer<DWRITE_COLOR_GLYPH_RUN1>> colorGlyphRun,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(5)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Pointer<DWRITE_COLOR_GLYPH_RUN1>> colorGlyphRun,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Pointer<DWRITE_COLOR_GLYPH_RUN1>> colorGlyphRun,
          )>()(
        ptr.ref.lpVtbl,
        colorGlyphRun,
      );
}
