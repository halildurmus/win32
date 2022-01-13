// IFrameworkInputPane.dart

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
import '../../specialTypes.dart';
import '../../ui/shell/IFrameworkInputPaneHandler.dart';
import '../../foundation/structs.g.dart';

/// @nodoc
const IID_IFrameworkInputPane = '{5752238B-24F0-495A-82F1-2FD593056796}';

/// {@category Interface}
/// {@category com}
class IFrameworkInputPane extends IUnknown {
  // vtable begins at 3, is 4 entries long.
  IFrameworkInputPane(Pointer<COMObject> ptr) : super(ptr);

  int Advise(
    Pointer<COMObject> pWindow,
    Pointer<COMObject> pHandler,
    Pointer<Uint32> pdwCookie,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(3)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<COMObject> pWindow,
            Pointer<COMObject> pHandler,
            Pointer<Uint32> pdwCookie,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<COMObject> pWindow,
            Pointer<COMObject> pHandler,
            Pointer<Uint32> pdwCookie,
          )>()(
        ptr.ref.lpVtbl,
        pWindow,
        pHandler,
        pdwCookie,
      );

  int AdviseWithHWND(
    int hwnd,
    Pointer<COMObject> pHandler,
    Pointer<Uint32> pdwCookie,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(4)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            IntPtr hwnd,
            Pointer<COMObject> pHandler,
            Pointer<Uint32> pdwCookie,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int hwnd,
            Pointer<COMObject> pHandler,
            Pointer<Uint32> pdwCookie,
          )>()(
        ptr.ref.lpVtbl,
        hwnd,
        pHandler,
        pdwCookie,
      );

  int Unadvise(
    int dwCookie,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(5)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Uint32 dwCookie,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int dwCookie,
          )>()(
        ptr.ref.lpVtbl,
        dwCookie,
      );

  int Location(
    Pointer<RECT> prcInputPaneScreenLocation,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(6)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<RECT> prcInputPaneScreenLocation,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<RECT> prcInputPaneScreenLocation,
          )>()(
        ptr.ref.lpVtbl,
        prcInputPaneScreenLocation,
      );
}

/// @nodoc
const CLSID_FrameworkInputPane = '{D5120AA3-46BA-44C5-822D-CA8092C1FC72}';

/// {@category com}
class FrameworkInputPane extends IFrameworkInputPane {
  FrameworkInputPane(Pointer<COMObject> ptr) : super(ptr);

  factory FrameworkInputPane.createInstance() {
    final ptr = calloc<COMObject>();
    final clsid = calloc<GUID>()..ref.setGUID(CLSID_FrameworkInputPane);
    final iid = calloc<GUID>()..ref.setGUID(IID_IFrameworkInputPane);

    try {
      final hr = CoCreateInstance(clsid, nullptr, CLSCTX_ALL, iid, ptr.cast());

      if (FAILED(hr)) throw WindowsException(hr);

      return FrameworkInputPane(ptr);
    } finally {
      free(clsid);
      free(iid);
    }
  }
}
