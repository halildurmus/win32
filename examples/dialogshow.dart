// Opens the File Open dialog box and shows results

import 'dart:ffi';

import 'package:ffi/ffi.dart';
import 'package:win32/win32.dart';

void main() {
  CoInitializeEx(COINIT_MULTITHREADED);

  final fileDialog = createInstance<IFileOpenDialog>(FileOpenDialog);

  var options = fileDialog.getOptions();
  options = FOS_FORCEFILESYSTEM | options;
  final defaultExtension = w('txt;csv');
  final fileNameLabel = w('Custom Label:');
  final title = w('Custom Title');
  final okButtonLabel = w('Go');
  fileDialog
    ..setOptions(options)
    ..setDefaultExtension(defaultExtension.ptr)
    ..setFileNameLabel(fileNameLabel.ptr)
    ..setTitle(title.ptr)
    ..setOkButtonLabel(okButtonLabel.ptr);

  final rgSpec = loggingCalloc<COMDLG_FILTERSPEC>(3);
  final jpgName = w('JPEG Files');
  final jpgSpec = w('*.jpg;*.jpeg');
  final bmpName = w('Bitmap Files');
  final bmpSpec = w('*.bmp');
  final allName = w('All Files (*.*)');
  final allSpec = w('*.*');
  rgSpec[0]
    ..pszName = jpgName.ptr
    ..pszSpec = jpgSpec.ptr;
  rgSpec[1]
    ..pszName = bmpName.ptr
    ..pszSpec = bmpSpec.ptr;
  rgSpec[2]
    ..pszName = allName.ptr
    ..pszSpec = allSpec.ptr;
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
