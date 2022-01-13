// IWebProxy.dart

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

import '../../system/com/IDispatch.dart';
import '../../foundation/structs.g.dart';
import '../../system/updateagent/IStringCollection.dart';
import '../../specialTypes.dart';

/// @nodoc
const IID_IWebProxy = '{174C81FE-AECD-4DAE-B8A0-2C6318DD86A8}';

/// {@category Interface}
/// {@category com}
class IWebProxy extends IDispatch {
  // vtable begins at 7, is 14 entries long.
  IWebProxy(Pointer<COMObject> ptr) : super(ptr);

  Pointer<Utf16> get Address {
    final retValuePtr = calloc<Pointer<Utf16>>();

    try {
      final hr = ptr.ref.lpVtbl.value
          .elementAt(7)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Pointer<Utf16>> retval,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Pointer<Utf16>> retval,
          )>()(ptr.ref.lpVtbl, retValuePtr);

      if (FAILED(hr)) throw WindowsException(hr);

      final retValue = retValuePtr.value;
      return retValue;
    } finally {
      free(retValuePtr);
    }
  }

  set Address(Pointer<Utf16> value) {
    final hr = ptr.ref.lpVtbl.value
        .elementAt(8)
        .cast<
            Pointer<
                NativeFunction<
                    Int32 Function(
          Pointer,
          Pointer<Utf16> value,
        )>>>()
        .value
        .asFunction<
            int Function(
          Pointer,
          Pointer<Utf16> value,
        )>()(ptr.ref.lpVtbl, value);

    if (FAILED(hr)) throw WindowsException(hr);
  }

  Pointer<COMObject> get BypassList {
    final retValuePtr = calloc<Pointer<COMObject>>();

    try {
      final hr = ptr.ref.lpVtbl.value
          .elementAt(9)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Pointer<COMObject>> retval,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Pointer<COMObject>> retval,
          )>()(ptr.ref.lpVtbl, retValuePtr);

      if (FAILED(hr)) throw WindowsException(hr);

      final retValue = retValuePtr.value;
      return retValue;
    } finally {
      free(retValuePtr);
    }
  }

  set BypassList(Pointer<COMObject> value) {
    final hr = ptr.ref.lpVtbl.value
        .elementAt(10)
        .cast<
            Pointer<
                NativeFunction<
                    Int32 Function(
          Pointer,
          Pointer<COMObject> value,
        )>>>()
        .value
        .asFunction<
            int Function(
          Pointer,
          Pointer<COMObject> value,
        )>()(ptr.ref.lpVtbl, value);

    if (FAILED(hr)) throw WindowsException(hr);
  }

  int get BypassProxyOnLocal {
    final retValuePtr = calloc<Int16>();

    try {
      final hr = ptr.ref.lpVtbl.value
          .elementAt(11)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Int16> retval,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Int16> retval,
          )>()(ptr.ref.lpVtbl, retValuePtr);

      if (FAILED(hr)) throw WindowsException(hr);

      final retValue = retValuePtr.value;
      return retValue;
    } finally {
      free(retValuePtr);
    }
  }

  set BypassProxyOnLocal(int value) {
    final hr = ptr.ref.lpVtbl.value
        .elementAt(12)
        .cast<
            Pointer<
                NativeFunction<
                    Int32 Function(
          Pointer,
          Int16 value,
        )>>>()
        .value
        .asFunction<
            int Function(
          Pointer,
          int value,
        )>()(ptr.ref.lpVtbl, value);

    if (FAILED(hr)) throw WindowsException(hr);
  }

  int get ReadOnly {
    final retValuePtr = calloc<Int16>();

    try {
      final hr = ptr.ref.lpVtbl.value
          .elementAt(13)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Int16> retval,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Int16> retval,
          )>()(ptr.ref.lpVtbl, retValuePtr);

      if (FAILED(hr)) throw WindowsException(hr);

      final retValue = retValuePtr.value;
      return retValue;
    } finally {
      free(retValuePtr);
    }
  }

  Pointer<Utf16> get UserName {
    final retValuePtr = calloc<Pointer<Utf16>>();

    try {
      final hr = ptr.ref.lpVtbl.value
          .elementAt(14)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Pointer<Utf16>> retval,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Pointer<Utf16>> retval,
          )>()(ptr.ref.lpVtbl, retValuePtr);

      if (FAILED(hr)) throw WindowsException(hr);

      final retValue = retValuePtr.value;
      return retValue;
    } finally {
      free(retValuePtr);
    }
  }

  set UserName(Pointer<Utf16> value) {
    final hr = ptr.ref.lpVtbl.value
        .elementAt(15)
        .cast<
            Pointer<
                NativeFunction<
                    Int32 Function(
          Pointer,
          Pointer<Utf16> value,
        )>>>()
        .value
        .asFunction<
            int Function(
          Pointer,
          Pointer<Utf16> value,
        )>()(ptr.ref.lpVtbl, value);

    if (FAILED(hr)) throw WindowsException(hr);
  }

  int SetPassword(
    Pointer<Utf16> value,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(16)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Utf16> value,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Utf16> value,
          )>()(
        ptr.ref.lpVtbl,
        value,
      );

  int PromptForCredentials(
    Pointer<COMObject> parentWindow,
    Pointer<Utf16> title,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(17)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<COMObject> parentWindow,
            Pointer<Utf16> title,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<COMObject> parentWindow,
            Pointer<Utf16> title,
          )>()(
        ptr.ref.lpVtbl,
        parentWindow,
        title,
      );

  int PromptForCredentialsFromHwnd(
    int parentWindow,
    Pointer<Utf16> title,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(18)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            IntPtr parentWindow,
            Pointer<Utf16> title,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int parentWindow,
            Pointer<Utf16> title,
          )>()(
        ptr.ref.lpVtbl,
        parentWindow,
        title,
      );

  int get AutoDetect {
    final retValuePtr = calloc<Int16>();

    try {
      final hr = ptr.ref.lpVtbl.value
          .elementAt(19)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Int16> retval,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Int16> retval,
          )>()(ptr.ref.lpVtbl, retValuePtr);

      if (FAILED(hr)) throw WindowsException(hr);

      final retValue = retValuePtr.value;
      return retValue;
    } finally {
      free(retValuePtr);
    }
  }

  set AutoDetect(int value) {
    final hr = ptr.ref.lpVtbl.value
        .elementAt(20)
        .cast<
            Pointer<
                NativeFunction<
                    Int32 Function(
          Pointer,
          Int16 value,
        )>>>()
        .value
        .asFunction<
            int Function(
          Pointer,
          int value,
        )>()(ptr.ref.lpVtbl, value);

    if (FAILED(hr)) throw WindowsException(hr);
  }
}

/// @nodoc
const CLSID_WebProxy = '{650503CF-9108-4DDC-A2CE-6C2341E1C582}';

/// {@category com}
class WebProxy extends IWebProxy {
  WebProxy(Pointer<COMObject> ptr) : super(ptr);

  factory WebProxy.createInstance() {
    final ptr = calloc<COMObject>();
    final clsid = calloc<GUID>()..ref.setGUID(CLSID_WebProxy);
    final iid = calloc<GUID>()..ref.setGUID(IID_IWebProxy);

    try {
      final hr = CoCreateInstance(clsid, nullptr, CLSCTX_ALL, iid, ptr.cast());

      if (FAILED(hr)) throw WindowsException(hr);

      return WebProxy(ptr);
    } finally {
      free(clsid);
      free(iid);
    }
  }
}
