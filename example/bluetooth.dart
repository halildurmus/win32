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

void main() {
  final params = BLUETOOTH_FIND_RADIO_PARAMS.allocate();
  final btRadioHandle = allocate<IntPtr>();

  final btFindRadioHandle =
      BluetoothFindFirstRadio(params.addressOf, btRadioHandle);
  if (btFindRadioHandle == NULL) {
    print('Error: ${GetLastError()}');
  } else {
    print('Handle: ${toHex(btRadioHandle.value)}');
  }
}
