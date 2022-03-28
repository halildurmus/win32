// Copyright (c) 2020, the Dart project authors.  Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

// Enumerates device interfaces that support Bluetooth LE

import 'dart:ffi';
import 'dart:typed_data';

import 'package:ffi/ffi.dart';
import 'package:win32/win32.dart';

void main() {
  final devicePaths = using((Arena arena) {
    final interfaceGuid = arena<GUID>()
      ..ref.setGUID(GUID_BLUETOOTHLE_DEVICE_INTERFACE);

    // This should be defined to return a HDEVINFO (IntPtr). Waiting on
    // https://github.com/microsoft/win32metadata/issues/856
    final hDevInfo = SetupDiGetClassDevs(
        interfaceGuid, nullptr, NULL, DIGCF_PRESENT | DIGCF_DEVICEINTERFACE);
    try {
      return devicesByInterface(hDevInfo, interfaceGuid).toList();
    } finally {
      SetupDiDestroyDeviceInfoList(hDevInfo);
    }
  });

  for (final path in devicePaths) {
    printServicesByDevice(path);
  }
}

Iterable<Uint16List> devicesByInterface(
    Pointer hDevInfo, Pointer<GUID> interfaceGuid) sync* {
  final requiredSizePtr = calloc<DWORD>();
  final deviceInterfaceDataPtr = calloc<SP_DEVICE_INTERFACE_DATA>()
    ..ref.cbSize = sizeOf<SP_DEVICE_INTERFACE_DATA>();

  try {
    for (var index = 0;
        SetupDiEnumDeviceInterfaces(hDevInfo, nullptr, interfaceGuid, index,
                deviceInterfaceDataPtr) ==
            TRUE;
        index++) {
      // final hr =
      SetupDiGetDeviceInterfaceDetail(hDevInfo, deviceInterfaceDataPtr, nullptr,
          0, requiredSizePtr, nullptr);

      // FIXME https://github.com/timsneath/win32/issues/384
      // if (hr != TRUE) {
      //   final error = GetLastError();
      //   if (error != ERROR_INSUFFICIENT_BUFFER) {
      //     print(
      //         'SetupDiGetDeviceInterfaceDetail - Get Data Size error: $error');
      //     throw WindowsException(error);
      //   }
      // }

      // TODO(sunbreak): requiredSizePtr is in bytes, no? I think you're
      // allocating twice the size you need.`
      final detailDataMemoryPtr = calloc<Uint16>(requiredSizePtr.value);

      try {
        final deviceInterfaceDetailDataPtr =
            Pointer<SP_DEVICE_INTERFACE_DETAIL_DATA_>.fromAddress(
                detailDataMemoryPtr.address);
        deviceInterfaceDetailDataPtr.ref.cbSize =
            sizeOf<SP_DEVICE_INTERFACE_DETAIL_DATA_>();

        final hr = SetupDiGetDeviceInterfaceDetail(
            hDevInfo,
            deviceInterfaceDataPtr,
            deviceInterfaceDetailDataPtr,
            requiredSizePtr.value,
            nullptr,
            nullptr);
        if (hr != TRUE) {
          print(
              'SetupDiGetDeviceInterfaceDetail - Get Data error: ${GetLastError()}');
          continue;
        }

        // rawPathData would be freed with detailDataMemoryPtr
        final rawPathData = deviceInterfaceDetailDataPtr
            .getDevicePathData(requiredSizePtr.value);
        yield Uint16List.fromList(rawPathData);
      } finally {
        free(detailDataMemoryPtr);
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
  Uint16List getDevicePathData(int requiredSize) =>
      Pointer<Uint16>.fromAddress(address).asTypedList(requiredSize).sublist(2);
}

// -----------------------------------------------------------------------------
// GATT Security and Other Flag-related Facilities
// -----------------------------------------------------------------------------

void printServicesByDevice(Uint16List path) {
  // TODO(sunbreak): if path was passed as a String, you could just call
  // path.toNativeUtf16() to get yourself a Pointer<Utf16>.
  final pathPtr = wsalloc(path.length);
  pathPtr
      .cast<Uint16>()
      .asTypedList(path.length)
      .setRange(0, path.length, path);

  final hDevice = CreateFile(pathPtr.cast(), 0,
      FILE_SHARE_READ | FILE_SHARE_WRITE, nullptr, OPEN_EXISTING, 0, NULL);
  if (hDevice == INVALID_HANDLE_VALUE) {
    final error = GetLastError();
    print('CreateFile - Get Device Handle error: $error');
    throw WindowsException(error);
  }
  try {
    int hr;
    using((Arena arena) {
      final bufferCountPtr = arena<USHORT>();
      hr = BluetoothGATTGetServices(
          hDevice, 0, nullptr, bufferCountPtr, BLUETOOTH_GATT_FLAG_NONE);
      if (hr != HRESULT_FROM_WIN32(ERROR_MORE_DATA)) {
        print('BluetoothGATTGetServices - Get Buffer Count error: $hr');
        throw WindowsException(hr);
      }

      final serviceBufferPtr = arena<BTH_LE_GATT_SERVICE>(bufferCountPtr.value);
      final numServicesPtr = arena<USHORT>();

      hr = BluetoothGATTGetServices(hDevice, bufferCountPtr.value,
          serviceBufferPtr, numServicesPtr, BLUETOOTH_GATT_FLAG_NONE);

      if (hr != S_OK) {
        print('BluetoothGATTGetServices - Get Service Buffer error: $hr');
        throw WindowsException(hr);
      }
      for (var i = 0; i < numServicesPtr.value; i++) {
        print(
            'BluetoothGATTService - ${serviceBufferPtr[i].ServiceUuid.LongUuid}');
      }
    });
  } finally {
    CloseHandle(hDevice);
    free(pathPtr);
  }
}
