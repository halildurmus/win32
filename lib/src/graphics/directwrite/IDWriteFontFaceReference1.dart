// IDWriteFontFaceReference1.dart

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

import '../../graphics/directwrite/IDWriteFontFaceReference.dart';
import '../../graphics/directwrite/IDWriteFontFace5.dart';
import '../../foundation/structs.g.dart';
import '../../graphics/directwrite/structs.g.dart';

/// @nodoc
const IID_IDWriteFontFaceReference1 = '{C081FE77-2FD1-41AC-A5A3-34983C4BA61A}';

/// {@category Interface}
/// {@category com}
class IDWriteFontFaceReference1 extends IDWriteFontFaceReference {
  // vtable begins at 17, is 3 entries long.
  IDWriteFontFaceReference1(Pointer<COMObject> ptr) : super(ptr);

  int CreateFontFace_1(
    Pointer<Pointer<COMObject>> fontFace,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(17)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Pointer<COMObject>> fontFace,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Pointer<COMObject>> fontFace,
          )>()(
        ptr.ref.lpVtbl,
        fontFace,
      );

  int GetFontAxisValueCount() => ptr.ref.lpVtbl.value
          .elementAt(18)
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

  int GetFontAxisValues(
    Pointer<DWRITE_FONT_AXIS_VALUE> fontAxisValues,
    int fontAxisValueCount,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(19)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<DWRITE_FONT_AXIS_VALUE> fontAxisValues,
            Uint32 fontAxisValueCount,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<DWRITE_FONT_AXIS_VALUE> fontAxisValues,
            int fontAxisValueCount,
          )>()(
        ptr.ref.lpVtbl,
        fontAxisValues,
        fontAxisValueCount,
      );
}
