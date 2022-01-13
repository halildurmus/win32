// IInternetHostSecurityManager.dart

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

/// @nodoc
const IID_IInternetHostSecurityManager =
    '{3AF280B6-CB3F-11D0-891E-00C04FB6BFC4}';

/// {@category Interface}
/// {@category com}
class IInternetHostSecurityManager extends IUnknown {
  // vtable begins at 3, is 3 entries long.
  IInternetHostSecurityManager(Pointer<COMObject> ptr) : super(ptr);

  int GetSecurityId(
    Pointer<Uint8> pbSecurityId,
    Pointer<Uint32> pcbSecurityId,
    int dwReserved,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(3)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Uint8> pbSecurityId,
            Pointer<Uint32> pcbSecurityId,
            IntPtr dwReserved,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Uint8> pbSecurityId,
            Pointer<Uint32> pcbSecurityId,
            int dwReserved,
          )>()(
        ptr.ref.lpVtbl,
        pbSecurityId,
        pcbSecurityId,
        dwReserved,
      );

  int ProcessUrlAction(
    int dwAction,
    Pointer<Uint8> pPolicy,
    int cbPolicy,
    Pointer<Uint8> pContext,
    int cbContext,
    int dwFlags,
    int dwReserved,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(4)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
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
            int dwAction,
            Pointer<Uint8> pPolicy,
            int cbPolicy,
            Pointer<Uint8> pContext,
            int cbContext,
            int dwFlags,
            int dwReserved,
          )>()(
        ptr.ref.lpVtbl,
        dwAction,
        pPolicy,
        cbPolicy,
        pContext,
        cbContext,
        dwFlags,
        dwReserved,
      );

  int QueryCustomPolicy(
    Pointer<GUID> guidKey,
    Pointer<Pointer<Uint8>> ppPolicy,
    Pointer<Uint32> pcbPolicy,
    Pointer<Uint8> pContext,
    int cbContext,
    int dwReserved,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(5)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
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
            Pointer<GUID> guidKey,
            Pointer<Pointer<Uint8>> ppPolicy,
            Pointer<Uint32> pcbPolicy,
            Pointer<Uint8> pContext,
            int cbContext,
            int dwReserved,
          )>()(
        ptr.ref.lpVtbl,
        guidKey,
        ppPolicy,
        pcbPolicy,
        pContext,
        cbContext,
        dwReserved,
      );
}
