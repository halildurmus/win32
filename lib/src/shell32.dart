// shell32.dart

// Maps FFI prototypes onto the corresponding Win32 API function calls

import 'dart:ffi';

import 'typedefs.dart';

final _shell32 = DynamicLibrary.open('shell32.dll');

/// {@category shell32}
final ShellExecute = _shell32
    .lookupFunction<shellExecuteNative, shellExecuteDart>('ShellExecuteW');

/// {@category shell32}
final SHGetFolderPath =
    _shell32.lookupFunction<shGetFolderPathNative, shGetFolderPathDart>(
        'SHGetFolderPathW');

/// {@category shell32}
final SHGetKnownFolderPath = _shell32.lookupFunction<shGetKnownFolderPathNative,
    shGetKnownFolderPathDart>('SHGetKnownFolderPath');
