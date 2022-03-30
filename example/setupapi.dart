// Copyright (c) 2020, the Dart project authors.  Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

// Enumerates device classes and interfaces

import 'dart:ffi';

import 'package:ffi/ffi.dart';
import 'package:win32/win32.dart';

void main() {
  // https://docs.microsoft.com/en-us/windows-hardware/drivers/install/overview-of-device-setup-classes
  using((Arena arena) {
    final deviceGuid = arena<GUID>()..ref.setGUID(GUID_DEVCLASS_NET);

    final deviceInfoSetPtr =
        SetupDiGetClassDevs(deviceGuid, nullptr, NULL, DIGCF_PRESENT);
    try {
      final deviceHandles = iterateDeviceHandle(deviceInfoSetPtr, deviceGuid);
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
          iterateInterfacePath(deviceInfoSetPtr, interfaceGuid);
      for (final path in interfacePaths) {
        print('hid interface $path');
      }
    } finally {
      SetupDiDestroyDeviceInfoList(deviceInfoSetPtr);
    }
  });
}

Iterable<int> iterateDeviceHandle(
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
    free(devInfoDataPtr);
  }
}

Iterable<String> iterateInterfacePath(
    Pointer deviceInfoSetPtr, Pointer<GUID> interfaceGuid) sync* {
  final requiredSizePtr = calloc<DWORD>();
  final deviceInterfaceDataPtr = calloc<SP_DEVICE_INTERFACE_DATA>()
    ..ref.cbSize = sizeOf<SP_DEVICE_INTERFACE_DATA>();
  try {
    for (var index = 0;
        SetupDiEnumDeviceInterfaces(deviceInfoSetPtr, nullptr,
                interfaceGuid.cast(), index, deviceInterfaceDataPtr) ==
            TRUE;
        index++) {
      SetupDiGetDeviceInterfaceDetail(deviceInfoSetPtr, deviceInterfaceDataPtr,
          nullptr, 0, requiredSizePtr, nullptr);
      // FIXME https://github.com/timsneath/win32/issues/384
      // if (hr != TRUE) {
      //   final error = GetLastError();
      //   if (error != ERROR_INSUFFICIENT_BUFFER) {
      //     print('SetupDiGetDeviceInterfaceDetail - Get Data Size error: $error');
      //     throw WindowsException(error);
      //   }
      // }

      final deviceInterfaceDetailDataPtr = calloc<BYTE>(requiredSizePtr.value)
          .cast<SP_DEVICE_INTERFACE_DETAIL_DATA_>()
        ..ref.cbSize = sizeOf<SP_DEVICE_INTERFACE_DETAIL_DATA_>();

      try {
        final hr = SetupDiGetDeviceInterfaceDetail(
            deviceInfoSetPtr,
            deviceInterfaceDataPtr,
            deviceInterfaceDetailDataPtr,
            requiredSizePtr.value,
            nullptr,
            nullptr);
        if (hr != TRUE) {
          print(
              'SetupDiGetDeviceInterfaceDetail - Get Data error ${GetLastError()}');
          continue;
        }
        yield deviceInterfaceDetailDataPtr
            .getDevicePathData(requiredSizePtr.value)
            .cast<Utf16>()
            .toDartString();
      } finally {
        free(deviceInterfaceDetailDataPtr);
      }
    }

    final error = GetLastError();
    if (error != S_OK && error != ERROR_NO_MORE_ITEMS) {
      throw WindowsException(error);
    }
  } finally {
    free(requiredSizePtr);
    free(deviceInterfaceDataPtr);
  }
}

// ignore: camel_case_extensions
extension Pointer_SP_DEVICE_INTERFACE_DETAIL_DATA_
    on Pointer<SP_DEVICE_INTERFACE_DETAIL_DATA_> {
  /// FIXME [SP_DEVICE_INTERFACE_DETAIL_DATA_.DevicePath]
  Pointer<WCHAR> getDevicePathData(int requiredSize) =>
      Pointer<WCHAR>.fromAddress(address + 4);
}
