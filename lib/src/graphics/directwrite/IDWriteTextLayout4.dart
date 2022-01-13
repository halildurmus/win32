// IDWriteTextLayout4.dart

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

import '../../graphics/directwrite/IDWriteTextLayout3.dart';
import '../../graphics/directwrite/structs.g.dart';
import '../../foundation/structs.g.dart';

/// @nodoc
const IID_IDWriteTextLayout4 = '{05A9BF42-223F-4441-B5FB-8263685F55E9}';

/// {@category Interface}
/// {@category com}
class IDWriteTextLayout4 extends IDWriteTextLayout3 {
  // vtable begins at 84, is 5 entries long.
  IDWriteTextLayout4(Pointer<COMObject> ptr) : super(ptr);

  int SetFontAxisValues(
    Pointer<DWRITE_FONT_AXIS_VALUE> fontAxisValues,
    int fontAxisValueCount,
    DWRITE_TEXT_RANGE textRange,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(84)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<DWRITE_FONT_AXIS_VALUE> fontAxisValues,
            Uint32 fontAxisValueCount,
            DWRITE_TEXT_RANGE textRange,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<DWRITE_FONT_AXIS_VALUE> fontAxisValues,
            int fontAxisValueCount,
            DWRITE_TEXT_RANGE textRange,
          )>()(
        ptr.ref.lpVtbl,
        fontAxisValues,
        fontAxisValueCount,
        textRange,
      );

  int GetFontAxisValueCount(
    int currentPosition,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(85)
          .cast<
              Pointer<
                  NativeFunction<
                      Uint32 Function(
            Pointer,
            Uint32 currentPosition,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int currentPosition,
          )>()(
        ptr.ref.lpVtbl,
        currentPosition,
      );

  int GetFontAxisValues(
    int currentPosition,
    Pointer<DWRITE_FONT_AXIS_VALUE> fontAxisValues,
    int fontAxisValueCount,
    Pointer<DWRITE_TEXT_RANGE> textRange,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(86)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Uint32 currentPosition,
            Pointer<DWRITE_FONT_AXIS_VALUE> fontAxisValues,
            Uint32 fontAxisValueCount,
            Pointer<DWRITE_TEXT_RANGE> textRange,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int currentPosition,
            Pointer<DWRITE_FONT_AXIS_VALUE> fontAxisValues,
            int fontAxisValueCount,
            Pointer<DWRITE_TEXT_RANGE> textRange,
          )>()(
        ptr.ref.lpVtbl,
        currentPosition,
        fontAxisValues,
        fontAxisValueCount,
        textRange,
      );

  int GetAutomaticFontAxes() => ptr.ref.lpVtbl.value
          .elementAt(87)
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

  int SetAutomaticFontAxes(
    int automaticFontAxes,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(88)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Uint32 automaticFontAxes,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int automaticFontAxes,
          )>()(
        ptr.ref.lpVtbl,
        automaticFontAxes,
      );
}
