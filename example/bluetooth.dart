// Copyright (c) 2020, the Dart project authors.  Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

// bluetooth.dart

// Shows retrieval of various information from the high-level monitor
// configuration API.

import 'dart:ffi';

import 'package:ffi/ffi.dart';
import 'package:win32/win32.dart';

String toHex(int value32) =>
    '0x${value32.toUnsigned(32).toRadixString(16).padLeft(8, '0')}';

void findBluetoothDevices(int btRadioHandle) {
  final params = BLUETOOTH_DEVICE_SEARCH_PARAMS.allocate();
  final info = BLUETOOTH_DEVICE_INFO.allocate();
  final firstDeviceHandle =
      BluetoothFindFirstDevice(params.addressOf, info.addressOf);
  if (firstDeviceHandle == NULL) {
    print('No devices found.');
  } else {
    print(info.szName.unpackString(BLUETOOTH_MAX_NAME_SIZE));
    BluetoothFindDeviceClose(firstDeviceHandle);
  }
}

void main() {
  final params = BLUETOOTH_FIND_RADIO_PARAMS.allocate();
  final btRadioHandlePtr = allocate<IntPtr>();

  final btFindRadioHandle =
      BluetoothFindFirstRadio(params.addressOf, btRadioHandlePtr);
  if (btFindRadioHandle == NULL) {
    print('No Bluetooth radios found.');

    free(params.addressOf);
    free(btRadioHandlePtr);
    return;
  } else {
    print('Handle: ${toHex(btRadioHandlePtr.value)}');
    findBluetoothDevices(btRadioHandlePtr.value);
    BluetoothFindRadioClose(btRadioHandlePtr.value);

    free(params.addressOf);
    free(btRadioHandlePtr);
  }
}
