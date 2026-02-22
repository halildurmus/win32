// Example demonstrating how to create a file open dialog.

import 'dart:ffi';

import 'package:ffi/ffi.dart';
import 'package:win32/win32.dart';

void main() {
  CoInitializeEx(COINIT_MULTITHREADED);

  using((arena) {
    try {
      final fileDialog = arena.com<IFileOpenDialog>(FileOpenDialog);
      final rgSpec = arena<COMDLG_FILTERSPEC>(3);
      var options = fileDialog.getOptions();
      options = FOS_FORCEFILESYSTEM | options;
      fileDialog
        ..setOptions(options)
        ..setDefaultExtension(arena.pcwstr('jpg;jpeg'))
        ..setFileNameLabel(arena.pcwstr('Custom Label:'))
        ..setTitle(arena.pcwstr('Custom Title'))
        ..setOkButtonLabel(arena.pcwstr('Go'));
      // Set file type filters.
      rgSpec[0]
        ..pszName = arena.pwstr('JPEG Files')
        ..pszSpec = arena.pwstr('*.jpg;*.jpeg');
      rgSpec[1]
        ..pszName = arena.pwstr('Bitmap Files')
        ..pszSpec = arena.pwstr('*.bmp');
      rgSpec[2]
        ..pszName = arena.pwstr('All Files (*.*)')
        ..pszSpec = arena.pwstr('*.*');
      fileDialog
        ..setFileTypes(3, rgSpec)
        ..show(null);

      final item = fileDialog.getResult();
      if (item != null) {
        arena.adopt(item);
        final displayName = arena.using(
          item.getDisplayName(SIGDN_FILESYSPATH),
          free,
        );
        print('Selected file: ${displayName.toDartString()}');
      }
    } on WindowsException catch (e) {
      if (e.hr == ERROR_CANCELLED.toHRESULT()) {
        print('Dialog cancelled.');
      } else {
        rethrow;
      }
    }
  });
}
