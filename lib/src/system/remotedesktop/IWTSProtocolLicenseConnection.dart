// IWTSProtocolLicenseConnection.dart

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
import '../../system/remotedesktop/structs.g.dart';
import '../../foundation/structs.g.dart';

/// @nodoc
const IID_IWTSProtocolLicenseConnection =
    '{23083765-178C-4079-8E4A-FEA6496A4D70}';

/// {@category Interface}
/// {@category com}
class IWTSProtocolLicenseConnection extends IUnknown {
  // vtable begins at 3, is 4 entries long.
  IWTSProtocolLicenseConnection(Pointer<COMObject> ptr) : super(ptr);

  int RequestLicensingCapabilities(
    Pointer<WTS_LICENSE_CAPABILITIES> ppLicenseCapabilities,
    Pointer<Uint32> pcbLicenseCapabilities,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(3)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<WTS_LICENSE_CAPABILITIES> ppLicenseCapabilities,
            Pointer<Uint32> pcbLicenseCapabilities,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<WTS_LICENSE_CAPABILITIES> ppLicenseCapabilities,
            Pointer<Uint32> pcbLicenseCapabilities,
          )>()(
        ptr.ref.lpVtbl,
        ppLicenseCapabilities,
        pcbLicenseCapabilities,
      );

  int SendClientLicense(
    Pointer<Uint8> pClientLicense,
    int cbClientLicense,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(4)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Uint8> pClientLicense,
            Uint32 cbClientLicense,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Uint8> pClientLicense,
            int cbClientLicense,
          )>()(
        ptr.ref.lpVtbl,
        pClientLicense,
        cbClientLicense,
      );

  int RequestClientLicense(
    Pointer<Uint8> Reserve1,
    int Reserve2,
    Pointer<Uint8> ppClientLicense,
    Pointer<Uint32> pcbClientLicense,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(5)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Uint8> Reserve1,
            Uint32 Reserve2,
            Pointer<Uint8> ppClientLicense,
            Pointer<Uint32> pcbClientLicense,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Uint8> Reserve1,
            int Reserve2,
            Pointer<Uint8> ppClientLicense,
            Pointer<Uint32> pcbClientLicense,
          )>()(
        ptr.ref.lpVtbl,
        Reserve1,
        Reserve2,
        ppClientLicense,
        pcbClientLicense,
      );

  int ProtocolComplete(
    int ulComplete,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(6)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Uint32 ulComplete,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int ulComplete,
          )>()(
        ptr.ref.lpVtbl,
        ulComplete,
      );
}
