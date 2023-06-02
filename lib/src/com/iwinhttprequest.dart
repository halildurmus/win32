// iwinhttprequest.dart

// ignore_for_file: unused_import
// ignore_for_file: constant_identifier_names, non_constant_identifier_names
// ignore_for_file: no_leading_underscores_for_local_identifiers

import 'dart:ffi';

import 'package:ffi/ffi.dart';

import '../callbacks.dart';
import '../combase.dart';
import '../constants.dart';
import '../exceptions.dart';
import '../guid.dart';
import '../macros.dart';
import '../structs.g.dart';
import '../utils.dart';
import '../variant.dart';
import '../win32/ole32.g.dart';
import 'idispatch.dart';
import 'iunknown.dart';

/// @nodoc
const IID_IWinHttpRequest = '{016fe2ec-b2c8-45f8-b23b-39e53a75396b}';

/// The IWinHttpRequest interface provides all of the nonevent methods for
/// Microsoft Windows HTTP Services (WinHTTP).
///
/// {@category Interface}
/// {@category com}
class IWinHttpRequest extends IDispatch {
  // vtable begins at 7, is 19 entries long.
  IWinHttpRequest(super.ptr);

  factory IWinHttpRequest.from(IUnknown interface) =>
      IWinHttpRequest(interface.toInterface(IID_IWinHttpRequest));

  int setProxy(int proxySetting, VARIANT proxyServer, VARIANT bypassList) =>
      ptr.ref.vtable
              .elementAt(7)
              .cast<
                  Pointer<
                      NativeFunction<
                          Int32 Function(Pointer, Int32 proxySetting,
                              VARIANT proxyServer, VARIANT bypassList)>>>()
              .value
              .asFunction<
                  int Function(Pointer, int proxySetting, VARIANT proxyServer,
                      VARIANT bypassList)>()(
          ptr.ref.lpVtbl, proxySetting, proxyServer, bypassList);

  int setCredentials(
          Pointer<Utf16> userName, Pointer<Utf16> password, int flags) =>
      ptr
          .ref.vtable
          .elementAt(8)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(Pointer, Pointer<Utf16> userName,
                          Pointer<Utf16> password, Int32 flags)>>>()
          .value
          .asFunction<
              int Function(
                  Pointer,
                  Pointer<Utf16> userName,
                  Pointer<Utf16> password,
                  int flags)>()(ptr.ref.lpVtbl, userName, password, flags);

  int open(Pointer<Utf16> method, Pointer<Utf16> url, VARIANT async) =>
      ptr.ref.vtable
          .elementAt(9)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(Pointer, Pointer<Utf16> method,
                          Pointer<Utf16> url, VARIANT async)>>>()
          .value
          .asFunction<
              int Function(Pointer, Pointer<Utf16> method, Pointer<Utf16> url,
                  VARIANT async)>()(ptr.ref.lpVtbl, method, url, async);

  int setRequestHeader(Pointer<Utf16> header, Pointer<Utf16> value) => ptr
      .ref.vtable
      .elementAt(10)
      .cast<
          Pointer<
              NativeFunction<
                  Int32 Function(
                      Pointer, Pointer<Utf16> header, Pointer<Utf16> value)>>>()
      .value
      .asFunction<
          int Function(Pointer, Pointer<Utf16> header,
              Pointer<Utf16> value)>()(ptr.ref.lpVtbl, header, value);

  int getResponseHeader(Pointer<Utf16> header, Pointer<Pointer<Utf16>> value) =>
      ptr.ref.vtable
              .elementAt(11)
              .cast<
                  Pointer<
                      NativeFunction<
                          Int32 Function(Pointer, Pointer<Utf16> header,
                              Pointer<Pointer<Utf16>> value)>>>()
              .value
              .asFunction<
                  int Function(Pointer, Pointer<Utf16> header,
                      Pointer<Pointer<Utf16>> value)>()(
          ptr.ref.lpVtbl, header, value);

  int getAllResponseHeaders(Pointer<Pointer<Utf16>> headers) => ptr.ref.vtable
      .elementAt(12)
      .cast<
          Pointer<
              NativeFunction<
                  Int32 Function(Pointer, Pointer<Pointer<Utf16>> headers)>>>()
      .value
      .asFunction<
          int Function(Pointer,
              Pointer<Pointer<Utf16>> headers)>()(ptr.ref.lpVtbl, headers);

  int send(VARIANT body) => ptr.ref.vtable
      .elementAt(13)
      .cast<Pointer<NativeFunction<Int32 Function(Pointer, VARIANT body)>>>()
      .value
      .asFunction<int Function(Pointer, VARIANT body)>()(ptr.ref.lpVtbl, body);

  int get status {
    final retValuePtr = calloc<Int32>();

    try {
      final hr = ptr.ref.vtable
          .elementAt(14)
          .cast<
              Pointer<
                  NativeFunction<Int32 Function(Pointer, Pointer<Int32>)>>>()
          .value
          .asFunction<
              int Function(Pointer,
                  Pointer<Int32> status)>()(ptr.ref.lpVtbl, retValuePtr);

      if (FAILED(hr)) throw WindowsException(hr);

      final retValue = retValuePtr.value;
      return retValue;
    } finally {
      free(retValuePtr);
    }
  }

  Pointer<Utf16> get statusText {
    final retValuePtr = calloc<Pointer<Utf16>>();

    try {
      final hr = ptr.ref.vtable
              .elementAt(15)
              .cast<
                  Pointer<
                      NativeFunction<
                          Int32 Function(
                              Pointer, Pointer<Pointer<Utf16>> status)>>>()
              .value
              .asFunction<
                  int Function(Pointer, Pointer<Pointer<Utf16>> status)>()(
          ptr.ref.lpVtbl, retValuePtr);

      if (FAILED(hr)) throw WindowsException(hr);

      final retValue = retValuePtr.value;
      return retValue;
    } finally {
      free(retValuePtr);
    }
  }

  Pointer<Utf16> get responseText {
    final retValuePtr = calloc<Pointer<Utf16>>();

    try {
      final hr = ptr.ref.vtable
          .elementAt(16)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(Pointer, Pointer<Pointer<Utf16>> body)>>>()
          .value
          .asFunction<
              int Function(Pointer,
                  Pointer<Pointer<Utf16>> body)>()(ptr.ref.lpVtbl, retValuePtr);

      if (FAILED(hr)) throw WindowsException(hr);

      final retValue = retValuePtr.value;
      return retValue;
    } finally {
      free(retValuePtr);
    }
  }

  VARIANT get responseBody {
    final retValuePtr = calloc<VARIANT>();

    try {
      final hr = ptr.ref.vtable
              .elementAt(17)
              .cast<
                  Pointer<
                      NativeFunction<
                          Int32 Function(Pointer, Pointer<VARIANT> body)>>>()
              .value
              .asFunction<int Function(Pointer, Pointer<VARIANT> body)>()(
          ptr.ref.lpVtbl, retValuePtr);

      if (FAILED(hr)) throw WindowsException(hr);

      final retValue = retValuePtr.ref;
      return retValue;
    } finally {
      free(retValuePtr);
    }
  }

  VARIANT get responseStream {
    final retValuePtr = calloc<VARIANT>();

    try {
      final hr = ptr.ref.vtable
              .elementAt(18)
              .cast<
                  Pointer<
                      NativeFunction<
                          Int32 Function(Pointer, Pointer<VARIANT> body)>>>()
              .value
              .asFunction<int Function(Pointer, Pointer<VARIANT> body)>()(
          ptr.ref.lpVtbl, retValuePtr);

      if (FAILED(hr)) throw WindowsException(hr);

      final retValue = retValuePtr.ref;
      return retValue;
    } finally {
      free(retValuePtr);
    }
  }

  int get_Option(int option, VARIANT value) => ptr.ref.vtable
          .elementAt(19)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(Pointer, Int32 option, VARIANT value)>>>()
          .value
          .asFunction<int Function(Pointer, int option, VARIANT value)>()(
      ptr.ref.lpVtbl, option, value);

  int put_Option(int option, VARIANT value) => ptr.ref.vtable
          .elementAt(20)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(Pointer, Int32 option, VARIANT value)>>>()
          .value
          .asFunction<int Function(Pointer, int option, VARIANT value)>()(
      ptr.ref.lpVtbl, option, value);

  int waitForResponse(VARIANT timeout, Pointer<Int16> succeeded) => ptr
      .ref.vtable
      .elementAt(21)
      .cast<
          Pointer<
              NativeFunction<
                  Int32 Function(
                      Pointer, VARIANT timeout, Pointer<Int16> succeeded)>>>()
      .value
      .asFunction<
          int Function(Pointer, VARIANT timeout,
              Pointer<Int16> succeeded)>()(ptr.ref.lpVtbl, timeout, succeeded);

  int abort() => ptr.ref.vtable
      .elementAt(22)
      .cast<Pointer<NativeFunction<Int32 Function(Pointer)>>>()
      .value
      .asFunction<int Function(Pointer)>()(ptr.ref.lpVtbl);

  int setTimeouts(int resolveTimeout, int connectTimeout, int sendTimeout,
          int receiveTimeout) =>
      ptr.ref.vtable
              .elementAt(23)
              .cast<
                  Pointer<
                      NativeFunction<
                          Int32 Function(
                              Pointer,
                              Int32 resolveTimeout,
                              Int32 connectTimeout,
                              Int32 sendTimeout,
                              Int32 receiveTimeout)>>>()
              .value
              .asFunction<
                  int Function(Pointer, int resolveTimeout, int connectTimeout,
                      int sendTimeout, int receiveTimeout)>()(ptr.ref.lpVtbl,
          resolveTimeout, connectTimeout, sendTimeout, receiveTimeout);

  int setClientCertificate(Pointer<Utf16> clientCertificate) =>
      ptr.ref.vtable
              .elementAt(24)
              .cast<
                  Pointer<
                      NativeFunction<
                          Int32 Function(
                              Pointer, Pointer<Utf16> clientCertificate)>>>()
              .value
              .asFunction<
                  int Function(Pointer, Pointer<Utf16> clientCertificate)>()(
          ptr.ref.lpVtbl, clientCertificate);

  int setAutoLogonPolicy(int autoLogonPolicy) => ptr.ref.vtable
          .elementAt(25)
          .cast<Pointer<NativeFunction<Int32 Function(Pointer, Int32)>>>()
          .value
          .asFunction<int Function(Pointer, int autoLogonPolicy)>()(
      ptr.ref.lpVtbl, autoLogonPolicy);
}

/// @nodoc
const CLSID_WinHttpRequest = '{2087c2f4-2cef-4953-a8ab-66779b670495}';

/// {@category com}
class WinHttpRequest extends IWinHttpRequest {
  WinHttpRequest(super.ptr);

  factory WinHttpRequest.createInstance() => WinHttpRequest(
      COMObject.createFromID(CLSID_WinHttpRequest, IID_IWinHttpRequest));
}
