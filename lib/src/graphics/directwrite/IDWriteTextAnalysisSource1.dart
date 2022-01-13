// IDWriteTextAnalysisSource1.dart

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

import '../../graphics/directwrite/IDWriteTextAnalysisSource.dart';
import '../../graphics/directwrite/structs.g.dart';
import '../../foundation/structs.g.dart';

/// @nodoc
const IID_IDWriteTextAnalysisSource1 = '{639CFAD8-0FB4-4B21-A58A-067920120009}';

/// {@category Interface}
/// {@category com}
class IDWriteTextAnalysisSource1 extends IDWriteTextAnalysisSource {
  // vtable begins at 8, is 1 entries long.
  IDWriteTextAnalysisSource1(Pointer<COMObject> ptr) : super(ptr);

  int GetVerticalGlyphOrientation(
    int textPosition,
    Pointer<Uint32> textLength,
    Pointer<Int32> glyphOrientation,
    Pointer<Uint8> bidiLevel,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(8)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Uint32 textPosition,
            Pointer<Uint32> textLength,
            Pointer<Int32> glyphOrientation,
            Pointer<Uint8> bidiLevel,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int textPosition,
            Pointer<Uint32> textLength,
            Pointer<Int32> glyphOrientation,
            Pointer<Uint8> bidiLevel,
          )>()(
        ptr.ref.lpVtbl,
        textPosition,
        textLength,
        glyphOrientation,
        bidiLevel,
      );
}
