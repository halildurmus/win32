// Demonstrates enumeration of Bluetooth LE devices and their GATT hierarchy
// (services, characteristics, descriptors) using SetupAPI and Bluetooth GATT APIs.

import 'dart:ffi';

import 'package:ffi/ffi.dart';
import 'package:ffi_leak_tracker/ffi_leak_tracker.dart';
import 'package:win32/win32.dart';

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

List<BTH_LE_GATT_SERVICE> enumerateGattServices(HANDLE deviceHandle) {
  final services = <BTH_LE_GATT_SERVICE>[];

  final serviceCount = adaptiveCalloc<USHORT>();
  try {
    BluetoothGATTGetServices(
      deviceHandle,
      0,
      nullptr,
      serviceCount,
      BLUETOOTH_GATT_FLAG_NONE,
    );
    if (serviceCount.value == 0) return services;

    final servicesBuffer = adaptiveCalloc<BTH_LE_GATT_SERVICE>(
      serviceCount.value,
    );
    final actualCount = adaptiveCalloc<USHORT>();
    try {
      BluetoothGATTGetServices(
        deviceHandle,
        serviceCount.value,
        servicesBuffer,
        actualCount,
        BLUETOOTH_GATT_FLAG_NONE,
      );
      for (var i = 0; i < actualCount.value; i++) {
        services.add(servicesBuffer[i]);
      }
      return services;
    } finally {
      free(servicesBuffer);
      free(actualCount);
    }
  } finally {
    free(serviceCount);
  }
}

List<BTH_LE_GATT_CHARACTERISTIC> enumerateGattCharacteristics(
  HANDLE deviceHandle,
  Pointer<BTH_LE_GATT_SERVICE> service,
) {
  final characteristics = <BTH_LE_GATT_CHARACTERISTIC>[];

  final count = adaptiveCalloc<USHORT>();
  try {
    BluetoothGATTGetCharacteristics(
      deviceHandle,
      service,
      0,
      nullptr,
      count,
      BLUETOOTH_GATT_FLAG_NONE,
    );
    if (count.value == 0) return characteristics;

    final characteristicsBuffer = adaptiveCalloc<BTH_LE_GATT_CHARACTERISTIC>(
      count.value,
    );
    final actualCount = adaptiveCalloc<USHORT>();
    try {
      BluetoothGATTGetCharacteristics(
        deviceHandle,
        service,
        count.value,
        characteristicsBuffer,
        actualCount,
        BLUETOOTH_GATT_FLAG_NONE,
      );
      for (var i = 0; i < actualCount.value; i++) {
        characteristics.add(characteristicsBuffer[i]);
      }
      return characteristics;
    } finally {
      free(characteristicsBuffer);
      free(actualCount);
    }
  } finally {
    free(count);
  }
}

List<BTH_LE_GATT_DESCRIPTOR> enumerateGattDescriptors(
  HANDLE deviceHandle,
  Pointer<BTH_LE_GATT_CHARACTERISTIC> characteristic,
) {
  final descriptors = <BTH_LE_GATT_DESCRIPTOR>[];

  final count = adaptiveCalloc<USHORT>();
  try {
    BluetoothGATTGetDescriptors(
      deviceHandle,
      characteristic,
      0,
      nullptr,
      count,
      BLUETOOTH_GATT_FLAG_NONE,
    );
    if (count.value == 0) return descriptors;

    final descriptorsBuffer = adaptiveCalloc<BTH_LE_GATT_DESCRIPTOR>(
      count.value,
    );
    final actualCount = adaptiveCalloc<USHORT>();
    try {
      BluetoothGATTGetDescriptors(
        deviceHandle,
        characteristic,
        count.value,
        descriptorsBuffer,
        actualCount,
        BLUETOOTH_GATT_FLAG_NONE,
      );
      for (var i = 0; i < actualCount.value; i++) {
        descriptors.add(descriptorsBuffer[i]);
      }
      return descriptors;
    } finally {
      free(descriptorsBuffer);
      free(actualCount);
    }
  } finally {
    free(count);
  }
}

void main() {
  using((arena) {
    final bleInterfaceGuid = GUID_BLUETOOTHLE_DEVICE_INTERFACE.toNative(
      allocator: arena,
    );
    final deviceInfoSet = SetupDiGetClassDevs(
      bleInterfaceGuid,
      null,
      null,
      DIGCF_PRESENT | DIGCF_DEVICEINTERFACE,
    ).value;

    try {
      final devicePaths = enumerateDeviceInterfacePaths(
        deviceInfoSet,
        bleInterfaceGuid,
      ).toList();

      if (devicePaths.isEmpty) {
        print('No Bluetooth LE devices found.');
        return;
      }

      for (final path in devicePaths) {
        final devicePath = arena.pcwstr(path);
        final result = CreateFile(
          devicePath,
          0,
          FILE_SHARE_READ | FILE_SHARE_WRITE,
          nullptr,
          OPEN_EXISTING,
          FILE_ATTRIBUTE_NORMAL,
          null,
        );
        if (result.value == INVALID_HANDLE_VALUE) {
          print('Failed to open device: $path');
          continue;
        }

        final deviceHandle = result.value;
        try {
          print('\nBluetooth LE Device');
          print('Path: $path');
          for (final service in enumerateGattServices(deviceHandle)) {
            print('└─ Service: ${service.ServiceUuid.LongUuid}');
            final servicePtr = arena<BTH_LE_GATT_SERVICE>()..ref = service;
            for (final characteristic in enumerateGattCharacteristics(
              deviceHandle,
              servicePtr,
            )) {
              print(
                '   └─ Characteristic: '
                '${characteristic.CharacteristicUuid.LongUuid}',
              );

              final characteristicPtr = arena<BTH_LE_GATT_CHARACTERISTIC>()
                ..ref = characteristic;
              for (final descriptor in enumerateGattDescriptors(
                deviceHandle,
                characteristicPtr,
              )) {
                print(
                  '      └─ Descriptor: '
                  '${descriptor.DescriptorUuid.LongUuid}',
                );
              }
            }
          }
        } finally {
          deviceHandle.close();
        }
      }
    } finally {
      deviceInfoSet.close();
    }
  });
}
