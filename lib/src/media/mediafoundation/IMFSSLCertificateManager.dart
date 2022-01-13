// IMFSSLCertificateManager.dart

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
import '../../media/mediafoundation/IMFAsyncCallback.dart';
import '../../specialTypes.dart';
import '../../media/mediafoundation/IMFAsyncResult.dart';

/// @nodoc
const IID_IMFSSLCertificateManager = '{61F7D887-1230-4A8B-AEBA-8AD434D1A64D}';

/// {@category Interface}
/// {@category com}
class IMFSSLCertificateManager extends IUnknown {
  // vtable begins at 3, is 5 entries long.
  IMFSSLCertificateManager(Pointer<COMObject> ptr) : super(ptr);

  int GetClientCertificate(
    Pointer<Utf16> pszURL,
    Pointer<Pointer<Uint8>> ppbData,
    Pointer<Uint32> pcbData,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(3)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Utf16> pszURL,
            Pointer<Pointer<Uint8>> ppbData,
            Pointer<Uint32> pcbData,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Utf16> pszURL,
            Pointer<Pointer<Uint8>> ppbData,
            Pointer<Uint32> pcbData,
          )>()(
        ptr.ref.lpVtbl,
        pszURL,
        ppbData,
        pcbData,
      );

  int BeginGetClientCertificate(
    Pointer<Utf16> pszURL,
    Pointer<COMObject> pCallback,
    Pointer<COMObject> pState,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(4)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Utf16> pszURL,
            Pointer<COMObject> pCallback,
            Pointer<COMObject> pState,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Utf16> pszURL,
            Pointer<COMObject> pCallback,
            Pointer<COMObject> pState,
          )>()(
        ptr.ref.lpVtbl,
        pszURL,
        pCallback,
        pState,
      );

  int EndGetClientCertificate(
    Pointer<COMObject> pResult,
    Pointer<Pointer<Uint8>> ppbData,
    Pointer<Uint32> pcbData,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(5)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<COMObject> pResult,
            Pointer<Pointer<Uint8>> ppbData,
            Pointer<Uint32> pcbData,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<COMObject> pResult,
            Pointer<Pointer<Uint8>> ppbData,
            Pointer<Uint32> pcbData,
          )>()(
        ptr.ref.lpVtbl,
        pResult,
        ppbData,
        pcbData,
      );

  int GetCertificatePolicy(
    Pointer<Utf16> pszURL,
    Pointer<Int32> pfOverrideAutomaticCheck,
    Pointer<Int32> pfClientCertificateAvailable,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(6)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Utf16> pszURL,
            Pointer<Int32> pfOverrideAutomaticCheck,
            Pointer<Int32> pfClientCertificateAvailable,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Utf16> pszURL,
            Pointer<Int32> pfOverrideAutomaticCheck,
            Pointer<Int32> pfClientCertificateAvailable,
          )>()(
        ptr.ref.lpVtbl,
        pszURL,
        pfOverrideAutomaticCheck,
        pfClientCertificateAvailable,
      );

  int OnServerCertificate(
    Pointer<Utf16> pszURL,
    Pointer<Uint8> pbData,
    int cbData,
    Pointer<Int32> pfIsGood,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(7)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Utf16> pszURL,
            Pointer<Uint8> pbData,
            Uint32 cbData,
            Pointer<Int32> pfIsGood,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Utf16> pszURL,
            Pointer<Uint8> pbData,
            int cbData,
            Pointer<Int32> pfIsGood,
          )>()(
        ptr.ref.lpVtbl,
        pszURL,
        pbData,
        cbData,
        pfIsGood,
      );
}
