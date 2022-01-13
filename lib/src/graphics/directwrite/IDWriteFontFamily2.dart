// IDWriteFontFamily2.dart

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

import '../../graphics/directwrite/IDWriteFontFamily1.dart';
import '../../graphics/directwrite/structs.g.dart';
import '../../graphics/directwrite/IDWriteFontList2.dart';
import '../../foundation/structs.g.dart';
import '../../graphics/directwrite/IDWriteFontSet1.dart';

/// @nodoc
const IID_IDWriteFontFamily2 = '{3ED49E77-A398-4261-B9CF-C126C2131EF3}';

/// {@category Interface}
/// {@category com}
class IDWriteFontFamily2 extends IDWriteFontFamily1 {
  // vtable begins at 12, is 2 entries long.
  IDWriteFontFamily2(Pointer<COMObject> ptr) : super(ptr);

  int GetMatchingFonts_1(
    Pointer<DWRITE_FONT_AXIS_VALUE> fontAxisValues,
    int fontAxisValueCount,
    Pointer<Pointer<COMObject>> matchingFonts,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(12)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<DWRITE_FONT_AXIS_VALUE> fontAxisValues,
            Uint32 fontAxisValueCount,
            Pointer<Pointer<COMObject>> matchingFonts,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<DWRITE_FONT_AXIS_VALUE> fontAxisValues,
            int fontAxisValueCount,
            Pointer<Pointer<COMObject>> matchingFonts,
          )>()(
        ptr.ref.lpVtbl,
        fontAxisValues,
        fontAxisValueCount,
        matchingFonts,
      );

  int GetFontSet(
    Pointer<Pointer<COMObject>> fontSet,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(13)
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
