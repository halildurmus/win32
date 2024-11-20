// Demonstrates enumeration of device instances and device interface paths
// using the Windows SetupAPI.

import 'dart:ffi';

import 'package:ffi/ffi.dart';
import 'package:ffi_leak_tracker/ffi_leak_tracker.dart';
import 'package:win32/win32.dart';

List<int> enumerateDeviceInstances(HDEVINFO deviceInfoSet) {
  final instances = <int>[];

  final infoData = adaptiveCalloc<SP_DEVINFO_DATA>()
    ..ref.cbSize = sizeOf<SP_DEVINFO_DATA>();
  try {
    for (var index = 0; ; index++) {
      final Win32Result(:value, :error) = SetupDiEnumDeviceInfo(
        deviceInfoSet,
        index,
        infoData,
      );
      if (!value) {
        if (error == ERROR_NO_MORE_ITEMS) return instances;
        throw WindowsException(error.toHRESULT());
      }
      instances.add(infoData.ref.DevInst);
    }
  } finally {
    free(infoData);
  }
}

List<String> enumerateDeviceInterfacePaths(
  HDEVINFO deviceInfoSet,
  Pointer<GUID> interfaceGuid,
) {
  final paths = <String>[];

  final interfaceData = adaptiveCalloc<SP_DEVICE_INTERFACE_DATA>()
    ..ref.cbSize = sizeOf<SP_DEVICE_INTERFACE_DATA>();
  final requiredSize = adaptiveCalloc<DWORD>();
  try {
    for (var index = 0; ; index++) {
      final enumResult = SetupDiEnumDeviceInterfaces(
        deviceInfoSet,
        null,
        interfaceGuid,
        index,
        interfaceData,
      );
      if (!enumResult.value) {
        final error = enumResult.error;
        if (error == ERROR_NO_MORE_ITEMS) return paths;
        throw WindowsException(error.toHRESULT());
      }

      // First call: query required buffer size
      final sizeResult = SetupDiGetDeviceInterfaceDetail(
        deviceInfoSet,
        interfaceData,
        nullptr,
        0,
        requiredSize,
        nullptr,
      );
      if (!sizeResult.value && sizeResult.error != ERROR_INSUFFICIENT_BUFFER) {
        throw WindowsException(sizeResult.error.toHRESULT());
      }

      final detailData =
          adaptiveCalloc<Uint8>(
              requiredSize.value,
            ).cast<SP_DEVICE_INTERFACE_DETAIL_DATA>()
            ..ref.cbSize = sizeOf<SP_DEVICE_INTERFACE_DETAIL_DATA>();
      try {
        final detailResult = SetupDiGetDeviceInterfaceDetail(
          deviceInfoSet,
          interfaceData,
          detailData,
          requiredSize.value,
          nullptr,
          nullptr,
        );
        if (!detailResult.value) {
          throw WindowsException(detailResult.error.toHRESULT());
        }
        paths.add(detailData.ref.DevicePath);
      } finally {
        free(detailData);
      }
    }
  } finally {
    free(interfaceData);
    free(requiredSize);
  }
}

void main() {
  // ------------------------------------------------------------
  // Enumerate network adapters by device setup class
  // ------------------------------------------------------------

  using((arena) {
    final netClassGuid = GUID_DEVCLASS_NET.toNative(allocator: arena);
    final netDevices = SetupDiGetClassDevs(
      netClassGuid,
      null,
      null,
      DIGCF_PRESENT,
    ).value;
    try {
      for (final devInst in enumerateDeviceInstances(netDevices)) {
        print('Network device instance: 0x${devInst.toRadixString(16)}');
      }
    } finally {
      netDevices.close();
    }
  });

  // ------------------------------------------------------------
  // Enumerate HID devices by interface class
  // ------------------------------------------------------------

  using((arena) {
    final hidInterfaceGuid = GUID_DEVINTERFACE_HID.toNative(allocator: arena);
    final hidDevices = SetupDiGetClassDevs(
      hidInterfaceGuid,
      null,
      null,
      DIGCF_PRESENT | DIGCF_DEVICEINTERFACE,
    ).value;
    try {
      for (final path in enumerateDeviceInterfacePaths(
        hidDevices,
        hidInterfaceGuid,
      )) {
        print('HID device path: $path');
      }
    } finally {
      hidDevices.close();
    }
  });
}
