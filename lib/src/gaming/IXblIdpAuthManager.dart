// IXblIdpAuthManager.dart

// THIS FILE IS GENERATED AUTOMATICALLY AND SHOULD NOT BE EDITED DIRECTLY.

// ignore_for_file: unused_import, directives_ordering

import 'dart:ffi';

import 'package:ffi/ffi.dart';

import '../combase.dart';
import '../constants.dart';
import '../exceptions.dart';
import '../guid.dart';
import '../macros.dart';
import '../ole32.dart';
import '../utils.dart';

import '../system/com/IUnknown.dart';
import '../foundation/structs.g.dart';
import '../gaming/IXblIdpAuthTokenResult.dart';

/// @nodoc
const IID_IXblIdpAuthManager = '{EB5DDB08-8BBF-449B-AC21-B02DDEB3B136}';

/// {@category Interface}
/// {@category com}
class IXblIdpAuthManager extends IUnknown {
  // vtable begins at 3, is 6 entries long.
  IXblIdpAuthManager(Pointer<COMObject> ptr) : super(ptr);

  int SetGamerAccount(
    Pointer<Utf16> msaAccountId,
    Pointer<Utf16> xuid,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(3)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Utf16> msaAccountId,
            Pointer<Utf16> xuid,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Utf16> msaAccountId,
            Pointer<Utf16> xuid,
          )>()(
        ptr.ref.lpVtbl,
        msaAccountId,
        xuid,
      );

  int GetGamerAccount(
    Pointer<Pointer<Utf16>> msaAccountId,
    Pointer<Pointer<Utf16>> xuid,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(4)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Pointer<Utf16>> msaAccountId,
            Pointer<Pointer<Utf16>> xuid,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Pointer<Utf16>> msaAccountId,
            Pointer<Pointer<Utf16>> xuid,
          )>()(
        ptr.ref.lpVtbl,
        msaAccountId,
        xuid,
      );

  int SetAppViewInitialized(
    Pointer<Utf16> appSid,
    Pointer<Utf16> msaAccountId,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(5)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Utf16> appSid,
            Pointer<Utf16> msaAccountId,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Utf16> appSid,
            Pointer<Utf16> msaAccountId,
          )>()(
        ptr.ref.lpVtbl,
        appSid,
        msaAccountId,
      );

  int GetEnvironment(
    Pointer<Pointer<Utf16>> environment,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(6)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Pointer<Utf16>> environment,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Pointer<Utf16>> environment,
          )>()(
        ptr.ref.lpVtbl,
        environment,
      );

  int GetSandbox(
    Pointer<Pointer<Utf16>> sandbox,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(7)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Pointer<Utf16>> sandbox,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Pointer<Utf16>> sandbox,
          )>()(
        ptr.ref.lpVtbl,
        sandbox,
      );

  int GetTokenAndSignatureWithTokenResult(
    Pointer<Utf16> msaAccountId,
    Pointer<Utf16> appSid,
    Pointer<Utf16> msaTarget,
    Pointer<Utf16> msaPolicy,
    Pointer<Utf16> httpMethod,
    Pointer<Utf16> uri,
    Pointer<Utf16> headers,
    Pointer<Uint8> body,
    int bodySize,
    int forceRefresh,
    Pointer<Pointer<COMObject>> result,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(8)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Utf16> msaAccountId,
            Pointer<Utf16> appSid,
            Pointer<Utf16> msaTarget,
            Pointer<Utf16> msaPolicy,
            Pointer<Utf16> httpMethod,
            Pointer<Utf16> uri,
            Pointer<Utf16> headers,
            Pointer<Uint8> body,
            Uint32 bodySize,
            Int32 forceRefresh,
            Pointer<Pointer<COMObject>> result,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Utf16> msaAccountId,
            Pointer<Utf16> appSid,
            Pointer<Utf16> msaTarget,
            Pointer<Utf16> msaPolicy,
            Pointer<Utf16> httpMethod,
            Pointer<Utf16> uri,
            Pointer<Utf16> headers,
            Pointer<Uint8> body,
            int bodySize,
            int forceRefresh,
            Pointer<Pointer<COMObject>> result,
          )>()(
        ptr.ref.lpVtbl,
        msaAccountId,
        appSid,
        msaTarget,
        msaPolicy,
        httpMethod,
        uri,
        headers,
        body,
        bodySize,
        forceRefresh,
        result,
      );
}

/// @nodoc
const CLSID_XblIdpAuthManager = '{CE23534B-56D8-4978-86A2-7EE570640468}';

/// {@category com}
class XblIdpAuthManager extends IXblIdpAuthManager {
  XblIdpAuthManager(Pointer<COMObject> ptr) : super(ptr);

  factory XblIdpAuthManager.createInstance() {
    final ptr = calloc<COMObject>();
    final clsid = calloc<GUID>()..ref.setGUID(CLSID_XblIdpAuthManager);
    final iid = calloc<GUID>()..ref.setGUID(IID_IXblIdpAuthManager);

    try {
      final hr = CoCreateInstance(clsid, nullptr, CLSCTX_ALL, iid, ptr.cast());

      if (FAILED(hr)) throw WindowsException(hr);

      return XblIdpAuthManager(ptr);
    } finally {
      free(clsid);
      free(iid);
    }
  }
}
