// IDWriteTextLayout3.dart

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

import '../../graphics/directwrite/IDWriteTextLayout2.dart';
import '../../foundation/structs.g.dart';
import '../../graphics/directwrite/structs.g.dart';

/// @nodoc
const IID_IDWriteTextLayout3 = '{07DDCD52-020E-4DE8-AC33-6C953D83F92D}';

/// {@category Interface}
/// {@category com}
class IDWriteTextLayout3 extends IDWriteTextLayout2 {
  // vtable begins at 80, is 4 entries long.
  IDWriteTextLayout3(Pointer<COMObject> ptr) : super(ptr);

  int InvalidateLayout() => ptr.ref.lpVtbl.value
          .elementAt(80)
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

  int SetLineSpacing_1(
    Pointer<DWRITE_LINE_SPACING> lineSpacingOptions,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(81)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<DWRITE_LINE_SPACING> lineSpacingOptions,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<DWRITE_LINE_SPACING> lineSpacingOptions,
          )>()(
        ptr.ref.lpVtbl,
        lineSpacingOptions,
      );

  int GetLineSpacing_1(
    Pointer<DWRITE_LINE_SPACING> lineSpacingOptions,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(82)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<DWRITE_LINE_SPACING> lineSpacingOptions,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<DWRITE_LINE_SPACING> lineSpacingOptions,
          )>()(
        ptr.ref.lpVtbl,
        lineSpacingOptions,
      );

  int GetLineMetrics_1(
    Pointer<DWRITE_LINE_METRICS1> lineMetrics,
    int maxLineCount,
    Pointer<Uint32> actualLineCount,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(83)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<DWRITE_LINE_METRICS1> lineMetrics,
            Uint32 maxLineCount,
            Pointer<Uint32> actualLineCount,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<DWRITE_LINE_METRICS1> lineMetrics,
            int maxLineCount,
            Pointer<Uint32> actualLineCount,
          )>()(
        ptr.ref.lpVtbl,
        lineMetrics,
        maxLineCount,
        actualLineCount,
      );
}
