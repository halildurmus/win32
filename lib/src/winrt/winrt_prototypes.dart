// winrt_prototypes.dart

// Maps FFI prototypes onto the corresponding Win32 API function calls

import 'dart:ffi';

import 'package:win32/src/winrt/winrt_typedefs.dart';

// Umbrella libraries are documented here:
// https://docs.microsoft.com/en-us/windows/win32/apiindex/umbrella-lib-onecore#apis-from-api-ms-win-core-winrt-l1-1-0dll

final winrt = DynamicLibrary.open('api-ms-win-core-winrt-l1-1-0.dll');
final RoInitialize = winrt
    .lookupFunction<RoInitialize_Native, RoInitialize_Dart>('RoInitialize');
final RoUninitialize =
    winrt.lookupFunction<RoUninitialize_Native, RoUninitialize_Dart>(
        'RoUninitialize');
final RoActivateInstance =
    winrt.lookupFunction<RoActivateInstance_Native, RoActivateInstance_Dart>(
        'RoActivateInstance');

final winrt_string =
    DynamicLibrary.open('api-ms-win-core-winrt-string-l1-1-0.dll');
final WindowsCreateString = winrt_string.lookupFunction<
    WindowsCreateString_Native,
    WindowsCreateString_Dart>('WindowsCreateString');
final WindowsDeleteString = winrt_string.lookupFunction<
    WindowsDeleteString_Native,
    WindowsDeleteString_Dart>('WindowsDeleteString');
final WindowsGetStringRawBuffer = winrt_string.lookupFunction<
    WindowsGetStringRawBuffer_Native,
    WindowsGetStringRawBuffer_Dart>('WindowsGetStringRawBuffer');

final winrt_typeresolution =
    DynamicLibrary.open('api-ms-win-ro-typeresolution-l1-1-0.dll');
final RoGetMetaDataFile = winrt_typeresolution.lookupFunction<
    RoGetMetaDataFile_Native, RoGetMetaDataFile_Dart>('RoGetMetaDataFile');
