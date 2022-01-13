// IDWriteFontCollection.dart

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

import '../../system/com/IUnknown.dart';
import '../../graphics/directwrite/IDWriteFontFamily.dart';
import '../../foundation/structs.g.dart';
import '../../graphics/directwrite/IDWriteFontFace.dart';
import '../../graphics/directwrite/IDWriteFont.dart';

/// @nodoc
const IID_IDWriteFontCollection = '{A84CEE02-3EEA-4EEE-A827-87C1A02A0FCC}';

/// {@category Interface}
/// {@category com}
class IDWriteFontCollection extends IUnknown {
  // vtable begins at 3, is 4 entries long.
  IDWriteFontCollection(Pointer<COMObject> ptr) : super(ptr);

  int GetFontFamilyCount() => ptr.ref.lpVtbl.value
          .elementAt(3)
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

  int GetFontFamily(
    int index,
    Pointer<Pointer<COMObject>> fontFamily,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(4)
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

  int FindFamilyName(
    Pointer<Utf16> familyName,
    Pointer<Uint32> index,
    Pointer<Int32> exists,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(5)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Utf16> familyName,
            Pointer<Uint32> index,
            Pointer<Int32> exists,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Utf16> familyName,
            Pointer<Uint32> index,
            Pointer<Int32> exists,
          )>()(
        ptr.ref.lpVtbl,
        familyName,
        index,
        exists,
      );

  int GetFontFromFontFace(
    Pointer<COMObject> fontFace,
    Pointer<Pointer<COMObject>> font,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(6)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<COMObject> fontFace,
            Pointer<Pointer<COMObject>> font,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<COMObject> fontFace,
            Pointer<Pointer<COMObject>> font,
          )>()(
        ptr.ref.lpVtbl,
        fontFace,
        font,
      );
}
