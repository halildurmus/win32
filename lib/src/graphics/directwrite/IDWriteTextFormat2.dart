// IDWriteTextFormat2.dart

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

import '../../graphics/directwrite/IDWriteTextFormat1.dart';
import '../../graphics/directwrite/structs.g.dart';
import '../../foundation/structs.g.dart';

/// @nodoc
const IID_IDWriteTextFormat2 = '{F67E0EDD-9E3D-4ECC-8C32-4183253DFE70}';

/// {@category Interface}
/// {@category com}
class IDWriteTextFormat2 extends IDWriteTextFormat1 {
  // vtable begins at 36, is 2 entries long.
  IDWriteTextFormat2(Pointer<COMObject> ptr) : super(ptr);

  int SetLineSpacing_1(
    Pointer<DWRITE_LINE_SPACING> lineSpacingOptions,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(36)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<DWRITE_LINE_SPACING> lineSpacingOptions,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<DWRITE_LINE_SPACING> lineSpacingOptions,
          )>()(
        ptr.ref.lpVtbl,
        lineSpacingOptions,
      );

  int GetLineSpacing_1(
    Pointer<DWRITE_LINE_SPACING> lineSpacingOptions,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(37)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<DWRITE_LINE_SPACING> lineSpacingOptions,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<DWRITE_LINE_SPACING> lineSpacingOptions,
          )>()(
        ptr.ref.lpVtbl,
        lineSpacingOptions,
      );
}
