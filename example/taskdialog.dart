// Copyright (c) 2020, the Dart project authors.  Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

// Demonstrates a MessageBox from the console

import 'dart:ffi';

import 'package:ffi/ffi.dart';
import 'package:win32/win32.dart';

typedef dllGetVersionNative = Int32 Function(Pointer<DLLVERSIONINFO>);
typedef dllGetVersionDart = int Function(Pointer<DLLVERSIONINFO>);

void showTaskDialog() {
  final message =
      TEXT('Some text that will be displayed in the task dialog goes here.');
  final title = TEXT('Title message goes here');

  // Requires a reference to comctl32.dll v6 in the manifest to work
  final hr = TaskDialog(
      NULL,
      NULL,
      title,
      message,
      nullptr,
      TASKDIALOG_COMMON_BUTTON_FLAGS.TDCBF_OK_BUTTON,
      TD_INFORMATION_ICON,
      nullptr);
  print(hr);

  free(title);
  free(message);
}

int getVersion(String dllName) {
  var dwVersion = 0;

  final lpszDllName = TEXT(dllName);
  final hInstance = LoadLibrary(lpszDllName);

  if (hInstance != 0) {
    final dllGetVersion = convertToANSIString('DllGetVersion');
    final pDllGetVersion = GetProcAddress(hInstance, dllGetVersion);

    if (pDllGetVersion != 0) {
      final dllVersionInfo = DLLVERSIONINFO.allocate();

      final DllGetVersion =
          Pointer<NativeFunction<dllGetVersionNative>>.fromAddress(
                  pDllGetVersion)
              .asFunction<dllGetVersionDart>();

      final hr = DllGetVersion(dllVersionInfo.addressOf);

      if (SUCCEEDED(hr)) {
        dwVersion = MAKELONG(
            dllVersionInfo.dwMajorVersion, dllVersionInfo.dwMinorVersion);
      }
    }
    FreeLibrary(hInstance);
  }
  return dwVersion;
}

void main() {
  final dwVer = getVersion(r'C:\Windows\System32\ComCtl32.dll');
  final dwTarget = MAKELONG(6, 0);
  if (dwVer >= dwTarget) {
    print('comctl32.dll is v6.0 or later');
    showTaskDialog();
  } else {
    print('comctl32.dll is less than 6.0: ${dwVer.toHexString(32)}');
    showTaskDialog();
  }
}
