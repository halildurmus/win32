// IWebBrowser2.dart

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

import '../../ui/shell/IWebBrowserApp.dart';
import '../../specialTypes.dart';
import '../../foundation/structs.g.dart';
import '../../system/ole/structs.g.dart';

/// @nodoc
const IID_IWebBrowser2 = '{D30C1661-CDAF-11D0-8A3E-00C04FC9E26E}';

/// {@category Interface}
/// {@category com}
class IWebBrowser2 extends IWebBrowserApp {
  // vtable begins at 52, is 19 entries long.
  IWebBrowser2(Pointer<COMObject> ptr) : super(ptr);

  int Navigate2(
    Pointer<VARIANT> URL,
    Pointer<VARIANT> Flags,
    Pointer<VARIANT> TargetFrameName,
    Pointer<VARIANT> PostData,
    Pointer<VARIANT> Headers,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(52)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<VARIANT> URL,
            Pointer<VARIANT> Flags,
            Pointer<VARIANT> TargetFrameName,
            Pointer<VARIANT> PostData,
            Pointer<VARIANT> Headers,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<VARIANT> URL,
            Pointer<VARIANT> Flags,
            Pointer<VARIANT> TargetFrameName,
            Pointer<VARIANT> PostData,
            Pointer<VARIANT> Headers,
          )>()(
        ptr.ref.lpVtbl,
        URL,
        Flags,
        TargetFrameName,
        PostData,
        Headers,
      );

  int QueryStatusWB(
    int cmdID,
    Pointer<Int32> pcmdf,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(53)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Int32 cmdID,
            Pointer<Int32> pcmdf,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int cmdID,
            Pointer<Int32> pcmdf,
          )>()(
        ptr.ref.lpVtbl,
        cmdID,
        pcmdf,
      );

  int ExecWB(
    int cmdID,
    int cmdexecopt,
    Pointer<VARIANT> pvaIn,
    Pointer<VARIANT> pvaOut,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(54)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Int32 cmdID,
            Int32 cmdexecopt,
            Pointer<VARIANT> pvaIn,
            Pointer<VARIANT> pvaOut,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int cmdID,
            int cmdexecopt,
            Pointer<VARIANT> pvaIn,
            Pointer<VARIANT> pvaOut,
          )>()(
        ptr.ref.lpVtbl,
        cmdID,
        cmdexecopt,
        pvaIn,
        pvaOut,
      );

  int ShowBrowserBar(
    Pointer<VARIANT> pvaClsid,
    Pointer<VARIANT> pvarShow,
    Pointer<VARIANT> pvarSize,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(55)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<VARIANT> pvaClsid,
            Pointer<VARIANT> pvarShow,
            Pointer<VARIANT> pvarSize,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<VARIANT> pvaClsid,
            Pointer<VARIANT> pvarShow,
            Pointer<VARIANT> pvarSize,
          )>()(
        ptr.ref.lpVtbl,
        pvaClsid,
        pvarShow,
        pvarSize,
      );

  int get ReadyState {
    final retValuePtr = calloc<Int32>();

    try {
      final hr = ptr.ref.lpVtbl.value
          .elementAt(56)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Int32> plReadyState,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Int32> plReadyState,
          )>()(ptr.ref.lpVtbl, retValuePtr);

      if (FAILED(hr)) throw WindowsException(hr);

      final retValue = retValuePtr.value;
      return retValue;
    } finally {
      free(retValuePtr);
    }
  }

  int get Offline {
    final retValuePtr = calloc<Int16>();

    try {
      final hr = ptr.ref.lpVtbl.value
          .elementAt(57)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Int16> pbOffline,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Int16> pbOffline,
          )>()(ptr.ref.lpVtbl, retValuePtr);

      if (FAILED(hr)) throw WindowsException(hr);

      final retValue = retValuePtr.value;
      return retValue;
    } finally {
      free(retValuePtr);
    }
  }

  set Offline(int value) {
    final hr = ptr.ref.lpVtbl.value
        .elementAt(58)
        .cast<
            Pointer<
                NativeFunction<
                    Int32 Function(
          Pointer,
          Int16 bOffline,
        )>>>()
        .value
        .asFunction<
            int Function(
          Pointer,
          int bOffline,
        )>()(ptr.ref.lpVtbl, value);

    if (FAILED(hr)) throw WindowsException(hr);
  }

  int get Silent {
    final retValuePtr = calloc<Int16>();

    try {
      final hr = ptr.ref.lpVtbl.value
          .elementAt(59)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Int16> pbSilent,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Int16> pbSilent,
          )>()(ptr.ref.lpVtbl, retValuePtr);

      if (FAILED(hr)) throw WindowsException(hr);

      final retValue = retValuePtr.value;
      return retValue;
    } finally {
      free(retValuePtr);
    }
  }

  set Silent(int value) {
    final hr = ptr.ref.lpVtbl.value
        .elementAt(60)
        .cast<
            Pointer<
                NativeFunction<
                    Int32 Function(
          Pointer,
          Int16 bSilent,
        )>>>()
        .value
        .asFunction<
            int Function(
          Pointer,
          int bSilent,
        )>()(ptr.ref.lpVtbl, value);

    if (FAILED(hr)) throw WindowsException(hr);
  }

  int get RegisterAsBrowser {
    final retValuePtr = calloc<Int16>();

    try {
      final hr = ptr.ref.lpVtbl.value
          .elementAt(61)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Int16> pbRegister,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Int16> pbRegister,
          )>()(ptr.ref.lpVtbl, retValuePtr);

      if (FAILED(hr)) throw WindowsException(hr);

      final retValue = retValuePtr.value;
      return retValue;
    } finally {
      free(retValuePtr);
    }
  }

  set RegisterAsBrowser(int value) {
    final hr = ptr.ref.lpVtbl.value
        .elementAt(62)
        .cast<
            Pointer<
                NativeFunction<
                    Int32 Function(
          Pointer,
          Int16 bRegister,
        )>>>()
        .value
        .asFunction<
            int Function(
          Pointer,
          int bRegister,
        )>()(ptr.ref.lpVtbl, value);

    if (FAILED(hr)) throw WindowsException(hr);
  }

  int get RegisterAsDropTarget {
    final retValuePtr = calloc<Int16>();

    try {
      final hr = ptr.ref.lpVtbl.value
          .elementAt(63)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Int16> pbRegister,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Int16> pbRegister,
          )>()(ptr.ref.lpVtbl, retValuePtr);

      if (FAILED(hr)) throw WindowsException(hr);

      final retValue = retValuePtr.value;
      return retValue;
    } finally {
      free(retValuePtr);
    }
  }

  set RegisterAsDropTarget(int value) {
    final hr = ptr.ref.lpVtbl.value
        .elementAt(64)
        .cast<
            Pointer<
                NativeFunction<
                    Int32 Function(
          Pointer,
          Int16 bRegister,
        )>>>()
        .value
        .asFunction<
            int Function(
          Pointer,
          int bRegister,
        )>()(ptr.ref.lpVtbl, value);

    if (FAILED(hr)) throw WindowsException(hr);
  }

  int get TheaterMode {
    final retValuePtr = calloc<Int16>();

    try {
      final hr = ptr.ref.lpVtbl.value
          .elementAt(65)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Int16> pbRegister,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Int16> pbRegister,
          )>()(ptr.ref.lpVtbl, retValuePtr);

      if (FAILED(hr)) throw WindowsException(hr);

      final retValue = retValuePtr.value;
      return retValue;
    } finally {
      free(retValuePtr);
    }
  }

  set TheaterMode(int value) {
    final hr = ptr.ref.lpVtbl.value
        .elementAt(66)
        .cast<
            Pointer<
                NativeFunction<
                    Int32 Function(
          Pointer,
          Int16 bRegister,
        )>>>()
        .value
        .asFunction<
            int Function(
          Pointer,
          int bRegister,
        )>()(ptr.ref.lpVtbl, value);

    if (FAILED(hr)) throw WindowsException(hr);
  }

  int get AddressBar {
    final retValuePtr = calloc<Int16>();

    try {
      final hr = ptr.ref.lpVtbl.value
          .elementAt(67)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Int16> Value,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Int16> Value,
          )>()(ptr.ref.lpVtbl, retValuePtr);

      if (FAILED(hr)) throw WindowsException(hr);

      final retValue = retValuePtr.value;
      return retValue;
    } finally {
      free(retValuePtr);
    }
  }

  set AddressBar(int value) {
    final hr = ptr.ref.lpVtbl.value
        .elementAt(68)
        .cast<
            Pointer<
                NativeFunction<
                    Int32 Function(
          Pointer,
          Int16 Value,
        )>>>()
        .value
        .asFunction<
            int Function(
          Pointer,
          int Value,
        )>()(ptr.ref.lpVtbl, value);

    if (FAILED(hr)) throw WindowsException(hr);
  }

  int get Resizable {
    final retValuePtr = calloc<Int16>();

    try {
      final hr = ptr.ref.lpVtbl.value
          .elementAt(69)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Int16> Value,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Int16> Value,
          )>()(ptr.ref.lpVtbl, retValuePtr);

      if (FAILED(hr)) throw WindowsException(hr);

      final retValue = retValuePtr.value;
      return retValue;
    } finally {
      free(retValuePtr);
    }
  }

  set Resizable(int value) {
    final hr = ptr.ref.lpVtbl.value
        .elementAt(70)
        .cast<
            Pointer<
                NativeFunction<
                    Int32 Function(
          Pointer,
          Int16 Value,
        )>>>()
        .value
        .asFunction<
            int Function(
          Pointer,
          int Value,
        )>()(ptr.ref.lpVtbl, value);

    if (FAILED(hr)) throw WindowsException(hr);
  }
}
