// Example demonstrating Bluetooth radio and device enumeration.

import 'dart:ffi';

import 'package:ffi/ffi.dart';
import 'package:win32/win32.dart';

/// Converts a Bluetooth address to a human-readable format (e.g.,
/// "AA:BB:CC:DD:EE:FF").
String formatBluetoothAddress(Array<Uint8> address) {
  final bytes = <int>[];
  for (var i = 0; i < 6; i++) {
    bytes.add(address[i]);
  }
  return bytes
      .map((byte) => byte.toRadixString(16).toUpperCase().padLeft(2, '0'))
      .join(':');
}

/// Enumerates all available Bluetooth radio devices on the system.
///
/// Returns a list of radio handles that must be managed by the caller.
List<HANDLE> findBluetoothRadios() {
  final radioHandles = <HANDLE>[];
  return using((arena) {
    final findRadioParams = arena<BLUETOOTH_FIND_RADIO_PARAMS>()
      ..ref.dwSize = sizeOf<BLUETOOTH_FIND_RADIO_PARAMS>();
    final hRadio = arena<Pointer>();
    final hEnum = BluetoothFindFirstRadio(findRadioParams, hRadio).value;
    if (hEnum.isNull) {
      print('No radios found.');
    } else {
      radioHandles.add(HANDLE(hRadio.value));
      print('Found a radio with handle: ${hRadio.value.address.toHexString()}');
      while (BluetoothFindNextRadio(hEnum, hRadio).value) {
        radioHandles.add(HANDLE(hRadio.value));
      }
      BluetoothFindRadioClose(hEnum);
    }
    return radioHandles;
  });
}

/// Retrieves and displays information about a specific Bluetooth radio.
void findRadioInfo(HANDLE hRadio) {
  using((arena) {
    final radioInfo = arena<BLUETOOTH_RADIO_INFO>()
      ..ref.dwSize = sizeOf<BLUETOOTH_RADIO_INFO>();
    final res = BluetoothGetRadioInfo(hRadio, radioInfo).value;
    if (res == ERROR_SUCCESS) {
      final bluetoothAddress = formatBluetoothAddress(
        radioInfo.ref.address.rgBytes,
      );
      print('Radio name: ${radioInfo.ref.szName}');
      print('Radio address: $bluetoothAddress');
    } else {
      print('Error retrieving radio info: $res');
    }
  });
}

/// Displays detailed information about a Bluetooth device.
void printBluetoothDeviceInfo(BLUETOOTH_DEVICE_INFO info) {
  print('Device address: ${formatBluetoothAddress(info.Address.rgBytes)}');
  print('  Name: ${info.szName}');
  print('  Authenticated: ${info.fAuthenticated}');
  print('  Connected: ${info.fConnected}');
  print('  Remembered: ${info.fRemembered}');
}

/// Discovers and lists all Bluetooth devices.
void findBluetoothDevices() {
  using((arena) {
    final params = arena<BLUETOOTH_DEVICE_SEARCH_PARAMS>();
    params.ref
      ..dwSize = sizeOf<BLUETOOTH_DEVICE_SEARCH_PARAMS>()
      ..fReturnConnected = true
      ..fReturnAuthenticated = true
      ..fReturnRemembered = true
      ..fReturnUnknown = true
      ..fIssueInquiry = true
      ..cTimeoutMultiplier = 1;
    final info = arena<BLUETOOTH_DEVICE_INFO>()
      ..ref.dwSize = sizeOf<BLUETOOTH_DEVICE_INFO>();
    final firstDeviceHandle = BluetoothFindFirstDevice(params, info).value;
    if (firstDeviceHandle.isNotNull) {
      printBluetoothDeviceInfo(info.ref);
      while (BluetoothFindNextDevice(firstDeviceHandle, info).value) {
        printBluetoothDeviceInfo(info.ref);
      }
      BluetoothFindDeviceClose(firstDeviceHandle);
    } else {
      print('No devices found.');
    }
  });
}

void main() {
  try {
    final radios = findBluetoothRadios();
    if (radios.isEmpty) {
      print('No Bluetooth radios found.');
      return;
    }

    for (final hRadio in radios) {
      findRadioInfo(hRadio);
      final isDiscoverable = BluetoothIsDiscoverable(hRadio);
      print(
        'Bluetooth radio is ${isDiscoverable ? 'discoverable' : 'not discoverable'}.',
      );
      print('---');
    }

    print('\nSearching for Bluetooth devices...');
    findBluetoothDevices();
  } catch (e) {
    print('Error: $e');
  }
}
