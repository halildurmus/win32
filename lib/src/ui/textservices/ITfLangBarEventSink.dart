// ITfLangBarEventSink.dart

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
const IID_ITfLangBarEventSink = '{18A4E900-E0AE-11D2-AFDD-00105A2799B5}';

/// {@category Interface}
/// {@category com}
class ITfLangBarEventSink extends IUnknown {
  // vtable begins at 3, is 6 entries long.
  ITfLangBarEventSink(Pointer<COMObject> ptr) : super(ptr);

  int OnSetFocus(
    int dwThreadId,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(3)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Uint32 dwThreadId,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int dwThreadId,
          )>()(
        ptr.ref.lpVtbl,
        dwThreadId,
      );

  int OnThreadTerminate(
    int dwThreadId,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(4)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Uint32 dwThreadId,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int dwThreadId,
          )>()(
        ptr.ref.lpVtbl,
        dwThreadId,
      );

  int OnThreadItemChange(
    int dwThreadId,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(5)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Uint32 dwThreadId,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int dwThreadId,
          )>()(
        ptr.ref.lpVtbl,
        dwThreadId,
      );

  int OnModalInput(
    int dwThreadId,
    int uMsg,
    int wParam,
    int lParam,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(6)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Uint32 dwThreadId,
            Uint32 uMsg,
            IntPtr wParam,
            IntPtr lParam,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int dwThreadId,
            int uMsg,
            int wParam,
            int lParam,
          )>()(
        ptr.ref.lpVtbl,
        dwThreadId,
        uMsg,
        wParam,
        lParam,
      );

  int ShowFloating(
    int dwFlags,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(7)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Uint32 dwFlags,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int dwFlags,
          )>()(
        ptr.ref.lpVtbl,
        dwFlags,
      );

  int GetItemFloatingRect(
    int dwThreadId,
    Pointer<GUID> rguid,
    Pointer<RECT> prc,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(8)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Uint32 dwThreadId,
            Pointer<GUID> rguid,
            Pointer<RECT> prc,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int dwThreadId,
            Pointer<GUID> rguid,
            Pointer<RECT> prc,
          )>()(
        ptr.ref.lpVtbl,
        dwThreadId,
        rguid,
        prc,
      );
}
