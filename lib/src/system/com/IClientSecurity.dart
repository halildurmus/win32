// IClientSecurity.dart

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
import '../../system/com/structs.g.dart';
import '../../foundation/structs.g.dart';

/// @nodoc
const IID_IClientSecurity = '{0000013D-0000-0000-C000-000000000046}';

/// {@category Interface}
/// {@category com}
class IClientSecurity extends IUnknown {
  // vtable begins at 3, is 3 entries long.
  IClientSecurity(Pointer<COMObject> ptr) : super(ptr);

  int QueryBlanket(
    Pointer<COMObject> pProxy,
    Pointer<Uint32> pAuthnSvc,
    Pointer<Uint32> pAuthzSvc,
    Pointer<Pointer<Uint16>> pServerPrincName,
    Pointer<Uint32> pAuthnLevel,
    Pointer<Uint32> pImpLevel,
    Pointer<Pointer> pAuthInfo,
    Pointer<Int32> pCapabilites,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(3)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<COMObject> pProxy,
            Pointer<Uint32> pAuthnSvc,
            Pointer<Uint32> pAuthzSvc,
            Pointer<Pointer<Uint16>> pServerPrincName,
            Pointer<Uint32> pAuthnLevel,
            Pointer<Uint32> pImpLevel,
            Pointer<Pointer> pAuthInfo,
            Pointer<Int32> pCapabilites,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<COMObject> pProxy,
            Pointer<Uint32> pAuthnSvc,
            Pointer<Uint32> pAuthzSvc,
            Pointer<Pointer<Uint16>> pServerPrincName,
            Pointer<Uint32> pAuthnLevel,
            Pointer<Uint32> pImpLevel,
            Pointer<Pointer> pAuthInfo,
            Pointer<Int32> pCapabilites,
          )>()(
        ptr.ref.lpVtbl,
        pProxy,
        pAuthnSvc,
        pAuthzSvc,
        pServerPrincName,
        pAuthnLevel,
        pImpLevel,
        pAuthInfo,
        pCapabilites,
      );

  int SetBlanket(
    Pointer<COMObject> pProxy,
    int dwAuthnSvc,
    int dwAuthzSvc,
    Pointer<Utf16> pServerPrincName,
    int dwAuthnLevel,
    int dwImpLevel,
    Pointer pAuthInfo,
    int dwCapabilities,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(4)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<COMObject> pProxy,
            Uint32 dwAuthnSvc,
            Uint32 dwAuthzSvc,
            Pointer<Utf16> pServerPrincName,
            Uint32 dwAuthnLevel,
            Uint32 dwImpLevel,
            Pointer pAuthInfo,
            Int32 dwCapabilities,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<COMObject> pProxy,
            int dwAuthnSvc,
            int dwAuthzSvc,
            Pointer<Utf16> pServerPrincName,
            int dwAuthnLevel,
            int dwImpLevel,
            Pointer pAuthInfo,
            int dwCapabilities,
          )>()(
        ptr.ref.lpVtbl,
        pProxy,
        dwAuthnSvc,
        dwAuthzSvc,
        pServerPrincName,
        dwAuthnLevel,
        dwImpLevel,
        pAuthInfo,
        dwCapabilities,
      );

  int CopyProxy(
    Pointer<COMObject> pProxy,
    Pointer<Pointer<COMObject>> ppCopy,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(5)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<COMObject> pProxy,
            Pointer<Pointer<COMObject>> ppCopy,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<COMObject> pProxy,
            Pointer<Pointer<COMObject>> ppCopy,
          )>()(
        ptr.ref.lpVtbl,
        pProxy,
        ppCopy,
      );
}
