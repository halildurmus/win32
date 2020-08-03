// Copyright (c) 2020, the Dart project authors.  Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

// Maps FFI prototypes onto the corresponding Win32 API function calls

import 'dart:ffi';

import 'typedefs.dart';

final _shell32 = DynamicLibrary.open('shell32.dll');

/// {@category shell32}
final FindExecutable =
    _shell32.lookupFunction<findExecutableNative, findExecutableDart>(
        'FindExecutableW');

/// {@category shell32}
final ShellAbout =
    _shell32.lookupFunction<shellAboutNative, shellAboutDart>('ShellAboutW');

/// {@category shell32}
final ShellExecute = _shell32
    .lookupFunction<shellExecuteNative, shellExecuteDart>('ShellExecuteW');

/// {@category shell32}
final ShellExecuteEx =
    _shell32.lookupFunction<shellExecuteExNative, shellExecuteExDart>(
        'ShellExecuteExW');

/// {@category shell32}
final SHEmptyRecycleBin =
    _shell32.lookupFunction<shEmptyRecycleBinNative, shEmptyRecycleBinDart>(
        'SHEmptyRecycleBinW');

/// {@category shell32}
final SHGetDiskFreeSpaceEx = _shell32.lookupFunction<shGetDiskFreeSpaceExNative,
    shGetDiskFreeSpaceExDart>('SHGetDiskFreeSpaceExW');

/// {@category shell32}
final SHGetDriveMedia =
    _shell32.lookupFunction<shGetDriveMediaNative, shGetDriveMediaDart>(
        'SHGetDriveMedia');

/// {@category shell32}
final SHGetFolderPath =
    _shell32.lookupFunction<shGetFolderPathNative, shGetFolderPathDart>(
        'SHGetFolderPathW');

/// {@category shell32}
final SHGetKnownFolderPath = _shell32.lookupFunction<shGetKnownFolderPathNative,
    shGetKnownFolderPathDart>('SHGetKnownFolderPath');

/// {@category shell32}
final SHQueryRecycleBin =
    _shell32.lookupFunction<shQueryRecycleBinNative, shQueryRecycleBinDart>(
        'SHQueryRecycleBinW');
