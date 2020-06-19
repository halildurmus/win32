// ole32.dart

// Maps FFI prototypes onto the corresponding Win32 API function calls

import 'dart:ffi';

import 'typedefs.dart';

final _ole32 = DynamicLibrary.open('ole32.dll');

/// {@category ole32}
final CLSIDFromString =
    _ole32.lookupFunction<clsidFromStringNative, clsidFromStringDart>(
        'CLSIDFromString');

/// {@category ole32}
final CoCreateGuid =
    _ole32.lookupFunction<coCreateGuidNative, coCreateGuidDart>('CoCreateGuid');

/// {@category ole32}
final CoCreateInstance =
    _ole32.lookupFunction<coCreateInstanceNative, coCreateInstanceDart>(
        'CoCreateInstance');

/// {@category ole32}
final CoInitializeEx = _ole32
    .lookupFunction<coInitializeExNative, coInitializeExDart>('CoInitializeEx');

/// {@category ole32}
final CoInitializeSecurity =
    _ole32.lookupFunction<coInitializeSecurityNative, coInitializeSecurityDart>(
        'CoInitializeSecurity');

/// {@category ole32}
final CoSetProxyBlanket =
    _ole32.lookupFunction<coSetProxyBlanketNative, coSetProxyBlanketDart>(
        'CoSetProxyBlanket');

/// {@category ole32}
final CoTaskMemFree = _ole32
    .lookupFunction<coTaskMemFreeNative, coTaskMemFreeDart>('CoTaskMemFree');

/// {@category ole32}
final CoUninitialize = _ole32
    .lookupFunction<coUninitializeNative, coUninitializeDart>('CoUninitialize');

/// {@category ole32}
final IIDFromString = _ole32
    .lookupFunction<iidFromStringNative, iidFromStringDart>('IIDFromString');
