// Enumerates device interfaces that support Bluetooth LE.

import 'dart:ffi';

import 'package:ffi/ffi.dart';
import 'package:win32/win32.dart';

void main() {
  final interfaceGuid = GUID_BLUETOOTHLE_DEVICE_INTERFACE;
  final hDevInfo = SetupDiGetClassDevs(
    interfaceGuid.ptr,
    null,
    null,
    DIGCF_PRESENT | DIGCF_DEVICEINTERFACE,
  );
  final devicePaths = devicesByInterface(hDevInfo, interfaceGuid).toList();
  if (devicePaths.isEmpty) {
    print('No Bluetooth LE devices found.');
    return;
  }
  SetupDiDestroyDeviceInfoList(hDevInfo);

  for (final path in devicePaths) {
    final fileName = w(path);
    final hDevice = CreateFile(
      fileName.ptr,
      0,
      FILE_SHARE_READ | FILE_SHARE_WRITE,
      null,
      OPEN_EXISTING,
      FILE_ATTRIBUTE_NORMAL,
      null,
    );
    if (hDevice == INVALID_HANDLE_VALUE) {
      final error = GetLastError();
      print('CreateFile - Get Device Handle error: $error');
      throw WindowsException(error.toHRESULT());
    }

    try {
      print('BLUETOOTHLE_DEVICE - $path');
      printServicesByDevice(hDevice);
    } finally {
      CloseHandle(hDevice);
    }
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
        print(
          'SetupDiGetDeviceInterfaceDetail - Get Size error: ${GetLastError()}',
        );
        continue;
      }

      final deviceInterfaceDetailDataPtr =
          loggingCalloc<BYTE>(
              requiredSizePtr.value,
            ).cast<SP_DEVICE_INTERFACE_DETAIL_DATA>()
            ..ref.cbSize = sizeOf<SP_DEVICE_INTERFACE_DETAIL_DATA>();

      try {
        final result = SetupDiGetDeviceInterfaceDetail(
          hDevInfo,
          deviceInterfaceDataPtr,
          deviceInterfaceDetailDataPtr,
          requiredSizePtr.value,
          null,
          null,
        );
        if (!result) {
          print(
            'SetupDiGetDeviceInterfaceDetail - Get Data error: ${GetLastError()}',
          );
          continue;
        }

        yield deviceInterfaceDetailDataPtr.ref.DevicePath;
      } finally {
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

// -----------------------------------------------------------------------------
// GATT Security and Other Flag-related Facilities
// -----------------------------------------------------------------------------

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
