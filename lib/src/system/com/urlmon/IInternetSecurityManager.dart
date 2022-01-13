// IInternetSecurityManager.dart

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
import '../../../system/com/urlmon/IInternetSecurityMgrSite.dart';
import '../../../foundation/structs.g.dart';
import '../../../system/com/IEnumString.dart';

/// @nodoc
const IID_IInternetSecurityManager = '{79EAC9EE-BAF9-11CE-8C82-00AA004BA90B}';

/// {@category Interface}
/// {@category com}
class IInternetSecurityManager extends IUnknown {
  // vtable begins at 3, is 8 entries long.
  IInternetSecurityManager(Pointer<COMObject> ptr) : super(ptr);

  int SetSecuritySite(
    Pointer<COMObject> pSite,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(3)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<COMObject> pSite,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<COMObject> pSite,
          )>()(
        ptr.ref.lpVtbl,
        pSite,
      );

  int GetSecuritySite(
    Pointer<Pointer<COMObject>> ppSite,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(4)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Pointer<COMObject>> ppSite,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Pointer<COMObject>> ppSite,
          )>()(
        ptr.ref.lpVtbl,
        ppSite,
      );

  int MapUrlToZone(
    Pointer<Utf16> pwszUrl,
    Pointer<Uint32> pdwZone,
    int dwFlags,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(5)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Utf16> pwszUrl,
            Pointer<Uint32> pdwZone,
            Uint32 dwFlags,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Utf16> pwszUrl,
            Pointer<Uint32> pdwZone,
            int dwFlags,
          )>()(
        ptr.ref.lpVtbl,
        pwszUrl,
        pdwZone,
        dwFlags,
      );

  int GetSecurityId(
    Pointer<Utf16> pwszUrl,
    Pointer<Uint8> pbSecurityId,
    Pointer<Uint32> pcbSecurityId,
    int dwReserved,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(6)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Utf16> pwszUrl,
            Pointer<Uint8> pbSecurityId,
            Pointer<Uint32> pcbSecurityId,
            IntPtr dwReserved,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Utf16> pwszUrl,
            Pointer<Uint8> pbSecurityId,
            Pointer<Uint32> pcbSecurityId,
            int dwReserved,
          )>()(
        ptr.ref.lpVtbl,
        pwszUrl,
        pbSecurityId,
        pcbSecurityId,
        dwReserved,
      );

  int ProcessUrlAction(
    Pointer<Utf16> pwszUrl,
    int dwAction,
    Pointer<Uint8> pPolicy,
    int cbPolicy,
    Pointer<Uint8> pContext,
    int cbContext,
    int dwFlags,
    int dwReserved,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(7)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Utf16> pwszUrl,
            Uint32 dwAction,
            Pointer<Uint8> pPolicy,
            Uint32 cbPolicy,
            Pointer<Uint8> pContext,
            Uint32 cbContext,
            Uint32 dwFlags,
            Uint32 dwReserved,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Utf16> pwszUrl,
            int dwAction,
            Pointer<Uint8> pPolicy,
            int cbPolicy,
            Pointer<Uint8> pContext,
            int cbContext,
            int dwFlags,
            int dwReserved,
          )>()(
        ptr.ref.lpVtbl,
        pwszUrl,
        dwAction,
        pPolicy,
        cbPolicy,
        pContext,
        cbContext,
        dwFlags,
        dwReserved,
      );

  int QueryCustomPolicy(
    Pointer<Utf16> pwszUrl,
    Pointer<GUID> guidKey,
    Pointer<Pointer<Uint8>> ppPolicy,
    Pointer<Uint32> pcbPolicy,
    Pointer<Uint8> pContext,
    int cbContext,
    int dwReserved,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(8)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Utf16> pwszUrl,
            Pointer<GUID> guidKey,
            Pointer<Pointer<Uint8>> ppPolicy,
            Pointer<Uint32> pcbPolicy,
            Pointer<Uint8> pContext,
            Uint32 cbContext,
            Uint32 dwReserved,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Utf16> pwszUrl,
            Pointer<GUID> guidKey,
            Pointer<Pointer<Uint8>> ppPolicy,
            Pointer<Uint32> pcbPolicy,
            Pointer<Uint8> pContext,
            int cbContext,
            int dwReserved,
          )>()(
        ptr.ref.lpVtbl,
        pwszUrl,
        guidKey,
        ppPolicy,
        pcbPolicy,
        pContext,
        cbContext,
        dwReserved,
      );

  int SetZoneMapping(
    int dwZone,
    Pointer<Utf16> lpszPattern,
    int dwFlags,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(9)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Uint32 dwZone,
            Pointer<Utf16> lpszPattern,
            Uint32 dwFlags,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int dwZone,
            Pointer<Utf16> lpszPattern,
            int dwFlags,
          )>()(
        ptr.ref.lpVtbl,
        dwZone,
        lpszPattern,
        dwFlags,
      );

  int GetZoneMappings(
    int dwZone,
    Pointer<Pointer<COMObject>> ppenumString,
    int dwFlags,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(10)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Uint32 dwZone,
            Pointer<Pointer<COMObject>> ppenumString,
            Uint32 dwFlags,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int dwZone,
            Pointer<Pointer<COMObject>> ppenumString,
            int dwFlags,
          )>()(
        ptr.ref.lpVtbl,
        dwZone,
        ppenumString,
        dwFlags,
      );
}
