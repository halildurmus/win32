// IMFTimedTextStyle.dart

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
const IID_IMFTimedTextStyle = '{09B2455D-B834-4F01-A347-9052E21C450E}';

/// {@category Interface}
/// {@category com}
class IMFTimedTextStyle extends IUnknown {
  // vtable begins at 3, is 13 entries long.
  IMFTimedTextStyle(Pointer<COMObject> ptr) : super(ptr);

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

  int IsExternal() => ptr.ref.lpVtbl.value
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

  int GetFontFamily(
    Pointer<Pointer<Utf16>> fontFamily,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(5)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Pointer<Utf16>> fontFamily,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Pointer<Utf16>> fontFamily,
          )>()(
        ptr.ref.lpVtbl,
        fontFamily,
      );

  int GetFontSize(
    Pointer<Double> fontSize,
    Pointer<Int32> unitType,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(6)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Double> fontSize,
            Pointer<Int32> unitType,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Double> fontSize,
            Pointer<Int32> unitType,
          )>()(
        ptr.ref.lpVtbl,
        fontSize,
        unitType,
      );

  int GetColor(
    Pointer<MFARGB> color,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(7)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<MFARGB> color,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<MFARGB> color,
          )>()(
        ptr.ref.lpVtbl,
        color,
      );

  int GetBackgroundColor(
    Pointer<MFARGB> bgColor,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(8)
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

  int GetShowBackgroundAlways(
    Pointer<Int32> showBackgroundAlways,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(9)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Int32> showBackgroundAlways,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Int32> showBackgroundAlways,
          )>()(
        ptr.ref.lpVtbl,
        showBackgroundAlways,
      );

  int GetFontStyle(
    Pointer<Int32> fontStyle,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(10)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Int32> fontStyle,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Int32> fontStyle,
          )>()(
        ptr.ref.lpVtbl,
        fontStyle,
      );

  int GetBold(
    Pointer<Int32> bold,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(11)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Int32> bold,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Int32> bold,
          )>()(
        ptr.ref.lpVtbl,
        bold,
      );

  int GetRightToLeft(
    Pointer<Int32> rightToLeft,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(12)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Int32> rightToLeft,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Int32> rightToLeft,
          )>()(
        ptr.ref.lpVtbl,
        rightToLeft,
      );

  int GetTextAlignment(
    Pointer<Int32> textAlign,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(13)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Int32> textAlign,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Int32> textAlign,
          )>()(
        ptr.ref.lpVtbl,
        textAlign,
      );

  int GetTextDecoration(
    Pointer<Uint32> textDecoration,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(14)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Uint32> textDecoration,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Uint32> textDecoration,
          )>()(
        ptr.ref.lpVtbl,
        textDecoration,
      );

  int GetTextOutline(
    Pointer<MFARGB> color,
    Pointer<Double> thickness,
    Pointer<Double> blurRadius,
    Pointer<Int32> unitType,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(15)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<MFARGB> color,
            Pointer<Double> thickness,
            Pointer<Double> blurRadius,
            Pointer<Int32> unitType,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<MFARGB> color,
            Pointer<Double> thickness,
            Pointer<Double> blurRadius,
            Pointer<Int32> unitType,
          )>()(
        ptr.ref.lpVtbl,
        color,
        thickness,
        blurRadius,
        unitType,
      );
}
