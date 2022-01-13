// IDWriteFontFamily.dart

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
import '../../graphics/directwrite/IDWriteLocalizedStrings.dart';
import '../../foundation/structs.g.dart';
import '../../graphics/directwrite/structs.g.dart';
import '../../graphics/directwrite/IDWriteFont.dart';

/// @nodoc
const IID_IDWriteFontFamily = '{DA20D8EF-812A-4C43-9802-62EC4ABD7ADD}';

/// {@category Interface}
/// {@category com}
class IDWriteFontFamily extends IDWriteFontList {
  // vtable begins at 6, is 3 entries long.
  IDWriteFontFamily(Pointer<COMObject> ptr) : super(ptr);

  int GetFamilyNames(
    Pointer<Pointer<COMObject>> names,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(6)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Pointer<COMObject>> names,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Pointer<COMObject>> names,
          )>()(
        ptr.ref.lpVtbl,
        names,
      );

  int GetFirstMatchingFont(
    int weight,
    int stretch,
    int style,
    Pointer<Pointer<COMObject>> matchingFont,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(7)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Int32 weight,
            Int32 stretch,
            Int32 style,
            Pointer<Pointer<COMObject>> matchingFont,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int weight,
            int stretch,
            int style,
            Pointer<Pointer<COMObject>> matchingFont,
          )>()(
        ptr.ref.lpVtbl,
        weight,
        stretch,
        style,
        matchingFont,
      );

  int GetMatchingFonts(
    int weight,
    int stretch,
    int style,
    Pointer<Pointer<COMObject>> matchingFonts,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(8)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Int32 weight,
            Int32 stretch,
            Int32 style,
            Pointer<Pointer<COMObject>> matchingFonts,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int weight,
            int stretch,
            int style,
            Pointer<Pointer<COMObject>> matchingFonts,
          )>()(
        ptr.ref.lpVtbl,
        weight,
        stretch,
        style,
        matchingFonts,
      );
}
