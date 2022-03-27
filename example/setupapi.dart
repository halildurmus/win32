import 'dart:convert';
import 'dart:ffi';
import 'dart:typed_data';

import 'package:ffi/ffi.dart';
import 'package:win32/win32.dart';

const GUID_DEVCLASS_NET = '{4D36E972-E325-11CE-BFC1-08002BE10318}';

const GUID_DEVINTERFACE_HID = '{4D1E55B2-F16F-11CF-88CB-001111000030}';

void main() {
  // https://docs.microsoft.com/en-us/windows-hardware/drivers/install/overview-of-device-setup-classes
  using((Arena arena) {
    final deviceGuid = arena<GUID>()..ref.setGUID(GUID_DEVCLASS_NET);

    final deviceInfoSetPtr =
        SetupDiGetClassDevs(deviceGuid, nullptr, NULL, DIGCF_PRESENT);
    try {
      final deviceHandles = _iterateDeviceHandle(deviceInfoSetPtr, deviceGuid);
      for (final handle in deviceHandles) {
        print('net device ${handle.toHexString(32)}');
      }
    } finally {
      SetupDiDestroyDeviceInfoList(deviceInfoSetPtr);
    }
  });

  // https://docs.microsoft.com/en-us/windows-hardware/drivers/install/overview-of-device-interface-classes
  using((Arena arena) {
    final interfaceGuid = arena<GUID>()..ref.setGUID(GUID_DEVINTERFACE_HID);

    final deviceInfoSetPtr = SetupDiGetClassDevs(
        interfaceGuid, nullptr, NULL, DIGCF_PRESENT | DIGCF_DEVICEINTERFACE);
    try {
      final interfacePaths =
          _iterateInterfacePath(deviceInfoSetPtr, interfaceGuid);
      for (final path in interfacePaths) {
        print('hid interface ${utf8.decode(path)}');
      }
    } finally {
      SetupDiDestroyDeviceInfoList(deviceInfoSetPtr);
    }
  });
}

// -----------------------------------------------------------------------------
// SetupDiGetClassDevs constants
// -----------------------------------------------------------------------------
const DIGCF_DEFAULT = 0x00000001;
const DIGCF_PRESENT = 0x00000002;
const DIGCF_ALLCLASSES = 0x00000004;
const DIGCF_PROFILE = 0x00000008;
const DIGCF_DEVICEINTERFACE = 0x00000010;

Iterable<int> _iterateDeviceHandle(
    Pointer deviceInfoSetPtr, Pointer<GUID> deviceGuid) sync* {
  final devInfoDataPtr = calloc<SP_DEVINFO_DATA>()
    ..ref.cbSize = sizeOf<SP_DEVINFO_DATA>();
  try {
    for (var index = 0;
        SetupDiEnumDeviceInfo(deviceInfoSetPtr, index, devInfoDataPtr) == TRUE;
        index++) {
      yield devInfoDataPtr.ref.DevInst;
    }
    final error = GetLastError();
    if (error != S_OK && error != ERROR_NO_MORE_ITEMS) {
      throw WindowsException(error);
    }
  } finally {
    calloc.free(devInfoDataPtr);
  }
}

Iterable<Uint16List> _iterateInterfacePath(
    Pointer deviceInfoSetPtr, Pointer<GUID> interfaceGuid) sync* {
  final requiredSizePtr = calloc<Uint32>();
  final devicInterfaceDataPtr = calloc<SP_DEVICE_INTERFACE_DATA>()
    ..ref.cbSize = sizeOf<SP_DEVICE_INTERFACE_DATA>();
  try {
    for (var index = 0;
        SetupDiEnumDeviceInterfaces(deviceInfoSetPtr, nullptr,
                interfaceGuid.cast(), index, devicInterfaceDataPtr) ==
            TRUE;
        index++) {
      final hr = SetupDiGetDeviceInterfaceDetail(deviceInfoSetPtr,
          devicInterfaceDataPtr, nullptr, 0, requiredSizePtr, nullptr);
      // FIXME https://github.com/timsneath/win32/issues/384
      // if (hr != TRUE) {
      //   final error = GetLastError();
      //   if (error != ERROR_INSUFFICIENT_BUFFER) {
      //     print('SetupDiGetDeviceInterfaceDetail - Get Data Size error: $error');
      //     throw WindowsException(error);
      //   }
      // }

      final detailDataMemoryPtr = calloc<Uint16>(requiredSizePtr.value);

      try {
        final deviceInterfaceDetailDataPtr =
            Pointer<SP_DEVICE_INTERFACE_DETAIL_DATA_>.fromAddress(
                detailDataMemoryPtr.address);
        deviceInterfaceDetailDataPtr.ref.cbSize =
            sizeOf<SP_DEVICE_INTERFACE_DETAIL_DATA_>();

        final hr = SetupDiGetDeviceInterfaceDetail(
            deviceInfoSetPtr,
            devicInterfaceDataPtr,
            deviceInterfaceDetailDataPtr,
            requiredSizePtr.value,
            nullptr,
            nullptr);
        if (hr != TRUE) {
          print(
              'SetupDiGetDeviceInterfaceDetail - Get Data error ${GetLastError()}');
          continue;
        }

        // rawPathData would be freed with detailDataMemoryPtr
        final rawPathData = deviceInterfaceDetailDataPtr
            .getDevicePathData(requiredSizePtr.value);
        yield Uint16List.fromList(rawPathData);
      } finally {
        calloc.free(detailDataMemoryPtr);
      }
    }

    final error = GetLastError();
    if (error != ERROR_NO_MORE_ITEMS) {
      throw WindowsException(error);
    }
  } finally {
    calloc
      ..free(requiredSizePtr)
      ..free(devicInterfaceDataPtr);
  }
}

// ignore: camel_case_extensions
extension Pointer_SP_DEVICE_INTERFACE_DETAIL_DATA_
    on Pointer<SP_DEVICE_INTERFACE_DETAIL_DATA_> {
  /// FIXME [SP_DEVICE_INTERFACE_DETAIL_DATA_.DevicePath]
  Uint16List getDevicePathData(int requiredSize) =>
      Pointer<Uint16>.fromAddress(address).asTypedList(requiredSize).sublist(2);
}
