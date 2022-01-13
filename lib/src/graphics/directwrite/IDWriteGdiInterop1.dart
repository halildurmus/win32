// IDWriteGdiInterop1.dart

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

import '../../graphics/directwrite/IDWriteGdiInterop.dart';
import '../../graphics/gdi/structs.g.dart';
import '../../graphics/directwrite/IDWriteFontCollection.dart';
import '../../graphics/directwrite/IDWriteFont.dart';
import '../../foundation/structs.g.dart';
import '../../graphics/directwrite/IDWriteFontFace.dart';
import '../../globalization/structs.g.dart';
import '../../graphics/directwrite/IDWriteFontSet.dart';

/// @nodoc
const IID_IDWriteGdiInterop1 = '{4556BE70-3ABD-4F70-90BE-421780A6F515}';

/// {@category Interface}
/// {@category com}
class IDWriteGdiInterop1 extends IDWriteGdiInterop {
  // vtable begins at 8, is 4 entries long.
  IDWriteGdiInterop1(Pointer<COMObject> ptr) : super(ptr);

  int CreateFontFromLOGFONT_1(
    Pointer<LOGFONT> logFont,
    Pointer<COMObject> fontCollection,
    Pointer<Pointer<COMObject>> font,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(8)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<LOGFONT> logFont,
            Pointer<COMObject> fontCollection,
            Pointer<Pointer<COMObject>> font,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<LOGFONT> logFont,
            Pointer<COMObject> fontCollection,
            Pointer<Pointer<COMObject>> font,
          )>()(
        ptr.ref.lpVtbl,
        logFont,
        fontCollection,
        font,
      );

  int GetFontSignature_1(
    Pointer<COMObject> fontFace,
    Pointer<FONTSIGNATURE> fontSignature,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(9)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<COMObject> fontFace,
            Pointer<FONTSIGNATURE> fontSignature,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<COMObject> fontFace,
            Pointer<FONTSIGNATURE> fontSignature,
          )>()(
        ptr.ref.lpVtbl,
        fontFace,
        fontSignature,
      );

  int GetFontSignature(
    Pointer<COMObject> font,
    Pointer<FONTSIGNATURE> fontSignature,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(10)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<COMObject> font,
            Pointer<FONTSIGNATURE> fontSignature,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<COMObject> font,
            Pointer<FONTSIGNATURE> fontSignature,
          )>()(
        ptr.ref.lpVtbl,
        font,
        fontSignature,
      );

  int GetMatchingFontsByLOGFONT(
    Pointer<LOGFONT> logFont,
    Pointer<COMObject> fontSet,
    Pointer<Pointer<COMObject>> filteredSet,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(11)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<LOGFONT> logFont,
            Pointer<COMObject> fontSet,
            Pointer<Pointer<COMObject>> filteredSet,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<LOGFONT> logFont,
            Pointer<COMObject> fontSet,
            Pointer<Pointer<COMObject>> filteredSet,
          )>()(
        ptr.ref.lpVtbl,
        logFont,
        fontSet,
        filteredSet,
      );
}
