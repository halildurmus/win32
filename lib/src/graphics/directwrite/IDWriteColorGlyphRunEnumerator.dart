// IDWriteColorGlyphRunEnumerator.dart

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
import '../../graphics/directwrite/structs.g.dart';

/// @nodoc
const IID_IDWriteColorGlyphRunEnumerator =
    '{D31FBE17-F157-41A2-8D24-CB779E0560E8}';

/// {@category Interface}
/// {@category com}
class IDWriteColorGlyphRunEnumerator extends IUnknown {
  // vtable begins at 3, is 2 entries long.
  IDWriteColorGlyphRunEnumerator(Pointer<COMObject> ptr) : super(ptr);

  int MoveNext(
    Pointer<Int32> hasRun,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(3)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Int32> hasRun,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Int32> hasRun,
          )>()(
        ptr.ref.lpVtbl,
        hasRun,
      );

  int GetCurrentRun(
    Pointer<Pointer<DWRITE_COLOR_GLYPH_RUN>> colorGlyphRun,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(4)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Pointer<DWRITE_COLOR_GLYPH_RUN>> colorGlyphRun,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Pointer<DWRITE_COLOR_GLYPH_RUN>> colorGlyphRun,
          )>()(
        ptr.ref.lpVtbl,
        colorGlyphRun,
      );
}
