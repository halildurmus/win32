// IWMSInternalAdminNetSource2.dart

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
import '../../media/windowsmediaformat/structs.g.dart';

/// @nodoc
const IID_IWMSInternalAdminNetSource2 =
    '{E74D58C3-CF77-4B51-AF17-744687C43EAE}';

/// {@category Interface}
/// {@category com}
class IWMSInternalAdminNetSource2 extends IUnknown {
  // vtable begins at 3, is 4 entries long.
  IWMSInternalAdminNetSource2(Pointer<COMObject> ptr) : super(ptr);

  int SetCredentialsEx(
    Pointer<Utf16> bstrRealm,
    Pointer<Utf16> bstrUrl,
    int fProxy,
    Pointer<Utf16> bstrName,
    Pointer<Utf16> bstrPassword,
    int fPersist,
    int fConfirmedGood,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(3)
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
          )>()(
        ptr.ref.lpVtbl,
        bstrRealm,
        bstrUrl,
        fProxy,
        bstrName,
        bstrPassword,
        fPersist,
        fConfirmedGood,
      );

  int GetCredentialsEx(
    Pointer<Utf16> bstrRealm,
    Pointer<Utf16> bstrUrl,
    int fProxy,
    Pointer<Int32> pdwUrlPolicy,
    Pointer<Pointer<Utf16>> pbstrName,
    Pointer<Pointer<Utf16>> pbstrPassword,
    Pointer<Int32> pfConfirmedGood,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(4)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Utf16> bstrRealm,
            Pointer<Utf16> bstrUrl,
            Int32 fProxy,
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
            Pointer<Int32> pdwUrlPolicy,
            Pointer<Pointer<Utf16>> pbstrName,
            Pointer<Pointer<Utf16>> pbstrPassword,
            Pointer<Int32> pfConfirmedGood,
          )>()(
        ptr.ref.lpVtbl,
        bstrRealm,
        bstrUrl,
        fProxy,
        pdwUrlPolicy,
        pbstrName,
        pbstrPassword,
        pfConfirmedGood,
      );

  int DeleteCredentialsEx(
    Pointer<Utf16> bstrRealm,
    Pointer<Utf16> bstrUrl,
    int fProxy,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(5)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Utf16> bstrRealm,
            Pointer<Utf16> bstrUrl,
            Int32 fProxy,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Utf16> bstrRealm,
            Pointer<Utf16> bstrUrl,
            int fProxy,
          )>()(
        ptr.ref.lpVtbl,
        bstrRealm,
        bstrUrl,
        fProxy,
      );

  int FindProxyForURLEx(
    Pointer<Utf16> bstrProtocol,
    Pointer<Utf16> bstrHost,
    Pointer<Utf16> bstrUrl,
    Pointer<Int32> pfProxyEnabled,
    Pointer<Pointer<Utf16>> pbstrProxyServer,
    Pointer<Uint32> pdwProxyPort,
    Pointer<Uint32> pdwProxyContext,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(6)
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
            Pointer<Uint32> pdwProxyContext,
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
            Pointer<Uint32> pdwProxyContext,
          )>()(
        ptr.ref.lpVtbl,
        bstrProtocol,
        bstrHost,
        bstrUrl,
        pfProxyEnabled,
        pbstrProxyServer,
        pdwProxyPort,
        pdwProxyContext,
      );
}
