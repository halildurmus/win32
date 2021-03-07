// Copyright (c) 2020, the Dart project authors.  Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

// Shows retrieval of various information from the high-level monitor
// configuration API.

import 'dart:ffi';

import 'package:ffi/ffi.dart';
import 'package:win32/win32.dart';

String toHex(int value32) =>
    '0x${value32.toUnsigned(32).toRadixString(16).padLeft(8, '0')}';

void findBluetoothDevices(int btRadioHandle) {
  final params = calloc<BLUETOOTH_DEVICE_SEARCH_PARAMS>()
    ..ref.dwSize = sizeOf<BLUETOOTH_DEVICE_SEARCH_PARAMS>();
  final info = calloc<BLUETOOTH_DEVICE_INFO>();

  try {
    final firstDeviceHandle = BluetoothFindFirstDevice(params, info);

    if (firstDeviceHandle != NULL) {
      print(info.ref.szName);
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
  final findRadioParams = calloc<BLUETOOTH_FIND_RADIO_PARAMS>()
    ..ref.dwSize = sizeOf<BLUETOOTH_FIND_RADIO_PARAMS>();
  final radioInfo = calloc<BLUETOOTH_RADIO_INFO>()
    ..ref.dwSize = sizeOf<BLUETOOTH_RADIO_INFO>();
  final hRadio = calloc<IntPtr>();

  try {
    final hEnum = BluetoothFindFirstRadio(findRadioParams, hRadio);
    if (hEnum != NULL) {
      print('Found a radio with handle: ${toHex(hRadio.value)}');

      final res = BluetoothGetRadioInfo(hRadio.value, radioInfo);
      if (res == ERROR_SUCCESS) {
        print('Got radio info.\n');
        print('Radio name: ${radioInfo.ref.szName}');
      }

      findBluetoothDevices(hRadio.value);
      BluetoothFindRadioClose(hRadio.value);
    } else {
      print('No Bluetooth radios found.');
    }
  } finally {
    free(findRadioParams);
    free(radioInfo);
    free(hRadio);
  }
}
