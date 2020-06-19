// shell32.dart

// Maps FFI prototypes onto the corresponding Win32 API function calls

import 'dart:ffi';

import 'typedefs.dart';

final _shell32 = DynamicLibrary.open('shell32.dll');
final ShellExecute = _shell32
    .lookupFunction<shellExecuteNative, shellExecuteDart>('ShellExecuteW');
final SHGetFolderPath =
    _shell32.lookupFunction<shGetFolderPathNative, shGetFolderPathDart>(
        'SHGetFolderPathW');
final SHGetKnownFolderPath = _shell32.lookupFunction<shGetKnownFolderPathNative,
    shGetKnownFolderPathDart>('SHGetKnownFolderPath');
