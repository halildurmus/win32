// IWMSInternalAdminNetSource3.dart

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

import '../../media/windowsmediaformat/IWMSInternalAdminNetSource2.dart';
import '../../specialTypes.dart';
import '../../foundation/structs.g.dart';
import '../../media/windowsmediaformat/structs.g.dart';

/// @nodoc
const IID_IWMSInternalAdminNetSource3 =
    '{6B63D08E-4590-44AF-9EB3-57FF1E73BF80}';

/// {@category Interface}
/// {@category com}
class IWMSInternalAdminNetSource3 extends IWMSInternalAdminNetSource2 {
  // vtable begins at 7, is 7 entries long.
  IWMSInternalAdminNetSource3(Pointer<COMObject> ptr) : super(ptr);

  int GetNetSourceCreator2(
    Pointer<Pointer<COMObject>> ppNetSourceCreator,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(7)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Pointer<COMObject>> ppNetSourceCreator,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Pointer<COMObject>> ppNetSourceCreator,
          )>()(
        ptr.ref.lpVtbl,
        ppNetSourceCreator,
      );

  int FindProxyForURLEx2(
    Pointer<Utf16> bstrProtocol,
    Pointer<Utf16> bstrHost,
    Pointer<Utf16> bstrUrl,
    Pointer<Int32> pfProxyEnabled,
    Pointer<Pointer<Utf16>> pbstrProxyServer,
    Pointer<Uint32> pdwProxyPort,
    Pointer<Uint64> pqwProxyContext,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(8)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Utf16> bstrProtocol,
            Pointer<Utf16> bstrHost,
            Pointer<Utf16> bstrUrl,
            Pointer<Int32> pfProxyEnabled,
            Pointer<Pointer<Utf16>> pbstrProxyServer,
            Pointer<Uint32> pdwProxyPort,
            Pointer<Uint64> pqwProxyContext,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Utf16> bstrProtocol,
            Pointer<Utf16> bstrHost,
            Pointer<Utf16> bstrUrl,
            Pointer<Int32> pfProxyEnabled,
            Pointer<Pointer<Utf16>> pbstrProxyServer,
            Pointer<Uint32> pdwProxyPort,
            Pointer<Uint64> pqwProxyContext,
          )>()(
        ptr.ref.lpVtbl,
        bstrProtocol,
        bstrHost,
        bstrUrl,
        pfProxyEnabled,
        pbstrProxyServer,
        pdwProxyPort,
        pqwProxyContext,
      );

  int RegisterProxyFailure2(
    int hrParam,
    int qwProxyContext,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(9)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Int32 hrParam,
            Uint64 qwProxyContext,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int hrParam,
            int qwProxyContext,
          )>()(
        ptr.ref.lpVtbl,
        hrParam,
        qwProxyContext,
      );

  int ShutdownProxyContext2(
    int qwProxyContext,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(10)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Uint64 qwProxyContext,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int qwProxyContext,
          )>()(
        ptr.ref.lpVtbl,
        qwProxyContext,
      );

  int IsUsingIE2(
    int qwProxyContext,
    Pointer<Int32> pfIsUsingIE,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(11)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Uint64 qwProxyContext,
            Pointer<Int32> pfIsUsingIE,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int qwProxyContext,
            Pointer<Int32> pfIsUsingIE,
          )>()(
        ptr.ref.lpVtbl,
        qwProxyContext,
        pfIsUsingIE,
      );

  int SetCredentialsEx2(
    Pointer<Utf16> bstrRealm,
    Pointer<Utf16> bstrUrl,
    int fProxy,
    Pointer<Utf16> bstrName,
    Pointer<Utf16> bstrPassword,
    int fPersist,
    int fConfirmedGood,
    int fClearTextAuthentication,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(12)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Utf16> bstrRealm,
            Pointer<Utf16> bstrUrl,
            Int32 fProxy,
            Pointer<Utf16> bstrName,
            Pointer<Utf16> bstrPassword,
            Int32 fPersist,
            Int32 fConfirmedGood,
            Int32 fClearTextAuthentication,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Utf16> bstrRealm,
            Pointer<Utf16> bstrUrl,
            int fProxy,
            Pointer<Utf16> bstrName,
            Pointer<Utf16> bstrPassword,
            int fPersist,
            int fConfirmedGood,
            int fClearTextAuthentication,
          )>()(
        ptr.ref.lpVtbl,
        bstrRealm,
        bstrUrl,
        fProxy,
        bstrName,
        bstrPassword,
        fPersist,
        fConfirmedGood,
        fClearTextAuthentication,
      );

  int GetCredentialsEx2(
    Pointer<Utf16> bstrRealm,
    Pointer<Utf16> bstrUrl,
    int fProxy,
    int fClearTextAuthentication,
    Pointer<Int32> pdwUrlPolicy,
    Pointer<Pointer<Utf16>> pbstrName,
    Pointer<Pointer<Utf16>> pbstrPassword,
    Pointer<Int32> pfConfirmedGood,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(13)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Utf16> bstrRealm,
            Pointer<Utf16> bstrUrl,
            Int32 fProxy,
            Int32 fClearTextAuthentication,
            Pointer<Int32> pdwUrlPolicy,
            Pointer<Pointer<Utf16>> pbstrName,
            Pointer<Pointer<Utf16>> pbstrPassword,
            Pointer<Int32> pfConfirmedGood,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Utf16> bstrRealm,
            Pointer<Utf16> bstrUrl,
            int fProxy,
            int fClearTextAuthentication,
            Pointer<Int32> pdwUrlPolicy,
            Pointer<Pointer<Utf16>> pbstrName,
            Pointer<Pointer<Utf16>> pbstrPassword,
            Pointer<Int32> pfConfirmedGood,
          )>()(
        ptr.ref.lpVtbl,
        bstrRealm,
        bstrUrl,
        fProxy,
        fClearTextAuthentication,
        pdwUrlPolicy,
        pbstrName,
        pbstrPassword,
        pfConfirmedGood,
      );
}
