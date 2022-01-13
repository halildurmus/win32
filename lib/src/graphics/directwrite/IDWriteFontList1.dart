// IDWriteFontList1.dart

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

import '../../graphics/directwrite/IDWriteFontList.dart';
import '../../graphics/directwrite/structs.g.dart';
import '../../graphics/directwrite/IDWriteFont3.dart';
import '../../foundation/structs.g.dart';
import '../../graphics/directwrite/IDWriteFontFaceReference.dart';

/// @nodoc
const IID_IDWriteFontList1 = '{DA20D8EF-812A-4C43-9802-62EC4ABD7ADE}';

/// {@category Interface}
/// {@category com}
class IDWriteFontList1 extends IDWriteFontList {
  // vtable begins at 6, is 3 entries long.
  IDWriteFontList1(Pointer<COMObject> ptr) : super(ptr);

  int GetFontLocality(
    int listIndex,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(6)
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
          .elementAt(7)
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
          .elementAt(8)
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
