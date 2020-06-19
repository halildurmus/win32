// psapi.dart

// Maps FFI prototypes onto the corresponding Win32 API function calls

import 'dart:ffi';

import 'typedefs.dart';

final _psapi = DynamicLibrary.open('psapi.dll');
final EnumProcesses = _psapi
    .lookupFunction<enumProcessesNative, enumProcessesDart>('EnumProcesses');
final EnumProcessModules =
    _psapi.lookupFunction<enumProcessModulesNative, enumProcessModulesDart>(
        'EnumProcessModules');
final GetModuleBaseName =
    _psapi.lookupFunction<getModuleBaseNameNative, getModuleBaseNameDart>(
        'GetModuleBaseNameW');
final GetModuleFileNameEx =
    _psapi.lookupFunction<getModuleFileNameExNative, getModuleFileNameExDart>(
        'GetModuleFileNameExW');
