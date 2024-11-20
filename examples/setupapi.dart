// Enumerates device classes and interfaces.

import 'dart:ffi';

import 'package:win32/win32.dart';

void main() {
  // https://learn.microsoft.com/windows-hardware/drivers/install/overview-of-device-setup-classes
  final deviceGuid = GUID_DEVCLASS_NET;
  var hDevInfo = SetupDiGetClassDevs(deviceGuid.ptr, null, null, DIGCF_PRESENT);
  try {
    final deviceHandles = deviceInstancesByClass(hDevInfo, deviceGuid);
    for (final instance in deviceHandles) {
      print('net device instance ${instance.toHexString()}');
    }
  } finally {
    SetupDiDestroyDeviceInfoList(hDevInfo);
  }

  // https://learn.microsoft.com/windows-hardware/drivers/install/overview-of-device-interface-classes
  final interfaceGuid = GUID_DEVINTERFACE_HID;
  hDevInfo = SetupDiGetClassDevs(
    interfaceGuid.ptr,
    null,
    null,
    DIGCF_PRESENT | DIGCF_DEVICEINTERFACE,
  );
  try {
    final devicePaths = devicePathsByInterface(hDevInfo, interfaceGuid);
    for (final path in devicePaths) {
      print('hid device path $path');
    }
  } finally {
    SetupDiDestroyDeviceInfoList(hDevInfo);
  }
}

Iterable<int> deviceInstancesByClass(int hDevInfo, Guid deviceGuid) sync* {
  final devInfoDataPtr = loggingCalloc<SP_DEVINFO_DATA>()
    ..ref.cbSize = sizeOf<SP_DEVINFO_DATA>();
  try {
    for (
      var index = 0;
      SetupDiEnumDeviceInfo(hDevInfo, index, devInfoDataPtr);
      index++
    ) {
      yield devInfoDataPtr.ref.DevInst;
    }
    final error = GetLastError();
    if (error != S_OK && error != ERROR_NO_MORE_ITEMS) {
      throw WindowsException(error.toHRESULT());
    }
  } finally {
    free(devInfoDataPtr);
  }
}

Iterable<String> devicePathsByInterface(
  int hDevInfo,
  Guid interfaceGuid,
) sync* {
  final requiredSizePtr = loggingCalloc<DWORD>();
  final deviceInterfaceDataPtr = loggingCalloc<SP_DEVICE_INTERFACE_DATA>()
    ..ref.cbSize = sizeOf<SP_DEVICE_INTERFACE_DATA>();
  try {
    for (
      var index = 0;
      SetupDiEnumDeviceInterfaces(
        hDevInfo,
        null,
        interfaceGuid.ptr,
        index,
        deviceInterfaceDataPtr,
      );
      index++
    ) {
      if (!SetupDiGetDeviceInterfaceDetail(
        hDevInfo,
        deviceInterfaceDataPtr,
        null,
        0,
        requiredSizePtr,
        null,
      )) {
        final error = GetLastError();
        if (error != ERROR_INSUFFICIENT_BUFFER) {
          print(
            'SetupDiGetDeviceInterfaceDetail - Get Data Size error: $error',
          );
          throw WindowsException(error.toHRESULT());
        }
      }

      final deviceInterfaceDetailDataPtr =
          loggingCalloc<BYTE>(
              requiredSizePtr.value,
            ).cast<SP_DEVICE_INTERFACE_DETAIL_DATA>()
            ..ref.cbSize = sizeOf<SP_DEVICE_INTERFACE_DETAIL_DATA>();

      final actualSizePtr = loggingCalloc<Uint32>();
      try {
        if (!SetupDiGetDeviceInterfaceDetail(
          hDevInfo,
          deviceInterfaceDataPtr,
          deviceInterfaceDetailDataPtr,
          requiredSizePtr.value,
          actualSizePtr,
          null,
        )) {
          print(
            'SetupDiGetDeviceInterfaceDetail - Get Data error ${GetLastError()}',
          );
          continue;
        }
        yield deviceInterfaceDetailDataPtr.ref.DevicePath;
      } finally {
        free(actualSizePtr);
        free(deviceInterfaceDetailDataPtr);
      }
    }

    final error = GetLastError();
    if (error != S_OK && error != ERROR_NO_MORE_ITEMS) {
      throw WindowsException(error.toHRESULT());
    }
  } finally {
    free(requiredSizePtr);
    free(deviceInterfaceDataPtr);
  }
}
