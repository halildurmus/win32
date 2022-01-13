// IMFTimedTextRegion.dart

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
import '../../foundation/structs.g.dart';
import '../../media/mediafoundation/structs.g.dart';

/// @nodoc
const IID_IMFTimedTextRegion = '{C8D22AFC-BC47-4BDF-9B04-787E49CE3F58}';

/// {@category Interface}
/// {@category com}
class IMFTimedTextRegion extends IUnknown {
  // vtable begins at 3, is 12 entries long.
  IMFTimedTextRegion(Pointer<COMObject> ptr) : super(ptr);

  int GetName(
    Pointer<Pointer<Utf16>> name,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(3)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Pointer<Utf16>> name,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Pointer<Utf16>> name,
          )>()(
        ptr.ref.lpVtbl,
        name,
      );

  int GetPosition(
    Pointer<Double> pX,
    Pointer<Double> pY,
    Pointer<Int32> unitType,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(4)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Double> pX,
            Pointer<Double> pY,
            Pointer<Int32> unitType,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Double> pX,
            Pointer<Double> pY,
            Pointer<Int32> unitType,
          )>()(
        ptr.ref.lpVtbl,
        pX,
        pY,
        unitType,
      );

  int GetExtent(
    Pointer<Double> pWidth,
    Pointer<Double> pHeight,
    Pointer<Int32> unitType,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(5)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Double> pWidth,
            Pointer<Double> pHeight,
            Pointer<Int32> unitType,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Double> pWidth,
            Pointer<Double> pHeight,
            Pointer<Int32> unitType,
          )>()(
        ptr.ref.lpVtbl,
        pWidth,
        pHeight,
        unitType,
      );

  int GetBackgroundColor(
    Pointer<MFARGB> bgColor,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(6)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<MFARGB> bgColor,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<MFARGB> bgColor,
          )>()(
        ptr.ref.lpVtbl,
        bgColor,
      );

  int GetWritingMode(
    Pointer<Int32> writingMode,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(7)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Int32> writingMode,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Int32> writingMode,
          )>()(
        ptr.ref.lpVtbl,
        writingMode,
      );

  int GetDisplayAlignment(
    Pointer<Int32> displayAlign,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(8)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Int32> displayAlign,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Int32> displayAlign,
          )>()(
        ptr.ref.lpVtbl,
        displayAlign,
      );

  int GetLineHeight(
    Pointer<Double> pLineHeight,
    Pointer<Int32> unitType,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(9)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Double> pLineHeight,
            Pointer<Int32> unitType,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Double> pLineHeight,
            Pointer<Int32> unitType,
          )>()(
        ptr.ref.lpVtbl,
        pLineHeight,
        unitType,
      );

  int GetClipOverflow(
    Pointer<Int32> clipOverflow,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(10)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Int32> clipOverflow,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Int32> clipOverflow,
          )>()(
        ptr.ref.lpVtbl,
        clipOverflow,
      );

  int GetPadding(
    Pointer<Double> before,
    Pointer<Double> start,
    Pointer<Double> after,
    Pointer<Double> end,
    Pointer<Int32> unitType,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(11)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Double> before,
            Pointer<Double> start,
            Pointer<Double> after,
            Pointer<Double> end,
            Pointer<Int32> unitType,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Double> before,
            Pointer<Double> start,
            Pointer<Double> after,
            Pointer<Double> end,
            Pointer<Int32> unitType,
          )>()(
        ptr.ref.lpVtbl,
        before,
        start,
        after,
        end,
        unitType,
      );

  int GetWrap(
    Pointer<Int32> wrap,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(12)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Int32> wrap,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Int32> wrap,
          )>()(
        ptr.ref.lpVtbl,
        wrap,
      );

  int GetZIndex(
    Pointer<Int32> zIndex,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(13)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Int32> zIndex,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Int32> zIndex,
          )>()(
        ptr.ref.lpVtbl,
        zIndex,
      );

  int GetScrollMode(
    Pointer<Int32> scrollMode,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(14)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Int32> scrollMode,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Int32> scrollMode,
          )>()(
        ptr.ref.lpVtbl,
        scrollMode,
      );
}
