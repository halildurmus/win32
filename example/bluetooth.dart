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
  final params = calloc<BLUETOOTH_DEVICE_SEARCH_PARAMS>();
  final info = calloc<BLUETOOTH_DEVICE_INFO>();

  final firstDeviceHandle = BluetoothFindFirstDevice(params, info);

  if (firstDeviceHandle != NULL) {
    print(info.ref.szName);
    BluetoothFindDeviceClose(firstDeviceHandle);
  } else {
    print('No devices found.');
  }

  free(params);
  free(info);
}

void main() {
  final params = calloc<BLUETOOTH_FIND_RADIO_PARAMS>();
  final btRadioHandlePtr = allocate<IntPtr>();

  final btFindRadioHandle = BluetoothFindFirstRadio(params, btRadioHandlePtr);

  if (btFindRadioHandle != NULL) {
    print('Handle: ${toHex(btRadioHandlePtr.value)}');

    findBluetoothDevices(btRadioHandlePtr.value);
    BluetoothFindRadioClose(btRadioHandlePtr.value);
  } else {
    print('No Bluetooth radios found.');
  }

  free(params);
  free(btRadioHandlePtr);
}
