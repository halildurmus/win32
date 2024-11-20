// Example demonstrating how to create a file open dialog.

import 'dart:ffi';

import 'package:ffi/ffi.dart';
import 'package:win32/win32.dart';

/// Configures the file dialog with custom options and filters.
void _configureFileDialog(IFileOpenDialog fileDialog) {
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

  // Set file type filters.
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
}

/// Handles the dialog result and returns the selected file path.
String? _handleDialogResult(IFileOpenDialog fileDialog) {
  fileDialog.show(null);
  final item = fileDialog.getResult();
  if (item != null) {
    final displayName = item.getDisplayName(SIGDN_FILESYSPATH);
    return displayName.toDartString();
  }
  return null;
}

void main() {
  CoInitializeEx(COINIT_MULTITHREADED);
  final fileDialog = createInstance<IFileOpenDialog>(FileOpenDialog);
  try {
    _configureFileDialog(fileDialog);
    final selectedPath = _handleDialogResult(fileDialog);
    if (selectedPath != null) {
      print('Selected file: $selectedPath');
    }
  } on WindowsException catch (e) {
    if (e.hr == ERROR_CANCELLED.toHRESULT()) {
      print('Dialog cancelled.');
    } else {
      rethrow;
    }
  }
}
