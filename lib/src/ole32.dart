// ole32.dart

// Maps FFI prototypes onto the corresponding Win32 API function calls

import 'dart:ffi';

import 'typedefs.dart';

final _ole32 = DynamicLibrary.open('ole32.dll');
final CLSIDFromString =
    _ole32.lookupFunction<clsidFromStringNative, clsidFromStringDart>(
        'CLSIDFromString');
final CoCreateGuid =
    _ole32.lookupFunction<coCreateGuidNative, coCreateGuidDart>('CoCreateGuid');
final CoCreateInstance =
    _ole32.lookupFunction<coCreateInstanceNative, coCreateInstanceDart>(
        'CoCreateInstance');
final CoInitializeEx = _ole32
    .lookupFunction<coInitializeExNative, coInitializeExDart>('CoInitializeEx');
final CoInitializeSecurity =
    _ole32.lookupFunction<coInitializeSecurityNative, coInitializeSecurityDart>(
        'CoInitializeSecurity');
final CoSetProxyBlanket =
    _ole32.lookupFunction<coSetProxyBlanketNative, coSetProxyBlanketDart>(
        'CoSetProxyBlanket');
final CoTaskMemFree = _ole32
    .lookupFunction<coTaskMemFreeNative, coTaskMemFreeDart>('CoTaskMemFree');
final CoUninitialize = _ole32
    .lookupFunction<coUninitializeNative, coUninitializeDart>('CoUninitialize');
final IIDFromString = _ole32
    .lookupFunction<iidFromStringNative, iidFromStringDart>('IIDFromString');
