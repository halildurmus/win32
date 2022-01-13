// IDWriteFontCollection2.dart

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

import '../../graphics/directwrite/IDWriteFontCollection1.dart';
import '../../graphics/directwrite/IDWriteFontFamily2.dart';
import '../../foundation/structs.g.dart';
import '../../graphics/directwrite/structs.g.dart';
import '../../graphics/directwrite/IDWriteFontList2.dart';
import '../../graphics/directwrite/IDWriteFontSet1.dart';

/// @nodoc
const IID_IDWriteFontCollection2 = '{514039C6-4617-4064-BF8B-92EA83E506E0}';

/// {@category Interface}
/// {@category com}
class IDWriteFontCollection2 extends IDWriteFontCollection1 {
  // vtable begins at 9, is 4 entries long.
  IDWriteFontCollection2(Pointer<COMObject> ptr) : super(ptr);

  int GetFontFamily_2(
    int index,
    Pointer<Pointer<COMObject>> fontFamily,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(9)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Uint32 index,
            Pointer<Pointer<COMObject>> fontFamily,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int index,
            Pointer<Pointer<COMObject>> fontFamily,
          )>()(
        ptr.ref.lpVtbl,
        index,
        fontFamily,
      );

  int GetMatchingFonts(
    Pointer<Utf16> familyName,
    Pointer<DWRITE_FONT_AXIS_VALUE> fontAxisValues,
    int fontAxisValueCount,
    Pointer<Pointer<COMObject>> fontList,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(10)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Utf16> familyName,
            Pointer<DWRITE_FONT_AXIS_VALUE> fontAxisValues,
            Uint32 fontAxisValueCount,
            Pointer<Pointer<COMObject>> fontList,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Utf16> familyName,
            Pointer<DWRITE_FONT_AXIS_VALUE> fontAxisValues,
            int fontAxisValueCount,
            Pointer<Pointer<COMObject>> fontList,
          )>()(
        ptr.ref.lpVtbl,
        familyName,
        fontAxisValues,
        fontAxisValueCount,
        fontList,
      );

  int GetFontFamilyModel() => ptr.ref.lpVtbl.value
          .elementAt(11)
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

  int GetFontSet_1(
    Pointer<Pointer<COMObject>> fontSet,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(12)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Pointer<COMObject>> fontSet,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Pointer<COMObject>> fontSet,
          )>()(
        ptr.ref.lpVtbl,
        fontSet,
      );
}
