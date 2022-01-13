// IDWriteTextAnalysisSink1.dart

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

import '../../graphics/directwrite/IDWriteTextAnalysisSink.dart';
import '../../graphics/directwrite/structs.g.dart';
import '../../foundation/structs.g.dart';

/// @nodoc
const IID_IDWriteTextAnalysisSink1 = '{B0D941A0-85E7-4D8B-9FD3-5CED9934482A}';

/// {@category Interface}
/// {@category com}
class IDWriteTextAnalysisSink1 extends IDWriteTextAnalysisSink {
  // vtable begins at 7, is 1 entries long.
  IDWriteTextAnalysisSink1(Pointer<COMObject> ptr) : super(ptr);

  int SetGlyphOrientation(
    int textPosition,
    int textLength,
    int glyphOrientationAngle,
    int adjustedBidiLevel,
    int isSideways,
    int isRightToLeft,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(7)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Uint32 textPosition,
            Uint32 textLength,
            Int32 glyphOrientationAngle,
            Uint8 adjustedBidiLevel,
            Int32 isSideways,
            Int32 isRightToLeft,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int textPosition,
            int textLength,
            int glyphOrientationAngle,
            int adjustedBidiLevel,
            int isSideways,
            int isRightToLeft,
          )>()(
        ptr.ref.lpVtbl,
        textPosition,
        textLength,
        glyphOrientationAngle,
        adjustedBidiLevel,
        isSideways,
        isRightToLeft,
      );
}
