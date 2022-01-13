// IDWriteFontFamily1.dart

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

import '../../graphics/directwrite/IDWriteFontFamily.dart';
import '../../graphics/directwrite/structs.g.dart';
import '../../graphics/directwrite/IDWriteFont3.dart';
import '../../foundation/structs.g.dart';
import '../../graphics/directwrite/IDWriteFontFaceReference.dart';

/// @nodoc
const IID_IDWriteFontFamily1 = '{DA20D8EF-812A-4C43-9802-62EC4ABD7ADF}';

/// {@category Interface}
/// {@category com}
class IDWriteFontFamily1 extends IDWriteFontFamily {
  // vtable begins at 9, is 3 entries long.
  IDWriteFontFamily1(Pointer<COMObject> ptr) : super(ptr);

  int GetFontLocality(
    int listIndex,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(9)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Uint32 listIndex,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int listIndex,
          )>()(
        ptr.ref.lpVtbl,
        listIndex,
      );

  int GetFont_1(
    int listIndex,
    Pointer<Pointer<COMObject>> font,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(10)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Uint32 listIndex,
            Pointer<Pointer<COMObject>> font,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int listIndex,
            Pointer<Pointer<COMObject>> font,
          )>()(
        ptr.ref.lpVtbl,
        listIndex,
        font,
      );

  int GetFontFaceReference(
    int listIndex,
    Pointer<Pointer<COMObject>> fontFaceReference,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(11)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Uint32 listIndex,
            Pointer<Pointer<COMObject>> fontFaceReference,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int listIndex,
            Pointer<Pointer<COMObject>> fontFaceReference,
          )>()(
        ptr.ref.lpVtbl,
        listIndex,
        fontFaceReference,
      );
}
