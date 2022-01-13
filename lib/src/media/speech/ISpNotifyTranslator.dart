// ISpNotifyTranslator.dart

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

import '../../media/speech/ISpNotifySink.dart';
import '../../foundation/structs.g.dart';
import '../../media/speech/callbacks.g.dart';
import '../../media/speech/ISpNotifyCallback.dart';

/// @nodoc
const IID_ISpNotifyTranslator = '{ACA16614-5D3D-11D2-960E-00C04F8EE628}';

/// {@category Interface}
/// {@category com}
class ISpNotifyTranslator extends ISpNotifySink {
  // vtable begins at 4, is 6 entries long.
  ISpNotifyTranslator(Pointer<COMObject> ptr) : super(ptr);

  int InitWindowMessage(
    int hWnd,
    int Msg,
    int wParam,
    int lParam,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(4)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            IntPtr hWnd,
            Uint32 Msg,
            IntPtr wParam,
            IntPtr lParam,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int hWnd,
            int Msg,
            int wParam,
            int lParam,
          )>()(
        ptr.ref.lpVtbl,
        hWnd,
        Msg,
        wParam,
        lParam,
      );

  int InitCallback(
    Pointer<Pointer<NativeFunction<SPNOTIFYCALLBACK>>> pfnCallback,
    int wParam,
    int lParam,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(5)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Pointer<NativeFunction<SPNOTIFYCALLBACK>>> pfnCallback,
            IntPtr wParam,
            IntPtr lParam,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Pointer<NativeFunction<SPNOTIFYCALLBACK>>> pfnCallback,
            int wParam,
            int lParam,
          )>()(
        ptr.ref.lpVtbl,
        pfnCallback,
        wParam,
        lParam,
      );

  int InitSpNotifyCallback(
    Pointer<COMObject> pSpCallback,
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
            Pointer<COMObject> pSpCallback,
            IntPtr wParam,
            IntPtr lParam,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<COMObject> pSpCallback,
            int wParam,
            int lParam,
          )>()(
        ptr.ref.lpVtbl,
        pSpCallback,
        wParam,
        lParam,
      );

  int InitWin32Event(
    int hEvent,
    int fCloseHandleOnRelease,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(7)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            IntPtr hEvent,
            Int32 fCloseHandleOnRelease,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int hEvent,
            int fCloseHandleOnRelease,
          )>()(
        ptr.ref.lpVtbl,
        hEvent,
        fCloseHandleOnRelease,
      );

  int Wait(
    int dwMilliseconds,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(8)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Uint32 dwMilliseconds,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int dwMilliseconds,
          )>()(
        ptr.ref.lpVtbl,
        dwMilliseconds,
      );

  int GetEventHandle() => ptr.ref.lpVtbl.value
          .elementAt(9)
          .cast<
              Pointer<
                  NativeFunction<
                      IntPtr Function(
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

/// @nodoc
const CLSID_SpNotifyTranslator = '{E2AE5372-5D40-11D2-960E-00C04F8EE628}';

/// {@category com}
class SpNotifyTranslator extends ISpNotifyTranslator {
  SpNotifyTranslator(Pointer<COMObject> ptr) : super(ptr);

  factory SpNotifyTranslator.createInstance() {
    final ptr = calloc<COMObject>();
    final clsid = calloc<GUID>()..ref.setGUID(CLSID_SpNotifyTranslator);
    final iid = calloc<GUID>()..ref.setGUID(IID_ISpNotifyTranslator);

    try {
      final hr = CoCreateInstance(clsid, nullptr, CLSCTX_ALL, iid, ptr.cast());

      if (FAILED(hr)) throw WindowsException(hr);

      return SpNotifyTranslator(ptr);
    } finally {
      free(clsid);
      free(iid);
    }
  }
}
