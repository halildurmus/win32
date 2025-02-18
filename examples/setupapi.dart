// Enumerates device classes and interfaces

import 'dart:ffi';

import 'package:ffi/ffi.dart';
import 'package:win32/win32.dart';

void main() {
  // https://learn.microsoft.com/windows-hardware/drivers/install/overview-of-device-setup-classes
  using((Arena arena) {
    final deviceGuid = arena<GUID>()..ref.setGUID(GUID_DEVCLASS_NET);

    final hDevInfo = SetupDiGetClassDevs(
      deviceGuid,
      nullptr,
      NULL,
      SETUP_DI_GET_CLASS_DEVS_FLAGS.DIGCF_PRESENT,
    );
    try {
      final deviceHandles = deviceInstancesByClass(hDevInfo, deviceGuid);
      for (final instance in deviceHandles) {
        print('net device instance ${instance.toHexString(32)}');
      }
    } finally {
      SetupDiDestroyDeviceInfoList(hDevInfo);
    }
  });

  // https://learn.microsoft.com/windows-hardware/drivers/install/overview-of-device-interface-classes
  using((Arena arena) {
    final interfaceGuid = arena<GUID>()..ref.setGUID(GUID_DEVINTERFACE_HID);

    final hDevInfo = SetupDiGetClassDevs(
      interfaceGuid,
      nullptr,
      NULL,
      SETUP_DI_GET_CLASS_DEVS_FLAGS.DIGCF_PRESENT |
          SETUP_DI_GET_CLASS_DEVS_FLAGS.DIGCF_DEVICEINTERFACE,
    );
    try {
      final devicePaths = devicePathsByInterface(hDevInfo, interfaceGuid);
      for (final path in devicePaths) {
        print('hid device path $path');
      }
    } finally {
      SetupDiDestroyDeviceInfoList(hDevInfo);
    }
  });
}

Iterable<int> deviceInstancesByClass(
  int hDevInfo,
  Pointer<GUID> deviceGuid,
) sync* {
  final devInfoDataPtr =
      calloc<SP_DEVINFO_DATA>()..ref.cbSize = sizeOf<SP_DEVINFO_DATA>();
  try {
    for (
      var index = 0;
      SetupDiEnumDeviceInfo(hDevInfo, index, devInfoDataPtr) == TRUE;
      index++
    ) {
      yield devInfoDataPtr.ref.DevInst;
    }
    final error = GetLastError();
    if (error != S_OK && error != WIN32_ERROR.ERROR_NO_MORE_ITEMS) {
      throw WindowsException(error);
    }
  } finally {
    free(devInfoDataPtr);
  }
}

Iterable<String> devicePathsByInterface(
  int hDevInfo,
  Pointer<GUID> interfaceGuid,
) sync* {
  final requiredSizePtr = calloc<DWORD>();
  final deviceInterfaceDataPtr =
      calloc<SP_DEVICE_INTERFACE_DATA>()
        ..ref.cbSize = sizeOf<SP_DEVICE_INTERFACE_DATA>();
  try {
    for (
      var index = 0;
      SetupDiEnumDeviceInterfaces(
            hDevInfo,
            nullptr,
            interfaceGuid.cast(),
            index,
            deviceInterfaceDataPtr,
          ) ==
          TRUE;
      index++
    ) {
      SetupDiGetDeviceInterfaceDetail(
        hDevInfo,
        deviceInterfaceDataPtr,
        nullptr,
        0,
        requiredSizePtr,
        nullptr,
      );

      // TODO: Uncomment when https://github.com/halildurmus/win32/issues/384
      // is successfully resolved.

      // if (hr != TRUE) {
      //   final error = GetLastError();
      //   if (error != ERROR_INSUFFICIENT_BUFFER) {
      //     print('SetupDiGetDeviceInterfaceDetail - Get Data Size error: $error');
      //     throw WindowsException(error);
      //   }
      // }

      final deviceInterfaceDetailDataPtr =
          calloc<BYTE>(
              requiredSizePtr.value,
            ).cast<SP_DEVICE_INTERFACE_DETAIL_DATA_>()
            ..ref.cbSize = sizeOf<SP_DEVICE_INTERFACE_DETAIL_DATA_>();

      try {
        final hr = SetupDiGetDeviceInterfaceDetail(
          hDevInfo,
          deviceInterfaceDataPtr,
          deviceInterfaceDetailDataPtr,
          requiredSizePtr.value,
          nullptr,
          nullptr,
        );
        if (hr != TRUE) {
          print(
            'SetupDiGetDeviceInterfaceDetail - Get Data error ${GetLastError()}',
          );
          continue;
        }
        yield deviceInterfaceDetailDataPtr.ref.DevicePath;
      } finally {
        free(deviceInterfaceDetailDataPtr);
      }
    }

    final error = GetLastError();
    if (error != S_OK && error != WIN32_ERROR.ERROR_NO_MORE_ITEMS) {
      throw WindowsException(error);
    }
  } finally {
    free(requiredSizePtr);
    free(deviceInterfaceDataPtr);
  }
}
