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

enum DIGCF {
  DIGCF_DEFAULT,
  DIGCF_PRESENT,
  DIGCF_ALLCLASSES,
  DIGCF_PROFILE,
  DIGCF_DEVICEINTERFACE,
}

extension DIGCFValues on DIGCF {
  int get value {
    switch (this) {
      case DIGCF.DIGCF_DEFAULT:
        return 0x00000001;
      case DIGCF.DIGCF_PRESENT:
        return 0x00000002;
      case DIGCF.DIGCF_ALLCLASSES:
        return 0x00000004;
      case DIGCF.DIGCF_PROFILE:
        return 0x00000008;
      case DIGCF.DIGCF_DEVICEINTERFACE:
        return 0x00000010;
    }
  }
}

enum DICS_FLAG {
  DICS_FLAG_GLOBAL,
  DICS_FLAG_CONFIGSPECIFIC,
  DICS_FLAG_CONFIGGENERAL,
}

extension DICS_FLAGValues on DICS_FLAG {
  int get value {
    switch (this) {
      case DICS_FLAG.DICS_FLAG_GLOBAL:
        return 0x00000001;
      case DICS_FLAG.DICS_FLAG_CONFIGSPECIFIC:
        return 0x00000002;
      case DICS_FLAG.DICS_FLAG_CONFIGGENERAL:
        return 0x00000004;
    }
  }
}

enum DIREG {
  DIREG_DEV,
  DIREG_DRV,
  DIREG_BOTH,
}

extension DIREGValues on DIREG {
  int get value {
    switch (this) {
      case DIREG.DIREG_DEV:
        return 0x00000001;
      case DIREG.DIREG_DRV:
        return 0x00000002;
      case DIREG.DIREG_BOTH:
        return 0x00000004;
    }
  }
}

enum REG_RIGHTS {
  KEY_READ,
  KEY_WRITE,
}

extension REG_RIGHTSValues on REG_RIGHTS {
  int get value {
    switch (this) {
      case REG_RIGHTS.KEY_READ:
        return 131097;
      case REG_RIGHTS.KEY_WRITE:
        return 131078;
    }
  }
}

Size getMonitorSizeInMM() {
  const GUID_CLASS_MONITOR = '{4d36e96e-e325-11ce-bfc1-08002be10318}';
  final guidptr = calloc<GUID>();

  guidptr.ref.setGUID(GUID_CLASS_MONITOR);
  // Get the handle for the first monitor.
  final ptr = SetupDiGetClassDevs(guidptr, nullptr, 0, DIGCF.DIGCF_PRESENT.value);
  var width = 0;
  var height = 0;

  final data = calloc<SP_DEVINFO_DATA>();
  data.ref.cbSize = sizeOf<SP_DEVINFO_DATA>();
  // Get the device information for the first member of the first moitor
  final ret = SetupDiEnumDeviceInfo(ptr, 0, data);
  if (ret == TRUE) {
    // Get the registry key for the first member of the first moitor
    final hDevRegKey = SetupDiOpenDevRegKey(ptr, data, DICS_FLAG.DICS_FLAG_GLOBAL.value, 0, DIREG.DIREG_DEV.value, REG_RIGHTS.KEY_READ.value);

    var retValue = ERROR_SUCCESS;
    const nameSize = 128;
    final lpValueName = calloc<Uint16>(nameSize).cast<Utf16>();
    const edidDataSize = 1024;

    final lpcchValueName = calloc<Uint32>()..value = nameSize;
    final lpType = calloc<Uint32>()..value = nameSize;
    final lpData = calloc<Uint8>(edidDataSize);
    final lpcbData = calloc<Uint32>()..value = edidDataSize;

    // Get the first value of the registry key for the first member of the first moitor
    retValue = RegEnumValue(hDevRegKey, 0, lpValueName, lpcchValueName, nullptr, lpType, lpData, lpcbData);

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
  final hwnd = calloc<IntPtr>();
  final hdc = GetDC(hwnd.value);
  final width = GetDeviceCaps(hdc, 4);
  final height = GetDeviceCaps(hdc, 6);
  ReleaseDC(hwnd.value, hdc);
  free(hwnd);
  return Size(width.toDouble(), height.toDouble());
}

void main(List<String> args) {
  final size = getMonitorSizeInMM();
  print('Physical Size of Monitor: Width: ${size.width}mm Height: ${size.height}mm');
  final sizeBackup = getMonitorSizeInMMBackup();
  print('Physical Size of Monitor Backup: Width: ${sizeBackup.width}mm Height: ${sizeBackup.height}mm');
}
