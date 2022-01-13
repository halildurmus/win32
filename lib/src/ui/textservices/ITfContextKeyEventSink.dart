// ITfContextKeyEventSink.dart

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
const IID_ITfContextKeyEventSink = '{0552BA5D-C835-4934-BF50-846AAA67432F}';

/// {@category Interface}
/// {@category com}
class ITfContextKeyEventSink extends IUnknown {
  // vtable begins at 3, is 4 entries long.
  ITfContextKeyEventSink(Pointer<COMObject> ptr) : super(ptr);

  int OnKeyDown(
    int wParam,
    int lParam,
    Pointer<Int32> pfEaten,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(3)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            IntPtr wParam,
            IntPtr lParam,
            Pointer<Int32> pfEaten,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int wParam,
            int lParam,
            Pointer<Int32> pfEaten,
          )>()(
        ptr.ref.lpVtbl,
        wParam,
        lParam,
        pfEaten,
      );

  int OnKeyUp(
    int wParam,
    int lParam,
    Pointer<Int32> pfEaten,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(4)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            IntPtr wParam,
            IntPtr lParam,
            Pointer<Int32> pfEaten,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int wParam,
            int lParam,
            Pointer<Int32> pfEaten,
          )>()(
        ptr.ref.lpVtbl,
        wParam,
        lParam,
        pfEaten,
      );

  int OnTestKeyDown(
    int wParam,
    int lParam,
    Pointer<Int32> pfEaten,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(5)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            IntPtr wParam,
            IntPtr lParam,
            Pointer<Int32> pfEaten,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int wParam,
            int lParam,
            Pointer<Int32> pfEaten,
          )>()(
        ptr.ref.lpVtbl,
        wParam,
        lParam,
        pfEaten,
      );

  int OnTestKeyUp(
    int wParam,
    int lParam,
    Pointer<Int32> pfEaten,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(6)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            IntPtr wParam,
            IntPtr lParam,
            Pointer<Int32> pfEaten,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int wParam,
            int lParam,
            Pointer<Int32> pfEaten,
          )>()(
        ptr.ref.lpVtbl,
        wParam,
        lParam,
        pfEaten,
      );
}
