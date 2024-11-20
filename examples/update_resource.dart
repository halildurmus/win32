// Updates a Dart executable with a manifest.

import 'dart:io';

import 'package:win32/win32.dart';

void main(List<String> args) {
  if (args.length != 2) {
    print('update_resource <executable> <manifest>');
    print('');
    print('Updates an executable with the specified manifest.');
    print('Example: update_resource myApp.exe myApp.manifest');
  }

  final fileNamePtr = w(args[0]);
  final manifest = File(args[1]).readAsStringSync();
  final manifestPtr = w(manifest);

  final handle = BeginUpdateResource(fileNamePtr.ptr, false);
  if (handle == NULL) {
    print("Error: couldn't get handle to executable to be updated.");
    return;
  }

  if (!UpdateResource(
    handle,
    RT_MANIFEST,
    RT_MANIFEST,
    0,
    manifestPtr.ptr,
    manifest.length * 2,
  )) {
    print('Error: failed to create update resource.');
  }

  if (!EndUpdateResource(handle, false)) {
    print('Error: failed to write updated resources to executable.');
  }

  print('Update succeeded.');
}
