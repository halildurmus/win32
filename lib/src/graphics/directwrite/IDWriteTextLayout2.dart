// IDWriteTextLayout2.dart

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

import '../../graphics/directwrite/IDWriteTextLayout1.dart';
import '../../graphics/directwrite/structs.g.dart';
import '../../foundation/structs.g.dart';
import '../../graphics/directwrite/IDWriteFontFallback.dart';

/// @nodoc
const IID_IDWriteTextLayout2 = '{1093C18F-8D5E-43F0-B064-0917311B525E}';

/// {@category Interface}
/// {@category com}
class IDWriteTextLayout2 extends IDWriteTextLayout1 {
  // vtable begins at 71, is 9 entries long.
  IDWriteTextLayout2(Pointer<COMObject> ptr) : super(ptr);

  int GetMetrics_1(
    Pointer<DWRITE_TEXT_METRICS1> textMetrics,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(71)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<DWRITE_TEXT_METRICS1> textMetrics,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<DWRITE_TEXT_METRICS1> textMetrics,
          )>()(
        ptr.ref.lpVtbl,
        textMetrics,
      );

  int SetVerticalGlyphOrientation(
    int glyphOrientation,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(72)
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
          .elementAt(73)
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
          .elementAt(74)
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
          .elementAt(75)
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
          .elementAt(76)
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
          .elementAt(77)
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
          .elementAt(78)
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
          .elementAt(79)
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
