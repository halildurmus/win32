// ITfKeyEventSink.dart

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
import '../../ui/textservices/ITfContext.dart';

/// @nodoc
const IID_ITfKeyEventSink = '{AA80E7F5-2021-11D2-93E0-0060B067B86E}';

/// {@category Interface}
/// {@category com}
class ITfKeyEventSink extends IUnknown {
  // vtable begins at 3, is 6 entries long.
  ITfKeyEventSink(Pointer<COMObject> ptr) : super(ptr);

  int OnSetFocus(
    int fForeground,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(3)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Int32 fForeground,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int fForeground,
          )>()(
        ptr.ref.lpVtbl,
        fForeground,
      );

  int OnTestKeyDown(
    Pointer<COMObject> pic,
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
            Pointer<COMObject> pic,
            IntPtr wParam,
            IntPtr lParam,
            Pointer<Int32> pfEaten,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<COMObject> pic,
            int wParam,
            int lParam,
            Pointer<Int32> pfEaten,
          )>()(
        ptr.ref.lpVtbl,
        pic,
        wParam,
        lParam,
        pfEaten,
      );

  int OnTestKeyUp(
    Pointer<COMObject> pic,
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
            Pointer<COMObject> pic,
            IntPtr wParam,
            IntPtr lParam,
            Pointer<Int32> pfEaten,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<COMObject> pic,
            int wParam,
            int lParam,
            Pointer<Int32> pfEaten,
          )>()(
        ptr.ref.lpVtbl,
        pic,
        wParam,
        lParam,
        pfEaten,
      );

  int OnKeyDown(
    Pointer<COMObject> pic,
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
            Pointer<COMObject> pic,
            IntPtr wParam,
            IntPtr lParam,
            Pointer<Int32> pfEaten,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<COMObject> pic,
            int wParam,
            int lParam,
            Pointer<Int32> pfEaten,
          )>()(
        ptr.ref.lpVtbl,
        pic,
        wParam,
        lParam,
        pfEaten,
      );

  int OnKeyUp(
    Pointer<COMObject> pic,
    int wParam,
    int lParam,
    Pointer<Int32> pfEaten,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(7)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<COMObject> pic,
            IntPtr wParam,
            IntPtr lParam,
            Pointer<Int32> pfEaten,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<COMObject> pic,
            int wParam,
            int lParam,
            Pointer<Int32> pfEaten,
          )>()(
        ptr.ref.lpVtbl,
        pic,
        wParam,
        lParam,
        pfEaten,
      );

  int OnPreservedKey(
    Pointer<COMObject> pic,
    Pointer<GUID> rguid,
    Pointer<Int32> pfEaten,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(8)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<COMObject> pic,
            Pointer<GUID> rguid,
            Pointer<Int32> pfEaten,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<COMObject> pic,
            Pointer<GUID> rguid,
            Pointer<Int32> pfEaten,
          )>()(
        ptr.ref.lpVtbl,
        pic,
        rguid,
        pfEaten,
      );
}
