// IDWriteTextFormat3.dart

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

import '../../graphics/directwrite/IDWriteTextFormat2.dart';
import '../../graphics/directwrite/structs.g.dart';
import '../../foundation/structs.g.dart';

/// @nodoc
const IID_IDWriteTextFormat3 = '{6D3B5641-E550-430D-A85B-B7BF48A93427}';

/// {@category Interface}
/// {@category com}
class IDWriteTextFormat3 extends IDWriteTextFormat2 {
  // vtable begins at 38, is 5 entries long.
  IDWriteTextFormat3(Pointer<COMObject> ptr) : super(ptr);

  int SetFontAxisValues(
    Pointer<DWRITE_FONT_AXIS_VALUE> fontAxisValues,
    int fontAxisValueCount,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(38)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<DWRITE_FONT_AXIS_VALUE> fontAxisValues,
            Uint32 fontAxisValueCount,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<DWRITE_FONT_AXIS_VALUE> fontAxisValues,
            int fontAxisValueCount,
          )>()(
        ptr.ref.lpVtbl,
        fontAxisValues,
        fontAxisValueCount,
      );

  int GetFontAxisValueCount() => ptr.ref.lpVtbl.value
          .elementAt(39)
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

  int GetFontAxisValues(
    Pointer<DWRITE_FONT_AXIS_VALUE> fontAxisValues,
    int fontAxisValueCount,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(40)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<DWRITE_FONT_AXIS_VALUE> fontAxisValues,
            Uint32 fontAxisValueCount,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<DWRITE_FONT_AXIS_VALUE> fontAxisValues,
            int fontAxisValueCount,
          )>()(
        ptr.ref.lpVtbl,
        fontAxisValues,
        fontAxisValueCount,
      );

  int GetAutomaticFontAxes() => ptr.ref.lpVtbl.value
          .elementAt(41)
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
          .elementAt(42)
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
