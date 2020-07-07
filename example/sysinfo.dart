// Copyright (c) 2020, the Dart project authors.  Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

// Get general Windows system information

import 'dart:ffi';

import 'package:ffi/ffi.dart';
import 'package:win32/win32.dart';

// Per:
// https://docs.microsoft.com/en-us/windows/win32/api/sysinfoapi/nf-sysinfoapi-getversionexw,
// applications not manifested for Windows 8.1 or Windows 10 will return the
// Windows 8 OS version value (6.2).

bool isWindowsVersionAtLeast(int majorVersion, int minorVersion) {
  final versionInfo = OSVERSIONINFO.allocate();

  try {
    final result = GetVersionEx(versionInfo.addressOf);

    if (result != 0) {
      if (versionInfo.dwMajorVersion >= majorVersion) {
        if (versionInfo.dwMinorVersion >= minorVersion) {
          return true;
        }
      }
      return false;
    } else {
      throw WindowsException(HRESULT_FROM_WIN32(GetLastError()));
    }
  } finally {
    free(versionInfo.addressOf);
  }
}

bool isWindowsXPOrGreater() => isWindowsVersionAtLeast(5, 1);
bool isWindowsVistaOrGreater() => isWindowsVersionAtLeast(6, 0);
bool isWindows7OrGreater() => isWindowsVersionAtLeast(6, 1);
bool isWindows8OrGreater() => isWindowsVersionAtLeast(6, 2);

int getSystemMemoryInMegabytes() {
  final memory = allocate<Uint64>();

  try {
    final result = GetPhysicallyInstalledSystemMemory(memory);
    if (result != 0) {
      return (memory.value / 1024).floor();
    } else {
      throw WindowsException(HRESULT_FROM_WIN32(GetLastError()));
    }
  } finally {
    free(memory);
  }
}

String getComputerName() {
  final nameLength = allocate<Uint32>()..value = 0;
  String name;

  GetComputerNameEx(
      COMPUTER_NAME_FORMAT.ComputerNameDnsFullyQualified, nullptr, nameLength);

  final namePtr = allocate<Uint8>(count: nameLength.value * 2).cast<Utf16>();

  try {
    final result = GetComputerNameEx(
        COMPUTER_NAME_FORMAT.ComputerNameDnsFullyQualified,
        namePtr,
        nameLength);

    if (result != 0) {
      name = namePtr.unpackString(nameLength.value);
    } else {
      throw WindowsException(HRESULT_FROM_WIN32(GetLastError()));
    }
  } finally {
    free(namePtr);
    free(nameLength);
  }
  return name;
}

Object getRegistryValue(int key, String subKey, String valueName) {
  Object dataValue;

  final subKeyPtr = TEXT(subKey);
  final valueNamePtr = TEXT(valueName);
  final openKeyPtr = allocate<IntPtr>();
  final dataType = allocate<Uint32>();

  // 256 bytes is more than enough, and Windows will throw ERROR_MORE_DATA if
  // not, so there won't be an overrun.
  final data = allocate<Uint8>(count: 256);
  final dataSize = allocate<Uint32>()..value = 256;

  try {
    var result = RegOpenKeyEx(key, subKeyPtr, 0, KEY_READ, openKeyPtr);
    if (result == ERROR_SUCCESS) {
      result = RegQueryValueEx(openKeyPtr.value, valueNamePtr, nullptr,
          dataType, data.cast(), dataSize);

      if (result == ERROR_SUCCESS) {
        if (dataType.value == REG_DWORD) {
          dataValue = data.value;
        } else if (dataType.value == REG_SZ) {
          dataValue = data.cast<Utf16>().unpackString(dataSize.value);
        } else {
          // other data types are available, but this is a sample
        }
      } else {
        throw WindowsException(HRESULT_FROM_WIN32(result));
      }
    } else {
      throw WindowsException(HRESULT_FROM_WIN32(result));
    }
  } finally {
    free(subKeyPtr);
    free(valueNamePtr);
    free(openKeyPtr);
    free(data);
    free(dataSize);
  }
  RegCloseKey(openKeyPtr.value);

  return dataValue;
}

void main() {
  print('This version of Windows supports the APIs in:');
  if (isWindowsXPOrGreater()) print(' - Windows XP');
  if (isWindowsVistaOrGreater()) print(' - Windows Vista');
  if (isWindows7OrGreater()) print(' - Windows 7');
  if (isWindows8OrGreater()) print(' - Windows 8');

  print(
      '\nRAM physically installed on this computer: ${getSystemMemoryInMegabytes()}MB');
  print('\nComputer full DNS name is: ${getComputerName()}');

  // Microsoft strongly recommends that developers avoid version testing, but
  // there's not a great way otherwise to guard against use of things like
  // Windows Runtime.
  final majorVersion = getRegistryValue(
      HKEY_LOCAL_MACHINE,
      'SOFTWARE\\Microsoft\\Windows NT\\CurrentVersion\\',
      'CurrentMajorVersionNumber') as int;
  final minorVersion = getRegistryValue(
      HKEY_LOCAL_MACHINE,
      'SOFTWARE\\Microsoft\\Windows NT\\CurrentVersion\\',
      'CurrentMinorVersionNumber') as int;

  final buildNumber = getRegistryValue(
      HKEY_LOCAL_MACHINE,
      'SOFTWARE\\Microsoft\\Windows NT\\CurrentVersion\\',
      'CurrentBuildNumber') as String;

  print('\nWindows version is: $majorVersion.$minorVersion');
  print('Windows build number is: $buildNumber');
}
