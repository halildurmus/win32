import 'dart:ffi';
import 'dart:typed_data';

import 'package:ffi/ffi.dart';
import 'package:win32/win32.dart';

const GUID_BLUETOOTHLE_DEVICE_INTERFACE = '{781AEE18-7733-4CE4-ADD0-91F41C67B592}';

void main() {
  final devicePaths = using((Arena arena) {
    final interfaceGuid = arena<GUID>()..ref.setGUID(GUID_BLUETOOTHLE_DEVICE_INTERFACE);

    final deviceInfoSetPtr = SetupDiGetClassDevs(
        interfaceGuid, nullptr, NULL, DIGCF_PRESENT | DIGCF_DEVICEINTERFACE);
    try {
      return _iterateDeviceByInterface(deviceInfoSetPtr, interfaceGuid).toList();
    } finally {
      SetupDiDestroyDeviceInfoList(deviceInfoSetPtr);
    }
  });

  for (final path in devicePaths) {
    _printServicesByDevice(path);
  }
}

// -----------------------------------------------------------------------------
// SetupDiGetClassDevs constants
// -----------------------------------------------------------------------------
const DIGCF_DEFAULT = 0x00000001;
const DIGCF_PRESENT = 0x00000002;
const DIGCF_ALLCLASSES = 0x00000004;
const DIGCF_PROFILE = 0x00000008;
const DIGCF_DEVICEINTERFACE = 0x00000010;

Iterable<Uint16List> _iterateDeviceByInterface(
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
              'SetupDiGetDeviceInterfaceDetail - Get Data error: ${GetLastError()}');
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
    if (error != S_OK && error != ERROR_NO_MORE_ITEMS) {
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

// -----------------------------------------------------------------------------
// GATT Security and Other Flag-related Facilities
// -----------------------------------------------------------------------------
const BLUETOOTH_GATT_FLAG_NONE = 0x00000000;

void _printServicesByDevice(Uint16List path) {
  final pathPtr = calloc<Uint16>(path.length);
  pathPtr.asTypedList(path.length).setRange(0, path.length, path);
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
      final bufferCountPtr = arena<Uint16>();
      hr = BluetoothGATTGetServices(hDevice, 0, nullptr, bufferCountPtr, BLUETOOTH_GATT_FLAG_NONE);
      if (hr != HRESULT_FROM_WIN32(ERROR_MORE_DATA)) {
        print('BluetoothGATTGetServices - Get Buffer Count error: $hr');
        throw WindowsException(hr);
      }

      final serviceBufferPtr = arena<BTH_LE_GATT_SERVICE>(bufferCountPtr.value);
      final numServicesPtr = arena<Uint16>();
      hr = BluetoothGATTGetServices(hDevice, bufferCountPtr.value, serviceBufferPtr, numServicesPtr, BLUETOOTH_GATT_FLAG_NONE);
      if (hr != S_OK) {
        print('BluetoothGATTGetServices - Get Service Buffer error: $hr');
        throw WindowsException(hr);
      }
      for (var i = 0; i < numServicesPtr.value; i++) {
        print('BluetoothGATTService - ${serviceBufferPtr[i].ServiceUuid.LongUuid}');
      }
    });
  } finally {
    CloseHandle(hDevice);
    calloc.free(pathPtr);
  }
}