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

  final namePtr = allocate<Uint8>(count: nameLength.value).cast<Utf16>();

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

void main() {
  print('This version of Windows supports the APIs in:');
  if (isWindowsXPOrGreater()) print(' - Windows XP');
  if (isWindowsVistaOrGreater()) print(' - Windows Vista');
  if (isWindows7OrGreater()) print(' - Windows 7');
  if (isWindows8OrGreater()) print(' - Windows 8');

  print(
      '\nRAM physically installed on this computer: ${getSystemMemoryInMegabytes()}MB');
  print('\nComputer full DNS name is: ${getComputerName()}');
}
