// advapi32.dart

// Maps FFI prototypes onto the corresponding Win32 API function calls

import 'dart:ffi';

import 'typedefs.dart';

final _advapi32 = DynamicLibrary.open('advapi32.dll');

/// {@category advapi32}
final RegCloseKey =
    _advapi32.lookupFunction<regCloseKeyNative, regCloseKeyDart>('RegCloseKey');

/// {@category advapi32}
final RegOpenKeyEx = _advapi32
    .lookupFunction<regOpenKeyExNative, regOpenKeyExDart>('RegOpenKeyExW');

/// {@category advapi32}
final RegQueryValueEx =
    _advapi32.lookupFunction<regQueryValueExNative, regQueryValueExDart>(
        'RegQueryValueExW');
