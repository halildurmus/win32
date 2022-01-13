// IWbemLevel1Login.dart

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
import '../../system/wmi/IWbemContext.dart';
import '../../system/wmi/IWbemServices.dart';

/// @nodoc
const IID_IWbemLevel1Login = '{F309AD18-D86A-11D0-A075-00C04FB68820}';

/// {@category Interface}
/// {@category com}
class IWbemLevel1Login extends IUnknown {
  // vtable begins at 3, is 4 entries long.
  IWbemLevel1Login(Pointer<COMObject> ptr) : super(ptr);

  int EstablishPosition(
    Pointer<Utf16> wszLocaleList,
    int dwNumLocales,
    Pointer<Uint32> reserved,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(3)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Utf16> wszLocaleList,
            Uint32 dwNumLocales,
            Pointer<Uint32> reserved,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Utf16> wszLocaleList,
            int dwNumLocales,
            Pointer<Uint32> reserved,
          )>()(
        ptr.ref.lpVtbl,
        wszLocaleList,
        dwNumLocales,
        reserved,
      );

  int RequestChallenge(
    Pointer<Utf16> wszNetworkResource,
    Pointer<Utf16> wszUser,
    Pointer<Uint8> Nonce,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(4)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Utf16> wszNetworkResource,
            Pointer<Utf16> wszUser,
            Pointer<Uint8> Nonce,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Utf16> wszNetworkResource,
            Pointer<Utf16> wszUser,
            Pointer<Uint8> Nonce,
          )>()(
        ptr.ref.lpVtbl,
        wszNetworkResource,
        wszUser,
        Nonce,
      );

  int WBEMLogin(
    Pointer<Utf16> wszPreferredLocale,
    Pointer<Uint8> AccessToken,
    int lFlags,
    Pointer<COMObject> pCtx,
    Pointer<Pointer<COMObject>> ppNamespace,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(5)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Utf16> wszPreferredLocale,
            Pointer<Uint8> AccessToken,
            Int32 lFlags,
            Pointer<COMObject> pCtx,
            Pointer<Pointer<COMObject>> ppNamespace,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Utf16> wszPreferredLocale,
            Pointer<Uint8> AccessToken,
            int lFlags,
            Pointer<COMObject> pCtx,
            Pointer<Pointer<COMObject>> ppNamespace,
          )>()(
        ptr.ref.lpVtbl,
        wszPreferredLocale,
        AccessToken,
        lFlags,
        pCtx,
        ppNamespace,
      );

  int NTLMLogin(
    Pointer<Utf16> wszNetworkResource,
    Pointer<Utf16> wszPreferredLocale,
    int lFlags,
    Pointer<COMObject> pCtx,
    Pointer<Pointer<COMObject>> ppNamespace,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(6)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Utf16> wszNetworkResource,
            Pointer<Utf16> wszPreferredLocale,
            Int32 lFlags,
            Pointer<COMObject> pCtx,
            Pointer<Pointer<COMObject>> ppNamespace,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Utf16> wszNetworkResource,
            Pointer<Utf16> wszPreferredLocale,
            int lFlags,
            Pointer<COMObject> pCtx,
            Pointer<Pointer<COMObject>> ppNamespace,
          )>()(
        ptr.ref.lpVtbl,
        wszNetworkResource,
        wszPreferredLocale,
        lFlags,
        pCtx,
        ppNamespace,
      );
}

/// @nodoc
const CLSID_WbemLevel1Login = '{8BC3F05E-D86B-11D0-A075-00C04FB68820}';

/// {@category com}
class WbemLevel1Login extends IWbemLevel1Login {
  WbemLevel1Login(Pointer<COMObject> ptr) : super(ptr);

  factory WbemLevel1Login.createInstance() {
    final ptr = calloc<COMObject>();
    final clsid = calloc<GUID>()..ref.setGUID(CLSID_WbemLevel1Login);
    final iid = calloc<GUID>()..ref.setGUID(IID_IWbemLevel1Login);

    try {
      final hr = CoCreateInstance(clsid, nullptr, CLSCTX_ALL, iid, ptr.cast());

      if (FAILED(hr)) throw WindowsException(hr);

      return WbemLevel1Login(ptr);
    } finally {
      free(clsid);
      free(iid);
    }
  }
}
