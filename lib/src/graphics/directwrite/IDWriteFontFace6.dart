// IDWriteFontFace6.dart

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

import '../../graphics/directwrite/IDWriteFontFace5.dart';
import '../../graphics/directwrite/structs.g.dart';
import '../../graphics/directwrite/IDWriteLocalizedStrings.dart';
import '../../foundation/structs.g.dart';

/// @nodoc
const IID_IDWriteFontFace6 = '{C4B1FE1B-6E84-47D5-B54C-A597981B06AD}';

/// {@category Interface}
/// {@category com}
class IDWriteFontFace6 extends IDWriteFontFace5 {
  // vtable begins at 58, is 2 entries long.
  IDWriteFontFace6(Pointer<COMObject> ptr) : super(ptr);

  int GetFamilyNames_1(
    int fontFamilyModel,
    Pointer<Pointer<COMObject>> names,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(58)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Int32 fontFamilyModel,
            Pointer<Pointer<COMObject>> names,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int fontFamilyModel,
            Pointer<Pointer<COMObject>> names,
          )>()(
        ptr.ref.lpVtbl,
        fontFamilyModel,
        names,
      );

  int GetFaceNames_1(
    int fontFamilyModel,
    Pointer<Pointer<COMObject>> names,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(59)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Int32 fontFamilyModel,
            Pointer<Pointer<COMObject>> names,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int fontFamilyModel,
            Pointer<Pointer<COMObject>> names,
          )>()(
        ptr.ref.lpVtbl,
        fontFamilyModel,
        names,
      );
}
