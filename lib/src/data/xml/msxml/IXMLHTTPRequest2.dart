// IXMLHTTPRequest2.dart

// THIS FILE IS GENERATED AUTOMATICALLY AND SHOULD NOT BE EDITED DIRECTLY.

// ignore_for_file: unused_import, directives_ordering

import 'dart:ffi';

import 'package:ffi/ffi.dart';

import '../../../combase.dart';
import '../../../constants.dart';
import '../../../exceptions.dart';
import '../../../guid.dart';
import '../../../macros.dart';
import '../../../ole32.dart';
import '../../../utils.dart';

import '../../../system/com/IUnknown.dart';
import '../../../foundation/structs.g.dart';
import '../../../data/xml/msxml/IXMLHTTPRequest2Callback.dart';
import '../../../system/com/ISequentialStream.dart';
import '../../../data/xml/msxml/structs.g.dart';

/// @nodoc
const IID_IXMLHTTPRequest2 = '{E5D37DC0-552A-4D52-9CC0-A14D546FBD04}';

/// {@category Interface}
/// {@category com}
class IXMLHTTPRequest2 extends IUnknown {
  // vtable begins at 3, is 10 entries long.
  IXMLHTTPRequest2(Pointer<COMObject> ptr) : super(ptr);

  int Open(
    Pointer<Utf16> pwszMethod,
    Pointer<Utf16> pwszUrl,
    Pointer<COMObject> pStatusCallback,
    Pointer<Utf16> pwszUserName,
    Pointer<Utf16> pwszPassword,
    Pointer<Utf16> pwszProxyUserName,
    Pointer<Utf16> pwszProxyPassword,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(3)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Utf16> pwszMethod,
            Pointer<Utf16> pwszUrl,
            Pointer<COMObject> pStatusCallback,
            Pointer<Utf16> pwszUserName,
            Pointer<Utf16> pwszPassword,
            Pointer<Utf16> pwszProxyUserName,
            Pointer<Utf16> pwszProxyPassword,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Utf16> pwszMethod,
            Pointer<Utf16> pwszUrl,
            Pointer<COMObject> pStatusCallback,
            Pointer<Utf16> pwszUserName,
            Pointer<Utf16> pwszPassword,
            Pointer<Utf16> pwszProxyUserName,
            Pointer<Utf16> pwszProxyPassword,
          )>()(
        ptr.ref.lpVtbl,
        pwszMethod,
        pwszUrl,
        pStatusCallback,
        pwszUserName,
        pwszPassword,
        pwszProxyUserName,
        pwszProxyPassword,
      );

  int Send(
    Pointer<COMObject> pBody,
    int cbBody,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(4)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<COMObject> pBody,
            Uint64 cbBody,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<COMObject> pBody,
            int cbBody,
          )>()(
        ptr.ref.lpVtbl,
        pBody,
        cbBody,
      );

  int Abort() => ptr.ref.lpVtbl.value
          .elementAt(5)
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

  int SetCookie(
    Pointer<XHR_COOKIE> pCookie,
    Pointer<Uint32> pdwCookieState,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(6)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<XHR_COOKIE> pCookie,
            Pointer<Uint32> pdwCookieState,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<XHR_COOKIE> pCookie,
            Pointer<Uint32> pdwCookieState,
          )>()(
        ptr.ref.lpVtbl,
        pCookie,
        pdwCookieState,
      );

  int SetCustomResponseStream(
    Pointer<COMObject> pSequentialStream,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(7)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<COMObject> pSequentialStream,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<COMObject> pSequentialStream,
          )>()(
        ptr.ref.lpVtbl,
        pSequentialStream,
      );

  int SetProperty(
    int eProperty,
    int ullValue,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(8)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Int32 eProperty,
            Uint64 ullValue,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int eProperty,
            int ullValue,
          )>()(
        ptr.ref.lpVtbl,
        eProperty,
        ullValue,
      );

  int SetRequestHeader(
    Pointer<Utf16> pwszHeader,
    Pointer<Utf16> pwszValue,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(9)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Utf16> pwszHeader,
            Pointer<Utf16> pwszValue,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Utf16> pwszHeader,
            Pointer<Utf16> pwszValue,
          )>()(
        ptr.ref.lpVtbl,
        pwszHeader,
        pwszValue,
      );

  int GetAllResponseHeaders(
    Pointer<Pointer<Uint16>> ppwszHeaders,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(10)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Pointer<Uint16>> ppwszHeaders,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Pointer<Uint16>> ppwszHeaders,
          )>()(
        ptr.ref.lpVtbl,
        ppwszHeaders,
      );

  int GetCookie(
    Pointer<Utf16> pwszUrl,
    Pointer<Utf16> pwszName,
    int dwFlags,
    Pointer<Uint32> pcCookies,
    Pointer<Pointer<XHR_COOKIE>> ppCookies,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(11)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Utf16> pwszUrl,
            Pointer<Utf16> pwszName,
            Uint32 dwFlags,
            Pointer<Uint32> pcCookies,
            Pointer<Pointer<XHR_COOKIE>> ppCookies,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Utf16> pwszUrl,
            Pointer<Utf16> pwszName,
            int dwFlags,
            Pointer<Uint32> pcCookies,
            Pointer<Pointer<XHR_COOKIE>> ppCookies,
          )>()(
        ptr.ref.lpVtbl,
        pwszUrl,
        pwszName,
        dwFlags,
        pcCookies,
        ppCookies,
      );

  int GetResponseHeader(
    Pointer<Utf16> pwszHeader,
    Pointer<Pointer<Uint16>> ppwszValue,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(12)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Utf16> pwszHeader,
            Pointer<Pointer<Uint16>> ppwszValue,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Utf16> pwszHeader,
            Pointer<Pointer<Uint16>> ppwszValue,
          )>()(
        ptr.ref.lpVtbl,
        pwszHeader,
        ppwszValue,
      );
}
