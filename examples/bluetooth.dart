// Shows retrieval of various information from the high-level monitor
// configuration API.

import 'dart:ffi';

import 'package:win32/win32.dart';

String addressAsString(Array<Uint8> bluetoothAddress) {
  final bluetoothAddressList = <int>[];
  for (var i = 0; i < 6; i++) {
    bluetoothAddressList.add(bluetoothAddress[i]);
  }
  return bluetoothAddressList
      .map((byte) => byte.toRadixString(16).toUpperCase().padLeft(2, '0'))
      .join(':');
}

List<int> findBluetoothRadios() {
  final radioHandles = <int>[];

  final findRadioParams = loggingCalloc<BLUETOOTH_FIND_RADIO_PARAMS>()
    ..ref.dwSize = sizeOf<BLUETOOTH_FIND_RADIO_PARAMS>();
  final hRadio = loggingCalloc<HANDLE>();

  try {
    final hEnum = BluetoothFindFirstRadio(findRadioParams, hRadio);
    if (hEnum == NULL) {
      print('No radios found.');
    } else {
      radioHandles.add(hRadio.value);
      print('Found a radio with handle: ${hRadio.value.toHexString()}');
      while (BluetoothFindNextRadio(hEnum, hRadio)) {
        radioHandles.add(hRadio.value);
      }
      BluetoothFindRadioClose(hEnum);
    }
    return radioHandles;
  } finally {
    free(findRadioParams);
    free(hRadio);
  }
}

void findRadioInfo(int hRadio) {
  final radioInfo = loggingCalloc<BLUETOOTH_RADIO_INFO>()
    ..ref.dwSize = sizeOf<BLUETOOTH_RADIO_INFO>();

  try {
    final res = BluetoothGetRadioInfo(hRadio, radioInfo);
    if (res == ERROR_SUCCESS) {
      final bluetoothAddress = addressAsString(radioInfo.ref.address.rgBytes);
      print('Radio name: ${radioInfo.ref.szName}');
      print('Radio address: $bluetoothAddress');
    }
  } finally {
    free(radioInfo);
  }
}

String convertBluetoothAddress(BLUETOOTH_ADDRESS address) {
  final bytes = address.rgBytes;
  final buffer = StringBuffer();
  for (var idx = 0; idx < 6; idx++) {
    buffer.write(bytes[idx].toRadixString(16).padLeft(2, '0').toUpperCase());
    if (idx < 5) buffer.write(':');
  }
  return buffer.toString();
}

void printBluetoothDeviceInfo(BLUETOOTH_DEVICE_INFO info) {
  print('Device address: ${convertBluetoothAddress(info.Address)}');
  print('  Name: ${info.szName}');
  print('  Authenticated: ${info.fAuthenticated}');
  print('  Connected: ${info.fConnected}');
  print('  Remembered: ${info.fRemembered}');
}

void findBluetoothDevices() {
  final params = loggingCalloc<BLUETOOTH_DEVICE_SEARCH_PARAMS>();
  params.ref
    ..dwSize = sizeOf<BLUETOOTH_DEVICE_SEARCH_PARAMS>()
    ..fReturnConnected = true
    ..fReturnAuthenticated = true
    ..fReturnRemembered = true
    ..fReturnUnknown = true
    ..fIssueInquiry = true
    ..cTimeoutMultiplier = 1;
  final info = loggingCalloc<BLUETOOTH_DEVICE_INFO>()
    ..ref.dwSize = sizeOf<BLUETOOTH_DEVICE_INFO>();

  try {
    final firstDeviceHandle = BluetoothFindFirstDevice(params, info);
    if (firstDeviceHandle != NULL) {
      printBluetoothDeviceInfo(info.ref);
      while (BluetoothFindNextDevice(firstDeviceHandle, info)) {
        printBluetoothDeviceInfo(info.ref);
      }
      BluetoothFindDeviceClose(firstDeviceHandle);
    } else {
      print('No devices found.');
    }
  } finally {
    free(params);
    free(info);
  }
}

void main() {
  for (final hRadio in findBluetoothRadios()) {
    findRadioInfo(hRadio);
    if (BluetoothIsDiscoverable(hRadio)) {
      print('Bluetooth radio is discoverable.');
    } else {
      print('Bluetooth radio is not discoverable.');
    }
  }

  findBluetoothDevices();
}
