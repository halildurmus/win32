import 'dart:ffi';
import 'package:ffi/ffi.dart';

import 'package:win32/win32.dart';

const IID_IWinHttpRequest = '{016FE2EC-B2C8-45F8-B23B-39E53A75396B}';

class WinHttpRequestAutoLogonPolicy {
  static const AutoLogonPolicy_Always = 0;
  static const AutoLogonPolicy_OnlyIfBypassProxy = 1;
  static const AutoLogonPolicy_Never = 2;
}

const HTTPREQUEST_PROXYSETTING_DEFAULT = 0;
const HTTPREQUEST_PROXYSETTING_PRECONFIG = 0;
const HTTPREQUEST_PROXYSETTING_DIRECT = 1;
const HTTPREQUEST_PROXYSETTING_PROXY = 2;

const HTTPREQUEST_SETCREDENTIALS_FOR_SERVER = 0;
const HTTPREQUEST_SETCREDENTIALS_FOR_PROXY = 1;

class IWinHttpRequest extends IUnknown {
  IWinHttpRequest(super.prt);
  factory IWinHttpRequest.from(IUnknown interface) =>
      IWinHttpRequest(interface.toInterface(IID_IWinHttpRequest));

  int abort() => ptr.ref.vtable
      .elementAt(1)
      .cast<Pointer<NativeFunction<Int32 Function()>>>()
      .value
      .asFunction<int Function()>()();

  int getAllResponseHeaders(
    Pointer<Pointer<Utf16>> bstrHeader,
  ) =>
      ptr.ref.vtable
          .elementAt(2)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(Pointer<Pointer<Utf16>> bstrHeader)>>>()
          .value
          .asFunction<int Function(Pointer<Pointer<Utf16>> bstrHeader)>()(
        bstrHeader,
      );

  int getResponseHeader(
    Pointer<Utf16> bstrHeader,
    Pointer<Pointer<Utf16>> bstrValue,
  ) =>
      ptr.ref.vtable
          .elementAt(3)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
                        Pointer<Utf16> bstrHeader,
                        Pointer<Pointer<Utf16>> bstrValue,
                      )>>>()
          .value
          .asFunction<
              int Function(
                Pointer<Utf16> bstrHeader,
                Pointer<Pointer<Utf16>> bstrValue,
              )>()(
        bstrHeader,
        bstrValue,
      );

  int open(
    Pointer<Utf16> bstrMethod,
    Pointer<Utf16> bstrUrl,
    Pointer<VARIANT> async,
  ) =>
      ptr.ref.vtable
          .elementAt(4)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
                        Pointer<Utf16> bstrMethod,
                        Pointer<Utf16> bstrUrl,
                        Pointer<VARIANT> async,
                      )>>>()
          .value
          .asFunction<
              int Function(
                Pointer<Utf16> bstrMethod,
                Pointer<Utf16> bstrUrl,
                Pointer<VARIANT> async,
              )>()(
        bstrMethod,
        bstrUrl,
        async,
      );

  int send(Pointer<VARIANT> body) => ptr.ref.vtable
      .elementAt(5)
      .cast<Pointer<NativeFunction<Int32 Function(Pointer<VARIANT> body)>>>()
      .value
      .asFunction<int Function(Pointer<VARIANT> body)>()(body);

  int setAutoLogonPolicy(int autoLogonPolicy) => ptr.ref.vtable
          .elementAt(6)
          .cast<
              Pointer<NativeFunction<Int32 Function(Int32 autoLogonPolicy)>>>()
          .value
          .asFunction<int Function(int autoLogonPolicy)>()(
        autoLogonPolicy,
      );

  int setClientCertificate(Pointer<Utf16> bstrClientCertificate) =>
      ptr.ref.vtable
          .elementAt(7)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(Pointer<Utf16> bstrClientCertificate)>>>()
          .value
          .asFunction<int Function(Pointer<Utf16> bstrClientCertificate)>()(
        bstrClientCertificate,
      );

  int setCredentials(
    Pointer<Utf16> bstrUserName,
    Pointer<Utf16> bstrPassword,
    int flags,
  ) =>
      ptr.ref.vtable
          .elementAt(8)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
                        Pointer<Utf16> bstrUserName,
                        Pointer<Utf16> bstrPassword,
                        Int32 flags,
                      )>>>()
          .value
          .asFunction<
              int Function(
                Pointer<Utf16> bstrUserName,
                Pointer<Utf16> bstrPassword,
                int flags,
              )>()(
        bstrUserName,
        bstrPassword,
        flags,
      );

  int setProxy(
    int proxySetting,
    VARIANT proxyServer,
    VARIANT bypassList,
  ) =>
      ptr.ref.vtable
          .elementAt(9)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
                        Int32 proxySetting,
                        VARIANT proxyServer,
                        VARIANT bypassList,
                      )>>>()
          .value
          .asFunction<
              int Function(
                int proxySetting,
                VARIANT proxyServer,
                VARIANT bypassList,
              )>()(
        proxySetting,
        proxyServer,
        bypassList,
      );

  int setRequestHeader(
    Pointer<Utf16> bstrHeader,
    Pointer<Utf16> bstrValue,
  ) =>
      ptr.ref.vtable
          .elementAt(10)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
                        Pointer<Utf16> bstrHeader,
                        Pointer<Utf16> bstrValue,
                      )>>>()
          .value
          .asFunction<
              int Function(
                Pointer<Utf16> bstrHeader,
                Pointer<Utf16> bstrValue,
              )>()(
        bstrHeader,
        bstrValue,
      );
  // TODO
  //int setTimeouts(
  //  Long resolveTimeout,
  //  Long connectTimeout,
  //  Long sendTimeout,
  //  Long receiveTimeout,
  //) =>
  //    ptr.ref.vtable
  //        .elementAt(11)
  //        .cast<
  //            Pointer<
  //                NativeFunction<
  //                    Int32 Function(
  //                      Long resolveTimeout,
  //                      Long connectTimeout,
  //                      Long sendTimeout,
  //                      Long receiveTimeout,
  //                    )>>>()
  //        .value
  //        .asFunction<
  //            int Function(
  //              Long resolveTimeout,
  //              Long connectTimeout,
  //              Long sendTimeout,
  //              Long receiveTimeout,
  //            )>()(
  //      resolveTimeout,
  //      connectTimeout,
  //      sendTimeout,
  //      receiveTimeout,
  //    );
  //int waitForResponse(
  //  VARIANT timeout,
  //  Pointer<VARIANT_Bool> succeeded,
  //) =>
  //    ptr.ref.vtable
  //        .elementAt(12)
  //        .cast<
  //            Pointer<
  //                NativeFunction<
  //                    Int32 Function(
  //                      VARIANT timeout,
  //                      Pointer<VARIANT_Bool> succeeded,
  //                    )>>>()
  //        .value
  //        .asFunction<
  //            int Function(
  //              VARIANT timeout,
  //              Pointer<VARIANT_Bool> succeeded,
  //            )>()(
  //      timeout,
  //      succeeded,
  //    );
}
