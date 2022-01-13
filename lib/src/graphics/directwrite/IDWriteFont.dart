// IDWriteFont.dart

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
import '../../graphics/directwrite/structs.g.dart';
import '../../graphics/directwrite/IDWriteLocalizedStrings.dart';
import '../../graphics/directwrite/IDWriteFontFace.dart';

/// @nodoc
const IID_IDWriteFont = '{ACD16696-8C14-4F5D-877E-FE3FC1D32737}';

/// {@category Interface}
/// {@category com}
class IDWriteFont extends IUnknown {
  // vtable begins at 3, is 11 entries long.
  IDWriteFont(Pointer<COMObject> ptr) : super(ptr);

  int GetFontFamily(
    Pointer<Pointer<COMObject>> fontFamily,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(3)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Pointer<COMObject>> fontFamily,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Pointer<COMObject>> fontFamily,
          )>()(
        ptr.ref.lpVtbl,
        fontFamily,
      );

  int GetWeight() => ptr.ref.lpVtbl.value
          .elementAt(4)
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

  int GetStretch() => ptr.ref.lpVtbl.value
          .elementAt(5)
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

  int GetStyle() => ptr.ref.lpVtbl.value
          .elementAt(6)
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

  int IsSymbolFont() => ptr.ref.lpVtbl.value
          .elementAt(7)
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

  int GetFaceNames(
    Pointer<Pointer<COMObject>> names,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(8)
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

  int GetInformationalStrings(
    int informationalStringID,
    Pointer<Pointer<COMObject>> informationalStrings,
    Pointer<Int32> exists,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(9)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Int32 informationalStringID,
            Pointer<Pointer<COMObject>> informationalStrings,
            Pointer<Int32> exists,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int informationalStringID,
            Pointer<Pointer<COMObject>> informationalStrings,
            Pointer<Int32> exists,
          )>()(
        ptr.ref.lpVtbl,
        informationalStringID,
        informationalStrings,
        exists,
      );

  int GetSimulations() => ptr.ref.lpVtbl.value
          .elementAt(10)
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

  void GetMetrics(
    Pointer<DWRITE_FONT_METRICS> fontMetrics,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(11)
          .cast<
              Pointer<
                  NativeFunction<
                      Void Function(
            Pointer,
            Pointer<DWRITE_FONT_METRICS> fontMetrics,
          )>>>()
          .value
          .asFunction<
              void Function(
            Pointer,
            Pointer<DWRITE_FONT_METRICS> fontMetrics,
          )>()(
        ptr.ref.lpVtbl,
        fontMetrics,
      );

  int HasCharacter(
    int unicodeValue,
    Pointer<Int32> exists,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(12)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Uint32 unicodeValue,
            Pointer<Int32> exists,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int unicodeValue,
            Pointer<Int32> exists,
          )>()(
        ptr.ref.lpVtbl,
        unicodeValue,
        exists,
      );

  int CreateFontFace(
    Pointer<Pointer<COMObject>> fontFace,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(13)
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
}
