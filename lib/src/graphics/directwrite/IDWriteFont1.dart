// IDWriteFont1.dart

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

import '../../graphics/directwrite/IDWriteFont.dart';
import '../../graphics/directwrite/structs.g.dart';
import '../../foundation/structs.g.dart';

/// @nodoc
const IID_IDWriteFont1 = '{ACD16696-8C14-4F5D-877E-FE3FC1D32738}';

/// {@category Interface}
/// {@category com}
class IDWriteFont1 extends IDWriteFont {
  // vtable begins at 14, is 4 entries long.
  IDWriteFont1(Pointer<COMObject> ptr) : super(ptr);

  void GetMetrics_1(
    Pointer<DWRITE_FONT_METRICS1> fontMetrics,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(14)
          .cast<
              Pointer<
                  NativeFunction<
                      Void Function(
            Pointer,
            Pointer<DWRITE_FONT_METRICS1> fontMetrics,
          )>>>()
          .value
          .asFunction<
              void Function(
            Pointer,
            Pointer<DWRITE_FONT_METRICS1> fontMetrics,
          )>()(
        ptr.ref.lpVtbl,
        fontMetrics,
      );

  void GetPanose(
    Pointer<DWRITE_PANOSE> panose,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(15)
          .cast<
              Pointer<
                  NativeFunction<
                      Void Function(
            Pointer,
            Pointer<DWRITE_PANOSE> panose,
          )>>>()
          .value
          .asFunction<
              void Function(
            Pointer,
            Pointer<DWRITE_PANOSE> panose,
          )>()(
        ptr.ref.lpVtbl,
        panose,
      );

  int GetUnicodeRanges(
    int maxRangeCount,
    Pointer<DWRITE_UNICODE_RANGE> unicodeRanges,
    Pointer<Uint32> actualRangeCount,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(16)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Uint32 maxRangeCount,
            Pointer<DWRITE_UNICODE_RANGE> unicodeRanges,
            Pointer<Uint32> actualRangeCount,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int maxRangeCount,
            Pointer<DWRITE_UNICODE_RANGE> unicodeRanges,
            Pointer<Uint32> actualRangeCount,
          )>()(
        ptr.ref.lpVtbl,
        maxRangeCount,
        unicodeRanges,
        actualRangeCount,
      );

  int IsMonospacedFont() => ptr.ref.lpVtbl.value
          .elementAt(17)
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
}
