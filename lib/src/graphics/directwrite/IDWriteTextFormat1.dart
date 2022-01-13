// IDWriteTextFormat1.dart

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

import '../../graphics/directwrite/IDWriteTextFormat.dart';
import '../../graphics/directwrite/structs.g.dart';
import '../../foundation/structs.g.dart';
import '../../graphics/directwrite/IDWriteFontFallback.dart';

/// @nodoc
const IID_IDWriteTextFormat1 = '{5F174B49-0D8B-4CFB-8BCA-F1CCE9D06C67}';

/// {@category Interface}
/// {@category com}
class IDWriteTextFormat1 extends IDWriteTextFormat {
  // vtable begins at 28, is 8 entries long.
  IDWriteTextFormat1(Pointer<COMObject> ptr) : super(ptr);

  int SetVerticalGlyphOrientation(
    int glyphOrientation,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(28)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Int32 glyphOrientation,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int glyphOrientation,
          )>()(
        ptr.ref.lpVtbl,
        glyphOrientation,
      );

  int GetVerticalGlyphOrientation() => ptr.ref.lpVtbl.value
          .elementAt(29)
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

  int SetLastLineWrapping(
    int isLastLineWrappingEnabled,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(30)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Int32 isLastLineWrappingEnabled,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int isLastLineWrappingEnabled,
          )>()(
        ptr.ref.lpVtbl,
        isLastLineWrappingEnabled,
      );

  int GetLastLineWrapping() => ptr.ref.lpVtbl.value
          .elementAt(31)
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

  int SetOpticalAlignment(
    int opticalAlignment,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(32)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Int32 opticalAlignment,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int opticalAlignment,
          )>()(
        ptr.ref.lpVtbl,
        opticalAlignment,
      );

  int GetOpticalAlignment() => ptr.ref.lpVtbl.value
          .elementAt(33)
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

  int SetFontFallback(
    Pointer<COMObject> fontFallback,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(34)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<COMObject> fontFallback,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<COMObject> fontFallback,
          )>()(
        ptr.ref.lpVtbl,
        fontFallback,
      );

  int GetFontFallback(
    Pointer<Pointer<COMObject>> fontFallback,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(35)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Pointer<COMObject>> fontFallback,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Pointer<COMObject>> fontFallback,
          )>()(
        ptr.ref.lpVtbl,
        fontFallback,
      );
}
