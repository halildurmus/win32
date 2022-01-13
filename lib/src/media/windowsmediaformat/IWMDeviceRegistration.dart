// IWMDeviceRegistration.dart

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
import '../../media/windowsmediaformat/structs.g.dart';
import '../../media/windowsmediaformat/IWMRegisteredDevice.dart';
import '../../foundation/structs.g.dart';

/// @nodoc
const IID_IWMDeviceRegistration = '{F6211F03-8D21-4E94-93E6-8510805F2D99}';

/// {@category Interface}
/// {@category com}
class IWMDeviceRegistration extends IUnknown {
  // vtable begins at 3, is 6 entries long.
  IWMDeviceRegistration(Pointer<COMObject> ptr) : super(ptr);

  int RegisterDevice(
    int dwRegisterType,
    Pointer<Uint8> pbCertificate,
    int cbCertificate,
    DRM_VAL16 SerialNumber,
    Pointer<Pointer<COMObject>> ppDevice,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(3)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Uint32 dwRegisterType,
            Pointer<Uint8> pbCertificate,
            Uint32 cbCertificate,
            DRM_VAL16 SerialNumber,
            Pointer<Pointer<COMObject>> ppDevice,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int dwRegisterType,
            Pointer<Uint8> pbCertificate,
            int cbCertificate,
            DRM_VAL16 SerialNumber,
            Pointer<Pointer<COMObject>> ppDevice,
          )>()(
        ptr.ref.lpVtbl,
        dwRegisterType,
        pbCertificate,
        cbCertificate,
        SerialNumber,
        ppDevice,
      );

  int UnregisterDevice(
    int dwRegisterType,
    Pointer<Uint8> pbCertificate,
    int cbCertificate,
    DRM_VAL16 SerialNumber,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(4)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Uint32 dwRegisterType,
            Pointer<Uint8> pbCertificate,
            Uint32 cbCertificate,
            DRM_VAL16 SerialNumber,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int dwRegisterType,
            Pointer<Uint8> pbCertificate,
            int cbCertificate,
            DRM_VAL16 SerialNumber,
          )>()(
        ptr.ref.lpVtbl,
        dwRegisterType,
        pbCertificate,
        cbCertificate,
        SerialNumber,
      );

  int GetRegistrationStats(
    int dwRegisterType,
    Pointer<Uint32> pcRegisteredDevices,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(5)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Uint32 dwRegisterType,
            Pointer<Uint32> pcRegisteredDevices,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int dwRegisterType,
            Pointer<Uint32> pcRegisteredDevices,
          )>()(
        ptr.ref.lpVtbl,
        dwRegisterType,
        pcRegisteredDevices,
      );

  int GetFirstRegisteredDevice(
    int dwRegisterType,
    Pointer<Pointer<COMObject>> ppDevice,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(6)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Uint32 dwRegisterType,
            Pointer<Pointer<COMObject>> ppDevice,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int dwRegisterType,
            Pointer<Pointer<COMObject>> ppDevice,
          )>()(
        ptr.ref.lpVtbl,
        dwRegisterType,
        ppDevice,
      );

  int GetNextRegisteredDevice(
    Pointer<Pointer<COMObject>> ppDevice,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(7)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Pointer<COMObject>> ppDevice,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Pointer<COMObject>> ppDevice,
          )>()(
        ptr.ref.lpVtbl,
        ppDevice,
      );

  int GetRegisteredDeviceByID(
    int dwRegisterType,
    Pointer<Uint8> pbCertificate,
    int cbCertificate,
    DRM_VAL16 SerialNumber,
    Pointer<Pointer<COMObject>> ppDevice,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(8)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Uint32 dwRegisterType,
            Pointer<Uint8> pbCertificate,
            Uint32 cbCertificate,
            DRM_VAL16 SerialNumber,
            Pointer<Pointer<COMObject>> ppDevice,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int dwRegisterType,
            Pointer<Uint8> pbCertificate,
            int cbCertificate,
            DRM_VAL16 SerialNumber,
            Pointer<Pointer<COMObject>> ppDevice,
          )>()(
        ptr.ref.lpVtbl,
        dwRegisterType,
        pbCertificate,
        cbCertificate,
        SerialNumber,
        ppDevice,
      );
}
