// Copyright (c) 2020, the Dart project authors.  Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

// Maps FFI prototypes onto the corresponding Win32 API function calls

import 'dart:ffi';

import 'winrt_typedefs.dart';

// Umbrella libraries are documented here:
// https://docs.microsoft.com/en-us/windows/win32/apiindex/umbrella-lib-onecore#apis-from-api-ms-win-core-winrt-l1-1-0dll

// It seems to be safe to use these for APIs introduced in Windows 10 and above.
// But usage of OneCore.lib will prevent an app from being available to Windows
// 7.

final winrt = DynamicLibrary.open('api-ms-win-core-winrt-l1-1-0.dll');

/// {@category winrt}
final RoInitialize = winrt
    .lookupFunction<RoInitialize_Native, RoInitialize_Dart>('RoInitialize');

/// {@category winrt}
final RoUninitialize =
    winrt.lookupFunction<RoUninitialize_Native, RoUninitialize_Dart>(
        'RoUninitialize');

/// {@category winrt}
final RoActivateInstance =
    winrt.lookupFunction<RoActivateInstance_Native, RoActivateInstance_Dart>(
        'RoActivateInstance');

final winrt_string =
    DynamicLibrary.open('api-ms-win-core-winrt-string-l1-1-0.dll');

/// {@category winrt}
final WindowsCreateString = winrt_string.lookupFunction<
    WindowsCreateString_Native,
    WindowsCreateString_Dart>('WindowsCreateString');

/// {@category winrt}
final WindowsDeleteString = winrt_string.lookupFunction<
    WindowsDeleteString_Native,
    WindowsDeleteString_Dart>('WindowsDeleteString');

/// {@category winrt}
final WindowsGetStringRawBuffer = winrt_string.lookupFunction<
    WindowsGetStringRawBuffer_Native,
    WindowsGetStringRawBuffer_Dart>('WindowsGetStringRawBuffer');

final winrt_typeresolution =
    DynamicLibrary.open('api-ms-win-ro-typeresolution-l1-1-0.dll');

/// {@category winrt}
final RoGetMetaDataFile = winrt_typeresolution.lookupFunction<
    RoGetMetaDataFile_Native, RoGetMetaDataFile_Dart>('RoGetMetaDataFile');

final rometadata = DynamicLibrary.open('Rometadata.dll');

/// {@category winrt}
final MetaDataGetDispenser = rometadata.lookupFunction<
    MetaDataGetDispenser_Native,
    MetaDataGetDispenser_Dart>('MetaDataGetDispenser');
