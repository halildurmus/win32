// IMSVidGraphSegmentUserInput.dart

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

/// @nodoc
const IID_IMSVidGraphSegmentUserInput =
    '{301C060E-20D9-4587-9B03-F82ED9A9943C}';

/// {@category Interface}
/// {@category com}
class IMSVidGraphSegmentUserInput extends IUnknown {
  // vtable begins at 3, is 8 entries long.
  IMSVidGraphSegmentUserInput(Pointer<COMObject> ptr) : super(ptr);

  int Click() => ptr.ref.lpVtbl.value
          .elementAt(3)
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

  int DblClick() => ptr.ref.lpVtbl.value
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

  int KeyDown(
    Pointer<Int16> KeyCode,
    int ShiftState,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(5)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Int16> KeyCode,
            Int16 ShiftState,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Int16> KeyCode,
            int ShiftState,
          )>()(
        ptr.ref.lpVtbl,
        KeyCode,
        ShiftState,
      );

  int KeyPress(
    Pointer<Int16> KeyAscii,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(6)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Int16> KeyAscii,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Int16> KeyAscii,
          )>()(
        ptr.ref.lpVtbl,
        KeyAscii,
      );

  int KeyUp(
    Pointer<Int16> KeyCode,
    int ShiftState,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(7)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Int16> KeyCode,
            Int16 ShiftState,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Int16> KeyCode,
            int ShiftState,
          )>()(
        ptr.ref.lpVtbl,
        KeyCode,
        ShiftState,
      );

  int MouseDown(
    int ButtonState,
    int ShiftState,
    int x,
    int y,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(8)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Int16 ButtonState,
            Int16 ShiftState,
            Int32 x,
            Int32 y,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int ButtonState,
            int ShiftState,
            int x,
            int y,
          )>()(
        ptr.ref.lpVtbl,
        ButtonState,
        ShiftState,
        x,
        y,
      );

  int MouseMove(
    int ButtonState,
    int ShiftState,
    int x,
    int y,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(9)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Int16 ButtonState,
            Int16 ShiftState,
            Int32 x,
            Int32 y,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int ButtonState,
            int ShiftState,
            int x,
            int y,
          )>()(
        ptr.ref.lpVtbl,
        ButtonState,
        ShiftState,
        x,
        y,
      );

  int MouseUp(
    int ButtonState,
    int ShiftState,
    int x,
    int y,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(10)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Int16 ButtonState,
            Int16 ShiftState,
            Int32 x,
            Int32 y,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int ButtonState,
            int ShiftState,
            int x,
            int y,
          )>()(
        ptr.ref.lpVtbl,
        ButtonState,
        ShiftState,
        x,
        y,
      );
}
