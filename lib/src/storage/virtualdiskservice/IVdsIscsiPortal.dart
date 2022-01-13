// IVdsIscsiPortal.dart

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
import '../../storage/virtualdiskservice/structs.g.dart';
import '../../foundation/structs.g.dart';
import '../../storage/virtualdiskservice/IVdsSubSystem.dart';
import '../../storage/virtualdiskservice/IEnumVdsObject.dart';

/// @nodoc
const IID_IVdsIscsiPortal = '{7FA1499D-EC85-4A8A-A47B-FF69201FCD34}';

/// {@category Interface}
/// {@category com}
class IVdsIscsiPortal extends IUnknown {
  // vtable begins at 3, is 7 entries long.
  IVdsIscsiPortal(Pointer<COMObject> ptr) : super(ptr);

  int GetProperties(
    Pointer<VDS_ISCSI_PORTAL_PROP> pPortalProp,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(3)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<VDS_ISCSI_PORTAL_PROP> pPortalProp,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<VDS_ISCSI_PORTAL_PROP> pPortalProp,
          )>()(
        ptr.ref.lpVtbl,
        pPortalProp,
      );

  int GetSubSystem(
    Pointer<Pointer<COMObject>> ppSubSystem,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(4)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Pointer<COMObject>> ppSubSystem,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Pointer<COMObject>> ppSubSystem,
          )>()(
        ptr.ref.lpVtbl,
        ppSubSystem,
      );

  int QueryAssociatedPortalGroups(
    Pointer<Pointer<COMObject>> ppEnum,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(5)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Pointer<COMObject>> ppEnum,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Pointer<COMObject>> ppEnum,
          )>()(
        ptr.ref.lpVtbl,
        ppEnum,
      );

  int SetStatus(
    int status,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(6)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Int32 status,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int status,
          )>()(
        ptr.ref.lpVtbl,
        status,
      );

  int SetIpsecTunnelAddress(
    Pointer<VDS_IPADDRESS> pTunnelAddress,
    Pointer<VDS_IPADDRESS> pDestinationAddress,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(7)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<VDS_IPADDRESS> pTunnelAddress,
            Pointer<VDS_IPADDRESS> pDestinationAddress,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<VDS_IPADDRESS> pTunnelAddress,
            Pointer<VDS_IPADDRESS> pDestinationAddress,
          )>()(
        ptr.ref.lpVtbl,
        pTunnelAddress,
        pDestinationAddress,
      );

  int GetIpsecSecurity(
    Pointer<VDS_IPADDRESS> pInitiatorPortalAddress,
    Pointer<Uint64> pullSecurityFlags,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(8)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<VDS_IPADDRESS> pInitiatorPortalAddress,
            Pointer<Uint64> pullSecurityFlags,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<VDS_IPADDRESS> pInitiatorPortalAddress,
            Pointer<Uint64> pullSecurityFlags,
          )>()(
        ptr.ref.lpVtbl,
        pInitiatorPortalAddress,
        pullSecurityFlags,
      );

  int SetIpsecSecurity(
    Pointer<VDS_IPADDRESS> pInitiatorPortalAddress,
    int ullSecurityFlags,
    Pointer<VDS_ISCSI_IPSEC_KEY> pIpsecKey,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(9)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<VDS_IPADDRESS> pInitiatorPortalAddress,
            Uint64 ullSecurityFlags,
            Pointer<VDS_ISCSI_IPSEC_KEY> pIpsecKey,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<VDS_IPADDRESS> pInitiatorPortalAddress,
            int ullSecurityFlags,
            Pointer<VDS_ISCSI_IPSEC_KEY> pIpsecKey,
          )>()(
        ptr.ref.lpVtbl,
        pInitiatorPortalAddress,
        ullSecurityFlags,
        pIpsecKey,
      );
}
