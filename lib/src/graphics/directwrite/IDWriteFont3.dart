// IDWriteFont3.dart

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

import '../../graphics/directwrite/IDWriteFont2.dart';
import '../../graphics/directwrite/IDWriteFontFace3.dart';
import '../../foundation/structs.g.dart';
import '../../graphics/directwrite/IDWriteFont.dart';
import '../../graphics/directwrite/IDWriteFontFaceReference.dart';
import '../../graphics/directwrite/structs.g.dart';

/// @nodoc
const IID_IDWriteFont3 = '{29748ED6-8C9C-4A6A-BE0B-D912E8538944}';

/// {@category Interface}
/// {@category com}
class IDWriteFont3 extends IDWriteFont2 {
  // vtable begins at 19, is 5 entries long.
  IDWriteFont3(Pointer<COMObject> ptr) : super(ptr);

  int CreateFontFace_1(
    Pointer<Pointer<COMObject>> fontFace,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(19)
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

  int Equals(
    Pointer<COMObject> font,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(20)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<COMObject> font,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<COMObject> font,
          )>()(
        ptr.ref.lpVtbl,
        font,
      );

  int GetFontFaceReference(
    Pointer<Pointer<COMObject>> fontFaceReference,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(21)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Pointer<COMObject>> fontFaceReference,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Pointer<COMObject>> fontFaceReference,
          )>()(
        ptr.ref.lpVtbl,
        fontFaceReference,
      );

  int HasCharacter_1(
    int unicodeValue,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(22)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Uint32 unicodeValue,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int unicodeValue,
          )>()(
        ptr.ref.lpVtbl,
        unicodeValue,
      );

  int GetLocality() => ptr.ref.lpVtbl.value
          .elementAt(23)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
          )>()(
        ptr.ref.lpVtbl,
      );
}
