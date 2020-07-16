// Copyright (c) 2020, the Dart project authors.  Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

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

/// {@category advapi32}
final CredWrite =
    _advapi32.lookupFunction<credWriteNative, credWriteDart>('CredWriteW');

/// {@category advapi32}
final CredRead =
    _advapi32.lookupFunction<credReadNative, credReadDart>('CredReadW');

/// {@category advapi32}
final CredFree =
    _advapi32.lookupFunction<credFreeNative, credFreeDart>('CredFree');
