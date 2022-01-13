// IInternetSecurityManagerEx2.dart

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

import '../../../system/com/urlmon/IInternetSecurityManagerEx.dart';
import '../../../system/com/IUri.dart';
import '../../../foundation/structs.g.dart';

/// @nodoc
const IID_IInternetSecurityManagerEx2 =
    '{F1E50292-A795-4117-8E09-2B560A72AC60}';

/// {@category Interface}
/// {@category com}
class IInternetSecurityManagerEx2 extends IInternetSecurityManagerEx {
  // vtable begins at 12, is 4 entries long.
  IInternetSecurityManagerEx2(Pointer<COMObject> ptr) : super(ptr);

  int MapUrlToZoneEx2(
    Pointer<COMObject> pUri,
    Pointer<Uint32> pdwZone,
    int dwFlags,
    Pointer<Pointer<Utf16>> ppwszMappedUrl,
    Pointer<Uint32> pdwOutFlags,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(12)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<COMObject> pUri,
            Pointer<Uint32> pdwZone,
            Uint32 dwFlags,
            Pointer<Pointer<Utf16>> ppwszMappedUrl,
            Pointer<Uint32> pdwOutFlags,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<COMObject> pUri,
            Pointer<Uint32> pdwZone,
            int dwFlags,
            Pointer<Pointer<Utf16>> ppwszMappedUrl,
            Pointer<Uint32> pdwOutFlags,
          )>()(
        ptr.ref.lpVtbl,
        pUri,
        pdwZone,
        dwFlags,
        ppwszMappedUrl,
        pdwOutFlags,
      );

  int ProcessUrlActionEx2(
    Pointer<COMObject> pUri,
    int dwAction,
    Pointer<Uint8> pPolicy,
    int cbPolicy,
    Pointer<Uint8> pContext,
    int cbContext,
    int dwFlags,
    int dwReserved,
    Pointer<Uint32> pdwOutFlags,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(13)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<COMObject> pUri,
            Uint32 dwAction,
            Pointer<Uint8> pPolicy,
            Uint32 cbPolicy,
            Pointer<Uint8> pContext,
            Uint32 cbContext,
            Uint32 dwFlags,
            IntPtr dwReserved,
            Pointer<Uint32> pdwOutFlags,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<COMObject> pUri,
            int dwAction,
            Pointer<Uint8> pPolicy,
            int cbPolicy,
            Pointer<Uint8> pContext,
            int cbContext,
            int dwFlags,
            int dwReserved,
            Pointer<Uint32> pdwOutFlags,
          )>()(
        ptr.ref.lpVtbl,
        pUri,
        dwAction,
        pPolicy,
        cbPolicy,
        pContext,
        cbContext,
        dwFlags,
        dwReserved,
        pdwOutFlags,
      );

  int GetSecurityIdEx2(
    Pointer<COMObject> pUri,
    Pointer<Uint8> pbSecurityId,
    Pointer<Uint32> pcbSecurityId,
    int dwReserved,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(14)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<COMObject> pUri,
            Pointer<Uint8> pbSecurityId,
            Pointer<Uint32> pcbSecurityId,
            IntPtr dwReserved,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<COMObject> pUri,
            Pointer<Uint8> pbSecurityId,
            Pointer<Uint32> pcbSecurityId,
            int dwReserved,
          )>()(
        ptr.ref.lpVtbl,
        pUri,
        pbSecurityId,
        pcbSecurityId,
        dwReserved,
      );

  int QueryCustomPolicyEx2(
    Pointer<COMObject> pUri,
    Pointer<GUID> guidKey,
    Pointer<Pointer<Uint8>> ppPolicy,
    Pointer<Uint32> pcbPolicy,
    Pointer<Uint8> pContext,
    int cbContext,
    int dwReserved,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(15)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<COMObject> pUri,
            Pointer<GUID> guidKey,
            Pointer<Pointer<Uint8>> ppPolicy,
            Pointer<Uint32> pcbPolicy,
            Pointer<Uint8> pContext,
            Uint32 cbContext,
            IntPtr dwReserved,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<COMObject> pUri,
            Pointer<GUID> guidKey,
            Pointer<Pointer<Uint8>> ppPolicy,
            Pointer<Uint32> pcbPolicy,
            Pointer<Uint8> pContext,
            int cbContext,
            int dwReserved,
          )>()(
        ptr.ref.lpVtbl,
        pUri,
        guidKey,
        ppPolicy,
        pcbPolicy,
        pContext,
        cbContext,
        dwReserved,
      );
}
