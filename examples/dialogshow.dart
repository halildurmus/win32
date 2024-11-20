// Opens the File Open dialog box and shows results

import 'dart:ffi';

import 'package:ffi/ffi.dart';
import 'package:win32/win32.dart';

void main() {
  CoInitializeEx(COINIT_MULTITHREADED);

  final fileDialog = createInstance<IFileOpenDialog>(FileOpenDialog);

  var options = fileDialog.getOptions();
  options = FOS_FORCEFILESYSTEM | options;
  fileDialog
    ..setOptions(options)
    ..setDefaultExtension(w('txt;csv').ptr)
    ..setFileNameLabel(w('Custom Label:').ptr)
    ..setTitle(w('Custom Title').ptr)
    ..setOkButtonLabel(w('Go').ptr);

  final rgSpec = loggingCalloc<COMDLG_FILTERSPEC>(3);
  rgSpec[0]
    ..pszName = w('JPEG Files').ptr
    ..pszSpec = w('*.jpg;*.jpeg').ptr;
  rgSpec[1]
    ..pszName = w('Bitmap Files').ptr
    ..pszSpec = w('*.bmp').ptr;
  rgSpec[2]
    ..pszName = w('All Files (*.*)').ptr
    ..pszSpec = w('*.*').ptr;
  fileDialog.setFileTypes(3, rgSpec);
  free(rgSpec);

  try {
    fileDialog.show(null);
    final item = fileDialog.getResult();
    if (item != null) {
      final displayName = item.getDisplayName(SIGDN_FILESYSPATH);
      // MAX_PATH may truncate early if long filename support is enabled.
      final path = displayName.toDartString();
      print('Result: $path');
    }
  } on WindowsException catch (e) {
    if (e.hr == ERROR_CANCELLED.toHRESULT()) {
      print('Dialog cancelled.');
    } else {
      rethrow;
    }
  }

  print('All done!');
}
