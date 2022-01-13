// IWMDRMMessageParser.dart

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
import '../../media/windowsmediaformat/INSSBuffer.dart';
import '../../media/windowsmediaformat/structs.g.dart';
import '../../foundation/structs.g.dart';

/// @nodoc
const IID_IWMDRMMessageParser = '{A73A0072-25A0-4C99-B4A5-EDE8101A6C39}';

/// {@category Interface}
/// {@category com}
class IWMDRMMessageParser extends IUnknown {
  // vtable begins at 3, is 2 entries long.
  IWMDRMMessageParser(Pointer<COMObject> ptr) : super(ptr);

  int ParseRegistrationReqMsg(
    Pointer<Uint8> pbRegistrationReqMsg,
    int cbRegistrationReqMsg,
    Pointer<Pointer<COMObject>> ppDeviceCert,
    Pointer<DRM_VAL16> pDeviceSerialNumber,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(3)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Uint8> pbRegistrationReqMsg,
            Uint32 cbRegistrationReqMsg,
            Pointer<Pointer<COMObject>> ppDeviceCert,
            Pointer<DRM_VAL16> pDeviceSerialNumber,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Uint8> pbRegistrationReqMsg,
            int cbRegistrationReqMsg,
            Pointer<Pointer<COMObject>> ppDeviceCert,
            Pointer<DRM_VAL16> pDeviceSerialNumber,
          )>()(
        ptr.ref.lpVtbl,
        pbRegistrationReqMsg,
        cbRegistrationReqMsg,
        ppDeviceCert,
        pDeviceSerialNumber,
      );

  int ParseLicenseRequestMsg(
    Pointer<Uint8> pbLicenseRequestMsg,
    int cbLicenseRequestMsg,
    Pointer<Pointer<COMObject>> ppDeviceCert,
    Pointer<DRM_VAL16> pDeviceSerialNumber,
    Pointer<Pointer<Utf16>> pbstrAction,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(4)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Uint8> pbLicenseRequestMsg,
            Uint32 cbLicenseRequestMsg,
            Pointer<Pointer<COMObject>> ppDeviceCert,
            Pointer<DRM_VAL16> pDeviceSerialNumber,
            Pointer<Pointer<Utf16>> pbstrAction,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Uint8> pbLicenseRequestMsg,
            int cbLicenseRequestMsg,
            Pointer<Pointer<COMObject>> ppDeviceCert,
            Pointer<DRM_VAL16> pDeviceSerialNumber,
            Pointer<Pointer<Utf16>> pbstrAction,
          )>()(
        ptr.ref.lpVtbl,
        pbLicenseRequestMsg,
        cbLicenseRequestMsg,
        ppDeviceCert,
        pDeviceSerialNumber,
        pbstrAction,
      );
}
