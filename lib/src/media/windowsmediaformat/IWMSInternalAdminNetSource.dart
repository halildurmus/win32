// IWMSInternalAdminNetSource.dart

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
import '../../media/windowsmediaformat/INSNetSourceCreator.dart';
import '../../foundation/structs.g.dart';

/// @nodoc
const IID_IWMSInternalAdminNetSource = '{8BB23E5F-D127-4AFB-8D02-AE5B66D54C78}';

/// {@category Interface}
/// {@category com}
class IWMSInternalAdminNetSource extends IUnknown {
  // vtable begins at 3, is 11 entries long.
  IWMSInternalAdminNetSource(Pointer<COMObject> ptr) : super(ptr);

  int Initialize(
    Pointer<COMObject> pSharedNamespace,
    Pointer<COMObject> pNamespaceNode,
    Pointer<COMObject> pNetSourceCreator,
    int fEmbeddedInServer,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(3)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<COMObject> pSharedNamespace,
            Pointer<COMObject> pNamespaceNode,
            Pointer<COMObject> pNetSourceCreator,
            Int32 fEmbeddedInServer,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<COMObject> pSharedNamespace,
            Pointer<COMObject> pNamespaceNode,
            Pointer<COMObject> pNetSourceCreator,
            int fEmbeddedInServer,
          )>()(
        ptr.ref.lpVtbl,
        pSharedNamespace,
        pNamespaceNode,
        pNetSourceCreator,
        fEmbeddedInServer,
      );

  int GetNetSourceCreator(
    Pointer<Pointer<COMObject>> ppNetSourceCreator,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(4)
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

  int SetCredentials(
    Pointer<Utf16> bstrRealm,
    Pointer<Utf16> bstrName,
    Pointer<Utf16> bstrPassword,
    int fPersist,
    int fConfirmedGood,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(5)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Utf16> bstrRealm,
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
            Pointer<Utf16> bstrName,
            Pointer<Utf16> bstrPassword,
            int fPersist,
            int fConfirmedGood,
          )>()(
        ptr.ref.lpVtbl,
        bstrRealm,
        bstrName,
        bstrPassword,
        fPersist,
        fConfirmedGood,
      );

  int GetCredentials(
    Pointer<Utf16> bstrRealm,
    Pointer<Pointer<Utf16>> pbstrName,
    Pointer<Pointer<Utf16>> pbstrPassword,
    Pointer<Int32> pfConfirmedGood,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(6)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Utf16> bstrRealm,
            Pointer<Pointer<Utf16>> pbstrName,
            Pointer<Pointer<Utf16>> pbstrPassword,
            Pointer<Int32> pfConfirmedGood,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Utf16> bstrRealm,
            Pointer<Pointer<Utf16>> pbstrName,
            Pointer<Pointer<Utf16>> pbstrPassword,
            Pointer<Int32> pfConfirmedGood,
          )>()(
        ptr.ref.lpVtbl,
        bstrRealm,
        pbstrName,
        pbstrPassword,
        pfConfirmedGood,
      );

  int DeleteCredentials(
    Pointer<Utf16> bstrRealm,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(7)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Utf16> bstrRealm,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Utf16> bstrRealm,
          )>()(
        ptr.ref.lpVtbl,
        bstrRealm,
      );

  int GetCredentialFlags(
    Pointer<Uint32> lpdwFlags,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(8)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Uint32> lpdwFlags,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Uint32> lpdwFlags,
          )>()(
        ptr.ref.lpVtbl,
        lpdwFlags,
      );

  int SetCredentialFlags(
    int dwFlags,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(9)
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

  int FindProxyForURL(
    Pointer<Utf16> bstrProtocol,
    Pointer<Utf16> bstrHost,
    Pointer<Int32> pfProxyEnabled,
    Pointer<Pointer<Utf16>> pbstrProxyServer,
    Pointer<Uint32> pdwProxyPort,
    Pointer<Uint32> pdwProxyContext,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(10)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Utf16> bstrProtocol,
            Pointer<Utf16> bstrHost,
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
            Pointer<Int32> pfProxyEnabled,
            Pointer<Pointer<Utf16>> pbstrProxyServer,
            Pointer<Uint32> pdwProxyPort,
            Pointer<Uint32> pdwProxyContext,
          )>()(
        ptr.ref.lpVtbl,
        bstrProtocol,
        bstrHost,
        pfProxyEnabled,
        pbstrProxyServer,
        pdwProxyPort,
        pdwProxyContext,
      );

  int RegisterProxyFailure(
    int hrParam,
    int dwProxyContext,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(11)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Int32 hrParam,
            Uint32 dwProxyContext,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int hrParam,
            int dwProxyContext,
          )>()(
        ptr.ref.lpVtbl,
        hrParam,
        dwProxyContext,
      );

  int ShutdownProxyContext(
    int dwProxyContext,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(12)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Uint32 dwProxyContext,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int dwProxyContext,
          )>()(
        ptr.ref.lpVtbl,
        dwProxyContext,
      );

  int IsUsingIE(
    int dwProxyContext,
    Pointer<Int32> pfIsUsingIE,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(13)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Uint32 dwProxyContext,
            Pointer<Int32> pfIsUsingIE,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int dwProxyContext,
            Pointer<Int32> pfIsUsingIE,
          )>()(
        ptr.ref.lpVtbl,
        dwProxyContext,
        pfIsUsingIE,
      );
}
