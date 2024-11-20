// Example demonstrating Bluetooth LE device and GATT service enumeration.

import 'dart:ffi';

import 'package:ffi/ffi.dart';
import 'package:win32/win32.dart';

void main() {
  try {
    final interfaceGuid = GUID_BLUETOOTHLE_DEVICE_INTERFACE;
    final hDevInfo = SetupDiGetClassDevs(
      interfaceGuid.ptr,
      null,
      null,
      DIGCF_PRESENT | DIGCF_DEVICEINTERFACE,
    ).value;
    final devicePaths = devicesByInterface(hDevInfo, interfaceGuid).toList();
    if (devicePaths.isEmpty) {
      print('No Bluetooth LE devices found.');
      SetupDiDestroyDeviceInfoList(hDevInfo);
      return;
    }
    SetupDiDestroyDeviceInfoList(hDevInfo);

    for (final path in devicePaths) {
      final fileName = w(path);
      final Win32Result(value: hDevice, :error) = CreateFile(
        fileName.ptr,
        0,
        FILE_SHARE_READ | FILE_SHARE_WRITE,
        null,
        OPEN_EXISTING,
        FILE_ATTRIBUTE_NORMAL,
        null,
      );
      if (hDevice == INVALID_HANDLE_VALUE) {
        print('Error opening device: ${error.toHRESULT()}');
        continue;
      }

      try {
        print('\nBluetooth LE Device: $path');
        print('GATT Services:');
        printServicesByDevice(hDevice);
      } finally {
        CloseHandle(hDevice);
      }
    }
  } catch (e) {
    print('Error: $e');
  }
}

Iterable<String> devicesByInterface(int hDevInfo, Guid interfaceGuid) sync* {
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
      ).value;
      index++
    ) {
      final Win32Result(:value, :error) = SetupDiGetDeviceInterfaceDetail(
        hDevInfo,
        deviceInterfaceDataPtr,
        null,
        0,
        requiredSizePtr,
        null,
      );
      if (!value) {
        print(
          'SetupDiGetDeviceInterfaceDetail - Get Size error: ${error.toHRESULT()}',
        );
        continue;
      }

      final deviceInterfaceDetailDataPtr =
          loggingCalloc<BYTE>(
              requiredSizePtr.value,
            ).cast<SP_DEVICE_INTERFACE_DETAIL_DATA>()
            ..ref.cbSize = sizeOf<SP_DEVICE_INTERFACE_DETAIL_DATA>();

      try {
        final Win32Result(:value, :error) = SetupDiGetDeviceInterfaceDetail(
          hDevInfo,
          deviceInterfaceDataPtr,
          deviceInterfaceDetailDataPtr,
          requiredSizePtr.value,
          null,
          null,
        );
        if (!value) {
          print(
            'SetupDiGetDeviceInterfaceDetail - Get Data error: ${error.toHRESULT()}',
          );
          continue;
        }

        yield deviceInterfaceDetailDataPtr.ref.DevicePath;
      } finally {
        free(deviceInterfaceDetailDataPtr);
      }
    }

    final error = GetLastError();
    if (error != ERROR_SUCCESS && error != ERROR_NO_MORE_ITEMS) {
      throw WindowsException(error.toHRESULT());
    }
  } finally {
    free(requiredSizePtr);
    free(deviceInterfaceDataPtr);
  }
}

/// Retrieves and displays all GATT services available on a device.
void printServicesByDevice(int hDevice) {
  using((arena) {
    final bufferCountPtr = arena<USHORT>();
    BluetoothGATTGetServices(
      hDevice,
      0,
      null,
      bufferCountPtr,
      BLUETOOTH_GATT_FLAG_NONE,
    );
    final bufferPtr = arena<BTH_LE_GATT_SERVICE>(bufferCountPtr.value);
    final numberPtr = arena<USHORT>();

    BluetoothGATTGetServices(
      hDevice,
      bufferCountPtr.value,
      bufferPtr,
      numberPtr,
      BLUETOOTH_GATT_FLAG_NONE,
    );

    for (var i = 0; i < numberPtr.value; i++) {
      final servicePtr = Pointer<BTH_LE_GATT_SERVICE>.fromAddress(
        bufferPtr.address + i * sizeOf<BTH_LE_GATT_SERVICE>(),
      );
      print('└─BTH_LE_GATT_SERVICE - ${servicePtr.ref.ServiceUuid.LongUuid}');
      printCharacteristicsByService(hDevice, servicePtr);
    }
  });
}

/// Retrieves and displays all characteristics for a GATT service.
void printCharacteristicsByService(
  int hDevice,
  Pointer<BTH_LE_GATT_SERVICE> servicePtr,
) {
  using((arena) {
    final bufferCountPtr = arena<USHORT>();
    BluetoothGATTGetCharacteristics(
      hDevice,
      servicePtr,
      0,
      null,
      bufferCountPtr,
      BLUETOOTH_GATT_FLAG_NONE,
    );

    final bufferPtr = arena<BTH_LE_GATT_CHARACTERISTIC>(bufferCountPtr.value);
    final numberPtr = arena<USHORT>();

    BluetoothGATTGetCharacteristics(
      hDevice,
      servicePtr,
      bufferCountPtr.value,
      bufferPtr,
      numberPtr,
      BLUETOOTH_GATT_FLAG_NONE,
    );

    for (var i = 0; i < numberPtr.value; i++) {
      final characteristicPtr = Pointer<BTH_LE_GATT_CHARACTERISTIC>.fromAddress(
        bufferPtr.address + i * sizeOf<BTH_LE_GATT_CHARACTERISTIC>(),
      );
      print(
        '  └─BTH_LE_GATT_CHARACTERISTIC - ${characteristicPtr.ref.CharacteristicUuid.LongUuid}',
      );
      printDescriptorsByCharacteristic(hDevice, characteristicPtr);
    }
  });
}

/// Retrieves and displays all descriptors for a GATT characteristic.
void printDescriptorsByCharacteristic(
  int hDevice,
  Pointer<BTH_LE_GATT_CHARACTERISTIC> characteristicPtr,
) {
  using((arena) {
    final bufferCountPtr = arena<USHORT>();
    BluetoothGATTGetDescriptors(
      hDevice,
      characteristicPtr,
      0,
      null,
      bufferCountPtr,
      BLUETOOTH_GATT_FLAG_NONE,
    );

    final bufferPtr = arena<BTH_LE_GATT_DESCRIPTOR>(bufferCountPtr.value);
    final numberPtr = arena<USHORT>();

    BluetoothGATTGetDescriptors(
      hDevice,
      characteristicPtr,
      bufferCountPtr.value,
      bufferPtr,
      numberPtr,
      BLUETOOTH_GATT_FLAG_NONE,
    );

    for (var i = 0; i < numberPtr.value; i++) {
      final descriptorPtr = Pointer<BTH_LE_GATT_DESCRIPTOR>.fromAddress(
        bufferPtr.address + i * sizeOf<BTH_LE_GATT_DESCRIPTOR>(),
      );
      print(
        '    └─BTH_LE_GATT_DESCRIPTOR - ${descriptorPtr.ref.DescriptorUuid.LongUuid}',
      );
    }
  });
}
