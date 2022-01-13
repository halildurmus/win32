// IWMDMDevice.dart

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
import '../../media/devicemanager/structs.g.dart';
import '../../media/devicemanager/IWMDMEnumStorage.dart';
import '../../specialTypes.dart';
import '../../media/audio/structs.g.dart';
import '../../media/directshow/structs.g.dart';

/// @nodoc
const IID_IWMDMDevice = '{1DCB3A02-33ED-11D3-8470-00C04F79DBC0}';

/// {@category Interface}
/// {@category com}
class IWMDMDevice extends IUnknown {
  // vtable begins at 3, is 11 entries long.
  IWMDMDevice(Pointer<COMObject> ptr) : super(ptr);

  int GetName(
    Pointer<Utf16> pwszName,
    int nMaxChars,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(3)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Utf16> pwszName,
            Uint32 nMaxChars,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Utf16> pwszName,
            int nMaxChars,
          )>()(
        ptr.ref.lpVtbl,
        pwszName,
        nMaxChars,
      );

  int GetManufacturer(
    Pointer<Utf16> pwszName,
    int nMaxChars,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(4)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Utf16> pwszName,
            Uint32 nMaxChars,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Utf16> pwszName,
            int nMaxChars,
          )>()(
        ptr.ref.lpVtbl,
        pwszName,
        nMaxChars,
      );

  int GetVersion(
    Pointer<Uint32> pdwVersion,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(5)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Uint32> pdwVersion,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Uint32> pdwVersion,
          )>()(
        ptr.ref.lpVtbl,
        pdwVersion,
      );

  int GetType(
    Pointer<Uint32> pdwType,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(6)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Uint32> pdwType,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Uint32> pdwType,
          )>()(
        ptr.ref.lpVtbl,
        pdwType,
      );

  int GetSerialNumber(
    Pointer<WMDMID> pSerialNumber,
    Pointer<Uint8> abMac,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(7)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<WMDMID> pSerialNumber,
            Pointer<Uint8> abMac,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<WMDMID> pSerialNumber,
            Pointer<Uint8> abMac,
          )>()(
        ptr.ref.lpVtbl,
        pSerialNumber,
        abMac,
      );

  int GetPowerSource(
    Pointer<Uint32> pdwPowerSource,
    Pointer<Uint32> pdwPercentRemaining,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(8)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Uint32> pdwPowerSource,
            Pointer<Uint32> pdwPercentRemaining,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Uint32> pdwPowerSource,
            Pointer<Uint32> pdwPercentRemaining,
          )>()(
        ptr.ref.lpVtbl,
        pdwPowerSource,
        pdwPercentRemaining,
      );

  int GetStatus(
    Pointer<Uint32> pdwStatus,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(9)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Uint32> pdwStatus,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Uint32> pdwStatus,
          )>()(
        ptr.ref.lpVtbl,
        pdwStatus,
      );

  int GetDeviceIcon(
    Pointer<Uint32> hIcon,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(10)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Uint32> hIcon,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Uint32> hIcon,
          )>()(
        ptr.ref.lpVtbl,
        hIcon,
      );

  int EnumStorage(
    Pointer<Pointer<COMObject>> ppEnumStorage,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(11)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Pointer<COMObject>> ppEnumStorage,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Pointer<COMObject>> ppEnumStorage,
          )>()(
        ptr.ref.lpVtbl,
        ppEnumStorage,
      );

  int GetFormatSupport(
    Pointer<Pointer<WAVEFORMATEX>> ppFormatEx,
    Pointer<Uint32> pnFormatCount,
    Pointer<Pointer<Pointer<Utf16>>> pppwszMimeType,
    Pointer<Uint32> pnMimeTypeCount,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(12)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Pointer<WAVEFORMATEX>> ppFormatEx,
            Pointer<Uint32> pnFormatCount,
            Pointer<Pointer<Pointer<Utf16>>> pppwszMimeType,
            Pointer<Uint32> pnMimeTypeCount,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Pointer<WAVEFORMATEX>> ppFormatEx,
            Pointer<Uint32> pnFormatCount,
            Pointer<Pointer<Pointer<Utf16>>> pppwszMimeType,
            Pointer<Uint32> pnMimeTypeCount,
          )>()(
        ptr.ref.lpVtbl,
        ppFormatEx,
        pnFormatCount,
        pppwszMimeType,
        pnMimeTypeCount,
      );

  int SendOpaqueCommand(
    Pointer<OPAQUECOMMAND> pCommand,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(13)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<OPAQUECOMMAND> pCommand,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<OPAQUECOMMAND> pCommand,
          )>()(
        ptr.ref.lpVtbl,
        pCommand,
      );
}

/// @nodoc
const CLSID_WMDMDevice = '{807B3CDF-357A-11D3-8471-00C04F79DBC0}';

/// {@category com}
class WMDMDevice extends IWMDMDevice {
  WMDMDevice(Pointer<COMObject> ptr) : super(ptr);

  factory WMDMDevice.createInstance() {
    final ptr = calloc<COMObject>();
    final clsid = calloc<GUID>()..ref.setGUID(CLSID_WMDMDevice);
    final iid = calloc<GUID>()..ref.setGUID(IID_IWMDMDevice);

    try {
      final hr = CoCreateInstance(clsid, nullptr, CLSCTX_ALL, iid, ptr.cast());

      if (FAILED(hr)) throw WindowsException(hr);

      return WMDMDevice(ptr);
    } finally {
      free(clsid);
      free(iid);
    }
  }
}
