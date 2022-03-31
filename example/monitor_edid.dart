// Copyright (c) 2020, the Dart project authors.  Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

// Reads out the EDID information of the monitor.

// ignore_for_file: camel_case_extensions

import 'dart:ffi';
import 'package:ffi/ffi.dart';
import 'package:win32/win32.dart';

class Size {
  double width;
  double height;
  Size(this.width, this.height);
}

Size getMonitorSizeInMM() {
  final guidptr = calloc<GUID>();

  final guidptr = GUIDFromString(GUID_CLASS_MONITOR);
  // Get the handle for the first monitor.
  final ptr = SetupDiGetClassDevs(guidptr, nullptr, 0, DIGCF_PRESENT);
  var width = 0;
  var height = 0;

  final data = calloc<SP_DEVINFO_DATA>();
  data.ref.cbSize = sizeOf<SP_DEVINFO_DATA>();
  // Get the device information for the first member of the first moitor
  final ret = SetupDiEnumDeviceInfo(ptr, 0, data);
  if (ret == TRUE) {
    // Get the registry key for the first member of the first moitor
    final hDevRegKey = SetupDiOpenDevRegKey(
        ptr, data, DICS_FLAG_GLOBAL, 0, DIREG_DEV, KEY_READ);

    var retValue = ERROR_SUCCESS;
    const nameSize = 128;
    final lpValueName = calloc<Uint16>(nameSize).cast<Utf16>();
    const edidDataSize = 1024;

    final lpcchValueName = calloc<DWORD>()..value = nameSize;
    final lpType = calloc<DWORD>()..value = nameSize;
    final lpData = calloc<BYTE>(edidDataSize);
    final lpcbData = calloc<DWORD>()..value = edidDataSize;

    // Get the first value of the registry key for the first member of the first moitor
    retValue = RegEnumValue(hDevRegKey, 0, lpValueName, lpcchValueName, nullptr,
        lpType, lpData, lpcbData);

    if (retValue == ERROR_SUCCESS && lpValueName.toDartString() == 'EDID') {
      width = ((lpData[68] & 0xF0) << 4) + lpData[66];
      height = ((lpData[68] & 0x0F) << 8) + lpData[67];
    }

    free(lpValueName);
    free(lpcchValueName);
    free(lpType);
    free(lpData);
    free(lpcbData);

    RegCloseKey(hDevRegKey);
  }
  free(data);

  SetupDiDestroyDeviceInfoList(ptr);
  free(guidptr);
  return Size(width.toDouble(), height.toDouble());
}

Size getMonitorSizeInMMBackup() {
  final hwnd = calloc<HWND>();
  final hdc = GetDC(hwnd.value);
  final width = GetDeviceCaps(hdc, 4);
  final height = GetDeviceCaps(hdc, 6);
  ReleaseDC(hwnd.value, hdc);
  free(hwnd);
  return Size(width.toDouble(), height.toDouble());
}

void main() {
  final size = getMonitorSizeInMM();
  print(
      'Physical Size of Monitor: Width: ${size.width}mm Height: ${size.height}mm');
  final sizeBackup = getMonitorSizeInMMBackup();
  print(
      'Physical Size of Monitor Backup: Width: ${sizeBackup.width}mm Height: ${sizeBackup.height}mm');
}
