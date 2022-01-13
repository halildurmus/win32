// IDWriteFontSetBuilder1.dart

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

import '../../graphics/directwrite/IDWriteFontSetBuilder.dart';
import '../../graphics/directwrite/IDWriteFontFile.dart';
import '../../foundation/structs.g.dart';

/// @nodoc
const IID_IDWriteFontSetBuilder1 = '{3FF7715F-3CDC-4DC6-9B72-EC5621DCCAFD}';

/// {@category Interface}
/// {@category com}
class IDWriteFontSetBuilder1 extends IDWriteFontSetBuilder {
  // vtable begins at 7, is 1 entries long.
  IDWriteFontSetBuilder1(Pointer<COMObject> ptr) : super(ptr);

  int AddFontFile(
    Pointer<COMObject> fontFile,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(7)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<COMObject> fontFile,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<COMObject> fontFile,
          )>()(
        ptr.ref.lpVtbl,
        fontFile,
      );
}
